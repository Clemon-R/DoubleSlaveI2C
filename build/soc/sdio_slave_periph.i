# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdio_slave_periph.c"
# 1 "/home/raphael/rtone/lcd/build/soc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdio_slave_periph.c"
# 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdio_slave_periph.c"
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
# 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdio_slave_periph.c" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h" 1
# 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/sdio_slave_pins.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/slc_reg.h" 1
# 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/slc_reg.h"
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
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/slc_reg.h" 2
# 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/slc_struct.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/slc_struct.h"
typedef volatile struct {
    union {
        struct {
            uint32_t slc0_tx_rst: 1;
            uint32_t slc0_rx_rst: 1;
            uint32_t ahbm_fifo_rst: 1;
            uint32_t ahbm_rst: 1;
            uint32_t slc0_tx_loop_test: 1;
            uint32_t slc0_rx_loop_test: 1;
            uint32_t slc0_rx_auto_wrback: 1;
            uint32_t slc0_rx_no_restart_clr: 1;
            uint32_t slc0_rxdscr_burst_en: 1;
            uint32_t slc0_rxdata_burst_en: 1;
            uint32_t slc0_rxlink_auto_ret: 1;
            uint32_t slc0_txlink_auto_ret: 1;
            uint32_t slc0_txdscr_burst_en: 1;
            uint32_t slc0_txdata_burst_en: 1;
            uint32_t slc0_token_auto_clr: 1;
            uint32_t slc0_token_sel: 1;
            uint32_t slc1_tx_rst: 1;
            uint32_t slc1_rx_rst: 1;
            uint32_t slc0_wr_retry_mask_en: 1;
            uint32_t slc1_wr_retry_mask_en: 1;
            uint32_t slc1_tx_loop_test: 1;
            uint32_t slc1_rx_loop_test: 1;
            uint32_t slc1_rx_auto_wrback: 1;
            uint32_t slc1_rx_no_restart_clr: 1;
            uint32_t slc1_rxdscr_burst_en: 1;
            uint32_t slc1_rxdata_burst_en: 1;
            uint32_t slc1_rxlink_auto_ret: 1;
            uint32_t slc1_txlink_auto_ret: 1;
            uint32_t slc1_txdscr_burst_en: 1;
            uint32_t slc1_txdata_burst_en: 1;
            uint32_t slc1_token_auto_clr: 1;
            uint32_t slc1_token_sel: 1;
        };
        uint32_t val;
    } conf0;
    union {
        struct {
            uint32_t frhost_bit0: 1;
            uint32_t frhost_bit1: 1;
            uint32_t frhost_bit2: 1;
            uint32_t frhost_bit3: 1;
            uint32_t frhost_bit4: 1;
            uint32_t frhost_bit5: 1;
            uint32_t frhost_bit6: 1;
            uint32_t frhost_bit7: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t cmd_dtc: 1;
            uint32_t rx_quick_eof: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_raw;
    union {
        struct {
            uint32_t frhost_bit0: 1;
            uint32_t frhost_bit1: 1;
            uint32_t frhost_bit2: 1;
            uint32_t frhost_bit3: 1;
            uint32_t frhost_bit4: 1;
            uint32_t frhost_bit5: 1;
            uint32_t frhost_bit6: 1;
            uint32_t frhost_bit7: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t cmd_dtc: 1;
            uint32_t rx_quick_eof: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_st;
    union {
        struct {
            uint32_t frhost_bit0: 1;
            uint32_t frhost_bit1: 1;
            uint32_t frhost_bit2: 1;
            uint32_t frhost_bit3: 1;
            uint32_t frhost_bit4: 1;
            uint32_t frhost_bit5: 1;
            uint32_t frhost_bit6: 1;
            uint32_t frhost_bit7: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t cmd_dtc: 1;
            uint32_t rx_quick_eof: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_ena;
    union {
        struct {
            uint32_t frhost_bit0: 1;
            uint32_t frhost_bit1: 1;
            uint32_t frhost_bit2: 1;
            uint32_t frhost_bit3: 1;
            uint32_t frhost_bit4: 1;
            uint32_t frhost_bit5: 1;
            uint32_t frhost_bit6: 1;
            uint32_t frhost_bit7: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t cmd_dtc: 1;
            uint32_t rx_quick_eof: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_clr;
    union {
        struct {
            uint32_t frhost_bit8: 1;
            uint32_t frhost_bit9: 1;
            uint32_t frhost_bit10: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit12: 1;
            uint32_t frhost_bit13: 1;
            uint32_t frhost_bit14: 1;
            uint32_t frhost_bit15: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_raw;
    union {
        struct {
            uint32_t frhost_bit8: 1;
            uint32_t frhost_bit9: 1;
            uint32_t frhost_bit10: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit12: 1;
            uint32_t frhost_bit13: 1;
            uint32_t frhost_bit14: 1;
            uint32_t frhost_bit15: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_st;
    union {
        struct {
            uint32_t frhost_bit8: 1;
            uint32_t frhost_bit9: 1;
            uint32_t frhost_bit10: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit12: 1;
            uint32_t frhost_bit13: 1;
            uint32_t frhost_bit14: 1;
            uint32_t frhost_bit15: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_ena;
    union {
        struct {
            uint32_t frhost_bit8: 1;
            uint32_t frhost_bit9: 1;
            uint32_t frhost_bit10: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit12: 1;
            uint32_t frhost_bit13: 1;
            uint32_t frhost_bit14: 1;
            uint32_t frhost_bit15: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_clr;
    union {
        struct {
            uint32_t slc0_rx_full: 1;
            uint32_t slc0_rx_empty: 1;
            uint32_t reserved2: 14;
            uint32_t slc1_rx_full: 1;
            uint32_t slc1_rx_empty: 1;
            uint32_t reserved18:14;
        };
        uint32_t val;
    } rx_status;
    union {
        struct {
            uint32_t rxfifo_wdata: 9;
            uint32_t reserved9: 7;
            uint32_t rxfifo_push: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc0_rxfifo_push;
    union {
        struct {
            uint32_t rxfifo_wdata: 9;
            uint32_t reserved9: 7;
            uint32_t rxfifo_push: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc1_rxfifo_push;
    union {
        struct {
            uint32_t slc0_tx_full: 1;
            uint32_t slc0_tx_empty: 1;
            uint32_t reserved2: 14;
            uint32_t slc1_tx_full: 1;
            uint32_t slc1_tx_empty: 1;
            uint32_t reserved18:14;
        };
        uint32_t val;
    } tx_status;
    union {
        struct {
            uint32_t txfifo_rdata: 11;
            uint32_t reserved11: 5;
            uint32_t txfifo_pop: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc0_txfifo_pop;
    union {
        struct {
            uint32_t txfifo_rdata: 11;
            uint32_t reserved11: 5;
            uint32_t txfifo_pop: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc1_txfifo_pop;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } slc0_rx_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } slc0_tx_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t bt_packet: 1;
            uint32_t reserved21: 7;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } slc1_rx_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } slc1_tx_link;
    union {
        struct {
            uint32_t slc0_intvec: 8;
            uint32_t reserved8: 8;
            uint32_t slc1_intvec: 8;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } intvec_tohost;
    union {
        struct {
            uint32_t wdata: 12;
            uint32_t wr: 1;
            uint32_t inc: 1;
            uint32_t inc_more: 1;
            uint32_t reserved15: 1;
            uint32_t token0: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc0_token0;
    union {
        struct {
            uint32_t wdata: 12;
            uint32_t wr: 1;
            uint32_t inc: 1;
            uint32_t inc_more: 1;
            uint32_t reserved15: 1;
            uint32_t token1: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc0_token1;
    union {
        struct {
            uint32_t wdata: 12;
            uint32_t wr: 1;
            uint32_t inc: 1;
            uint32_t inc_more: 1;
            uint32_t reserved15: 1;
            uint32_t token0: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc1_token0;
    union {
        struct {
            uint32_t wdata: 12;
            uint32_t wr: 1;
            uint32_t inc: 1;
            uint32_t inc_more: 1;
            uint32_t reserved15: 1;
            uint32_t token1: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc1_token1;
    union {
        struct {
            uint32_t slc0_check_owner: 1;
            uint32_t slc0_tx_check_sum_en: 1;
            uint32_t slc0_rx_check_sum_en: 1;
            uint32_t cmd_hold_en: 1;
            uint32_t slc0_len_auto_clr: 1;
            uint32_t slc0_tx_stitch_en: 1;
            uint32_t slc0_rx_stitch_en: 1;
            uint32_t reserved7: 9;
            uint32_t slc1_check_owner: 1;
            uint32_t slc1_tx_check_sum_en: 1;
            uint32_t slc1_rx_check_sum_en: 1;
            uint32_t host_int_level_sel: 1;
            uint32_t slc1_tx_stitch_en: 1;
            uint32_t slc1_rx_stitch_en: 1;
            uint32_t clk_en: 1;
            uint32_t reserved23: 9;
        };
        uint32_t val;
    } conf1;
    uint32_t slc0_state0;
    uint32_t slc0_state1;
    uint32_t slc1_state0;
    uint32_t slc1_state1;
    union {
        struct {
            uint32_t txeof_ena: 6;
            uint32_t reserved6: 2;
            uint32_t fifo_map_ena: 4;
            uint32_t slc0_tx_dummy_mode: 1;
            uint32_t hda_map_128k: 1;
            uint32_t slc1_tx_dummy_mode: 1;
            uint32_t reserved15: 1;
            uint32_t tx_push_idle_num:16;
        };
        uint32_t val;
    } bridge_conf;
    uint32_t slc0_to_eof_des_addr;
    uint32_t slc0_tx_eof_des_addr;
    uint32_t slc0_to_eof_bfr_des_addr;
    uint32_t slc1_to_eof_des_addr;
    uint32_t slc1_tx_eof_des_addr;
    uint32_t slc1_to_eof_bfr_des_addr;
    union {
        struct {
            uint32_t mode: 3;
            uint32_t reserved3: 1;
            uint32_t addr: 2;
            uint32_t reserved6: 26;
        };
        uint32_t val;
    } ahb_test;
    union {
        struct {
            uint32_t cmd_st: 3;
            uint32_t reserved3: 1;
            uint32_t func_st: 4;
            uint32_t sdio_wakeup: 1;
            uint32_t reserved9: 3;
            uint32_t bus_st: 3;
            uint32_t reserved15: 1;
            uint32_t func1_acc_state: 5;
            uint32_t reserved21: 3;
            uint32_t func2_acc_state: 5;
            uint32_t reserved29: 3;
        };
        uint32_t val;
    } sdio_st;
    union {
        struct {
            uint32_t slc0_token_no_replace: 1;
            uint32_t slc0_infor_no_replace: 1;
            uint32_t slc0_rx_fill_mode: 1;
            uint32_t slc0_rx_eof_mode: 1;
            uint32_t slc0_rx_fill_en: 1;
            uint32_t slc0_rd_retry_threshold:11;
            uint32_t slc1_token_no_replace: 1;
            uint32_t slc1_infor_no_replace: 1;
            uint32_t slc1_rx_fill_mode: 1;
            uint32_t slc1_rx_eof_mode: 1;
            uint32_t slc1_rx_fill_en: 1;
            uint32_t slc1_rd_retry_threshold:11;
        };
        uint32_t val;
    } rx_dscr_conf;
    uint32_t slc0_txlink_dscr;
    uint32_t slc0_txlink_dscr_bf0;
    uint32_t slc0_txlink_dscr_bf1;
    uint32_t slc0_rxlink_dscr;
    uint32_t slc0_rxlink_dscr_bf0;
    uint32_t slc0_rxlink_dscr_bf1;
    uint32_t slc1_txlink_dscr;
    uint32_t slc1_txlink_dscr_bf0;
    uint32_t slc1_txlink_dscr_bf1;
    uint32_t slc1_rxlink_dscr;
    uint32_t slc1_rxlink_dscr_bf0;
    uint32_t slc1_rxlink_dscr_bf1;
    uint32_t slc0_tx_erreof_des_addr;
    uint32_t slc1_tx_erreof_des_addr;
    union {
        struct {
            uint32_t slc0_token:12;
            uint32_t reserved12: 4;
            uint32_t slc1_token:12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } token_lat;
    union {
        struct {
            uint32_t wr_retry_threshold:11;
            uint32_t reserved11: 21;
        };
        uint32_t val;
    } tx_dscr_conf;
    uint32_t cmd_infor0;
    uint32_t cmd_infor1;
    union {
        struct {
            uint32_t len_wdata: 20;
            uint32_t len_wr: 1;
            uint32_t len_inc: 1;
            uint32_t len_inc_more: 1;
            uint32_t rx_packet_load_en: 1;
            uint32_t tx_packet_load_en: 1;
            uint32_t rx_get_used_dscr: 1;
            uint32_t tx_get_used_dscr: 1;
            uint32_t rx_new_pkt_ind: 1;
            uint32_t tx_new_pkt_ind: 1;
            uint32_t reserved29: 3;
        };
        uint32_t val;
    } slc0_len_conf;
    union {
        struct {
            uint32_t len: 20;
            uint32_t reserved20:12;
        };
        uint32_t val;
    } slc0_length;
    uint32_t slc0_txpkt_h_dscr;
    uint32_t slc0_txpkt_e_dscr;
    uint32_t slc0_rxpkt_h_dscr;
    uint32_t slc0_rxpkt_e_dscr;
    uint32_t slc0_txpktu_h_dscr;
    uint32_t slc0_txpktu_e_dscr;
    uint32_t slc0_rxpktu_h_dscr;
    uint32_t slc0_rxpktu_e_dscr;
    uint32_t reserved_10c;
    uint32_t reserved_110;
    union {
        struct {
            uint32_t slc0_position: 8;
            uint32_t slc1_position: 8;
            uint32_t reserved16: 16;
        };
        uint32_t val;
    } seq_position;
    union {
        struct {
            uint32_t rx_dscr_rec_lim: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } slc0_dscr_rec_conf;
    union {
        struct {
            uint32_t dat0_crc_err_cnt: 8;
            uint32_t dat1_crc_err_cnt: 8;
            uint32_t dat2_crc_err_cnt: 8;
            uint32_t dat3_crc_err_cnt: 8;
        };
        uint32_t val;
    } sdio_crc_st0;
    union {
        struct {
            uint32_t cmd_crc_err_cnt: 8;
            uint32_t reserved8: 23;
            uint32_t err_cnt_clr: 1;
        };
        uint32_t val;
    } sdio_crc_st1;
    uint32_t slc0_eof_start_des;
    uint32_t slc0_push_dscr_addr;
    uint32_t slc0_done_dscr_addr;
    uint32_t slc0_sub_start_des;
    union {
        struct {
            uint32_t rx_dscr_cnt_lat: 10;
            uint32_t reserved10: 6;
            uint32_t rx_get_eof_occ: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc0_dscr_cnt;
    union {
        struct {
            uint32_t len_lim: 20;
            uint32_t reserved20:12;
        };
        uint32_t val;
    } slc0_len_lim_conf;
    union {
        struct {
            uint32_t frhost_bit01: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit21: 1;
            uint32_t frhost_bit31: 1;
            uint32_t frhost_bit41: 1;
            uint32_t frhost_bit51: 1;
            uint32_t frhost_bit61: 1;
            uint32_t frhost_bit71: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t tx_done1: 1;
            uint32_t tx_suc_eof1: 1;
            uint32_t rx_done1: 1;
            uint32_t rx_eof1: 1;
            uint32_t tohost1: 1;
            uint32_t tx_dscr_err1: 1;
            uint32_t rx_dscr_err1: 1;
            uint32_t tx_dscr_empty1: 1;
            uint32_t host_rd_ack1: 1;
            uint32_t wr_retry_done1: 1;
            uint32_t tx_err_eof1: 1;
            uint32_t cmd_dtc1: 1;
            uint32_t rx_quick_eof1: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_st1;
    union {
        struct {
            uint32_t frhost_bit01: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit21: 1;
            uint32_t frhost_bit31: 1;
            uint32_t frhost_bit41: 1;
            uint32_t frhost_bit51: 1;
            uint32_t frhost_bit61: 1;
            uint32_t frhost_bit71: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t tx_done1: 1;
            uint32_t tx_suc_eof1: 1;
            uint32_t rx_done1: 1;
            uint32_t rx_eof1: 1;
            uint32_t tohost1: 1;
            uint32_t tx_dscr_err1: 1;
            uint32_t rx_dscr_err1: 1;
            uint32_t tx_dscr_empty1: 1;
            uint32_t host_rd_ack1: 1;
            uint32_t wr_retry_done1: 1;
            uint32_t tx_err_eof1: 1;
            uint32_t cmd_dtc1: 1;
            uint32_t rx_quick_eof1: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_ena1;
    union {
        struct {
            uint32_t frhost_bit81: 1;
            uint32_t frhost_bit91: 1;
            uint32_t frhost_bit101: 1;
            uint32_t frhost_bit111: 1;
            uint32_t frhost_bit121: 1;
            uint32_t frhost_bit131: 1;
            uint32_t frhost_bit141: 1;
            uint32_t frhost_bit151: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t tx_done1: 1;
            uint32_t tx_suc_eof1: 1;
            uint32_t rx_done1: 1;
            uint32_t rx_eof1: 1;
            uint32_t tohost1: 1;
            uint32_t tx_dscr_err1: 1;
            uint32_t rx_dscr_err1: 1;
            uint32_t tx_dscr_empty1: 1;
            uint32_t host_rd_ack1: 1;
            uint32_t wr_retry_done1: 1;
            uint32_t tx_err_eof1: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_st1;
    union {
        struct {
            uint32_t frhost_bit81: 1;
            uint32_t frhost_bit91: 1;
            uint32_t frhost_bit101: 1;
            uint32_t frhost_bit111: 1;
            uint32_t frhost_bit121: 1;
            uint32_t frhost_bit131: 1;
            uint32_t frhost_bit141: 1;
            uint32_t frhost_bit151: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t tx_done1: 1;
            uint32_t tx_suc_eof1: 1;
            uint32_t rx_done1: 1;
            uint32_t rx_eof1: 1;
            uint32_t tohost1: 1;
            uint32_t tx_dscr_err1: 1;
            uint32_t rx_dscr_err1: 1;
            uint32_t tx_dscr_empty1: 1;
            uint32_t host_rd_ack1: 1;
            uint32_t wr_retry_done1: 1;
            uint32_t tx_err_eof1: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_ena1;
    uint32_t reserved_14c;
    uint32_t reserved_150;
    uint32_t reserved_154;
    uint32_t reserved_158;
    uint32_t reserved_15c;
    uint32_t reserved_160;
    uint32_t reserved_164;
    uint32_t reserved_168;
    uint32_t reserved_16c;
    uint32_t reserved_170;
    uint32_t reserved_174;
    uint32_t reserved_178;
    uint32_t reserved_17c;
    uint32_t reserved_180;
    uint32_t reserved_184;
    uint32_t reserved_188;
    uint32_t reserved_18c;
    uint32_t reserved_190;
    uint32_t reserved_194;
    uint32_t reserved_198;
    uint32_t reserved_19c;
    uint32_t reserved_1a0;
    uint32_t reserved_1a4;
    uint32_t reserved_1a8;
    uint32_t reserved_1ac;
    uint32_t reserved_1b0;
    uint32_t reserved_1b4;
    uint32_t reserved_1b8;
    uint32_t reserved_1bc;
    uint32_t reserved_1c0;
    uint32_t reserved_1c4;
    uint32_t reserved_1c8;
    uint32_t reserved_1cc;
    uint32_t reserved_1d0;
    uint32_t reserved_1d4;
    uint32_t reserved_1d8;
    uint32_t reserved_1dc;
    uint32_t reserved_1e0;
    uint32_t reserved_1e4;
    uint32_t reserved_1e8;
    uint32_t reserved_1ec;
    uint32_t reserved_1f0;
    uint32_t reserved_1f4;
    uint32_t date;
    uint32_t id;
} slc_dev_t;
extern slc_dev_t SLC;
# 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/host_reg.h" 1
# 24 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/host_struct.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/host_struct.h"
typedef volatile struct {
    uint32_t reserved_0;
    uint32_t reserved_4;
    uint32_t reserved_8;
    uint32_t reserved_c;
    union {
        struct {
            uint32_t reserved0: 24;
            uint32_t func2_int: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } func2_0;
    union {
        struct {
            uint32_t func2_int_en: 1;
            uint32_t reserved1: 31;
        };
        uint32_t val;
    } func2_1;
    uint32_t reserved_18;
    uint32_t reserved_1c;
    union {
        struct {
            uint32_t func1_mdstat: 1;
            uint32_t reserved1: 31;
        };
        uint32_t val;
    } func2_2;
    uint32_t reserved_24;
    uint32_t reserved_28;
    uint32_t reserved_2c;
    uint32_t reserved_30;
    uint32_t gpio_status0;
    union {
        struct {
            uint32_t sdio_int1: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } gpio_status1;
    uint32_t gpio_in0;
    union {
        struct {
            uint32_t sdio_in1: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } gpio_in1;
    union {
        struct {
            uint32_t token0: 12;
            uint32_t rx_pf_valid: 1;
            uint32_t reserved13: 3;
            uint32_t reg_token1: 12;
            uint32_t rx_pf_eof: 4;
        };
        uint32_t val;
    } slc0_token_rdata;
    uint32_t slc0_pf;
    uint32_t slc1_pf;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_raw;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_raw;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_st;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_st;
    union {
        struct {
            uint32_t reg_slc0_len: 20;
            uint32_t reg_slc0_len_check:12;
        };
        uint32_t val;
    } pkt_len;
    union {
        struct {
            uint32_t state0: 8;
            uint32_t state1: 8;
            uint32_t state2: 8;
            uint32_t state3: 8;
        };
        uint32_t val;
    } state_w0;
    union {
        struct {
            uint32_t state4: 8;
            uint32_t state5: 8;
            uint32_t state6: 8;
            uint32_t state7: 8;
        };
        uint32_t val;
    } state_w1;
    union {
        struct {
            uint32_t conf0: 8;
            uint32_t conf1: 8;
            uint32_t conf2: 8;
            uint32_t conf3: 8;
        };
        uint32_t val;
    } conf_w0;
    union {
        struct {
            uint32_t conf4: 8;
            uint32_t conf5: 8;
            uint32_t conf6: 8;
            uint32_t conf7: 8;
        };
        uint32_t val;
    } conf_w1;
    union {
        struct {
            uint32_t conf8: 8;
            uint32_t conf9: 8;
            uint32_t conf10: 8;
            uint32_t conf11: 8;
        };
        uint32_t val;
    } conf_w2;
    union {
        struct {
            uint32_t conf12: 8;
            uint32_t conf13: 8;
            uint32_t conf14: 8;
            uint32_t conf15: 8;
        };
        uint32_t val;
    } conf_w3;
    union {
        struct {
            uint32_t conf16: 8;
            uint32_t conf17: 8;
            uint32_t conf18: 8;
            uint32_t conf19: 8;
        };
        uint32_t val;
    } conf_w4;
    union {
        struct {
            uint32_t conf20: 8;
            uint32_t conf21: 8;
            uint32_t conf22: 8;
            uint32_t conf23: 8;
        };
        uint32_t val;
    } conf_w5;
    uint32_t win_cmd;
    union {
        struct {
            uint32_t conf24: 8;
            uint32_t conf25: 8;
            uint32_t conf26: 8;
            uint32_t conf27: 8;
        };
        uint32_t val;
    } conf_w6;
    union {
        struct {
            uint32_t conf28: 8;
            uint32_t conf29: 8;
            uint32_t conf30: 8;
            uint32_t conf31: 8;
        };
        uint32_t val;
    } conf_w7;
    union {
        struct {
            uint32_t reg_slc0_len0:20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } pkt_len0;
    union {
        struct {
            uint32_t reg_slc0_len1:20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } pkt_len1;
    union {
        struct {
            uint32_t reg_slc0_len2:20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } pkt_len2;
    union {
        struct {
            uint32_t conf32: 8;
            uint32_t conf33: 8;
            uint32_t conf34: 8;
            uint32_t conf35: 8;
        };
        uint32_t val;
    } conf_w8;
    union {
        struct {
            uint32_t conf36: 8;
            uint32_t conf37: 8;
            uint32_t conf38: 8;
            uint32_t conf39: 8;
        };
        uint32_t val;
    } conf_w9;
    union {
        struct {
            uint32_t conf40: 8;
            uint32_t conf41: 8;
            uint32_t conf42: 8;
            uint32_t conf43: 8;
        };
        uint32_t val;
    } conf_w10;
    union {
        struct {
            uint32_t conf44: 8;
            uint32_t conf45: 8;
            uint32_t conf46: 8;
            uint32_t conf47: 8;
        };
        uint32_t val;
    } conf_w11;
    union {
        struct {
            uint32_t conf48: 8;
            uint32_t conf49: 8;
            uint32_t conf50: 8;
            uint32_t conf51: 8;
        };
        uint32_t val;
    } conf_w12;
    union {
        struct {
            uint32_t conf52: 8;
            uint32_t conf53: 8;
            uint32_t conf54: 8;
            uint32_t conf55: 8;
        };
        uint32_t val;
    } conf_w13;
    union {
        struct {
            uint32_t conf56: 8;
            uint32_t conf57: 8;
            uint32_t conf58: 8;
            uint32_t conf59: 8;
        };
        uint32_t val;
    } conf_w14;
    union {
        struct {
            uint32_t conf60: 8;
            uint32_t conf61: 8;
            uint32_t conf62: 8;
            uint32_t conf63: 8;
        };
        uint32_t val;
    } conf_w15;
    uint32_t check_sum0;
    uint32_t check_sum1;
    union {
        struct {
            uint32_t token0: 12;
            uint32_t rx_pf_valid: 1;
            uint32_t reserved13: 3;
            uint32_t reg_token1: 12;
            uint32_t rx_pf_eof: 4;
        };
        uint32_t val;
    } slc1_token_rdata;
    union {
        struct {
            uint32_t token0_wd: 12;
            uint32_t reserved12: 4;
            uint32_t token1_wd: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc0_token_wdata;
    union {
        struct {
            uint32_t token0_wd: 12;
            uint32_t reserved12: 4;
            uint32_t token1_wd: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc1_token_wdata;
    union {
        struct {
            uint32_t slc0_token0_dec: 1;
            uint32_t slc0_token1_dec: 1;
            uint32_t slc0_token0_wr: 1;
            uint32_t slc0_token1_wr: 1;
            uint32_t slc1_token0_dec: 1;
            uint32_t slc1_token1_dec: 1;
            uint32_t slc1_token0_wr: 1;
            uint32_t slc1_token1_wr: 1;
            uint32_t slc0_len_wr: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } token_con;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_clr;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_clr;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_func1_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_func1_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_func2_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_func2_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_ena;
    union {
        struct {
            uint32_t infor: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } slc0_rx_infor;
    union {
        struct {
            uint32_t infor: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } slc1_rx_infor;
    uint32_t slc0_len_wd;
    uint32_t apbwin_wdata;
    union {
        struct {
            uint32_t addr: 28;
            uint32_t wr: 1;
            uint32_t start: 1;
            uint32_t reserved30: 2;
        };
        uint32_t val;
    } apbwin_conf;
    uint32_t apbwin_rdata;
    union {
        struct {
            uint32_t bit7_clraddr: 9;
            uint32_t bit6_clraddr: 9;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } slc0_rdclr;
    union {
        struct {
            uint32_t bit7_clraddr: 9;
            uint32_t bit6_clraddr: 9;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } slc1_rdclr;
    union {
        struct {
            uint32_t tohost_bit01: 1;
            uint32_t tohost_bit11: 1;
            uint32_t tohost_bit21: 1;
            uint32_t tohost_bit31: 1;
            uint32_t tohost_bit41: 1;
            uint32_t tohost_bit51: 1;
            uint32_t tohost_bit61: 1;
            uint32_t tohost_bit71: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t token0_0to11: 1;
            uint32_t token1_0to11: 1;
            uint32_t rx_sof1: 1;
            uint32_t rx_eof1: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t rx_pf_valid1: 1;
            uint32_t ext_bit01: 1;
            uint32_t ext_bit11: 1;
            uint32_t ext_bit21: 1;
            uint32_t ext_bit31: 1;
            uint32_t rx_new_packet1: 1;
            uint32_t rd_retry1: 1;
            uint32_t gpio_sdio1: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_ena1;
    union {
        struct {
            uint32_t tohost_bit01: 1;
            uint32_t tohost_bit11: 1;
            uint32_t tohost_bit21: 1;
            uint32_t tohost_bit31: 1;
            uint32_t tohost_bit41: 1;
            uint32_t tohost_bit51: 1;
            uint32_t tohost_bit61: 1;
            uint32_t tohost_bit71: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t token0_0to11: 1;
            uint32_t token1_0to11: 1;
            uint32_t rx_sof1: 1;
            uint32_t rx_eof1: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t rx_pf_valid1: 1;
            uint32_t ext_bit01: 1;
            uint32_t ext_bit11: 1;
            uint32_t ext_bit21: 1;
            uint32_t ext_bit31: 1;
            uint32_t wifi_rx_new_packet1: 1;
            uint32_t rd_retry1: 1;
            uint32_t bt_rx_new_packet1: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_ena1;
    uint32_t reserved_11c;
    uint32_t reserved_120;
    uint32_t reserved_124;
    uint32_t reserved_128;
    uint32_t reserved_12c;
    uint32_t reserved_130;
    uint32_t reserved_134;
    uint32_t reserved_138;
    uint32_t reserved_13c;
    uint32_t reserved_140;
    uint32_t reserved_144;
    uint32_t reserved_148;
    uint32_t reserved_14c;
    uint32_t reserved_150;
    uint32_t reserved_154;
    uint32_t reserved_158;
    uint32_t reserved_15c;
    uint32_t reserved_160;
    uint32_t reserved_164;
    uint32_t reserved_168;
    uint32_t reserved_16c;
    uint32_t reserved_170;
    uint32_t reserved_174;
    uint32_t date;
    uint32_t id;
    uint32_t reserved_180;
    uint32_t reserved_184;
    uint32_t reserved_188;
    uint32_t reserved_18c;
    uint32_t reserved_190;
    uint32_t reserved_194;
    uint32_t reserved_198;
    uint32_t reserved_19c;
    uint32_t reserved_1a0;
    uint32_t reserved_1a4;
    uint32_t reserved_1a8;
    uint32_t reserved_1ac;
    uint32_t reserved_1b0;
    uint32_t reserved_1b4;
    uint32_t reserved_1b8;
    uint32_t reserved_1bc;
    uint32_t reserved_1c0;
    uint32_t reserved_1c4;
    uint32_t reserved_1c8;
    uint32_t reserved_1cc;
    uint32_t reserved_1d0;
    uint32_t reserved_1d4;
    uint32_t reserved_1d8;
    uint32_t reserved_1dc;
    uint32_t reserved_1e0;
    uint32_t reserved_1e4;
    uint32_t reserved_1e8;
    uint32_t reserved_1ec;
    union {
        struct {
            uint32_t frc_sdio11: 5;
            uint32_t frc_sdio20: 5;
            uint32_t frc_neg_samp: 5;
            uint32_t frc_pos_samp: 5;
            uint32_t frc_quick_in: 5;
            uint32_t sdio20_int_delay: 1;
            uint32_t sdio_pad_pullup: 1;
            uint32_t hspeed_con_en: 1;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } conf;
    union {
        struct {
            uint32_t sdio20_mode: 5;
            uint32_t sdio_neg_samp: 5;
            uint32_t sdio_quick_in: 5;
            uint32_t reserved15: 17;
        };
        uint32_t val;
    } inf_st;
} host_dev_t;
extern host_dev_t HOST;
# 25 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/hinf_reg.h" 1
# 26 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/hinf_struct.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/hinf_struct.h"
typedef volatile struct {
    union {
        struct {
            uint32_t user_id_fn1: 16;
            uint32_t device_id_fn1:16;
        };
        uint32_t val;
    } cfg_data0;
    union {
        struct {
            uint32_t sdio_enable: 1;
            uint32_t sdio_ioready1: 1;
            uint32_t highspeed_enable: 1;
            uint32_t highspeed_mode: 1;
            uint32_t sdio_cd_enable: 1;
            uint32_t sdio_ioready2: 1;
            uint32_t sdio_int_mask: 1;
            uint32_t ioenable2: 1;
            uint32_t cd_disable: 1;
            uint32_t func1_eps: 1;
            uint32_t emp: 1;
            uint32_t ioenable1: 1;
            uint32_t sdio20_conf0: 4;
            uint32_t sdio_ver: 12;
            uint32_t func2_eps: 1;
            uint32_t sdio20_conf1: 3;
        };
        uint32_t val;
    } cfg_data1;
    uint32_t reserved_8;
    uint32_t reserved_c;
    uint32_t reserved_10;
    uint32_t reserved_14;
    uint32_t reserved_18;
    union {
        struct {
            uint32_t pin_state: 8;
            uint32_t chip_state: 8;
            uint32_t sdio_rst: 1;
            uint32_t sdio_ioready0: 1;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } cfg_data7;
    uint32_t cis_conf0;
    uint32_t cis_conf1;
    uint32_t cis_conf2;
    uint32_t cis_conf3;
    uint32_t cis_conf4;
    uint32_t cis_conf5;
    uint32_t cis_conf6;
    uint32_t cis_conf7;
    union {
        struct {
            uint32_t user_id_fn2: 16;
            uint32_t device_id_fn2:16;
        };
        uint32_t val;
    } cfg_data16;
    uint32_t reserved_44;
    uint32_t reserved_48;
    uint32_t reserved_4c;
    uint32_t reserved_50;
    uint32_t reserved_54;
    uint32_t reserved_58;
    uint32_t reserved_5c;
    uint32_t reserved_60;
    uint32_t reserved_64;
    uint32_t reserved_68;
    uint32_t reserved_6c;
    uint32_t reserved_70;
    uint32_t reserved_74;
    uint32_t reserved_78;
    uint32_t reserved_7c;
    uint32_t reserved_80;
    uint32_t reserved_84;
    uint32_t reserved_88;
    uint32_t reserved_8c;
    uint32_t reserved_90;
    uint32_t reserved_94;
    uint32_t reserved_98;
    uint32_t reserved_9c;
    uint32_t reserved_a0;
    uint32_t reserved_a4;
    uint32_t reserved_a8;
    uint32_t reserved_ac;
    uint32_t reserved_b0;
    uint32_t reserved_b4;
    uint32_t reserved_b8;
    uint32_t reserved_bc;
    uint32_t reserved_c0;
    uint32_t reserved_c4;
    uint32_t reserved_c8;
    uint32_t reserved_cc;
    uint32_t reserved_d0;
    uint32_t reserved_d4;
    uint32_t reserved_d8;
    uint32_t reserved_dc;
    uint32_t reserved_e0;
    uint32_t reserved_e4;
    uint32_t reserved_e8;
    uint32_t reserved_ec;
    uint32_t reserved_f0;
    uint32_t reserved_f4;
    uint32_t reserved_f8;
    uint32_t date;
} hinf_dev_t;
extern hinf_dev_t HINF;
# 27 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/sdio_slave_periph.h" 2






typedef struct {
    uint32_t clk_gpio;
    uint32_t cmd_gpio;
    uint32_t d0_gpio;
    uint32_t d1_gpio;
    uint32_t d2_gpio;
    uint32_t d3_gpio;
    int func;
} sdio_slave_slot_info_t;

extern const sdio_slave_slot_info_t sdio_slave_slot_info[];
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdio_slave_periph.c" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h" 1
# 93 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h"
static inline void __attribute__ ((deprecated)) PIN_PULLUP_DIS(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 95, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLUP_EN(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 100, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_DIS(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 105, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (7))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_EN(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 110, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (7))))); });
}
# 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/sdio_slave_periph.c" 2







const sdio_slave_slot_info_t sdio_slave_slot_info[2] = {
    {
        .clk_gpio = 6,
        .cmd_gpio = 11,
        .d0_gpio = 7,
        .d1_gpio = 8,
        .d2_gpio = 9,
        .d3_gpio = 10,
        .func = 0,
    }, {
        .clk_gpio = 14,
        .cmd_gpio = 15,
        .d0_gpio = 2,
        .d1_gpio = 4,
        .d2_gpio = 12,
        .d3_gpio = 13,
        .func = 4,
    },
};
