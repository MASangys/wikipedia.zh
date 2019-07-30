在[程序设计](../Page/程序设计.md "wikilink")术语中，**海森堡bug**（）是指在尝试研究它时似乎会消失或者改变行为的[bug](../Page/程序错误.md "wikilink")（程序错误）。\[1\]\[2\]\[3\]该词汇是物理学家[维尔纳·海森堡](../Page/维尔纳·海森堡.md "wikilink")名字的[双关语](https://zh.wikipedia.org/wiki/双关语 "wikilink")，他最先断言了[量子力学](../Page/量子力学.md "wikilink")的[观察者效应](https://zh.wikipedia.org/wiki/观察者效应 "wikilink")——观察系统的行为不可避免地将改变其状态。电子学中的传统用语则是，指连接一个到设备将改变其行为。

类似的词语有**玻尔bug**（**bohrbug**）、**曼德博bug**（**mandelbug**）\[4\]\[5\]\[6\]和**薛定谔bug**（**schrödinbug**）\[7\]\[8\]，它们偶尔被用于指代其他类型的非寻常软件缺陷，但通常以开玩笑的心态使用。\[9\]\[10\]\[11\]

## 例子

之所以会出现海森堡bug，是因为通常的调试手段，诸如插入[输出语句或是挂接](https://zh.wikipedia.org/wiki/I/O "wikilink")[调试器](../Page/调试工具.md "wikilink")，往往会修改程序代码，或是更改[变量的](https://zh.wikipedia.org/wiki/变量 "wikilink")[内存地址](https://zh.wikipedia.org/wiki/内存地址 "wikilink")，或是改变其执行时间。这都可能影响程序的行为。如果正好影响到了bug，就有可能产生海森堡bug。

海森堡bug的一个常见情况是，bug只在打开[編譯器](../Page/編譯器.md "wikilink")优化时出现，而关闭优化再编译程序（使用调试器时通常如此）则bug消失。一些在优化后的程序中通常会放入[寄存器](../Page/寄存器.md "wikilink")的值，在调试状态下会放入到主内存。这可能会影响[浮点数](../Page/浮点数.md "wikilink")比较的结果，因为内存中的值可能比寄存器中的值有更小的范围和精度。与此类似，[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++](../Page/C++.md "wikilink")等语言中使用的运行时[断言的副作用可能导致海森堡bug](../Page/斷言_\(程式\).md "wikilink")，因为当生产环境的代码使用[`NDEBUG`](../Page/Assert.h.md "wikilink")宏关闭断言后，测试表达式不会被執行（eval）。

海森堡bug的其他常见原因是使用未初始化的变量的值（在调试模式下此变量的值可能不同，或者调试系统自动将其初始化），或者使用了[指標](../Page/指標_\(電腦科學\).md "wikilink")（调试时可能指向了不同的地方）。调试器也经常提供[监视器或其他用户界面](https://zh.wikipedia.org/wiki/断点 "wikilink")，它们也可能导致执行额外的[源代码](../Page/源代码.md "wikilink")（例如属性存取器），从而改变程序的状态。\[12\]

时间也可能是海森堡bug的一个因素，尤其是对于[多线程](../Page/多线程.md "wikilink")应用程序而言。在调试器控制下执行的程序与正常执行的程序在运行时间上会有差异。使用调试器进行逐行单步调试时，时间敏感的bug（例如[競爭危害](../Page/競爭危害.md "wikilink")）可能不会发生。当行为涉及到与不在调试器控制下的实体进行交互时（例如两台计算机之间的网络数据包处理），则更是如此。

海森堡bug可以被视为的一个实例。沮丧的程序员可能会幽默或无奈地指责一个海森堡bug是由于[月相](../Page/月相.md "wikilink")\[13\]或其他因素，或者猜测它是因为[Α粒子](../Page/Α粒子.md "wikilink")或[宇宙線](../Page/宇宙線.md "wikilink")影响[计算机硬件而导致的](https://zh.wikipedia.org/wiki/计算机硬件 "wikilink")[軟性錯誤](../Page/軟性錯誤.md "wikilink")所致（如果只发生了一次）。

## 相关词汇

词汇“**bohrbug**”是海森堡bug的一个反义词，它指良好、稳固的bug。就像确定性的[玻尔模型](../Page/玻尔模型.md "wikilink")一样，它们不改变自己的行为，并且相对容易被检测到。\[14\]\[15\]

**曼德博bug**（mandelbug，名字取自[本華·曼德博](../Page/本華·曼德博.md "wikilink")的[曼德博集合](../Page/曼德博集合.md "wikilink")）是原因极其复杂而很难修复的bug，其行为看上去[混乱甚至存在](../Page/混沌理论.md "wikilink")[不确定性](https://zh.wikipedia.org/wiki/确定性模型 "wikilink")。它也指程序员检查代码、修复它们时会发现更多bug的bug。

**薛定谔bug**（schrödinbug，名字取自[埃尔温·薛定谔](../Page/埃尔温·薛定谔.md "wikilink")及他的[薛定谔猫](../Page/薛定谔猫.md "wikilink")）是程序员发现一个永远不应该被触发的情况发生的bug。

**兴登堡bug**（hindenbug，\[16\]名字取自[興登堡號空難](../Page/興登堡號空難.md "wikilink")）是具有灾难性行为的bug。

## 词汇历史

该词汇在1985年被[詹姆斯·尼古拉·格雷](../Page/詹姆斯·尼古拉·格雷.md "wikilink")在一篇关于软件故障的论文中使用\[17\]，并也在1986年由Jonathan Clark和Zhahai Stewart在邮件列表（之后的[Usenet](../Page/Usenet.md "wikilink")新闻组）中使用。\[18\]

供职于[IBM](../Page/IBM.md "wikilink")的研究员在2004年的采访中确认，Heisenbug被最初定义时他在场。\[19\]

它于1983年在[ACM的出版物中有更早的出现](../Page/计算机协会.md "wikilink")。\[20\]

## 解决

Heisenbug通常需要非常仔细地调试才能解决。如果能找出出错代码的近似位置则能更快地找出。在那个位置附近可以检查相关上下文和分析进程转储来寻找解决方案。

另一种方法是检查日志，尤其是由[lint或类lint工具产生的日志](https://zh.wikipedia.org/wiki/lint "wikilink")。

对于长期、持久的海森堡bug，它可能需要使用诸如[抽象释义](../Page/抽象释义.md "wikilink")等[靜態程序分析](../Page/靜態程序分析.md "wikilink")技术来确定其原因。

## 参见

  - [货物崇拜编程](../Page/货物崇拜编程.md "wikilink")

  - [小黄鸭调试法](../Page/小黄鸭调试法.md "wikilink")

  - —一种用于检测和重现Heisenbug的工具（Windows）

  -
  - —一种自动探测可能导致Heisenbug的工具。

## 参考资料

## 外部链接

  - [The Heisenberg Debugging Technology](http://sourceware.org/gdb/talks/esc-west-1999/)
  - [A Story About Magic](https://web.archive.org/web/20101216173357/http://ftp.sunet.se/jargon/html/magic-story.html)
  - [OpenOffice won't print on Tuesdays](https://bugs.launchpad.net/ubuntu/+source/cupsys/+bug/255161)，一个令人着迷的海森堡bug，花费了将近九个月的时间来解决。
  - [消灭神出鬼没的Heisenbug](http://www.infoq.com/cn/articles/exterminating-heisenbugs)

[Category:调试](https://zh.wikipedia.org/wiki/Category:调试 "wikilink") [Category:程式錯誤](https://zh.wikipedia.org/wiki/Category:程式錯誤 "wikilink") [Category:软件测试](https://zh.wikipedia.org/wiki/Category:软件测试 "wikilink")

1.
2.
3.
4.
5.  Raymond, Eric S.; [*The New Hacker's Dictionary*](https://books.google.com/books?id=g80P_4v4QbIC&pg=PA295&dq=mandelbug), 3rd edition, 1996
6.  \[//en.wikipedia.org/wiki/Arthur_C._Clarke Clarke, Arthur C.\], [*The Ghost from the Grand Banks*](http://www.google.ca/search?tbm=bks&q=%22The+Mandelbug.+Get+Ada+to+explain+it+to+you+someday.%22), Bantam Books, 1990
7.
8.  Raymond, Eric S.; [*The New Hacker's Dictionary*](https://books.google.com/books?id=g80P_4v4QbIC&pg=PA397&dq=schroedinbug), 3rd edition, 1996
9.  The following article investigates the various definitions of bohrbug, mandelbug and heisenbug proposed in the literature, as well as the statements made about the relationships between these fault types: Grottke, Michael; and Trivedi, Kishor S.; *Software Faults, Software Aging and Software Rejuvenation*, Journal of the Reliability Engineering Association of Japan, Vol. 27, No. 7, pp. 425-438, 2005.
10. Grottke, Michael; and Trivedi, Kishor S.; [*Fighting Bugs: Remove, Retry, Replicate, and Rejuvenate*](https://web.archive.org/web/20100327174716/http://www.computer.org/portal/web/csdl/doi/10.1109/MC.2007.55), IEEE Computer vol. 40, no. 2 (February 2007), pp. 107-109
11. A February 2012 Google Books search returns about 70 hits for "schroedinbug", 100 for "mandelbug", 400 for "bohrbug" or "heisenbug".
12. ["Java toString() override with initialization as a side effect"](http://debuggers.co/java/enterprise/2014/06/17/Kyle-Harr.html)
13. CATB.org, ["phase of the moon"](http://www.catb.org/jargon/html/P/phase-of-the-moon.html)
14. Goshgarian, Gary; *Exploring Language*, HarperCollins College Publishers, 1995
15. "Such transient software failures have been given the whimsical name “Heisenbug” because they disappear when reexamined.
16.
17.
18. (16 December 1986) [RISKS DIGEST 4.30](https://groups.google.com/group/mod.risks/browse_thread/thread/cc68771824a79d3f) - (23 December 1986) [RISKS DIGEST 4.34](https://groups.google.com/group/mod.risks/browse_thread/thread/83a6ad844eda93e0/5e061e6da0c2dbfc?lnk=st&q=heisenbug&rnum=896#5e061e6da0c2dbfc), moderated by \[//en.wikipedia.org/wiki/Peter_G._Neumann Peter G. Neumann\]
19.
20. *Proceedings of the ACM SIGSOFT/SIGPLAN Software Engineering Symposium on High-Level Debugging, Pacific Grove, California, March 20–23, 1983*, Association for Computing Machinery, 1983, [Google Books search](http://www.google.ca/search?tbm=bks&q=an+instance+of+such+a+bug+was+called+a+%22Heisenbug%22+by+one+participant):