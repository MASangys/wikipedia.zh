**LabVIEW**（，实验室虚拟仪器工程平台）是由美國[國家儀器](../Page/國家儀器.md "wikilink")公司所開發的圖形化程式編譯平台，發明者為傑夫·考度斯基（Jeff Kodosky），程式最初於1986年在蘋果電腦上發表。LabVIEW早期是為了儀器自動控制所設計，至今轉變成為一種逐漸成熟的高階程式語言。圖形化程式與傳統程式語言之不同點在於程式流程採用"資料流"之概念打破傳統之思維模式，使得程式設計者在流程圖構思完畢的同時也完成了程式的撰寫。

LabVIEW率先引入了特別的虛擬儀表的概念，使用者可透過人機介面直接控制自行開發之儀器。此外LabVIEW提供的函式庫包含：訊號擷取、訊號分析、機器視覺、數值運算、[邏輯運算](https://zh.wikipedia.org/wiki/邏輯運算 "wikilink")、聲音震動分析、資料儲存等。目前可支援[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，[UNIX](../Page/UNIX.md "wikilink")，[Linux](../Page/Linux.md "wikilink")，[macOS等作業系統](https://zh.wikipedia.org/wiki/macOS "wikilink")。由於LabVIEW特殊的圖形程式簡單易懂的開發介面，縮短了開發原型的速度以及方便日後的軟體維護，因此逐漸受到系統開發及研究人員的喜愛。目前廣泛的被應用於工業自動化之領域上。LabVIEW預設以 多线程執行程式，對於程式設計者更是一大利器。此外LabVIEW通訊介面方面支援：[GPIB](https://zh.wikipedia.org/wiki/GPIB "wikilink")，[USB](../Page/USB.md "wikilink")，[IEEE1394](https://zh.wikipedia.org/wiki/IEEE1394 "wikilink")，[MODBUS](https://zh.wikipedia.org/wiki/MODBUS "wikilink")，[串列埠](https://zh.wikipedia.org/wiki/串列埠 "wikilink")，[並行埠](https://zh.wikipedia.org/wiki/並行埠 "wikilink")，[IrDA](https://zh.wikipedia.org/wiki/IrDA "wikilink")，[TCP](https://zh.wikipedia.org/wiki/TCP "wikilink")，[UDP](https://zh.wikipedia.org/wiki/UDP "wikilink")，[Bluetooth](https://zh.wikipedia.org/wiki/Bluetooth "wikilink")，[.NET](https://zh.wikipedia.org/wiki/.NET "wikilink")，[ActiveX](../Page/ActiveX.md "wikilink")，[SMTP等介面](https://zh.wikipedia.org/wiki/SMTP "wikilink")。

近年來 LabVIEW 除了可以在 PC 上面撰寫之外，另外支援即時系統（Real-time OS）以及可程式邏輯閘陣列（Field Programmable Gate Array, FPGA）。使用者可以透過 LabVIEW 開發環境設計、編譯程式後下載至微處理器（Micro-processor）或 FPGA晶片，最終達到獨立運作（Stand-alone）的功能。但目前主要還是支援 NI 自行生產的嵌入式系統系列產品，通稱 NI-RIO 系列產品。比如：PCI/PXI R系列 DAQ卡片、CompactRIO、single-boardRIO、myRIO...等。

## 数据流编程

LabVIEW编程语言，也被称为G语言，是一种数据流编程语言。程序员通过绘制导线连接不同功能的节点，图形化的程序框图（LV源代码）结构决定程序如何执行。这些线传递变量，所有的输入数据都准备好之后，节点便马上执行。这可能出现同时使用多个节点的情况，G语言天生地具有并行执行能力。内置的调度算法自动使用[多处理器和](https://zh.wikipedia.org/wiki/多处理器 "wikilink")[多线程](../Page/多线程.md "wikilink")硬件，可以跨平台地在可运行的节点上复用线程。

## 图形化编程

LabVIEW将创建用户界面（称为前面板）的工作自然地融合到开发周期当中。LabVIEW的程序/子程序被称为虚拟仪器（VI）。每个VI都有三个组成部分：程序框图（Block Diagram）、前面板（Front Panel）和图标/连接器（Icon/Connector）。连接器是用来供其他的程序框图调用本VI之用。程序员可以利用前面板上的控制控件将数据输入正在运行的VI，或者用显示控件将运算结果输出。前面板还可以作为程序的接口：每个虚拟仪器（VI）既可以把前面板当作用户界面，作为一个程序来运行；也可以作为一个节点放到另一个VI程序框图中，通过连接器面板连接起来，而前面板则定义VI的输入和输出。这意味着每个VI，在作为子程序嵌入到一个大型的项目之前，都可以很方便地进行测试。

图形化的方法还允许非程序员通过拖放虚拟化形式的VI的方法来生成程序，控制他们已经熟悉的实验室设备。在LabVIEW编程环境下，借助已经提供的大量例程和文档，可以很容易地创建小型应用程序。这是好的一方面，另一方面，低估编写高质量的“G”语言所需的专业技能知识仍会带来一定的危险性。编写复杂的算法或大规模的代码，有一点很重要，那就是程序员需要对LabVIEW特殊的语法具有广泛的了解，并且通晓LabVIEW内存管理的拓扑结构。最先进的LabVIEW开发系统提供了创建独立应用程序的可能性。此外，还可以创建分布式应用，通过客户机/服务器模式进行通信。由于G语言天生的并行性特性，这很容易实现。

## 计时系统

LabVIEW使用1904年1月1日（Epoch参考日期）作为“零”（起始）时间。使用1904年1月1日作为起始时间的软件还有苹果公司的Mac OS 9，Palm OS，MP4，Microsoft Excel（可选）。

## 版本

### LabVIEW 8.X

[lv_front.jpg](https://zh.wikipedia.org/wiki/File:lv_front.jpg "fig:lv_front.jpg")[lv_block.jpg](https://zh.wikipedia.org/wiki/File:lv_block.jpg "fig:lv_block.jpg")[labview_intro.jpg](https://zh.wikipedia.org/wiki/File:labview_intro.jpg "fig:labview_intro.jpg")

LabVIEW 8.X之版本中引入了[物件導向](https://zh.wikipedia.org/wiki/物件導向 "wikilink")（OOP）之程式設計概念，使LabVIEW更接近一個完整的程式語言。LabVIEW 8.20版的命名是為了慶祝LabVIEW第20週年。目前最新的版本為LabVIEW 8.6。LabVIEW 8.5新增的功能如下：

  - 輕鬆整合如多核心處理器的最新技術
  - 以新功能管理軟體開發，如圖形化合併VI的功能
  - 以新的BLAS訊號處理程式庫，更迅速地分析資料
  - 以新的狀態圖程式設計方式，開發完整的應用

### LabVIEW 2009

### LabVIEW 2010

**NI LabVIEW 2010新特性**
LabVIEW 2010平台类软件在更新时，新特性直接由客户请求驱动、具有更强大的定时与同步功能、获得改进的后端编译器可生成经优化的机器码并将应用程序在运行时的执行性能提升20%。这款最新版LabVIEW增加了编程特性，为应用程序注入更多效能与性能；无论您是首次使用还是长期使用NI LabVIEW 2010的专家，都能获得效率的提升。

NI LabVIEW 2010内含：LabVIEW的新功能、各类LabVIEW模块、LabVIEW因特网工具包、针对其余LabVIEW平台的更新和缺陷修复。NI标准服务项目的用户可立即下载LabVIEW 2010。访问服务资源中心，以便下载其他LabVIEW产品并了解特殊且随需应变的培训模块。
**LabVIEW 2010平台特性**
LabVIEW 2010开发系统特性

  - 凭借新型后端编译器技术和自定义代码优化, 加快运行代码的速度
  - 通过14类直接源于用户反馈的新型改进, 简化开发
  - 消除与子VI调用相关的开销
  - 将经编译的源代码保存至单独文件内, 简化团队开发
  - 通过将源代码封装至配有打包的项目库的单一文件内, 简化代码部署和发布

NI LabVIEW 2010 Real-Time模块特性

  - 经优化的主机/目标终端数据传输, 搭配网络流
  - 联网目标里新的、基于Web的监测与配置
  - 能够通过Web服务发布变量

NI LabVIEW 2010 FPGA模块特性

  - 新型选件针对分布式编译
  - 可导入Xilinx内核生成器 (CORE Generator) IP
  - 通过程序生成规范, 更好地管理位流文件 (bitfile)与设置
  - 精确至周期的仿真结合ModelSim

NI LabVIEW 2010 MathScript RT模块特性

  - NI实时 (Real-Time)目标上的确定性执行
  - 自动检测针对MathScript节点输出变量
  - 优化的LabVIEW MathScript窗口文本编辑器

### LabVIEW 2011

### LabVIEW 2012

### LabVIEW 2013

### LabVIEW 2014

### LabVIEW 2015

### LabVIEW 2016

### LabVIEW 2017

### LabVIEW 2018

## 註

## 外部連結

  - , National Instruments

[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:數值軟體](https://zh.wikipedia.org/wiki/Category:數值軟體 "wikilink") [Category:視覺化程式設計語言](https://zh.wikipedia.org/wiki/Category:視覺化程式設計語言 "wikilink")