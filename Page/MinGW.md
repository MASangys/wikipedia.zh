**MinGW**（**Min**imalist **G**NU for **W**indows），又称**mingw32**，是将[GCC](../Page/GCC.md "wikilink")编译器和[GNU Binutils移植到Win](../Page/GNU_Binutils.md "wikilink")32平台下的产物，包括一系列头文件（[Win32API](../Page/Windows_API.md "wikilink")）、[库和](https://zh.wikipedia.org/wiki/靜態連結函式庫 "wikilink")[可执行文件](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。

另有可用于产生32位及64位Windows可执行文件的**MinGW-w64**项目，是从原本MinGW产生的分支\[1\]。如今已经独立发展\[2\]。

## 历史

MinGW是从[Cygwin](../Page/Cygwin.md "wikilink")（1.3.3版）基础上发展而来。

## 编程语言支持

GCC支援的語言大多在MinGW也受支援，其中涵蓋[C](https://zh.wikipedia.org/wiki/C語言 "wikilink")、[C++](../Page/C++.md "wikilink")、[Objective-C](../Page/Objective-C.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink")及[Ada](../Page/Ada.md "wikilink")。

对于C语言之外的语言，MinGW使用标准的GNU[執行庫](../Page/运行时库.md "wikilink")，如C++使用GNU [libstdc++](https://zh.wikipedia.org/wiki/libstdc++ "wikilink")。

但是MinGW使用Windows中的C运行库。因此用MinGW开发的程序不需要额外的第三方[DLL支持就可以直接在Windows下运行](../Page/动态链接库.md "wikilink")，而且也不一定必须遵从[GPL许可证](https://zh.wikipedia.org/wiki/GPL "wikilink")。这同时造成了MinGW开发的程序只能使用Win32API和跨平台的第三方库，而缺少POSIX支持\[3\]，大多数GNU软件无法在不修改源代码的情况下用MinGW编译。

## 与Cygwin比较

Cygwin 與 MinGW 皆可用來移植 Unix 软件到 Windows，但它们采用截然不同的实作。Cygwin 旨在提供一个完整的 [POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink") 层，包括主流 Unix 的系統呼叫及函式庫實作；其重视兼容性优先于性能。相對的，MinGW 則着重简化与性能。因此，它並不提供某些難以用 Windows API 实现的 POSIX API，例如 fork()，mmap() 和 ioctl()。使用跨平台函式庫寫成的應用，若函式庫本身已移植到了 MinGW（例如 [SDL](https://zh.wikipedia.org/wiki/SDL "wikilink")、[wxWidgets](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")、[Qt](../Page/Qt.md "wikilink") 或 [GTK](../Page/GTK.md "wikilink")+），則那些應用通常也滿容易用 MinGW 編譯的。

用 Cygwin 寫成的 Windows 程序，因為是跑在[公共版權的兼容](../Page/Copyleft.md "wikilink") [DLL](../Page/动态链接库.md "wikilink") 上，所以 DLL 必須隨著程序源代碼一起發布。MinGW 則不需要[兼容层](../Page/兼容层.md "wikilink")，因為基於 MinGW 的程序是直接调用 Windows API 编译的。

MinGW 搭配 MSYS 可以產生一個小卻完整的執行環境，讓程式可以載入隨身裝置當中，卻不動到[註冊表或產生額外檔案](../Page/注册表.md "wikilink")。

在 POSIX 系統下，用 MinGW-GCC [交叉編譯](../Page/交叉編譯器.md "wikilink") Windows 應用也是可行的。這意味著開發者不需要安裝 Windows 與 MSYS 才能編譯 Windows 軟件，或 Windows+Cygwin 軟件。

## 异常机制

MinGW编译器在实现异常机制时，有三种可选方式：

  - SJLJ (setjmp/longjmp)：可用于32/64位，但不是零代价的：即使不抛出异常，仍会有一定的性能损失（在最差情形下\~15%）。
  - DWARF (DW2, dwarf-2)：只能用于32位，没有永久的运行时开销，需要调用栈是dwarf-enabled，这意味着异常对于Windows system DLLs或Visual Studio编译的DLLs的异常不能被抛出。
  - SEH：零花销。

## MinGW-w64

MinGW-w64是2005年由OneVision Software根据[洁净室设计原则而独立开发](https://zh.wikipedia.org/wiki/洁净室设计原则 "wikilink")，以解决当时的MinGW项目更新缓慢，缺少新的重要的API以及64位支持。2008年MinGW-w64项目开源，由Kai Tietz维护。

  - 提供由MinGW-Builds等项目组制作的预编译版。编译器分64位版和32位版、分别包含sjlj、drawf、seh异常处理机制、分别支持POSIX线程模式或Win32线程模式。用户可根据需要下载不同版本。例如，64位的seh、POSIX线程的最新稳定版本的gcc套件的下载目录为：Toolchains targetting Win64 --\> Personal Builds --\> mingw-builds--\>7.3.0--\>threads-posix--\>seh

## 非官方编译器集成安装包

很多非官方组织提供了包含一系列整合工具链的MinGW安装包。其中大部分基于MinGW-w64项目。

  - [TDM-MinGW GCC](http://tdragon.net/recentgcc/) MinGW编译器安装包，集成了32位、64位的GCC 5.1.0 c/c++/fortran编译器等。
  - [64位Win32线程模式](http://nuwen.net/mingw.html)。特色是包含很多第三方库，如boost、libpng、zlib、coreutils、grep、make、w32api、sed、git等等。
  - [MinGW package installer from Equation.com](http://www.equation.com/servlet/equation.cmd?fa=fortran) 该网站提供了32位和64位的GCC以及nightly snapshot版本的安装包，以及gdb的nightly snapshot安装包。
  - [MinGW-w64 - for 32 and 64 bit Windows](http://mingw-w64.org) 最新的nightly snapshot的编译后的软件。但似乎没有集成iconv?

## 参见

  - [Cygwin](../Page/Cygwin.md "wikilink")
  - [POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")

## 参考资料

<references/>

## 外部链接

### 官方链接

  - [MinGW 官方网站](http://www.mingw.org/)。
  - OSDN上的[MinGW官方的下载站点](https://zh.osdn.net/projects/mingw/)。

[Category:SourceForge专案](https://zh.wikipedia.org/wiki/Category:SourceForge专案 "wikilink") [Category:GNU](https://zh.wikipedia.org/wiki/Category:GNU "wikilink") [Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink") [Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink") [Category:C編譯器](https://zh.wikipedia.org/wiki/Category:C編譯器 "wikilink") [Category:公有领域软件](https://zh.wikipedia.org/wiki/Category:公有领域软件 "wikilink")

1.
2.
3.