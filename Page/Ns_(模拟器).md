> 本文内容由[Ns \(模拟器\)](https://zh.wikipedia.org/wiki/Ns_\(模拟器\))转换而来。


| released = \[1\] | latest release version = 0.18.2 | latest release date = \[2\] | latest preview version = Mercurial 目录\[3\] | latest preview date = | programming language = [C++](../Page/C++.md "wikilink")（主要）[Python](../Page/Python.md "wikilink")（绑定） | operating system = [GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink"), [FreeBSD](../Page/FreeBSD.md "wikilink"), [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") | platform = [IA-32](https://zh.wikipedia.org/wiki/IA-32 "wikilink"), [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink") | status = 活跃 | genre = [网络模拟](https://zh.wikipedia.org/wiki/网络模拟 "wikilink") | license = [GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink") | website =  }}

**ns**（来源于“network simulator”）是一系列[离散事件](https://zh.wikipedia.org/wiki/离散事件仿真 "wikilink")[网络模拟器](https://zh.wikipedia.org/wiki/网络模拟器 "wikilink")，包括**ns-1**、**ns-2**和**ns-3**。他们主要应用于研究\[4\]和教学。ns-3是[自由软件](../Page/自由软件.md "wikilink")，以GNU GPLv2协议分发。

ns-3项目的目标是创建一个开放的用于研究的网络模拟环境，以便于学术团体;这意味着两件事：

  - 它需要满足现代网络研究模拟的需要
  - 它需要创建一个社区，鼓励贡献、评审并且提高软件质量。

因为创造一个巨大、高质量且被充分测试的网络模拟器需要大量的工作，ns-3项目将任务分配给了社群的各个开发者和用户。

## 历史

REAL 是 ns 的原型，始于1989年。

### ns-1

ns的第一版，被称作ns-1，由[劳伦斯伯克利国家实验室](../Page/劳伦斯伯克利国家实验室.md "wikilink")（LBNL）的Steve McCanne、Sally Floyd、Kevin Fall和其他贡献者开发于1995-1997年间。这时期它常被称为LBNL网络模拟器（LBNL Network Simulator），源于早期的由S. Keshav编写的REAL模拟器。模拟器的核心由C++写成，和以[Tcl](../Page/Tcl.md "wikilink")脚本为基础的模拟场景。\[5\]长期的贡献来源于[Sun](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")、[加州大学伯克利分校的Daedelus项目和](https://zh.wikipedia.org/wiki/加州大学伯克利分校 "wikilink")[卡内基梅隆大学Monarch项目](https://zh.wikipedia.org/wiki/卡内基梅隆大学 "wikilink")。

### ns-2

在1996-1997年间，ns的第二版（ns-2）最初由Steve McCanne重构而来\[6\]并用MIT的[OTcl替代了](https://zh.wikipedia.org/wiki/OTcl "wikilink")[Tcl](../Page/Tcl.md "wikilink")语言，OTcl是一个[面向对象的Tcl方言](https://zh.wikipedia.org/wiki/面向对象 "wikilink")。ns-2的核心部分依旧由C++写成，但是C++模拟对象和变量也可在OTcl中使用。模拟脚本由OTcl写成。这样的结构使得模拟方案能由解释器运行，同时方便的更改而不用重新编译模拟器。在ns-2推出的时期（1990中叶），这样的方式非常方便并且避免了浪费时间的编译操作。而且脚本语言的语法更加清晰。ns-2有一个一起工作的部件，被称作“Network Animator”（**nam-1**），由Mark Handley编写，用来图形化的展示模拟场景。

1997年，[DARPA的Virtual](https://zh.wikipedia.org/wiki/DARPA "wikilink") InterNetwork Testbed（VINT）项目启动，劳伦斯伯克利国家实验室、[Xerox PARC](https://zh.wikipedia.org/wiki/Xerox_PARC "wikilink")、加州大学伯克利分校和南加州大学信息科学研究所（ISI）参与其中。ns-2的迅速开发正是在这个时期。同时维护软件的任务渐渐地由ISI接手，最终John Heidemann领导了这个维护任务。在完成了VINT项目后，ns-2在2001-2004年继续由DAPRA SAMAN和NSF CONSER赞助，最终赠与USC/ISI。

现在，ns-2包含了超过30万行代码，并且存在相当多的一部分代码未被合并到主线中。（因为有许多ns-2[分支](https://zh.wikipedia.org/wiki/分支 "wikilink")，包括被维护的和未维护的）它能够运行在[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[OS X和Windows](https://zh.wikipedia.org/wiki/OS_X "wikilink") 95/98/NT/2000/XP上。ns-2以[GPL v2协议分发](https://zh.wikipedia.org/wiki/GNU_General_Public_License#GPL.2FLGPLv2 "wikilink")。

### ns-3

ns-3的开发始于2004-2005年间。Tom Henderson（[华盛顿大学](https://zh.wikipedia.org/wiki/华盛顿大学 "wikilink")）领导的一个团队、George Riley（[佐治亚理工学院](https://zh.wikipedia.org/wiki/佐治亚理工学院 "wikilink")）、[Sally Floyd](https://zh.wikipedia.org/wiki/Sally_Floyd "wikilink")（[国际计算机研究中心](https://zh.wikipedia.org/wiki/国际计算机研究中心 "wikilink")）和Sumit Roy（[华盛顿大学](https://zh.wikipedia.org/wiki/华盛顿大学 "wikilink")），申请并受美国国家科学基金会（NSF）资助，共同开发ns-2的替代品，被称作ns-3。于此同时，[INRIA Sophia Antipolis的Planete研究小组内的Mathieu](https://zh.wikipedia.org/wiki/法国国家信息与自动化研究所 "wikilink") Lacage和Walid Dabbous开始寻找一个ns-2的替代品，以用于测试[IEEE 802.11](../Page/IEEE_802.11.md "wikilink")[Wi-Fi](../Page/Wi-Fi.md "wikilink")模型。Lacage原先使用的模拟器名叫Yet Another Network Simulator（yans）。\[7\]

两股力量一起合作，在2005年2月的ns-developers邮件列表上讨论ns-3的设计方案。在2005年2月22日，Tom Henderson在ns-developers邮件列表上发了一封邮件，说“我们想要讨论一下未来ns-2如何被重构或者被分支（至少在现在并行的开发，并且维护已有的代码，”We intend to have some discussions on how some of ns-2 might be either refactored or forked as part of a future development effort (in parallel, for now, with maintenance of the existing code tree)“）。\[8\]一些主要的目标包括了更好的支持网络模拟、复用生成代码和更好的集成以testbed为基础的研究工具。在ns-3的开发过程中，他们决定不再向下兼容ns-2，这主要是因为向后兼容需要太多的额外工作。新的模拟器将从头编写，使用[C++](../Page/C++.md "wikilink")。

ns-3的开发始于2006年7月1日。\[9\]\[10\]代码主要由Mathieu Lacage编写，并利用了部分yans模拟器、佐治亚理工学院网络模拟器（GTNetS）及ns-2的代码。Gustavo Carneiro贡献了一个框架，包括生成Python绑定（[pybindgen](https://zh.wikipedia.org/wiki/pybindgen "wikilink")）及使用[Waf](../Page/Waf.md "wikilink")编译系统。

2008年6月，ns-3发布了ns-3.1，之后项目在每个季度发布，直到最近变成了1年3次发布。ns-3在2012年第三季度发布了它的第15版（ns-3.15）。\[11\]

目前三个版本的状态：

  - ns-1不再开发和维护
  - ns-2只维护，
  - ns-3处于活跃的开发中。

## 设计

ns-3由[C++](../Page/C++.md "wikilink")和[Python](../Page/Python.md "wikilink")写成，并且以这两种作为编写脚本的语言。

## 组件

ns-3被分为24个[模块](https://zh.wikipedia.org/wiki/模块_\(程序设计\) "wikilink")，包括几个真实网络设备和协议的模块。

## 模拟工作流程

大致上，创建一个模拟可以被分为以下几个步骤：

1.  拓扑定义：创建基本设施和相互关系，ns-3有一个向导能够帮助完成此过程。
2.  模型使用：添加模型（例如UDP、IPv4、点对点设备和链接、应用）;此时大多数操作可通过向导完成。
3.  节点和连接配置：设置模型默认值（例如，一个程序发送的包的大小和点对点连接的MTU值）;此时大多数操作可过属性系统完成。
4.  执行：模拟事件，用户请求数据。
5.  性能分析：在模拟完成后带时间戳的事件跟踪记录可供使用。这些数据能被工具，例如[R语言](../Page/R语言.md "wikilink")分析并且得到结论。
6.  图形可视化：原始或处理过的数据能被工具，例如[Gnuplot](../Page/Gnuplot.md "wikilink")、[matplotlib或是](https://zh.wikipedia.org/wiki/matplotlib "wikilink")[Xgraph画出](https://zh.wikipedia.org/wiki/Xgraph "wikilink")。

## 批评

对ns-2的批评主要是因为建模非常复杂并且耗时。主要是因为它没有GUI并且需要学习脚本语言、队列理论和建模技术。并且，最近有人抱怨模拟结果不可重现（可能是由于代码库的不断变更）和使用某些协议一直碰到bug。

对ns-3的批评主要有它缺少ns-2支持的协议和不向后兼容ns-2。因为没有GUI界面，所以和ns-2一样，ns-3也需要大量的时间来学习。

## 参见

  - [GloMoSim](https://zh.wikipedia.org/wiki/GloMoSim "wikilink")
  - [NetSim](https://zh.wikipedia.org/wiki/NetSim "wikilink")
  - [OMNeT++](https://zh.wikipedia.org/wiki/OMNeT++ "wikilink")

## 注解

<references group="注"/>

## 参考来源

## 外部链接

  - \[<http://www.isi.edu/nsnam/ns/> ns-2 主页

  - [ns-3 主页](http://www.nsnam.org/)

[Category:网络技术](https://zh.wikipedia.org/wiki/Category:网络技术 "wikilink") [Category:计算机网络分析](https://zh.wikipedia.org/wiki/Category:计算机网络分析 "wikilink") [Category:模拟软件](https://zh.wikipedia.org/wiki/Category:模拟软件 "wikilink") [Category:通信工程](https://zh.wikipedia.org/wiki/Category:通信工程 "wikilink")

1.
2.
3.
4.
5.  <http://ee.lbl.gov/ns/>
6.  Sandeep Bajaj, Lee Breslau, Deborah Estrin, Kevin Fall, Sally Floyd, Padma Haldar, Mark Handley, Ahmed Helmy, John Heidemann, Polly Huang, Satish Kumar, Steven McCanne, Reza Rejaie, Puneet Sharma, Kannan Varadhan, Ya Xu, Haobo Yu, and Daniel Zappala, *Improving Simulation for Network Research*, Technical Report 99-702, University of Southern California, March, 1999.
7.  Lacage, M. and Henderson, T.R., "Yet another network simulator", *Proceeding from the 2006 workshop on ns-2: the IP network simulator*, ACM, 2006.
8.
9.
10.
11.