（2004年3月前称为）\[1\]\[2\]是一款全功能的支持所有通用字体格式的[字体编辑器](https://zh.wikipedia.org/wiki/字体编辑器 "wikilink")，主要由George Williams开发，FontForge是[自由软件](../Page/自由软件.md "wikilink")，并以[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")第3版及三句式[BSD许可证](../Page/BSD许可证.md "wikilink")授权。\[3\]该软件用于多个[操作系统](../Page/操作系统.md "wikilink")（包括[Linux](../Page/Linux.md "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")\[4\]和[OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")\[5\]）并翻译成12种语言。

## 特性

FontForge是“非常强大的提供实际地所有[FontLab特性的软件系统](https://zh.wikipedia.org/wiki/FontLab "wikilink")，还具有一些独特的甚至革命性的特性。”\[6\]

为实现自动的格式转换和其他重复的任务，Fontforge执行两种[脚本语言](../Page/脚本语言.md "wikilink")：自有的语言和[Python](../Page/Python.md "wikilink")。\[7\]FontForge可以通过其GUI、命令行运行脚本并且还提供其功能作为一个Python模块，因此能被整合到任何Python程序中。\[8\]

Fontforge支持Adobe的OpenType [特性文件规格](https://zh.wikipedia.org/wiki/OpenType#OpenType_Feature_File_\(.fea\) "wikilink")（用自带语法扩展）。\[9\]还支持为[Cambria Math引入的](../Page/Cambria.md "wikilink")、并被[Office 2007](https://zh.wikipedia.org/wiki/Office_2007 "wikilink")、[XeTeX](../Page/XeTeX.md "wikilink")和[LuaTeX](../Page/LuaTeX.md "wikilink")支持的非官方的[微软](../Page/微软.md "wikilink")数学编排扩展（`MATH` table）。\[10\]至少一种自由OpenType数学字体用FontForge开发。（参见下文）

FontForge使用[FreeType](../Page/FreeType.md "wikilink")在屏幕上显示字体。\[11\]从2008年11月15日版起，FontForge可用[libcairo和](https://zh.wikipedia.org/wiki/cairo_\(繪圖\) "wikilink")[libpango软件库实现图形和文本显示](https://zh.wikipedia.org/wiki/pango "wikilink")\[12\]来提供反锯齿图形和复杂文本输出支持。

FontForge能用[Potrace或](https://zh.wikipedia.org/wiki/Potrace "wikilink")[AutoTrace以自动追踪位图并导入到字体中](https://zh.wikipedia.org/wiki/AutoTrace "wikilink")。

FontForge源代码的一部分被[LuaTeX](../Page/LuaTeX.md "wikilink")排版引擎用于读取和分析[OpenType](../Page/OpenType.md "wikilink")字体。\[13\]

FontForge源代码包含了许多实用程序在fonttools目录，包括了显示二进制字体文件内容的showttf，以及[WOFF转换器和反转换器](https://zh.wikipedia.org/wiki/WOFF "wikilink")。

## 支持的格式

FontForge支持许多字体格式。\[14\]自带的“[样条函数](../Page/样条函数.md "wikilink")字体数据库”格式（`.sfd`）是的，\[15\]并促进设计者之间的合作，[不同的文件可以很容易的创建](https://zh.wikipedia.org/wiki/diff "wikilink")。这软件支持许多其他字体格式并从一种格式转换到另一种格式。支持的字体格式有：[TrueType](../Page/TrueType.md "wikilink")（TTF），[TrueType Collection](https://zh.wikipedia.org/wiki/TrueType#TrueType_Collection "wikilink")（TTC），[OpenType](../Page/OpenType.md "wikilink")（OTF），，TeX位图字体，X11 OTB位图（仅[sfnt](https://zh.wikipedia.org/wiki/sfnt "wikilink")），[Glyph Bitmap Distribution Format](https://zh.wikipedia.org/wiki/Glyph_Bitmap_Distribution_Format "wikilink")（BDF），FON（Windows），FNT（Windows）和[Web Open Font Format](https://zh.wikipedia.org/wiki/Web_Open_Font_Format "wikilink")（WOFF）。FontForge还能输入和输出字体为[可縮放向量圖形](../Page/可縮放向量圖形.md "wikilink")（SVG）和[Unified Font Object](https://zh.wikipedia.org/wiki/Unified_Font_Object "wikilink")（UFO）格式。

## 开发历史

FontForge项目由George Williams作为闲暇时的项目发起，而且最初从2001到2004年3月以**PfaEdit**为名发布。\[16\]\[17\]

George活跃地开发、维护这个程序及相关工具集大约12年的时间。2011年中Dave Crossland开始较为活跃地贡献这个项目，而且这个项目从SourceForge转移到Github。Dave自己不是一名软件开发者，他开始提供入门级字体设计工作环境通过TeX Users Group去筹款并吸引合约开发者去维护并开发程序。FontForge的开发变得更活跃，而且Khaled Hosny和Barry Schwartz是知名的开发者，但是2012年末他们和Dave不同意项目的发展方向，所以他们把FontForge复刻为SortsMill Tools。\[18\]

2011年FontForge通过Dr. Ben Martin与来自TUG的支持打包成Mac OS X上的简易安装包。同时Matthew Petroff发布了他的Windows构建系统和非官方的Windows构建版本。2013年fontforgebuilds计划在SourceForge发起并予以扩展；它后来被完全重写，而且现在由Jeremy Tan维护作为官方的Windows软件包。

2012年Dave组织了新的项目网站托管到Github：http://fontforge.github.io，而且使用募捐款项从教导FontForge初学者到雇用合约web设计师。在他的支持下Ben添加了一个由他展现并在2013年马德里自由图形会议（Libre Graphics Meeting）作为主题的实时协作特性。

2014年随着来自Google的资金支持，Frank Trampe添加了对UFO字体源代码格式的完整格式的支持。

## 使用FontForge开发的自由字体

  - [Asana-Math](https://zh.wikipedia.org/wiki/Asana-Math "wikilink")
  - [Beteckna](https://zh.wikipedia.org/wiki/Beteckna "wikilink")
  - [Cantarell](../Page/Cantarell.md "wikilink")
  - [DejaVu字体](../Page/DejaVu字体.md "wikilink")
  - Exo font family\[19\]
  - [Free UCS Outline Fonts](https://zh.wikipedia.org/wiki/Free_UCS_Outline_Fonts "wikilink")
  - [Inconsolata](https://zh.wikipedia.org/wiki/Inconsolata "wikilink")
  - [Junicode](../Page/Junicode.md "wikilink")
  - [Linux Libertine](../Page/Linux_Libertine.md "wikilink")
  - [M+ Fonts](https://zh.wikipedia.org/wiki/M+_Fonts "wikilink")
  - [OCR-A](https://zh.wikipedia.org/wiki/OCR-A "wikilink")
  - [Squarish Sans](https://zh.wikipedia.org/wiki/Bank_Gothic#Cuts "wikilink")
  - [XITS font project](https://zh.wikipedia.org/wiki/XITS_font_project "wikilink")
  - 所有出自[Open Source Publishing Foundry](http://ospublish.constantvzw.org/foundry/)的字体（Alfphabet、Belgica-Belgika、Cimatics、Crickx、DLF、Le Patin Helvète、Libertinage、Limousine、Logisoso、Mill、NotCourierSans、OSP-DIN、Polsku Regula、Reglo、Sans Guilt、Sans Guilt Wafer、Univers Else、VJ12、W drogę）

## 参见

  - [METAFONT](../Page/METAFONT.md "wikilink")
  - [METATYPE1](https://zh.wikipedia.org/wiki/METATYPE1 "wikilink")

## 参考资料

## 外部链接

  -
  - [SourceForge](../Page/SourceForge.md "wikilink")上的[非官方Windows版本](http://fontforgebuilds.sourceforge.net/)

  - [非官方Windows版本](https://web.archive.org/web/20140605140631/http://www.geocities.jp/meir000/fontforge/)

  - [Design With FontForge](http://designwithfontforge.com/) —— 使用FontForge设计字体的指南

  - ["I think the ideas behind it are beautiful in my mind"](https://web.archive.org/web/20111003062536/http://ospublish.constantvzw.org/typo/i-think-the-ideas-behind-it-are-beautiful-in-my-mind)：2007年7月8日对George Williams的长篇专访

[Category:自由矢量图形软件](https://zh.wikipedia.org/wiki/Category:自由矢量图形软件 "wikilink") [Category:自由字体编辑软件](https://zh.wikipedia.org/wiki/Category:自由字体编辑软件 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:字体格式](https://zh.wikipedia.org/wiki/Category:字体格式 "wikilink") [Category:字体编辑软件](https://zh.wikipedia.org/wiki/Category:字体编辑软件 "wikilink") [Category:使用Cairo的软件](https://zh.wikipedia.org/wiki/Category:使用Cairo的软件 "wikilink") [Category:使用GTK+的软件](https://zh.wikipedia.org/wiki/Category:使用GTK+的软件 "wikilink")

1.

2.

3.  [FontForge LICENSE file](https://github.com/fontforge/fontforge/blob/master/LICENSE)

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

14.

15.

16.

17.

18.

19.