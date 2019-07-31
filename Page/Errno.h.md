**errno.h**是[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C標準函式庫](../Page/C標準函式庫.md "wikilink")裡的標頭檔，定義了透過[錯誤碼來回報錯誤資訊的巨集](https://zh.wikipedia.org/wiki/錯誤碼 "wikilink")：

  - `errno`巨集定義為一個`int`型態的[左值](https://zh.wikipedia.org/wiki/左值 "wikilink"), 包含任何函式使用errno功能所產生的上一個錯誤碼。
  - 一些表示錯誤碼，定義為整數值的巨集：
      - `EDOM`源自函式的參數超出範圍,例如`sqrt(-1)`
      - `ERANGE`源自函式的結果超出範圍,例如`strtol("0xfffffffff",NULL,0)`
      - `EILSEQ`源自不合法的字元順序,例如`wcstombs(str, L"\xffff", 2)`

[POSIX相容的](https://zh.wikipedia.org/wiki/POSIX "wikilink")[作業系統像是](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[UNIX或](https://zh.wikipedia.org/wiki/Unix "wikilink")[Linux](../Page/Linux.md "wikilink")或許會包含其他巨集來表示其他作業系統的錯誤碼

2003年12月29日，[SCO Group對被選上的](../Page/SCO_Group.md "wikilink")[Fortune 1000發布](https://zh.wikipedia.org/wiki/Fortune_1000 "wikilink")[DMCA公告](https://zh.wikipedia.org/wiki/Digital_Millennium_Copyright_Act "wikilink")，宣稱errno.h在未授權的狀況下從UNIX系統複製到了Linux系統。Linux的製作者兼商標擁有者Linus Torvalds否認SCO的指控，說是他自己寫了Linux版本的程式。

## 源代码

errno.h 在 linux 中的代码:

``` C
/* 以下来自linux 2.4.20-18的内核代码中的/usr/include/asm/errno.h */
#ifndef _I386_ERRNO_H
#define _I386_ERRNO_H
#define EPERM 1 /* Operation not permitted */
#define ENOENT 2 /* No such file or directory */
#define ESRCH 3 /* No such process */
#define EINTR 4 /* Interrupted system call */
#define EIO 5 /* I/O error */
#define ENXIO 6 /* No such device or address */
#define E2BIG 7 /* Arg list too long */
#define ENOEXEC 8 /* Exec format error */
#define EBADF 9 /* Bad file number */
#define ECHILD 10 /* No child processes */
#define EAGAIN 11 /* Try again */
#define ENOMEM 12 /* Out of memory */
#define EACCES 13 /* Permission denied */
#define EFAULT 14 /* Bad address */
#define ENOTBLK 15 /* Block device required */
#define EBUSY 16 /* Device or resource busy */
#define EEXIST 17 /* File exists */
#define EXDEV 18 /* Cross-device link */
#define ENODEV 19 /* No such device */
#define ENOTDIR 20 /* Not a directory */
#define EISDIR 21 /* Is a directory */
#define EINVAL 22 /* Invalid argument */
#define ENFILE 23 /* File table overflow */
#define EMFILE 24 /* Too many open files */
#define ENOTTY 25 /* Not a typewriter */
#define ETXTBSY 26 /* Text file busy */
#define EFBIG 27 /* File too large */
#define ENOSPC 28 /* No space left on device */
#define ESPIPE 29 /* Illegal seek */
#define EROFS 30 /* Read-only file system */
#define EMLINK 31 /* Too many links */
#define EPIPE 32 /* Broken pipe */
#define EDOM 33 /* Math argument out of domain of func */
#define ERANGE 34 /* Math result not representable */
#define EDEADLK 35 /* Resource deadlock would occur */
#define ENAMETOOLONG 36 /* File name too long */
#define ENOLCK 37 /* No record locks available */
#define ENOSYS 38 /* Function not implemented */
#define ENOTEMPTY 39 /* Directory not empty */
#define ELOOP 40 /* Too many symbolic links encountered */
#define EWOULDBLOCK EAGAIN /* Operation would block */
#define ENOMSG 42 /* No message of desired type */
#define EIDRM 43 /* Identifier removed */
#define ECHRNG 44 /* Channel number out of range */
#define EL2NSYNC 45 /* Level 2 not synchronized */
#define EL3HLT 46 /* Level 3 halted */
#define EL3RST 47 /* Level 3 reset */
#define ELNRNG 48 /* Link number out of range */
#define EUNATCH 49 /* Protocol driver not attached */
#define ENOCSI 50 /* No CSI structure available */
#define EL2HLT 51 /* Level 2 halted */
#define EBADE 52 /* Invalid exchange */
#define EBADR 53 /* Invalid request descriptor */
#define EXFULL 54 /* Exchange full */
#define ENOANO 55 /* No anode */
#define EBADRQC 56 /* Invalid request code */
#define EBADSLT 57 /* Invalid slot */
#define EDEADLOCK EDEADLK
#define EBFONT 59 /* Bad font file format */
#define ENOSTR 60 /* Device not a stream */
#define ENODATA 61 /* No data available */
#define ETIME 62 /* Timer expired */
#define ENOSR 63 /* Out of streams resources */
#define ENONET 64 /* Machine is not on the network */
#define ENOPKG 65 /* Package not installed */
#define EREMOTE 66 /* Object is remote */
#define ENOLINK 67 /* Link has been severed */
#define EADV 68 /* Advertise error */
#define ESRMNT 69 /* Srmount error */
#define ECOMM 70 /* Communication error on send */
#define EPROTO 71 /* Protocol error */
#define EMULTIHOP 72 /* Multihop attempted */
#define EDOTDOT 73 /* RFS specific error */
#define EBADMSG 74 /* Not a data message */
#define EOVERFLOW 75 /* Value too large for defined data type */
#define ENOTUNIQ 76 /* Name not unique on network */
#define EBADFD 77 /* File descriptor in bad state */
#define EREMCHG 78 /* Remote address changed */
#define ELIBACC 79 /* Can not access a needed shared library */
#define ELIBBAD 80 /* Accessing a corrupted shared library */
#define ELIBSCN 81 /* .lib section in a.out corrupted */
#define ELIBMAX 82 /* Attempting to link in too many shared libraries */
#define ELIBEXEC 83 /* Cannot exec a shared library directly */
#define EILSEQ 84 /* Illegal byte sequence */
#define ERESTART 85 /* Interrupted system call should be restarted */
#define ESTRPIPE 86 /* Streams pipe error */
#define EUSERS 87 /* Too many users */
#define ENOTSOCK 88 /* Socket operation on non-socket */
#define EDESTADDRREQ 89 /* Destination address required */
#define EMSGSIZE 90 /* Message too long */
#define EPROTOTYPE 91 /* Protocol wrong type for socket */
#define ENOPROTOOPT 92 /* Protocol not available */
#define EPROTONOSUPPORT 93 /* Protocol not supported */
#define ESOCKTNOSUPPORT 94 /* Socket type not supported */
#define EOPNOTSUPP 95 /* Operation not supported on transport endpoint */
#define EPFNOSUPPORT 96 /* Protocol family not supported */
#define EAFNOSUPPORT 97 /* Address family not supported by protocol */
#define EADDRINUSE 98 /* Address already in use */
#define EADDRNOTAVAIL 99 /* Cannot assign requested address */
#define ENETDOWN 100 /* Network is down */
#define ENETUNREACH 101 /* Network is unreachable */
#define ENETRESET 102 /* Network dropped connection because of reset */
#define ECONNABORTED 103 /* Software caused connection abort */
#define ECONNRESET 104 /* Connection reset by peer */
#define ENOBUFS 105 /* No buffer space available */
#define EISCONN 106 /* Transport endpoint is already connected */
#define ENOTCONN 107 /* Transport endpoint is not connected */
#define ESHUTDOWN 108 /* Cannot send after transport endpoint shutdown */
#define ETOOMANYREFS 109 /* Too many references: cannot splice */
#define ETIMEDOUT 110 /* Connection timed out */
#define ECONNREFUSED 111 /* Connection refused */
#define EHOSTDOWN 112 /* Host is down */
#define EHOSTUNREACH 113 /* No route to host */
#define EALREADY 114 /* Operation already in progress */
#define EINPROGRESS 115 /* Operation now in progress */
#define ESTALE 116 /* Stale NFS file handle */
#define EUCLEAN 117 /* Structure needs cleaning */
#define ENOTNAM 118 /* Not a XENIX named type file */
#define ENAVAIL 119 /* No XENIX semaphores available */
#define EISNAM 120 /* Is a named type file */
#define EREMOTEIO 121 /* Remote I/O error */
#define EDQUOT 122 /* Quota exceeded */
#define ENOMEDIUM 123 /* No medium found */
#define EMEDIUMTYPE 124 /* Wrong medium type */
#endif
```

## 其他項目

  - [C標準函式庫](../Page/C標準函式庫.md "wikilink")
  - [SCO v. IBM Linux lawsuit](https://zh.wikipedia.org/wiki/SCO_v._IBM_Linux_lawsuit "wikilink")
  - [stdio.h](https://zh.wikipedia.org/wiki/stdio.h "wikilink") (for [perror](https://zh.wikipedia.org/wiki/perror "wikilink"))
  - [string.h](https://zh.wikipedia.org/wiki/string.h "wikilink") (for [strerror](https://zh.wikipedia.org/wiki/strerror "wikilink"))

## 外部連結

  - [Linus Torvalds's commentary on errno.h](https://archive.is/20121214181659/http://www.ussg.iu.edu/hypermail/linux/kernel/0312.2/1241.html)
  - [Commentary on the SCO Dec 2003 ABI Files letter, including a detailed analysis of the history of errno.h](https://web.archive.org/web/20090906043037/http://healconsulting.com/SCO/sco-letter.html#table)
  - [Warren Toomey, of the UNIX Heritage Society, traces the history of errno.h in Unix and Linux](http://www.groklaw.net/article.php?story=20040221192536920)
  - [Lists of errno values, both numeric and symbolic](http://www.finalcog.com/c-error-codes-include-errno)