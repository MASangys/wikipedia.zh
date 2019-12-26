**Tiny C Compiler**（縮寫為TCC、tCc或TinyCC）是一个用於[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")（16/32位元）或[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")（64位元）系統的[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")，開發者為[Fabrice Bellard](https://zh.wikipedia.org/wiki/Fabrice_Bellard "wikilink")。軟體是設計用於低階電腦環境，或是於磁碟容量有限的空間中（1.44磁片或是硬碟）。軟體可以適用於[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Unix作業系統](https://zh.wikipedia.org/wiki/Unix "wikilink")，而最新版本為0.9.27（2017年12月17日）。TCC是在[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")（LGPL）協定規範下發布。

TCC符合[ANSI C](../Page/ANSI_C.md "wikilink")（C89/C90）規範\[1\]亦符合新版的ISO [C99標準規範](https://zh.wikipedia.org/wiki/C99 "wikilink")，與GNU C擴展的內嵌[組合語言](https://zh.wikipedia.org/wiki/組合語言 "wikilink")（即[inline assembler](https://zh.wikipedia.org/wiki/內聯彙編 "wikilink")）功能[汇编语言](../Page/汇编语言.md "wikilink")。

## 更新項目

  - 支援C99 VLA規範
  - 可產生make的dependencies（-MD/-MF）
  - 支援多種平台的程式編寫，例：[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")、[ARM](https://zh.wikipedia.org/wiki/ARM "wikilink")、[OSX](https://zh.wikipedia.org/wiki/OSX "wikilink")、[WinCE](https://zh.wikipedia.org/wiki/WinCE "wikilink")、[kFreeBSD](https://zh.wikipedia.org/wiki/kFreeBSD "wikilink")、[Hurd](https://zh.wikipedia.org/wiki/Hurd "wikilink")
  - 修正一些已知的bug

## 特色功能

TCC與其他C語言編譯器的不同處在於：

  - 容量小，軟體大小約為1MB左右，可儲存於1.44MB的磁碟片中使用。
  - 速度快，以TCC開發的程式可執行於x86（16/32位元）與 x86-64（64位元）環境中，據開發者說，執行比[GCC](../Page/GCC.md "wikilink")較來得相當快速。\[2\]程式亦可以包含[組合語言](https://zh.wikipedia.org/wiki/組合語言 "wikilink")（[inline assembler](https://zh.wikipedia.org/wiki/內聯彙編 "wikilink")）於其中執行與編譯。
  - 無限制，其他C語言的動態Library祗要符合ISO C99規範，皆可以給予TCC來使用與編譯。
  - 安全性，TCC包含一個可選的memory（記憶體）和boundschecker（程式檢測器），經過檢測的程式碼可以隨意地混合於標準程式碼內。
  - 其他，TCC為命令列式的使用，目前並無[整合性開發環境](https://zh.wikipedia.org/wiki/整合性開發環境 "wikilink")，但可以配合其他的編輯軟體使用（如：[UltraEdit](../Page/UltraEdit.md "wikilink") ...等）。

## 新版本特色

  - 0.9.27版本取消了原有的”tiny_impdef.exe”(產生DLL檔案)與”tiny_libmaker.exe”。
  - 在64位元版本中提供可編譯32位元的編譯器i386-win32-tcc.exe，而在32位元版本中則提供64位元的編譯器x86_64-win32-tcc.exe，使用方式相同於tcc的指令。
  - 原編譯DLL功能，則以指令方式合併到tcc內，以tcc -impdef \*.dll方式來使用

## 用途

著名的 TCC 应用包括：

  - TCCBOOT\[3\]，一个可以在大约 10 秒内从源码启动 [Linux内核](../Page/Linux内核.md "wikilink")的[啟動程式](../Page/啟動程式.md "wikilink")。该啟動程式可以从硬盘中读取 Linux 源代码，将可执行指令写入内存并执行。
  - TCC 曾被用于演示对[軟體後門的防御](https://zh.wikipedia.org/wiki/軟體後門 "wikilink")。 \[4\]
  - TCC 曾被用于编译 [GCC](../Page/GCC.md "wikilink")，虽然需要不少补丁才能完成这个操作。
  - Cinpy\[5\]，一个允许在Python模块中添加C函数的库。这些 C 函数在运行时使用 TCC 编译，然后通过 ctypes 库在 Python 代码中调用。
  - 被安装在 JSLinux\[6\] ，一个能在浏览器中运行 Linux 和其它操作系统的虚拟机（也是由 Bellard 开发的）。
  - 被用于编译超微型国际象棋引擎。\[7\]
  - TCC 曾被內建於 [Google Android 系統](../Page/Android.md "wikilink")，於 Android 2.0 版本中。\<\!--

\--\>\[8\] \[9\]

## 開發歷史

TCC 项目起源于 OTCC （Obfuscated TCC，即代码混淆过的 TCC），这是 Bellard 为赢得 2001 年[国际C语言混乱代码大赛](../Page/国际C语言混乱代码大赛.md "wikilink")（IOCCC）编写的一个程序。其後，Bellard 反混淆并延伸發展了该程序，于是有了 TCC。\[10\]

在 2012 年 2 月 4 日之前的某个时间， Bellard 在 TCC 的官方网站上宣布他不再参与 TCC 的维护工作。\[11\]

自从 Bellard 离开 TCC 项目以来，已经有不少组织和个人分发补丁或创建维护分支，为 TCC 提供构建支持以及问题修复。

## 參考文献

### 引用

### 来源

  - [Tiny C Compiler Reference Documentation](http://bellard.org/tcc/tcc-doc.html) accessed on 2008-08-07
  - Glöckner, Daniel. [Re: Tinycc-devel (no subject)](http://lists.gnu.org/archive/html/tinycc-devel/2006-09/msg00028.html), September 8, 2006.
  - a b grischka, [GCC by TCC (some fixes)](http://lists.gnu.org/archive/html/tinycc-devel/2005-09/msg00054.html), 29 Sep 2005
  - Wheeler, David A. [Countering Trusting Trust through Diverse Double-Compiling. ACSAC](http://www.dwheeler.com/trusting-trust).
  - Bellard, Fabrice. [Obfuscated Tiny C Compiler](http://bellard.org/otcc/)
  - [Bellard Fabrice Project Homepage](http://bellard.org/)

## 外部連結

  - [Tiny C Compiler官方網站](http://bellard.org/tcc/)
  - [Tiny C Compiler develop archive](https://lists.gnu.org/archive/html/tinycc-devel/)
  - [Tiny C Compiler GIT](http://repo.or.cz/w/tinycc.git)

## 参见

  - [Portable C Compiler](https://zh.wikipedia.org/wiki/Portable_C_Compiler "wikilink")（PCC）

  -
  - [內聯彙編](https://zh.wikipedia.org/wiki/內聯彙編 "wikilink")（inline assembler）

{{-}}

[Category:C編譯器](https://zh.wikipedia.org/wiki/Category:C編譯器 "wikilink") [Category:組合語言軟體](https://zh.wikipedia.org/wiki/Category:組合語言軟體 "wikilink")

1.  [Tiny C Compiler Reference Documentation](http://bellard.org/tcc/tcc-doc.html#SEC6) accessed on 2008-08-07\]
2.  [Tiny C Compiler官方網站上关于编译速度的对比](https://bellard.org/tcc/#speed)
3.  [TCCBOOT](http://bellard.org/tcc/tccboot.html)
4.  Wheeler, David A. *[Countering Trusting Trust through Diverse Double-Compiling](http://www.dwheeler.com/trusting-trust)*. ACSAC.
5.  [Cinpy](http://www.cs.tut.fi/~ask/cinpy/)
6.  [JavaScript Linux](http://bellard.org/jslinux/)
7.  [Super Micro-Max Chess Engine](http://sourceforge.net/projects/smmax/)
8.  [libacc : Android 2.0內建的輕量級C Compiler](http://jserv.blogspot.com/2009/12/libacc-android-20-c-compiler.html)
9.  [透過libtcc來擴充C語言](http://blog.linux.org.tw/~jserv/archives/2010/06/_libtcc_c.html)
10. Bellard, Fabrice. [Obfuscated Tiny C Compiler](http://bellard.org/otcc/)
11. [archive.org 上最古老的 TCC 官方网站快照，宣布 Bellard 停止维护 TCC 项目。](https://web.archive.org/web/20120204081201/http://bellard.org/tcc/)