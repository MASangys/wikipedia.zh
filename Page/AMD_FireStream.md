**FireStream**是[ATi研發的一个流处理器系列](../Page/ATi.md "wikilink")，在AMD收購ATI後改為
Firepro S
系列，建基于Radeon图形显示芯片，提供高性能计算能力。FireStream产品中的显核不是用來作3D加速用途，而是利用显核内置的强大像素处理器變成一群并行处理器，作为浮点运算协处理器，协助中央处理器计算复杂的浮点运算程序，例如複雜的科学運算。

而早在数年前，人們就意識到GPU不但可以處理图形數據，還可以處理其他數據。BionicFX就試過利用[GeForce
6800处理音频數據](../Page/GeForce_6.md "wikilink")，ATI亦做過同樣的試驗。而且[史丹佛大學的Folding](../Page/史丹佛大學.md "wikilink")@Home研究项目亦可利用Radeon
X1900作運算加速\[1\]；通过GPU来模拟蛋白质合成，进而找尋有關蛋白质的疾病。

自[R520系列顯核問世以來](../Page/Radeon_X1_Series.md "wikilink")，基於它的可編程結構，ATi已投入大量資源研究GPGPU，意即使用顯核來作非3D運算，處理一般在主流伺服器和桌面處理器上運行的軟體，据称性能比CPU高出10-30倍，并于稍后宣佈其“流计算（通用计算）”（Stream
Computing/General Purpose Computing）概念，同时发布ATI FireStream流处理器，使用名为“Close
To
Metal”（CTM）的硬件界面，直接跳过3D[应用程序接口](../Page/应用程序接口.md "wikilink")，如[DirectX](../Page/DirectX.md "wikilink")，让开发者可以充分利用流处理器架构的特性，以最符合流处理器使用的原则对程序進行优化。

第一个产品，FireStream
580，是建基于R580图形芯片。它将是一块采用R580顯核的特殊显示卡，R580顯示核心中的48个独立的像素处理器能带来强大的浮点运算性能。该产品采用[PCI
Express](../Page/PCI_Express.md "wikilink") x16作為介面，流处理器的频率是600
MHz，可以同時執行512線程，並配備了1GB
[GDDR3記憶體](../Page/GDDR3.md "wikilink")，频率是1300
MHz。並有可能使用多个核心並行处理數據。這个流处理器的功耗為165[瓦特](../Page/瓦特.md "wikilink")。

在AMD于2006年中成功收购ATI后，ATi成为AMD旗下的图形产品部门，并於2006年11月15日正式发布了业界首款“流处理器”（Stream
Processor）。這款流处理器利用AMD旗下的图形产品部门，原先是用於[Radeon
X1900显示卡上的ATI](../Page/Radeon_X1_Series.md "wikilink")
R580顯示核心作為基礎。ATI FireStream
580并可以作為AMD的[Torrenza协处理平台的附件加速芯片](../Page/Torrenza.md "wikilink")。

当今最强大的计算机之一是IBM的蓝色基因／L，它拥有65536个双核心处理器，亦即是131072个处理核心，运算性能是367TFlops。理论上，只需不到1000个流处理器，就能达到蓝色基因／L的性能水平。因为每个FireStream流处理器能提供至少375
GFLOPS的运算能力。借助CTM硬件界面，系統就能直接控制流处理器和其記憶體，不用再通過3D API
Layer，所以性能是處理图形數據時的8倍。由於CTM是開放性設計，開發商可將指令集輸入至顯示記憶體中，成為可編程處理器。

根據AMD展示的系统，采用[微软的](../Page/微软.md "wikilink")[Windows XP
Professional](../Page/Windows_XP.md "wikilink")，采用AMD的[Opteron双核心处理器](../Page/Opteron.md "wikilink")，搭配2张AMD
[R600流处理器](../Page/Radeon_R600.md "wikilink")，借助1个通用的MADD计算，這個系统每秒就能完成1万亿次浮点计算，性能是目前頂級系統的10倍。這是由於流处理器核心擁有大量平行处理器，能輕易提升浮点运算性能。

一家名為[Peakstream的公司](../Page/Peakstream.md "wikilink")（已被[Google收购](../Page/Google公司.md "wikilink")）宣佈，只需利用軟體，配合[x86或者](../Page/x86.md "wikilink")[Cell处理器](../Page/Cell.md "wikilink")，就可以發揮出顯示卡強大的浮点運算性能，應用於普通的程序中，而速度會較普通CPU快上20倍。直至Google收购的一刻，該軟體只支援ATI的顯示核心
 。

2007年十一月末，AMD正式发布第二代FireStream流处理器，AMD FireStream 9170，建基于55 nm製作工艺的ATI
RV670显核，提供业界首个雙精度浮点运算流处理器，并达到500
GFLOPS单精度浮点运算速度，功耗向下调至不多于150[瓦特](../Page/瓦特.md "wikilink")。并将于2008年第一季推出FireStream
SDK，提供Compute Astraction
Layer（CAL），成为一个完整的软体编写与开发平台，让开发人员利用高级编程语言（例如：[C语言或](../Page/C语言.md "wikilink")[C++等](../Page/C++.md "wikilink")，以及其他专有[函式库](../Page/函式库.md "wikilink")，如：[Brook+或](../Page/Brook.md "wikilink")[RapidMind等](../Page/RapidMind.md "wikilink")）编写程序，并经过CTM界面，进行低级（[機器代碼](../Page/機器代碼.md "wikilink")）微调。

Stream流处理器的開發軟體名為Stream
SDK。在2008年8月，AMD宜佈將會升級此軟體，以支援[DirectX](../Page/DirectX.md "wikilink")
11和[OpenCL](../Page/OpenCL.md "wikilink")\[2\]。從催化剂
8.12開始，主流顯示卡將可以使用到Stream技術，對抗[NVIDIA的](../Page/NVIDIA.md "wikilink")[CUDA技術](../Page/CUDA.md "wikilink")。\[3\]

## 参考文献

## 外部連結

  - [Folding@Home](http://www.equn.com/folding/)
  - [anandtech.com的分布式计算介绍文章](http://www.anandtech.com/video/showdoc.aspx?i=2849)
  - [anandtech.com的分布式计算论坛](https://web.archive.org/web/20070205124302/http://forums.anandtech.com/categories.cfm?catid=39)
  - [驱动之家 - 斯坦福大学：ATI
    GPU具有最好通用计算性能](http://news.mydrivers.com/1/69/69490.htm)
  - [驱动之家 - 用显卡打造超级计算机](http://news.mydrivers.com/1/68/68617.htm)
  - [Peakstream的GPGPU编程开发工具](https://web.archive.org/web/20070331225237/http://www.peakstreaminc.com/product/free_trial_download.php)
  - [AMD Stream
    Computing](https://web.archive.org/web/20080806101854/http://ati.amd.com/technology/streamcomputing/)

[Category:AMD圖形處理器](https://zh.wikipedia.org/wiki/Category:AMD圖形處理器 "wikilink")
[Category:冶天科技](https://zh.wikipedia.org/wiki/Category:冶天科技 "wikilink")
[Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink")
[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink")
[Category:GPGPU](https://zh.wikipedia.org/wiki/Category:GPGPU "wikilink")

1.  [史單福大學要利用 GPU 來進行 Folding@home
    計畫](http://chinese.engadget.com/2006/10/02/stanford-university-tailors-folding-home-to-gpus/)
2.  [AMD
    Stream流处理计算开发将支持DX11](http://news.mydrivers.com/1/113/113252.htm)
3.  [AMD Stream通用计算技术即将走入大众](http://www.inpai.com.cn/doc/hard/85892.htm)