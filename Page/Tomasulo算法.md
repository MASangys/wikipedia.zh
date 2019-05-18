**Tomasulo算法**（托马苏洛算法）是[IBM的Robert](../Page/IBM.md "wikilink")
Tomasulo在1967年研发出来的一种用来改善处理器[乱序执行的](../Page/乱序执行.md "wikilink")[指令级并行性的硬件](https://zh.wikipedia.org/wiki/指令层级平行 "wikilink")[算法](../Page/算法.md "wikilink")。

## 概述

在[处理器中](https://zh.wikipedia.org/wiki/处理器 "wikilink")，先后执行的指令之间经常具有相关性（例如后一条指令用到前一条指令向寄存器写入的结果），因此早期简单的处理器使后续指令停顿，直到其所需的资源已经由前序指令准备就绪。Tomasulo算法则通过动态调度的方式，在不影响结果正确性的前提下，重新排列指令实际执行的顺序（[乱序执行](../Page/乱序执行.md "wikilink")），提高时间利用效率。IBM
System/360 Model
91处理器的[浮点运算器中率先使用了这种算法](https://zh.wikipedia.org/wiki/浮点运算器 "wikilink")。

该算法与之前同样用于实现[指令流水线动态调度的](../Page/指令管線化.md "wikilink")[计分板不同在于它使用了](https://zh.wikipedia.org/wiki/计分板_\(处理器\) "wikilink")[寄存器重命名机制](../Page/寄存器重命名.md "wikilink")。指令之间具有[数据相关性](https://zh.wikipedia.org/wiki/数据-程序依赖 "wikilink")（例如后条指令的源寄存器恰好是前条指令要写入的目标寄存器），进行动态调度时必须避免三类[冒险](../Page/冒险_\(计算机体系结构\).md "wikilink")：写后读（Read-after-Write,
RAW）、写后写（Write-after-Write, WAW）、读后写（Write-after-Read,
WAR）。第一种冒险也被称为真数据相关（true data
dependence），而后两种冒险则并没有那么致命，它们可以由寄存器重命名来予以解决。Tomasulo算法使用了一个共享数据总线（common
data bus,
CDB）将已计算出的值广播给所有需要这个值作为指令源操作数的[保留站](https://zh.wikipedia.org/wiki/保留站 "wikilink")。该算法尽可能降低了使用计分板技术导致的流水线停顿，从而改善了[并行计算的效率](../Page/并行计算.md "wikilink")。

## 具体流程

在指令的发射（issue）阶段，如果操作数和保留站都准备就绪，那么指令就可以直接发射并执行。如果操作数未就绪，则进入保留站的指令会跟踪即将产生这个所需操作数的那个功能单元。如果连可用的保留站功能单元都已经不够用，那么该指令必须被停顿。为了化解读后写（WAR）和写后写（WAW）冲突，需要在该阶段进行指令的[寄存器重命名](../Page/寄存器重命名.md "wikilink")。从指令队列中取出下一条指令，如果其所用到的操作数目前位于寄存器中，那么如果与指令匹配的功能单元（这类处理器通常具有多个功能单元以发挥指令级并行的优势）当前可用，则发射该指令；否则，由于没有可用的功能单元，指令被停顿，直到保留站或缓存可用。尽管执行时可能并未按照指令代码的先后顺序，但是它们在发射过程还是按照原先的顺序。这是为了确保指令顺序执行时的一些现象，例如[处理器异常](../Page/异常处理.md "wikilink")，能够以顺序执行时的同样顺序出现。下一个阶段为执行阶段。在该阶段，指令对应的操作被执行。执行前需要保证所有操作数可用，同时写后读（RAW）冲突已经被化解。系统通过计算有效地址来避免存储区的冲突，从而保证程序的正确性。最后的阶段为写结果阶段，[算术逻辑单元](https://zh.wikipedia.org/wiki/算术逻辑单元 "wikilink")（ALU）的计算结果被写回到寄存器，以及任何正在等待该结果的保留站中，如果是存储（store）指令，则写回到存储器中。

## 相关条目

  - [指令级并行](https://zh.wikipedia.org/wiki/指令级并行 "wikilink")
  - [乱序执行](../Page/乱序执行.md "wikilink")
  - [寄存器重命名](../Page/寄存器重命名.md "wikilink")
  - [计分板 (处理器)](https://zh.wikipedia.org/wiki/计分板_\(处理器\) "wikilink")
  - [重排序缓冲区](https://zh.wikipedia.org/wiki/重排序缓冲区 "wikilink")

## 参考文献

## 外部链接

  - [Dynamic Scheduling - Tomasulo's
    Algorithm](http://www.cs.umd.edu/class/fall2001/cmsc411/projects/dynamic/tomasulo.html)
  - [Web based Java demo of Tomasulo's
    algorithm](https://web.archive.org/web/20140202102737/http://www.dgomezpr.com/ece/computer-architecture/73-tomasulo)

## 学术文献

  - *[An Efficient Algorithm for Exploiting Multiple Arithmetic
    Units](http://domino.research.ibm.com/tchjr/journalindex.nsf/0/ed39cdf7e40549ec85256bfa00683f73?OpenDocument)*,
    IBM Journal of Research and Development, 11(1):25-33, January 1967.
  - *[WebHASE: Tomasulo's Algorithm: HASE Java applet simulation of the
    Tomasulo's
    Algorithm](http://www.dcs.ed.ac.uk/home/hase/webhase/demo/tomasulo.html)*,
    Institute for Computing Systems Architecture, Edinburgh University.
  - *[TOMASULO'S ALGORITHM FOR DYNAMIC
    SCHEDULING](http://www.ecs.umass.edu/ece/koren/architecture/Tomasulo1/tomasulo.htm)*
  - *Computer Architecture: A Quantitative Approach*, John L. Hennessy &
    David A. Patterson

[Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")