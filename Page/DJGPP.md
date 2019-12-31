> 本文内容由[DJGPP](https://zh.wikipedia.org/wiki/DJGPP)转换而来。


**DJ的GNU编程平台** （ **DJGPP** ） \[1\]是[Intel 80386级以上的软件开发套件](../Page/Intel_80386.md "wikilink")，支持[DOS](../Page/DOS.md "wikilink")操作系统的IBM [PC兼容机](../Page/IBM_PC兼容机.md "wikilink") 。 它由DJ Delorie指导，他于1989年开始这个项目。 它是[GNU编译器集合](../Page/GCC.md "wikilink") （GCC）的一个[端口](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink") ，主要是[GNU](../Page/GNU.md "wikilink")实用程序，如[Bash](../Page/Bash.md "wikilink") ， [find](https://zh.wikipedia.org/wiki/find "wikilink") ， [tar](https://zh.wikipedia.org/wiki/tar "wikilink") ， [ls](https://zh.wikipedia.org/wiki/ls "wikilink") ，G [AWK](../Page/AWK.md "wikilink") ， [sed和](https://zh.wikipedia.org/wiki/sed "wikilink")[ld到](../Page/链接器.md "wikilink")[DOS保护模式接口](https://zh.wikipedia.org/wiki/DOS保护模式接口 "wikilink") （DPMI）。 支持的语言包括[C](https://zh.wikipedia.org/wiki/C语言 "wikilink") ， [C ++](../Page/C++.md "wikilink") ， [Objective-C](../Page/Objective-C.md "wikilink") / C ++， [Ada](../Page/Ada.md "wikilink") ， [Fortran](../Page/Fortran.md "wikilink")和[Pascal](../Page/Pascal_\(程式語言\).md "wikilink") 。 DJGPP在2004年被描述为“老化”产品。 \[2\]

编译器生成32位代码，该代码在32位[保护模式下本机运行](../Page/保護模式.md "wikilink")，同时切换回16位DOS调用以获得基本操作系统支持。 但是，与Open [Watcom C / C ++编译器不同](https://zh.wikipedia.org/wiki/Watcom_C/C++编译器 "wikilink") ，它不是基于零的平面模型，因为它更喜欢使用NULL指针保护以获得更好的稳定性。 它目前基于[COFF格式的变体](https://zh.wikipedia.org/wiki/COFF "wikilink")。 当使用合适的DPMI主机（例如， [CWSDPMI](https://zh.wikipedia.org/wiki/CWSDPMI "wikilink") r7或HDPMI32）时，它可以在纯DOS中访问高达4 GB的RAM。

## 兼容性

DJGPP为程序员提供了一个与[ANSI C和C](../Page/ANSI_C.md "wikilink")99标准兼容的接口，DOS API以及类似[POSIX的旧环境](../Page/可移植操作系统接口.md "wikilink")。 编译的二进制文件是[长文件名](https://zh.wikipedia.org/wiki/长文件名 "wikilink") （LFN）识别的，默认情况下可以在大多数32位Windows下处理这些名称，但是它们不能使用Windows上的图形程序所需的[Win16或Win](../Page/Windows_API.md "wikilink")32 API。  终止和驻留 （TSR）程序来支持普通[DOS](../Page/DOS.md "wikilink")或[Windows NT 4下的LFN](../Page/Windows_NT_4.0.md "wikilink")。

虽然DJGPP在32位[保护模式下运行](../Page/保護模式.md "wikilink") ，但它的存根和库很大程度上依赖于许多16位DOS和BIOS调用。 因为[x86-64版本的](https://zh.wikipedia.org/wiki/x86-64 "wikilink")[Windows不支持](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")16位程序， \[3\] \[4\]没有[NTVDM](https://zh.wikipedia.org/wiki/NTVDM "wikilink") ，并且无法运行DJGPP应用程序。 在x86-64系统下，这些应用程序仅通过仿真运行（例如 [DOSBox](../Page/DOSBox.md "wikilink") ）， [x86虚拟化](https://zh.wikipedia.org/wiki/x86虚拟化 "wikilink") （例如 [VirtualBox](../Page/VirtualBox.md "wikilink") ）或类似的（例如 Linux的[DOSEMU](https://zh.wikipedia.org/wiki/DOSEMU "wikilink") ）。 出现此问题是因为在[长模式下，](https://zh.wikipedia.org/wiki/长模式 "wikilink") x86-64处理器不支持用于在IA-32处理器中运行16位代码的[虚拟8086模式](https://zh.wikipedia.org/wiki/虚拟8086模式 "wikilink") 。 带有[VT-x的较新的x](../Page/X86虚拟化.md "wikilink")86 CPU确实支持分页实模式和不受限制的访客模式执行。

## 也可以看看

  - [FreeDOS](../Page/FreeDOS.md "wikilink")的
  - [Cygwin](../Page/Cygwin.md "wikilink")的
  - EMX（编程环境）
  - 的GnuWin32
  - [MinGW](../Page/MinGW.md "wikilink")的
  - 打开[Watcom C / C ++编译器](https://zh.wikipedia.org/wiki/Watcom_C/C++编译器 "wikilink")
  - [快板](../Page/Allegro.md "wikilink")

## 参考

## 外部链接

  -
[Category:自由整合開發環境](https://zh.wikipedia.org/wiki/Category:自由整合開發環境 "wikilink") [Category:自由編譯器與直譯器](https://zh.wikipedia.org/wiki/Category:自由編譯器與直譯器 "wikilink") [Category:C編譯器](https://zh.wikipedia.org/wiki/Category:C編譯器 "wikilink") [Category:1989年软件](https://zh.wikipedia.org/wiki/Category:1989年软件 "wikilink")

1.
2.
3.
4.