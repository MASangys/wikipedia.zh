troff是一个由[AT\&T为](../Page/AT&T.md "wikilink")[Unix开发的](https://zh.wikipedia.org/wiki/Unix "wikilink")[文字处理软件](../Page/文字处理器.md "wikilink")。

## 历史

troff的历史能够回溯到一个叫做[RUNOFF的](https://zh.wikipedia.org/wiki/RUNOFF "wikilink")[排版程序](https://zh.wikipedia.org/wiki/排版程序 "wikilink")，在20世纪六十年代中期由Jerome
H.
Saltzer为MIT的[CTSS](https://zh.wikipedia.org/wiki/CTSS "wikilink")[操作系统编写](../Page/操作系统.md "wikilink")。（其名称据传是来自于当时一个短语I'll
run off a document的缩写。）

[Robert
Morris把它移植到GE](https://zh.wikipedia.org/wiki/Robert_Morris "wikilink")
635体系结构上并称其[roff](https://zh.wikipedia.org/wiki/roff "wikilink")（runoff的缩写）。它为了能在[PDP-7上运行被重写为rf](https://zh.wikipedia.org/wiki/PDP-7 "wikilink")，与此同时，Douglas
McIlroy用[BCPL](../Page/BCPL.md "wikilink")[编程语言重写了一个roff的扩展和简化了的版本](../Page/编程语言.md "wikilink")。

[Unix的第一个版本是在](https://zh.wikipedia.org/wiki/Unix "wikilink")[贝尔实验室里的一台](../Page/贝尔实验室.md "wikilink")[PDP-7上开发出来的](https://zh.wikipedia.org/wiki/PDP-7 "wikilink")。在1971年开发者们为了能在[操作系统上做进一步的工作想获得一台](../Page/操作系统.md "wikilink")[PDP-11](../Page/PDP-11.md "wikilink")。为了能够协调这台设备的成本，他们建议说他们应该为[AT\&T的专利部门开发一个文档处理系统](../Page/AT&T.md "wikilink")。第一个处理程序是对McIlroy的roff的重新编写，由Joe
F. Ossanna完成。

当他们需要一个更加灵活的语言时，编写了一个roff的新版本叫做nroff（Newer
‘roff’）。该版本有着更加复杂的句法，但是它为未来的版本奠定了基础。当他们获得了一个图像设备CAT照相排版机时，为了能够驱动它，Ossanna又编写了nroff的一个版本。这个版本被叫做troff，因为它是排字机（typesetter）的roff。为此，troff的发音应该是t-roff而不是trough。
随troff而来的有nroff，它是为针式打印机和字符终端设备产生输出的。它理解troff所理解的任何事情，并且不再使用不合适的命令（比如[字体改变](../Page/字体.md "wikilink")）。

不幸的是，Ossanna的troff是用[PDP-11的](../Page/PDP-11.md "wikilink")[汇编语言编写的](../Page/汇编语言.md "wikilink")，所以只能产生CAT照相排版机的输出。他用C语言进行了重写，尽管这变成了7000行无注释的代码并且仍然依赖CAT。随着CAT越来越不常见，并且不再受到制造商的支持，使troff支持其他设备就成为了一个要优先解决的问题。可是在这被完成之前Ossanna就去世了。[Brian
Kernighan接手了重写troff的工作](https://zh.wikipedia.org/wiki/Brian_Kernighan "wikilink")。新写的版本产生了一个与设备无关的代码，这让后继者非常容易阅读并改写成适合其他打印机的代码。同时，这个新版本的troff（因为是device
independent
troff被称为ditroff）具有了几项扩展，其中包含了绘图函数。该版在贝尔实验室的一篇题为《一个与排版机无关的troff》的计算机科学技术报告中得到描述，该报告经[gzip压缩的](https://zh.wikipedia.org/wiki/gzip "wikilink")[PostScript版可在计算机科学技术网](../Page/PostScript.md "wikilink")[这里](https://web.archive.org/web/20070930204439/http://cm.bell-labs.com/cm/cs/cstr/97.ps.gz)获得。该文章定义了ditroff的输出格式，改格式被像[GNU](../Page/GNU.md "wikilink")[groff这样的许多现代troff的克隆版本所使用](https://zh.wikipedia.org/wiki/groff "wikilink")。

troff的工具集最终被称作[Documenter's
WorkBench](https://zh.wikipedia.org/wiki/Documenter's_WorkBench "wikilink")（[DWB](https://zh.wikipedia.org/wiki/DWB "wikilink")），并且直到1994年还在贝尔实验室和后来抽资脱离贝尔实验室的[UNIX系统实验室](https://zh.wikipedia.org/wiki/UNIX系统实验室 "wikilink")（USL）中继续开发。当时，SoftQuad公司接管了维护任务，尽管Kernighan自己还在改进troff。因此现在有四个起初贝尔实验室的troff的变体：

  - 一个由[Bill
    Joy编写的古老变体](https://zh.wikipedia.org/wiki/Bill_Joy "wikilink")，现在仍然由[Sun公司掌管](https://zh.wikipedia.org/wiki/Sun公司 "wikilink")
  - SoftQuad的DWB，基于USL1994年的DWB 2.0
  - [朗讯的DWB](../Page/朗讯.md "wikilink") 3.4
  - troff，Plan 9中的版本

troff及其家族的使用在20世纪九十年代有了某种程度的减少，但是仍然被广泛地使用着。虽然troff正在被像[Interleaf](https://zh.wikipedia.org/wiki/Interleaf "wikilink")、[FrameMaker和](https://zh.wikipedia.org/wiki/FrameMaker "wikilink")[LaTeX这样的其他程序所取代](https://zh.wikipedia.org/wiki/LaTeX "wikilink")，但它仍然是[Unix手册的缺省格式](https://zh.wikipedia.org/wiki/Unix手册 "wikilink")。
始于1990年的GNU项目重新编写了该软件，起名为[groff](https://zh.wikipedia.org/wiki/groff "wikilink")。另外，由于早期Unix版本的开源化，以及其现代的后继者[OpenSolaris和](../Page/OpenSolaris.md "wikilink")[9号计划](https://zh.wikipedia.org/wiki/9号计划 "wikilink")，AT\&T的troff的几个版本均可在不同的开源许可证下获得。

## 特性

troff的特性在于其能够设置字体、间距、段落、边距和脚标等的命令。不像其他的文本处理程序，troff能够在页面上的任意位置放置字符，甚至使字符相互重叠，并且它有一个完全可编程的输入语言。独立的预处理程序被用来更加方便地产生表格、图和数学公式。troff的输入是能够被任何文本编辑器所创建的普通文本。

为了处理不同的文本种类，扩展的宏软件包已经被开发出来。一个典型的troff发行版包含了处理研究论文的me宏，创建[Unix手册的man宏](https://zh.wikipedia.org/wiki/Unix手册 "wikilink")，和处理信件、书籍、技术备忘文档和报告的ms、mm宏。随着troff的演化，由于有几件事情并不容易用troff完成，所以几种预处理程序被开发出来。这些程序把一个文档的特定部分经转换后送入troff的输入，恰好符合Unix中管道的使用原理——把一个程序的输出作为另一个程序的输入（参见[管道流和过滤程序](https://zh.wikipedia.org/wiki/管道流和过滤程序 "wikilink")）。

[eqn预处理程序允许以一种更加简单和直观的方式编写数学公式](https://zh.wikipedia.org/wiki/eqn "wikilink")。[tbl是一个格式化表格的预处理程序](https://zh.wikipedia.org/wiki/tbl "wikilink")。[refer预处理程序](https://zh.wikipedia.org/wiki/refer "wikilink")（以及与之相似的bib程序）根据参考书目数据库处理一个文档中的引用书目。后来又出现了其他几个预处理程序。[pic预处理程序提供了一种与区域相关的编程语言以及一组使用广泛的绘图函数](https://zh.wikipedia.org/wiki/pic "wikilink")。ideal预处理程序差不多能做相同的事情，只不过其[编程范型与前者有很大差异](../Page/编程范型.md "wikilink")。grap预处理程序关注于对图表的处理，与其他预处理程序不同的是，它产生pic代码。

## 再实现的版本

  - [groff是](https://zh.wikipedia.org/wiki/groff "wikilink")[GNU工程](../Page/GNU.md "wikilink")[自由软件版本的troff和nroff](../Page/自由软件.md "wikilink")
  - [unroff](http://www-rn.informatik.uni-bremen.de/software/unroff/)是用[Scheme重写的troff扩展版本](../Page/Scheme.md "wikilink")
  - [Heirloom
    troff](http://heirloom.sf.net/)基于troff，来源于[OpenSolaris](../Page/OpenSolaris.md "wikilink")。它包含了对[OpenType字体的支持](https://zh.wikipedia.org/wiki/Opentype "wikilink")、改进过的对[Type
    1字体的支持](https://zh.wikipedia.org/wiki/Type_1字体 "wikilink")、对[Unicode的支持](https://zh.wikipedia.org/wiki/Unicode "wikilink")、一个新的段落格式化算法和一个[groff兼容模式](https://zh.wikipedia.org/wiki/groff "wikilink")。

## 参考

  - [Nils-Peter Nelson letter explaining roff/troff/DWB history and
    status](http://groups.google.com/groups?selm=DqA8Hy.Jyn%40research.att.com)

## 参见

  - [桌面出版](../Page/桌面出版.md "wikilink")

  - [DocBook](../Page/DocBook.md "wikilink")

  - [groff](https://zh.wikipedia.org/wiki/groff_\(software\) "wikilink")
    GNU troff/nroff replacement

  -
  - [SGML](../Page/SGML.md "wikilink")

  - [TeX](../Page/TeX.md "wikilink")

  -
## 外部链接

  - [The Text Processor for Typesetters](http://troff.org/)
  - [The history of troff](http://www.troff.org/history.html)
  - [OpenSolaris-derived port of troff and related
    programs](http://heirloom.sourceforge.net/doctools.html)
  - [User manual for the Plan 9 edition of
    troff](http://plan9.bell-labs.com/sys/doc/troff.pdf)

[Category:文書處理器](https://zh.wikipedia.org/wiki/Category:文書處理器 "wikilink")
[Category:自由排版软件](https://zh.wikipedia.org/wiki/Category:自由排版软件 "wikilink")