> 本文内容由[MediaLib](https://zh.wikipedia.org/wiki/MediaLib)转换而来。


**mediaLib**（指 "多媒体函数库"）是一个用于加速[多媒体](../Page/多媒体.md "wikilink")应用程序的[可移植的底层函数库](https://zh.wikipedia.org/wiki/可移植 "wikilink")。它具备[C语言接口](https://zh.wikipedia.org/wiki/C语言 "wikilink")，其最新版本为2.5。 它最初由[Sun开发](https://zh.wikipedia.org/wiki/升阳 "wikilink")，之后作为[OpenSolaris](../Page/OpenSolaris.md "wikilink")项目的一部分在[CDDL许可证下开源](https://zh.wikipedia.org/wiki/CDDL "wikilink")。

mediaLib 用C及[编译器原语写成](https://zh.wikipedia.org/wiki/编译器原语 "wikilink")，可以利用多种处理器上带有的[SIMD多媒体指令集来获得显著的性能提升](https://zh.wikipedia.org/wiki/SIMD "wikilink")。虽然最初它只能利用[SPARC](../Page/SPARC.md "wikilink")处理器上的[VIS指令集](https://zh.wikipedia.org/wiki/VIS "wikilink")，但是后来又加入了对[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")／[AMD处理器上的](https://zh.wikipedia.org/wiki/AMD "wikilink")[MMX](../Page/MMX.md "wikilink")／[SSE](../Page/SSE.md "wikilink")／[SSE2](../Page/SSE2.md "wikilink")等指令集的支持。

mediaLib 用C及编译器原语写就，理论上一个系统只要有支持C和编译器原语的编译器，就可以编译并且使用它。如果缺乏编译器原语的支持，也可以编译使用mediaLib的纯C语言版本，但是这样的话将无法获得SIMD多媒体指令集所能带来的性能提升。

mediaLib目前包含在[Solaris](../Page/Solaris.md "wikilink")操作系统中。

mediaLib 2.5 包含近4000个文件和240万行C源代码，有针对不同领域应用的函数3000余个：

  - [线性代数](../Page/线性代数.md "wikilink")
  - [矩阵运算](https://zh.wikipedia.org/wiki/矩阵运算 "wikilink")
  - [图像处理](../Page/图像处理.md "wikilink")
  - [图形处理](https://zh.wikipedia.org/wiki/图形处理 "wikilink")
  - [信号处理](https://zh.wikipedia.org/wiki/信号处理 "wikilink")
  - [视频](../Page/视频.md "wikilink")
  - [音频](https://zh.wikipedia.org/wiki/音频 "wikilink")
  - [语音](https://zh.wikipedia.org/wiki/语音 "wikilink")
  - [三维渲染](https://zh.wikipedia.org/wiki/三维渲染 "wikilink")

调用了mediaLib的[开放源代码](../Page/开放源代码.md "wikilink")应用程序有[Java](../Page/Java.md "wikilink")，[JDS](../Page/Java_Desktop_System.md "wikilink") for Solaris, [mplayer](https://zh.wikipedia.org/wiki/mplayer "wikilink")，[ffmpeg](https://zh.wikipedia.org/wiki/ffmpeg "wikilink")，and [ogle](https://zh.wikipedia.org/wiki/Ogle_DVD_Player "wikilink")。

mediaLib 有针对多个平台的不同版本，但是这些版本都共享同一套API，所以使用者可在多个平台间自由迁移，而无需修改源代码中对mediaLib的调用：

  - C语言版本：以纯粹的ANSI C写就，并带有常见代码优化
  - VIS/VIS2/VIS3版本：以SPARC芯片的VIS/VIS2/VIS3多媒体扩展指令集进行优化
  - MMX/SSE/SSE2版本：以Intel/AMD芯片的MMX/SSE/SSE2多媒体扩展指令集进行优化
  - 整数版本：针对无浮点运算能力或浮点性能较弱的芯片进行优化，这样的芯片如[UltraSPARC T1和一些定点](../Page/UltraSPARC_T1.md "wikilink")[嵌入式处理器](https://zh.wikipedia.org/wiki/嵌入式处理器 "wikilink")
  - 多线程版本：是在mediaLib之上以[OpenMP](../Page/OpenMP.md "wikilink")对mediaLib函数进行的一个包装，旨在为多媒体应用程序提供灵活的[多线程](../Page/多线程.md "wikilink")扩展能力

## 外部链接

  - [Sun网站上的mediaLib](http://sosc-dr.sun.com/processors/vis/mlib.html)
  - [mediaLib用户手册](http://sosc-dr.sun.com/processors/vis/download/mlib/mlib_guide.pdf)
  - [mediaLib源代码](https://web.archive.org/web/20120818022722/http://dlc.sun.com/osol/devpro/downloads/current/)

[Category:昇陽電腦軟體](https://zh.wikipedia.org/wiki/Category:昇陽電腦軟體 "wikilink") [Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink") [Category:多媒体框架](https://zh.wikipedia.org/wiki/Category:多媒体框架 "wikilink") [Category:多媒體軟體](https://zh.wikipedia.org/wiki/Category:多媒體軟體 "wikilink")