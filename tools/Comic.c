// This comes with no warranty, implied or otherwise

// This data structure was designed to support Proportional fonts
// on Arduinos. It can however handle any ttf font that has been converted
// using the conversion program. These could be fixed width or proportional 
// fonts. Individual characters do not have to be multiples of 8 bits wide. 
// Any width is fine and does not need to be fixed.

// The data bits are packed to minimize data requirements, but the tradeoff
// is that a header is required per character.

// Comic.c
// Point Size   : 10
// Memory usage : 993 bytes
// # characters : 95

// Header Format (to make Arduino UTFT Compatible):
// ------------------------------------------------
// Character Width (Used as a marker to indicate use this format. i.e.: = 0x00)
// Character Height
// First Character (Reserved. 0x00)
// Number Of Characters (Reserved. 0x00)

#include <avr/pgmspace.h>

uint8_t Comic10[] PROGMEM = 
{
0x00, 0x0C, 0x00, 0x00,

// Individual Character Format:
// ----------------------------
// Character Code
// Adjusted Y Offset
// Width
// Height
// xOffset
// xDelta (the distance to move the cursor. Effective width of the character.)
// Data[n]

// NOTE: You can remove any of these characters if they are not needed in
// your application. The first character number in each Glyph indicates
// the ASCII character code. Therefore, these do not have to be sequential.
// Just remove all the content for a particular character to save space.

// ' '
0x20,0x09,0x00,0x00,0x00,0x02,

// '!'
0x21,0x01,0x01,0x08,0x01,0x03,
0xFD,
// '"'
0x22,0x01,0x03,0x03,0x01,0x05,
0xB6,0x80,
// '#'
0x23,0x01,0x08,0x08,0x00,0x08,
0x12,0x12,0xFF,0x24,0x24,0xFF,0x48,0x48,
// '$'
0x24,0x00,0x05,0x0B,0x01,0x07,
0x23,0xF9,0x4A,0x38,0xA5,0xF1,0x08,
// '%'
0x25,0x01,0x06,0x08,0x01,0x08,
0xEA,0xEF,0x04,0x20,0xF5,0x56,
// '&'
0x26,0x01,0x06,0x08,0x00,0x07,
0x18,0xA3,0x1C,0xD6,0x38,0x9D,
// '''
0x27,0x01,0x01,0x03,0x01,0x04,
0xE0,
// '('
0x28,0x01,0x03,0x0A,0x01,0x04,
0x28,0x49,0x24,0x44,
// ')'
0x29,0x01,0x03,0x0A,0x00,0x04,
0x88,0x12,0x49,0x50,
// '*'
0x2A,0x01,0x05,0x04,0x00,0x06,
0x27,0xDD,0xA0,
// '+'
0x2B,0x03,0x05,0x05,0x00,0x05,
0x21,0x3E,0x42,0x00,
// ','
0x2C,0x08,0x02,0x02,0x00,0x03,
0x60,
// '-'
0x2D,0x06,0x03,0x01,0x00,0x04,
0xE0,
// '.'
0x2E,0x08,0x01,0x01,0x01,0x03,
0x80,
// '/'
0x2F,0x00,0x05,0x09,0x00,0x05,
0x00,0x84,0x42,0x21,0x10,0x80,
// '0'
0x30,0x01,0x04,0x08,0x01,0x06,
0x69,0x99,0x99,0x96,
// '1'
0x31,0x01,0x03,0x08,0x01,0x05,
0x59,0x24,0x97,
// '2'
0x32,0x01,0x04,0x08,0x01,0x06,
0x69,0x11,0x6C,0x8F,
// '3'
0x33,0x01,0x05,0x08,0x00,0x06,
0x74,0x42,0x61,0x86,0x2E,
// '4'
0x34,0x01,0x06,0x08,0x00,0x06,
0x08,0x20,0x8A,0x4B,0xF0,0x82,
// '5'
0x35,0x00,0x04,0x09,0x01,0x06,
0x0F,0x8E,0x91,0x19,0x60,
// '6'
0x36,0x01,0x04,0x08,0x01,0x06,
0x24,0x4E,0x99,0x96,
// '7'
0x37,0x00,0x06,0x09,0x00,0x07,
0x03,0xF0,0x84,0x10,0x82,0x08,0x40,
// '8'
0x38,0x00,0x05,0x09,0x00,0x06,
0x01,0x92,0x93,0x25,0x29,0x30,
// '9'
0x39,0x01,0x04,0x08,0x01,0x06,
0x69,0x99,0x72,0x20,
// ':'
0x3A,0x04,0x01,0x04,0x01,0x03,
0x90,
// ';'
0x3B,0x04,0x02,0x06,0x00,0x03,
0x40,0x60,
// '<'
0x3C,0x04,0x03,0x04,0x00,0x04,
0x2B,0x10,
// '='
0x3D,0x04,0x03,0x05,0x01,0x05,
0xE0,0x70,
// '>'
0x3E,0x03,0x03,0x05,0x00,0x04,
0x89,0xA8,
// '?'
0x3F,0x01,0x04,0x08,0x00,0x05,
0xE1,0x10,0x20,0x04,
// '@'
0x40,0x01,0x08,0x08,0x00,0x09,
0x3C,0x42,0x99,0xA9,0xBE,0x80,0x62,0x3C,
// 'A'
0x41,0x01,0x06,0x08,0x00,0x07,
0x10,0x43,0x8A,0x79,0x28,0x61,
// 'B'
0x42,0x01,0x05,0x08,0x00,0x06,
0xF4,0x63,0x1F,0x46,0x3C,
// 'C'
0x43,0x01,0x05,0x08,0x00,0x06,
0x3A,0x51,0x08,0x43,0x2E,
// 'D'
0x44,0x01,0x06,0x08,0x00,0x07,
0xC2,0xC8,0xA1,0x86,0x18,0xBC,
// 'E'
0x45,0x01,0x05,0x08,0x00,0x06,
0xFC,0x21,0xF8,0x42,0x1F,
// 'F'
0x46,0x01,0x05,0x08,0x01,0x06,
0xFC,0x21,0xE8,0x42,0x10,
// 'G'
0x47,0x01,0x06,0x08,0x00,0x07,
0x18,0x94,0x20,0xBE,0x18,0x9C,
// 'H'
0x48,0x01,0x06,0x08,0x01,0x08,
0x86,0x18,0x61,0xFE,0x18,0x61,
// 'I'
0x49,0x01,0x03,0x08,0x01,0x05,
0xE9,0x24,0x97,
// 'J'
0x4A,0x01,0x06,0x08,0x01,0x07,
0x7C,0x41,0x04,0x12,0x4D,0x1C,
// 'K'
0x4B,0x01,0x05,0x08,0x00,0x06,
0x8C,0xA9,0x8C,0x52,0x51,
// 'L'
0x4C,0x01,0x04,0x08,0x01,0x06,
0x88,0x88,0x88,0x8F,
// 'M'
0x4D,0x01,0x08,0x08,0x00,0x09,
0x20,0x24,0x24,0x74,0x52,0x5A,0xC9,0x89,
// 'N'
0x4E,0x01,0x08,0x08,0xFF,0x08,
0x41,0x61,0x51,0x51,0x49,0x45,0x43,0x41,
// 'O'
0x4F,0x01,0x07,0x08,0x00,0x08,
0x3C,0x84,0x0C,0x18,0x30,0x01,0x1C,
// 'P'
0x50,0x01,0x04,0x08,0x00,0x05,
0xE9,0x9B,0xE8,0x88,
// 'Q'
0x51,0x01,0x08,0x0A,0x00,0x09,
0x3C,0x42,0x81,0x81,0x81,0xC9,0x67,0x3E,0x02,0x00,
// 'R'
0x52,0x00,0x05,0x09,0x00,0x06,
0x07,0x25,0x18,0xCB,0x92,0x88,
// 'S'
0x53,0x01,0x06,0x08,0x00,0x07,
0x1D,0x84,0x0E,0x0C,0x18,0x5E,
// 'T'
0x54,0x00,0x07,0x09,0x00,0x07,
0x01,0xFC,0x40,0x81,0x02,0x04,0x08,0x10,
// 'U'
0x55,0x01,0x06,0x09,0x00,0x07,
0x45,0x14,0x51,0x45,0x14,0xCE,0x00,
// 'V'
0x56,0x01,0x06,0x09,0x00,0x07,
0x82,0x28,0x94,0x51,0x47,0x08,0x00,
// 'W'
0x57,0x01,0x0A,0x08,0x00,0x0B,
0x88,0x62,0x25,0xC9,0x72,0x55,0x1D,0x42,0x70,0x88,
// 'X'
0x58,0x01,0x07,0x08,0x00,0x07,
0x82,0x88,0xA0,0x83,0x05,0x11,0x41,
// 'Y'
0x59,0x01,0x06,0x08,0x00,0x07,
0x85,0x24,0x8A,0x30,0x42,0x08,
// 'Z'
0x5A,0x01,0x06,0x08,0x00,0x07,
0xFC,0x21,0x08,0x21,0x08,0x3F,
// '['
0x5B,0x00,0x04,0x0C,0x00,0x04,
0x07,0x44,0x44,0x44,0x44,0x70,
// '\'
0x5C,0x02,0x05,0x08,0x00,0x05,
0x82,0x10,0x02,0x10,0x42,
// ']'
0x5D,0x00,0x03,0x0C,0x00,0x04,
0x1C,0x92,0x49,0x27,0x80,
// '^'
0x5E,0x01,0x04,0x03,0x00,0x05,
0x66,0x90,
// '_'
0x5F,0x0A,0x07,0x01,0x00,0x08,
0xFE,
// '`'
0x60,0x01,0x02,0x02,0x00,0x03,
0x90,
// 'a'
0x61,0x04,0x05,0x05,0x00,0x05,
0x76,0xA5,0x26,0x80,
// 'b'
0x62,0x01,0x05,0x08,0xFF,0x05,
0x42,0x10,0xE4,0xA5,0x2E,
// 'c'
0x63,0x04,0x04,0x05,0x00,0x05,
0x69,0x89,0x60,
// 'd'
0x64,0x01,0x05,0x08,0x00,0x05,
0x10,0x84,0xE9,0x4A,0x4E,
// 'e'
0x65,0x04,0x04,0x05,0x00,0x05,
0x69,0xC9,0x60,
// 'f'
0x66,0x01,0x04,0x08,0x00,0x04,
0x34,0x4E,0x44,0x44,
// 'g'
0x67,0x04,0x04,0x08,0x00,0x05,
0x79,0x9B,0x71,0x3E,
// 'h'
0x68,0x01,0x05,0x08,0xFF,0x05,
0x42,0x10,0xA6,0xA5,0x29,
// 'i'
0x69,0x02,0x01,0x07,0x01,0x04,
0xBE,
// 'j'
0x6A,0x02,0x03,0x0A,0xFF,0x04,
0x20,0x92,0x49,0xA8,
// 'k'
0x6B,0x01,0x04,0x09,0x00,0x05,
0x88,0x89,0xAE,0xA9,0x00,
// 'l'
0x6C,0x01,0x01,0x08,0x01,0x03,
0xFF,
// 'm'
0x6D,0x04,0x09,0x05,0xFF,0x08,
0x5B,0x36,0x92,0x49,0x24,0x90,
// 'n'
0x6E,0x04,0x05,0x05,0xFF,0x05,
0x53,0x52,0x94,0x80,
// 'o'
0x6F,0x04,0x06,0x05,0xFF,0x05,
0x31,0x24,0x92,0x30,
// 'p'
0x70,0x04,0x04,0x08,0x00,0x05,
0xE9,0x99,0xE8,0x88,
// 'q'
0x71,0x03,0x04,0x09,0x00,0x05,
0x07,0x99,0x97,0x11,0x10,
// 'r'
0x72,0x04,0x03,0x05,0x01,0x05,
0xF6,0x48,
// 's'
0x73,0x04,0x04,0x05,0x00,0x05,
0x78,0x61,0xE0,
// 't'
0x74,0x02,0x03,0x07,0x00,0x04,
0x4B,0xA4,0x90,
// 'u'
0x75,0x04,0x05,0x05,0x00,0x05,
0x94,0xA5,0x27,0x00,
// 'v'
0x76,0x04,0x04,0x06,0x00,0x05,
0x99,0x16,0x60,
// 'w'
0x77,0x04,0x07,0x06,0x00,0x08,
0x93,0x26,0xD7,0x64,0x80,0x00,
// 'x'
0x78,0x04,0x05,0x05,0x00,0x06,
0x8A,0x88,0xA8,0x80,
// 'y'
0x79,0x04,0x05,0x08,0x00,0x05,
0x8A,0x94,0x42,0x11,0x08,
// 'z'
0x7A,0x04,0x04,0x05,0x00,0x04,
0xF2,0x24,0xF0,
// '{'
0x7B,0x01,0x03,0x0A,0x00,0x04,
0x69,0x25,0x92,0x44,
// '|'
0x7C,0x01,0x01,0x0A,0x01,0x04,
0xFF,0xC0,
// '}'
0x7D,0x01,0x03,0x0A,0x00,0x03,
0xC9,0x24,0xD2,0x50,
// '~'
0x7E,0x04,0x05,0x03,0x00,0x06,
0x4D,0x64,

// Terminator
0xFF
};