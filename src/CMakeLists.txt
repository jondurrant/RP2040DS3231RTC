
# Add target
add_library(DS3231 INTERFACE)

target_include_directories(DS3231 INTERFACE ${DS3231_LIB_PATH}/src/)

# Add sources
target_sources(DS3231 INTERFACE
    ${DS3231_LIB_PATH}/src/DS3231.cpp
    )

# Add dependencies
target_link_libraries(DS3231 INTERFACE  pico_stdlib hardware_i2c)
