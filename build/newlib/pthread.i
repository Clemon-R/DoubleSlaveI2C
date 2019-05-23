# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/pthread.c"
# 1 "/home/raphael/rtone/lcd/build/newlib//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/pthread.c"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/pthread.h" 1
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/pthread.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h" 1
# 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h" 1
# 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/newlib.h" 1
# 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h" 1



# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/features.h" 1
# 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h" 2
# 189 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/xtensa/config/core-isa.h" 1
# 190 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/config.h" 2
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h" 2
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h" 2




# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_types.h" 1






# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h" 1
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
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
# 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_types.h" 2
# 26 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h" 2
# 61 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h" 1
# 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h" 1
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
# 62 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h" 2







# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 149 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4

# 149 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
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
# 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/pthread.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/time.h" 1
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/time.h"
struct timeval {
  time_t tv_sec;
  suseconds_t tv_usec;
};
# 55 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/time.h"
struct timezone {
  int tz_minuteswest;
  int tz_dsttime;
};
# 68 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/time.h"
struct itimerval {
  struct timeval it_interval;
  struct timeval it_value;
};





int gettimeofday (struct timeval *__restrict __p, void *__restrict __tz)
                            ;




int utimes (const char *__path, const struct timeval *__tvp);
int getitimer (int __which, struct itimerval *__value);
int setitimer (int __which, const struct itimerval *__restrict __value, struct itimerval *__restrict __ovalue)
                                            ;
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/pthread.h" 2



# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h" 1
# 28 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/unistd.h" 1



# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/sys/unistd.h" 1
# 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/sys/unistd.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/unistd.h" 1
# 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/unistd.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/cdefs.h" 1
# 45 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/cdefs.h"
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 46 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/cdefs.h" 2
# 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/unistd.h" 2


# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/unistd.h" 2

extern char **environ;

void _exit (int __status ) __attribute__ ((__noreturn__));

int access (const char *__path, int __amode );
unsigned alarm (unsigned __secs );
int chdir (const char *__path );
int chmod (const char *__path, mode_t __mode );

int chown (const char *__path, uid_t __owner, gid_t __group );




int close (int __fildes );



char * ctermid (char *__s );
char * cuserid (char *__s );



int dup (int __fildes );
int dup2 (int __fildes, int __fildes2 );






int execl (const char *__path, const char *, ... );
int execle (const char *__path, const char *, ... );
int execlp (const char *__file, const char *, ... );



int execv (const char *__path, char * const __argv[] );
int execve (const char *__path, char * const __argv[], char * const __envp[] );
int execvp (const char *__file, char * const __argv[] );




int faccessat (int __dirfd, const char *__path, int __mode, int __flags);




int fchmod (int __fildes, mode_t __mode );

int fchown (int __fildes, uid_t __owner, gid_t __group );


int fchownat (int __dirfd, const char *__path, uid_t __owner, gid_t __group, int __flags);




pid_t fork (void );
long fpathconf (int __fd, int __name );
int fsync (int __fd);
int fdatasync (int __fd);



char * getcwd (char *__buf, size_t __size );




gid_t getegid (void );
uid_t geteuid (void );
gid_t getgid (void );

int getgroups (int __gidsetsize, gid_t __grouplist[] );



char * getlogin (void );



char * getpass (const char *__prompt);
int getpagesize (void);



pid_t getpgid (pid_t);
pid_t getpgrp (void );
pid_t getpid (void );
pid_t getppid (void );




uid_t getuid (void );






int isatty (int __fildes );

int lchown (const char *__path, uid_t __owner, gid_t __group );

int link (const char *__path1, const char *__path2 );

int linkat (int __dirfd1, const char *__path1, int __dirfd2, const char *__path2, int __flags );

int nice (int __nice_value );

off_t lseek (int __fildes, off_t __offset, int __whence );
# 138 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/unistd.h"
long pathconf (const char *__path, int __name );
int pause (void );



int pipe (int __fildes[2] );



ssize_t pread (int __fd, void *__buf, size_t __nbytes, off_t __offset);
ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, off_t __offset);
int read (int __fd, void *__buf, size_t __nbyte );




int rmdir (const char *__path );



void * sbrk (ptrdiff_t __incr);





int setgid (gid_t __gid );





int sethostname (const char *, size_t);

int setpgid (pid_t __pid, pid_t __pgid );
int setpgrp (void );




pid_t setsid (void );

int setuid (uid_t __uid );




unsigned sleep (unsigned int __seconds );
void swab (const void *restrict, void *restrict, ssize_t);
long sysconf (int __name );
pid_t tcgetpgrp (int __fildes );
int tcsetpgrp (int __fildes, pid_t __pgrp_id );
char * ttyname (int __fildes );



int unlink (const char *__path );
int usleep (useconds_t __useconds);
int vhangup (void );
int write (int __fd, const void *__buf, size_t __nbyte );






extern char *optarg;
extern int optind, opterr, optopt;
int getopt(int, char * const [], const char *);
extern int optreset;



pid_t vfork (void );
# 255 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/unistd.h"
ssize_t readlink (const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                   ;

ssize_t readlinkat (int __dirfd1, const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                     ;

int symlink (const char *__name1, const char *__name2);

int symlinkat (const char *, int, const char *);
int unlinkat (int, const char *, int);
# 24 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/sys/unistd.h" 2

int truncate (const char *, off_t __length);
int gethostname (char *__name, size_t __len);
# 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/unistd.h" 2
# 29 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h" 2




# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/time.h" 1
# 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/time.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/time.h" 1
# 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/time.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/_ansi.h" 1
# 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/time.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h" 1
# 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h" 2







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
# 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/time.h" 2



# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/time.h" 2


# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/time.h" 1
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/time.h" 2
# 29 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/time.h"


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s, size_t _maxsize, const char *restrict _fmt, const struct tm *restrict _t)

                                        ;

char *asctime_r (const struct tm *restrict, char *restrict)
                       ;
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict, struct tm *restrict)
                            ;
struct tm *localtime_r (const time_t *restrict, struct tm *restrict)
                            ;








char *strptime (const char *restrict, const char *restrict, struct tm *restrict)

                            ;
void tzset (void);
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 129 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/time.h"
extern long _timezone;
extern int _daylight;
extern char *_tzname[2];
# 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/time.h" 2





int clock_settime (clockid_t clock_id, const struct timespec *tp);
int clock_gettime (clockid_t clock_id, struct timespec *tp);
int clock_getres (clockid_t clock_id, struct timespec *res);
# 34 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h" 2



struct _pthread_cleanup_context {
  void (*_routine)(void *);
  void *_arg;
  int _canceltype;
  struct _pthread_cleanup_context *_previous;
};


int pthread_atfork (void (*prepare)(void), void (*parent)(void), void (*child)(void))
                                        ;



int pthread_mutexattr_init (pthread_mutexattr_t *__attr);
int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr);
int pthread_mutexattr_getpshared (const pthread_mutexattr_t *__attr, int *__pshared)
                                                        ;
int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr, int __pshared)
                                               ;





int pthread_mutexattr_gettype (const pthread_mutexattr_t *__attr, int *__kind)
                                                    ;
int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
                                            ;





int pthread_mutex_init (pthread_mutex_t *__mutex, const pthread_mutexattr_t *__attr)
                                                                ;
int pthread_mutex_destroy (pthread_mutex_t *__mutex);
# 84 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
int pthread_mutex_lock (pthread_mutex_t *__mutex);
int pthread_mutex_trylock (pthread_mutex_t *__mutex);
int pthread_mutex_unlock (pthread_mutex_t *__mutex);



int pthread_mutex_timedlock (pthread_mutex_t *__mutex, const struct timespec *__timeout)
                                                               ;





int pthread_condattr_init (pthread_condattr_t *__attr);
int pthread_condattr_destroy (pthread_condattr_t *__attr);
int pthread_condattr_getpshared (const pthread_condattr_t *__attr, int *__pshared)
                                                      ;
int pthread_condattr_setpshared (pthread_condattr_t *__attr, int __pshared)
                                              ;



int pthread_cond_init (pthread_cond_t *__cond, const pthread_condattr_t *__attr)
                                                             ;
int pthread_cond_destroy (pthread_cond_t *__mutex);
# 119 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
int pthread_cond_signal (pthread_cond_t *__cond);
int pthread_cond_broadcast (pthread_cond_t *__cond);



int pthread_cond_wait (pthread_cond_t *__cond, pthread_mutex_t *__mutex)
                                                    ;

int pthread_cond_timedwait (pthread_cond_t *__cond, pthread_mutex_t *__mutex, const struct timespec *__abstime)

                                     ;
# 150 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
int pthread_attr_setschedparam (pthread_attr_t *__attr, const struct sched_param *__param)
                                                              ;
int pthread_attr_getschedparam (const pthread_attr_t *__attr, struct sched_param *__param)
                                                              ;
# 194 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
int pthread_attr_init (pthread_attr_t *__attr);
int pthread_attr_destroy (pthread_attr_t *__attr);
int pthread_attr_setstack (pthread_attr_t *attr, void *__stackaddr, size_t __stacksize)
                                        ;
int pthread_attr_getstack (const pthread_attr_t *attr, void **__stackaddr, size_t *__stacksize)
                                          ;
int pthread_attr_getstacksize (const pthread_attr_t *__attr, size_t *__stacksize)
                                                      ;
int pthread_attr_setstacksize (pthread_attr_t *__attr, size_t __stacksize)
                                              ;
int pthread_attr_getstackaddr (const pthread_attr_t *__attr, void **__stackaddr)
                                                     ;
int pthread_attr_setstackaddr (pthread_attr_t *__attr, void *__stackaddr)
                                              ;
int pthread_attr_getdetachstate (const pthread_attr_t *__attr, int *__detachstate)
                                                     ;
int pthread_attr_setdetachstate (pthread_attr_t *__attr, int __detachstate)
                                             ;
int pthread_attr_getguardsize (const pthread_attr_t *__attr, size_t *__guardsize)
                                                      ;
int pthread_attr_setguardsize (pthread_attr_t *__attr, size_t __guardsize)
                                              ;
# 242 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
int pthread_create (pthread_t *__pthread, const pthread_attr_t *__attr, void *(*__start_routine)( void * ), void *__arg)

                                                  ;



int pthread_join (pthread_t __pthread, void **__value_ptr);



int pthread_detach (pthread_t __pthread);



void pthread_exit (void *__value_ptr);



pthread_t pthread_self (void);



int pthread_equal (pthread_t __t1, pthread_t __t2);
# 276 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
int pthread_once (pthread_once_t *__once_control, void (*__init_routine)(void))
                                                                ;



int pthread_key_create (pthread_key_t *__key, void (*__destructor)( void * ))
                                                        ;



int pthread_setspecific (pthread_key_t __key, const void *__value)
                                             ;
void * pthread_getspecific (pthread_key_t __key);



int pthread_key_delete (pthread_key_t __key);
# 304 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
int pthread_cancel (pthread_t __pthread);



int pthread_setcancelstate (int __state, int *__oldstate);
int pthread_setcanceltype (int __type, int *__oldtype);
void pthread_testcancel (void);



void _pthread_cleanup_push (struct _pthread_cleanup_context *_context, void (*_routine)(void *), void *_arg)

                                       ;

void _pthread_cleanup_pop (struct _pthread_cleanup_context *_context, int _execute)

               ;
# 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/pthread.h" 2





int pthread_condattr_getclock(const pthread_condattr_t * attr, clockid_t * clock_id);

int pthread_condattr_setclock(pthread_condattr_t *attr, clockid_t clock_id);
# 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/pthread.c" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h" 1
# 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h" 1
# 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
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
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h" 2
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 1 3 4
# 40 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4

# 40 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h" 2
# 1 "/home/raphael/rtone/lcd/build/include/sdkconfig.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h" 2
# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdbool.h" 1 3 4
# 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 2

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





# 1 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2



# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/stdlib.h" 1
# 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2

# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/alloca.h" 1
# 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h" 2









# 31 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
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
# 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 2
# 54 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef enum {
    ETS_OK = 0,
    ETS_FAILED = 1
} ETS_STATUS;

typedef uint32_t ETSSignal;
typedef uint32_t ETSParam;

typedef struct ETSEventTag ETSEvent;

struct ETSEventTag {
    ETSSignal sig;
    ETSParam par;
};

typedef void (*ETSTask)(ETSEvent *e);
typedef void (* ets_idle_cb_t)(void *arg);
# 79 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_run(void);
# 90 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_idle_cb(ets_idle_cb_t func, void *arg);
# 105 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_task(ETSTask task, uint8_t prio, ETSEvent *queue, uint8_t qlen);
# 119 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_post(uint8_t prio, ETSSignal sig, ETSParam par);
# 133 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
extern const char *const exc_cause_table[40];
# 143 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_user_start(uint32_t start);
# 153 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_startup_callback(uint32_t callback);
# 163 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_appcpu_boot_addr(uint32_t start);
# 179 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code_legacy(uint32_t pos, uint32_t *entry_addr, 
# 179 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                           _Bool 
# 179 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                jump, 
# 179 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                      _Bool 
# 179 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                           config);
# 197 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code(uint32_t pos, uint32_t *entry_addr, 
# 197 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                    _Bool 
# 197 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                         jump, 
# 197 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                               _Bool 
# 197 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                    sb_need_check, 
# 197 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                                   _Bool 
# 197 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                                        config);
# 222 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
int ets_printf(const char *fmt, ...);
# 232 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_write_char_uart(char c);
# 242 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_putc1(void (*p)(char c));
# 252 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_putc2(void (*p)(char c));
# 262 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_uart_printf(void);
# 284 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef void ETSTimerFunc(void *timer_arg);

typedef struct _ETSTIMER_ {
    struct _ETSTIMER_ *timer_next;
    uint32_t timer_expire;
    uint32_t timer_period;
    ETSTimerFunc *timer_func;
    void *timer_arg;
} ETSTimer;
# 302 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_init(void);
# 311 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_deinit(void);
# 325 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm(ETSTimer *timer, uint32_t tmout, 
# 325 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                   _Bool 
# 325 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                        repeat);
# 339 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm_us(ETSTimer *ptimer, uint32_t us, 
# 339 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                    _Bool 
# 339 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                         repeat);
# 349 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_disarm(ETSTimer *timer);
# 363 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_setfn(ETSTimer *ptimer, ETSTimerFunc *pfunction, void *parg);
# 373 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_done(ETSTimer *ptimer);
# 383 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_delay_us(uint32_t us);
# 393 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency(uint32_t ticks_per_us);
# 405 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency_rom(uint32_t ticks_per_us);
# 415 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_cpu_frequency(void);
# 424 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_xtal_scale(void);
# 437 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_detected_xtal_freq(void);
# 451 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef void (* ets_isr_t)(void *);
# 466 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_attach(int i, ets_isr_t func, void *arg);
# 477 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_mask(uint32_t mask);
# 488 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_unmask(uint32_t unmask);
# 499 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_intr_lock(void);
# 510 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_intr_unlock(void);
# 521 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_waiti0(void);
# 539 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
void intr_matrix_set(int cpu_no, uint32_t model_num, uint32_t intr_num);
# 629 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef enum {
    OK = 0,
    FAIL,
    PENDING,
    BUSY,
    CANCEL,
} STATUS;
# 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h" 2
# 31 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
typedef enum {
    ESP_LOG_NONE,
    ESP_LOG_ERROR,
    ESP_LOG_WARN,
    ESP_LOG_INFO,
    ESP_LOG_DEBUG,
    ESP_LOG_VERBOSE
} esp_log_level_t;

typedef int (*vprintf_like_t)(const char *, va_list);
# 60 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
void esp_log_level_set(const char* tag, esp_log_level_t level);
# 73 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
vprintf_like_t esp_log_set_vprintf(vprintf_like_t func);
# 87 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_timestamp(void);
# 97 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_early_timestamp(void);
# 107 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
void esp_log_write(esp_log_level_t level, const char* tag, const char* format, ...) __attribute__ ((format (printf, 3, 4)));



# 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log_internal.h" 1
# 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log_internal.h"
void esp_log_buffer_hex_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_char_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_hexdump_internal( const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t log_level);
# 112 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h" 2
# 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/pthread.c" 2

const static char *TAG = "esp32_asio_pthread";

int pthread_condattr_setclock(pthread_condattr_t *attr, clockid_t clock_id)
{
    do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s: not yet supported!" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s: not yet supported!" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s: not yet supported!" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s: not yet supported!" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s: not yet supported!" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__); } } while(0); } while(0);
    return 0;
}
