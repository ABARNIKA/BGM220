#ifndef SMALL_FONT_H
#define SMALL_FONT_H

#define TEXT_SCALE 3
#define BOLD_STROKE 2

#include <stdint.h>
#include "GC9A01.h"

// draw_pixel comes from app.c
extern void draw_pixel(uint16_t x, uint16_t y, uint16_t color);

/*
Correct Index Map:
0 → space
1-10 → 0-9
11 → C
12 → O
13 → U
14 → N
15 → T
*/

static const uint8_t glyph_5x7[][5] = {
{0x00,0x00,0x00,0x00,0x00}, // 0: space
{0x3E,0x51,0x49,0x45,0x3E}, // 1: 0
{0x00,0x42,0x7F,0x40,0x00}, // 2: 1
{0x42,0x61,0x51,0x49,0x46}, // 3: 2
{0x21,0x41,0x45,0x4B,0x31}, // 4: 3
{0x18,0x14,0x12,0x7F,0x10}, // 5: 4
{0x27,0x45,0x45,0x45,0x39}, // 6: 5
{0x3C,0x4A,0x49,0x49,0x30}, // 7: 6
{0x01,0x71,0x09,0x05,0x03}, // 8: 7
{0x36,0x49,0x49,0x49,0x36}, // 9: 8
{0x06,0x49,0x49,0x29,0x1E}, // 10: 9
{0x3E,0x41,0x41,0x41,0x22}, // 11: C
{0x3E,0x41,0x41,0x41,0x3E}, // 12: O
{0x3F,0x40,0x40,0x40,0x3F}, // 13: U
{0x7F,0x04,0x08,0x10,0x7F}, // 14: N
{0x01,0x01,0x7F,0x01,0x01}, // 15: T
};

static inline void draw_char_5x7(int x, int y, char c, uint16_t color)
{
    int index = 0;

    if (c >= '0' && c <= '9') index = (c - '0') + 1;
    else if (c == 'C') index = 11;
    else if (c == 'O') index = 12;
    else if (c == 'U') index = 13;
    else if (c == 'N') index = 14;
    else if (c == 'T') index = 15;
    else return;

    for (int col = 0; col < 5; col++) {
        uint8_t bits = glyph_5x7[index][col];
        for (int row = 0; row < 7; row++) {
            if (bits & (1 << row)) {

                // bold + scale
                for (int dx = 0; dx < TEXT_SCALE + BOLD_STROKE; dx++)
                for (int dy = 0; dy < TEXT_SCALE; dy++)
                    draw_pixel(x + col * (TEXT_SCALE + BOLD_STROKE) + dx,
                               y + row * TEXT_SCALE + dy,
                               color);
            }
        }
    }
}

static inline void draw_text_5x7(int x, int y, const char *text, uint16_t color)
{
    while (*text) {
        draw_char_5x7(x, y, *text, color);
        x += (5 + 1) * (TEXT_SCALE + BOLD_STROKE);
        text++;
    }
}

#endif
