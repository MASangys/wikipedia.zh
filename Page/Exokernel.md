[Exokernel.svg](https://zh.wikipedia.org/wiki/File:Exokernel.svg "fig:Exokernel.svg")
**Exokernel**，一種[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[內核架構](https://zh.wikipedia.org/wiki/內核 "wikilink")，是一種極簡化的[微核心](https://zh.wikipedia.org/wiki/微核心 "wikilink")，約在1994年提出，由[麻省理工學院平行與分散作業系統工作小組](https://zh.wikipedia.org/wiki/麻省理工學院 "wikilink")（Parallel
and Distributed Operating Systems
group）所發展。以這個概念而實作的其他作業系統內核，也被稱為**外核心**（Exokernel），**外內核**、**外核**、或**極限核心**。

在Exokernel中，運作在核心空間的唯一行程就是內核，唯一工作就是負責分配系統資源，並防止使用者行程存取到其他行程的資源。每個使用者行程都擁有一個[虛擬機器](../Page/虛擬機器.md "wikilink")，可以執行自己的作業系統。

Exokernel的設計理念是盡可能的減少軟體的[抽象化](../Page/抽象化_\(計算機科學\).md "wikilink")，這使得開發者可以專注於硬體的抽象化。外核心的設計極為簡化，它的目標是在於同時簡化傳統[微內核的訊息傳遞機制](../Page/微內核.md "wikilink")，以及[整塊性核心的軟體抽象層](../Page/整塊性核心.md "wikilink")。

## 歷史

## 技術內容

它的设计理念是让用户程序的设计者来决定硬件接口的设计。外内核本身非常的小，它通常只负责系统保护和系统资源复用相关的服务。

传统的内核设计(包括单核和微核)都对硬件作了抽象，把硬件资源或设备驱动程序都隐藏在[硬件抽象层下](https://zh.wikipedia.org/wiki/硬件抽象层 "wikilink")。比方说，在这些系统中，如果分配一段物理存储，应用程序并不知道它的实际位置。

而外核的目标就是让应用程序直接请求一块特定的物理空间，一块特定的磁盘块等等。系统本身只保证被请求的资源当前是空闲的，应用程序就允许直接存取它。既然外核系统只提供了比较低级的硬件操作，而没有像其他系统一样提供高级的硬件抽象，那么就需要增加额外的运行库支持。这些运行库运行在外核之上，给用户程序提供了完整的功能。

理论上，这种设计可以让各种操作系统运行在一个外核之上，如Windows和Unix。并且设计人员可以根据运行效率调整系统的各部分功能。

现在，外核设计还停留在研究阶段，没有任何一个商业系统采用了这种设计。几种概念上的操作系统正在被开发，如[剑桥大学的Nemesis](../Page/剑桥大学.md "wikilink")，格拉斯哥大学的Citrix系统和瑞士计算机科学院的一套系统。[麻省理工学院也在进行着这类研究](../Page/麻省理工学院.md "wikilink")。

## 外部連結

  - [MIT
    Exokernel作業系統](https://web.archive.org/web/20110323025628/http://pdos.csail.mit.edu/exo.html)

[Category:作業系統核心](https://zh.wikipedia.org/wiki/Category:作業系統核心 "wikilink")
[Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink")
[Category:微內核](https://zh.wikipedia.org/wiki/Category:微內核 "wikilink")