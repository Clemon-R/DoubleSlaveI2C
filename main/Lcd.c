#include "Lcd.h"

static char tmp_buff[64];

void launchDrawGraphic()
{
	TickType_t	start = xTaskGetTickCount();
	uint16_t offset = TFT_getfontheight();
	uint16_t middle = _width / 2;
	uint16_t padding = 4;
	uint16_t middlePadding = middle - padding * 2;
	TFT_fillRect(0, 4, _width, _height - 4, (color_t){230,230,230});
	TFT_fillRect(8, 0, TFT_getStringWidth("Monitor") + 4, TFT_getfontheight(), TFT_BLACK);

	font_transparent = 0;
	_bg = TFT_BLACK;
	_fg = TFT_WHITE;
	TFT_print("Monitor", 10, 0);
	TFT_drawLine(10, _height - offset * 8, _width - 20, _height - offset * 8, (color_t){190, 190, 190});
	font_transparent = 1;
	_fg = (color_t){80, 80, 80};
	TFT_print("Logs", 12, _height - offset * 8 + 2);

	TFT_setFont(COMIC7_FONT, NULL);
	while (1){
		TickType_t current = xTaskGetTickCount();

		_bg = TFT_BLACK;
		_fg = TFT_WHITE;

		uint16_t y = 0, x = 0;
		TFT_fillRect(padding + middle * x, offset * (1 +  6 * y), middlePadding, offset * 2, (color_t){60, 179, 113});
		TFT_print("Vitesse en km/h", padding * 2 + middle * x, offset * (1.5f + 6 * y));

		float percent = (current % 96) / 97.0f;
		uint16_t widthPb = middlePadding * percent;
		TFT_fillRect(padding + widthPb + middle * x, offset * (3 + 6 * y), middlePadding - widthPb, offset * 3, (color_t){70, 200, 135});
		TFT_fillRect(padding + middle * x, offset * (3 + 6 * y), (middlePadding) * percent, offset * 3, (color_t){24, 124, 69});
		sprintf(tmp_buff, "%dkm/h", (int)(100 * percent));
		TFT_print(tmp_buff, padding + (widthPb > TFT_getStringWidth(tmp_buff) ? widthPb - TFT_getStringWidth(tmp_buff) - 1 : 1) + middle * x, offset * (4 + 6 * y ));

		y = 0;
		x = 1;
		TFT_fillRect(padding + middle * x, offset * (1 +  6 * y), middlePadding, offset * 2, (color_t){0, 204, 204});
		TFT_print("Tours par minute", padding * 2 + middle * x, offset * (1.5f + 6 * y));

		widthPb = middlePadding * percent;
		TFT_fillRect(padding + widthPb + middle * x, offset * (3 + 6 * y), middlePadding - widthPb, offset * 3, (color_t){0, 255, 255});
		TFT_fillRect(padding + middle * x, offset * (3 + 6 * y), (middlePadding) * percent, offset * 3, (color_t){0, 153, 153});
		sprintf(tmp_buff, "%dtr/m", (int)(6584 * percent));
		TFT_print(tmp_buff, padding + (widthPb > TFT_getStringWidth(tmp_buff) ? widthPb - TFT_getStringWidth(tmp_buff) - 1 : 1) + middle * x, offset * (4 + 6 * y ));

		y = 1;
		x = 0;
		TickType_t	time = (xTaskGetTickCount() - start) * portTICK_PERIOD_MS / 1000;
		TFT_fillRect(padding + middle * x, offset * (1 +  6 * y), middlePadding, offset * 2, (color_t){92, 92, 205});
		TFT_print("Temps de fonctionnement", padding * 2 + middle * x, offset * (1.5f + 6 * y));

		TFT_fillRect(padding + middle * x, offset * (3 + 6 * y), middlePadding, offset * 3, (color_t){71, 99, 200});
		sprintf(tmp_buff, "%dh, %dm, %ds", time / (60 * 60), time % (60 * 60) / 60,  time % (60 * 60) % 60);
		TFT_print(tmp_buff, padding + middle * x + 2, offset * (4 + 6 * y ));

		y = 1;
		x = 1;
		TFT_fillRect(padding + middle * x, offset * (1 +  6 * y), middlePadding, offset * 2, (color_t){180, 130, 80});
		TFT_print("Niveau de batterie", padding * 2 + middle * x, offset * (1.5f + 6 * y));

		TFT_fillRect(padding + middle * x, offset * (3 + 6 * y), middlePadding, offset * 6, (color_t){237, 149, 100});
		_bg = (color_t){237, 149, 100};
		TFT_fillCircle(padding + middle * x + offset * 3, offset * (6 + 6 * y), offset * 3 * percent, TFT_WHITE);
		sprintf(tmp_buff, "%d%c", (int)(100 * percent), '%');
		_fg = TFT_BLACK;
		TFT_print(tmp_buff, padding + middle * x + offset * 3 - TFT_getStringWidth(tmp_buff) / 2, offset * (6 + 6 * y) - TFT_getfontheight() / 2);

		TFT_fillRect(10, _height - offset * 6, _width - 20, offset * 5, (color_t){190, 190, 190});
		TFT_print("Test1", 12, _height - offset * 6);
		TFT_print("Test2", 12, _height - offset * 5);
		TFT_print("Test3", 12, _height - offset * 4);
		TFT_print("Test4", 12, _height - offset * 3);
		TFT_print("Test5", 12, _height - offset * 2);

		current = pdMS_TO_TICKS(1000) -  (xTaskGetTickCount() - current);
		if (current > 0)
			vTaskDelay(current);
	}
}

void initTftLib()
{
	tft_disp_type = DISP_TYPE_ILI9341;
	_width = 320;  // smaller dimension
	_height = 240; // larger dimension
	max_rdclock = 20000000;

	TFT_PinsInit();

	esp_err_t ret;
	spi_lobo_device_handle_t spi;
	spi_lobo_bus_config_t buscfg={
		.miso_io_num=PIN_NUM_MISO,
		.mosi_io_num=PIN_NUM_MOSI,
		.sclk_io_num=PIN_NUM_CLK,
		.quadwp_io_num=-1,
		.quadhd_io_num=-1,
		.max_transfer_sz=6*320*240
	};
	spi_lobo_device_interface_config_t devcfg={
		.clock_speed_hz=20000000,           //Clock out at 10 MHz
		.mode=0,                                //SPI mode 0
		.spics_io_num=-1,                       // we will use external CS pin
		.spics_ext_io_num=PIN_NUM_CS,           // external CS pin
		.flags=LB_SPI_DEVICE_HALFDUPLEX, // ALWAYS SET  to HALF DUPLEX MODE!! for display spi
	};
	ret=spi_lobo_bus_add_device(TFT_HSPI_HOST, &buscfg, &devcfg, &spi);
	assert(ret==ESP_OK);
	disp_spi = spi;

	// ==== Test select/deselect ====
	ret = spi_lobo_device_select(spi, 1);
	assert(ret==ESP_OK);
	TFT_display_init();
	max_rdclock = find_rd_speed();

	// ==== Set SPI clock used for display operations ====
	spi_lobo_set_speed(spi, DEFAULT_SPI_CLOCK);
	vfs_spiffs_register();

	font_rotate = 0;
	text_wrap = 0;
	font_transparent = 1;
	font_forceFixed = 0;
	gray_scale = 0;
	TFT_setGammaCurve(DEFAULT_GAMMA_CURVE);
	TFT_setRotation(LANDSCAPE);
	TFT_setFont(DEF_SMALL_FONT, NULL);
	TFT_resetclipwin();

	TFT_fillRect(0,0,80,240,TFT_BLUE);
	TFT_fillRect(80,0,80,240,TFT_GREEN);
	TFT_fillRect(160,0,80,240,TFT_RED);
	TFT_fillRect(240,0,80,240,TFT_WHITE);

	_fg = TFT_WHITE;
	TFT_print("Loading program...", CENTER, CENTER);
	vTaskDelay(pdMS_TO_TICKS(1000));
}
