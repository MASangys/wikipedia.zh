**DirectWrite**是[微软的一个文本布局和字形渲染](../Page/微软.md "wikilink")[API](../Page/应用程序接口.md "wikilink")。它的设计是为取代[GDI](../Page/GDI+.md "wikilink")/GDI+和面向屏幕渲染的[Uniscribe](../Page/Uniscribe.md "wikilink")，并已随[Windows
7和](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Windows Server
2008 R2发售提供](../Page/Windows_Server_2008_R2.md "wikilink")，[Windows
Vista和](../Page/Windows_Vista.md "wikilink")[Windows Server
2008亦可获取](../Page/Windows_Server_2008.md "wikilink")（只需安装[平台更新](../Page/Windows_Vista.md "wikilink")）。\[1\]DirectWrite在[Direct2D上以](../Page/Direct2D.md "wikilink")[硬件加速](../Page/硬件加速.md "wikilink")（使用[GPU](../Page/圖形處理器.md "wikilink")）形式运行，但也可以在CPU上渲染任何目标，包括[GDI位图](../Page/GDI+.md "wikilink")。\[2\]\[3\]

## 特性

  - 全面支持[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，超过20个脚本提供Windows支持的每种语言的布局和渲染。DirectWrite支持多格式文本的测量、渲染和。支持Unicode特性，包括[BIDI](../Page/雙向文稿.md "wikilink")、line
    breaking, surrogates, UVS, language-guided script itemization,
    number substitution, and glyph shaping.
  - 有双向[反鋸齒的子像素](../Page/反鋸齒.md "wikilink")[ClearType文本渲染可以与GDI](../Page/ClearType.md "wikilink")/GDI+、[Direct2D](../Page/Direct2D.md "wikilink")/[Direct3D和任何应用程序的特定技术互操作](../Page/Direct3D.md "wikilink")。在使用Direct2D时，文字渲染可以硬件加速，或者可以在硬件加速不可用时使用.
  - 支持[OpenType支持高级印刷特性](../Page/OpenType.md "wikilink")，例如文体交替和，这从未在GDI和[WinForms中支持](../Page/Windows_Forms.md "wikilink")。这些功能在2008年[专业开发者大会的DirectWrite推出时使用](../Page/专业开发者大会.md "wikilink")演示，本身也引入了Windows
    7。\[4\]
  - 为采用专有文字布局和Unicode到字形处理的案例提供底层字形渲染API。

在[Windows
8.1中](../Page/Windows_8.1.md "wikilink")，DirectWrite开始支持[彩色字体](../Page/OpenType.md "wikilink")。\[5\]\[6\]

## 使用

Windows
7中的[XPS查看器使用DirectWrite](../Page/XML纸张规范.md "wikilink")，不过它在一个GDI+表面上渲染输出。\[7\]

[Internet Explorer
9及之后版本使用Direct](../Page/Internet_Explorer_9.md "wikilink")2D上的DirectWrite层改进视觉质量和性能。\[8\]\[9\]\[10\]Firefox
4也添加了DirectWrite支持，但由于用户对渲染质量的投诉，Firefox
7中对某些字体不会默认采用DirectWrite风格的渲染。\[11\]

[Microsoft Office
2013支持Direct](https://zh.wikipedia.org/wiki/Microsoft_Office_2013 "wikilink")2D/DirectWrite或GDI/Uniscribe用于显示渲染和文字排版。\[12\]

[Google
ChromeWindows版自](../Page/Google_Chrome.md "wikilink")37版开始支持DirectWrite\[13\]

## 参见

  - [Pango](../Page/Pango.md "wikilink")：一个高质量呈现文本的跨平台库，尤为支持多语言文本。
  - [Cairo](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink")：一个基于矢量的跨平台图形库，可以渲染文本。

## 参考资料

[Category:计算机程序库](https://zh.wikipedia.org/wiki/Category:计算机程序库 "wikilink")
[Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")
[Category:文本](https://zh.wikipedia.org/wiki/Category:文本 "wikilink")
[Category:字体排印软件](https://zh.wikipedia.org/wiki/Category:字体排印软件 "wikilink")

1.
2.
3.  [Windows 7: Introducing Direct2D and
    DirectWrite](http://channel9.msdn.com/pdc2008/PC18/) – PDC 2008
    video 15:00-16:00 and 27:00-28:00
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.