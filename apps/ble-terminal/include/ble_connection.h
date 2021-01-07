#ifndef _BLE_CONNECTION_H_
#define _BLE_CONNECTION_H_

#include "io_stream.h"

esp_err_t prvBLEStackInit( void );
esp_err_t xBLEStackTeardown( void );
void NumericComparisonInit( IOStream_t * const pxIOStream );
void register_ble_commands( void );

#endif