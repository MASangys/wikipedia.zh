**HyperTransport**匯流排技术，简称“**HT总线**”，以前曾被称作“闪电数据传输”（**Lightning Data Transport**，**LDT**），是一种電腦處理器的互聯技術。它是一種高速、双向、低延时、[点对点](https://zh.wikipedia.org/wiki/点对点 "wikilink")（P2P）、串行或者并行的高带宽连接[总线](../Page/总线.md "wikilink")技术，最早在1999年由超微半導體提出並發起，並聯合[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")、[ALi](https://zh.wikipedia.org/wiki/ALi "wikilink")、[ATI](https://zh.wikipedia.org/wiki/ATI "wikilink")、[Apple](https://zh.wikipedia.org/wiki/Apple "wikilink")、[全美達](../Page/全美達.md "wikilink")、[IBM](../Page/IBM.md "wikilink")、[CISCO等多個硬體廠商組成HyperTransport開放聯盟](https://zh.wikipedia.org/wiki/CISCO "wikilink")，于2001年4月2日开始將此匯流排技術投入使用，並由[HyperTransport联合会](https://zh.wikipedia.org/wiki/HyperTransport联合会 "wikilink")（The HyperTransport Consortium）负责改进和发展此技术。\[1\]\[2\]\[3\]\[4\]

## 名稱

賣場中常有「HT匯流排」與日後英特爾「HT技術」的混淆，然而這兩個是截然不同的技術。**HT**一般指**H**yper**T**ransport，或簡稱**HT匯流排**，一般情況下HyperTransport聯合會都是使用全稱「HyperTransport」以免造成歧義。而應用於[奔騰4處理器](https://zh.wikipedia.org/wiki/奔騰4 "wikilink")、英特爾[Nehalem微架構](../Page/Nehalem微架構.md "wikilink")及其後續微架構之處理器的「HT技術」，英特爾的官方簡稱是**HTT**，**H**yper-**T**hreading **T**echnology 或簡稱**HT Technology**（**HT技術**）。

## 概览

HyperTransport旨在提高[个人计算机](https://zh.wikipedia.org/wiki/个人计算机 "wikilink")、[服务器](../Page/服务器.md "wikilink")、[嵌入式系统](../Page/嵌入式系统.md "wikilink")，以及网络和电信设备内集成电路之间的通信速度。该技术有助于减少系统之中的[布线数量](https://zh.wikipedia.org/wiki/布线 "wikilink")，从而能够减少系统瓶颈，让当前速度更快的微处理器能够更加有效地在高端多处理器系统中使用系统内存。英特爾在使用QPI以前常用的前端匯流排，與同時代的HyperTransport匯流排規格相比，後者擁有更高的頻寬以及記憶體存取速率，而英特爾的技術，要求不同的RAM存取速率範圍要有各自的連接界面，這種設計導致了若要減少匯流排頻寬瓶頸，勢必會增加[主機板的佈線設計複雜度](https://zh.wikipedia.org/wiki/主機板 "wikilink")。HT匯流排的擴展HTX3.1在最高頻寬時，可以作為一個統一匯流排容納四根DDR4模組的所需頻寬，若需要容納更多的DDR4記憶體，則可能需要兩個或更多的HTX3.1匯流排控制器，然而這樣做會使每個控制器的傳輸值降低。

主要特性：

  - 提供比现有技术高得多的[带宽](../Page/带宽.md "wikilink")
  - 使用低延时响应和较少的引脚数
  - 在保持与传统电脑总线的兼容性的同时，可以扩展到新的[SNA](https://zh.wikipedia.org/wiki/SNA "wikilink")（系统网络架构）总线
  - 对[操作系统](../Page/操作系统.md "wikilink")保持透明，对周边设备[驱动程序](../Page/驱动程序.md "wikilink")的影响极小

現時HT匯流排的一個擴展規格HTX3.1，相對於在2014年面世的高速[DDR4記憶體以及較慢的TeraByte級](https://zh.wikipedia.org/wiki/DDR4 "wikilink")（約1GB/s\[5\]，與高階[PCIe SSD類似](https://zh.wikipedia.org/wiki/固態磁碟 "wikilink")）[ULLtraDIMM快閃型隨機存取記憶體](https://zh.wikipedia.org/wiki/ULLtraDIMM "wikilink")（RAM）技術，仍然在競爭中佔上風。

### 連接、傳輸率

HyperTransport迄今推出了4个版本——1.x、2.0、3.0、3.1，它們之中運作频率最低200[MHz](https://zh.wikipedia.org/wiki/MHz "wikilink")，最高3.2[GHz](https://zh.wikipedia.org/wiki/GHz "wikilink")（而[PCI总线频率为](https://zh.wikipedia.org/wiki/PCI "wikilink")33MHz或66MHz）。它也是一种双倍数据速率（[DDR](https://zh.wikipedia.org/wiki/DDR "wikilink")）连接技术，意味着它可以在一个时钟信号的上行沿和下行沿各传输一次数据。HT3.1当运行在3.2GHz時可以最高以6400[MT](../Page/MT.md "wikilink")/s传递数据。而且它具有自适应性，允许根据當前的運算需求，在[晶片組](https://zh.wikipedia.org/wiki/晶片組 "wikilink")（[北橋](../Page/北桥.md "wikilink")）或處理器中确定自己的频率。此外，HyperTransport的資料傳輸模式是雙向傳輸、各向獨占、同時進行的。\[6\]

HyperTransport支援自適應位元寬度，範圍從每鏈路2位元到32位元；每個HyperTransport控制器還有兩路單向鏈路。在HT3.1版本中，當運作於32位元每鏈路、以及HT3.1的最高規格的時脈時，理論傳輸值可達每個傳輸方向25.6GB/s（3.2GHz×每時鐘週期傳輸兩次×每鏈路32位元之位寬），或雙向共51.2GB/s的[頻寬](https://zh.wikipedia.org/wiki/頻寬 "wikilink")，幾乎比現有的個人電腦、[工作站](../Page/工作站.md "wikilink")以及伺服器的匯流排標準都要高，同樣也是高效能運算及網路中最快的匯流排標準（注：[QPI在英特爾的技術說明上不屬於匯流排](https://zh.wikipedia.org/wiki/QPI "wikilink")，儘管它的頻寬最大可以超過HT匯流排之最高頻寬）。\[7\]\[8\]

在單個系統中，它允許不同寬度的鏈路混合連接，比如一個系統中CPU使用16位元鏈路，8位元連接至記憶體而另外8位元連接外圍裝置；除此以外還支援鏈路拆分，不同位宽标准的总线可以变为同一位宽标准的总线（比如说，其中單個16位的鏈路可以拆分為兩个8位的鏈路），这就令Hypertransport既能满足CPU和内存之间的互联，也能满足周边设备之间的互联。而且HyperTransport拥有比其他的匯流排解決方案标准更低的延迟。此外，為滿足多個裝置的連接，HyperTransport還支援菊花鏈的手段實作之。\[9\]連接對象除了SMP系統中處理器與處理器、普通個人電腦的處理器與晶片組以外，還有路由控制晶片、晶片組的南北橋晶片、其它匯流排的控制器等等，只要連接對象擁有HyperTransport控制器，即可進行連接，無需中介界面。\[10\]

[電信號制式上](https://zh.wikipedia.org/wiki/電信號 "wikilink")，HyperTransport使用類似於[低電壓差分信號](https://zh.wikipedia.org/wiki/低電壓差分信號 "wikilink")（LVDS）的1.2V運作電壓。\[11\]HT2.0加入post-cursor發射器去加重。HT3.0加入混雜和接收相位校準以及可選發射器前置去加重。\[12\]

### 資料封包

HyperTransport的資料傳輸基于[資料封包](https://zh.wikipedia.org/wiki/封包 "wikilink")/包裹（Packet）。在HT匯流排中，不管连接的物理位宽是多少，每个包裹总是由32[位元](../Page/位元.md "wikilink")的数据集合组成。命令消息总是放在包裹的最前面。如果一个包裹里面包含有地址，那么命令消息的最后8位元数据和下面的32位元数据就会串成一个40位元的地址。如果有64位寻址的需求，那么就会预先计划一个附加的32位元控制数据包。另外的32位元数据是有效数据（payload）。传输的数据不管实际长度是多少，总会被填充到某个32位元的倍数。\[13\]\[14\]

HyperTransport的包裹以位次（bit times）的方式实现互联。所需要的位次的数量由互联设备之间的位宽决定。HyperTransport还能用于转换系统管理信息、发送中断、发送探针给邻近的设备或者处理器，以及充当一般[I/O和数据的交换的桥梁](https://zh.wikipedia.org/wiki/I/O "wikilink")。HyperTransport有两种不同类型的写命令，称作Posted和Non-Posted。Posted这种写方式不需要目标的回应，一般用于高带宽设备之间的互联。None-Posted的写方式，相反地，就需要目标以一种“target done”的方式回应。读取数据同样也会使目标发送读回应。\[15\]HT匯流排支援多重處理，和[PCI相同的consumer](https://zh.wikipedia.org/wiki/PCI "wikilink")/producer次序規則模型。\[16\]

### 電源管理

HyperTransport提供了比[ACPI更加先进的电源管理系统](https://zh.wikipedia.org/wiki/ACPI "wikilink")。它可以根据处理器睡眠状态（C State）的变化发送改变设备状态（D state）的信号。比如说，当CPU进入睡眠状态时候，关闭硬盘。另外HyperTransport提供的是2.5V的低电压。HT3.0中新增新的電源功能，允許一個集中式電源管理控制器實現電源管理策略。

## 版本規格

<table>
<thead>
<tr class="header">
<th><p>HyperTransport<br />
版本</p></th>
<th><p>發布年份</p></th>
<th><p>最大HT匯流排時脈</p></th>
<th><p>每鏈路最大位寬</p></th>
<th><p>最大頻寬（雙向）</p></th>
<th><p>單向16位元位寬之最大頻寬（GB/s）</p></th>
<th><p>單向32位元位寬之最大頻寬* （GB/s）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.0</p></td>
<td><p>2001</p></td>
<td><p>800 MHz</p></td>
<td><p>32-bit</p></td>
<td><p>12.8 GB/s</p></td>
<td><p>3.2</p></td>
<td><p>6.4</p></td>
</tr>
<tr class="even">
<td><p>1.1</p></td>
<td><p>2002</p></td>
<td><p>800 MHz</p></td>
<td><p>32-bit</p></td>
<td><p>12.8 GB/s</p></td>
<td><p>3.2</p></td>
<td><p>6.4</p></td>
</tr>
<tr class="odd">
<td><p>2.0</p></td>
<td><p>2004</p></td>
<td><p>1.4 GHz</p></td>
<td><p>32-bit</p></td>
<td><p>22.4 GB/s</p></td>
<td><p>5.6</p></td>
<td><p>11.2</p></td>
</tr>
<tr class="even">
<td><p>3.0</p></td>
<td><p>2006</p></td>
<td><p>2.6 GHz</p></td>
<td><p>32-bit</p></td>
<td><p>41.6 GB/s</p></td>
<td><p>10.4</p></td>
<td><p>20.8</p></td>
</tr>
<tr class="odd">
<td><p>3.1</p></td>
<td><p>2008</p></td>
<td><p>3.2 GHz</p></td>
<td><p>32-bit</p></td>
<td><p>51.2 GB/s</p></td>
<td><p>12.8</p></td>
<td><p>25.6</p></td>
</tr>
</tbody>
</table>

  - 資料來源：\[17\]\[18\]\[19\]
  - 注：超微[速龍64](https://zh.wikipedia.org/wiki/Athlon_64 "wikilink")、[速龍64 FX](../Page/Athlon_64_FX.md "wikilink")、[速龍64 X2](https://zh.wikipedia.org/wiki/Athlon_64_X2 "wikilink")、[速龍X2](https://zh.wikipedia.org/wiki/Athlon_X2 "wikilink")、[速龍II](https://zh.wikipedia.org/wiki/Athlon_II "wikilink")、[羿龍](https://zh.wikipedia.org/wiki/羿龍 "wikilink")、[羿龍II](https://zh.wikipedia.org/wiki/Phenom_II "wikilink")、[閃龍](https://zh.wikipedia.org/wiki/閃龍 "wikilink")、[炫龍/銳龍系列以及以後的系列型號使用單](../Page/Turion_64.md "wikilink")16位元HyperTransport鏈路。而速龍64 FX（[Socket F版本](../Page/Socket_F.md "wikilink")）、[皓龍則是使用多達三條](https://zh.wikipedia.org/wiki/皓龍 "wikilink")16位元寬度的HyperTransport鏈路。這些處理器中較老型號的HT匯流排時脈在800MHz至1GHz（多見於[Socket 754](../Page/Socket_754.md "wikilink")/[939](../Page/Socket_939.md "wikilink")/[940插座的單](../Page/Socket_940.md "wikilink")/[多處理器平台](https://zh.wikipedia.org/wiki/多處理器 "wikilink")），較新型號的則可達1.6GHz、2.0GHz等時脈規格（使用[Socket AM2+](../Page/Socket_AM2+.md "wikilink")/[AM3插座的單處理器平台](https://zh.wikipedia.org/wiki/AM3 "wikilink")，一般使用2.0GHz的時脈規格）。\[20\]而HyperTransport自身最大的每鏈路32位元位寬的規格，任何AMD處理器都未完全利用。一些晶片組也沒有用到處理器提供的全部16位元鏈路，這些晶片組包括[輝達](https://zh.wikipedia.org/wiki/輝達 "wikilink")[nForce3](https://zh.wikipedia.org/wiki/nForce3 "wikilink") 150、nForce3 Pro 150、[ALi的M](../Page/揚智科技.md "wikilink")1689——它們的下行鏈路可以用到16位元，而上行鏈路則限制在8位元。\[21\]

## 應用

### 取代前端匯流排

HyperTransport最知名的應用，乃作為[超微的x86中央處理器產品](../Page/AMD處理器列表.md "wikilink")\[22\]以及配套的[輝達nForce晶片組的系統匯流排架構](../Page/NVIDIA_nForce.md "wikilink")。\[23\]而HyperTransport的一個主要用處，就是用作取代英特爾定義的前端匯流排，使使用HT匯流排的x86處理器不同於英特爾的處理器。比如，奔騰及其相容處理器產品不能直接控制使用PCI-E匯流排。為了擴展系統，專有、專用的前端匯流排必須連接至各種標準匯流排控制器的適配器上，這些標準匯流排有AGP、PCI-E等。而這些標準匯流排控制器，按速率、頻寬、功能分別整合至北橋晶片及南橋晶片上。

而相反，HyperTransport則是由多個公司組成的協會公佈並開放規格。一個包含一個HyperTransport適配器的晶片可與一顆開啟HyperTransport的微處理器運作於更高的頻寬上。

#### 超微半導體

AMD在K7微架構開始，就隨AMD64技術一併使用了HyperTransport取代前端匯流排。K7及以後的微架構的Opteron、Athlon 64、 Athlon II、Sempron 64、Turion 64、Phenom、Phenom II及FX系列處理器上，都用上了HT匯流排與北橋連接。不過現時AMD APU產品線上，像是使用Socket FM1\\FM2插座的平台，與FCH的連接則是使用基於PCI-E匯流排技術的UMI匯流排，而且由於不考量多顆處理器並聯運行，並沒有內建HyperTransport。\[24\]

AMD這樣做的是有鑒於[CPU與](https://zh.wikipedia.org/wiki/CPU "wikilink")[記憶體溝通時](https://zh.wikipedia.org/wiki/記憶體 "wikilink")，[北橋的延遲問題做出解決方案](https://zh.wikipedia.org/wiki/北橋 "wikilink")，當將位於北橋內的[記憶體控制器移動到CPU內部時](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")，CPU便可直接與記憶體進行溝通，避開了北橋而讓整體[頻寬大幅提升](https://zh.wikipedia.org/wiki/頻寬 "wikilink")，減輕北橋的負擔，將整體效能拉升。這也就是為何當年AMD的CPU能夠與INTEL抗衡的其中一個原因。\[25\]而這樣做，潛在的問題便是當記憶體規格有變動時，AMD將會非常頭痛。由於記憶體控制器內建在CPU裡面，當記憶體規格變動時，AMD便要重新設計內建新型記憶體控制器的CPU，重新量產新型CPU。考量到銷售問題，還必須要等到把前一代主流產品庫存銷售完，而這樣的問題在[Socket 939過渡到](../Page/Socket_939.md "wikilink")[Socket AM2時期非常明顯](../Page/Socket_AM2.md "wikilink")。所以當廠商開發新一代CPU時，除了需要把記憶體控制器內建在CPU裡面外，還必須要同時開發內建於CPU之中的「容許CPU使用北橋晶片內建的記憶體控制器的轉接器」，此方法不但有利於產品過渡，而且能夠吸引第三方設計廠商針對CPU平台共同設計系統晶片。同时，当使用独立显卡时，当显卡频繁调用系统主存中的纹理与[顶点数据时](../Page/頂點_\(電腦圖學\).md "wikilink")，必须先通过北桥，再绕行CPU，才能访问系统主存。相對比於Intel CPU则因为外置内存控制器，可直接通过北桥链接内存，而获得更快的速度。這些因素也是英特爾的處理器在Nehalem微架構以前一直堅持使用前端匯流排的原因之一。

#### 其它公司之使用

除[AMD以外](https://zh.wikipedia.org/wiki/AMD "wikilink")，[全美达公司也把HyperTransport技术应用在自家的x](https://zh.wikipedia.org/wiki/全美达 "wikilink")86处理器上，如TM8000處理器。\[26\]除[NVIDIA以外](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，併購[ATI後的](https://zh.wikipedia.org/wiki/ATI "wikilink")[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")、[VIA和](https://zh.wikipedia.org/wiki/VIA "wikilink")[SiS也把它用于PC](https://zh.wikipedia.org/wiki/SiS "wikilink")[主板](../Page/主板.md "wikilink")的[芯片组](../Page/芯片组.md "wikilink")。\[27\]

[國際商業機器](https://zh.wikipedia.org/wiki/國際商業機器 "wikilink")（[IBM](../Page/IBM.md "wikilink")）以及[蘋果公司也將HyperTransport技術用於](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Power Mac G5上](../Page/Power_Mac_G5.md "wikilink")，將處理器、PCI-X控制器、SATA控制器、乙太網路卡、USB控制器、FireWire控制器、光纖數位音訊等與兩組雙向的HyperTransport連結架構連接起來。甚至採用英特爾處理器的微軟XBox首代，其處理器也要透過NVIDIA的MCP以HyperTransport將GPU等連結。\[28\][PMC-Sierra](https://zh.wikipedia.org/wiki/PMC-Sierra "wikilink")、[Broadcom](https://zh.wikipedia.org/wiki/Broadcom "wikilink")（[博通](https://zh.wikipedia.org/wiki/博通 "wikilink")）和[Raza Microelectronics则把它应用在](https://zh.wikipedia.org/wiki/Raza_Microelectronics "wikilink")[MIPS微架構](https://zh.wikipedia.org/wiki/MIPS "wikilink")（一种[RISC微处理器架构](https://zh.wikipedia.org/wiki/RISC "wikilink")）微处理器上。

而英特爾卻從來沒有在它的產品中使用過HyperTransport，當年它继续选择使用一种共享的[总线](../Page/总线.md "wikilink")架构，繼續使用自有的匯流排/互聯界面標準，以照顧特殊的RAM級別。在Intel在新的[Nehalem架構](../Page/Nehalem微架構.md "wikilink")（如[Core i7](https://zh.wikipedia.org/wiki/Core_i7 "wikilink")）中不僅採用全新的、效能更強的處理器互聯技術[QPI與AMD主導的HT匯流排形成有力競爭](https://zh.wikipedia.org/wiki/QPI "wikilink")，而且也內置了[記憶體控制器](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")，相較於以往的Intel平台效能有顯著的提升。\[29\]此外英特爾也在2001年的[英特爾開發者論壇](../Page/英特爾開發者論壇.md "wikilink")上公佈與HT匯流排競爭、基於[PCI技術的](https://zh.wikipedia.org/wiki/PCI "wikilink")[3GIO](https://zh.wikipedia.org/wiki/3GIO "wikilink")，由[AWG制定標準並於](https://zh.wikipedia.org/wiki/AWG "wikilink")2002年移交PCI-SIG進行稽核和管理，成為現今的[PCI-E匯流排](../Page/PCI_Express.md "wikilink")。

### 多處理器互聯

HyperTransport的另一主要應用是非均勻存取模型（[NUMA](https://zh.wikipedia.org/wiki/NUMA "wikilink")）電腦系統中[多處理器的互聯](https://zh.wikipedia.org/wiki/多處理器 "wikilink")。

AMD使用HyperTransport配合快取一致性擴展組件（包含於AMD自家的直接連接架構（Direct Connect Architecture）中）來實作，擁有該特性的處理器有Opteron以及Quad FX平台上的Athlon 64 FX產品線。

[Newisys還基於AMD的技術](https://zh.wikipedia.org/wiki/Newisys "wikilink")，發展出[HORUS連接器](https://zh.wikipedia.org/wiki/AMD_Horus "wikilink")，用於高效能大型運算叢集。[3Leaf Systems的Aqua裝置利用HyperTransport進行](https://zh.wikipedia.org/wiki/3Leaf "wikilink")[虛擬化](../Page/虛擬化.md "wikilink")下CPU、記憶體以及輸出/輸入的連接。

除此以外[惠普](../Page/惠普.md "wikilink")、[Sun Microsystems](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")、[IBM](../Page/IBM.md "wikilink")、和[IWill把它用于](https://zh.wikipedia.org/wiki/IWill "wikilink")[服务器](../Page/服务器.md "wikilink")领域；[克雷公司](../Page/克雷公司.md "wikilink")和[QLogic把它用于高性能计算上](https://zh.wikipedia.org/wiki/QLogic "wikilink")。

### 取代路由器/網路交換器的匯流排

HyperTransport也可用作[路由器](../Page/路由器.md "wikilink")和[網路交換器](../Page/網路交換器.md "wikilink")的內部匯流排。路由器和交換器有多重網路界面，並且需要在這些界面上盡可能快地快速轉發資料。舉個例子，4個1Gbps的乙太網路連接埠若需要全速連接則需要8Gb/s的內部頻寬（1Gb/s×4連接埠×兩個傳輸方向），而HyperTransport匯流排可以輕鬆滿足這個頻寬要求。然而一個4+1連接埠的10Gb/s級路由器則要求100Gb/s的內部頻寬。[802.11ac](https://zh.wikipedia.org/wiki/802.11ac "wikilink") 8天線、[WiGig](https://zh.wikipedia.org/wiki/WiGig "wikilink") 60GHz（802.11ad）標準，配合HyperTransport等高頻寬匯流排，會變得更具可行性（但任何地點需使用20至24通道以滿足所需頻寬）。最早是[CISCO Systems](https://zh.wikipedia.org/wiki/CISCO_Systems "wikilink")（[思科](https://zh.wikipedia.org/wiki/思科 "wikilink")）把HyperTransport用于[路由器](../Page/路由器.md "wikilink")领域。

### 協處理器的互聯

中央處理器和[協處理器之間的延時和頻寬問題](https://zh.wikipedia.org/wiki/協處理器 "wikilink")，在實作中一直是它們之間的通信效能的絆腳石。而目前像是[現場可程式邏輯閘陣列](https://zh.wikipedia.org/wiki/現場可程式邏輯閘陣列 "wikilink")（[FPGA](https://zh.wikipedia.org/wiki/FPGA "wikilink")）的協處理器，可以支援HyperTransport匯流排。現時主要的FPGA製造商[Altera](../Page/Altera.md "wikilink")和[Xilinx](https://zh.wikipedia.org/wiki/Xilinx "wikilink")，它們的產品都可直接支援HyperTransport界面，並且有知識產權核（[IP核](https://zh.wikipedia.org/wiki/IP核 "wikilink")）可供出售。而一些公司，像是[XtremeData](https://zh.wikipedia.org/wiki/XtremeData "wikilink")、DRC等，則以上述FPGA廠商的產品，開發出一種可供FPGA直接使用Opteron處理器插座的轉接模組。

AMD在2006年9月21日公佈並啟動的名為[Torrenza專案](https://zh.wikipedia.org/wiki/Torrenza "wikilink")，致力於提升HyperTransport在插卡式裝置與協處理器中的使用。開始將Socket F用於開放給像是XtremeData以及DRC有需要的公司使用。

### 擴展卡連接器

[HyperTransport16_pcie8riser_pcie16.jpg](https://zh.wikipedia.org/wiki/File:HyperTransport16_pcie8riser_pcie16.jpg "fig:HyperTransport16_pcie8riser_pcie16.jpg") HyperTransport聯合會除了發布片上和板上使用的HyperTransport匯流排規格以外，還發布了基於插座式連接埠的規格，以供外圍裝置直接連接至相應的微處理器或控制器等。這個規格被稱為**H**yper**T**ransport e**X**pansion（縮寫：**HTX**）。HTX使用和PCI-E 16x相同的物理連接器（外加一個與PCI-E x1規格相同的連接器作為電源連接），HTX可使這些擴展卡支援與CPU的直接連接以及以DMA方式存取系統記憶體。最早使用HTX連接埠的擴展卡是[QLogic的InfiniPath](https://zh.wikipedia.org/wiki/QLogic "wikilink") InfiniBand HCA。後來IBM、[惠普電腦以及更多的公司陸續發布支援HTX的系統產品](https://zh.wikipedia.org/wiki/惠普公司 "wikilink")。

最初，HTX標準被限定在16位元，運作時脈800MHz。\[30\]

2008年8月，HyperTransport聯合會發布HTX3，其運作時脈達到了2.6GHz（5.2GT/s，10.7GTi，資料傳輸等效時脈5.2GHz，3MT/s的編輯速率），可向下相容原來的HTX標準。\[31\]

### 測試用途

定義「DUT」測試連接器來開啟標準化功能測試系統互聯。\[32\]

## 衍生版本

**Infinity Fabric**，是AMD於2016年公佈的一個基於HyperTransport擴充而來的互聯架構，用於CPU內部/之間、GPU內部/之間以及CPU和GPU之間的互聯，Infinity Fabric並不相容於HyperTransport。與HyperTransport不同的是，Infinity Fabric是AMD專有的[智慧財產權核](https://zh.wikipedia.org/wiki/IP核 "wikilink")，其它廠商需要購買AMD的授權方可使用。\[33\]頻寬在30GB/s至512GB/s之間，根據配置需求而定，[Zen微架構](https://zh.wikipedia.org/wiki/Zen微架構 "wikilink")、代號「Vega」之GPU都由Infinity Fabric實作其內聯的產品。

Infinity Fabric分為兩部分，一個是Infinity Scalable Data Fabric（SDF），負責資料的傳輸；而另一個部分是Infinity Scalable Control Fabric（SCF），負責傳輸控制命令。SDF的傳輸協定、記憶體一致性和[快取一致性基於HyperTransport的修改而來](https://zh.wikipedia.org/wiki/快取一致性 "wikilink")，不過實際上由於這些的大幅修改，與原來HyperTransport的相容變得不可能。除此以外，SDF還可根據不同的處理器系統進行修訂，例如，GPU、APU以及CPU所用的SDF是不一樣的，伺服器平台上SDF甚至可運行於PCIe匯流排上。不過，Infinity Fabric也就僅限於主機板範圍內的使用，以主機板為一節點，節點之間的連線，AMD則是採用開放標準的Gen-Z。\[34\]

## 使用HyperTransport匯流排的產品

  - [AMD基於](https://zh.wikipedia.org/wiki/AMD "wikilink")[AMD64和直接連結架構](https://zh.wikipedia.org/wiki/AMD64 "wikilink")（[Direct Connect Architecture](https://zh.wikipedia.org/wiki/Direct_Connect_Architecture "wikilink")）的中央處理器
  - [Broadcom開發的SiByte](https://zh.wikipedia.org/wiki/Broadcom "wikilink") [MIPS中央處理器](../Page/MIPS架構.md "wikilink")
  - [PMC-Sierra開發的RM](https://zh.wikipedia.org/wiki/PMC-Sierra "wikilink")9000X2 MIPS中央處理器
  - [Raza](https://zh.wikipedia.org/wiki/Raza_Microelectronics_Inc "wikilink") Thread Processors
  - [龍芯](https://zh.wikipedia.org/wiki/龍芯 "wikilink")-3 MIPS中央處理器
  - ht_tunnel from [OpenCores](https://zh.wikipedia.org/wiki/OpenCores "wikilink") project (MPL licence)
  - [ATI](https://zh.wikipedia.org/wiki/ATI "wikilink") Radeon Xpress 200晶片組
  - [Nvidia](https://zh.wikipedia.org/wiki/Nvidia "wikilink") nForce 晶片組
      - nForce Professional MCP（Media and Communication Processor，媒體和通訊處理器）
      - [nForce 4系列](https://zh.wikipedia.org/wiki/nForce4 "wikilink")
      - [nForce 500系列](https://zh.wikipedia.org/wiki/nForce_500 "wikilink")
      - [nForce 600系列](https://zh.wikipedia.org/wiki/nForce_600 "wikilink")
      - [nForce 700系列](https://zh.wikipedia.org/wiki/nForce_700 "wikilink")
  - [ServerWorks](https://zh.wikipedia.org/wiki/ServerWorks "wikilink")（現[Broadcom所有](https://zh.wikipedia.org/wiki/Broadcom "wikilink")）的HyperTransport系統I/O控制器
      - HT-2000
      - HT-2100
  - The [IBM](../Page/IBM.md "wikilink") CPC925 and CPC945 [PowerPC 970 北橋](https://zh.wikipedia.org/wiki/PowerPC_G5#Northbridges "wikilink")，與蘋果電腦共同開發並用於[Power Mac G5](../Page/Power_Mac_G5.md "wikilink")\[35\]
  - 來自HyperTransport Center of Excellence的數個開放原始碼專案核心
  - [Cisco](https://zh.wikipedia.org/wiki/Cisco "wikilink") QuantumFlow處理器

### 使用Infinity Fabric的產品

  - [Ryzen系列](../Page/AMD_Ryzen.md "wikilink")
  - [Radeon Vega系列顯示核心](https://zh.wikipedia.org/wiki/Radeon_500系列 "wikilink")
  - [Epyc系列](../Page/AMD_Epyc.md "wikilink")

## 參見

  - [彈性界面匯流排](https://zh.wikipedia.org/wiki/彈性界面匯流排 "wikilink")
  - [光纖通道](https://zh.wikipedia.org/wiki/光纖通道 "wikilink")
  - [前端匯流排](https://zh.wikipedia.org/wiki/前端匯流排 "wikilink")
  - [快速通道互聯](https://zh.wikipedia.org/wiki/快速通道互聯 "wikilink")
  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")
  - [PCI Express](../Page/PCI_Express.md "wikilink")
  - [RapidIO](https://zh.wikipedia.org/wiki/RapidIO "wikilink")
  - [AGESA](../Page/AGESA.md "wikilink")
  - [Global Memory Interconnect](https://zh.wikipedia.org/wiki/Global_Memory_Interconnect "wikilink")

## 參考資料

## 外部链接

  - .

  - .

  - .

  - .

  - [HyperTransport™ Technology: Simplifying System Design](https://web.archive.org/web/20140813232323/http://www.hypertransport.org/docs/wp/26635A_HT_System_Design.pdf)

[Category:计算机总线](https://zh.wikipedia.org/wiki/Category:计算机总线 "wikilink")

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
11. .
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
35.