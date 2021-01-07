#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"
#include "queue.h"

#include "sdkconfig.h"

#include "iot_uart.h"

#include "esp_bt.h"
#include "api/esp_bt_main.h"

#include "iot_ble.h"
#include "iot_ble_data_transfer.h"


#include "FreeRTOS_CLI_Console.h"
#include "FreeRTOS_CLI.h"

#include "io_stream.h"

/*---------------------------------------------------------------------------------------------------------*/
extern IotUARTHandle_t xConsoleUart;

static IotBleDataTransferChannel_t * pxChannel_BleCli = NULL;

static QueueHandle_t xNumericComparisonQueue = NULL;

typedef struct
{
    uint32_t ulPassKey;
    BTBdaddr_t xAddress;
} BLEPassKeyConfirm_t;

/*---------------------------------------------------------------------------------------------------------*/

#if CONFIG_NIMBLE_ENABLED == 1
    esp_err_t prvBLEStackInit( void )
    {
        return ESP_OK;
    }


    esp_err_t xBLEStackTeardown( void )
    {
        esp_err_t xRet;

        xRet = esp_bt_controller_mem_release( ESP_BT_MODE_BLE );

        return xRet;
    }

#else /* if CONFIG_NIMBLE_ENABLED == 1 */

    esp_err_t prvBLEStackInit( void )
    {
        return ESP_OK;
    }

    esp_err_t xBLEStackTeardown( void )
    {
        esp_err_t xRet = ESP_OK;

        if( esp_bluedroid_get_status() == ESP_BLUEDROID_STATUS_ENABLED )
        {
            xRet = esp_bluedroid_disable();
        }

        if( xRet == ESP_OK )
        {
            xRet = esp_bluedroid_deinit();
        }

        if( xRet == ESP_OK )
        {
            if( esp_bt_controller_get_status() == ESP_BT_CONTROLLER_STATUS_ENABLED )
            {
                xRet = esp_bt_controller_disable();
            }
        }

        if( xRet == ESP_OK )
        {
            xRet = esp_bt_controller_deinit();
        }

        if( xRet == ESP_OK )
        {
            xRet = esp_bt_controller_mem_release( ESP_BT_MODE_BLE );
        }

        if( xRet == ESP_OK )
        {
            xRet = esp_bt_controller_mem_release( ESP_BT_MODE_BTDM );
        }

        return xRet;
    }
#endif /* if CONFIG_NIMBLE_ENABLED == 1 */


static void prvUartCallback( IotUARTOperationStatus_t xStatus,
                                    void * pvUserContext )
{
    SemaphoreHandle_t xUartSem = ( SemaphoreHandle_t ) pvUserContext;
    configASSERT( xUartSem != NULL );
    xSemaphoreGive( xUartSem );
}



/*---------------------------------------------------------------------------------------------------------*/
/*  Pairing */
/*---------------------------------------------------------------------------------------------------------*/
typedef struct{
	uint8_t * pcData;
    size_t xDataSize;
}INPUTMessage_t;

#if( IOT_BLE_ENABLE_NUMERIC_COMPARISON == 1 )
BaseType_t getUserMessage( INPUTMessage_t * pxINPUTmessage,
                            TickType_t xAuthTimeout)
{
    BaseType_t xReturnMessage = pdFALSE;
    SemaphoreHandle_t xUartSem;
    int32_t status, bytesRead = 0;
    uint8_t * pucResponse = NULL;

    /* BLE Numeric comparison response is one character (y/n). */
    pucResponse = ( uint8_t * ) pvPortMalloc( sizeof( uint8_t ) );
    xUartSem = xSemaphoreCreateBinary();

    if( ( xUartSem != NULL ) && ( pucResponse != NULL ) )
    {
        /* Wait for user to input to CLI for AuthTimeout ticks */
        iot_uart_set_callback( xConsoleUart, prvUartCallback, xUartSem );
        status = iot_uart_read_async( xConsoleUart, pucResponse, 1 );
        xSemaphoreTake( xUartSem, xAuthTimeout );
        iot_uart_cancel( xConsoleUart );
        iot_uart_set_callback( xConsoleUart, NULL, NULL );

        /* Verify, sanitize, and format user input */
        iot_uart_ioctl( xConsoleUart, eGetRxNoOfbytes, &bytesRead );
        if( bytesRead == 1 )
        {
            pxINPUTmessage->pcData = pucResponse;
            pxINPUTmessage->xDataSize = 1;
            xReturnMessage = pdTRUE;
        }

        vSemaphoreDelete( xUartSem );
    }

    return xReturnMessage;
}

/* Temporarly intercept the CLI, as a new device is trying to pair and requires verification of passkey */
void BLENumericComparisonCb(BTBdaddr_t * pxRemoteBdAddr, uint32_t ulPassKey)
{
	BLEPassKeyConfirm_t xPassKeyConfirm;

	if(pxRemoteBdAddr != NULL)
	{
		xPassKeyConfirm.ulPassKey = ulPassKey;
		memcpy(&xPassKeyConfirm.xAddress, pxRemoteBdAddr, sizeof(BTBdaddr_t));

		xQueueSend(xNumericComparisonQueue, (void * )&xPassKeyConfirm, (portTickType)portMAX_DELAY);
	}
}

void userInputTask(void * pvParameters)
{
	INPUTMessage_t xINPUTmessage;
    BLEPassKeyConfirm_t xPassKeyConfirm;
    uint32_t ulOutLength = 0;
    TickType_t xAuthTimeout = pdMS_TO_TICKS( IOT_BLE_NUMERIC_COMPARISON_TIMEOUT_SEC * 1000 );

    /* Exract args */    
    IOStream_t * pxIOStream = (IOStream_t *) pvParameters;
    xConsoleIO_t * pxConsoleIO = (xConsoleIO_t *)pxIOStream->pvStreamContext;

    for (;;) {
    	if (xQueueReceive(xNumericComparisonQueue, (void * )&xPassKeyConfirm, portMAX_DELAY ))
    	{
            ulOutLength = snprintf(pxIOStream->pcStreamOut,
                                   pxIOStream->xCapacityOut,
                                   "Numeric comparison:%ld\r\n"
                                   "Press 'y' to confirm\r\n",
                                   xPassKeyConfirm.ulPassKey);
            
            pxConsoleIO->write(pxIOStream->pcStreamOut, ulOutLength);
            
            
            /* Waiting for UART event. */
            if ( getUserMessage( &xINPUTmessage, xAuthTimeout ) == pdTRUE ) {
                if((xINPUTmessage.pcData[0] == 'y')||(xINPUTmessage.pcData[0] == 'Y'))
                {
                    ulOutLength = snprintf(pxIOStream->pcStreamOut, pxIOStream->xCapacityOut, "Key accepted\r\n");
                    IotBle_ConfirmNumericComparisonKeys(&xPassKeyConfirm.xAddress, true);
                }else
                {
                    ulOutLength = snprintf(pxIOStream->pcStreamOut, pxIOStream->xCapacityOut, "Key rejected\r\n");
                    IotBle_ConfirmNumericComparisonKeys(&xPassKeyConfirm.xAddress, false);

                }

                pxConsoleIO->write(pxIOStream->pcStreamOut, ulOutLength);
                vPortFree(xINPUTmessage.pcData);
            }
    	}
    }

    vTaskDelete(NULL);
}

void NumericComparisonInit( IOStream_t * const pxIOStream )
{
    /* Create a queue that will pass in the code to the UART task and wait validation from the user. */
    xNumericComparisonQueue = xQueueCreate( 1, sizeof( BLEPassKeyConfirm_t ) );

    /* Pass the consoleIO handle so task shares same IO read/write stream */
    /* TODO: These should use user-configurable params*/
    xTaskCreate(userInputTask, 
                BLE_PAIRING_TASK_NAME,
                BLE_PAIRING_TASK_STACK_SIZE, 
                ( void *)pxIOStream, 
                BLE_PAIRING_TASK_PRIORITY, 
                NULL);
}

void NumericComparisonDeinit(void)
{
    vQueueDelete( xNumericComparisonQueue );
}
#endif

/* When enabled, MCU will advertise and cooperate with a pseudo-UART Gatt server */
static BaseType_t xCmd_BleCli(char * pcWriteBuffer,
                              size_t xWriteBufferLen,
                              const char * pcCommandString)
{
    BaseType_t xRetry = pdFALSE;
    uint32_t ulArgLength = 0;
    char * pcArg = NULL;
    uint32_t offset = 0;

    pcArg = FreeRTOS_CLIGetParameter(pcCommandString, 1, &ulArgLength);
    if(0 == strncmp("enable", pcArg, ulArgLength))
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Enabling ble cli server...\r\n");
        if (eBTStatusSuccess != IotBle_On() || !(pxChannel_BleCli = IotBleDataTransfer_Open(0)))
        {
            offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Failed to start ble_cli\r\n");
            xRetry = pdTRUE;
        }
    }
    else if(0 == strncmp("disable", pcArg, ulArgLength))
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Disabling ble cli server...\r\n");
        if (eBTStatusSuccess != IotBle_Off())
        {
            offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Failed to stop ble_cli.\r\n");
            xRetry = pdTRUE;
        }
        
    }
    else if(0 == strncmp("list", pcArg, ulArgLength))
    {
        pcArg = FreeRTOS_CLIGetParameter(pcCommandString, 2, &ulArgLength);
        if (0 == strncmp("paired", pcArg, ulArgLength))
        {
            offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Listing paired devices...\r\n");
        }
        else if(0 == strncmp("connections", pcArg, ulArgLength))
        {
            offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Listing connected devices...\r\n");
        }
    }
    else
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Usage error. See 'help'.\r\n");
    }

    /* Console commands are repeatedly executed until they return pdFALSE for "no more output".
    * Wait a bit before re-attempting, instead of spamming CPU with immediate back-to-back failures (if any) */
    if (xRetry)
    {
        vTaskDelay(pdMS_TO_TICKS(100));
    } 
    else
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset,"Success.\r\n");
    }
    

    return xRetry;
}



/* Command for interfacing the ble cli. For example it can be used to start advertising, prompt pairing, etc*/
static const CLI_Command_Definition_t xCmd_BleCli_Command =
{
    "ble_cli",
    "\r\nble_cli [enable|disable|list]:\r\n    Interface to ble cli server\r\n\r\n",
    xCmd_BleCli,
    -1                       /* The user can enter any number of commands. */
};

/* CLI command */
void register_ble_commands( void )
{
    FreeRTOS_CLIRegisterCommand(&xCmd_BleCli_Command);
}