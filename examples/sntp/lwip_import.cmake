add_library(LWIP_PORT STATIC)
target_include_directories(LWIP_PORT
    PUBLIC
       ${CMAKE_CURRENT_LIST_DIR}/port/lwip
#       ${PICO_LWIP_PATH}/src/include/
    )
    
target_sources(LWIP_PORT PUBLIC
     ${PICO_SDK_PATH}/lib/lwip/src/apps/sntp/sntp.c
)

# Add the standard library to the build
target_link_libraries(LWIP_PORT PUBLIC pico_stdlib pico_cyw43_arch_lwip_sys_freertos FreeRTOS-Kernel FREERTOS_PORT)