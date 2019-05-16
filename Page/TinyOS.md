**TinyOS**是一款自由和开源的基于组件的（component-based）嵌入式操作系统，主要针对无线传感器网络（WSN,
wireless sensor
network）开发。TinyOS使用[nesC语言编写](https://zh.wikipedia.org/wiki/nesC "wikilink")，经由一系列合作项目得以完善。TinyOS最初是[加州伯克利分校和](https://zh.wikipedia.org/wiki/加州伯克利分校 "wikilink")[英特尔研究院为嵌入](https://zh.wikipedia.org/wiki/英特尔研究院 "wikilink")[智能微塵而开发的合作项目](https://zh.wikipedia.org/wiki/智能微塵 "wikilink")，之后逐渐演变成一个国际合作项目，即TinyOS联盟。

## 内容

**TinyOS**中的程序使用[nesC编写](https://zh.wikipedia.org/wiki/nesC "wikilink")，这种语言是[C语言的一个分支](https://zh.wikipedia.org/wiki/C语言 "wikilink")，针对无线传感器网络的内存限制进行过特别的优化。相关的辅助工具则主要是由[Java和](../Page/Java.md "wikilink")[Shell脚本编写的前端](https://zh.wikipedia.org/wiki/Shell脚本 "wikilink")。其他相关的库和工具，例如NesC编译器和[Atmel
AVR二进制工具链则大部分用C编写](../Page/Atmel_AVR.md "wikilink")。

TinyOS程序由基于[组件的](https://zh.wikipedia.org/wiki/组件 "wikilink")[软件工程建构](../Page/软件工程.md "wikilink")，它们中一些表现了硬件的抽象概念，
组件用[接口互相连接](https://zh.wikipedia.org/wiki/接口 "wikilink")。TinyOS为普通的抽象描述（abstractions）提供了接口和组件，例如数据包通信（packet
communication），路由，感知（sensing），行为（actuation）和储存。

TinyOS
2.x版本后引入了完全的[非阻塞式行为](https://zh.wikipedia.org/wiki/非阻塞式 "wikilink")：它配备了一个单独的堆栈。因此所有的持续超过几百微秒I/O操作都以异步进行并且带有回叫功能（callback）。为了使本地的编译器更加出色地优化交叉调用边界（optimize
across call
boundaries）,TinyOS用[nesC的特性](https://zh.wikipedia.org/wiki/nesC "wikilink")，通过事件的方式去连接这些调用。非阻塞式系统可以让TinyOS在单一存储器下保持高度的协同性（concurrency）。它强迫程序将很多个小的事件处理例程合并成一个复合逻辑。为了支持更高的计算量，TinyOS提供了任务（tasks），其比[推迟的过程调用和](https://zh.wikipedia.org/wiki/推迟的过程调用 "wikilink")[中断处理例程的下半部小](https://zh.wikipedia.org/wiki/中断处理例程 "wikilink")。

一个TinyOS组建可以发布一个任务，操作系统可以把它排入列表以待之后执行。任务是没有优先权的并且按照FIFO运行。这个简单的协同模型满足了以I/O为中心的应用，但对于CPU负荷重的应用程序来说是不太好的，因为它会导致向OS多次提出线程间协同处理的请求。这个问题已经导致了几个试图将线程合并进OS内核里的提案。

TinyOS代码与程序代码进行静态连接，然后用[GNU工具链生成系统的一整个二进制映像](https://zh.wikipedia.org/wiki/GNU工具链 "wikilink")。

[Category:实时操作系统](https://zh.wikipedia.org/wiki/Category:实时操作系统 "wikilink")
[Category:嵌入式操作系统](https://zh.wikipedia.org/wiki/Category:嵌入式操作系统 "wikilink")
[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink")
[Category:操作系統](https://zh.wikipedia.org/wiki/Category:操作系統 "wikilink")
[Category:无线传感器网络](https://zh.wikipedia.org/wiki/Category:无线传感器网络 "wikilink")