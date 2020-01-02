> 本文内容由[NForce 700](https://zh.wikipedia.org/wiki/NForce_700)转换而来。


**nForce 700**是[NVIDIA的第七代](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[晶片組產品](https://zh.wikipedia.org/wiki/晶片組 "wikilink")，支援[AMD和](https://zh.wikipedia.org/wiki/AMD "wikilink")[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")[處理器](https://zh.wikipedia.org/wiki/處理器 "wikilink")。於[2007年12月](../Page/2007年12月.md "wikilink")發佈\[1\]。各晶片組名稱後面的英文字母，代表所支援的處理器平台。例如a代表支援AMD平台，i則是Intel平台。

所有的晶片組都不再存在獨立型和整合型之分。所有的晶片組都會集成顯示核心，配合NVIDIA的顯示卡，用來啟動混合SLI技術。當[混合SLI技術啟動時](https://zh.wikipedia.org/wiki/SLI#混合SLI "wikilink")，若果系統是閒置的狀態，獨立的顯示核心會被關閉，只利用整合式顯示核心仍顯示輸出，以節省電能。如果是進行立體計算的時候，就會兩個核心同時工作，提升渲染效能。另外，整合式顯示核心支援[DirectX](../Page/DirectX.md "wikilink") 10，並提供[PureVideo](https://zh.wikipedia.org/wiki/PureVideo "wikilink") HD。

某些形號的晶片，會另加NF200晶片，加強SLI的效率。它有兩個功用，一個是PW Short，另一個是Broadcast。前者可以令各個GPU核心直接溝通，不用經過晶片組。而後者，CPU只需發放一個指令，NF200晶片就會將它發放給所有的GPU核心。

## 產品型號

### AMD平台

#### nForce 780a SLI

利用NF200晶片，令晶片組可以支援[PCI-Express](https://zh.wikipedia.org/wiki/PCI-Express "wikilink") 2.0，並提供一條全速的PCI-E 16x和兩條PCI-E 8x，可以建立三路SLI。由於晶片已集成顯示核心，所以支援混合SLI技術。處理器方面，支援[HyperTransport](../Page/HyperTransport.md "wikilink") 3.0總線，所以支持[Phenom處理器](https://zh.wikipedia.org/wiki/Phenom "wikilink")。PCI-E方面，需要另加NF200晶片去支援PCI-Express 2.0，並提供三條PCI-E插糟，作三路SLI之用。系統記憶體方面，可以支援DDR2-1066。在AMD 790GX推出後，nForce 780a亦升級支援ACC技術。該技術原本在前者首次出現，可以提高Phenom處理器的超頻幅度。在[2009年3月](../Page/2009年3月.md "wikilink")，更名為[nForce 980a SLI晶片組](https://zh.wikipedia.org/wiki/NForce_900 "wikilink")\[2\]，亦是nForce 900系列的首款產品。

#### nForce 750a SLI

與780a相似，不用另加NF200晶片，支援PCI-Express 2.0，但只提供兩條PCI-E 8x。

#### nForce 740a SLI

規格與nForce 750a SLI相近。

#### nForce 730a

代號MCP78，集成GeForce 8300或8200顯示核心，並支援混合SLI技術。對手是AMD 780G晶片組。由於是單晶片設計，所以成本較低，但卻衍生出發熱問題。所以，不少主機版廠商都會採用散熱扇和較大的散熱片，去為晶片散熱。為了與高端晶片組有所區別，不支援[SLI](https://zh.wikipedia.org/wiki/SLI "wikilink")。

#### nForce 720a

代號MCP78，集成GeForce 8100顯示核心，並支援混合SLI技術。規格與nForce 730a相近。

#### nForce 720D

[2008年12月](../Page/2008年12月.md "wikilink")推出\[3\]。定位低階市場的非整合晶片組，不支援SLI技術，但支援以往只有整合式晶片組才有的NVCC技術。

#### nForce 710a

僅供[OEM市場](https://zh.wikipedia.org/wiki/OEM "wikilink")，代號MCP78，集成GeForce 8100顯示核心，不支援混合SLI技術。

### Intel平台

#### nForce 790i Ultra SLI

定位於頂級玩家與工作站的晶片組，在nForce 780i之後推出，北橋代號C73XE，支援1600Mhz的[前端匯流排](https://zh.wikipedia.org/wiki/前端匯流排 "wikilink")，原生支援[PCI-E](https://zh.wikipedia.org/wiki/PCI-E "wikilink") 2.0，可以組建全PCI-E x16的3-Way SLI，同時亦支援增強版SLI，增强版SLI即PWShort技術是在北橋晶片中，有專用的通道供顯示核心互相傳送數據，記憶體控制器不用參與其中。另一個特點，是**Broadcast**技術，[CPU發出的訊息](https://zh.wikipedia.org/wiki/CPU "wikilink")，各顯示核心可以同時接收\[4\]。[記憶體通過](https://zh.wikipedia.org/wiki/記憶體 "wikilink")[NVIDIA EPP](https://zh.wikipedia.org/wiki/NVIDIA_EPP "wikilink") 2.0技術支援至8GB [DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink") 2000Mhz，但僅限於適用SLI-Ready認證的記憶體。南橋仍採用代號為MCP55P XE的nForce 570 SLI，內建HD Audio與[DualNet雙千兆網卡控制器](https://zh.wikipedia.org/wiki/DualNet "wikilink")，支援[FirstPacket技術](https://zh.wikipedia.org/wiki/FirstPacket "wikilink")，提供6個SATA 3.0GB/s，兩個PATA 133，支援[MediaShield組建](https://zh.wikipedia.org/wiki/MediaShield "wikilink")[RAID](../Page/RAID.md "wikilink") 0、RAID 1、RAID 0+1、RAID 5。提供10個USB，並可透過USB插針來連接支援[NVIDIA ESA技術的設備](https://zh.wikipedia.org/wiki/NVIDIA_ESA "wikilink")。

#### nForce 790i

790i Ultra SLI的簡化版本，北橋代號C73P，記憶體只支援至8GB [DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink") 1333Mhz，其他規格與790i Ultra SLI完全相同。

#### nForce 780i

支援1333MHz [FSB](https://zh.wikipedia.org/wiki/FSB "wikilink")，結構與680i相似，只是新增對45奈米處理器的支援。需要外加NF200晶片去支援PCI-Express 2.0。多卡加速運算方面，支援三路SLI。NF200晶片可以將一條PCI-E x16，橋接成兩條支援PCI-E 2.0的PCI-E x16。另外，北橋支援DDR2記憶體。

#### nForce 770i SLI

該產品已取消發表。770i SLI是790i的簡化版本，支援DDR3記憶體。對手是Intel的P45晶片組。記憶體方面，最高支援[雙通道](https://zh.wikipedia.org/wiki/雙通道 "wikilink")[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink") 1333。晶片組只會提供兩組PCI-E x16插槽，所以不可以支援三路[SLI](https://zh.wikipedia.org/wiki/SLI "wikilink")\[5\]。

#### nForce 760S SLI

僅供[OEM市場](https://zh.wikipedia.org/wiki/OEM "wikilink")，適用於輕薄短小的個人電腦\[6\]，支援[Core 2系列處理器](https://zh.wikipedia.org/wiki/Core_2 "wikilink")，HybridPower技術，可以使用在uATX，SFF，[ITX大小的主機板上](https://zh.wikipedia.org/wiki/ITX "wikilink")。原生支援DDR3，其他規格與nForce 770i SLI基本相同。該產品只有[惠普](../Page/惠普.md "wikilink")等少數廠商推出過。

#### nForce 760i SLI

產品代號MCP7A-SLI，原生支援DDR3，內建GeForce 9400顯示核心，其他規格與nForce 770i SLI基本相同。

#### nForce 750i

支援1333MHz [FSB](https://zh.wikipedia.org/wiki/FSB "wikilink")。原只支援兩條PCI-E x8，後改為兩條PCI-E x16。對手是INTEL的P45晶片組。

#### nForce 740i

支援1333MHz [FSB](https://zh.wikipedia.org/wiki/FSB "wikilink")。即是原先的nForce 650i(MCP55)。因為尚有存貨，為了增加銷量，改名為740i。

#### nForce 730i

代號MCP7A，對應AMD版本的MCP78，同樣是單晶片的整合式晶片組。支援混合SLI技術，亦支援普通[SLI](https://zh.wikipedia.org/wiki/SLI "wikilink")，但只限雙PCI-E x8模式。整合式顯示核心支援DirectX 10和PureVideo HD，型號是GeForce 9400或9300\[7\]。顯示輸出方面，可以支援[HDMI](../Page/HDMI.md "wikilink")和[DisplayPort](../Page/DisplayPort.md "wikilink")。大部分形號都支援[雙通道](https://zh.wikipedia.org/wiki/雙通道 "wikilink")[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink")[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink")。[FSB方面](https://zh.wikipedia.org/wiki/FSB "wikilink")，可以支援1333MHz。[硬碟接口方面](https://zh.wikipedia.org/wiki/硬碟 "wikilink")，提供六個[SATA](../Page/SATA.md "wikilink")，和12個[USB](../Page/USB.md "wikilink") 2.0。它的競爭對手是AMD的790GX晶片組。

#### nForce 720i

代號MCP7A-D，定位低階市場的非整合晶片組。

## 相關條目

  - [NVIDIA晶片組列表](../Page/NVIDIA晶片組列表.md "wikilink")

## 參考鏈接

## 外部連結

  - [nForce 700 AMD平臺官方網頁](http://www.nvidia.com/object/nforce_700a.html)
  - [nForce 700 Intel平臺官方網頁](http://www.nvidia.com/object/nforce_700i.html)

[Category:nForce系列](https://zh.wikipedia.org/wiki/Category:nForce系列 "wikilink") [Category:2007年面世的產品](https://zh.wikipedia.org/wiki/Category:2007年面世的產品 "wikilink")

1.  [New NVIDIA nForce 780i SLI MCP is The Must-Have Gaming Platform for Intel Yorkfield CPUs](http://www.nvidia.com/object/io_1197897414453.html)
2.  [nForce 780a SLI芯片组将更名为nForce 980a SLI](http://news.mydrivers.com/1/127/127143.htm)
3.  [NVIDIA再添独立新军——nForce 720D](http://www.pcpop.com/doc/0/351/351266.shtml)
4.  [nForce 790i将支持增强版SLI](http://news.mydrivers.com/1/99/99752.htm)
5.  [NVIDIA四季度发布nForce 770i SLI芯片组](http://news.mydrivers.com/1/114/114941.htm)
6.  [nForce 760S SLI，為輕薄短小的個人電腦提供高階DirectX 10電玩效能](http://www.nvidia.com.tw/object/product_nforce_760s_tw.html)
7.  [精英、微星披露MCP7A GeForce 9300主板](http://news.mydrivers.com/1/116/116107.htm)