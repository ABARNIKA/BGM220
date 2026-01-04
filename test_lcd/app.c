/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "sl_sleeptimer.h"
#include "spidrv.h"
#include "sl_spidrv_instances.h"
#include "dmadrv.h"
#include "GC9A01.h"
#include "Font40x64.h"
#include "GC9A01_logo.h"
#include "small_font.h"

#include <stdio.h>
#include <string.h>

// === LED (BGM220 Explorer Kit: PD2 = Green LED) ===
#define LED_PORT gpioPortD
#define LED_PIN  2



void LCD_PowerEnable(void)
{
  GPIO_PinModeSet(gpioPortA, 0, gpioModePushPull, 1);
}


void GC9A01_delay(uint16_t ms) { sl_sleeptimer_delay_millisecond(ms); }
void GC9A01_spi_tx(uint8_t *d, size_t l) { SPIDRV_MTransmitB(sl_spidrv_usart_mikroe_handle, d, l); }




void draw_pixel(uint16_t x, uint16_t y, uint16_t color)
{
    GC9A01_drawPixel(x, y, color);
}
void draw_large_digit(uint16_t x, uint16_t y, uint8_t digit, uint16_t color) {
    const uint32_t *glyph = font32x48[digit];
    for (int r = 0; r < 48; r++) {
        uint32_t bits = glyph[r];
        for (int c = 0; c < 32; c++) {
            if (bits & (1UL << (31 - c))) {
                draw_pixel(x + c, y + r, color); // Draw only digit pixel
            }
            // OFF pixels are skipped -> background remains logo ✅
        }
    }
}

void restore_logo_region(uint16_t x, uint16_t y, uint16_t w, uint16_t h)
{
    for (uint16_t j = 0; j < h; j++) {
        for (uint16_t i = 0; i < w; i++) {
            uint16_t color = GC9A01_logo[(y + j) * GC9A01_LOGO_WIDTH + (x + i)];
            draw_pixel(x + i, y + j, color);
        }
    }
}

void app_init(void)
{
      CHIP_Init();
            CMU_ClockEnable(cmuClock_GPIO, true);
            GPIO_PinModeSet(LED_PORT, LED_PIN, gpioModePushPull, 0);
            GPIO_PinOutSet(LED_PORT, LED_PIN);
            // === Init Drivers ===
                 DMADRV_Init();                 // Initialize DMA driver
                 sl_spidrv_init_instances();    // Initialize SPI driver
                 LCD_PowerEnable();             // Enable LCD VCOM power

                 // === Display Init ===

            GC9A01_init();

            // Draw background once
            GC9A01_DrawImage(0, 0, GC9A01_LOGO_WIDTH, GC9A01_LOGO_HEIGHT, GC9A01_logo);

            // Draw COUNT text ONCE (static)
            draw_text_5x7(45, 45, "COUNT", GC9A01_BLACK);


      // LED ON to indicate init success
      GPIO_PinOutSet(LED_PORT, LED_PIN);

}

/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{
  static uint8_t count = 0;
        char tens, ones;

        uint16_t x_pos = 95;
        uint16_t y_pos = 150 ;


        while (1) {
            // Restore only the small area before drawing the next number
            restore_logo_region(x_pos, y_pos, 80, 60);

            // Calculate digits
            tens = count / 10;
            ones = count % 10;

            // Draw digits
            if (count >= 10) {
                draw_large_digit(x_pos, y_pos, tens, GC9A01_BLACK);
                draw_large_digit(x_pos + 40, y_pos, ones, GC9A01_BLACK);
            } else {
                draw_large_digit(x_pos + 20, y_pos, ones, GC9A01_BLACK);
            }

            // Delay 1 second
            sl_sleeptimer_delay_millisecond(1000);

            // Increment
            count++;
            if (count > 20) count = 0;
        }
}
