#ifndef __GC9A01_H
#define __GC9A01_H

#include <stdint.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

void GC9A01_set_reset(uint8_t val);
void GC9A01_set_data_command(uint8_t val);
void GC9A01_set_chip_select(uint8_t val);
void GC9A01_delay(uint16_t ms);
void GC9A01_spi_tx(uint8_t *data, size_t len);

struct GC9A01_point { uint16_t X, Y; };
struct GC9A01_frame { struct GC9A01_point start, end; };

void GC9A01_init(void);
void GC9A01_set_frame(struct GC9A01_frame frame);
void GC9A01_write(uint8_t *data, size_t len);
void GC9A01_write_continue(uint8_t *data, size_t len);
void GC9A01_print(uint16_t x, uint16_t y, const char *s, uint16_t color, uint8_t size);
void GC9A01_drawChar(uint16_t x, uint16_t y, char c, uint16_t color, uint8_t size);
void GC9A01_drawPixel(uint16_t x, uint16_t y, uint16_t color);
void GC9A01_fillScreen(uint16_t color);
void GC9A01_DrawImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t *img);

#define GC9A01_BLACK   0x0000
#define GC9A01_BLUE    0x001F
#define GC9A01_RED     0xF800
#define GC9A01_GREEN   0x07E0
#define GC9A01_CYAN    0x07FF
#define GC9A01_MAGENTA 0xF81F
#define GC9A01_YELLOW  0xFFE0
#define GC9A01_WHITE   0xFFFF
#define GC9A01_TEAL 0x300C

#ifdef __cplusplus
}
#endif

#endif
