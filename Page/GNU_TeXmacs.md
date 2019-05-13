'''GNU TeXmacs
'''是一个[自由的科学](../Page/自由软件.md "wikilink")[文本编辑器和](../Page/文本编辑器.md "wikilink")
[GNU](../Page/GNU.md "wikilink")
项目的[排版组件](../Page/排版.md "wikilink")。它吸收了
[](../Page/TeX.md "wikilink") 和 [Emacs](../Page/Emacs.md "wikilink")
的特点，尽管未使用这两者的代码。TeXmacs 使用 [](../Page/TeX.md "wikilink")
[字体](../Page/字体.md "wikilink")。\[1\]它由 Joris van der Hoeven
开发和维护。该程序能够以[所见即所得的](../Page/所见即所得.md "wikilink")[用户界面创建结构化文档](../Page/用户界面.md "wikilink")。用户可以自行创建新的文档样式。编辑器采用高质量的[排版](../Page/排版.md "wikilink")[算法和](../Page/算法.md "wikilink")
[](../Page/TeX.md "wikilink") [字体用于专业出版](../Page/字体.md "wikilink")。

## 特点

TeXmacs
能够处理数学[公式](../Page/公式.md "wikilink")，并被用作一系列[计算机代数系统的前端](../Page/计算机代数系统.md "wikilink")，例如
[Maxima](../Page/Maxima.md "wikilink") 和
[Sage](../Page/Sage.md "wikilink")。TeXmacs 同时支持
[Scheme](../Page/Scheme.md "wikilink") 扩展语言
[Guile](../Page/GNU_Guile.md "wikilink")，用于定制程序和编写扩展。

如同许多[所见即所得的](../Page/所见即所得.md "wikilink")[文本编辑器](../Page/文本编辑器.md "wikilink")（如[Microsoft
Word](../Page/Microsoft_Word.md "wikilink")），用户在屏幕上编排的文档与最终[排版效果相仿](../Page/排版.md "wikilink")。TeXmacs
的目标是提供一个[所见即所得](../Page/所见即所得.md "wikilink")、排版效果美观的编辑器。TeXmacs 不是
[](../Page/LaTeX.md "wikilink") 的前端程序，但 TeXmacs 文档可以被自由转换成
[](../Page/TeX.md "wikilink") 或 [](../Page/LaTeX.md "wikilink") 格式。对
[HTML](../Page/HTML.md "wikilink")、[MathML](../Page/MathML.md "wikilink")
和 [XML](../Page/XML.md "wikilink") 的支持正在开发中。

TeXmacs 目前可运行在大部分基于 [Unix](../Page/Unix.md "wikilink") 的系统平台下，包括
[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[Cygwin](../Page/Cygwin.md "wikilink")
和 [Mac OS X](../Page/Mac_OS_X.md "wikilink")。除 Cygwin 版本以外，一个 [Microsoft
Windows](../Page/Microsoft_Windows.md "wikilink") 的本地版本已经开放测试。

TeXmacs
还包含[演示文稿模式](../Page/演示文稿.md "wikilink")，计划在未来开发成为一个完整的科学工作套装，含有[电子制表功能和科学](../Page/电子制表.md "wikilink")[图像编辑软件](../Page/图像编辑.md "wikilink")。

### 数学字体排印

使用 TeXmacs，可以迅捷地输入各类数学公式。例如，通过输入 =\>
可以得到数学符号右箭头，而其他一些符号的变体形式则可以通过点击制表符得到。因此，通过用户快捷键可以轻易完成大量数学符号的输入。

在公式環境下，可以利用Tab切換相似的數學符號，更方便輸入常用符號或希臘文。

### 批处理

TeXmacs 亦可以批处理方式执行（类似 LaTeX 的一般操作模式），在执行过程中无需打开窗口，例如，命令

`xvfb-run texmacs --convert article.tm article.pdf --quit`

将会从 TeXmacs 文档“article.tm”生成 PDF 文件“article.pdf”。

## 支持的后台

[Yacas-texmacs-gnuplot.png](https://zh.wikipedia.org/wiki/File:Yacas-texmacs-gnuplot.png "fig:Yacas-texmacs-gnuplot.png")的TeXmacs前端\]\]
TeXmacs可作为许多软件的前端：

  - 程序设计语言：[CLisp](../Page/CLisp.md "wikilink")、[CMucl](../Page/CMucl.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Qcl](../Page/Qcl.md "wikilink")、[R](../Page/R语言.md "wikilink")、[Shell](../Page/Shell.md "wikilink")
  - 计算机代数系统：[Axiom](../Page/Axiom.md "wikilink")、[Giac](../Page/Giac.md "wikilink")、[Macaulay
    2](../Page/Macaulay_2.md "wikilink")、[Mathematica](../Page/Mathematica.md "wikilink")、[Maxima](../Page/Maxima.md "wikilink")、[MuPAD](../Page/MuPAD.md "wikilink")、[PARI/GP](../Page/PARI/GP.md "wikilink")、[Reduce](../Page/Reduce.md "wikilink")、[SageMath](../Page/SageMath.md "wikilink")、[Yacas](../Page/Yacas.md "wikilink")
  - 数值矩阵系统：[MATLAB](../Page/MATLAB.md "wikilink")、[GNU
    Octave](../Page/GNU_Octave.md "wikilink")、[Scilab](../Page/Scilab.md "wikilink")
  - 绘图软件包：[gnuplot](../Page/gnuplot.md "wikilink")、[Graphviz](../Page/Graphviz.md "wikilink")、[XYpic](../Page/XYpic.md "wikilink")、[Mathemagix](../Page/Mathemagix.md "wikilink")
  - 其他：[DraTeX](../Page/DraTeX.md "wikilink")、[Eukleides](../Page/Eukleides.md "wikilink")、[GTybalt](../Page/GTybalt.md "wikilink")、[Lush](../Page/Lush.md "wikilink")

## 参见

  - [](../Page/TeX.md "wikilink")
  - [](../Page/LaTeX.md "wikilink")
  - [LyX](../Page/LyX.md "wikilink")
  - [Emacs](../Page/Emacs.md "wikilink")
  - [文本编辑器列表](../Page/文本编辑器列表.md "wikilink")
  - [文本编辑器比较](../Page/文本编辑器比较.md "wikilink")

## 参考文献

## 外部链接

  - [GNU TeXmacs 的官方主页](http://www.texmacs.org/)

[Category:GNU](https://zh.wikipedia.org/wiki/Category:GNU "wikilink")
[Category:文本编辑器](https://zh.wikipedia.org/wiki/Category:文本编辑器 "wikilink")
[Category:Emacs](https://zh.wikipedia.org/wiki/Category:Emacs "wikilink")
[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink")

1.  [常见问题解答（自由软件基金会GNU项目）](http://www.texmacs.org/tmweb/help/faq.en.html)