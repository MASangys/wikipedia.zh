**AMD Jaguar**（[中文](https://zh.wikipedia.org/wiki/中文 "wikilink")：**美洲豹**）是[超微半導體](../Page/超威半导体.md "wikilink")（[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")）设计的[低功耗](../Page/低功耗设计.md "wikilink")[系統晶片](../Page/系统芯片.md "wikilink")[微架构](https://zh.wikipedia.org/wiki/微架构 "wikilink")，具有两路[超純量结构](https://zh.wikipedia.org/wiki/超标量 "wikilink")，并且支持[乱序执行](../Page/乱序执行.md "wikilink")。Jaguar微架構是AMD公司的[半定制商业芯片单元的组成部分](../Page/全定制.md "wikilink")，並分為四個產品家族系列：『Kabini』用於[筆電平台和迷你](https://zh.wikipedia.org/wiki/筆電 "wikilink")[PC](../Page/PC.md "wikilink")平台、『Temash』主攻[平板電腦](../Page/平板電腦.md "wikilink")平台、『Kyoto』針對微型[伺服器平台](https://zh.wikipedia.org/wiki/伺服器 "wikilink")、『G系列』（G-Series）則為[嵌入式應用領域提供解決方案](https://zh.wikipedia.org/wiki/嵌入式電腦 "wikilink")。[PlayStation 4和](../Page/PlayStation_4.md "wikilink")[Xbox One都使用了基于该微架构的处理器核心](../Page/Xbox_One.md "wikilink")。\[1\]

## 设计

该处理器微架构主要有以下特点：\[2\]\[3\]\[4\]

  - 快取方面，该架构的每一个处理核心拥有32 KiB[指令缓存以及](https://zh.wikipedia.org/wiki/高速缓存 "wikilink")32 KiB一级数据缓存。一级数据缓存还具有奇偶校验功能，二級快取則使用錯誤校正碼除錯。每四个处理器核心共享一个1 MiB或2 MiB的二级高速缓存。二级缓存为16路组相连形式。與AMD Bobcat微架構相比，指令預取增大了，載入/存儲單元的頻寬也加倍。
  - [記憶體控制器被内置在处理器核心之中](../Page/内存控制器.md "wikilink")，消費級處理器支持單通道2个DDR3L [DIMM](../Page/DIMM.md "wikilink")内存，最高频率达到1600 MHz；伺服器版本在消費級的基礎上還支援[ECC校驗](https://zh.wikipedia.org/wiki/ECC "wikilink")。
  - 每个处理器核心支持[乱序执行](../Page/乱序执行.md "wikilink")和[推測執行](https://zh.wikipedia.org/wiki/预测执行 "wikilink")，核心內建硬體除法器。指令允许2路整数运算的执行、2路128位宽的浮点和打包形式整数运算的执行。另外Jaguar微架構的設計儘管是基於Bulldozer微架構的改進版精簡而來\[5\]，但卻不是Bulldozer微架構上叢集多執行緒（CMT）的省電版，是傳統的[多核心處理器](../Page/多核心處理器.md "wikilink")（CMP）的形式，也意味著Jaguar微架構的處理器上各個CPU核心是獨立的，它們的運算資源除了L2快取共用以外是不共用的。此外，每個CPU核心僅佔3.1平方毫米的晶粒面積。
  - 內建GPU，帶有[Video Codec Engine以便進行視訊硬體解碼](https://zh.wikipedia.org/wiki/Video_Codec_Engine "wikilink")。
  - 作为[SOC芯片](../Page/系统芯片.md "wikilink")，该微结构还包含了具有[南桥](../Page/南桥.md "wikilink")功能的[FCH](https://zh.wikipedia.org/wiki/AMD_FCH "wikilink")（Fusion控制器中心）。
  - 支援C6和CC6低功耗電源狀態，並能夠快速切換。

### 指令集支援

2013年AMD发布基于该微架构的低功耗芯片系列中，Tamesh为双CPU核心结构，而Kabini同时提供双CPU核心和四CPU核心结构。處理器均配備[乱序执行](../Page/乱序执行.md "wikilink")和[推測執行的功能](https://zh.wikipedia.org/wiki/预测执行 "wikilink")，简单来说，这意味着程序后面的指令可以在没有依赖前面指令的情况下被提前执行。这需要额外的硬件结构来进行指令间依赖性的判定，因此结构更加复杂。预测执行则可以通过最近执行的指令来预测即将执行的指令分支。该架构中另一个与之前系列不同的是它直接内置了硬件除法器。电源管理单元能关闭不需要的核心以及对应的二级数据缓存没有被使用的部分以降低功耗。根据测试，基于该架构的处理器平均的每周期指令条数得到了15%的提升。\[6\]

儘管基於Bulldozer微架構精簡\[7\]，但Jaguar微架构的译码过程与[AMD K8区别不大](../Page/AMD_K8.md "wikilink")。和Bulldozer微架構及其改進版一樣，支持[MMX](../Page/MMX.md "wikilink")、[SSE](../Page/SSE.md "wikilink")、[SSE2](../Page/SSE2.md "wikilink")、[SSE3](../Page/SSE3.md "wikilink")、SSE4a、SSE4.1、SSE4.2、AVX、AES、BMI（位元操作指令集）、CVT16/F16C等指令集，并支持[AMD的虚拟化技术](../Page/X86虚拟化.md "wikilink")。作为一个64位支持乱序执行的微架构，它能同时对2条指令进行译码、发射，最多在每个周期分发6个操作。\[8\]\[9\]

## 工艺

该微架构是AMD旗下第一款基于28纳米工艺的处理器，\[10\]整个芯片面积大约为3.1平方毫米。该微架构的不同版本对应了平板电脑、微型服务器、笔记本和小型台式机等不同类型的应用。相比被称为“山猫”的前作，这款微架构在指令集和电路实现方面改变不大，然而[半導體製程从前作的](../Page/半导体器件制造.md "wikilink")40纳米缩小到了28纳米，工艺方面带来的性能改善更为显著。\[11\]

## 商业上的成功

基于Jaguar微架构的处理器成功地打入了游戏机市场，让[索尼電腦娛樂](https://zh.wikipedia.org/wiki/索尼電腦娛樂 "wikilink")、[微软](../Page/微软.md "wikilink")等游戏机厂商选择其处理器方案，在财务上来说是一个巨大的成功。\[12\]一方面这补偿了[英特尔](../Page/英特尔.md "wikilink")参与和AMD在低价市场的竞争，另一方面则加强了该公司提供完整[SOC解决方案的能力](../Page/系统芯片.md "wikilink")。在传统计算机处理器市场不断萎靡的时代，AMD试图以这样的芯片在游戏机市场扭转利润整体下降的颓势。\[13\]

## 参考文献

[Category:AMD](https://zh.wikipedia.org/wiki/Category:AMD "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.