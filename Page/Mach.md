**Mach**（）是一個由[卡內基梅隆大學开发的计算机](https://zh.wikipedia.org/wiki/卡內基梅隆大學 "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[微內核](../Page/微內核.md "wikilink")，為了用於作業系統之研究，特別是在分布式與并行運算上。是最早實現微核心作業系統的例子之一，是許多其它相似的計畫的標準。

Mach開發計畫在卡內基梅隆大學從1985年運行到1994年，到Mach 3.0版結束。其他還有許多人繼續Mach的研究包括[猶他大學的](https://zh.wikipedia.org/wiki/猶他大學 "wikilink")[Mach 4](http://www.cs.utah.edu/flux/mach4/html/Mach4-proj.html)。Mach的開發是為了取代[BSD的UNIX核心](https://zh.wikipedia.org/wiki/Berkeley_Software_Distribution "wikilink")，所以是許多新的作業系統的設計基礎。Mach的研究至今似乎是停止了，雖然有許多商業化作業系統，如[NEXTSTEP與](https://zh.wikipedia.org/wiki/NEXTSTEP "wikilink")[OPENSTEP](https://zh.wikipedia.org/wiki/OPENSTEP "wikilink")，特別是[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")（使用[XNU](../Page/XNU.md "wikilink")核心）都是使用Mach或其衍生系統。Mach的[虚拟内存](../Page/虚拟内存.md "wikilink")（VM）系統也被BSD的開发者用於[CSRG](https://zh.wikipedia.org/wiki/CSRG "wikilink")，並出現在BSD衍生的系統中，如[FreeBSD](../Page/FreeBSD.md "wikilink")。Mac OS X與FreeBSD並未保留Mach首倡的微核心結構，除了Mac OS X繼續提供微核心於內部處理通訊以及應用程式直接控制。

Mach繼承卡內基梅隆大學的[Accent kernel](https://zh.wikipedia.org/wiki/Accent_kernel "wikilink")，Mach計畫主導人[理查德·拉希德曾於](https://zh.wikipedia.org/wiki/理查德·拉希德 "wikilink")[微軟的研究部門擔任高級人員](https://zh.wikipedia.org/wiki/微軟 "wikilink")，後成為微軟副總裁。另一Mach開發者[阿瓦德斯·特凡尼安](../Page/阿瓦德斯·特凡尼安.md "wikilink")（Avie Tevanian）曾是[NeXT](../Page/NeXT.md "wikilink")首席程式設計師，之後擔任[蘋果電腦軟體技術部門主管直到](https://zh.wikipedia.org/wiki/蘋果電腦 "wikilink")2006年[1](http://sfgate.com/cgi-bin/blogs/sfgate/sso_detail?blogid=19&entry_id=3821) 。

一个名为[GNU Mach的计划与其相关](../Page/GNU_Mach.md "wikilink")，它是[GNU](../Page/GNU.md "wikilink")操作系统工程的一部分。已有的操作系统[Debian GNU/Hurd便是基于](https://zh.wikipedia.org/wiki/Debian_GNU/Hurd "wikilink")[GNU Mach及其上的](../Page/GNU_Mach.md "wikilink")[GNU Hurd](../Page/GNU_Hurd.md "wikilink")。

## 历史

### 名稱起源

### Mach概念

Mach是作为传统[UNIX](../Page/UNIX.md "wikilink")内核的替代品出现的，因此其间的不同之处值得留意。当时的人们已渐渐感受到了早期UNIX中“一切皆文件”的抽象机制的不足，有限的扩展性使得开发者捉襟掣肘，苦不堪言。虽说贝尔实验室的[Plan9在此方向上做了进一步努力](https://zh.wikipedia.org/wiki/Plan9 "wikilink")，可是效果并不理想。现代操作系统需要更进一步的抽象。

比如UNIX的管道可谓饱受争议。人们迫切需要一个类似管道的机制，允许在程序间交换不同的数据，而不仅仅是文件式的读写。或者换句话说，一套[进程间通信机制](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")（[IPC](https://zh.wikipedia.org/wiki/IPC "wikilink")）。一时间各路系统（包括UNIX）纷纷推出了各自的IPC机制，然而大多皆是些针对特定目标的库，其通用性仍远远不够。

鉴于此，卡耐基梅隆大学从[Accent内核项目出发](https://zh.wikipedia.org/wiki/Accent "wikilink")，尝试开发了一套基于共享内存的IPC系统。Accent是一个拥有丰富特性的纯实验系统，不过在Accent开发期间，社会上研究操作系统的重点已经有所变化；且UNIX已经被广泛接受作为研究的默认系统，Accent对UNIX的不兼容也限制了它在研究方向上的应用；更甚者，Accent的可移植性似乎并不是很好，而在当时看来（八十年代初）硬件平台的更新换代值正欣欣向荣，似乎会出现一次大爆炸。

因此卡内基梅隆大学转向了Mach项目，其设计目标大体即一个结构清晰、UNIX兼容、高度可移植的Accent。按以下几个概念作为其基础：

  - “任务”即拥有一组系统资源的对象，允许“线程”在其中执行。
  - “[线程](../Page/线程.md "wikilink")”是执行的基本单位，拥有一个任务的上下文，并且共享任务中的资源。
  - “port”是任务间通讯的一组受保护的消息队列；任务可以对任何port发送或接收数据。
  - “消息”是某些有类型的数据对象的集合，它们只可以发送至port - 而非某特定任务或线程。

Mach继承了Accent IPC的理念，然其本身却扎根于UNIX，轻而易举即可移植UNIX下的程序。Mach引入了port的概念用以表示双向的IPC，它就像UNIX下的文件一样拥有权限信息，使得其安全模型非常接近UNIX。并且，Mach使得任何进程都可以拥有一般系统中内核才有的权限，从而允许用户进程实现与硬件交互等操作。

同UNIX一样，Mach系统也包含了一组丰富的实用工具，并保留了unix中驱动程序的概念用以硬件交互。

与UNIX的一大区别即在于，除了操作文件，Mach更可以操作一切“任务”。这一来大量的内核代码可以转移到用户空间，使内核变得更小，从此领发了微内核的思潮。与传统的系统不同，Mach下的进程（或者说“任务”）之下是多个线程。这在今天自己屡见不鲜，可是要知道，Mach正是如此定义任务与线程关系的第一人。内核的责任从总揽大局者精简为基础设施的提供者，并为其提供有限的调度。

Port机制在IPC中的应用该是Mach与其他传统内核的一大分野。在UNIX下，用户进程调用内核只能通过系统调用或陷入（trap）。用户进程使用一个库安排好数据的位置，然后软件触发一个中断，内核在初始化时会为所有中断设置handler，因此程序触发中断的时候，控制权就转移到了内核，在一些必要的检查之后即可得以进一步操作。

在Mach下，这就交给了IPC系统。与直接系统调用不同，这里的用户进程是先向内核申请一个port的访问许可，然后利用IPC机制向这个port发送消息。虽说发送消息的操作同样是系统调用，但Mach内核的工作形式有些不同——handler的工作可以交由其他进程实现。

IPC消息传递机制的应用为线程和并发提供了很好的支持。进程之下是多个线程，线程作为IPC机制的单元，Mach得以在消息被处理时控制线程睡眠或唤醒。这就允许系统将进程分布于多个处理器之上，消息直接通过共享内存实现也可，必要时为其它处理器复制一份也可。在传统内核中这很难实现：系统必须保证不同处理器上的的不同程序不会在同时访问同一块[内存](https://zh.wikipedia.org/wiki/内存 "wikilink")，在Mach中则要更容易的多。不同进程的内存访问互不干涉，一切交由port通信。

早期的IPC系统有些性能问题，必须正视。同其前辈Accent一样，Mach使用一个共享内存机制以避免消息传递中低效的内存拷贝。它利用硬件的MMU实现数据共享，只在数据被修改的时候才执行拷贝，即写时复制。

内核也必须检查消息的正确性。Port在设计上即取了UNIX文件系统的概念，这一来就允许用户使用现成的文件系统概念即可，权限、访问许可之类就都有了。

这样设计也简化了开发。传统的程序依然可以拿来，也可以再设计。单内核系统的一个[bug就得让整个系统崩溃从而不得不重启](https://zh.wikipedia.org/wiki/bug "wikilink")，而Mach仅仅需要重新运行出问题的那个进程。操作系统即一组程序的集合，用户得以选择其系统的功能——只需管理当前运行的进程即可。

需要了解，Mach以上的所有特性皆为跨平台而设计。如下引用一段：

与UNIX最初无视多处理器的设计不同，Mach在设计伊始即将[多处理器支持纳入考虑](https://zh.wikipedia.org/wiki/多处理器 "wikilink")。它的扩展性也很好，[UMA还是](https://zh.wikipedia.org/wiki/UMA "wikilink")[NUMA都能很好的支持](https://zh.wikipedia.org/wiki/NUMA "wikilink")。Mach是为千种不同的处理器而设计的，移植到其他体系结构很容易。其设计的一个关键目标即为各不相同的硬件平台上，实现可移植的[分布式系统](https://zh.wikipedia.org/wiki/分布式系统 "wikilink")。（Appendix B, Operating System Concepts）

不足自然也不少。相对容易的一个问题是port的位置不明显，在UNIX下这样的问题通过文件系统提供一个大家都知道的名字来解决。虽说这一机制也可以拿来，但是Mach在设计上又恰恰尽力使得port保持透明。缺乏表示port位置的机制，使得其扩展性大打折扣。

## 参见

  - [HURD](https://zh.wikipedia.org/wiki/HURD "wikilink")
  - [GNU Mach](../Page/GNU_Mach.md "wikilink")
  - [Debian GNU/Hurd](https://zh.wikipedia.org/wiki/Debian_GNU/Hurd "wikilink")
  - [XNU](../Page/XNU.md "wikilink")

[Category:Mach](https://zh.wikipedia.org/wiki/Category:Mach "wikilink") [Category:已停止開發的作業系統](https://zh.wikipedia.org/wiki/Category:已停止開發的作業系統 "wikilink")