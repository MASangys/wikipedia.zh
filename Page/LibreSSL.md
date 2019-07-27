**LibreSSL**是[OpenSSL](../Page/OpenSSL.md "wikilink")[加密](../Page/密码学.md "wikilink")[软件库的一个](../Page/函式庫.md "wikilink")[分支](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")，是一个[安全套接层](https://zh.wikipedia.org/wiki/安全套接层 "wikilink")（SSL）和[传输层安全](https://zh.wikipedia.org/wiki/传输层安全 "wikilink")（TLS）协议的[开源实现](../Page/开放源代码.md "wikilink")。在OpenSSL爆出[心脏出血](../Page/心脏出血漏洞.md "wikilink")[安全漏洞之后](https://zh.wikipedia.org/wiki/计算机安全隐患 "wikilink")，一些[OpenBSD](../Page/OpenBSD.md "wikilink")开发者于2014年4月创立了LibreSSL，\[1\]\[2\]\[3\]目标是[重构OpenSSL的代码](../Page/代码重构.md "wikilink")，以提供一个更安全的替代品。\[4\]LibreSSL复刻自OpenSSL库的1.0.1g分支，它将遵循OpenBSD基金会在其他项目所使用的安全指导原则。\[5\]

## 历史

在OpenSSL爆出心脏出血漏洞后的一周之内，OpenBSD开发团队便决定自行维护一个OpenSSL分支。开发团队于2014年4月11日注册libressl.org域名，该项目于2014年4月22日公布。

OpenBSD开发团队随即开始清理OpenSSL的代码，在第一周，LibreSSL开发团队删去了90000多行的代码。\[6\]\[7\]一些陈旧或无用代码被移除，同时对一些比较罕见的操作系统的支持也被移除。LibreSSL最初的目标平台是OpenBSD
5.6，但当代码稳定之后，还移植至其他平台。\[8\]，该项目仍在寻求“稳定的”外部资金支持。\[9\]

## 变化详情

### 内存相关

一些较显着和重要的变化包括更换自定义的内存存取调用为标准函数（例如[strlcpy](https://zh.wikipedia.org/wiki/strlcpy "wikilink")、calloc、asprintf、reallocarray等）。\[10\]\[11\]这有助于在将来用更先进的，或通过观察程序的崩溃情况来发现[缓存溢出等错误](https://zh.wikipedia.org/wiki/缓存溢出 "wikilink")。[CVS提交日志中也记录了对潜在](https://zh.wikipedia.org/wiki/协作版本系统 "wikilink")[双重释放内存的修复](https://zh.wikipedia.org/wiki/C语言的动态内存分配#常见错误 "wikilink")（包括[空指针值的显式分配](https://zh.wikipedia.org/wiki/空指针 "wikilink")）。\[12\]

### 加密算法

原本不安全的种子生成方法（由内核原生提供）被移除，以确保随机数种子是通过安全的[随机数生成器产生的](https://zh.wikipedia.org/wiki/随机数生成器 "wikilink")。又新加入了一系列算法，包括[ChaCha20](https://zh.wikipedia.org/wiki/ChaCha20 "wikilink")-[Poly1305](../Page/Poly1305.md "wikilink")等。

### 其他改动

加入了的，以检查长度参数、无符号到有符号变量的赋值、指针值/方法返回值等数据的有效性。启用了一些使之更加安全的编译器选项和标志（-Wuninitialized，-Werror等），这有助于发现潜在问题。为遵循良好的编程风格，项目也提高了代码可读性并清理空白字符，使之符合BSD的代码风格（）。移除了不必要或不安全的宏和变量；移除了未使用的或旧的程序集、应用程序、演示及文档文件/代码（[Perl](../Page/Perl.md "wikilink")脚本、[C语言文件等](https://zh.wikipedia.org/wiki/C语言 "wikilink")）。移除了对的支持、不安全的算法[Dual
EC
DRBG及旧的协议](https://zh.wikipedia.org/wiki/Dual_EC_DRBG "wikilink")/加密器（[SSLv2](https://zh.wikipedia.org/wiki/安全套接层 "wikilink")）。

## 参见

  - [TLS实现比较](https://zh.wikipedia.org/wiki/TLS实现比较 "wikilink")
  - [POSSE计划](https://zh.wikipedia.org/wiki/POSSE计划 "wikilink")
  - [OpenSSH](../Page/OpenSSH.md "wikilink")，OpenBSD社区所创的另一个安全软件的分支

## 参考

## 外部链接

  -
  - [LibreSSL源代码（OpenGrok）](https://web.archive.org/web/20140424095911/http://bxr.su/OpenBSD/lib/libssl/src/ssl/)

[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink")
[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")
[Category:2014年软件](https://zh.wikipedia.org/wiki/Category:2014年软件 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.
10.

11.

12.