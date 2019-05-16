__NOTOC__
**pdfTeX**是[高德纳的排版程序](../Page/高德纳.md "wikilink")[TeX的附加组件](../Page/TeX.md "wikilink")，最初由Hàn
Thế
Thành在[捷克](../Page/捷克.md "wikilink")[布尔诺](https://zh.wikipedia.org/wiki/布尔诺 "wikilink")[马萨里克大学信息学院作为他的哲学博士学位论文的一部分编写并开发给公众使用](https://zh.wikipedia.org/wiki/马萨里克大学 "wikilink")。创作这个TeX附加组件的想法是在1990年代初期构想的，当时Jiří
Zlatuška和Phil
Taylor跟高德纳在斯坦福大学讨论了一些开发上的主意。高德纳后来在布尔诺马萨里克大学接受荣誉博士学位的时候面见了Hàn
Thế Thành。

pdfTeX的两大突出特点是产生有内容的字符突出，以及[赫尔曼·察普夫提出的用于改善排版页面灰度的展开字体](../Page/赫尔曼·察普夫.md "wikilink")。都延伸核心段落打破惯例。二者都在Thành的论文中作了探讨。\[1\]

pdfTeX包含于[LaTeX和](https://zh.wikipedia.org/wiki/LaTeX "wikilink")最现代的发行版（包含[TeX
Live](https://zh.wikipedia.org/wiki/TeX_Live "wikilink")、和[MiKTeX](https://zh.wikipedia.org/wiki/MiKTeX "wikilink")）\[2\]并用作默认TeX引擎。\[3\]\[4\]\[5\]TeX和pdfTeX之间主要的不同之处在于TeX输出文件，pdfTeX能直接输出[PDF文件](https://zh.wikipedia.org/wiki/PDF "wikilink")。这可以紧密结合PDF特性如[超链接和目录](https://zh.wikipedia.org/wiki/超链接 "wikilink")，使用[hyperref这样的软件包](https://zh.wikipedia.org/wiki/hyperref "wikilink")。另一方面，一些软件包（如[PSTricks](https://zh.wikipedia.org/wiki/PSTricks "wikilink")）早期所运用的从DVI到[PostScript的转换进程可能会失败](../Page/PostScript.md "wikilink")，即使像[PGF/TikZ这样的替代品已经编写出来](https://zh.wikipedia.org/wiki/PGF/TikZ "wikilink")。PostScript图形的直接嵌入已不再有用，而且被eps2pdf之类的软件所用以转换EPS文件到PDF，这可以由pdfTeX直接插入。

从pdfTeX获得DVI输出是可以的。DVI的这一输出等同于TeX的功能，即使pdfTeX额外的特性被激活。此外[LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink")、[ConTeXt等简单地TeX](https://zh.wikipedia.org/wiki/ConTeXt "wikilink")[宏软件包](../Page/巨集.md "wikilink")，他们与pdfTeX运行的同样好。由此举例说明，鉴于pdfTeX为[ConTeXt文档的默认渲染引擎](https://zh.wikipedia.org/wiki/ConTeXt "wikilink")，`pdflatex`可用标准[LaTeX宏调用pdfTeX程序来编排LaTeX文档](https://zh.wikipedia.org/wiki/LaTeX "wikilink")。

## 特性

pdfTeX具有一些标准TeX软件所不具备的功能：

  - 原生[TrueType及](../Page/TrueType.md "wikilink")[Type
    1字体嵌入](https://zh.wikipedia.org/wiki/Type_1字体 "wikilink")
  - 微排印扩展如留边及展开字体
  - 直接取得超链接、目录和文档信息等PDF特性

## 参见

  - [PDF软件列表](https://zh.wikipedia.org/wiki/PDF软件列表 "wikilink")
  - [LuaTeX](https://zh.wikipedia.org/wiki/LuaTeX "wikilink")
  - [XeTeX](../Page/XeTeX.md "wikilink")

## 参考资料

## 外部链接

  - [pdfTeX project page](http://www.pdftex.org/)
  - [Micro-typographic extensions to the TeX typesetting
    system](http://www.pragma-ade.com/pdftex/thesis.pdf) - dissertation
    by Hàn Thế Thành
  - [2008 interview](http://tug.org/interviews/thanh.html)

[Category:自由PDF软件](https://zh.wikipedia.org/wiki/Category:自由PDF软件 "wikilink")
[Category:自由TeX软件](https://zh.wikipedia.org/wiki/Category:自由TeX软件 "wikilink")
[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink")

1.  [PhD thesis](http://www.pragma-ade.com/pdftex/thesis.pdf)
2.
3.  [teTeX news](http://tug.org/teTeX/tetex-src/NEWS)
4.  [TeX Live manual](http://www.tug.org/texlive/doc.html)
5.  [Christian Schenk : MiKTeX 2.5: pdfetex becomes default
    engine](http://dojo.miktex.org/blogs/christian_schenk/archive/2006/05/16/488.aspx)