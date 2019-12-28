**Cairo**是一個讓用於提供[向量圖形繪圖的自由函式庫](https://zh.wikipedia.org/wiki/向量圖形 "wikilink")，cairo提供在多個背景下做[2D的繪圖](../Page/二维空间.md "wikilink")，進階的更可以使用[硬體加速功能](https://zh.wikipedia.org/wiki/電腦硬件 "wikilink")\[1\]。

雖然cairo是使用[C語言撰寫的](https://zh.wikipedia.org/wiki/C語言 "wikilink")，但是當使用cairo時，可以用許多其他種語言來使用，包括有[C++](../Page/C++.md "wikilink")、[C\#](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")、[Java](../Page/Java.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Scheme](../Page/Scheme.md "wikilink")、[Smalltalk](../Page/Smalltalk.md "wikilink")以及許多種語言\[2\]，cairo在[GNU較寬鬆公共許可證與](https://zh.wikipedia.org/wiki/GNU較寬鬆公共許可證 "wikilink")[Mozilla公共许可证](../Page/Mozilla公共许可证.md "wikilink")兩種授權條款下發行。

## 後端

Cairo支持很多不同後端的输出，在实现中被称作“surface”。支持的后端包括[X Window系统](https://zh.wikipedia.org/wiki/X_Window "wikilink")、[Win32 GDI](https://zh.wikipedia.org/wiki/GDI "wikilink")、[Quartz Compositor](../Page/Quartz_Compositor.md "wikilink")、[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")，[OpenGL](../Page/OpenGL.md "wikilink")环境（直接或间接地通过[glitz](https://zh.wikipedia.org/wiki/glitz "wikilink")）、内存缓冲区、[PNG](../Page/PNG.md "wikilink")、[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")、[PostScript](../Page/PostScript.md "wikilink")、[DirectFB](../Page/DirectFB.md "wikilink")和[SVG文件](https://zh.wikipedia.org/wiki/SVG "wikilink")。

还有一些开发中的后端如：[OpenVG](../Page/OpenVG.md "wikilink")，[Qt](../Page/Qt.md "wikilink")，[Skia和Windows](../Page/Skia_Graphics_Library.md "wikilink") [Direct2D](../Page/Direct2D.md "wikilink")。\[3\]

## 知名應用

因为能够提供高级的跨平台2D绘图的支持，cairo在开源社区十分流行。

  - [GTK+从](https://zh.wikipedia.org/wiki/GTK+ "wikilink")2005年的2.8版开始，使用cairo去渲染它的大多数控件，从GTK+ 3开始，所有的渲染任务由cairo完成。
  - [Mono](../Page/Mono.md "wikilink")项目，包括Moonlight，在很早便设想用cairo作为后端驱动[GDI+](../Page/GDI+.md "wikilink")（libgdiplus）和 System.Drawing命名空间。
  - [Mozilla](../Page/Mozilla.md "wikilink")项目在最近版本的[Gecko](../Page/Gecko.md "wikilink")排版引擎中使用cairo，用来渲染生成的图形输出。
      - Gecko 1.8，Firefox 2.0和[SeaMonkey](../Page/SeaMonkey.md "wikilink") 1.0的排版引擎，使用cairo渲染SVG和
        <canvas>
        内容。
      - Gecko 1.9，作为[Firefox 3底层使用cairo对网页内容和用户界面进行渲染](https://zh.wikipedia.org/wiki/Firefox_3 "wikilink")。
  - [Poppler](../Page/Poppler.md "wikilink")库使用cairo渲染PDF文档. cairo使得对反锯齿矢量图形和透明物件的绘制成为可能。
  - 矢量绘图应用程序[Inkscape](../Page/Inkscape.md "wikilink")使用cairo图形库显示其概要模式，以及自从0.46正式版使用它输出PDF和PostScript文档。
  - [FontForge](../Page/FontForge.md "wikilink")在2008年10月中旬启用cairo为默其认渲染图形库。
  - [R语言](../Page/R语言.md "wikilink")经cairo用PDF，PostScript和SVG格式输出图像。
  - [Gnuplot](../Page/Gnuplot.md "wikilink") 4.4现在使用cairo来渲染PDF和PNG输出。

## 历史

Keith Packard和Carl Worth为在[X Window系統使用创立了cairo项目](https://zh.wikipedia.org/wiki/X_Window "wikilink")\[4\]。它原本（直到2003年）被称做Xr或Xr/Xc。为了加强跨平台而非被局限在X Window平台绘图的印象，项目更换了名称。Xr经被解释为希腊字母[chi和](https://zh.wikipedia.org/wiki/chi "wikilink")[rho派生出新名称cairo](https://zh.wikipedia.org/wiki/rho "wikilink")。

## 相似的技術

Cairo大抵相似於[微軟的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[WPF和](../Page/Windows_Presentation_Foundation.md "wikilink")[GDI+](https://zh.wikipedia.org/wiki/圖形設備接口 "wikilink")、[蘋果公司的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Quartz 2D](../Page/Quartz_2D.md "wikilink")、[Anti-Grain Geometry](https://zh.wikipedia.org/wiki/Anti-Grain_Geometry "wikilink")（AGG）。

## 相關條目

  - [Display PostScript](https://zh.wikipedia.org/wiki/Display_PostScript "wikilink")
  - [Skia Graphics Library](../Page/Skia_Graphics_Library.md "wikilink")
  - [WebGL](../Page/WebGL.md "wikilink")

## 參考資料

## 外部連結

  -
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:GTK](https://zh.wikipedia.org/wiki/Category:GTK "wikilink") [Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink") [Category:Cairo](https://zh.wikipedia.org/wiki/Category:Cairo "wikilink") [Category:Freedesktop.org](https://zh.wikipedia.org/wiki/Category:Freedesktop.org "wikilink") [Category:GNOME](https://zh.wikipedia.org/wiki/Category:GNOME "wikilink")

1.
2.
3.
4.