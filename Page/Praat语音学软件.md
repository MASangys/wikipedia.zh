**Praat语音学软件**，原名**Praat: doing phonetics by
computer**，通常简称**Praat**，是一款[跨平台的多功能](../Page/跨平台.md "wikilink")[语音学专业](../Page/语音学.md "wikilink")[软件](../Page/软件.md "wikilink")，主要用于对[数字化的](../Page/数字化.md "wikilink")[语音](../Page/语音.md "wikilink")[信号进行](../Page/信号.md "wikilink")[分析](../Page/语音分析.md "wikilink")、标注、[处理及](../Page/数字信号处理.md "wikilink")[合成等实验](../Page/语音合成.md "wikilink")，同时生成各种[语图和文字报表](../Page/语图.md "wikilink")。

## 背景概要

### 命名

*Praat*（[国际音标](../Page/国际音标.md "wikilink")
或）在[荷兰语中是](../Page/荷兰语.md "wikilink")**说话**或**交谈**的意思，而*doing
phonetics by
computer*即**使用计算机研究语音学**。作为软件的名称，简便起见，不妨合起来翻译作**Praat语音学软件**。

### 作者

Praat的作者是[荷兰](../Page/荷兰.md "wikilink")[阿姆斯特丹大学人文学院语音科学研究所的主席](../Page/阿姆斯特丹大学.md "wikilink")**保罗·博尔斯马（Paul
Boersma）**教授和**大卫·威宁克（David Weenink）**助教授。

### 版本

Praat最早的版本发布于1993年。起初用户还无法自由地下载使用，但从2003年6月5日的4.1版起，作者取消了专门的授权并开放了绝大部分[源代码](../Page/源代码.md "wikilink")。进一步，从2004年3月4日的4.2版起，作者开放了全部源代码，使Praat成为采用[GNU通用公共许可证授权的](../Page/GNU通用公共许可证.md "wikilink")[开源软件](../Page/开源软件.md "wikilink")。相隔短则一天，长则月余，作者就会发布最近修订的版本，消除旧的故障，增添新的功能。2007年12月10日发布了5.0版。\[1\]

Praat目前支持在多种计算机平台上运行，包括：

  - [Macintosh](../Page/Mac_OS_X.md "wikilink")
  - [Windows](../Page/Microsoft_Windows.md "wikilink")\[2\]
  - [Linux](../Page/Linux.md "wikilink")，[FreeBSD](../Page/FreeBSD.md "wikilink")
  - [SGI](../Page/硅谷图形公司.md "wikilink")，[Solaris](../Page/Solaris.md "wikilink")，[HPUX](../Page/HP-UX.md "wikilink")

作者为以上平台的用户提供已[编译好的](../Page/编译.md "wikilink")[目标文件](../Page/目标代码.md "wikilink")。高级用户还可以在其他[操作系统平台上修改并编译源代码后运行Praat程序](../Page/操作系统.md "wikilink")。

Praat能够在**[图形](../Page/图形用户界面.md "wikilink")**和**[命令行](../Page/命令行界面.md "wikilink")**两种用户界面下运行，但两种界面的目标文件（可执行文件）各自独立，以Windows版为例，即分为*praat.exe*和*praatcon.exe*两个[可执行文件](../Page/可执行文件.md "wikilink")，其中后者只能通过命令行方式从**控制台**调用。

## 功能简介

> **请注意**：和[维基百科中其他介绍软件产品的条目一样](../Page/维基百科.md "wikilink")，本条目以下章节中对Praat的功能进行的简要介绍仅供读者参考，不可能也无意于代替由开发者提供的手册文档。

### 用途概述

Praat的主要功能是对[自然语言的](../Page/自然语言.md "wikilink")[语音信号进行](../Page/语音.md "wikilink")**[采集](../Page/录音.md "wikilink")**、**分析**和**标注**，并执行包括**[变换](../Page/语音变换.md "wikilink")**和**[滤波](../Page/电子滤波器.md "wikilink")**等在内的多种处理任务。作为分析结果的文字报表和**语图**，不但可以输出到[个人计算机的](../Page/个人计算机.md "wikilink")[磁盘文件中和](../Page/计算机文件.md "wikilink")[终端的](../Page/终端.md "wikilink")[显示器上](../Page/显示器.md "wikilink")，更能够输出为精致的**[矢量图](../Page/矢量图形.md "wikilink")**或[位图](../Page/位图.md "wikilink")，供写作和[印刷学术论文与专著使用](../Page/印刷.md "wikilink")。

此外，Praat还可用于**合成语音或[声音](../Page/声音.md "wikilink")**、**[统计分析](../Page/统计.md "wikilink")[语言学数据](../Page/语言学.md "wikilink")**、**辅助语音教学测试**，等等。随着新版本的发布，Praat的功能和用途仍在不断扩展，但实际上多数用户只需要用到一小部分功能。

### 构成与界面

Praat程序由**外围**与**核心**两层构成。外围主要包括**对象窗口**（Object window，标题为*Praat
objects*）、**画板窗口**（Picture window，标题为*Praat
picture*）、**脚本编辑器**（ScriptEditor）、**按钮编辑器**（ButtonEditor）、**数据编辑器**（DataEditor，无固定标题）、**情报窗口**（Info
window）和**手册**（Manual）等不负责具体的信号处理任务的辅助性组件。Praat每次启动时，自动打开对象窗口和画板窗口。对象窗口也是Praat的**主控窗口**，在Praat程序的会话进程中始终打开，大部分功能也需要由此展开。**[脚本](../Page/脚本语言.md "wikilink")**（script）在是Praat中执行各种操作的[宏命令](../Page/宏.md "wikilink")，能够简化日常操作，减少出错，并实现大量复杂操作的[自动化](../Page/自动化.md "wikilink")。按照作者的最初设想，除了Praat之外还会有其他程序使用与Praat相同的外围程序，但多年来一直没有实现\[3\]。

Praat的核心部分即具体负责语音信号处理任务的程序，包括所有的**对象类型**（Types of
object）、**动作命令**（Action
commands）和相应的**编辑器**（Editors）。**对象**（object）是由Praat程序所构建的数据存储载体，有很多种类型，如**声音**（Sound）、**文本表格**（TextGrid）、**音高**（Pitch）、**变换**（Manipulation），等等，通过执行编辑器或**动态选单**（Dynamic
menu）中的动作命令完成对数据的查询（数字化测量）和处理（生成新对象）任务。**声音编辑器**（SoundEditor）和**文本表格编辑器**（TextGridEditor）是Praat中最常用的两种编辑器，多用于涉及语音分析和标注的科学研究与课堂教学。

### 语音分析与标注

对语音信号的分析与标注是Praat的基本功能。在Praat中录音或读取音频文件后，可以按用户要求显示以下多种**语图**：

  - [三维语图](../Page/三维语图.md "wikilink")（spectrogram）
  - [频谱切片](../Page/频谱.md "wikilink")（spectral slices）
  - 音高（即[基频](../Page/基频.md "wikilink")\[4\]）曲线（pitch contour）
  - [共振峰曲线](../Page/共振峰.md "wikilink")（formant contour）
  - 音强曲线（intensity contour）

所有的语图都可以绘制成精致的矢量图，也可以将相应的对象数据保存为磁盘文件。除直观的语图外，Praat也能通过对信号数据的计算获得各种**文字情报**，比如音高、时长、第一或第二共振峰[频率的数值等](../Page/频率.md "wikilink")，也同样可以根据需要输出为适当的形式。

Praat允许用户对语音数据进行标注，包括[音段切分和文字注释](../Page/音段.md "wikilink")，标注的结果还可以独立保存和交换。然而，Praat本身缺乏**自动**标注功能，只能对有声段和静默段进行简单的识别，而不能对[音节](../Page/音节.md "wikilink")、[节拍群等](../Page/节拍群.md "wikilink")[语流单位加以切分](../Page/语流.md "wikilink")。\[5\]

### 其他功能

Praat还具有许多其他功能，包括：

  - 语音实验：[嗓音分析](../Page/嗓音.md "wikilink")、[多重强迫选择实验](../Page/多重强迫选择.md "wikilink")、滤波、[声源滤波合成](../Page/声源滤波合成.md "wikilink")、[发音合成等](../Page/发音合成.md "wikilink")。
  - 辅助教学：[前馈神经网](../Page/前馈神经网.md "wikilink")、[优选论学习等](../Page/优选论.md "wikilink")。
  - 统计分析：[主成分分析](../Page/主成分分析.md "wikilink")、[多维量表](../Page/多维量表.md "wikilink")、[判别分析等](../Page/判别分析.md "wikilink")。

其中某些功能的提供与软件作者的研究兴趣有关（例如“优选论学习”），很多不相关的用户可能不会用到。

### 引文著录

写作学术论文或专著时如果用到Praat软件，有必要在参考文献中进行著录。作者推荐的方式是\[6\]：

`Paul Boersma & David Weenink (2005):`
`Praat: doing phonetics by computer (Version 4.5.16) [Computer program].`
`Retrieved Feb 22, 2007, from http://www.praat.org/`

如果不允许引用计算机程序，则改引另一处来源：

`2001 PRAAT, a system for doing phonetics by computer.`
`     Glot International 5(9/10): 341-345.`
`     (These pages include a review by Vincent van Heuven.)`

在汉语期刊中引用时，应另外酌情修改。

## 评价与影响

### 优点

  - 可以免费获得而无需购买（因为是开源软件）。
  - 无需安装即可运行（但严格地说，还不是[绿色软件](../Page/绿色软件.md "wikilink")）。
  - 支持多种操作系统平台。
  - 支持用脚本宏命令和[插件](../Page/插件.md "wikilink")（plug-in）扩展和简化操作。
  - 专业功能强大而完备。
  - 高级用户可以按需修改源代码并重新编译，从根本上扩充原有功能。
  - 附有详细的手册文档。

### 缺点

  - 分析程序采用的某些[数字信号处理](../Page/数字信号处理.md "wikilink")[算法](../Page/算法.md "wikilink")\[7\]仍然不尽如人意，会不可避免地造成迷惑人的假象或产生难以解释的结果。
  - 不能直接访问某些常用音频和图像文件格式，如[WMA格式](../Page/WMA.md "wikilink")；对[MP3格式的支持也仅限读取](../Page/Mp3.md "wikilink")（[软件许可证方面的原因](../Page/软件许可证.md "wikilink")）。
  - 由于最初并不是在Windows平台下开发的，用户界面的设计和某些操作习惯可能会让Windows用户感到不便，比如没有鼠标右键菜单，键盘按键名称也是Macintosh机器的。
  - 目前尚无除[英语以外其他语言的版本](../Page/英语.md "wikilink")，部分用户可能会遇到语言障碍。
  - 尚未全面支援[Unicode](../Page/Unicode.md "wikilink")。档案名称如果包含[汉字](../Page/汉字.md "wikilink")，在Praat对象窗口中会被底线取代。在TextGrid对象中如果输入[汉字](../Page/汉字.md "wikilink")，屏幕上会显示乱码（但所储存文本仍旧正常，只是显示不出来）。标注时所使用的[国际音标字型为](../Page/国际音标.md "wikilink")[SIL
    Doulos
    IPA 1993](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=encore-ipa)，而非SIL推荐的Unicode
    字型\[8\]。

### 影响

  - 尽管还存在一些缺点和不足，毕竟瑕不掩瑜，Praat已成为全世界[实验语音学](../Page/实验语音学.md "wikilink")、[心理语言学](../Page/心理语言学.md "wikilink")、[语言教学](../Page/语言教学.md "wikilink")、[语言调查](../Page/语言调查.md "wikilink")、[自然语言处理等相关领域的高校教师](../Page/自然语言处理.md "wikilink")、学生和其他研究人员普遍选用的专业软件。
  - Praat的普及，终结了从事实验语音学特别是[声学语音学](../Page/声学语音学.md "wikilink")\[9\]研究必须依赖价格昂贵的实验仪器的时代，许多语音学实验室不再使用各种陈旧的[语图仪](../Page/语图仪.md "wikilink")，而仅仅配置有安装了Praat等软件的个人计算机和灵敏的[麦克风作为必备的器材](../Page/麦克风.md "wikilink")。
  - 部分Praat高级用户公开发布自己编写的脚本甚至插件，其中不乏实用性较高者，既扩充了软件的功能，也扩大了影响。
  - 在中国大陆：尽管只有英语版本可用，许多高校的教师在语音学等相关课程上用Praat进行教学演示，在研究工作中自己使用并鼓励学生克服语言障碍学习掌握Praat的基本功能。越来越多的学术论文和专著当中可以见到用Praat生成的语图和文字报表。不过，总体而言，了解并能够用好这一工具的专业人士还比较少。

## 参考书目

专门介绍Praat使用方法的著作，在世界范围内也并不多见。在中国大陆，有些语音学研究者也作有非正式出版的讲义，而正式出版的学术专著也可能特辟章节简单讲解，列举如下（按出版日期先后排序）：

  - Praat语音软件使用手册／熊子瑜（2004年现代语音学暑期讲习班课程讲义，有电子版）
  - 语音特征分析和Praat软件的使用／熊子瑜（2005年现代语音学暑期讲习班课程讲义，有电子版）
  - 语言、语音与技术／王士元，彭刚著．－上海：上海教育出版社，2006年8月（中国当代语言学丛书，ISBN
    7-5444-0714-4）——第十二章，Praat简介

## 外部链接

### 官方资源

本文编撰的主要参考文献即以下的官方网站内容\[10\]：

  - [Praat: doing phonetics by
    computer](http://www.fon.hum.uva.nl/praat/)
    Praat官方网站\[11\]，提供最新版软件及源代码下载等
  - [Praat User List](http://groups.yahoo.com/group/praat-users)
    作者参与的Praat用户讨论组，位于[Yahoo\!
    Groups](http://groups.yahoo.com)

<!-- end list -->

  - [荷兰阿姆斯特丹大学](http://www.uva.nl/) [人文学院](http://www.hum.uva.nl/)
    [语音科学研究所](http://www.fon.hum.uva.nl/) 两位作者所在单位的网站

### 第三方资源

许多有经验的Praat用户通过[因特网发布自己编写的使用教程](../Page/因特网.md "wikilink")、脚本和插件，但不一定允许免费自由下载（按资源类别和作者姓名拉丁字母／汉语拼音顺序排序）：

  -
    **使用教程**

<!-- end list -->

  - [Goldman, Jean-Philippe
    (2004)](https://web.archive.org/web/20060926140136/http://www.unige.ch/lettres/linge/ppp/praat_tutorial.pdf)。Praat
    tutorial and resources.
  - \[<http://www.slp.utoronto.ca/English/page-1-364-1.html> van
    Lieshout, Pascal (2005)\]。Praat short tutorial: An introduction.
  - [Welby, Pauline & Ito, Kiwako
    (2002)](https://web.archive.org/web/20060603171912/http://www.ling.ohio-state.edu/~welby/PRAAT/welby-ito-praat-tutorial.pdf)。Praat
    tutorial.
  - [Wood, Sidney
    (2005)](http://www.ling.lu.se/persons/Sidney/praate/index.html)。Beginners
    guide to Praat.
  - [熊子瑜（2004）](https://web.archive.org/web/20070124195509/http://ling.cass.cn/yuyin/staff/praat_manual.pdf)。Praat语音软件使用手册。2004年现代语音学暑期讲习班课程讲义。
  - [徐清白（2005-2007）](http://praatman.googlepages.com/)。Praat手册汉语版。官方手册的汉语翻译版本HTML文档（未完成）.

<!-- end list -->

  -
    **视频教程**

<!-- end list -->

  - [Praat Language Lab](http://praatlanguagelab.com/)
    教导英语教学的师生如何以Praat软件改善发音。

<!-- end list -->

  -
    **脚本**

<!-- end list -->

  - [Agustín Gravano
    (2006)](http://www1.cs.columbia.edu/~agus/tobi/)。ToBI Annotation
    Environments
  - [Bert Remijsen
    (2004)](http://www.ling.ed.ac.uk/~bert/praatscripts.html)。Bert
    Remijsen's Praat scripts
  - [CHILDES
    (n.d.)](https://web.archive.org/web/20060907171053/http://childes.psy.cmu.edu/tools/praat.html)。Slicing
    and Splicing with Praat.
  - [Chris Darwin
    (2005)](http://www.lifesci.sussex.ac.uk/home/Chris_Darwin/Praatscripts/)。Praatscripts.
  - [Florian Jaeger
    (2004)](https://web.archive.org/web/20051205102821/http://www.stanford.edu/~tiflo/teaching/tutorials/T_Jaeger_042104-praat%20scripting_files/frame.htm)。Praat
    scripting tutorial Basics.
  - [Gareth Walker
    (2005)](https://web.archive.org/web/20050222210842/http://www-users.york.ac.uk/~gw115/praat/)。Praat.
  - [Guillaume Rolland
    (2000)](https://web.archive.org/web/20061124103539/http://www.icp.inpg.fr/~loeven/Praat/momel_english.html)。Automatic
    stylisation of the fundamental frequency F0 using MOMEL.
  - [Ingmar Steiner
    (2005)](http://www.coli.uni-saarland.de/~steiner/?page=praat.scripts&lang=en)。Praat
    Scripts.
  - [Johan Frid
    (2006)](http://www.ling.lu.se/persons/JohanF/PRAATSCRIPTS/)。Praat
    Scripts.
  - [John Tøndering
    (n.d.)](https://web.archive.org/web/20070205150655/http://www.cphling.dk/pers/johtnd/praat/my_praat.htm)。Praat.
  - [Katherine Crosswhite
    (n.d.)](https://web.archive.org/web/20070302200600/http://www.ling.rochester.edu/people/cross/scripts.html)。Praat
    Scripts and Other Materials.
  - [Kyuchul Yoon
    (n.d.)](http://www.ling.ohio-state.edu/~kyoon/scripts/praat/)。praat.
  - [Mietta Lennes
    (2006)](http://www.helsinki.fi/~lennes/praat-scripts/)。Mietta's
    Praat scripts.
  - [Pauline Welby
    (n.d.)](https://web.archive.org/web/20060601014025/http://www.icp.inpg.fr/~welby/praat.html)。Pauline
    Welby's Praat Info.
  - \[<http://fips.igl.uni-freiburg.de/~peter/praatscripts.htm> Peter
    Gilles (2000)\]。Kleine Sammlung von PraatScripts.
  - [Piet Mertens
    (2004-2005)](https://web.archive.org/web/20070502133958/http://bach.arts.kuleuven.be/pmertens/prosogram/userguide.html#tools)。Prosogram
    Additional tools.
  - [Setsuko Shirai
    (n.d.)](https://web.archive.org/web/20070928003611/http://home.myuw.net/ssetsuko/praat.html)。Praat
    Scripts
  - [许毅
    (2006)](https://web.archive.org/web/20070515162429/http://www.phon.ucl.ac.uk/home/yi/downloads.html)。TimeNormalizeF0.praat

<!-- end list -->

  -
    **插件**

<!-- end list -->

  - [Mertens, Piet
    (2005)](https://web.archive.org/web/20070331164006/http://bach.arts.kuleuven.be/pmertens/prosogram/)。Prosogram.
  - [Plichta, Bartek
    (2006)](https://web.archive.org/web/20070406223446/http://bartus.org/akustyk/)。Akustyk.

另外，在一些论坛网站开设的语音学专业版面上，也聚集了水平各异的Praat用户（按论坛名称汉语拼音排序）：

  - [北大中文论坛：语音实验技术版](https://web.archive.org/web/20070314111551/http://www.pkucn.com/forumdisplay.php?fid=126)
  - [复旦中文论坛：语音学与实验语音学版](https://web.archive.org/web/20070830182818/http://chinese.fudan.edu.cn/forum/index.asp?boardid=14)

## 脚注

<references />

[Category:语言学](https://zh.wikipedia.org/wiki/Category:语言学 "wikilink")
[Category:语音学](https://zh.wikipedia.org/wiki/Category:语音学 "wikilink")
[Category:语言学软件](https://zh.wikipedia.org/wiki/Category:语言学软件 "wikilink")
[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")

1.  详见[What's
    new?（Praat手册文档）](http://www.fon.hum.uva.nl/praat/manual/What_s_new_.html)的全部记载。
2.  大约从4.6版起分成两个版本，分别适用于Windows 95/98/NT4/ME系统与Windows 2000/XP/Vista系统。
3.  参看[What's
    new?（Praat手册文档）](http://www.fon.hum.uva.nl/praat/manual/What_s_new_.html)
    2005年9月1日4.3.21版更新说明的第2条。
4.  严格地讲，**音高**是一个[听觉的](../Page/听觉.md "wikilink")[心理学概念](../Page/心理学.md "wikilink")，而**基频**是一个[物理学概念](../Page/物理学.md "wikilink")，但本文和Praat软件的界面与文档中将二者视为等同的概念术语，*pitch*大多翻译作*音高*，而*f0*或*f<sub>0</sub>*一律翻译作*基频*。
5.  音节的概念对于不同语言不尽相同，即便是同一种语言，学术界也存在争议。在工程实现中，具体的**语种**和**应用目的**决定音节切分的标准和程序。节拍群等更不必说。因此，这类自动切分程序由各种语言的研究者和工程师提供可能更为合适。
6.  参看[Paul Boersma's writings on the Praat
    program](http://www.fon.hum.uva.nl/paul/praat.html)或[FAQ: How to
    cite
    Praat（Praat在线帮助）](http://www.fon.hum.uva.nl/praat/manual/FAQ__How_to_cite_Praat.html)。
7.  有关Praat软件分析算法的详细情况，可以参看[Paul Boersma's writings on the Praat
    program](http://www.fon.hum.uva.nl/paul/praat.html)所列文献。
8.  参见官方网站的[下载说明](http://www.fon.hum.uva.nl/praat/download_win.html)。Praat自3.2版开始使用SIL字型，沿袭至今。[SIL
    Doulos
    IPA 1993](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=encore-ipa)是早期广为使用的国际音标字型，但SIL已将其[作废](http://linguistlist.org/issues/17/17-1638.html#1)，改推荐[Unicode的国际音标字型](../Page/國際音標#免費國際音標字體下載.md "wikilink")。在使用者讨论群组曾有人[询问](http://uk.groups.yahoo.com/group/praat-users/message/1029)如何在Praat软件中显示非印欧语系的字元，但作者博尔斯马[表示](http://uk.groups.yahoo.com/group/praat-users/message/1030)，目前尚无此功能，除非他将整个软件转换成Unicode版本。作者[承诺](http://uk.groups.yahoo.com/group/praat-users/message/3173)将在4.7版中提供更多对Unicode的支持，并已从4.6.07版开始逐步提供相应的测试性实现。根据[官方公布的消息](http://www.fon.hum.uva.nl/praat/manual/What_s_new_.html)，自5.0.21版起，Praat支持在标注功能中使用汉字、[韩文](../Page/韩文.md "wikilink")、[阿拉伯文](../Page/阿拉伯文.md "wikilink")、[基里尔字母等字符](../Page/基里尔字母.md "wikilink")。
9.  听觉语音学或心理语言学的实验涉及对人脑功能的观测，仍然需要特殊的仪器，而且价格十分昂贵。
10. 其中一部分也见于Praat软件所附手册文档。
11. www.praat.org只是一个自动转向这里的域名。