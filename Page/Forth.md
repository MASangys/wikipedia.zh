**Forth**是六十年代末期，由[查理斯·摩爾发展出来在天文台使用的電腦](https://zh.wikipedia.org/wiki/查理斯·摩爾 "wikilink")[自動控制系統及](https://zh.wikipedia.org/wiki/自動控制系統 "wikilink")[程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")，允许使用者很容易組合系統已有的簡單指令，定义成為功能较复杂的高階指令。由於其結構精簡、執行快速、操作方便，廣為當代天文學界使用。八十年代以後，有愛用者成立**[Forth
Interest
Group](https://zh.wikipedia.org/wiki/Forth_Interest_Group "wikilink")**在世界各地推廣，並陸續在各类计算机上建立Forth系統及標準的语言。

## 简介

Forth以可延伸的词典为核心，采用兩個[堆栈为基础的高度](../Page/堆栈.md "wikilink")[模块化结构](https://zh.wikipedia.org/wiki/模块化 "wikilink")，是一种将[解译器和](https://zh.wikipedia.org/wiki/解译器 "wikilink")[编译器合并运用的双态系统](https://zh.wikipedia.org/wiki/编译器 "wikilink")。使用FORTH，可在[编译过程中检测差错](https://zh.wikipedia.org/wiki/编译 "wikilink")，并且逐步扩充编译程序代码。利用標準Forth所写的程序几乎不必大修改，就能在各类计算机运作；甚至在特別设计的电脑上可以完全放棄组合语言，直接由Forth转化成机器语言，就好像现代的[Java虚拟机](../Page/Java虚拟机.md "wikilink")。同时，使用者也可以把自己定义的运算功能加入编译器中，使Forth语言更有弹性。[台湾的](https://zh.wikipedia.org/wiki/台湾 "wikilink")[黃大一及現旅居美國的](../Page/黃大一.md "wikilink")[丁陳漢蓀是这方面的专材](https://zh.wikipedia.org/wiki/丁陳漢蓀 "wikilink")，黃大一在1980年代后期开发过两部完全使用Forth的[嵌入式系统](../Page/嵌入式系统.md "wikilink")，丁陳漢蓀於2002年代即以eForth架構打通軟硬体任督二脈發展完成Forth芯片，並將畢生研究Forth的心得於2003年代編輯成書[嵌入式系統：使用eForth](https://web.archive.org/web/20070929105634/http://www.books.com.tw/exep/prod/booksfile.php?item=0010243635)。

Forth是一种可扩展的，交互式的语言。最初为小型的嵌入式电脑设计的，现在它几乎可以在任何主流的芯片上解译和编译，甚至已有多種可直接运行Forth指令的芯片。在电子-{表格}-，专家系统，多用户数据库，和分布式实时控制系统中有广泛的应用。表面来看，Forth是一种基于堆栈的概念机。例如要计算（3+4）\*5，程序就是：3
4 + 5
\*。首先把3和4入堆栈，然后调用+子程序，把堆栈的最顶上两个元素取出（也就是3和4）进行加法运算，然后把结果入堆栈，然后把5入堆栈，然后调用\*子程序，把最顶的2个元素，也就是7和5取出，并进行乘法运算，然后把结果入堆栈，最后的。把结果从堆栈中取出列印。事实上这是一种最简单有效的概念机。当然Forth远远不止这些。

最常用在[内建程序](https://zh.wikipedia.org/wiki/内建程序 "wikilink")，以及[系统与过程控制](https://zh.wikipedia.org/wiki/系统与过程控制 "wikilink")，它也用在[微电脑上](https://zh.wikipedia.org/wiki/微电脑 "wikilink")。主要运用在[数据搜集与处理](https://zh.wikipedia.org/wiki/数据搜集 "wikilink")、[图形处理](https://zh.wikipedia.org/wiki/图形处理 "wikilink")、[专家系统](../Page/专家系统.md "wikilink")，以及[实时流程控制等](https://zh.wikipedia.org/wiki/实时流程控制 "wikilink")。

## Forth语言的Hello World\!程序

下面是一个在标准输出设备上输出[Hello
World的简单程序](https://zh.wikipedia.org/wiki/Hello_World程序 "wikilink")，这种程序通常作为开始学习编程语言时的第一个程序：

    : run-hello \定义一个单词，名字叫run-hello
      ." Hello, world!" CR ;
    run-hello

只有在编译模式，也就是在定义一个单词的中使用."指令，才能输出字符串。

## 从程序员的角度看Forth

用Forth的“追随者”的话来说，Forth是一种“人机一体”的语言。在程序员的意识中必须要有一台逻辑上的机器（可能是实际的芯片，也可能是虚拟机）。这台机器拥有两个堆栈（数据堆栈和返回堆栈），一个词典（在Forth中的词（word）对应于高级语言的函数或者子程序，若干的词构成词典。）一个内部解释器和一个外部解释器。

和Forth语言一样，也是基于[堆栈的](../Page/堆栈.md "wikilink")[程序设计语言还有](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")[PostScript](../Page/PostScript.md "wikilink")。基于堆栈的工具还有linux下的计算器dc，在其内部是通过堆栈实现的。

使用Forth开发应用程序与使用其他语言开发应用程序的感受有很大的不同。Forth的一切都是透明的，使用者可以看到每一个功能的实现原理和过程，正是由于这一点，Forth可以作为学习操作系统及编程的非常好的工具。关于Forth编程的特点有一个较为贴切的描述："如果C语言给你的感觉是：它是最好的程序设计语言，那么使用Forth给你的感觉则是：自己是最好的程序设计师。”

## MS Windows系列操作系统下的Forth系統

  在微軟的windows操作系统下，一個很好的Forth系統是Win32Forth。
  詳見http://win32forth.sourceforge.net 。

## GNU/Linux系列操作系统下的Forth系統

 GForth是GNU對[ANS
Forth的一個實現](https://zh.wikipedia.org/wiki/ANS_Forth "wikilink")，可在ftp://ftp.gnu.org/gnu/gforth/
下载（另有[HTTP链接](http://ftp.gnu.org/gnu/gforth/)，GNU软件一般推荐通过[镜像站点](http://www.gnu.org/prep/ftp.html)下载）。下載後，使用通常的`configure;
make; make
install`指令即可編譯安裝。GForth還可以內置在著名的文本編輯器[Emacs中使用](../Page/Emacs.md "wikilink")。若出现问题，请阅读`BUILD-FROM-SCRATCH`文件。

GForth同时适用于其他系统，例如[OS
X等UNIX类系统](https://zh.wikipedia.org/wiki/OS_X "wikilink")。

## 外部連結

  - [FIG](http://www.forth.org/)，Forth兴趣小组，是致力于教育和推广Forth编程语言的一个全球性的非盈利组织。
  - [Forth公司主页](http://www.forth.com/)，上面有很多经典的Forth学习资料，历史和教程。
  - [中国Forth程序员](https://web.archive.org/web/20060906065605/http://forth.3322.org/)，Forth程序员社区和资料站。
  - [Starting Forth](http://www.forth.com/starting-forth/)，[Leo
    Brodie写的Forth语言的入门教材](https://zh.wikipedia.org/wiki/Leo_Brodie "wikilink")，该书的特色是使用大量生动的图片来说明程序执行的流程。

[Category:程序設計語言](https://zh.wikipedia.org/wiki/Category:程序設計語言 "wikilink")