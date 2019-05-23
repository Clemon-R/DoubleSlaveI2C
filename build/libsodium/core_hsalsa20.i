# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hsalsa20/core_hsalsa20.c"
# 1 "/home/raphael/rtone/lcd/build/libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hsalsa20/core_hsalsa20.c"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h" 1



# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 149 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4

# 149 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h" 2







# 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h"
__attribute__ ((visibility ("default")))
size_t crypto_core_hsalsa20_outputbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_hsalsa20_inputbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_hsalsa20_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_hsalsa20_constbytes(void);

__attribute__ ((visibility ("default")))
int crypto_core_hsalsa20(unsigned char *out, const unsigned char *in,
                         const unsigned char *k, const unsigned char *c);
# 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hsalsa20/core_hsalsa20.c" 2

size_t
crypto_core_hsalsa20_outputbytes(void) {
    return 32U;
}

size_t
crypto_core_hsalsa20_inputbytes(void) {
    return 16U;
}

size_t
crypto_core_hsalsa20_keybytes(void) {
    return 32U;
}

size_t
crypto_core_hsalsa20_constbytes(void) {
    return 16U;
}
