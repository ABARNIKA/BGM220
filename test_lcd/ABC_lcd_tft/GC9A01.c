#include "GC9A01.h"
#include "sl_spidrv_instances.h"
#include "spidrv.h"
#include "em_gpio.h"
#include <string.h>
#include "sl_sleeptimer.h"

extern SPIDRV_Handle_t sl_spidrv_usart_mikroe_handle;

// === PINS (MATCH YOUR WIRING) ===
#define GC9A01_CS_PORT  gpioPortC
#define GC9A01_CS_PIN   3
#define GC9A01_DC_PORT  gpioPortB
#define GC9A01_DC_PIN   4
#define GC9A01_RST_PORT gpioPortC
#define GC9A01_RST_PIN  6
#define GC9A01_BL_PORT  gpioPortB
#define GC9A01_BL_PIN   1



static void delay_ms(uint32_t ms) {
    sl_sleeptimer_delay_millisecond(ms);
}

static void spi_write(uint8_t *data, size_t len) {
    SPIDRV_MTransmitB(sl_spidrv_usart_mikroe_handle, data, len);
}

static void write_command(uint8_t cmd) {
    GPIO_PinOutClear(GC9A01_DC_PORT, GC9A01_DC_PIN);
    GPIO_PinOutClear(GC9A01_CS_PORT, GC9A01_CS_PIN);
    spi_write(&cmd, 1);
    GPIO_PinOutSet(GC9A01_CS_PORT, GC9A01_CS_PIN);
}

static void write_data(uint8_t *data, size_t len) {
    GPIO_PinOutSet(GC9A01_DC_PORT, GC9A01_DC_PIN);
    GPIO_PinOutClear(GC9A01_CS_PORT, GC9A01_CS_PIN);
    spi_write(data, len);
    GPIO_PinOutSet(GC9A01_CS_PORT, GC9A01_CS_PIN);
}

void GC9A01_init(void) {
    // GPIO Setup
    GPIO_PinModeSet(GC9A01_CS_PORT,  GC9A01_CS_PIN,  gpioModePushPull, 1);
    GPIO_PinModeSet(GC9A01_DC_PORT,  GC9A01_DC_PIN,  gpioModePushPull, 1);
    GPIO_PinModeSet(GC9A01_RST_PORT, GC9A01_RST_PIN, gpioModePushPull, 1);
    GPIO_PinModeSet(GC9A01_BL_PORT,  GC9A01_BL_PIN,  gpioModePushPull, 1);

    // Reset
    GPIO_PinOutClear(GC9A01_RST_PORT, GC9A01_RST_PIN);
    delay_ms(10);
    GPIO_PinOutSet(GC9A01_RST_PORT, GC9A01_RST_PIN);
    delay_ms(120);

    // Full GC9A01 Init Sequence (tested & working)
    write_command(0xEF);
    write_command(0xEB); write_data((uint8_t[]){0x14}, 1);
    write_command(0xFE); write_command(0xEF);

    write_command(0xEB); write_data((uint8_t[]){0x14}, 1);
    write_command(0x84); write_data((uint8_t[]){0x40}, 1);
    write_command(0x85); write_data((uint8_t[]){0xFF}, 1);
    write_command(0x86); write_data((uint8_t[]){0xFF}, 1);
    write_command(0x87); write_data((uint8_t[]){0xFF}, 1);
    write_command(0x88); write_data((uint8_t[]){0x0A}, 1);
    write_command(0x89); write_data((uint8_t[]){0x21}, 1);
    write_command(0x8A); write_data((uint8_t[]){0x00}, 1);
    write_command(0x8B); write_data((uint8_t[]){0x80}, 1);
    write_command(0x8C); write_data((uint8_t[]){0x01}, 1);
    write_command(0x8D); write_data((uint8_t[]){0x01}, 1);
    write_command(0x8E); write_data((uint8_t[]){0xFF}, 1);
    write_command(0x8F); write_data((uint8_t[]){0xFF}, 1);

    write_command(0xB6); write_data((uint8_t[]){0x00, 0x00}, 2);

    write_command(0x36);
    write_data((uint8_t[]){0x18}, 1);  // Rotation: 0° (adjust if needed)

    write_command(0x3A);
    write_data((uint8_t[]){0x05}, 1);  // 16-bit color

    write_command(0x90); write_data((uint8_t[]){0x08,0x08,0x08,0x08}, 4);
    write_command(0xBD); write_data((uint8_t[]){0x06}, 1);
    write_command(0xBC); write_data((uint8_t[]){0x00}, 1);
    write_command(0xFF); write_data((uint8_t[]){0x60,0x01,0x04}, 3);
    write_command(0xC3); write_data((uint8_t[]){0x13}, 1);
    write_command(0xC4); write_data((uint8_t[]){0x13}, 1);
    write_command(0xC9); write_data((uint8_t[]){0x22}, 1);
    write_command(0xBE); write_data((uint8_t[]){0x11}, 1);
    write_command(0xE1); write_data((uint8_t[]){0x10,0x0E}, 2);
    write_command(0xDF); write_data((uint8_t[]){0x21,0x0c,0x02}, 3);

    write_command(0xF0); write_data((uint8_t[]){0x45,0x09,0x08,0x08,0x26,0x2A}, 6);
    write_command(0xF1); write_data((uint8_t[]){0x43,0x70,0x72,0x36,0x37,0x6F}, 6);
    write_command(0xF2); write_data((uint8_t[]){0x45,0x09,0x08,0x08,0x26,0x2A}, 6);
    write_command(0xF3); write_data((uint8_t[]){0x43,0x70,0x72,0x36,0x37,0x6F}, 6);

    write_command(0xED); write_data((uint8_t[]){0x1B,0x0B}, 2);
    write_command(0xAE); write_data((uint8_t[]){0x77}, 1);
    write_command(0xCD); write_data((uint8_t[]){0x63}, 1);

    write_command(0x70); write_data((uint8_t[]){0x07,0x07,0x04,0x0E,0x0F,0x09,0x07,0x08,0x03}, 9);
    write_command(0xE8); write_data((uint8_t[]){0x34}, 1);

    write_command(0x62); write_data((uint8_t[]){0x18,0x0D,0x71,0xED,0x70,0x70,0x18,0x0F,0x71,0xEF,0x70,0x70}, 12);
    write_command(0x63); write_data((uint8_t[]){0x18,0x11,0x71,0xF1,0x70,0x70,0x18,0x13,0x71,0xF3,0x70,0x70}, 12);
    write_command(0x64); write_data((uint8_t[]){0x28,0x29,0xF1,0x01,0xF1,0x00,0x07}, 7);
    write_command(0x66); write_data((uint8_t[]){0x3C,0x00,0xCD,0x67,0x45,0x45,0x10,0x00,0x00,0x00}, 10);
    write_command(0x67); write_data((uint8_t[]){0x00,0x3C,0x00,0x00,0x00,0x01,0x54,0x10,0x32,0x98}, 10);
    write_command(0x74); write_data((uint8_t[]){0x10,0x85,0x80,0x00,0x00,0x4E,0x00}, 7);
    write_command(0x98); write_data((uint8_t[]){0x3e,0x07}, 2);

    write_command(0x35);  // TE ON
    write_command(0x21);  // Inversion ON

    write_command(0x11); delay_ms(120);
    write_command(0x29); delay_ms(50);

    GPIO_PinOutSet(GC9A01_BL_PORT, GC9A01_BL_PIN);  // Backlight ON
}

void GC9A01_set_frame(struct GC9A01_frame frame) {
    uint8_t buf[4];
    write_command(0x2A);
    buf[0] = frame.start.X >> 8; buf[1] = frame.start.X & 0xFF;
    buf[2] = frame.end.X >> 8;   buf[3] = frame.end.X & 0xFF;
    write_data(buf, 4);

    write_command(0x2B);
    buf[0] = frame.start.Y >> 8; buf[1] = frame.start.Y & 0xFF;
    buf[2] = frame.end.Y >> 8;   buf[3] = frame.end.Y & 0xFF;
    write_data(buf, 4);
}

void GC9A01_write(uint8_t *data, size_t len) {
    write_command(0x2C);
    write_data(data, len);
}

void GC9A01_write_continue(uint8_t *data, size_t len) {
    write_data(data, len);
}
void GC9A01_drawChar(uint16_t x, uint16_t y, char c, uint16_t color, uint8_t size) {
    extern const uint8_t font5x7[];
    if (c < 32 || c > 126) c = '?';  // valid ASCII range

    for (int i = 0; i < 5; i++) {          // 5 columns per character
        uint8_t line = font5x7[(c - 32) * 5 + i];
        for (int j = 0; j < 8; j++) {      // 8 rows per column
            if (line & 0x1) {
                // Draw pixel if bit set
                for (int dx = 0; dx < size; dx++) {
                    for (int dy = 0; dy < size; dy++) {
                        // Draw single pixel
                        GC9A01_drawPixel(x + i * size + dx, y + j * size + dy, color);
                    }
                }
            }
            line >>= 1;
        }
    }
}

void GC9A01_drawPixel(uint16_t x, uint16_t y, uint16_t color) {
    if (x >= 240 || y >= 240) return;

    struct GC9A01_frame f = {{x, y}, {x, y}};
    GC9A01_set_frame(f);

    uint8_t pixel[2] = { color >> 8, color & 0xFF };
    write_command(0x2C);
    write_data(pixel, 2);
}


// Draw a string
void GC9A01_print(uint16_t x, uint16_t y, const char *s, uint16_t color, uint8_t size) {
    while (*s) {
        GC9A01_drawChar(x, y, *s, color, size);
        x += 6 * size; // move to next character position
        s++;
    }
}

void GC9A01_fillScreen(uint16_t color) {
    struct GC9A01_frame f = {{0, 0}, {239, 239}};
    GC9A01_set_frame(f);

    uint8_t pixel[2] = { color >> 8, color & 0xFF };

    write_command(0x2C); // Memory Write
    for (uint32_t i = 0; i < 240 * 240; i++) {
        write_data(pixel, 2);
    }
}

void GC9A01_DrawImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t *img)
{
    struct GC9A01_frame f = {{x, y}, {x + w - 1, y + h - 1}};
    GC9A01_set_frame(f);
    write_command(0x2C);

    for (uint32_t i = 0; i < (uint32_t)w * h; i++) {
        uint16_t c = img[i];
        uint8_t d[2] = { c >> 8, c & 0xFF };
        write_data(d, 2);
    }
}

