# RP2040DS3231RTC
DS3231 RTC Library for the RP2040 or Raspberry PI Pico


This is a rewrite of Victor Costin library [SimpleDS3231](https://github.com/CostinV92/SimpleDS3231-Pico), primarily to allow me to switch i2c pins and controllers, and to get more accurate temperature reading.

## Examples
Two examples are included both assume that the DS3231 us connected to the Pico on the default I2C0 (GP04 and GP05).

### Simple Example
This just reads the date, time and temperature from the DS3231.

### SNTP Example
This is a Pico-W example and uses WIFI to obtain the SNTP for GMT timezone. It then sets the DS3231 with this time.

This example expects to find environment varaibles for the WIFI credentials of:
+ WIFI_SSID
+ WIFI_PASSWORD

The example makes use of the FreeRTOS Kernel library, LWIP and the Pico SDK

### Building
Each example can be build using cmake and make.
```
cd <project dir>
mkdir build
cd build
cmake ..
make
```
 