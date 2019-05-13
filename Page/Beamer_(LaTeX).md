**Beamer** 是一个用于创建演示文稿
[LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink")
的文档类。它同时支持[LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink")
+
[dvips](https://zh.wikipedia.org/wiki/dvips "wikilink")、[pdfLaTeX](https://zh.wikipedia.org/wiki/pdfLaTeX "wikilink")、[LuaLaTeX以及](https://zh.wikipedia.org/wiki/LuaLaTeX "wikilink")[XeLaTeX](https://zh.wikipedia.org/wiki/XeLaTeX "wikilink")。它的名称取自德语词汇
*[Beamer](https://zh.wikipedia.org/wiki/wikt:Beamer#German "wikilink")*（pseudo-anglicism），意思是影像演示。

Beamer文档类并不是最早开发出的LaTeX演示文稿工具。2003年2月，Till
Tantau为其博士论文答辩编写了beamer包，并于一个月之后发布在CTAN上。

作为LaTeX的一个文档类，Beamer文档和LaTeX文档一样都是纯文本文件。且beamer兼容LaTeX常见的命令，和其他宏包的兼容性良好。当然也有支持Beamer语法的图形界面，如[AUCTEX和](https://zh.wikipedia.org/wiki/AUCTEX "wikilink")[LyX](../Page/LyX.md "wikilink")。

Beamer也可以通过使用兼容包来支持其他LaTeX演示文稿宏包的语法，包括
[Prosper和](https://zh.wikipedia.org/wiki/Prosper_\(LaTeX\) "wikilink")[Foils](https://zh.wikipedia.org/wiki/Foils "wikilink")。

Beamer默认生成PDF文件用于演示，其动态效果依靠创建多页幻灯片实现。若要打印出每张幻灯片的最终效果用于分发给听众，需开启handout选项；想要在一张纸上打印多页幻灯片，需要用pgfpages宏包；也可以输出适合印刷在A4或者标准信纸上的文档效果。'frame'的标题将变为段落的标题，不再包括原有的外观主题，同时保证了原有章节结构不被破坏——这就可以方便的输出演讲的提纲。

Beamer的一些功能是依赖于[PGF的](https://zh.wikipedia.org/wiki/PGF/TikZ "wikilink")。

## Beamer的hello, world

``` latex
\documentclass{beamer}        %使用beamer文档类
\begin{document}
\begin{frame}                 %frame：新建一个幻灯片
hello, world
\end{frame}
\end{document}
```

## 另见

  - [Powerdot](https://zh.wikipedia.org/wiki/Powerdot "wikilink") – a
    LaTeX class for making professional-looking presentation slides
  - [Prosper](https://zh.wikipedia.org/wiki/Prosper_\(LaTeX\) "wikilink")
    – a LaTeX class for writing transparencies

## 外部链接

  - [Beamer home page](https://github.com/josephwright/beamer)
  - [beamerposter – a beamer extension for scientific conference posters
    in DIN-A0 size or
    bigger](http://www-i6.informatik.rwth-aachen.de/~dreuw/latexbeamerposter.php)
  - Till Tantau, Joseph Wright, Vedran Miletić (2013) *[User's
    guide](http://www.ctan.org/tex-archive/macros/latex/contrib/beamer/doc/beameruserguide.pdf)*
    – from [www.ctan.org](http://www.ctan.org)
  - [Beamer Theme Matrix](http://www.hartwork.org/beamer-theme-matrix/)
  - [wiki2beamer: Tool to create Beamer presentations from a wiki-like
    syntax](http://wiki2beamer.sourceforge.net/)
  - Dohmen, Klaus (2010) *[Dual Screen Presentations with the LaTeX
    Beamer Class under
    X](http://www.tug.org/pracjourn/2010-1/dohmen/dohmen.pdf)* – from
    [The PracTeX Journal](http://www.tug.org/pracjourn)
  - [Beamer2Thesis – a beamer extension for presenting a
    thesis](http://cfiandra.github.io/Beamer2Thesis/)

### 教程

  - [Introduction to Beamer – How to make a
    presentation](http://www.math-linux.com/spip.php?article77)
  - [A tutorial with examples on the usage of Beamer Latex
    class](http://www.rennes.enst-bretagne.fr/~gbertran/pages/tutorials_latex.html)
  - [Another
    tutorial](https://web.archive.org/web/20050209023809/http://www.math.umbc.edu/~rouben/beamer/)
  - [Beamer by Example from PracTEX Journal, many examples of both TeX
    source and formatted
    output](http://www.tug.org/pracjourn/2005-4/mertz/mertz.pdf)
  - [Introduction to beamer on
    wikibooks](http://en.wikibooks.org/wiki/LaTeX/Presentations)
  - [A presentation using the LaTeX Beamer class (short guide –
    samples)](https://web.archive.org/web/20130403002321/http://www.lampos.net/latex-presentation)

[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")