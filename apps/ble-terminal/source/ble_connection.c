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


/*---------------------------------------------------------------------------------------------------------*/
/*  Pairing */
/*---------------------------------------------------------------------------------------------------------*/
typedef struct{
	uint8_t * pcData;
    size_t xDataSize;
}INPUTMessage_t;

#if( IOT_BLE_ENABLE_NUMERIC_COMPARISON == 1 )

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

static bool bPendingResponse = false;
BaseType_t vServicePairRequest(xConsoleIO_t * pxConsoleIO, char * pcWriteBuffer, size_t xWriteBufferLen, TickType_t xServiceWindow)
{
    IotBleEventsCallbacks_t eventCallback;
    BLEPassKeyConfirm_t xPassKeyConfirm;
    uint32_t ulOutLength = 0;
    bool userVerified = false;
    char pcLineInput[ cmdMAX_INPUT_BUFFER_SIZE ] = { 0 };
    TickType_t xAuthTimeout = pdMS_TO_TICKS( IOT_BLE_NUMERIC_COMPARISON_TIMEOUT_SEC * 1000 );
    
    /* Enable pairing responses */
    eventCallback.pNumericComparisonCb = BLENumericComparisonCb;
    IotBle_RegisterEventCb( eBLENumericComparisonCallback, eventCallback );

    /* Wait a second for a pairing request */
    if (xQueueReceive(xNumericComparisonQueue, (void * )&xPassKeyConfirm, xServiceWindow))
    {
        /* Ask user, are the numbers the same? Then flush output */
        ulOutLength = snprintf(pcWriteBuffer,
                            xWriteBufferLen,
                            "Numeric comparison:%ld\r\n"
                            "Press 'y' to confirm\r\n",
                            xPassKeyConfirm.ulPassKey);
        pxConsoleIO->write(pcWriteBuffer, ulOutLength);

        /* Flush input buffer and wait for user response */
        xQueueReset( pxConsoleIO->xQueue_InputLine );
        if(xQueueReceive(pxConsoleIO->xQueue_InputLine, pcLineInput, xAuthTimeout))
        {
            userVerified = (pcLineInput[0] == 'Y' || pcLineInput[0] == 'y');
            IotBle_ConfirmNumericComparisonKeys( &xPassKeyConfirm.xAddress, userVerified );
            snprintf(pcWriteBuffer, xWriteBufferLen, userVerified ? "Confirmed\r\n" : "Rejected\r\n");
        }
        else
        {
            snprintf(pcWriteBuffer, xWriteBufferLen, "Timeout\r\n");
        }
    }

    /* Disable pairing responses */
    IotBle_UnRegisterEventCb( eBLENumericComparisonCallback, eventCallback );

    /* The pairing subcommand indefinitely accepts and services pair requests. Stop with CTRL+C*/
    return pdTRUE;
}

void NumericComparisonInit(void)
{
    xNumericComparisonQueue = xQueueCreate( 1, sizeof( BLEPassKeyConfirm_t ) );
    configASSERT(xNumericComparisonQueue);
}

void NumericComparisonDeinit(void)
{
    vQueueDelete( xNumericComparisonQueue );
}
#endif

/* When enabled, MCU will advertise and cooperate with a pseudo-UART Gatt server */
static BaseType_t xCmd_BleCli(char * pcWriteBuffer,
                              size_t xWriteBufferLen,
                              const char * pcCommandString,
                              void * pvContext)
{
    BaseType_t xContinue = pdFALSE;
    uint32_t ulArgLength = 0;
    char * pcArg = NULL;
    uint32_t offset = 0;
    xConsoleIO_t * pxConsoleIO = (xConsoleIO_t *)pvContext;

    /* At the moment all commands are passed the xConsoleIO_t * they correspond with */
    configASSERT(pxConsoleIO);

    pcArg = FreeRTOS_CLIGetParameter(pcCommandString, 1, &ulArgLength);
    if(0 == strncmp("enable", pcArg, ulArgLength))
    {
        IotBleEventsCallbacks_t eventCallback;
        eventCallback.pNumericComparisonCb = BLENumericComparisonCb;
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Enabling ble cli server...\r\n");
        if (eBTStatusSuccess != IotBle_On()
            || eBTStatusSuccess != IotBle_RegisterEventCb( eBLENumericComparisonCallback, eventCallback )
            || !(pxChannel_BleCli = IotBleDataTransfer_Open(0)))
        {
            offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Failed to start ble_cli\r\n");
            xContinue = pdTRUE;
        }
    }
    else if(0 == strncmp("disable", pcArg, ulArgLength))
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Disabling ble cli server...\r\n");
        if (eBTStatusSuccess != IotBle_Off())
        {
            offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Failed to stop ble_cli.\r\n");
            xContinue = pdTRUE;
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
    else if(0 == strncmp("pair", pcArg, ulArgLength))
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Accepting pair requests...\r\n");
        xContinue = vServicePairRequest(pxConsoleIO, pcWriteBuffer + offset, xWriteBufferLen - offset, pdMS_TO_TICKS(1000));
    }
    else
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "Usage error. See 'help'.\r\n");
    }

    /* Console commands are repeatedly executed until they return pdFALSE for "no more output".
    * Wait a bit before re-attempting, instead of spamming CPU with immediate back-to-back failures (if any) */
    if (xContinue)
    {
        vTaskDelay(pdMS_TO_TICKS(100));
    } 
    else
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset,"Success.\r\n");
    }
    

    return xContinue;
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
    NumericComparisonInit();

    FreeRTOS_CLIRegisterCommand(&xCmd_BleCli_Command);
}