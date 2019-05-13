**Allegro**是一个特别针对于电子游戏的开发的[自由软件](../Page/自由软件.md "wikilink")[程式库](../Page/程式库.md "wikilink")。
\[1\]\[2\]\[3\]

该库提供基本二维图形、图像操作、音效输出、MIDI音乐、输入、计时器，以及额外的寻路[矩阵计算](../Page/矩阵计算.md "wikilink")、UNICODE、文件系统管理、有限而建基於軟件的三维图形。

其版本4.0可以运行在[DOS](../Page/DOS.md "wikilink")、[Microsoft
Windows](../Page/Microsoft_Windows.md "wikilink")、[BeOS](../Page/BeOS.md "wikilink")、[Mac
OS
X](../Page/Mac_OS_X.md "wikilink")、多种[类Unix](../Page/类Unix.md "wikilink")，程序只需要嵌入其[API即可使用](../Page/API.md "wikilink")。该库还有独立的[AmigaOS
4移植版](../Page/AmigaOS_4.md "wikilink")。

该库使用[C语言编写](../Page/C语言编写.md "wikilink")，适用于C或[C++](../Page/C++.md "wikilink")，其附带很多文档和实例。

## 附件

Allegro社区用户贡献了多种扩展，包括轴卷图块形式的地图、输入输出各种格式（有[PNG](../Page/Portable_Network_Graphics.md "wikilink")、[GIF](../Page/GIF.md "wikilink")、[JPEG](../Page/JPEG.md "wikilink")、[MPEG](../Page/MPEG.md "wikilink")、[Ogg](../Page/Ogg.md "wikilink")、[MP3](../Page/MP3.md "wikilink")、[IT](../Page/Impulse_Tracker.md "wikilink")、[S3M](../Page/S3M_\(文件格式\).md "wikilink")、[XM](../Page/XM.md "wikilink")、[TTF](../Page/TrueType.md "wikilink")）。其还有多个语言绑定，比如
[Python](../Page/Python.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[Scheme](../Page/Scheme.md "wikilink")、[C\#](../Page/C_Sharp.md "wikilink")、[D语言等](../Page/D语言.md "wikilink")。

## 历史

Allegro原本的含义是"**A**tari **L**ow-**Le**vel **G**ame **Ro**utines"\[4\]
。20世纪90年代初由[Shawn
Hargreaves为](../Page/Shawn_Hargreaves.md "wikilink")[Atari
ST创造](../Page/Atari_ST.md "wikilink")，1995年Shawn因为Atari即将消失而抛弃了对其支持又引入了[Borland](../Page/Borland.md "wikilink")
C++ 和[DJGPP编译器](../Page/DJGPP.md "wikilink")。Borland C++
在2.0版本被抛弃，DJGPP是唯一被支持的编译器——Allegro因此只能用于DOS。1998年前后，
Allegro发展出了很多版本，对应[Microsoft
Windows的WinAllegro](../Page/Microsoft_Windows.md "wikilink")、对应[类Unix的XwinAllegro](../Page/类Unix.md "wikilink")，这些融入了Allegro
3.9 WIP版本，这样Allegro 4.0成为首个多平台稳定版本，当前支持Unix
([Linux](../Page/Linux.md "wikilink"),
[FreeBSD](../Page/FreeBSD.md "wikilink"),
[Irix](../Page/Irix.md "wikilink"),
[Solaris](../Page/Solaris.md "wikilink"),
[Darwin](../Page/Darwin.md "wikilink")), Windows
([MSVC](../Page/MSVC.md "wikilink"),
[MinGW](../Page/MinGW.md "wikilink"),
[Cygwin](../Page/Cygwin.md "wikilink"), [Borland
C++](../Page/Borland_C++.md "wikilink")),
[BeOS](../Page/BeOS.md "wikilink"), [QNX](../Page/QNX.md "wikilink"),
[Mac OS X](../Page/Mac_OS_X.md "wikilink"), DOS
([DJGPP](../Page/DJGPP.md "wikilink"),
[Watcom](../Page/Watcom.md "wikilink"))。

当前稳定版本为4.2.2；计划中的新版本5.0来源于4.9.x，当前为Allegro 4.9.13。

硬件加速3D/2D应用于Linux、Mac OS
X、DOS采用多种方式，包括AllegroGL和OpenLayer。它们是两个附件add-on库，通过[OpenGL实现](../Page/OpenGL.md "wikilink")。结合[Glide和](../Page/Glide_API.md "wikilink")[MesaFX](../Page/Mesa_3D.md "wikilink")
([3dfx](../Page/3dfx.md "wikilink"))，AllegroGL是少数对应DOS的开源3D硬件加速方案。\[5\]

## 功能

  - 向量绘制:
      - 像素、线、矩形、圆柱、贝塞尔曲线等几何图形、
      - 有图案（Pattern）或者没有图案的形状填充（Shape Fill）
      - 各种多边形（Polygons）：单调（Flat）、内插均匀（Gouraud）、三维纹理（3D Textured）和半透明（
        Translucent）
  - 图块：
      - 掩码（Masked）、压缩（Compressed）和编译（Compiled）三种精灵（Sprites）
      - 位块传输（Blitting）、旋转（Rotation）、拉伸（Stretching）、挤压（Reduction）、α通道混色（Alpha
        Blending）、内插均匀着色（Gouraud Shading）
      - 内建BMP、LBM、PCX、TGA文件格式支持，其他的可通过扩展库支持
  - 各种调色板（Color Palettes）：
      - 调色板的操纵（读、写、转换）
      - RGB和HSV两种色彩格式（Color Formats）之间的转换
  - 文字:
      - 支持多种编码之间的转换，默认UTF-8
      - 点阵字体：掩码（Masking）、彩色（Colouring）、对齐（Alignment）
  - 其他：
      - 直接在屏幕或任意大小的内存位图（Memory Bitmaps）中进行绘制
      - 硬件轴卷（Hardware Scrolling）和三缓存（Triple
        Buffering）（前提是该处可用）、X模式（mode-X）的分屏（Split
        Screen）
      - 用于FLI/FLC格式的动画函数\[6\]

## Allegro 5

目前的开发着手在Allegro 5这条分支，4.9.14是其不稳定的版本。Allegro
5对库的API及其大量的内部操作进行了完全重新的设计，致力于使API能更稳定地适用于多核间的协同工作。其默认使用OpenGL或DirectX硬件加速渲染后端，当前的大多数插件都需要重写接口。

## 其他

  - [SDL (Simple DirectMedia
    Layer)](../Page/Simple_DirectMedia_Layer.md "wikilink")

  - [DirectX](../Page/DirectX.md "wikilink")

  - [OpenGL](../Page/OpenGL.md "wikilink")

  - [ClanLib](../Page/ClanLib.md "wikilink")

  - [开放多媒体程序库](../Page/开放多媒体程序库.md "wikilink")（OpenML）

  - [PLIB](../Page/PLIB.md "wikilink")

  - [XNA](../Page/Microsoft_XNA.md "wikilink")

  -
## 参考资料

## 外部链接

  - [Allegro](http://www.liballeg.org/)
  - Allegro 5
    Documentation（[加拿大服务器](http://docs.liballeg.org/)、[美国服务器](https://web.archive.org/web/20100125134626/http://alleg.sourceforge.net/a5docs/refman/index.html)）
  - [Allegro Wiki](http://wiki.allegro.cc/)
  - [Allegro 5](http://www.allegro5.org/)
  - [Allegro 5 Tutorials](http://software.skoobalon.com/a5.php)
  - [allegro.cc](http://www.allegro.cc/)
  - [Shawn Hargreaves's Homepage](http://www.talula.demon.co.uk/)
  - [Games Using Allegro](http://www.allegro.cc/depot/action/)

[Category:C程式库](https://zh.wikipedia.org/wiki/Category:C程式库 "wikilink")
[Category:游戏引擎](https://zh.wikipedia.org/wiki/Category:游戏引擎 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:电子游戏开发](https://zh.wikipedia.org/wiki/Category:电子游戏开发 "wikilink")
[Category:跨平台软件](https://zh.wikipedia.org/wiki/Category:跨平台软件 "wikilink")

1.
2.
3.
4.  [Forum posting by Shawn
    Hargreaves](http://www.allegro.cc/forums/thread/573313/574083#target)
5.
6.