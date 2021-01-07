#include "FreeRTOS.h"

#include "esp_system.h"

// FreeRTOS+
#include "iot_system_init.h"
#include "iot_config.h"

// NVS
#include "nvs_flash.h"

// Wifi
#include "esp_wifi.h"
#include "esp_interface.h"

// BT/BLE
#include "iot_ble.h"
#include "esp_bt.h"
#if CONFIG_NIMBLE_ENABLED == 1
    #include "esp_nimble_hci.h"
#else
    #include "esp_gap_ble_api.h"
    #include "esp_bt_main.h"
#endif

// UART
#include "iot_uart.h"
#include "driver/uart.h"

#include "iot_config.h"
#include "iot_logging_task.h"

#include "ble_connection.h"
#include "io_stream.h"

// CLI
#include "FreeRTOS_CLI_UART.h"

// ESP32 Board utils
#include "esp_system.h"


/* TODO:
    - freertos cli does not handle backspaces properly. Should account for this
    - Some changes should be upstreamed as fixes
        - +CLI: backspaces are not echoed when they require post-processing -- not simple echo (fixed)
*/


static TaskHandle_t xUART_CLI_Handle;

IotUARTHandle_t xConsoleUart;

static char _console_inbuf[ CLI_MAX_INPUT_SIZE ] = { 0 };
static char _console_outbuf[ CLI_MAX_OUTPUT_SIZE ] = { 0 };

static IOStream_t xConsoleStream = {
    .pvStreamContext = (void*)&uartConsoleIO,
    .pcStreamOut = _console_outbuf,
    .xCapacityOut = CLI_MAX_OUTPUT_SIZE,
    .pcStreamIn = _console_inbuf,
    .xCapacityIn = CLI_MAX_INPUT_SIZE
};

/*---------------------------------------------------------------------------------------------------------*/

/**
 * @brief This is to provide the memory that is used by the RTOS daemon/time task.
 *
 * If configUSE_STATIC_ALLOCATION is set to 1, so the application must provide an
 * implementation of vApplicationGetTimerTaskMemory() to provide the memory that is
 * used by the RTOS daemon/time task.
 */
void vApplicationGetTimerTaskMemory( StaticTask_t ** ppxTimerTaskTCBBuffer,
                                     StackType_t ** ppxTimerTaskStackBuffer,
                                     uint32_t * pulTimerTaskStackSize )
{
    /* If the buffers to be provided to the Timer task are declared inside this
     * function then they must be declared static - otherwise they will be allocated on
     * the stack and so not exists after this function exits. */
    static StaticTask_t xTimerTaskTCB;
    static StackType_t uxTimerTaskStack[ configTIMER_TASK_STACK_DEPTH ];

    /* Pass out a pointer to the StaticTask_t structure in which the Idle
     * task's state will be stored. */
    *ppxTimerTaskTCBBuffer = &xTimerTaskTCB;

    /* Pass out the array that will be used as the Timer task's stack. */
    *ppxTimerTaskStackBuffer = uxTimerTaskStack;

    /* Pass out the size of the array pointed to by *ppxTimerTaskStackBuffer.
     * Note that, as the array is necessarily of type StackType_t,
     * configMINIMAL_STACK_SIZE is specified in words, not bytes. */
    *pulTimerTaskStackSize = configTIMER_TASK_STACK_DEPTH;
}

/*---------------------------------------------------------------------------------------------------------*/


/* configUSE_STATIC_ALLOCATION is set to 1, so the application must provide an
 * implementation of vApplicationGetIdleTaskMemory() to provide the memory that is
 * used by the Idle task. */
void vApplicationGetIdleTaskMemory( StaticTask_t ** ppxIdleTaskTCBBuffer,
                                    StackType_t ** ppxIdleTaskStackBuffer,
                                    uint32_t * pulIdleTaskStackSize )
{
    /* If the buffers to be provided to the Idle task are declared inside this
     * function then they must be declared static - otherwise they will be allocated on
     * the stack and so not exists after this function exits. */
    static StaticTask_t xIdleTaskTCB;
    static StackType_t uxIdleTaskStack[ configMINIMAL_STACK_SIZE ];

    /* Pass out a pointer to the StaticTask_t structure in which the Idle
     * task's state will be stored. */
    *ppxIdleTaskTCBBuffer = &xIdleTaskTCB;

    /* Pass out the array that will be used as the Idle task's stack. */
    *ppxIdleTaskStackBuffer = uxIdleTaskStack;

    /* Pass out the size of the array pointed to by *ppxIdleTaskStackBuffer.
     * Note that, as the array is necessarily of type StackType_t,
     * configMINIMAL_STACK_SIZE is specified in words, not bytes. */
    *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
}

/*---------------------------------------------------------------------------------------------------------*/

extern void esp_vApplicationTickHook();
void IRAM_ATTR vApplicationTickHook()
{
    esp_vApplicationTickHook();
}

/*---------------------------------------------------------------------------------------------------------*/


extern void esp_vApplicationIdleHook();
void vApplicationIdleHook()
{
    esp_vApplicationIdleHook();
}

/*---------------------------------------------------------------------------------------------------------*/

void vApplicationDaemonTaskStartupHook( void )
{
}
/*---------------------------------------------------------------------------------------------------------*/

static void iot_uart_init( void )
{
    IotUARTConfig_t xUartConfig;
    int32_t status = IOT_UART_SUCCESS;
    
    xConsoleUart = iot_uart_open( UART_NUM_0 );
    configASSERT( xConsoleUart );
    
    status = iot_uart_ioctl( xConsoleUart, eUartGetConfig, &xUartConfig );
    configASSERT( status == IOT_UART_SUCCESS );
    
    xUartConfig.ulBaudrate = 115200;
    xUartConfig.xParity = eUartParityNone;
    xUartConfig.xStopbits = eUartStopBitsOne;
    xUartConfig.ucFlowControl = true;

    status = iot_uart_ioctl( xConsoleUart, eUartSetConfig, &xUartConfig );
    configASSERT( status == IOT_UART_SUCCESS );
}

/*---------------------------------------------------------------------------------------------------------*/
extern void vApplicationIPInit( void );
static void prvMiscInitialization( void )
{
    /* Initialize NVS */
    esp_err_t ret = nvs_flash_init();

    if( ( ret == ESP_ERR_NVS_NO_FREE_PAGES ) || ( ret == ESP_ERR_NVS_NEW_VERSION_FOUND ) )
    {
        ESP_ERROR_CHECK( nvs_flash_erase() );
        ret = nvs_flash_init();
    }

    ESP_ERROR_CHECK( ret );

    iot_uart_init();

    #if BLE_ENABLED
        if( eBTStatusSuccess != IotBle_Init())
        {
            configPRINTF(("Failed to initialize BLE.\r\n"));
        }
        NumericComparisonInit(&xConsoleStream);
    #endif

    /* Create tasks that are not dependent on the WiFi being initialized. */
    xLoggingTaskInitialize( LOGGER_TASK_STACK_SIZE,
                            LOGGER_TASK_PRIORITY,
                            LOGGER_MESSAGE_QUEUE_LENGTH );

#if AFR_ESP_LWIP
    configPRINTF( ("Initializing lwIP TCP stack\r\n") );
    tcpip_adapter_init();
#else
    configPRINTF( ("Initializing FreeRTOS TCP stack\r\n") );
    vApplicationIPInit();
#endif
}
/*---------------------------------------------------------------------------------------------------------*/
static BaseType_t prvTaskStatsCommand( char * pcWriteBuffer, size_t xWriteBufferLen, const char * pcCommandString )
{
    const char * const pcHeader = "Task          State  Priority  Stack	#\r\n************************************************\r\n";
    size_t xStatus;

    /* Remove compile time warnings about unused parameters, and check the
     * write buffer is not NULL. */
    ( void ) pcCommandString;
    ( void ) xWriteBufferLen;
    configASSERT( pcWriteBuffer );

    /* Generate a table of task stats. */
    xStatus = snprintf( pcWriteBuffer, xWriteBufferLen, pcHeader );

    /* Assert condition that the buffer provided is enough to write the formatted string. If the buffer is not
     * adequate, snprintf returns the total length required (without the null termination) for
     * writing the formatted string to the buffer. If this assert condition is hit,
     * adjust the output buffer to the required length as returned from snprintf.
     */
    configASSERT( ( xStatus > 0 ) && ( xStatus < xWriteBufferLen ) );

    vTaskList( pcWriteBuffer + strlen( pcHeader ) );

    /* There is no more data to return after this single string, so return
     * pdFALSE. */
    return pdFALSE;
}

static const CLI_Command_Definition_t xCmd_TaskStats =
{
    "task-stats",        
    "\r\ntask-stats:\r\n    Displays a table showing the state of each FreeRTOS task\r\n\r\n",
    prvTaskStatsCommand, 
    0                  
};

/*---------------------------------------------------------------------------------------------------------*/
static int delay = 3;
static BaseType_t prvBoardResetCommand(char * pcWriteBuffer, size_t xWriteBufferLen, const char * pcCommandString )
{   
    BaseType_t xContinue = pdTRUE;
    size_t offset = 0;

    /* Stall for a bit, allowing other tasks some more time to wrap up any work.
     * TODO: Can broadcast notification to all tasks for reset */
    if(delay == 3 )
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "\r\nReset in %d...", delay);
        vTaskDelay(pdMS_TO_TICKS(1000));
        delay--;
    }
    else if(delay == 0)
    { 
        /* Finished with delay. Restart the board */
        xContinue = pdFALSE;
        delay = 3;
        esp_restart();
    } 
    else 
    {
        offset += snprintf(pcWriteBuffer + offset, xWriteBufferLen - offset, "%d...", delay);
        vTaskDelay(pdMS_TO_TICKS(1000));
        delay--;
    }

    return xContinue;
}

static const CLI_Command_Definition_t xCmd_BoardReset =
{
    "reset",        
    "\r\nreset:\r\n    Resets both CPUs then relaunches bootloader\r\n\r\n",
    prvBoardResetCommand, 
    0              
};

/*---------------------------------------------------------------------------------------------------------*/

void console_entry(void * pvParameters)
{
    FreeRTOS_CLIRegisterCommand(&xCmd_TaskStats);
    FreeRTOS_CLIRegisterCommand(&xCmd_BoardReset);
    register_ble_commands();
    IOStream_t * pxConsoleStream = (IOStream_t *)pvParameters;
    xConsoleIO_t * pxConsoleIO = (xConsoleIO_t *)pxConsoleStream->pvStreamContext;
    FreeRTOS_CLIEnterConsoleLoop( *pxConsoleIO, 
                                  pxConsoleStream->pcStreamIn, pxConsoleStream->xCapacityIn, 
                                  pxConsoleStream->pcStreamOut, pxConsoleStream->xCapacityOut );
}

/*---------------------------------------------------------------------------------------------------------*/

int app_main( void )
{
    /* Perform any hardware initialization that does not require the RTOS to be
     * running.  */

    prvMiscInitialization();

    if( SYSTEM_Init() == pdPASS )
    {
        ESP_ERROR_CHECK( esp_bt_controller_mem_release( ESP_BT_MODE_CLASSIC_BT ) );

        #if BLE_ENABLED
            configASSERT( ESP_OK == prvBLEStackInit() && "Failed to initialize BLE stack\r\n");
        #else
            ESP_ERROR_CHECK( esp_bt_controller_mem_release( ESP_BT_MODE_BLE ) );
        #endif
    } 
    else
    {
        configPRINTF( ("Aborting. SYSTEM_Init() failed!\r\n") );
    }
    
    /* Spawn a CLI console over UART. Args must persist until task starts so thy are alloced on heap,
     * copied/freed by task at entry. */
    xTaskCreate(console_entry,
        CLI_UART_TASK_NAME,
        CLI_UART_TASK_STACK_SIZE,
        (void*)&xConsoleStream,
        CLI_UART_TASK_PRIORITY,
        xUART_CLI_Handle
    );

    /* Start the scheduler.  Initialization that requires the OS to be running,
     * including the WiFi initialization, is performed in the RTOS daemon task
     * startup hook. */
    /* Following is taken care by initialization code in ESP IDF */
    /* vTaskStartScheduler(); */
    return 0;
}