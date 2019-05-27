**LuaTeX**是作为带有[Lua脚本引擎嵌入的](../Page/Lua.md "wikilink")[pdfTeX版本发起的基于](https://zh.wikipedia.org/wiki/pdfTeX "wikilink")[的电脑](../Page/TeX.md "wikilink")[排版系统](../Page/排版.md "wikilink")。经过一段时间的开发后被pdfTeX小组采纳作为pdfTeX的继任者\[1\]\[2\]（本身是[eTeX的扩展](https://zh.wikipedia.org/wiki/eTeX "wikilink")，\[3\]后者也生成[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")）。后来在项目中Aleph的功能被包含进去（尤其是多方向排印）。该项目最初由Oriental
TeX project资助，由Idris Samawi Hamid、Hans Hagen和Taco Hoekwater发起。

## 项目的开发目的

项目的主要目的是提供一个所有内部部件都可从Lua接入的TeX版本。在打开TeX内部的过程中，许多内部代码被重写。用户（或宏包编写者）无需在TeX中[硬编码新特性](https://zh.wikipedia.org/wiki/硬编码 "wikilink")，而是可以编写自己的扩展。LuaTeX提供对[OpenType字体的原生支持](../Page/OpenType.md "wikilink")。相比于[](../Page/XeTeX.md "wikilink")，字体不经过系统自带的库读取，而是通过一个基于[FontForge的库](../Page/FontForge.md "wikilink")。

一个与之相关的项目是[MPLib](https://zh.wikipedia.org/wiki/MPLib "wikilink")（一个扩展的[MetaPost库模块](../Page/MetaPost.md "wikilink")），它给TeX提供了图形引擎。

LuaTeX小组由Taco Hoekwater、Hartmut Henkel和Hans Hagen组成。

## 版本

LuaTeX的第一个公开beta版本在[圣迭戈举办的](https://zh.wikipedia.org/wiki/圣迭戈 "wikilink")[TUG](https://zh.wikipedia.org/wiki/TeX_Users_Group "wikilink")
2007上发布。第一个正式版计划于2009年末发行，而第一个稳定版于2010年发布。\[4\]2016年9月，1.00版本在ConTeXt
2016期间发布。

截至2010年10月，[ConTeXt](https://zh.wikipedia.org/wiki/ConTeXt "wikilink")
mark
IV和[LaTeX都有额外的软件包](https://zh.wikipedia.org/wiki/LaTeX "wikilink")（如luaotfload、luamplib、luatexbase、luatextra）运用了新的LuaTeX特性。两者都受包含LuaTeX
0.60的[TeX Live](../Page/TeX_Live.md "wikilink") 2010支持。对plain
TeX的特殊支持仍在开发中。

## 参见

  - [TeX](../Page/TeX.md "wikilink")

## 延伸阅读

  - Manuel Pégourié-Gonnard: [A guide to
    LuaLaTeX](http://dante.ctan.org/tex-archive/info/luatex/lualatex-doc/lualatex-doc.pdf).
    5 May 2013.
  - LuaTeX development team: [LuaTeX
    Reference](http://www.luatex.org/svn/trunk/manual/luatex.pdf).
    February 2017.

## 外部链接

  - [LuaTeX官方网站](http://www.luatex.org/)
  - [LuaTeX官方Wiki站点](http://wiki.luatex.org/index.php/Main_Page)

## 参考资料

[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink")
[Category:自由TeX软件](https://zh.wikipedia.org/wiki/Category:自由TeX软件 "wikilink")
[Category:自由PDF软件](https://zh.wikipedia.org/wiki/Category:自由PDF软件 "wikilink")

1.  [TeX Frequently Asked
    Questions](http://www.tex.ac.uk/cgi-bin/texfaq2html?label=whatpdftex)
    - What is PDFTeX?
2.  [TeX Frequently Asked
    Questions](http://www.tex.ac.uk/cgi-bin/texfaq2html?label=luatex) -
    PDFTeX and LuaTeX
3.  [PDFTeX's NEWS file](http://www.tug.org/applications/pdftex/NEWS)  -
    news for 3.141592-1.40.0 version.
4.  [LuaTeX roadmap](http://www.luatex.org/roadmap.html)