{{ infobox software | name = uClibc | title = uClibc | developer = Erik
Andersen | released =  | latest release version = 0.9.33.2 | latest
release date =  | programming language = [C](../Page/C语言.md "wikilink")
| operating system = [嵌入式Linux](../Page/嵌入式Linux.md "wikilink") |
platform = [嵌入式Linux](../Page/嵌入式Linux.md "wikilink") | genre =  |
license = [GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")\[1\] |
website = <http://www.uclibc.org/> }}
[Linux_kernel_System_Call_Interface_and_uClibc.svg](https://zh.wikipedia.org/wiki/File:Linux_kernel_System_Call_Interface_and_uClibc.svg "fig:Linux_kernel_System_Call_Interface_and_uClibc.svg")
(system calls), [Linux内核](../Page/Linux内核.md "wikilink") /
[µClinux](../Page/µClinux.md "wikilink").\]\]

在[计算术语中](../Page/计算.md "wikilink")，**uClibc**
是一个面向[嵌入式](../Page/嵌入式.md "wikilink")[Linux系统的小型的](../Page/Linux.md "wikilink")[C标准库](../Page/C标准库.md "wikilink")。最初uClibc是为了支持[uClinux而开发](../Page/uClinux.md "wikilink")，这是一个不需要[内存管理单元的Linux版本](../Page/内存管理单元.md "wikilink")，因此适合于[微控制器系统](../Page/微控制器.md "wikilink")（uCs；此处"u"是代表"micro"的[μ的](../Page/μ.md "wikilink")[罗马化](../Page/罗马化.md "wikilink")）.\[2\]

项目领导人是Erik Andersen.其他主要贡献者是Manuel Novoa
III.许可证遵从[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")。uClibc是[自由软件](../Page/自由软件.md "wikilink")。

## 特点

uClibc比一般用于Linux发行版的C库[GNU C 函式庫](../Page/GNU_C_函式庫.md "wikilink")
(glibc)要小得多，glibc目标是要支持最大范围的硬件和内核平台的所有C标准，而uClibc專注于嵌入式Linux。很多功能可以根据空间需求进行取舍。

uClibc运行于标准的以及无[MMU的Linux系统上](../Page/memory_management_unit.md "wikilink")，支持[i386](../Page/Intel_386.md "wikilink")，[x86
64](../Page/x86_64.md "wikilink")，[ARM](../Page/ARM_architecture.md "wikilink")
(big/little endian),
[AVR32](../Page/AVR32.md "wikilink")，[Blackfin](../Page/Blackfin.md "wikilink")，[h8300](../Page/H8_Family.md "wikilink")，[m68k](../Page/m68k.md "wikilink")，[MIPS](../Page/MIPS_architecture.md "wikilink")
(big/little
endian)，[PowerPC](../Page/PowerPC.md "wikilink")，[SuperH](../Page/SuperH.md "wikilink")
(big/little
endian)，[SPARC](../Page/SPARC.md "wikilink")，和[v850等处理器](../Page/v850.md "wikilink")。

## 发展历史

uClibc的开发始于1999前后。\[3\] uClibc基本是从零开始开发的，\[4\]但是集成了glibc和其他项目的代码。\[5\]

## 参见

  - [Contiki](../Page/Contiki.md "wikilink")
  - [newlib](../Page/newlib.md "wikilink")
  - [dietlibc](../Page/dietlibc.md "wikilink")

## 参考

## 外部链接

  - [项目主页](http://www.uclibc.org/)
  - [在Freshmeat的项目主页](http://freshmeat.net/projects/uclibc/)

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")
[Category:嵌入式Linux](https://zh.wikipedia.org/wiki/Category:嵌入式Linux "wikilink")

1.  [uClibc FAQ: Licensing](http://www.uclibc.org/FAQ.html#licensing)
2.  [uClibc naming](http://www.uclibc.org/FAQ.html#naming) Accessed on
    [February 10](../Page/February_10.md "wikilink"), 2008.
3.  <http://www.uclibc.org/copyright.txt>
4.  {{ cite web | url = <http://www.uclibc.org/FAQ.html#history> | title
    = History | work = uClibc FAQ | accessdate = 2007-06-19 }}
5.  {{ cite web | url = <http://www.uclibc.org/downloads/Changelog> |
    title = uClibc Changelog | accessdate = 2007-06-19 | quote =
    pthreads支持 (由glibc 2.1.3的linuxthreads library派生)
    \[...\]并入了glibc中的随机数 (rand, srand, etc)支持. | deadurl
    = yes | archiveurl =
    <https://web.archive.org/web/20070609171609/http://www.uclibc.org/downloads/Changelog>
    | archivedate = 2007-06-09 }}