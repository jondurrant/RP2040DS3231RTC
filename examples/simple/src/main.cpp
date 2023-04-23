/**
 * Jon Durrant.
 *
 * Test to count on stdout
 */

#include "pico/stdlib.h"
#include "DS3231.hpp"



#include <stdio.h>
#define DELAY 1000



int main() {
	int i = 0;
	DS3231 rtc;

	stdio_init_all();

	sleep_ms(2000);
	printf("GO\n");

	for(;;) {

		printf("Count %d\n", i++);
		printf("\r%s -- %s -- %d%C %.2fC\n", rtc.get_date_str(), rtc.get_time_str(), rtc.get_temp(), rtc.get_temp_f());
		sleep_ms(DELAY);


	}

}
