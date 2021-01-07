cmake_minimum_required(VERSION 3.13)
project(ble_terminal)
add_executable(${CMAKE_PROJECT_NAME} 
               source/main.c
               source/ble_connection.c)

# Add FreeRTOS as a subdirectory. AFR_BOARD tells which board to target.
set(IDF_PROJECT_EXECUTABLE ${CMAKE_PROJECT_NAME})
set(AFR_BOARD espressif.esp32_devkitc CACHE INTERNAL "")

# Override AFR configs
target_include_directories(${CMAKE_PROJECT_NAME} BEFORE
                           PUBLIC
                           include/config
                           include )

add_subdirectory(../../lib/afr ${CMAKE_BINARY_DIR}/lib/afr)

# Link and include AFR and esp-idf modules as needed
target_link_libraries(${CMAKE_PROJECT_NAME} 
                      PRIVATE 
                      AFR::mqtt
                      AFR::wifi
                      AFR::ble
                      AFR::logging
                      AFR::common_io
                      AFR::freertos_plus_cli
                      AFR::freertos_cli_plus_uart
)


# Kernel
target_include_directories(${CMAKE_PROJECT_NAME}
                            PUBLIC
                            include
                            ../../lib/afr/freertos_kernel/include
)


# Flash
target_include_directories(${CMAKE_PROJECT_NAME}
                            PUBLIC
                            ../../lib/afr/vendors/espressif/esp-idf/components/nvs_flash/include
)

# UART - Use CommonIO from AFR
target_include_directories(${CMAKE_PROJECT_NAME}
                           PUBLIC
                           ../../lib/afr/libraries/abstractions/common_io/include
                           ../../lib/afr/vendors/espressif/esp-idf/components/driver/include
)

# BT/BLE
set( CONFIG_NIMBLE_ENABLED 0)
target_include_directories(${CMAKE_PROJECT_NAME}
                           PUBLIC
                           ../../lib/afr/vendors/espressif/esp-idf/components/bt/include               
                           ../../lib/afr/vendors/espressif/esp-idf/components/bt/bluedroid/api/include
)      

target_include_directories(${CMAKE_PROJECT_NAME}
                           PUBLIC
                           include
)                        
       
# CLI - Use FreeRTOS+CLI
target_include_directories(${CMAKE_PROJECT_NAME}
                           PUBLIC
                           ../../lib/afr/libraries/freertos_plus/standard/freertos_plus_cli/include
)

# Misc system
target_include_directories(${CMAKE_PROJECT_NAME}
                           PUBLIC
                           ../../lib/afr/libraries/freertos_plus/standard/utils/include
)