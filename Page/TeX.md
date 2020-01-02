> 本文内容由[TeX](https://zh.wikipedia.org/wiki/TeX)转换而来。


**TeX**（，常被读作，音译，写作“”），是一个由美国计算机教授[高德纳](../Page/高德纳.md "wikilink")（）编写的排版软件。TeX的[MIME类型为](../Page/互联网媒体类型.md "wikilink")`application/x-tex`，是一款[自由软件](../Page/自由软件.md "wikilink")。它在学术界特别是[数学](../Page/数学.md "wikilink")、[物理学](../Page/物理学.md "wikilink")和[计算机科学](../Page/计算机科学.md "wikilink")界十分流行。TeX被普遍认为是一个优秀的排版工具，尤其是对于复杂数学公式的处理。利用LaTeX等终端软件，TeX就能够排版出精美的文本以幫助人們辨認和尋找。

## 历史

[高德纳](../Page/高德纳.md "wikilink")最早开始自行编写TeX的原因，是因為当时的电脑排版技術十分粗糙，已经影响到他的巨著《[计算机程序设计艺术](../Page/计算机程序设计艺术.md "wikilink")》的印刷品質。他以典型的[黑客](../Page/黑客.md "wikilink")思维模式，决定自行编写一个排版软件：TeX。

他计划在1978年的[学术休假时完成这项工作](https://zh.wikipedia.org/wiki/学术休假 "wikilink")，但事实上，直到十多年之后的1989年，TeX语言才被「冻结」（可以使用）。1978年夏天，[蓋伊·史提爾二世在高德纳编写其第一版的TeX程式时](https://zh.wikipedia.org/wiki/蓋伊·史提爾二世 "wikilink")，正好在高德纳所工作的[斯坦福大学](https://zh.wikipedia.org/wiki/斯坦福大学 "wikilink")，当他回到[麻省理工学院](../Page/麻省理工学院.md "wikilink")（MIT）时他在下重写了TeX的输出输入系统。TeX的第一版是用写成的，运行于，採用斯坦福大学的[操作系统](../Page/操作系统.md "wikilink")。在之后的TeX版本中，高德纳（Knuth）发明了所谓的“[文学编程](../Page/文学编程.md "wikilink")”（literate programming），一种从同一源文件自动生成可编译的源代码和高质量的文档的编程方法。这种语言被称为[WEB](https://zh.wikipedia.org/wiki/WEB "wikilink")，它所生成的源代码是使用[Pascal编程语言](https://zh.wikipedia.org/wiki/Pascal编程语言 "wikilink")。

一个从头开始重写的新版TeX于1982年发布，它被称为TeX82。除了其他修改之外，原本的断字算法被编写的新算法所取代。TeX82还使用了定点而不是[浮点](https://zh.wikipedia.org/wiki/浮点 "wikilink")，以确保结果在不同的计算机硬件上重现。\[1\]并且在蓋伊·史提爾的大力游说下，TeX82包括一种真正的、[图灵完全的编程语言](https://zh.wikipedia.org/wiki/图灵完全 "wikilink")。\[2\]1989年，高德纳发布了新版本的TeX和[Metafont](https://zh.wikipedia.org/wiki/Metafont "wikilink")。\[3\]尽管高德纳希望保持程序的稳定性，但他意识到，只能输入128个不同的字符不足以容纳外语；因此TeX 3.0版本的主要变化是能使用[8位元](../Page/8位元.md "wikilink")输入，即在文本中允许输入256个不同的字符。

从TeX第三版开始，之后的升级是在小数点后加入一个新数位，使之越来越接近[圆周率](https://zh.wikipedia.org/wiki/圆周率 "wikilink")「」的值。TeX目前的版本是3.14159265。这显示了TeX已经十分稳定，任何的升级都十分细微。高德纳曾表示“最后一次升级是（于我过世后）将版本数改为『』，那时任何余下的漏洞将被看作程序的功能。”

由于TeX的源代码基本上处于公共领域，其他程序员可以（并明确被鼓励）改进系统，但需要使用其他名称来分发修改后的TeX。例如，Omega项目是在1991年之后开发的，主要是为了提高TeX的多语种排版能力。高德纳创建了“非官方”修改版本，例如TeX-XeT，它允许用户在同一文档中混合写入从左到右和从右到左书写系统的文本。

## 范例

[LaTeX_sample.png](https://zh.wikipedia.org/wiki/File:LaTeX_sample.png "fig:LaTeX_sample.png")巨集基於TeX，可以將純文字生成一個印刷樣頁\]\] 此乃一简易的TeX文本范例。 首先建立一名为`myfile.tex`的纯文本，并载有以下内容：

``` latex
Hello, World
\bye          % marks the end of the file; not shown in the final output
```

然后在[命令行解释器](https://zh.wikipedia.org/wiki/命令行解释器 "wikilink")（Command line interpreter）中输入`tex myfile.tex`，之后TeX便会建立一名为`myfile.dvi`的文件。此文件可用如之类的检视器检视。此档于阅读器可见的是“hello”一词。“\\bye”是一个TeX[指令](https://zh.wikipedia.org/wiki/指令 "wikilink")，相等于[档案结束标记](../Page/檔案結尾.md "wikilink")，是不会显示出来的。此DVI文件可在阅读器中直接打印或转换成更普遍的格式，例如[PostScript](../Page/PostScript.md "wikilink")。

另外，使用指令`pdftex myfile.tex`亦能输出[PDF文件](https://zh.wikipedia.org/wiki/PDF "wikilink")。当初创造pdfTeX是因为把DVI转成PostScript再转成PDF所产生的字体显示质量很差（但打印则没问题）。这是由于TeX本身支持[点阵字体](https://zh.wikipedia.org/wiki/点阵字体 "wikilink")（Type 3），而此远不及[向量字体](https://zh.wikipedia.org/wiki/向量字体 "wikilink")（Type 1）的显示质量好。

### 数学公式范例

以[二次方程](../Page/二次方程.md "wikilink")为例，

所有方程式在TeX中都是以一对$符号围住。如果要使公式另起一行居中，那么就用$$取代$。例如：

### LaTeX

[LaTeX是一套以TeX描述的](https://zh.wikipedia.org/wiki/LaTeX "wikilink")[巨集](../Page/巨集.md "wikilink")软件。LaTeX有很多预设的模版、样式。它比TeX更为结构化，如包含了供建立[索引](https://zh.wikipedia.org/wiki/索引 "wikilink")、[表格](https://zh.wikipedia.org/wiki/表格 "wikilink")、[列表等的巨集和](https://zh.wikipedia.org/wiki/列表 "wikilink")[公用软件](https://zh.wikipedia.org/wiki/公用软件 "wikilink")。例如：

``` latex
\documentclass[a4paper]{book}
\begin{document}
\section{ ... a title }
\subsection{ ... a subtitle}
%% Text goes here
\end{document}
```

执行

    latex myfile.tex
    dvips myfile.dvi

会建立一本为PostScript档的书。如要建立PDF档则可使用

    pdflatex myfile.tex

## 特性

TeX软件在当时拥有其他排版软件没有或不成熟的功能。其中有一些功能得益于排版算法的创新，其中很多成为了高德纳的学生的论文主题。尽管有些功能现在已经被其他排版系统所实现，但仍有部分功能是TeX所特有的，比如数学公式的自动间距调整。

### 数学公式的自动间距调整

[AMS_Euler_sample_math.svg](https://zh.wikipedia.org/wiki/File:AMS_Euler_sample_math.svg "fig:AMS_Euler_sample_math.svg")。\]\] 由于TeX的设计目标是实现高质量的书籍排版，高德纳在数学公式的排版上下了很大功夫。\[4\]\[5\] 他研究了三种按照老方法排版、排版质量高的书籍：[艾迪生韦斯利](../Page/艾迪生韦斯利.md "wikilink")出版社（即高德纳的《[计算机程序设计艺术](../Page/计算机程序设计艺术.md "wikilink")》的出版商）的出版物，尤其是汉斯·沃尔夫和[约瑟夫·拉格朗日](../Page/约瑟夫·拉格朗日.md "wikilink")的书籍《Thermodynamics Innovation》（1856）、数学期刊《》、和数学期刊《》。高德纳通过研究其数学公式的排版，总结出了一套数学公式内部间距的规则，并将其用于TeX。\[6\] TeX排版数学公式时只是提供了一个间距调整引擎，实际的间距大小由数学字体提供。比如TeX默认的[Computer Modern字体提供了一套成熟的间距参数](../Page/Computer_Modern.md "wikilink")，可以直接使用。

TeX的数学排版功能并非十全十美，有时也招来部分批评。比如TeX诞生的时代的部分机器由于容量不够，不足以存储TeX的所有字体参数，在部分场合需要hack才能正常使用。在美学方面，TeX对根号的处理也招致批评。\[7\]

[OpenType](../Page/OpenType.md "wikilink")字体技术的数学字体参数基于TeX。\[8\]\[9\]\[10\]

### 断字与断行

与手动排版相比，计算机排版系统可以自动处理断行问题。大部分排版系统都采用[首次拟合法处理断行](https://zh.wikipedia.org/wiki/贪心法 "wikilink")，即一行一行处理，一行处理完就不管了，因此一旦遇到較長的專有名詞，前面排版正常，後面間距卻非常的寬。TeX的方法是一次处理一个自然段，尝试每一种断行方法，然后选出最优解。两种方法的差异如下：（此演示不考虑断字）

```
  The quick brown fox jumps over          The  quick  brown  fox   jumps
the lazy dog. The words here are        over  the  lazy  dog.  The words
quite  short.  Aren't they?  But        here  are  quite  short.  Aren't
long     ones      such       as        they?  But  long  ones  such  as
perhydrocyclopentanophenanthrene        perhydrocyclopentanophenanthrene
may appear.                             may appear.
```

左边的例子是首次拟合法的结果。第4行单词间的空集中在一处不美观，TeX的方法由于考虑了所有的情况，所以一般情况下能找出较好的方法（即把空分散在1\~4段）。

TeX的断行算法里有一个叫做badness（“不美观度”）的参数，空格伸缩量越大badness越大。每一种断行的方式都有一个总体的衡量标准，包括badness、断行、以及行与行之间的疏密差异等。TeX其实并不考虑所有的2<sup>*n*</sup>种情况，而是采用一种算法复杂度仅为*O*(*n*<sup>2</sup>)的[最短路径算法](../Page/最短路问题.md "wikilink")，加上不考虑空格伸缩量太大的情况，断行所用的时间几乎和段落大小成正比。在分页问题上，TeX并不采用一种考虑所有情况，得出最优解的算法，而是用一页一页处理的方法，因为一是分页的灵活性没有断行那样高，二是当时的计算机没有足够的速度。但是，TeX仍然有避免[寡行和孤行](../Page/寡行和孤行.md "wikilink")的功能。的一篇论文指出，考虑到图表的放置位置的完美分页算法可能为[NP完全](../Page/NP完全.md "wikilink")。TeX的断行算法后来被[Adobe InDesign等](../Page/Adobe_InDesign.md "wikilink")[桌面出版](../Page/桌面出版.md "wikilink")软件所采用。

在断行时，如果一遍不成功，TeX会尝试[断字](../Page/连字号.md "wikilink")，即把一个诸如“computer”的多音节单词断成“com-”和“puter”或“compu-”和“ter”分在两行。TeX82采用了一套Frank Liang于1983年发明的断字算法。这套算法采用“匹配项”的方法。“匹配项”的作用是找到单词中可能出现的一些字母组合，然后在适当的位置插入数字来表示可能/不可能的断字点。这些“匹配项”对单词的字母与字母之间会给予是否为断字点提示。提示有相对的强弱。如果提示互相冲突，则强的会覆盖弱的。最后留下来的提示决定一处是否为断行点。TeX自带4447条“匹配项”，从.ach4开始到z4zy结束。所有“匹配项”使用1到5这5个数字，其中奇数表示可能为可断字点，偶数表示不为可断字点，大的数字的话语权强于小的数字。例如，h5elo的含义是，单词中如果出现“helo”，那么在“h”和“e”之间有很大把握为可断行点（例如“bach-e-lor”和“ech-e-lon”）；hach4的含义是，单词中如果有“hach”，则“h”后面很可能不是断字点（如“tooth-aches”），虽然把握没有数字5的那么大。例如，对于单词“encyclopedia”，对得上的匹配项有`1c4l4, 1cy, 1d4i3a, 4edi, e3dia, 2i1a, ope5d, 2p2ed, 3pedi, pedia4, y1c`。插入完所有数字后，留下来的数字中的最大值为`en1cy1c4l4o3p4e5d4i3a4`，最后奇数处为可断行点：“en-cy-clo-pe-di-a”。

这种方法可以找到约90%的正确断字点，几乎从不出错。而且，TeX有一个“断字特例表”的功能，对于自带断字算法出错的单词可以手动处理。TUG（TeX用户组）有一份英语单词的特例表。另外，TeX默认不会把单词在前两个字母或后三个字母之间断开，所以encyclopedia一词不会断成“encyclopedi-”和“a”（这样不好看）。

## 开发

TeX是非常稳定的程序，高德纳悬赏奖励任何能够在TeX中发现[程序漏洞](https://zh.wikipedia.org/wiki/程序錯誤 "wikilink")（bug）的人。每一个漏洞的奖励金额从2.56美元（16进制的一美元）开始，以后每发现一个bug，都会翻倍，直到目前的327.68美元封顶。然而高德纳从未因此而损失大笔金钱，因为TeX中的漏洞极少，而真正发现漏洞的人在获得支票后往往不愿将其兑现。\[11\]\[12\]\[13\]到目前为止，关于TeX的最后一个bug是被Oleg Bulatov发现的。

### 衍生软件

有许多衍生出来的文档处理程序就是基于TeX的，主要的有：

  - ：[美国数学学会](https://zh.wikipedia.org/wiki/美国数学学会 "wikilink")（American Mathematical Society）发表的TeX版本。绝大多数的AMS-TeX功能可以利用AMS包在LaTeX上实现，称为AMS-TeX。

  -
  - jadeTeX

  - [LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink")（Lamport TeX）：流行的文档处理程序

  - [LuaTeX](../Page/LuaTeX.md "wikilink")

  -
  - [MikTeX](https://zh.wikipedia.org/wiki/MikTeX "wikilink")

  - [pdfTeX](https://zh.wikipedia.org/wiki/pdfTeX "wikilink")

  -
  - ：[GNU](../Page/GNU.md "wikilink")的文档处理系统

  - [TeX Live](../Page/TeX_Live.md "wikilink")

  - [XeTeX](../Page/XeTeX.md "wikilink")

### 兼容工具

[TeXmacs是一个所见即所得的科学文档编辑器](https://zh.wikipedia.org/wiki/TeXmacs "wikilink")，利用TeX字体作为显示字体，具有类似[Emacs](../Page/Emacs.md "wikilink")的编辑方式。它可以导出为TeX文本，[PS](../Page/Adobe_Photoshop.md "wikilink")，[PDF文档](https://zh.wikipedia.org/wiki/PDF "wikilink")，以及[HTML](../Page/HTML.md "wikilink")，[XML](../Page/XML.md "wikilink")页面。[LyX](../Page/LyX.md "wikilink")也是一个类似的工具。

## 发音和拼写

TeX这个词的标准发音为，其中相当于中文裡「赫」字的[声母](../Page/声母.md "wikilink")，或者[苏格兰语](../Page/低地蘇格蘭語.md "wikilink")“loch”一词中“ch”的发音（X其实是[希腊字母](../Page/希腊字母.md "wikilink") ）。發音接近「泰赫」。在[英语](../Page/英语.md "wikilink")和[法语](../Page/法语.md "wikilink")中实际通常读作，發音接近「泰克」。TeX这个词来自[希腊文中的](https://zh.wikipedia.org/wiki/希腊文 "wikilink")  （TEXNH），希腊文意为“艺术”和“制造”，也是英语中 *technical*（技术）的词源。书写时，三个字母都是大写，字母E应当低于其他两个字母。而不支援下标的系统则只能这样书写：“TeX”。

TeX的用户喜欢创造一些和TeX有关的词汇，例如“TeXnician”（与英语单词“technician”，技工的发音相近，意为“TeX用户”），“TeXhacker”（“TeX程序员”，“TeX黑客”）和“TeXnique”（与英语单词“technique”，技巧的发音相近，意为“TeX水平”）等。另有人發明一詞為“TeXpert”（“TeX高手”），但是[高德納本人反對這一名稱](https://zh.wikipedia.org/wiki/高德納 "wikilink")，因為這裡TeX一詞的讀法是錯誤的\[14\]。

## 参见

  - [文档标记语言比较](../Page/文档标记语言比较.md "wikilink")

  - [公式编辑器](https://zh.wikipedia.org/wiki/公式编辑器 "wikilink")

  -
  -
  -
  - [LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink")

## 脚注

## 参考文献

  - Donald Knuth: *The TeX book*, Massachusetts: Addison-Wesley, 1984

## 外部链接

  - [中文TeX用户组](http://www.ctex.org/)
  - [TeX用户组](http://www.tug.org/)
  - [cwTeX](http://homepage.ntu.edu.tw/~ntut019/cwtex/cwtex.html)

[Category:1978年软件](https://zh.wikipedia.org/wiki/Category:1978年软件 "wikilink") [Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink") [Category:排版软件](https://zh.wikipedia.org/wiki/Category:排版软件 "wikilink") [Category:自由TeX软件](https://zh.wikipedia.org/wiki/Category:自由TeX软件 "wikilink") [Category:高德纳](https://zh.wikipedia.org/wiki/Category:高德纳 "wikilink")

1.  Knuth and Plass, p. 144
2.  Donald E. Knuth, *[Knuth meets NTG members](http://maps.aanhet.net/maps/pdf/16_15.pdf)*, NTG: MAPS. **16** (1996), 38–49. Reprinted as *Questions and Answers, III*, chapter 33 of *Digital Typography*, p. 648.
3.  Donald E. Knuth. [*The New Versions of TeX and METAFONT*](http://www.tug.org/TUGboat/Articles/tb10-3/tb25knut.pdf), TUGboat **10** (1989), 325–328; **11** (1990), 12. Reprinted as chapter 29 of *Digital Typography*.
4.
5.
6.  Donald E. Knuth. *Questions and Answers II*, TUGboat **17** (1996), p. 355–367. Reprinted as chapter 32 of *Digital Typography*, p. 620–624.
7.  Ulrik Vieth (2001) [Math typesetting in TEX: The good, the bad, the ugly](http://www.ntg.nl/maps/26/27.pdf)
8.
9.
10. <http://www.ntg.nl/maps/38/03.pdf>
11. Kara Platoni, [Love at First Byte](http://www.stanfordalumni.org/news/magazine/2006/mayjun/features/knuth.html) . Stanford Magazine, May–June 2006
12. The [History of TeX](http://www.tug.org/whatis.html)
13. TeX — Beauty and Fun, <http://www.ctex.org/documents/shredder/tex_frame.html>
14.