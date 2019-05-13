**Jikes研究虚拟机**（Jikes Research Virtual Machine,简称Jikes
RVM)是一种成熟的用于执行[Java](../Page/Java.md "wikilink")[程序的](https://zh.wikipedia.org/wiki/程序 "wikilink")[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")，其早期版本与当前版本分别在（CPL）与[Eclipse公共许可证](https://zh.wikipedia.org/wiki/Eclipse公共许可证 "wikilink")（EPL）下开放代码。与其他以Java编写的虚拟机不同的是，Jikes
RVM采用了[元循环技术](https://zh.wikipedia.org/wiki/元循环求值器 "wikilink")。

## 历史

  - 1997年11月，Jalapeño项目作为[IBM沃森研究中心的一个内部项目启动](../Page/IBM研究院.md "wikilink")。

<!-- end list -->

  - 1999至2000年间，IBM研究人员发布了关于Jikes RVM的新特性的研究资料，一些大学也获得阅览Jikes RVM源代码的权利。

<!-- end list -->

  - 2001年10月，Jikes RVM
    2发布，并以通用公共许可证（CPL）开放源代码。2.0版支持[PowerPC与](../Page/PowerPC.md "wikilink")[Intel架构](https://zh.wikipedia.org/wiki/Intel "wikilink")，而且也支持许多不同的[垃圾回收算法](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")。

<!-- end list -->

  - 2002年，2.2版发布，该版的[垃圾精确回收器用流行的内存管理工具包重构](../Page/垃圾回收_\(計算機科學\).md "wikilink")。

<!-- end list -->

  - 2004年，2.4版发布，这一版本的设计尤其注重于用以运行[Eclipse](../Page/Eclipse.md "wikilink")，而稳定性与性能也较之前有一定程度的提高。

<!-- end list -->

  - 2007年，2.9版开始开发，此版重写大量代码来利用Java5.0的新特性并使用了蚂蚁系统。

<!-- end list -->

  - 2008年，3.0版发布，这标志了2.9版开发的完结，Jikes RVM的代码基底也再次趋于稳定。

<!-- end list -->

  - 2009年，3.1版以Eclipse公共许可证（EPL）发布，此版相对于3.0.1版性能大幅提升，并且提供了对原生[线程的切换支持](../Page/线程.md "wikilink")。

## 特性

  - 引导

Jikes
RVM采用了元循环技术，因而其需要运行在一个[引导](https://zh.wikipedia.org/wiki/引导 "wikilink")[Java虚拟机](../Page/Java虚拟机.md "wikilink")（JVM）上来创建启动镜像。启动镜像在运行时由一个小型的C装入程序载入，其本质是Jikes
RVM启动必须的[对象的集合](https://zh.wikipedia.org/wiki/对象 "wikilink")，这些对象则是利用引导JVM的[反馈所创建](../Page/反馈.md "wikilink")。

  - VM Magic

编译器在VM
Magic里为一个[類別生成不同的代码](../Page/类_\(计算机科学\).md "wikilink")（而非[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")）。VM
Magic類別允许对内存的直接访问，是影响内存管理工具包的性能的关键所在。VM
Magic類別被包含于org.vmmagic包内，同时也为其他的Java项目所使用。

  - 内存管理工具包

内存管理工具包（MMTk）是在Jikes
RVM与其他项目（如Singularity系统和Rotor软件项目\[1\]）都有使用的垃圾精确回收器的一个集合。正如Jikes
RVM其他部件一样,MMTk是用Java实现的，但主要还是依赖于VM Magic。

  - 类库

Jikes RVM已经可以使用[Apache
Harmony与](../Page/Apache_Harmony.md "wikilink")类库，对[OpenJDK类库的实验性支持也已加入](../Page/OpenJDK.md "wikilink")。

  - 编译器

Jikes
RVM使用基线[编译器来快速地为特定的](https://zh.wikipedia.org/wiki/编译器 "wikilink")[架构生成](https://zh.wikipedia.org/wiki/指令集架构 "wikilink")[代码](../Page/代码.md "wikilink")，而后的[动态自适应编译利用带有如栈替换等特性的优化编译器重编译代码](https://zh.wikipedia.org/wiki/动态自适应编译 "wikilink")，其中动态自适应编译系统使用。

  - 运行时

Jikes
RVM的运行时有着许多新颖的特性，例如快速锁定机构，[协作调度机构以及对](https://zh.wikipedia.org/wiki/调度 "wikilink")[异常的快速收集与调度的支持](../Page/异常处理.md "wikilink")。

  - 处理器支持

Jikes RVM可以支持使用[Power
PC](https://zh.wikipedia.org/wiki/Power_PC "wikilink")（即ppc）与[IA-32](https://zh.wikipedia.org/wiki/IA-32 "wikilink")（即[x86](../Page/x86.md "wikilink")）指令集的[处理器](https://zh.wikipedia.org/wiki/处理器 "wikilink")。

  - 研究

正如其名所示，Jikes RVM是个研究项目，因而功能侧重于用于研究新技术\[2\]。

Jikes
RVM也出现在了07、08、10、11年的[Google编程之夏比赛中](https://zh.wikipedia.org/wiki/Google编程之夏 "wikilink")\[3\]。

## 参考

<references />

## 外部链接

  - [Jikes
    RVM在SourceForge的项目](http://sourceforge.net/projects/jikesrvm/)

  - [DaCapo Benchmarks](http://www.dacapobench.org/)
  - [WALA](http://wala.sourceforge.net/)
  - [PearColator](https://archive.is/20121225093413/http://pearcolator.sourceforge.net/)

  - [IBM DevelopWorks中Jikes
    RVM的介绍](http://www.ibm.com/developerworks/cn/java/jalapeno/index.html)


[Category:虚拟化软体](https://zh.wikipedia.org/wiki/Category:虚拟化软体 "wikilink")

1.  [Jikes RVM Project
    Proposals 2009](http://jikesrvm.org/Project+Proposals+2009)
2.  ["Jikes RVM research papers"](http://jikesrvm.org/Publications)
3.  [Jikes RVM - Google Summer of
    Code 2011](http://jikesrvm.org/Google+Summer+of+Code+2011)