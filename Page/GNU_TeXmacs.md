'''GNU TeXmacs
'''是一个[自由的科学](../Page/自由软件.md "wikilink")[文本编辑器和](../Page/文本编辑器.md "wikilink")
[GNU](../Page/GNU.md "wikilink")
项目的[排版軟體](../Page/排版.md "wikilink")。它吸收了
[](../Page/TeX.md "wikilink") 和 [Emacs](../Page/Emacs.md "wikilink")
的特点，尽管未使用这两者的代码。TeXmacs 使用 [](../Page/TeX.md "wikilink")
[字体](../Page/字体.md "wikilink")。\[1\]它由 Joris van der Hoeven
开发和维护。该程序能够以[所见即所得的](https://zh.wikipedia.org/wiki/所见即所得 "wikilink")[用户界面创建结构化文档](../Page/用户界面.md "wikilink")。用户可以自行创建新的文档样式。编辑器采用高质量的[排版](../Page/排版.md "wikilink")[算法和](../Page/算法.md "wikilink")
[](../Page/TeX.md "wikilink") [字体用于专业出版](../Page/字体.md "wikilink")。

## 特点

TeXmacs
可作為一系列[计算机代数系统的前端](https://zh.wikipedia.org/wiki/计算机代数系统 "wikilink")，例如
[Maxima](../Page/Maxima.md "wikilink") 和
[Sage](../Page/Sage.md "wikilink")。將計算或推導得出的數學公式直接顯示在筆記中，節省無謂的重複輸入和語法翻譯。

作為[所见即所得的](https://zh.wikipedia.org/wiki/所见即所得 "wikilink")[文本编辑器](../Page/文本编辑器.md "wikilink")（如[Microsoft
Word](../Page/Microsoft_Word.md "wikilink")），TeXmacs 提供一套設計良好的 GUI
界面,不強迫用戶記憶排版引擎的 DSL
語法和關鍵字，顯著的降低無謂的學習成本，節省用戶大量的時間，不像許多自由軟體，學習成本非常高。

TeXmacs 同时支持 [Scheme](../Page/Scheme.md "wikilink") 扩展语言
[Guile](../Page/GNU_Guile.md "wikilink")，用于定制程序和编写扩展，提供用戶深度自訂的自由。

TeXmacs 不是 [](https://zh.wikipedia.org/wiki/LaTeX "wikilink") 的前端程序，但
TeXmacs 文档可以被自由转换成 [](../Page/TeX.md "wikilink") 或
[](https://zh.wikipedia.org/wiki/LaTeX "wikilink")
格式，唯目前轉換效果並不完美還需要進行少量的手動修改。同時也可以容易的將文檔轉換為
[HTML](../Page/HTML.md "wikilink")、[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")、[MathML](https://zh.wikipedia.org/wiki/MathML "wikilink")
和 [XML](../Page/XML.md "wikilink") 。

TeXmacs 目前可运行在大部分基于
[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink") 的系统平台下，包括
[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[Cygwin](../Page/Cygwin.md "wikilink")
和 [Mac OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，不過許多發行版必須自行編譯。可以容易的在
[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
下安裝和使用。

TeXmacs
还包含[演示文稿模式](https://zh.wikipedia.org/wiki/演示文稿 "wikilink")，可以非常容易的製作幻燈片（PPT）。目前已經含有一定的[图像编辑功能](https://zh.wikipedia.org/wiki/图像编辑 "wikilink")，可以繪製樹圖等。

### 快捷的符號輸入

TeXmacs 可以利用制表符（Tab）得到各種相似的符號可以迅捷地输入各类符號。例如，通过输入 =\>
可以得到数学符号右箭头，利用製表符可以快速的得到向右下的箭頭，向左上的箭頭，向上的箭頭。因此，使用者可以以極低的學習成本完成各類符号的输入。也提供完善的
GUI 讓用戶無需記憶和查閱上百個特殊字符對應的指令。

### 使用體驗

用戶無法通過折騰易於使用的軟體獲得高人一等的錯覺。

### 批处理

TeXmacs 亦可以批处理方式执行（类似 LaTeX 的一般操作模式），在执行过程中无需打开窗口，例如，命令

`xvfb-run texmacs --convert article.tm article.pdf --quit`

将会从 TeXmacs 文档“article.tm”生成 PDF 文件“article.pdf”。

## 支持的后台

[Yacas-texmacs-gnuplot.png](https://zh.wikipedia.org/wiki/File:Yacas-texmacs-gnuplot.png "fig:Yacas-texmacs-gnuplot.png")的TeXmacs前端\]\]
TeXmacs可作为许多软件的前端：

  - 程序设计语言：[CLisp](https://zh.wikipedia.org/wiki/CLisp "wikilink")、[CMucl](https://zh.wikipedia.org/wiki/CMucl "wikilink")、[Python](../Page/Python.md "wikilink")、[Qcl](https://zh.wikipedia.org/wiki/Qcl "wikilink")、[R](../Page/R语言.md "wikilink")、[Shell](https://zh.wikipedia.org/wiki/Shell "wikilink")
  - 计算机代数系统：[Axiom](https://zh.wikipedia.org/wiki/Axiom "wikilink")、[Giac](https://zh.wikipedia.org/wiki/Giac "wikilink")、[Macaulay
    2](https://zh.wikipedia.org/wiki/Macaulay_2 "wikilink")、[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")、[Maxima](../Page/Maxima.md "wikilink")、[MuPAD](../Page/MuPAD.md "wikilink")、[PARI/GP](https://zh.wikipedia.org/wiki/PARI/GP "wikilink")、[Reduce](https://zh.wikipedia.org/wiki/Reduce "wikilink")、[SageMath](https://zh.wikipedia.org/wiki/SageMath "wikilink")、[Yacas](https://zh.wikipedia.org/wiki/Yacas "wikilink")
  - 数值矩阵系统：[MATLAB](../Page/MATLAB.md "wikilink")、[GNU
    Octave](../Page/GNU_Octave.md "wikilink")、[Scilab](../Page/Scilab.md "wikilink")
  - 绘图软件包：[gnuplot](https://zh.wikipedia.org/wiki/gnuplot "wikilink")、[Graphviz](../Page/Graphviz.md "wikilink")、[XYpic](https://zh.wikipedia.org/wiki/XYpic "wikilink")、[Mathemagix](https://zh.wikipedia.org/wiki/Mathemagix "wikilink")
  - 其他：[DraTeX](https://zh.wikipedia.org/wiki/DraTeX "wikilink")、[Eukleides](https://zh.wikipedia.org/wiki/Eukleides "wikilink")、[GTybalt](https://zh.wikipedia.org/wiki/GTybalt "wikilink")、[Lush](https://zh.wikipedia.org/wiki/Lush "wikilink")

## 参见

  - [](../Page/TeX.md "wikilink")
  - [](https://zh.wikipedia.org/wiki/LaTeX "wikilink")
  - [LyX](../Page/LyX.md "wikilink")
  - [Emacs](../Page/Emacs.md "wikilink")
  - [文本编辑器列表](https://zh.wikipedia.org/wiki/文本编辑器列表 "wikilink")
  - [文本编辑器比较](https://zh.wikipedia.org/wiki/文本编辑器比较 "wikilink")

## 参考文献

## 外部链接

  - [GNU TeXmacs 的官方主页](http://www.texmacs.org/)

[Category:GNU](https://zh.wikipedia.org/wiki/Category:GNU "wikilink")
[Category:文本编辑器](https://zh.wikipedia.org/wiki/Category:文本编辑器 "wikilink")
[Category:Emacs](https://zh.wikipedia.org/wiki/Category:Emacs "wikilink")
[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink")

1.  [常见问题解答（自由软件基金会GNU项目）](http://www.texmacs.org/tmweb/help/faq.en.html)