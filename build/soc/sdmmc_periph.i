# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdmmc_periph.c"
# 1 "/home/raphael/rtone/lcd/build/soc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdmmc_periph.c"
# 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdmmc_periph.c"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdmmc_periph.h" 1
# 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdmmc_periph.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h" 1
# 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h" 1
# 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/features.h" 1
# 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h" 2





typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;


typedef signed short __int16_t;
typedef unsigned short __uint16_t;


typedef signed int __int32_t;
typedef unsigned int __uint32_t;


typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;


typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;


typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;


typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;


typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;


typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_intsup.h" 1
# 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h" 2






typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;




typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 74 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
  typedef long long int intmax_t;
# 162 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdmmc_periph.h" 2

# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/sdmmc_pins.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdmmc_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/sdmmc_reg.h" 1
# 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/sdmmc_reg.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_assert.h" 1
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_assert.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/assert.h" 1
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/assert.h"
       
# 1 "/home/raphael/rtone/lcd/build/include/sdkconfig.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/assert.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 1
# 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h" 1
# 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/newlib.h" 1
# 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h" 1



# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h" 2
# 189 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/xtensa/config/core-isa.h" 1
# 190 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h" 2
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h" 2
# 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2




# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 216 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4

# 216 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2

# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h" 1
# 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h" 1
# 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 149 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h" 1
# 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_types.h" 1
# 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h" 1
# 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"

# 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;
# 28 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
void _lock_init(_lock_t *lock);
void _lock_init_recursive(_lock_t *lock);
void _lock_close(_lock_t *lock);
void _lock_close_recursive(_lock_t *lock);
void _lock_acquire(_lock_t *lock);
void _lock_acquire_recursive(_lock_t *lock);
int _lock_try_acquire(_lock_t *lock);
int _lock_try_acquire_recursive(_lock_t *lock);
void _lock_release(_lock_t *lock);
void _lock_release_recursive(_lock_t *lock);
# 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h" 2


typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
typedef signed int _ssize_t;
# 67 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 357 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4

# 357 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h" 2




# 71 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h" 2






typedef unsigned long __ULong;
# 38 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};


struct _atexit {
 struct _atexit *_next;
 int _ind;
 void (*_fns[32])(void);
        struct _on_exit_args * _on_exit_args_ptr;
};
# 115 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 151 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
struct __sFILE_fake {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;
};




extern void __sinit (struct _reent *);
# 179 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  struct _reent *_data;



  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;






  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 285 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 342 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
struct _mprec
{

  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;
};


struct _misc_reent
{

  char *_strtok_last;
  _mbstate_t _mblen_state;
  _mbstate_t _wctomb_state;
  _mbstate_t _mbtowc_state;
  char _l64a_buf[8];
  int _getdate_err;
  _mbstate_t _mbrlen_state;
  _mbstate_t _mbrtowc_state;
  _mbstate_t _mbsrtowcs_state;
  _mbstate_t _wcrtomb_state;
  _mbstate_t _wcsrtombs_state;
};



struct _reent
{


  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;

  char *_emergency;

  int __sdidinit;

  int _current_category;
  const char *_current_locale;

  struct _mprec *_mp;

  void (* __cleanup) (struct _reent *);

  int _gamma_signgam;


  int _cvtlen;
  char *_cvtbuf;

  struct _rand48 *_r48;
  struct __tm *_localtime_buf;
  char *_asctime_buf;


  void (**_sig_func)(int);



  struct _atexit *_atexit;
  struct _atexit _atexit0;


  struct _glue __sglue;
  __FILE *__sf;
  struct _misc_reent *_misc;
  char *_signal_buf;
};

extern const struct __sFILE_fake __sf_fake_stdin;
extern const struct __sFILE_fake __sf_fake_stdout;
extern const struct __sFILE_fake __sf_fake_stderr;
# 458 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
extern void esp_reent_init(struct _reent* reent);
# 771 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
extern struct _reent *_global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/cdefs.h" 1
# 45 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/cdefs.h"
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 46 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/cdefs.h" 2
# 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/stdlib.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2

# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/alloca.h" 1
# 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2








typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;




typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);
# 67 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);
int mkostemp (char *, int);
int mkostemps (char *, int, int);
int mkstemp (char *);
int mkstemps (char *, int);

char * mktemp (char *);




char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);

char * _mktemp_r (struct _reent *, char *);




void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;

void * reallocf (void * __r, size_t __size);
char * realpath (const char *restrict path, char *restrict resolved_path);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);



float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);

int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);
int on_exit (void (*__func)(int, void *),void * __arg);




void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);
int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);
int setenv (const char *__string, const char *__value, int __overwrite);
int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);

char * gcvt (double,int,char *);
char * gcvtf (float,int,char *);
char * fcvt (double,int,int *,int *);
char * fcvtf (float,int,int *,int *);
char * ecvt (double,int,int *,int *);
char * ecvtbuf (double, int, int*, int*, char *);
char * fcvtbuf (double, int, int*, int*, char *);
char * ecvtf (float,int,int *,int *);
char * dtoa (double, int, int, int *, int*, char**);

char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);
int rand_r (unsigned *__seed);

double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);




long long atoll (const char *__nptr);


long long _atoll_r (struct _reent *, const char *__nptr);




long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);


long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);




unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);


unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);


void cfree (void *);
int unsetenv (const char *__string);
int _unsetenv_r (struct _reent *, const char *__string);
# 258 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 291 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
extern long double strtold (const char *restrict, char **restrict);




# 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/assert.h" 2

# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h" 1
# 39 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 24 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/assert.h" 2
# 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_assert.h" 2
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/sdmmc_reg.h" 2
# 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdmmc_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/sdmmc_struct.h" 1
# 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/sdmmc_struct.h"
typedef struct {
    uint32_t reserved1: 1;
    uint32_t disable_int_on_completion: 1;
    uint32_t last_descriptor: 1;
    uint32_t first_descriptor: 1;
    uint32_t second_address_chained: 1;
    uint32_t end_of_ring: 1;
    uint32_t reserved2: 24;
    uint32_t card_error_summary: 1;
    uint32_t owned_by_idmac: 1;
    uint32_t buffer1_size: 13;
    uint32_t buffer2_size: 13;
    uint32_t reserved3: 6;
    void* buffer1_ptr;
    union {
        void* buffer2_ptr;
        void* next_desc_ptr;
    };
} sdmmc_desc_t;



_Static_assert(sizeof(sdmmc_desc_t) == 16, "invalid size of sdmmc_desc_t structure");


typedef struct {
    uint32_t cmd_index: 6;
    uint32_t response_expect: 1;
    uint32_t response_long: 1;
    uint32_t check_response_crc: 1;
    uint32_t data_expected: 1;
    uint32_t rw: 1;
    uint32_t stream_mode: 1;
    uint32_t send_auto_stop: 1;
    uint32_t wait_complete: 1;
    uint32_t stop_abort_cmd: 1;
    uint32_t send_init: 1;
    uint32_t card_num: 5;
    uint32_t update_clk_reg: 1;
    uint32_t read_ceata: 1;
    uint32_t ccs_expected: 1;
    uint32_t enable_boot: 1;
    uint32_t expect_boot_ack: 1;
    uint32_t disable_boot: 1;
    uint32_t boot_mode: 1;
    uint32_t volt_switch: 1;
    uint32_t use_hold_reg: 1;
    uint32_t reserved: 1;
    uint32_t start_command: 1;
} sdmmc_hw_cmd_t;

_Static_assert(sizeof(sdmmc_hw_cmd_t) == 4, "invalid size of sdmmc_cmd_t structure");


typedef volatile struct {
    union {
        struct {
            uint32_t controller_reset: 1;
            uint32_t fifo_reset: 1;
            uint32_t dma_reset: 1;
            uint32_t reserved1: 1;
            uint32_t int_enable: 1;
            uint32_t dma_enable: 1;
            uint32_t read_wait: 1;
            uint32_t send_irq_response: 1;
            uint32_t abort_read_data: 1;
            uint32_t send_ccsd: 1;
            uint32_t send_auto_stop_ccsd: 1;
            uint32_t ceata_device_interrupt_status: 1;
            uint32_t reserved2: 4;
            uint32_t card_voltage_a: 4;
            uint32_t card_voltage_b: 4;
            uint32_t enable_od_pullup: 1;
            uint32_t use_internal_dma: 1;
            uint32_t reserved3: 6;
        };
        uint32_t val;
    } ctrl;

    uint32_t pwren;

    union {
        struct {
            uint32_t div0: 8;
            uint32_t div1: 8;
            uint32_t div2: 8;
            uint32_t div3: 8;
        };
        uint32_t val;
    } clkdiv;

    union {
        struct {
            uint32_t card0: 2;
            uint32_t card1: 2;
            uint32_t reserved: 28;
        };
        uint32_t val;
    } clksrc;

    union {
        struct {
            uint32_t cclk_enable: 16;
            uint32_t cclk_low_power: 16;
        };
        uint32_t val;
    } clkena;

    union {
        struct {
            uint32_t response: 8;
            uint32_t data: 24;
        };
        uint32_t val;
    } tmout;

    union {
        struct {
            uint32_t card_width: 16;
            uint32_t card_width_8: 16;
        };
        uint32_t val;
    } ctype;

    uint32_t blksiz: 16;
    uint32_t : 16;

    uint32_t bytcnt;

    union {
        struct {
            uint32_t cd: 1;
            uint32_t re: 1;
            uint32_t cmd_done: 1;
            uint32_t dto: 1;
            uint32_t txdr: 1;
            uint32_t rxdr: 1;
            uint32_t rcrc: 1;
            uint32_t dcrc: 1;
            uint32_t rto: 1;
            uint32_t drto: 1;
            uint32_t hto: 1;
            uint32_t frun: 1;
            uint32_t hle: 1;
            uint32_t sbi_bci: 1;
            uint32_t acd: 1;
            uint32_t ebe: 1;
            uint32_t sdio: 16;
        };
        uint32_t val;
    } intmask;

    uint32_t cmdarg;

    sdmmc_hw_cmd_t cmd;

    uint32_t resp[4];

    union {
        struct {
            uint32_t cd: 1;
            uint32_t re: 1;
            uint32_t cmd_done: 1;
            uint32_t dto: 1;
            uint32_t txdr: 1;
            uint32_t rxdr: 1;
            uint32_t rcrc: 1;
            uint32_t dcrc: 1;
            uint32_t rto: 1;
            uint32_t drto: 1;
            uint32_t hto: 1;
            uint32_t frun: 1;
            uint32_t hle: 1;
            uint32_t sbi_bci: 1;
            uint32_t acd: 1;
            uint32_t ebe: 1;
            uint32_t sdio: 16;
        };
        uint32_t val;
    } mintsts;

    union {
        struct {
            uint32_t cd: 1;
            uint32_t re: 1;
            uint32_t cmd_done: 1;
            uint32_t dto: 1;
            uint32_t txdr: 1;
            uint32_t rxdr: 1;
            uint32_t rcrc: 1;
            uint32_t dcrc: 1;
            uint32_t rto: 1;
            uint32_t drto: 1;
            uint32_t hto: 1;
            uint32_t frun: 1;
            uint32_t hle: 1;
            uint32_t sbi_bci: 1;
            uint32_t acd: 1;
            uint32_t ebe: 1;
            uint32_t sdio: 16;
        };
        uint32_t val;
    } rintsts;

    union {
        struct {
            uint32_t fifo_rx_watermark: 1;
            uint32_t fifo_tx_watermark: 1;
            uint32_t fifo_empty: 1;
            uint32_t fifo_full: 1;
            uint32_t cmd_fsm_state: 4;
            uint32_t data3_status: 1;
            uint32_t data_busy: 1;
            uint32_t data_fsm_busy: 1;
            uint32_t response_index: 6;
            uint32_t fifo_count: 13;
            uint32_t dma_ack: 1;
            uint32_t dma_req: 1;
        };
        uint32_t val;
    } status;

    union {
        struct {
            uint32_t tx_watermark: 12;
            uint32_t reserved1: 4;
            uint32_t rx_watermark: 12;
            uint32_t dw_dma_mts: 3;
            uint32_t reserved2: 1;
        };
        uint32_t val;
    } fifoth;

    union {
        struct {
            uint32_t cards: 2;
            uint32_t reserved: 30;
        };
        uint32_t val;
    } cdetect;

    union {
        struct {
            uint32_t cards: 2;
            uint32_t reserved: 30;
        };
        uint32_t val;
    } wrtprt;

    uint32_t gpio;
    uint32_t tcbcnt;
    uint32_t tbbcnt;

    union {
        struct {
            uint32_t debounce_count: 24;
            uint32_t reserved: 8;
        };
    } debnce;

    uint32_t usrid;
    uint32_t verid;
    uint32_t hcon;
    union {
        struct {
            uint32_t voltage: 16;
            uint32_t ddr: 16;
        };
    } uhs;

    union {
        struct {
            uint32_t cards: 2;
            uint32_t reserved: 30;
        };
    } rst_n;

    uint32_t reserved_7c;

    union {
        struct {
            uint32_t sw_reset: 1;
            uint32_t fb: 1;
            uint32_t dsl: 5;
            uint32_t enable: 1;
            uint32_t pbl: 3;
            uint32_t reserved: 21;
        };
        uint32_t val;
    } bmod;

    uint32_t pldmnd;
    sdmmc_desc_t* dbaddr;

    union {
        struct {
            uint32_t ti: 1;
            uint32_t ri: 1;
            uint32_t fbe: 1;
            uint32_t reserved1: 1;
            uint32_t du: 1;
            uint32_t ces: 1;
            uint32_t reserved2: 2;
            uint32_t nis: 1;
            uint32_t fbe_code: 3;
            uint32_t fsm: 4;
            uint32_t reserved3: 15;
        };
        uint32_t val;
    } idsts;

    union {
        struct {
            uint32_t ti: 1;
            uint32_t ri: 1;
            uint32_t fbe: 1;
            uint32_t reserved1: 1;
            uint32_t du: 1;
            uint32_t ces: 1;
            uint32_t reserved2: 2;
            uint32_t ni: 1;
            uint32_t ai: 1;
            uint32_t reserved3: 22;
        };
        uint32_t val;
    } idinten;

    uint32_t dscaddr;
    uint32_t dscaddrl;
    uint32_t dscaddru;
    uint32_t bufaddrl;
    uint32_t bufaddru;
    uint32_t reserved_a8[22];
    union {
        struct {
            uint32_t read_thr_en : 1;
            uint32_t busy_clr_int_en : 1;
            uint32_t write_thr_en : 1;
            uint32_t reserved1 : 13;
            uint32_t card_threshold : 12;
        };
        uint32_t val;
    } cardthrctl;
    uint32_t back_end_power;
    uint32_t uhs_reg_ext;
    uint32_t emmc_ddr_reg;
    uint32_t enable_shift;
    uint32_t reserved_114[443];
    union {
        struct {
            uint32_t phase_dout: 3;
            uint32_t phase_din: 3;
            uint32_t phase_core: 3;
            uint32_t div_factor_p: 4;
            uint32_t div_factor_h: 4;
            uint32_t div_factor_m: 4;
        };
        uint32_t val;
    } clock;
} sdmmc_dev_t;
extern sdmmc_dev_t SDMMC;

_Static_assert(sizeof(sdmmc_dev_t) == 0x804, "invalid size of sdmmc_dev_t structure");
# 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdmmc_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/gpio_sig_map.h" 1
# 24 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdmmc_periph.h" 2





typedef struct {
    uint8_t clk_gpio;
    uint8_t cmd_gpio;
    uint8_t d0_gpio;
    uint8_t d1_gpio;
    uint8_t d2_gpio;
    uint8_t d3_gpio;
    uint8_t d4_gpio;
    uint8_t d5_gpio;
    uint8_t d6_gpio;
    uint8_t d7_gpio;
    uint8_t card_detect;
    uint8_t write_protect;
    uint8_t card_int;
    uint8_t width;
} sdmmc_slot_info_t;


extern const sdmmc_slot_info_t sdmmc_slot_info[];
# 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdmmc_periph.c" 2

const sdmmc_slot_info_t sdmmc_slot_info[2] = {
    {
        .clk_gpio = 6,
        .cmd_gpio = 11,
        .d0_gpio = 7,
        .d1_gpio = 8,
        .d2_gpio = 9,
        .d3_gpio = 10,
        .d4_gpio = 16,
        .d5_gpio = 17,
        .d6_gpio = 5,
        .d7_gpio = 18,
        .card_detect = 97,
        .write_protect = 99,
        .card_int = 101,
        .width = 8
    },
    {
        .clk_gpio = 14,
        .cmd_gpio = 15,
        .d0_gpio = 2,
        .d1_gpio = 4,
        .d2_gpio = 12,
        .d3_gpio = 13,
        .d4_gpio = -1,
        .d5_gpio = -1,
        .d6_gpio = -1,
        .d7_gpio = -1,
        .card_detect = 98,
        .write_protect = 100,
        .card_int = 102,
        .width = 4
    }
};
