> 本文内容由[GNU Radio](https://zh.wikipedia.org/wiki/GNU_Radio)转换而来。


**GNU Radio**是一个[免费的软件开发工具包](../Page/自由软件.md "wikilink")，提供信号处理模块用来实现[软件定义的无线电和](../Page/软件无线电.md "wikilink")[信号处理系统](https://zh.wikipedia.org/wiki/信号处理 "wikilink")。 它可以与外部[RF硬件一起使用](../Page/射頻.md "wikilink")，以创建软件定义的无线电，或者在类似仿真的环境中无需硬件。 它广泛用于业余爱好者，学术和商业环境，以支持无线通信研究和现实世界的无线电系统。

## 概观

[右](https://zh.wikipedia.org/wiki/File:GNU_Radio_Qt_GUI_Plots_Screenshot.png "fig:右") GNU Radio软件提供了构建和运行软件无线电或仅用于通用信号处理应用程序的框架和工具。 GNU Radio应用程序本身通常称为“流程图”，它是连接在一起的一系列信号处理块，从而描述了数据流。

与所有软件定义的无线电系统一样，可重配置性是一个关键特性。不为特定但不同目的而设计的不同无线电，而是使用单个通用无线电，该信号处理软件（这里指代GNU Radio）是处理无线电专用的处理应用。

这些流程图可以用[C ++或](../Page/C++.md "wikilink")[Python](../Page/Python.md "wikilink")编程语言编写 。 GNU Radio基础结构完全用[C ++编写](../Page/C++.md "wikilink")，而许多用户工具都是用[Python](../Page/Python.md "wikilink")编写的。

GNU Radio是一个[信号处理软件包](https://zh.wikipedia.org/wiki/信号处理 "wikilink")，是[GNU Project的一部分](../Page/GNU計劃.md "wikilink")。 它根据[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink") （GPL）的条款分发，大多数项目代码的版权归[自由软件基金会](../Page/自由软件基金会.md "wikilink") \[1\]

## 历史

GNU Radio首次发布于2001年，是一个官方的[GNU包](../Page/GNU软件包列表.md "wikilink") 。 慈善家[约翰·吉尔摩（John Gilmore](https://zh.wikipedia.org/wiki/約翰·吉爾摩 "wikilink") ）为[Eric Blossom筹集了](https://zh.wikipedia.org/wiki/Eric_Blossom "wikilink")320,000美元（美国）的资金，用于代码创建和项目管理职责。

GNU Radio最初是由[麻省理工学院](../Page/麻省理工学院.md "wikilink") （MIT）的[SpectrumWare项目开发的](https://zh.wikipedia.org/wiki/SpectrumWare "wikilink")[Pspectra代码的](https://zh.wikipedia.org/wiki/Pspectra "wikilink")[分支](https://zh.wikipedia.org/wiki/复刻_\(软件开发\) "wikilink") 。 今天GNU Radio不再有任何原始的Pspectra代码是因为在2004年完成了对GNU Radio的完全重写 。 另外值得注意的是，[Pspectra代码库已被用作商业Vanu软件无线电的基础](https://zh.wikipedia.org/wiki/Pspectra "wikilink")。

Matt Ettus作为最早的开发人员加入了该项目，并创建了通用软件无线电外设 （USRP），以提供与GNU Radio软件一起使用的硬件平台。

2010年9月， [Eric Blossom辞去项目负责人职务](https://zh.wikipedia.org/wiki/Eric_Blossom "wikilink")，由Tom Rondeau取代。 \[2\]

在项目早期，核心开发人员开始举办半年一次的*Hackfest* 。 2011 年,GNU Radio 项目开始每年举办一次名为"GRCon"的会议,会议的最后一天通常会举办黑客节。

2016年3月，Tom Rondeau退出，由Ben Hilburn担任项目负责人，Johnathan Corgan担任首席架构师作为长期维护人员。 \[3\]

2018年1月，Marcus Müller取代了Johnathan Corgan在GNU Radio的角色\[4\] 。

## 软件

[右](https://zh.wikipedia.org/wiki/File:GNU_Radio_Companion_Screenshot.png "fig:右") GNU Radio Companion是用于开发GNU Radio应用程序的[图形UI](../Page/图形用户界面.md "wikilink") 。 \[5\] 这是用于[信号处理的GNU](https://zh.wikipedia.org/wiki/信号处理 "wikilink") Radio库的前端。 GRC由Josh Blum在[约翰霍普金斯大学](../Page/约翰·霍普金斯大学.md "wikilink") （2006-2007）学习期间开发，作为*2009年10月Hackfest的* [免费软件](../Page/自由软件.md "wikilink") *发布* 。 从3.2.0版开始，GRC与GNU Radio软件发行版正式捆绑在一起。

GRC实际上是一个[Python](../Page/Python.md "wikilink")代码生成工具。 当流程图在GRC中“编译”时，它会生成[Python](../Page/Python.md "wikilink")代码，用于创建所需的GUI窗口和窗口小部件，并创建和连接流程图中的块。

GRC目前支持使用[Qt](../Page/Qt.md "wikilink")工具包创建[GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")。

### 绘图和显示

GNU Radio提供了许多常见的绘图和数据可视化数据接收器，包括FFT显示，符号星座图和示波器显示。 这些通常既用于调试无线电应用程序，也用作最终应用程序的用户界面。

### PyBOMBS

许多用户创建“out-of-tree模块”以与GNU Radio一起使用。 为了管理这些以及运行GNU Radio所需的依赖关系，该组织创建了[PyBOMBS](https://zh.wikipedia.org/wiki/PyBOMBS "wikilink")（Python Build Overlay Managed Bundle System）项目。 \[6\]

## 参见

  - [软件定义的无线电](../Page/软件无线电.md "wikilink")
  - 通用软件无线电外设

## 参考资料

## 外部链接

  -
  - [自由软件目录中的](https://zh.wikipedia.org/wiki/自由软件目录 "wikilink") [gnuradio](http://directory.fsf.org/project/gnuradio/)

[Category:使用Qt的軟體](https://zh.wikipedia.org/wiki/Category:使用Qt的軟體 "wikilink") [Category:软件复刻](https://zh.wikipedia.org/wiki/Category:软件复刻 "wikilink") [Category:自由通訊軟體](https://zh.wikipedia.org/wiki/Category:自由通訊軟體 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink") [Category:软件无线电](https://zh.wikipedia.org/wiki/Category:软件无线电 "wikilink")

1.
2.  [Mail on GNU Radio mailinglist where Eric Blossom introduces Tom Rondeau as the new project manager](http://www.mail-archive.com/discuss-gnuradio@gnu.org/msg26468.html)
3.  [Mail on GNU Radio mailinglist announcing leadership transition](https://www.mail-archive.com/discuss-gnuradio@gnu.org/msg58528.html)
4.  [Mail on the GNU Radio mailing list discussing the maintainer transition](https://lists.gnu.org/archive/html/discuss-gnuradio/2018-02/msg00006.html)
5.
6.