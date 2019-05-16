**CLDC** (**Connected Limited Device Configuration**)
是为运行在资源非常有限的设备（例如寻呼机或者手机）上的[J2ME应用程序制订的](https://zh.wikipedia.org/wiki/J2ME "wikilink")[架构](https://zh.wikipedia.org/wiki/架构 "wikilink")。规范内容包括目标机器的特性、[虚拟机规范和基本的API等等](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")。
有1.0和1.1两个版本。

## 典型需求

16/32位[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")，至少160KB(1.0)或者192KB(1.1)[内存对](https://zh.wikipedia.org/wiki/内存 "wikilink")[Java平台可用](https://zh.wikipedia.org/wiki/Java平台 "wikilink")，某种网络的有限（经常是无线、低带宽和间歇）的连接。低功耗，可能是电池供电。

## 限制

  - CLDC 1.0 不支持[浮点运算](https://zh.wikipedia.org/wiki/浮点 "wikilink")，CLDC
    1.1支持（这是两个版本的最主要区别）。

## Profile

### [Mobile Information Device Profile](https://zh.wikipedia.org/wiki/MIDP "wikilink")

为手机制订，包含面向[LCD的GUI](https://zh.wikipedia.org/wiki/LCD "wikilink")
API，而在MIDP
2.0则包括了基本的2D游戏API。为此编写的应用程序称为[MIDlet](https://zh.wikipedia.org/wiki/MIDlet "wikilink")，它和applet在某些地方概念上似乎有些类似。
2005年以来，大多数新手机都支持MIDP，使其称为供下载的手机游戏的事实上的标准。

### [Information Module Profile](https://zh.wikipedia.org/wiki/IMP "wikilink")（[JSR](https://zh.wikipedia.org/wiki/JSR "wikilink") 195）

它是为类似[售货机](https://zh.wikipedia.org/wiki/售货机 "wikilink")、[网卡](../Page/网卡.md "wikilink")、[路由器](../Page/路由器.md "wikilink")、[电话等只有简单的或者根本没有显示功能的系统设计](../Page/电话.md "wikilink")，
有着有限的双向网络访问能力。它只定义了应用程序建立。存储和网络访问的API，只是MIDP的javax.microedition.io、
rms和MIDlet定义的子集。 西门子和诺基亚向[JCP提交了该提案](../Page/JCP.md "wikilink")。

## 部分常规API

与J2SE相比，CLDC1.0的类库仅保留了Java规范定义中最核心的三个包：java.lang，java.io和java.uti，还重新定义了javax.microedition。
CLDC1.0所定义的三个核心包的内容与Java规范中所定义的三个核心包内容并不完全等价。CLDC1.0对Java规范中所定义的三个核心的包的内容进行了一些裁剪，仅保留了小型移动设备可能用到的一些类，方法及属性。例如java.util的类与接口由J2SE的47个缩减到10个。

### java.lang

即所谓系统类，包括对大多数java程序都要用的类。其中的标准java类型有Object、Class、Runtime、System、Integers和Strings等等，还有基本的exception、数学功能、系统功能、线程功能和安全功能等。

### java.io

标准版的java.io包的改型版本，执行Input/Output操作。

### java.util

标准版的java.util包的改型版本。其包含集合类如Vector和Hashtable，还有Calendar、Date和TimeZone等类。

## 外部链接

  - [CLDC主页](http://java.sun.com/products/cldc/)
  - [J2ME之家](https://web.archive.org/web/20080107131112/http://www.j2mehome.com/)
  - [cldc系统讲解专题](https://web.archive.org/web/20100121103822/http://www.j2mehome.com/j2me/cldc.html)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")