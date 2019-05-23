#ifndef	LCD_H_
#define	LCD_H_

#include <stdio.h>
#include <string.h>
#include "esp_log.h"
#include "sdkconfig.h"
#include "driver/spi_master.h"
#include "freertos/task.h"

#include "esp_system.h"
#include "tftspi.h"
#include "tft.h"
#include "spiffs_vfs.h"

//LCD
#define PIN_NUM_MISO (gpio_num_t)25
#define PIN_NUM_MOSI (gpio_num_t)23
#define PIN_NUM_CLK  (gpio_num_t)19
#define PIN_NUM_CS   (gpio_num_t)22

#define PIN_NUM_DC   (gpio_num_t)21
#define PIN_NUM_RST  (gpio_num_t)18
#define PIN_NUM_BCKL (gpio_num_t)5

void	launchDrawGraphic();
void	initTftLib();

#endif