# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
# 1 "/home/raphael/rtone/lcd/build/soc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
# 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h" 1
# 53 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
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
# 54 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h" 2
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdbool.h" 1 3 4
# 55 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc_cntl_reg.h"
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
# 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc_cntl_reg.h" 2
# 56 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h" 1
# 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
       


# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h" 1
# 36 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 37 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h" 2


# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 1 3 4
# 40 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4

# 40 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h" 2
# 48 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h" 1
# 69 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 70 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/types.h" 1
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/types.h"

# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/types.h"
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h" 2
# 93 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;





typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef unsigned long clock_t;




typedef long time_t;







struct timespec {
  time_t tv_sec;
  long tv_nsec;
};


struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;



typedef char * caddr_t;
# 155 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned short ino_t;
# 184 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 217 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 244 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 275 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 299 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/sched.h" 1
# 46 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/sched.h"
struct sched_param {
  int sched_priority;
# 59 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/sched.h"
};

int sched_yield( void );
# 300 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h" 2
# 308 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_t;
# 341 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;
# 357 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
  int detachstate;





} pthread_attr_t;
# 442 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 454 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
  int type;

  int recursive;
} pthread_mutexattr_t;




typedef __uint32_t pthread_cond_t;

typedef struct {
  int is_initialized;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 49 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h" 2



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/stdio.h" 1
# 64 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h" 2
# 164 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 235 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);







int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 313 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 338 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
int dprintf (int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);

int renameat (int, const char *, int, const char *);

int vdprintf (int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;







int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 538 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 562 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;







typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
# 725 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"

# 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h" 2






typedef int32_t esp_err_t;
# 58 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 76 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));


void _esp_error_check_failed_without_abort(esp_err_t rc, const char *file, int line, const char *function, const char *expression);
# 57 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h" 2







typedef enum {
    RTC_WDT_STAGE0 = 0,
    RTC_WDT_STAGE1 = 1,
    RTC_WDT_STAGE2 = 2,
    RTC_WDT_STAGE3 = 3
} rtc_wdt_stage_t;


typedef enum {
    RTC_WDT_STAGE_ACTION_OFF = 0,
    RTC_WDT_STAGE_ACTION_INTERRUPT = 1,
    RTC_WDT_STAGE_ACTION_RESET_CPU = 2,
    RTC_WDT_STAGE_ACTION_RESET_SYSTEM = 3,
    RTC_WDT_STAGE_ACTION_RESET_RTC = 4
} rtc_wdt_stage_action_t;


typedef enum {
    RTC_WDT_SYS_RESET_SIG = 0,
    RTC_WDT_CPU_RESET_SIG = 1
} rtc_wdt_reset_sig_t;


typedef enum {
    RTC_WDT_LENGTH_100ns = 0,
    RTC_WDT_LENGTH_200ns = 1,
    RTC_WDT_LENGTH_300ns = 2,
    RTC_WDT_LENGTH_400ns = 3,
    RTC_WDT_LENGTH_500ns = 4,
    RTC_WDT_LENGTH_800ns = 5,
    RTC_WDT_LENGTH_1_6us = 6,
    RTC_WDT_LENGTH_3_2us = 7
} rtc_wdt_length_sig_t;








# 104 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h" 3 4
_Bool 
# 104 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
    rtc_wdt_get_protect_status();




void rtc_wdt_protect_on();




void rtc_wdt_protect_off();




void rtc_wdt_enable();
# 128 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
void rtc_wdt_flashboot_mode_enable();




void rtc_wdt_disable();






void rtc_wdt_feed();
# 152 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
esp_err_t rtc_wdt_set_time(rtc_wdt_stage_t stage, unsigned int timeout_ms);
# 164 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
esp_err_t rtc_wdt_get_timeout(rtc_wdt_stage_t stage, unsigned int* timeout_ms);
# 176 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
esp_err_t rtc_wdt_set_stage(rtc_wdt_stage_t stage, rtc_wdt_stage_action_t stage_sel);
# 188 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
esp_err_t rtc_wdt_set_length_of_reset_signal(rtc_wdt_reset_sig_t reset_src, rtc_wdt_length_sig_t reset_signal_length);








# 196 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h" 3 4
_Bool 
# 196 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
    rtc_wdt_is_on();
# 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 1
# 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
       


# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 2

# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 2
# 60 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
typedef enum {
    RTC_XTAL_FREQ_AUTO = 0,
    RTC_XTAL_FREQ_40M = 40,
    RTC_XTAL_FREQ_26M = 26,
    RTC_XTAL_FREQ_24M = 24,
} rtc_xtal_freq_t;




typedef enum {
    RTC_CPU_FREQ_XTAL = 0,
    RTC_CPU_FREQ_80M = 1,
    RTC_CPU_FREQ_160M = 2,
    RTC_CPU_FREQ_240M = 3,
    RTC_CPU_FREQ_2M = 4,
} rtc_cpu_freq_t;




typedef enum {
    RTC_CPU_FREQ_SRC_XTAL,
    RTC_CPU_FREQ_SRC_PLL,
    RTC_CPU_FREQ_SRC_8M,
    RTC_CPU_FREQ_SRC_APLL
} rtc_cpu_freq_src_t;




typedef struct {
    rtc_cpu_freq_src_t source;
    uint32_t source_freq_mhz;
    uint32_t div;
    uint32_t freq_mhz;
} rtc_cpu_freq_config_t;




typedef enum {
    RTC_SLOW_FREQ_RTC = 0,
    RTC_SLOW_FREQ_32K_XTAL = 1,
    RTC_SLOW_FREQ_8MD256 = 2,
} rtc_slow_freq_t;




typedef enum {
    RTC_FAST_FREQ_XTALD4 = 0,
    RTC_FAST_FREQ_8M = 1,
} rtc_fast_freq_t;







typedef enum {
    RTC_CAL_RTC_MUX = 0,
    RTC_CAL_8MD256 = 1,
    RTC_CAL_32K_XTAL = 2
} rtc_cal_sel_t;




typedef struct {
    rtc_xtal_freq_t xtal_freq : 8;
    rtc_cpu_freq_t cpu_freq_mhz : 10;
    rtc_fast_freq_t fast_freq : 1;
    rtc_slow_freq_t slow_freq : 2;
    uint32_t clk_8m_div : 3;
    uint32_t slow_clk_dcap : 8;
    uint32_t clk_8m_dfreq : 8;
} rtc_clk_config_t;
# 167 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_init(rtc_clk_config_t cfg);
# 178 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_xtal_freq_t rtc_clk_xtal_freq_get();
# 188 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_xtal_freq_update(rtc_xtal_freq_t xtal_freq);





void rtc_clk_32k_enable(
# 194 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                       _Bool 
# 194 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
                            en);




void rtc_clk_32k_enable_external();






# 205 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 205 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_32k_enabled();
# 217 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_32k_bootstrap(uint32_t cycle);
# 235 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_8m_enable(
# 235 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                      _Bool 
# 235 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
                           clk_8m_en, 
# 235 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                                      _Bool 
# 235 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
                                           d256_en);






# 241 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 241 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_8m_enabled();






# 247 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 247 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_8md256_enabled();
# 265 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apll_enable(
# 265 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                        _Bool 
# 265 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
                             enable, uint32_t sdm0, uint32_t sdm1,
        uint32_t sdm2, uint32_t o_div);





void rtc_clk_slow_freq_set(rtc_slow_freq_t slow_freq);





rtc_slow_freq_t rtc_clk_slow_freq_get();
# 292 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_slow_freq_get_hz();





void rtc_clk_fast_freq_set(rtc_fast_freq_t fast_freq);





rtc_fast_freq_t rtc_clk_fast_freq_get();
# 319 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_cpu_freq_set(rtc_cpu_freq_t cpu_freq) __attribute__((deprecated));
# 341 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_cpu_freq_set_fast(rtc_cpu_freq_t cpu_freq) __attribute__((deprecated));
# 357 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_cpu_freq_t rtc_clk_cpu_freq_get() __attribute__((deprecated));
# 368 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cpu_freq_value(rtc_cpu_freq_t cpu_freq) __attribute__((deprecated));
# 380 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
 
# 380 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 380 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
     rtc_clk_cpu_freq_from_mhz(int cpu_freq_mhz, rtc_cpu_freq_t* out_val) __attribute__((deprecated));






 void rtc_clk_cpu_freq_to_config(rtc_cpu_freq_t cpu_freq, rtc_cpu_freq_config_t* out_config);







 
# 395 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 395 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
     rtc_clk_cpu_freq_mhz_to_config(uint32_t freq_mhz, rtc_cpu_freq_config_t* out_config);
# 409 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_config(const rtc_cpu_freq_config_t* config);
# 431 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_config_fast(const rtc_cpu_freq_config_t* config);





 void rtc_clk_cpu_freq_get_config(rtc_cpu_freq_config_t* out_config);
# 446 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_xtal();
# 461 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apb_freq_update(uint32_t apb_freq);





uint32_t rtc_clk_apb_freq_get();
# 484 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 493 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal_ratio(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 502 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_us_to_slowclk(uint64_t time_in_us, uint32_t period);
# 511 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_slowclk_to_us(uint64_t rtc_cycles, uint32_t period);
# 524 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_get();
# 533 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_wait_for_slow_cycle();




typedef struct {
    uint32_t lslp_mem_inf_fpu : 1;
    uint32_t rtc_mem_inf_fpu : 1;
    uint32_t rtc_mem_inf_follow_cpu : 1;
    uint32_t rtc_fastmem_pd_en : 1;
    uint32_t rtc_slowmem_pd_en : 1;
    uint32_t rtc_peri_pd_en : 1;
    uint32_t wifi_pd_en : 1;
    uint32_t rom_mem_pd_en : 1;
    uint32_t deep_slp : 1;
    uint32_t wdt_flashboot_mod_en : 1;
    uint32_t dig_dbias_wak : 3;
    uint32_t dig_dbias_slp : 3;
    uint32_t rtc_dbias_wak : 3;
    uint32_t rtc_dbias_slp : 3;
    uint32_t lslp_meminf_pd : 1;
    uint32_t vddsdio_pd_en : 1;
    uint32_t xtal_fpu : 1;
} rtc_sleep_config_t;
# 607 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_sleep_init(rtc_sleep_config_t cfg);







void rtc_sleep_set_wakeup_time(uint64_t t);
# 655 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_sleep_start(uint32_t wakeup_opt, uint32_t reject_opt);




typedef struct {
    uint32_t ck8m_wait : 8;
    uint32_t xtal_wait : 8;
    uint32_t pll_wait : 8;
    uint32_t clkctl_init : 1;
    uint32_t pwrctl_init : 1;
    uint32_t rtc_dboost_fpd : 1;
} rtc_config_t;
# 688 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_init(rtc_config_t cfg);







typedef struct {
    uint32_t force : 1;
    uint32_t enable : 1;
    uint32_t tieh : 1;
    uint32_t drefh : 2;
    uint32_t drefm : 2;
    uint32_t drefl : 2;
} rtc_vddsdio_config_t;
# 712 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_vddsdio_config_t rtc_vddsdio_get_config();
# 721 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_vddsdio_set_config(rtc_vddsdio_config_t config);
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c" 2



# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c" 3 4
_Bool 
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
    rtc_wdt_get_protect_status()
{
    return ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 21, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0xa4)))); }) != 0x50D83AA1;
}

void rtc_wdt_protect_off()
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 26, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0xa4)))) = (uint32_t)(0x50D83AA1); });
}

void rtc_wdt_protect_on()
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 31, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff48000 + 0xa4))) >= 0x3ff00000) && (((0x3ff48000 + 0xa4))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0xa4)))) = (uint32_t)(0); });
}


void rtc_wdt_enable()
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 37, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0xa0)) |= (((1UL << (31))))); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 38, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 38, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x8c))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 38, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x8c)))); })|(((1UL << (31))) | ((1UL << (7)))))); }); });
}

void rtc_wdt_flashboot_mode_enable()
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 43, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0x8c)) |= (((1UL << (10))))); });
}

void rtc_wdt_disable()
{
    
# 48 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c" 3 4
   _Bool 
# 48 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
        protect = rtc_wdt_get_protect_status();
    if (protect) {
        rtc_wdt_protect_off();
    }
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 52, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0xa0)) |= (((1UL << (31))))); });
    rtc_wdt_set_stage(RTC_WDT_STAGE0, RTC_WDT_STAGE_ACTION_OFF);
    rtc_wdt_set_stage(RTC_WDT_STAGE1, RTC_WDT_STAGE_ACTION_OFF);
    rtc_wdt_set_stage(RTC_WDT_STAGE2, RTC_WDT_STAGE_ACTION_OFF);
    rtc_wdt_set_stage(RTC_WDT_STAGE3, RTC_WDT_STAGE_ACTION_OFF);
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 57, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0x8c)) &= ~(((1UL << (10))))); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 58, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0x8c)) &= ~(((1UL << (31))))); });
    if (protect) {
        rtc_wdt_protect_on();
    }
}

void rtc_wdt_feed()
{
    
# 66 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c" 3 4
   _Bool 
# 66 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
        protect = rtc_wdt_get_protect_status();
    if (protect) {
        rtc_wdt_protect_off();
    }
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 70, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!(((((0x3ff48000 + 0xa0))) >= 0x3ff00000) && (((0x3ff48000 + 0xa0))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0xa0)) |= (((1UL << (31))))); });
    if (protect) {
        rtc_wdt_protect_on();
    }
}

esp_err_t rtc_wdt_set_time(rtc_wdt_stage_t stage, unsigned int timeout_ms)
{
    if (stage > 3) {
        return 0x102;
    }
    uint32_t timeout = (uint32_t) ((uint64_t) rtc_clk_slow_freq_get_hz() * timeout_ms / 1000);
    if (stage == RTC_WDT_STAGE0) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x90))) >= 0x3ff00000) && (((0x3ff48000 + 0x90))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x90))) >= 0x3ff00000) && (((0x3ff48000 + 0x90))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff48000 + 0x90))) >= 0x3ff00000) && (((0x3ff48000 + 0x90))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 83, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff48000 + 0x90))) >= 0x3ff00000) && (((0x3ff48000 + 0x90))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x90)))) = (uint32_t)(timeout); });
    } else if (stage == RTC_WDT_STAGE1) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x94))) >= 0x3ff00000) && (((0x3ff48000 + 0x94))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x94))) >= 0x3ff00000) && (((0x3ff48000 + 0x94))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff48000 + 0x94))) >= 0x3ff00000) && (((0x3ff48000 + 0x94))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 85, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff48000 + 0x94))) >= 0x3ff00000) && (((0x3ff48000 + 0x94))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x94)))) = (uint32_t)(timeout); });
    } else if (stage == RTC_WDT_STAGE2) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x98))) >= 0x3ff00000) && (((0x3ff48000 + 0x98))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x98))) >= 0x3ff00000) && (((0x3ff48000 + 0x98))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff48000 + 0x98))) >= 0x3ff00000) && (((0x3ff48000 + 0x98))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 87, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff48000 + 0x98))) >= 0x3ff00000) && (((0x3ff48000 + 0x98))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x98)))) = (uint32_t)(timeout); });
    } else {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x9c))) >= 0x3ff00000) && (((0x3ff48000 + 0x9c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x9c))) >= 0x3ff00000) && (((0x3ff48000 + 0x9c))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff48000 + 0x9c))) >= 0x3ff00000) && (((0x3ff48000 + 0x9c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 89, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff48000 + 0x9c))) >= 0x3ff00000) && (((0x3ff48000 + 0x9c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x9c)))) = (uint32_t)(timeout); });
    }

    return 0;
}

esp_err_t rtc_wdt_get_timeout(rtc_wdt_stage_t stage, unsigned int* timeout_ms)
{
    if (stage > 3) {
        return 0x102;
    }
    uint32_t time_tick;
    if (stage == RTC_WDT_STAGE0) {
        time_tick = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x90))) >= 0x3ff00000) && (((0x3ff48000 + 0x90))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x90))) >= 0x3ff00000) && (((0x3ff48000 + 0x90))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x90))) >= 0x3ff00000) && (((0x3ff48000 + 0x90))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 102, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x90))) >= 0x3ff00000) && (((0x3ff48000 + 0x90))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x90)))); });
    } else if (stage == RTC_WDT_STAGE1) {
        time_tick = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x94))) >= 0x3ff00000) && (((0x3ff48000 + 0x94))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x94))) >= 0x3ff00000) && (((0x3ff48000 + 0x94))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x94))) >= 0x3ff00000) && (((0x3ff48000 + 0x94))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 104, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x94))) >= 0x3ff00000) && (((0x3ff48000 + 0x94))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x94)))); });
    } else if (stage == RTC_WDT_STAGE2) {
        time_tick = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x98))) >= 0x3ff00000) && (((0x3ff48000 + 0x98))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x98))) >= 0x3ff00000) && (((0x3ff48000 + 0x98))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x98))) >= 0x3ff00000) && (((0x3ff48000 + 0x98))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 106, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x98))) >= 0x3ff00000) && (((0x3ff48000 + 0x98))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x98)))); });
    } else {
        time_tick = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x9c))) >= 0x3ff00000) && (((0x3ff48000 + 0x9c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x9c))) >= 0x3ff00000) && (((0x3ff48000 + 0x9c))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x9c))) >= 0x3ff00000) && (((0x3ff48000 + 0x9c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 108, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x9c))) >= 0x3ff00000) && (((0x3ff48000 + 0x9c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x9c)))); });
    }

    *timeout_ms = time_tick * 1000 / rtc_clk_slow_freq_get_hz();

    return 0;
}

esp_err_t rtc_wdt_set_stage(rtc_wdt_stage_t stage, rtc_wdt_stage_action_t stage_sel)
{
    if (stage > 3 || stage_sel > 4) {
        return 0x102;
    }
    if (stage == RTC_WDT_STAGE0) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 122, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 122, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x8c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 122, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x8c))); }) & ~((0x7) << (28)))|(((stage_sel) & (0x7))<<(28)))); })); });
    } else if (stage == RTC_WDT_STAGE1) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 124, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 124, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x8c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 124, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x8c))); }) & ~((0x7) << (25)))|(((stage_sel) & (0x7))<<(25)))); })); });
    } else if (stage == RTC_WDT_STAGE2) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 126, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 126, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x8c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 126, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x8c))); }) & ~((0x7) << (22)))|(((stage_sel) & (0x7))<<(22)))); })); });
    } else {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 128, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 128, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x8c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 128, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x8c))); }) & ~((0x7) << (19)))|(((stage_sel) & (0x7))<<(19)))); })); });
    }

    return 0;
}

esp_err_t rtc_wdt_set_length_of_reset_signal(rtc_wdt_reset_sig_t reset_src, rtc_wdt_length_sig_t reset_signal_length)
{
    if (reset_src > 1 || reset_signal_length > 7) {
        return 0x102;
    }
    if (reset_src == 0) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 140, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 140, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x8c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 140, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x8c))); }) & ~((0x7) << (11)))|(((reset_signal_length) & (0x7))<<(11)))); })); });
    } else {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 142, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 142, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x8c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x8c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x8c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 142, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x8c))); }) & ~((0x7) << (14)))|(((reset_signal_length) & (0x7))<<(14)))); })); });
    }

    return 0;
}


# 148 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c" 3 4
_Bool 
# 148 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
    rtc_wdt_is_on()
{
    return (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_BIT for DPORT registers use DPORT_REG_GET_BIT)"); (("(Cannot use REG_GET_BIT for DPORT registers use DPORT_REG_GET_BIT)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 150, __func__, "\"(Cannot use REG_GET_BIT for DPORT registers use DPORT_REG_GET_BIT)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0x8c)) & (((1UL << (31))))); }) != 0) || (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_BIT for DPORT registers use DPORT_REG_GET_BIT)"); (("(Cannot use REG_GET_BIT for DPORT registers use DPORT_REG_GET_BIT)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c", 150, __func__, "\"(Cannot use REG_GET_BIT for DPORT registers use DPORT_REG_GET_BIT)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0x8c)) & (((1UL << (10))))); }) != 0);
}
