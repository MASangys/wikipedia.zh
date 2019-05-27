**Cygwin**是许多[自由软件的集合](../Page/自由软件.md "wikilink")，最初由[Cygnus
Solutions开发](https://zh.wikipedia.org/wiki/Cygnus_Solutions "wikilink")，用于各种版本的[Microsoft
Windows上](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，运行[类UNIX系统](https://zh.wikipedia.org/wiki/Unix-like "wikilink")。Cygwin的主要目的是通过重新编译，将[POSIX系统](https://zh.wikipedia.org/wiki/POSIX "wikilink")（例如[Linux](../Page/Linux.md "wikilink")、[BSD](../Page/BSD.md "wikilink")，以及其他[Unix系统](https://zh.wikipedia.org/wiki/Unix "wikilink")）上的软件移植到Windows上。Cygwin移植工作在[Windows
NT上比较好](../Page/Windows_NT.md "wikilink")，在[Windows
95和](../Page/Windows_95.md "wikilink")[Windows
98上](../Page/Windows_98.md "wikilink")，相对差劲一些。目前Cygwin由[Red
Hat等负责维护](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")。

## 简介

Cygwin包括了一套库，该库在[Win32系统下实现了POSIX系统调用的](https://zh.wikipedia.org/wiki/Win32 "wikilink")[API](https://zh.wikipedia.org/wiki/API "wikilink")；还有一套[GNU开发工具集](../Page/GNU.md "wikilink")（比如[GCC](../Page/GCC.md "wikilink")、[GDB](https://zh.wikipedia.org/wiki/GNU_除錯器 "wikilink")），这样可以进行简单的软件开发；还有一些UNIX系统下的常见程序。2001年，新增了[X
Window
System](https://zh.wikipedia.org/wiki/X_Window_System "wikilink")。

另外还有一个名为[MinGW的库](../Page/MinGW.md "wikilink")，可以跟Windows本地的MSVCRT库（[Windows
API](../Page/Windows_API.md "wikilink")）一起工作。MinGW占用内存、硬盘空间都比较少，能够链接到任意软件，但它对POSIX规范的实现没有Cygwin库完备。

Red
Hat规定，Cygwin库遵守[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")，但也可以跟符合[开源定义的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[自由软件链接](../Page/自由软件.md "wikilink")。Red
Hat另有价格不菲的许可协议，这样使用Cygwin库的[专属软件](https://zh.wikipedia.org/wiki/专属软件 "wikilink")，就可以进行再发布。

用户可以通过[Cygwin Mailing
Lists](http://cygwin.com/lists.html)，订阅若干个Cygwin相关的邮件列表。

## 历史

Cygwin始于1995年，最初作为Cygnus工程师[Steve
Chamberlain的一个项目](https://zh.wikipedia.org/wiki/Steve_Chamberlain "wikilink")。当时Windows
NT和Windows
95将[COFF作为](https://zh.wikipedia.org/wiki/COFF "wikilink")[目标代码](../Page/目标代码.md "wikilink")，而GNU已经支持[x86和COFF](https://zh.wikipedia.org/wiki/x86 "wikilink")，以及C语言库[newlib](https://zh.wikipedia.org/wiki/newlib "wikilink")。这样至少在理论上，可以将GCC重定向，作为[交叉編譯器](../Page/交叉編譯器.md "wikilink")，从而产生能在Windows上运行的可执行程序。在后来的实践中，这很快实现了。

接下来的问题是如何在Windows系统中引导编译器，这需要对Unix的足够模拟，以使[Autoconf的](../Page/Autoconf.md "wikilink")[shell
script可以运行](https://zh.wikipedia.org/wiki/shell_script "wikilink")，这样就用到像[bash这样的shell](https://zh.wikipedia.org/wiki/bash "wikilink")，进而需要[Fork和](../Page/Fork_\(系统调用\).md "wikilink")[standard
I/O](https://zh.wikipedia.org/wiki/Standard_streams "wikilink")。Windows含有类似的功能，所以Cygwin库只需要进行翻译调用、管理私有数据，比如[文件描述符](../Page/文件描述符.md "wikilink")。

1996年后，由于看到cygwin可以提供Windows系统上的Cygnus嵌入式工具（以往的方案是使用[DJGPP](https://zh.wikipedia.org/wiki/DJGPP "wikilink")），其他工程师也加入了进来。特别吸引人的是，Cygwin可以实现三路[交叉编译](https://zh.wikipedia.org/wiki/交叉编译 "wikilink")（three-way
cross-compile），例如可以在[Sun工作站上构建](https://zh.wikipedia.org/wiki/Sun "wikilink")，如此就形成Windows-x-[MIPS](https://zh.wikipedia.org/wiki/MIPS "wikilink")
交叉编译器，这样比单纯在PC上编译要快不少。1998年起，Cygnus开始将Cygwin包作为产品来提供。

## 参见

  - [Cygwin/X是运行在Cygwin上](https://zh.wikipedia.org/wiki/Cygwin/X "wikilink")，实现[X11的](https://zh.wikipedia.org/wiki/X11 "wikilink")[自由软件](../Page/自由软件.md "wikilink")。
  - [MinGW](../Page/MinGW.md "wikilink")，将GNU的开发工具，移植到Windows。
  - [Services for
    UNIX](https://zh.wikipedia.org/wiki/Services_for_UNIX "wikilink")，[微软出的产品](../Page/微软.md "wikilink")，类似于Cygwin，运行速度比较好，但未来版本不会应用在桌面系统中。
  - [CoLinux](https://zh.wikipedia.org/wiki/CoLinux "wikilink")，运行Linux程序的另一方案，在Windows上运行自身的Linux。

## 外部链接

  - [Cygwin主页](http://www.cygwin.com)
  - [Cygwin FAQ](http://www.cygwin.com/faq/)
  - [Cygwin程序列表](http://www.cygwin.com/packages/)
  - [Cygwin
    page](http://freshmeat.net/projects/cygwin/?topic_id=45%2C74) on
    [Freshmeat.net](https://zh.wikipedia.org/wiki/Freshmeat.net "wikilink")
  - [CYGNOME](http://cygnome.sourceforge.net/) = cygwin +
    [GNOME](../Page/GNOME.md "wikilink")
  - [KDE-cygwin](http://kde-cygwin.sourceforge.net/) cygwin +
    [KDE](../Page/KDE.md "wikilink")
  - [unxutils](http://unxutils.sourceforge.net/)、
    [GnuWin32](http://gnuwin32.sourceforge.net/)：两个类似的项目，将UNIX工具移植到Windows，但不使用模拟层。

[Category:兼容层](https://zh.wikipedia.org/wiki/Category:兼容层 "wikilink")
[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink")
[Category:自由編譯器與直譯器](https://zh.wikipedia.org/wiki/Category:自由編譯器與直譯器 "wikilink")
[Category:自由仿真软件](https://zh.wikipedia.org/wiki/Category:自由仿真软件 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:Red_Hat](https://zh.wikipedia.org/wiki/Category:Red_Hat "wikilink")
[Category:系統管理](https://zh.wikipedia.org/wiki/Category:系統管理 "wikilink")
[Category:Windows独占自由软件](https://zh.wikipedia.org/wiki/Category:Windows独占自由软件 "wikilink")