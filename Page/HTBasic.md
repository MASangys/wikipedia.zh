**HTBasic**（也称**Rocky Mountain BASIC**、 **RMB**、**RM-BASIC**），是[BASIC](../Page/BASIC.md "wikilink")[程序设计语言的一种方言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")，由[惠普](../Page/惠普.md "wikilink")公司发明。特别流行于[GPIB](../Page/IEEE-488.md "wikilink")[現場總線](../Page/現場總線.md "wikilink")的[电子测试设备](../Page/电子测试设备.md "wikilink")的控制领域。独有特性包括：[事件驅動程式設計](../Page/事件驅動程式設計.md "wikilink")、广泛的外部[I/O支持](https://zh.wikipedia.org/wiki/I/O "wikilink")、[复数数据类型](https://zh.wikipedia.org/wiki/复数 "wikilink")、[矩阵](../Page/矩阵.md "wikilink")操作函数等。现在，仍有大量过去投资于HTBasic软件、硬件与专门知识的地方仍在使用这种语言。

## 历史

惠普公司在科罗拉多州的部门最初研发出的BASIC，故命名为落基山BASIC（Rocky Mountain BASIC）。1972年上市的HP 9830A，是9800系列可编程计算器的高端产品，是惠普第一款（在只读内存ROM中）安装了BASIC解释器的计算机。通过ROM可以扩展特性包含大规模存储、绘图仪、字符串变量、矩阵操作等。它有一个单行的LED面板，支持行编辑。1970年代末期更快的HP 9835与HP 9845台式机带有CRT屏幕显示器，目标用户是科技人员用于工程计算与仪器控制。随后的HP 9826与HP 9836是系列计算机的开创之作。这些计算机都运行HP BASIC。经常被用于[GPIB](../Page/IEEE-488.md "wikilink")[現場總線](../Page/現場總線.md "wikilink")的惠普[电子测试设备](../Page/电子测试设备.md "wikilink")的控制计算机。

HP 9000平台上的早期BASIC称作**HP BASIC/WS**，运行于摩托罗拉68xxx系列微处理器的HP Work Station (WS)计算机，提供了操作系统、[集成开发环境](../Page/集成开发环境.md "wikilink")、调试器、语言解释器的功能。后来，惠普在[HP-UX](../Page/HP-UX.md "wikilink")平台上也实现了这个BASIC，称作*BASIC/UX*。BASIC/UX 300运行在300系硬件，BASIC/UX 700运作在700系硬件。

随着技术发展，惠普能够把这个BASIC嵌入到测试设备，其功能随实现而不同。这些实现有多个名字，包括**HP Instrument BASIC**与**Board Test BASIC** (*BT-BASIC*)。

惠普在[Microsoft Windows平台上移植了](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")**HP Instrument BASIC for Windows**。

在犹他州[奥勒姆的另一家公司](../Page/奥勒姆_\(犹他州\).md "wikilink")**TransEra**创建了运行于IBM PC硬件上的HP BASIC的一个克隆版实现，称为**High Tech BASIC**，或**HT BASIC**（现在的**HTBasic**）。[惠普](../Page/惠普.md "wikilink")后来颁发许可证给HT BASIC，并重命名为**HP BASIC for Windows**。它与惠普自己的"HP Instrument BASIC for Windows"不是一回事。虽然HTBasic基本上解释执行，但也有一个编译器可用。在原有HP UNIX上的BASIC程序经过修改可移植到Windows上。源文件扩展名为.PRG，表示用STORE存储的文件。\[1\] 惠普保留了BASIC/UX 700（E2045C, BASIC for HP-UX 10.20）直到把它的仪器部门剥离出去独立为[安捷伦科技](https://zh.wikipedia.org/wiki/安捷伦科技 "wikilink")。

位于科罗拉多州[拉夫兰的](../Page/拉夫兰_\(科罗拉多州\).md "wikilink")**Test & Measurement Systems, Inc.**（**"TAMS"**）于1998年获得了HP BASIC/WS与BASIC/UX 300产品责任，提供老软件产品的售后支持。TAMS从[安捷伦科技公司获得了BASIC](https://zh.wikipedia.org/wiki/安捷伦科技 "wikilink")/UX 700，并移植到HP-UX 11i与[Red Hat Enterprise Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink")。HP-UX 11i的实现也称作**"BASIC for 11i"**或"BASIC/UX 11i"。红帽版实现也称作**"BASIC for Linux"**,"BASIC/LX" or "RMBLX"。TAMS与2016年3月31日歇业。

## 参考文献

  - [www.agilent.com](http://www.agilent.com) — Agilent site; search for "HP BASIC"
  - [www.htbasic.com](http://www.htbasic.com) — HTBasic; RMB implementation for MS Windows (TransEra)
  - [www.tamsinc.com](http://www.tamsinc.com/) — Test & Measurement Systems, Inc., a.k.a. TAMS; BASIC/WS, BASIC/UX, BASIC for Linux
  - [www.prc68.com](http://www.prc68.com/I/RASS.html) —Rack and Stack Systems; excellent history of early RMB systems

[Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")

1.  [TransEra HTBasic for Windows Porting Consideration](http://www.hpmuseum.net/pdf/htbasicportingguide.pdf)