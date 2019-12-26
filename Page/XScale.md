[Toradex_Colibri_XScale_Monahans_PXA290.jpg](https://zh.wikipedia.org/wiki/File:Toradex_Colibri_XScale_Monahans_PXA290.jpg "fig:Toradex_Colibri_XScale_Monahans_PXA290.jpg") **Xscale**是[Marvell 公司](https://zh.wikipedia.org/wiki/迈威尔科技有限公司 "wikilink")（之前是[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")）針對[嵌入式產品的核心](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")，當初是[ARM架構](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")[v5TE指令集的](https://zh.wikipedia.org/wiki/ARM_v5TE "wikilink")[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")。2006年6月，Intel将其通信及应用处理器业务出售给Marvell公司，並作為一系列不同[微架構](../Page/微架構.md "wikilink")的處理器的品牌。

## 簡介

Intel的XScale[处理器主要用于](../Page/中央处理器.md "wikilink")[掌上电脑等便携设备](https://zh.wikipedia.org/wiki/掌上电脑 "wikilink")，它是Intel公司始于[ARM](https://zh.wikipedia.org/wiki/ARM "wikilink") v5TE处理器发展的产品，前身為[StrongARM](../Page/StrongARM.md "wikilink")，在架构扩展的基础上同时也保留了对于以往产品的向下兼容，因此获得了广泛的应用。相比于標準ARM的ARM9/ARM11处理器，XScale功耗更低，系统伸缩性更好，同时核心频率也得到提高，达到了400Mhz甚至更高。这种处理器还支持高效通讯指令，可以和同样架构处理器之间达到高速传输。其中一个主要的扩展就是无线[MMX](../Page/MMX.md "wikilink")，这是一种64位的[SIMD指令集](https://zh.wikipedia.org/wiki/SIMD "wikilink")，在新款的 Xscale处理器中集成有SIMD协处理器。这些指令集可以有效的加快视频、3D图像、音频以及其他SIMD传统元素处理。但隨着ARMv7的推出，採用兩代前指令集的xScale開始顯得過時，故Marvell開始在xScale品牌內推出採用較新、ARM官方的Cortex微架構的產品。

## 系列

### 應用程式處理器(Application Processor)PXA系列

  - [2006年7月](../Page/2006年7月.md "wikilink")，Intel宣布將PXA系列的處理器部門，包含PXA2XX及PXA9XX（代號：Hermon）賣給[Marvell公司](https://zh.wikipedia.org/wiki/Marvell "wikilink")。

#### PXA210

代號Sabinal

#### PXA25x

[缩略图](https://zh.wikipedia.org/wiki/File:Typhoon_MyGuide_3500_mobile_-_controller_-_Intel_PXA255A0C300-1180.jpg "fig:缩略图") 代號Cotulla

  - PXA250 \[已停產\]
  - PXA255官方網址 [PXA255](http://www.intel.com/design/pca/prodbref/252780.htm)

#### PXA26X

  - PXA26X官方網址 [PXA26X](http://www.intel.com/design/pca/prodbref/251671.htm)

#### PXA27X

PXA27x 系列 (内部代号 Bulverde) 包括了 PXA270 和 PXA271-PXA272 几款[处理器](https://zh.wikipedia.org/wiki/处理器 "wikilink")。这次升级是XScale系列处理器的一次巨大提升。PXA270 有以下几种运行[频率](https://zh.wikipedia.org/wiki/频率 "wikilink")： 312 MHz, 416 MHz, 520 MHz 。对于封装内没有内置内存的单独CPU版本，还可以运行在624 MHz的高频率。PXA271 可以运行在 312 MHz 或 416 MHz，在同一个封装内还集成了32 MiB 的 16位 stacked StrataFlash 闪存和32 MiB 的 16位 [SDRAM](../Page/SDRAM.md "wikilink") 内存。 PXA272可以运行在312 MHz, 416 MHz 或 520 MHz，并内置 64 MiB 的 32位 stacked StrataFlash [闪存](../Page/闪存.md "wikilink")。

Intel 还在 PXA27x 系列中加入了如下的新技术：

  - 移动版 [SpeedStep](../Page/SpeedStep.md "wikilink")： 操作系统可以根据运行需要调节CPU频率以节能。
  - 移动 [MMX](../Page/MMX.md "wikilink")： 43 条新的 SIMD 指令 包含了 完整的 MMX [指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink") 和一些SSE 指令集中的[整数](../Page/整数.md "wikilink")指令。 移动 MMX 提供了 16 条额外的 64位 [寄存器](../Page/寄存器.md "wikilink")，并可以被当成双重32位的来处理，像四个16位halfwords 或八个 8位 字节。 这项能力可以加速芯片的编码和解码速度，提高多媒体和游戏的性能。
  - 附加的外部设计： 例如[USB-Host界面和摄像头界面](https://zh.wikipedia.org/wiki/USB-Host "wikilink")。
  - 集成 256KB [SRAM](https://zh.wikipedia.org/wiki/SRAM "wikilink") 缓存，降低功耗和延迟。

PXA27x系列于2004年4月发布。此外Intel还发布了[2700G嵌入式图形](https://zh.wikipedia.org/wiki/2700 "wikilink")[协处理器](https://zh.wikipedia.org/wiki/协处理器 "wikilink") 。

  - PXA27X官方網址 [PXA27X](http://www.intel.com/design/pca/prodbref/253820.htm)
  - 預計2009年EOL

#### PXA3xx(Monahans)

  - [2005年8月](../Page/2005年8月.md "wikilink")，Intel發布了PXA27X的下一代產品，代號為Monahans的CPU。
  - [2006年11月](../Page/2006年11月.md "wikilink")，Marvell公司發表了PXA300,PXA310,PXA320.

#### PXA800F

  - [PXA800F Processor](http://www.intel.com/design/pca/cellularprocessors/index.htm)

#### PXA16x

[SOM168.jpg](https://zh.wikipedia.org/wiki/File:SOM168.jpg "fig:SOM168.jpg") pxa16x处理器具有强劲的运算能力，尤其适用于对于成本敏感的系统和嵌入式系统，比如[电子相框](https://zh.wikipedia.org/wiki/电子相框 "wikilink")、[电子阅读器](https://zh.wikipedia.org/wiki/电子阅读器 "wikilink")、[多功能打印机显示器](https://zh.wikipedia.org/wiki/多功能打印机 "wikilink")、[IP电话](https://zh.wikipedia.org/wiki/IP电话 "wikilink")，[网络相机以及家庭控制系统](https://zh.wikipedia.org/wiki/Web_cam "wikilink")。 \[1\]

#### PXA90x

Marvell推出了PXA90x处理器，她集成了GSM/CDMA 通讯模块的XScale核心 \[2\] PXA90x 运用130 nm 技术制造\[3\]

#### PXA930/935

PXA930和PXA935系列处理器使用了发展自Marvell公司\[4\]的架构,以替代原有的Xscale或ARM的设计。这个设计,被称为Sheeva内核,\[5\]是ARM兼容的。Sheeva内核是一款所谓的多核架构\[6\]内码名为Tavor;多核意味着它支持ARMv5TE, ARMv6和ARMv7指令集。\[7\]\[8\]这一新的架构相对于旧的Xscale架构而言有突破式的跨越。PXA930使用65纳米技术\[9\]而PXA935建筑在45纳米之上。\[10\]

PXA930用在黑莓Bold9700上。

#### PXA940

PXA940系列处理器基于[ARM Cortex-A8内核](../Page/ARM_Cortex-A8.md "wikilink")\[11\]，但是并不为大家所熟知。 它采用了45纳米的加工工艺生产，黑莓的Torch 9800手机采用了这款芯片\[12\]\[13\]。

#### PXA986/PXA988

其為雙核[Cortex A9處理器](https://zh.wikipedia.org/wiki/Cortex_A9 "wikilink")。\[14\]用於[Samsung Galaxy Tab 3 7.0等裝置](https://zh.wikipedia.org/wiki/Samsung_Galaxy_Tab_3 "wikilink")。\[15\]

#### PXA1088

這是個配撘了[Vivante](https://zh.wikipedia.org/wiki/Vivante "wikilink") GPU的[Cortex A7四核心處理器](https://zh.wikipedia.org/wiki/Cortex_A7 "wikilink")\[16\]

### 控制平台處理器(Control Plane Processors) IXC系列

  - IXC1100

### I/O處理器(I/O Processors) IOP系列

目前有IOP303, IOP310, IOP321, IOP331, IOP332與IOP333。工作頻率自100MHz到800MHz。

### 網路處理器(Network Processors) IXP系列

IXP產品線主要用來設計網路設備以及工業控制用機器。主要應用有[IP电话](https://zh.wikipedia.org/wiki/IP电话 "wikilink")、網路交換機（switch）、無線網路產品（wireless AP）以及數位媒體播放器（Digital Media Player）。目前有下列產品：

  - IXP420, IXP421, IXP422, IXP423, IXP425
  - IXP455, IXP460 與IXP465。
  - IXP1200, IXP2350, IXP2325, IXP2400
  - IXP2805, IXP2855

### CE系列

  - [2007年4月](../Page/2007年4月.md "wikilink")，Intel發表了一款速度高達1GHz的Xscale核心的多媒體處理器CE2110
  - [1](http://www.intel.com/design/celect/2110/index.htm)

### 其他系列

  - 另外有兩種單獨設計的CPU:80200與80219，主要用途是一些需要[PCI介面的產品應用](https://zh.wikipedia.org/wiki/PCI "wikilink")，多半用途為[NAS](https://zh.wikipedia.org/wiki/NAS "wikilink")（網路儲存設備）。

## 参考资料

## 外部連結

  - [Intel XScale 技術概觀](http://www.intel.com/design/intelxscale/)
  - [RIM採用英特爾Hermon晶片](https://web.archive.org/web/20060508181912/http://cdnet.stpi.org.tw/techroom/market/eeic/eeic125.htm)

[Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink") [Category:Intel处理器](https://zh.wikipedia.org/wiki/Category:Intel处理器 "wikilink") [Category:ARM架構](https://zh.wikipedia.org/wiki/Category:ARM架構 "wikilink")

1.  [Marvell ARMADA 100 Processors product page](http://www.marvell.com/products/processors/applications/armada_100)
2.  [Marvell Communications Processors product page](http://www.marvell.com/products/cellular/cellular.jsp)
3.  <http://pdadb.net/index.php?m=cpu&id=a900&c=intel_xscale_pxa900>
4.  <http://translate.google.nl/translate?js=y&prev=_t&hl=nl&ie=UTF-8&layout=1&eotf=1&u=http%3A%2F%2Ftweakers.net%2Freviews%2F1766%2F4%2Fblackberry-pearl-3g-klein-en-kwiek-hardware-en-bouwkwaliteit.html&sl=nl&tl=en>
5.
6.
7.
8.  <http://pdadb.net/index.php?m=cpu&id=a935&c=marvell_pxa935>
9.  <http://pdadb.net/index.php?m=cpu&id=a930&c=marvell_pxa930>
10.
11. <http://extranet.marvell.com/technologies/cpu_history/cpu_history.jsp>
12. <http://www.ubmtechinsights.com/reports-and-subscriptions/investigative-analysis/blackberry-torch-9800/teardown/>
13.
14. <http://www.engadget.com/2012/08/14/marvell-pxa988-and-pxa986-chips-support-3g-for-china-and-the-world/>
15. <http://www.ubergizmo.com/2013/05/samsung-galaxy-tab-3-runs-on-a-marvel-pxa986-processor/>
16. <http://www.engadget.com/2013/02/19/marvell-pxa1088-quad-core-cortec-a7-soc/>