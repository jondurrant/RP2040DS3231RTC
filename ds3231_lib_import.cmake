
# This can be dropped into an external project to help locate the SimpleDS3231 library

if (DEFINED ENV{DS3231_LIB_PATH} AND (NOT DS3231_LIB_PATH))
    set(DS3231_LIB_PATH "${DS3231_LIB_PATH}" CACHE PATH "Path to the SimpleDS3231 library")
    message("Using DS3231_LIB_PATH from environment ('${DS3231_LIB_PATH}')")
endif ()


if (NOT DS3231_LIB_PATH)
    set(DS3231_LIB_PATH "${CMAKE_CURRENT_LIST_DIR}/lib/RP2040DS3231RTC" CACHE PATH "Path to the SimpleDS3231 library")
endif ()

get_filename_component(DS3231_LIB_PATH "${DS3231_LIB_PATH}" REALPATH BASE_DIR "${CMAKE_BINARY_DIR}")
if (NOT EXISTS ${DS3231_LIB_PATH})
    message(FATAL_ERROR "Directory '${DS3231_LIB_PATH}' not found")
endif ()

set(DS3231_LIB_PATH ${DS3231_LIB_PATH} CACHE PATH "Path to the SimpleDS3231 library" FORCE)

add_subdirectory(${DS3231_LIB_PATH}/src ${CMAKE_BINARY_DIR}/DS3231LIB)
