/* i2c - Example

   For other examples please check:
   https://github.com/espressif/esp-idf/tree/master/examples

   See README.md file to get detailed usage of this example.

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include <string.h>
#include "esp_log.h"
#include "sdkconfig.h"
#include "driver/i2c.h"
#include "Lcd.h"
#include "I2CByteManager.h"

static const char *TAG = "Main";

//Sensor
#define	I2C_SLAVE_ADD1	0x68
#define	I2C_SLAVE_ADD2	0x69
#define	I2C_MASTER_NUM	(i2c_port_t)0
#define I2C_MASTER_SDA_IO	(gpio_num_t)4
#define I2C_MASTER_SCL_IO	(gpio_num_t)0
#define I2C_MASTER_FREQ_HZ	100000

esp_err_t mpuInitMaster()
{
	ESP_LOGI(TAG, "Init I2C for master...");
    i2c_port_t i2c_master_port = I2C_MASTER_NUM;
    i2c_config_t conf;
    conf.mode = I2C_MODE_MASTER;
    conf.sda_io_num = I2C_MASTER_SDA_IO;
    conf.sda_pullup_en = GPIO_PULLUP_ENABLE;
    conf.scl_io_num = I2C_MASTER_SCL_IO;
    conf.scl_pullup_en = GPIO_PULLUP_ENABLE;
    conf.master.clk_speed = I2C_MASTER_FREQ_HZ;
    i2c_param_config(i2c_master_port, &conf);
    return i2c_driver_install(i2c_master_port, conf.mode, 0, 0, 0);
}

void app_main()
{
	int	ret;
	uint8_t	data;

	ESP_ERROR_CHECK(mpuInitMaster());
	ESP_LOGI(TAG, "Sensor(GY-521): Checking WHOIAM of the sensor...");
	ret = writeByte(I2C_MASTER_NUM, I2C_SLAVE_ADD1, 117, NULL);
	ESP_ERROR_CHECK(ret);
	ret = readByte(I2C_MASTER_NUM, I2C_SLAVE_ADD1, &data);
	ESP_ERROR_CHECK(ret);
	ESP_LOGI(TAG, "Value: %d 0x%02x", data, data);

	ESP_LOGI(TAG, "Sensor(9250): Checking WHOIAM of the sensor...");
	ret = writeByte(I2C_MASTER_NUM, I2C_SLAVE_ADD2, 117, NULL);
	ESP_ERROR_CHECK(ret);
	ret = readByte(I2C_MASTER_NUM, I2C_SLAVE_ADD2, &data);
	ESP_ERROR_CHECK(ret);
	ESP_LOGI(TAG, "Value: %d 0x%02x", data, data);
	
	initTftLib();

	TFT_fillScreen(TFT_BLACK);
	_fg = TFT_WHITE;

	launchDrawGraphic();
}
