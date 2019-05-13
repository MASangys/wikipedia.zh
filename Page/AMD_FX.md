**AMD
FX**是[AMD开发的](https://zh.wikipedia.org/wiki/AMD "wikilink")[x86桌上型](../Page/x86.md "wikilink")[处理器](https://zh.wikipedia.org/wiki/处理器 "wikilink")，是[Bulldozer](../Page/AMD_Bulldozer.md "wikilink")[微架構的正式产物之一](../Page/微架構.md "wikilink")，於2011年9月19日正式上市\[1\]\[2\]。2017年由[AMD
Zen微架構的](https://zh.wikipedia.org/wiki/AMD_Zen "wikilink")[AMD
Ryzen系列取代](https://zh.wikipedia.org/wiki/AMD_Ryzen "wikilink")。

## 特点

[AMD_FX_8350_Prozessor.jpg](https://zh.wikipedia.org/wiki/File:AMD_FX_8350_Prozessor.jpg "fig:AMD_FX_8350_Prozessor.jpg")

### 微架構

[AMD_Bulldozer_chipset.PNG](https://zh.wikipedia.org/wiki/File:AMD_Bulldozer_chipset.PNG "fig:AMD_Bulldozer_chipset.PNG")
AMD FX系列采用AMD
Bulldozer微架構。Bulldozer[微架構採用基於集群多線程的模块化设计](../Page/微架構.md "wikilink")，一個模組包含兩個整數叢集（在作業系統中顯示為兩個邏輯核心）、一個雙執行緒的浮點運算單元（FlexFPU）、64KB一級資料快取以及每個整數叢集單獨配備的16KB一級指令快取其，其每个整數叢集擁有4條管線，在这4條管線中，2个[算術邏輯單元](https://zh.wikipedia.org/wiki/算術邏輯單元 "wikilink")（[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")）与2个[位址生成單元](https://zh.wikipedia.org/wiki/位址生成單元 "wikilink")（[AGU](https://zh.wikipedia.org/wiki/AGU "wikilink")）为一组。由此每个模块可在每个時鐘週期内处理4条[指令](https://zh.wikipedia.org/wiki/指令 "wikilink")（2次運算操作和2次存取操作）。而x86指令集会被分成8个uOPs，这就刚好与管線内的ALU和AGU两两成对。AMD官方指出这会使性能相对于[K10构架提升](https://zh.wikipedia.org/wiki/K10 "wikilink")50%以上。

Bulldozer微架構支援超多指令集，除了基本的[x86-64](../Page/x86-64.md "wikilink")（[AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")）和[x87外](https://zh.wikipedia.org/wiki/x87 "wikilink")，包括[MMX](../Page/MMX.md "wikilink")(+)、[SSE](../Page/SSE.md "wikilink")(1,
2, 3, 3S, 4.1, 4.2, 4a)、[NX
bit](https://zh.wikipedia.org/wiki/NX_bit "wikilink")、[AMD-V](https://zh.wikipedia.org/wiki/AMD-V "wikilink")、[IOMMU](https://zh.wikipedia.org/wiki/IOMMU "wikilink")、[AES](../Page/AES指令集.md "wikilink")、[AVX](https://zh.wikipedia.org/wiki/AVX "wikilink")、[FMA4](../Page/FMA指令集.md "wikilink")、XOP、CVT16/F16C、CLMUL、BMI1、ABM、TBM等指令集，AVX可使[浮点运算能力提高近](https://zh.wikipedia.org/wiki/浮点运算 "wikilink")60%，FMA4、XOP、CVT16/F16C是由AMD
SSE5指令集拆分而来。不過，以往AMD支援的[3DNow\!指令集則被丟棄了](../Page/3DNow!.md "wikilink")。改進版的Piledriver微架構新增[FMA3](https://zh.wikipedia.org/wiki/FMA "wikilink")、AVX1.1等新指令集的支援。\[3\]

### “Zambezi”核心

AMD FX系列處理器於2011年9月正式上市。\[4\]首次发布的AMD
FX的核心代號为“Zambezi”（[贊比西河](https://zh.wikipedia.org/wiki/贊比西河 "wikilink")）。使用新的[Socket
AM3+](../Page/Socket_AM3+.md "wikilink")（942針腳）插座，支持[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink")-1866双通道内存。市售版本分为8核、6核、4核三种版本，主频从2.8GHz\~4.2GHz不等。最初有4個Bulldozer處理器在2011年9月19日發佈，根据核心数目划分型號：[四核心](https://zh.wikipedia.org/wiki/多核心 "wikilink")
FX-4100、六核心 FX-6100、八核心
FX-8150、FX-8120。\[5\]\[6\]\[7\]\[8\]使用[GlobalFoundries](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink")
32nm [SOI](../Page/SOI.md "wikilink") HKMG工艺製造，支持Turbo Core
2.0、[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")、[HyperTransport](../Page/HyperTransport.md "wikilink")
3.1等技术。配套[芯片组为](../Page/芯片组.md "wikilink")[AMD
900系列芯片组](../Page/AMD_900_芯片组系列.md "wikilink")。AMD FX系列与[AMD
Radeon HD
6000系列和AMD](https://zh.wikipedia.org/wiki/AMD_Radeon_HD_6000 "wikilink")
900系芯片组组成新的“Scorpio”（[天蠍星座](https://zh.wikipedia.org/wiki/天蠍座 "wikilink")）
3A平台。

### “Vishera”核心

[AMD_FX-8320.jpg](https://zh.wikipedia.org/wiki/File:AMD_FX-8320.jpg "fig:AMD_FX-8320.jpg")
[AMD_FX_6100_Package.jpg](https://zh.wikipedia.org/wiki/File:AMD_FX_6100_Package.jpg "fig:AMD_FX_6100_Package.jpg")
改版的AMD FX採用基於AMD
Bulldozer架構改進的[Piledriver架構](../Page/AMD_Piledriver.md "wikilink")，於2012年10月23日上架販售。\[9\]\[10\]首發型號為FX-8350、FX-8320、FX-6300以及FX-4320。\[11\]\[12\]此次AMD為其推出“Volan”（[飛魚星座](https://zh.wikipedia.org/wiki/飛魚座 "wikilink")）3A平台：由第二代AMD
FX處理器、AMD 900系列晶片組和[AMD Radeon HD
7000系列](../Page/AMD_Radeon_HD_7000.md "wikilink")[顯示卡組成](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")。\[13\]
\[14\]新版AMD FX支援[Turbo
Core](https://zh.wikipedia.org/wiki/Turbo_Core "wikilink")
3.0、[PowerNow\!](https://zh.wikipedia.org/wiki/PowerNow! "wikilink")、EVP
(Enhanced Virus
Protection)、ECC記憶體。使用了[Cyclos半導體公司最新的](https://zh.wikipedia.org/wiki/Cyclos半導體公司 "wikilink")[共振时钟网络技術](https://zh.wikipedia.org/wiki/共振时钟网络 "wikilink")，可降低能耗、提升能源效率的同時提升時鐘頻率，籍此緩解AMD
FX系列耗電過高的問題。\[15\]首發型號有4模組8核心的FX-8350、FX-8320，3模組6核心的FX-6300以及2模組4核心的FX-4320，共4款微處理器型號，\[16\]\[17\]\[18\]預設主頻普遍比第一代的要高不少，譬如FX-8350的預設主頻就高達4.0GHz，最大加速時鐘頻率4.2GHz，熱設計功耗125瓦。\[19\]\[20\]而後接著會有主頻稍低的FX-8300、FX-4350、FX-4300。\[21\]\[22\]\[23\]第二代FX系列上市後，第一代的產品會於在2012年第四季度開始停產[TDP為](https://zh.wikipedia.org/wiki/TDP "wikilink")125瓦的型號，接著是TDP為95瓦的型號，2013年第一季度完全退出市場。\[24\]

不過，改版的AMD FX效能和功耗控制仍不如對手英特爾的Core
i7，但相比Bulldozer架構，Zambezi核心的舊版FX，則平均有13%至15%的效能提升。\[25\]\[26\]\[27\]\[28\]\[29\]\[30\]

2013年6月11日，AMD發表了極致效能型號FX-9370及FX-9590，當中FX-9370預設時鐘頻率高達4.4
Ghz，加速可達4.7GHz；而FX-9590預設時鐘頻率更高達4.7
Ghz，加速時脈更達5.0GHz，為AMD當時最高級的旗艦處理器，創下市售處理器（包括OEM）的時脈记录。儘管可勉強與英特爾的i7-4770K一戰，但高達220W的熱設計功耗除了創下市售處理器的熱設計功耗記錄以外使得可選擇的主機板不多。處理器本身是FX-8350的晶片中挑選過「過硬體質」並進行高時脈、高電壓設定的結果。最初僅供OEM，後來推出零售版本，發售價格從999美元起，但不久降至僅200美元起。\[31\]\[32\]\[33\]

2014年第三季，發布高效能型號FX-8370，時脈最高加速至4.3GHz；另外還上架了兩款節能版FX-8370E及FX-8320E，其通過提升製造工藝，使兩者新型號的時脈設定與FX-8370、FX-8320相同的情況下，但[熱設計功耗則由約](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")125W下降至約95W。

## 效能和耗能問題

首代AMD
FX系列，在不少測評媒體中的效能表現不如官方公佈的數據，而且在[超頻狀態下](../Page/超頻.md "wikilink")[電能消耗過高](https://zh.wikipedia.org/wiki/電能 "wikilink")，使得其[微架構的設計](../Page/微架構.md "wikilink")、能耗比方面飽受爭議。[微軟公司還為Bulldozer微架構的處理器發布了效能優化](https://zh.wikipedia.org/wiki/微軟公司 "wikilink")[修補程式](https://zh.wikipedia.org/wiki/修補程式 "wikilink")，\[34\]儘管實際效果不明顯。\[35\]\[36\]\[37\]

實際產品無論是性能還是能耗表現令x86處理器市場失望之餘，導致AMD未來6年無任何一款處理器產品匹敵英特爾的，間接造成英特爾對處理器效能連年的不思進取而被戲稱“牙膏廠”。\[38\]\[39\]儘管改版的AMD
FX效能和能耗稍有長進，但是由AMD
FX乃至Bulldozer微架構的效能和能耗弱勢直至Zen微架構及其正式產物Ryzen系列處理器的發售才得以改觀。

### 金氏世界紀錄

AMD
全球副總裁暨終端產品事業群[總經理Chris](https://zh.wikipedia.org/wiki/總經理 "wikilink")
Cloran表示，等級最高的FX-8150八核心處理器，在2011年8月31日，由AMD團隊[超頻達到](../Page/超頻.md "wikilink")8.429[GHz](https://zh.wikipedia.org/wiki/GHz "wikilink")，超越同廠處理器先前的被「Team
AMD FX」締造的8.308
GHz成績，榮登[金氏世界紀錄](https://zh.wikipedia.org/wiki/金氏世界紀錄 "wikilink")「最高時脈的電腦處理器」。\[40\]

## 處理器列表

### “Zambezi”，基於「Bulldozer」

  - 四模組八線程型號：FX-81XX；三模組六線程型號：FX-62XX、FX-61XX；雙模組四線程型號：FX-41XX
  - 採用32納米 SOI
    HKMG製程，由[GlobalFoundries於](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink")[德國](https://zh.wikipedia.org/wiki/德國 "wikilink")[德累斯頓的工廠製造](https://zh.wikipedia.org/wiki/德累斯頓 "wikilink")
  - 支援[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink")-1866以上的[記憶體時脈](https://zh.wikipedia.org/wiki/記憶體 "wikilink")（800MHz至2133MHz）
  - 使用[µPGA封裝](https://zh.wikipedia.org/wiki/插針網格陣列封裝 "wikilink")、[Socket
    AM3+腳位](../Page/Socket_AM3+.md "wikilink")
  - 基準[時鐘頻率為](https://zh.wikipedia.org/wiki/時鐘頻率 "wikilink")200 MHz
  - 晶片面積約319平方毫米，電晶體數量約16億（節點推斷）
  - 不鎖定倍頻設定

#### FX-4100/4200系列

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/版本" title="wikilink">步進</a></p></th>
<th><p>模組/核心/<a href="https://zh.wikipedia.org/wiki/線程" title="wikilink">線程</a></p></th>
<th><p>時脈 (<a href="https://zh.wikipedia.org/wiki/GHz" title="wikilink">GHz</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/快取" title="wikilink">快取</a></p></th>
<th><p><a href="../Page/HyperTransport.md" title="wikilink">HT時脈</a><br />
(GHz)</p></th>
<th><p>核心<a href="../Page/電壓.md" title="wikilink">電壓</a><br />
(<a href="../Page/伏特.md" title="wikilink">V</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(<a href="../Page/瓦特.md" title="wikilink">W</a>)</p></th>
<th><p>部件號</p></th>
<th><p>發布<a href="../Page/日期.md" title="wikilink">日期</a></p></th>
<th><p>售價<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基準</p></td>
<td><p>加速</p></td>
<td><p>L2 (MiB)</p></td>
<td><p>L3 (MiB)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>普通版</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-4100</strong></p></td>
<td><p>B2</p></td>
<td><p>2/4/4</p></td>
<td><p>3.6</p></td>
<td><p>3.7～3.8</p></td>
<td><p>2 ×2</p></td>
<td><p>8</p></td>
<td><p>2</p></td>
<td><p>0.775～1.425</p></td>
<td><p>95</p></td>
<td><p>FD4100WMW4KGU</p></td>
</tr>
<tr class="even">
<td><p><strong>FX-4120</strong></p></td>
<td><p>3.9</p></td>
<td><p>4.0～4.1</p></td>
<td></td>
<td><p>（已取消）</p></td>
<td><p>2012年</p></td>
<td><p>$122</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-4130</strong></p></td>
<td><p>3.8</p></td>
<td><p>3.9～4.0</p></td>
<td><p>4</p></td>
<td><p>0.775～1.425</p></td>
<td><p>125</p></td>
<td><p>FD4130FRW4MGU</p></td>
<td><p>2012年8月27日</p></td>
<td><p>$125</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>FX-4150</strong></p></td>
<td><p>B3</p></td>
<td><p>3.8</p></td>
<td><p>3.9～4.0</p></td>
<td><p>8</p></td>
<td><p>2.2</p></td>
<td><p>0.75～1.40</p></td>
<td><p>95<br />
125</p></td>
<td><p>FD4150WMW4KGU<br />
FD4150FRW4MGU</p></td>
<td><p>2012年</p></td>
<td><p>$137</p></td>
</tr>
<tr class="odd">
<td><p><strong>FX-4170</strong></p></td>
<td><p>B2</p></td>
<td><p>4.2</p></td>
<td><p>4.3～4.3</p></td>
<td><p>0.75～1.40</p></td>
<td><p>125</p></td>
<td><p>FD4170FRW4KGU</p></td>
<td><p>2012年2月25日</p></td>
<td><p>$119</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>FX-4200</strong></p></td>
<td><p>3.3</p></td>
<td><p>3.6～3.9</p></td>
<td><p>0.775～1.425</p></td>
<td><p>FD4200FRW4KGU</p></td>
<td><p>2012年5月</p></td>
<td><p>$154</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

#### FX-6100/6200系列

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/版本" title="wikilink">步進</a></p></th>
<th><p>模組/核心/<a href="https://zh.wikipedia.org/wiki/線程" title="wikilink">線程</a></p></th>
<th><p>時脈 (<a href="https://zh.wikipedia.org/wiki/GHz" title="wikilink">GHz</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/快取" title="wikilink">快取</a></p></th>
<th><p><a href="../Page/HyperTransport.md" title="wikilink">HT時脈</a><br />
(GHz)</p></th>
<th><p>核心<a href="../Page/電壓.md" title="wikilink">電壓</a><br />
(<a href="../Page/伏特.md" title="wikilink">V</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(<a href="../Page/瓦特.md" title="wikilink">W</a>)</p></th>
<th><p>部件號</p></th>
<th><p>發布<a href="../Page/日期.md" title="wikilink">日期</a></p></th>
<th><p>售價<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基準</p></td>
<td><p>加速</p></td>
<td><p>L2 (MiB)</p></td>
<td><p>L3 (MiB)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>普通版</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-6100</strong></p></td>
<td><p>B2</p></td>
<td><p>3/6/6</p></td>
<td><p>3.3</p></td>
<td><p>3.6～3.9</p></td>
<td><p>2 ×3</p></td>
<td><p>8</p></td>
<td><p>2</p></td>
<td><p>0.775～1.425</p></td>
<td><p>95</p></td>
<td><p>FD6100WMW6KGU</p></td>
</tr>
<tr class="even">
<td><p><strong>FX-6120</strong></p></td>
<td><p>3.6</p></td>
<td><p>3.9～4.2</p></td>
<td><p>0.775～1.425</p></td>
<td><p>FD6120WMW6KGU</p></td>
<td><p>2012年</p></td>
<td><p>$155</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-6130</strong></p></td>
<td><p>3.6</p></td>
<td><p>3.8～3.9</p></td>
<td></td>
<td><p>（已取消）</p></td>
<td><p>2012年第二季度</p></td>
<td><p>$157</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>FX-6200</strong></p></td>
<td><p>3.8</p></td>
<td><p>4.0～4.1</p></td>
<td><p>2.2</p></td>
<td><p>0.75～1.40</p></td>
<td><p>125</p></td>
<td><p>FD6200FRW6KGU</p></td>
<td><p>2012年2月25日</p></td>
<td><p>$150</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

#### FX-8100系列

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/版本" title="wikilink">步進</a></p></th>
<th><p>模組/核心/<a href="https://zh.wikipedia.org/wiki/線程" title="wikilink">線程</a></p></th>
<th><p>時脈 (<a href="https://zh.wikipedia.org/wiki/GHz" title="wikilink">GHz</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/快取" title="wikilink">快取</a></p></th>
<th><p><a href="../Page/HyperTransport.md" title="wikilink">HT時脈</a><br />
(GHz)</p></th>
<th><p>核心<a href="../Page/電壓.md" title="wikilink">電壓</a><br />
(<a href="../Page/伏特.md" title="wikilink">V</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(<a href="../Page/瓦特.md" title="wikilink">W</a>)</p></th>
<th><p>部件號</p></th>
<th><p>發布<a href="../Page/日期.md" title="wikilink">日期</a></p></th>
<th><p>售價<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基準</p></td>
<td><p>加速</p></td>
<td><p>L2 (MiB)</p></td>
<td><p>L3 (MiB)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>普通版</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-8100</strong></p></td>
<td><p>B2</p></td>
<td><p>4/8/8</p></td>
<td><p>2.8</p></td>
<td><p>3.1～3.7</p></td>
<td><p>2 ×4</p></td>
<td><p>8</p></td>
<td><p>2</p></td>
<td><p>0.775～ 1.425</p></td>
<td><p>95</p></td>
<td><p>FD8100WMW8KGU</p></td>
</tr>
<tr class="even">
<td><p><strong>FX-8120</strong></p></td>
<td><p>3.1</p></td>
<td><p>3.4～4.0</p></td>
<td><p>0.775～1.425</p></td>
<td><p>95<br />
125</p></td>
<td><p>FD8120FRW8KGU</p></td>
<td><p>2011年10月12日</p></td>
<td><p>$205</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-8140</strong></p></td>
<td><p>B3</p></td>
<td><p>3.2</p></td>
<td><p>3.6～4.1</p></td>
<td><p>2.2</p></td>
<td><p>0.775～1.425</p></td>
<td><p>95</p></td>
<td><p>FD8140WMW8KGU</p></td>
<td><p>2012年第一季度</p></td>
<td><p>$205</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>FX-8150</strong></p></td>
<td><p>B2</p></td>
<td><p>3.6</p></td>
<td><p>3.9～4.2</p></td>
<td><p>0.775～1.425</p></td>
<td><p>125</p></td>
<td><p>FD8150FRW8KGU</p></td>
<td><p>2011年10月12日</p></td>
<td><p>$245</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-8170</strong></p></td>
<td><p>B3</p></td>
<td><p>3.9</p></td>
<td><p>4.2～4.5</p></td>
<td></td>
<td><p>125</p></td>
<td><p>（已取消）</p></td>
<td><p>2012年</p></td>
<td><p>$275</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

資料來源：\[41\]\[42\]\[43\]\[44\]\[45\]\[46\]\[47\]\[48\]\[49\]\[50\]\[51\]\[52\]\[53\]

### “Vishera”，基於「Piledriver」

  - 四模組八線程型號：FX-83X0/9XX0；三模組六線程型號：FX-63X0；雙模組四線程型號：FX-43X0
  - 其餘參數與基於Bulldozer微架構的一致，片上北橋的預設電壓（VID）1.1375 V
  - 2013年新增FX-9370及FX-9590，最高能支援DDR3-2400規格的記憶體
  - 2014年新增FX-8370、FX-8370E及FX-8320E，後兩者片上北橋的預設電壓則相對增加了，達1.1625 V

#### FX-4300系列

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/版本" title="wikilink">步進</a></p></th>
<th><p>模組/核心/<a href="https://zh.wikipedia.org/wiki/線程" title="wikilink">線程</a></p></th>
<th><p>時脈 (<a href="https://zh.wikipedia.org/wiki/GHz" title="wikilink">GHz</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/快取" title="wikilink">快取</a></p></th>
<th><p><a href="../Page/HyperTransport.md" title="wikilink">HT時脈</a><br />
(GHz)</p></th>
<th><p>核心<a href="../Page/電壓.md" title="wikilink">電壓</a><br />
(<a href="../Page/伏特.md" title="wikilink">V</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(<a href="../Page/瓦特.md" title="wikilink">W</a>)</p></th>
<th><p>部件號</p></th>
<th><p>發布<a href="../Page/日期.md" title="wikilink">日期</a></p></th>
<th><p>售價<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基準</p></td>
<td><p>加速</p></td>
<td><p>L2 (MiB)</p></td>
<td><p>L3 (MiB)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>普通版</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-4300</strong></p></td>
<td><p>C0</p></td>
<td><p>2/4/4</p></td>
<td><p>3.8</p></td>
<td><p>3.9～4.0</p></td>
<td><p>2 ×2</p></td>
<td><p>4</p></td>
<td><p>2</p></td>
<td><p>0.8875～1.4125</p></td>
<td><p>95</p></td>
<td><p>FD4300WMW4MHK<br />
FD4300WMHKBOX</p></td>
</tr>
<tr class="even">
<td><p><strong>FX-4320</strong></p></td>
<td><p>4.0</p></td>
<td><p>4.1～4.2</p></td>
<td></td>
<td><p>FD4320WMW4MHK<br />
FD4320WMHKBOX</p></td>
<td><p>2012年第四季度</p></td>
<td><p>OEM</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-4330</strong></p></td>
<td><p>4.0</p></td>
<td></td>
<td><p>8</p></td>
<td><p>0.875 ~ 1.425</p></td>
<td><p>FD4330WMW4KHK</p></td>
<td><p>2015年第三季度</p></td>
<td><p>OEM</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>FX-4350</strong></p></td>
<td><p>4.2</p></td>
<td><p>4.2～4.3</p></td>
<td><p>0.8375～1.4125</p></td>
<td><p>125</p></td>
<td><p>FD4350FRW4KHK<br />
FD4350FRHKBOX</p></td>
<td><p>2013年4月30日</p></td>
<td><p>$122</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

資料來源：\[54\]\[55\]\[56\]\[57\]\[58\]\[59\]

#### FX-6300系列

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/版本" title="wikilink">步進</a></p></th>
<th><p>模組/核心/<a href="https://zh.wikipedia.org/wiki/線程" title="wikilink">線程</a></p></th>
<th><p>時脈 (<a href="https://zh.wikipedia.org/wiki/GHz" title="wikilink">GHz</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/快取" title="wikilink">快取</a></p></th>
<th><p><a href="../Page/HyperTransport.md" title="wikilink">HT時脈</a><br />
(GHz)</p></th>
<th><p>核心<a href="../Page/電壓.md" title="wikilink">電壓</a><br />
(<a href="../Page/伏特.md" title="wikilink">V</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(<a href="../Page/瓦特.md" title="wikilink">W</a>)</p></th>
<th><p>部件號</p></th>
<th><p>發布<a href="../Page/日期.md" title="wikilink">日期</a></p></th>
<th><p>售價<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基準</p></td>
<td><p>加速</p></td>
<td><p>L2 (MiB)</p></td>
<td><p>L3 (MiB)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>普通版</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-6300</strong></p></td>
<td><p>C0</p></td>
<td><p>3/6/6</p></td>
<td><p>3.5</p></td>
<td><p>3.8～4.1</p></td>
<td><p>2 ×3</p></td>
<td><p>8</p></td>
<td><p>2</p></td>
<td><p>0.9～1.425</p></td>
<td><p>95</p></td>
<td><p>FD6300WMW6KHK<br />
FD6300WMHKBOX</p></td>
</tr>
<tr class="even">
<td><p><strong>FX-6330</strong></p></td>
<td><p>3.6</p></td>
<td><p>4.2</p></td>
<td></td>
<td><p>FD6330WMW6KHK<br />
FD6330WMHKBOX</p></td>
<td><p>2015年12月</p></td>
<td><p>$109</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-6350</strong></p></td>
<td><p>3.9</p></td>
<td><p>4.1～4.2</p></td>
<td><p>0.875～1.425</p></td>
<td><p>125</p></td>
<td><p>FD6350FRW6KHK<br />
FD6350FRHKBOX</p></td>
<td><p>2013年4月30日</p></td>
<td><p>$132</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

資料來源：\[60\]\[61\]\[62\]\[63\]\[64\]

#### FX-8300/9000系列

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/版本" title="wikilink">步進</a></p></th>
<th><p>模組/核心/<a href="https://zh.wikipedia.org/wiki/線程" title="wikilink">線程</a></p></th>
<th><p>時脈 (<a href="https://zh.wikipedia.org/wiki/GHz" title="wikilink">GHz</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/快取" title="wikilink">快取</a></p></th>
<th><p><a href="../Page/HyperTransport.md" title="wikilink">HT時脈</a><br />
(GHz)</p></th>
<th><p>核心<a href="../Page/電壓.md" title="wikilink">電壓</a><br />
(<a href="../Page/伏特.md" title="wikilink">V</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(<a href="../Page/瓦特.md" title="wikilink">W</a>)</p></th>
<th><p>部件號</p></th>
<th><p>發布<a href="../Page/日期.md" title="wikilink">日期</a></p></th>
<th><p>售價<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基準</p></td>
<td><p>加速</p></td>
<td><p>L2 (MiB)</p></td>
<td><p>L3 (MiB)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>普通版</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-8300</strong></p></td>
<td><p>C0</p></td>
<td><p>4/8/8</p></td>
<td><p>3.3</p></td>
<td><p>3.8～4.2</p></td>
<td><p>2 ×4</p></td>
<td><p>8</p></td>
<td><p>2.2</p></td>
<td><p>0.825～1.375</p></td>
<td><p>95</p></td>
<td><p>FD8300FRW8KHK<br />
FD8300WMHKBOX</p></td>
</tr>
<tr class="even">
<td><p><strong>FX-8310</strong></p></td>
<td><p>3.4</p></td>
<td><p>3.7～4.3</p></td>
<td><p>0.8375～1.4125</p></td>
<td><p>FD8310WMW8KHK<br />
FD8310WMHKSBX</p></td>
<td><p>2014年9月2日</p></td>
<td><p>$?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-8320</strong></p></td>
<td><p>3.5</p></td>
<td><p>3.8～4.0</p></td>
<td><p>0.95～1.425</p></td>
<td><p>125</p></td>
<td><p>FD8320FRW8KHK<br />
FD8320FRHKBOX</p></td>
<td><p>2012年10月23日</p></td>
<td><p>$169</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>FX-8350</strong></p></td>
<td><p>4.0</p></td>
<td><p>4.1～4.2</p></td>
<td><p>0.875～1.425</p></td>
<td><p>FD8350FRW8KHK<br />
FD8350FRHKBOX</p></td>
<td><p>$195</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-8370</strong></p></td>
<td><p>4.0</p></td>
<td><p>4.1～4.3</p></td>
<td><p>0.8625～1.425</p></td>
<td><p>FD8370FRW8KHK<br />
FD8370FRHKBOX</p></td>
<td><p>2014年9月2日</p></td>
<td><p>$194</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>低功耗版</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>FX-8320E</strong></p></td>
<td><p>C0</p></td>
<td><p>4/8/8</p></td>
<td><p>3.2</p></td>
<td><p>3.8～4.0</p></td>
<td><p>2 ×4</p></td>
<td><p>8</p></td>
<td><p>2.2</p></td>
<td><p>0.8375～1.4125</p></td>
<td><p>95</p></td>
<td><p>FD832EWMW8KHK<br />
FD832EWMHKBOX</p></td>
</tr>
<tr class="even">
<td><p><strong>FX-8370E</strong></p></td>
<td><p>3.3</p></td>
<td><p>4.1～4.3</p></td>
<td><p>0.825～1.375</p></td>
<td><p>FD837EWMW8KHK<br />
FD837EWMHKBOX</p></td>
<td><p>$194</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>極致效能版</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>FX-9370</strong></p></td>
<td><p>C0</p></td>
<td><p>4/8/8</p></td>
<td><p>4.4</p></td>
<td><p>4.5～4.7</p></td>
<td><p>2 ×4</p></td>
<td><p>8</p></td>
<td><p>2.2</p></td>
<td><p>最高1.9125</p></td>
<td><p>220</p></td>
<td><p>FD9370FHHKWOF<br />
FD9370FHHKWOX<sup>1</sup></p></td>
</tr>
<tr class="odd">
<td><p><strong>FX-9590</strong></p></td>
<td><p>4.7</p></td>
<td><p>4.8～5.0</p></td>
<td><p>0.8875～1.5375<br />
最高1.9125</p></td>
<td><p>FD9590FHHKWOF<br />
FD9590FHHKWOX<sup>1</sup></p></td>
<td><p>$900→$269</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

<sup>1</sup>注：這個部件號的處理器搭配[液冷套件出售](https://zh.wikipedia.org/wiki/電腦水冷 "wikilink")

資料來源：\[65\]\[66\]\[67\]\[68\]\[69\]\[70\]\[71\]\[72\]\[73\]\[74\]\[75\]\[76\]\[77\]

## 相關

  - [AMD加速處理器](https://zh.wikipedia.org/wiki/AMD加速處理器 "wikilink")
  - [AMD Opteron](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")
  - [AMD Athlon](../Page/AMD_Athlon.md "wikilink")

## 參考資料

## 外部連結

  - [AMD
    FX处理器官网](http://sites.amd.com/us/promo/processors/Pages/fx-processor.aspx)
  - <https://archive.is/20130424224040/blogs.amd.com/unprocessed/tag/bulldozer/>
      - ["Bulldozer" 20 Questions,
        Part 1](https://archive.is/20130424215928/blogs.amd.com/work/2010/08/23/%E2%80%9Dbulldozer%E2%80%9D-20-questions-round-one/)
      - ["Bulldozer" 20 Questions,
        Part 2](https://archive.is/20120711115201/blogs.amd.com/work/2010/08/30/bulldozer-20-questions-%E2%80%93-part-2/)
      - ["Bulldozer" 20 Questions,
        Part 3](https://archive.is/20130424234651/blogs.amd.com/work/2010/09/13/bulldozer-20-questions-part-3/)
  - [AMD
    FX处理器官网](http://sites.amd.com/us/promo/processors/Pages/fx-processor.aspx)
  - [AMD Bulldozer解析](http://cpu.zol.com.cn/224/2245278.html)

[Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink")
[Category:世界之最](https://zh.wikipedia.org/wiki/Category:世界之最 "wikilink")
[Category:AMD處理器列表](https://zh.wikipedia.org/wiki/Category:AMD處理器列表 "wikilink")

1.  [自由電子報 20121025 3C科技 - AMD 發表新一代 FX
    系列產品](http://iservice.libertytimes.com.tw/3c/news.php?no=7428&type=3)

2.  [Bulldozer 時脈創金氏記錄，單核效能被 Phenom II
    打臉？](http://www.techbang.com/posts/7029-bulldozer-hold-live-single-core-phenom-ii-performance-was-on-her-face)
    - T客邦

3.
4.

5.

6.  [AMD新闻_AMD三核心版本推土机型号、规格曝光_三好在线](http://www.sosol.com.cn/html/2011/20117/2011725_215878_1.html)

7.  [三核心版本推土机型号、规格曝光](http://news.mydrivers.com/1/200/200081.htm) - 驅動之家

8.  [Bulldozer微架构AM3+处理器最新规划](http://www.inpai.com.cn/doc/hard/153781_2.htm)
     - 硬派

9.  [AMD's 2nd Generation Bulldozer Core Piledriver Architecture
    Detailed](http://wccftech.com/amds-2nd-generation-bulldozer-core-piledriver-architecture-detailed/)

10. [AMD Piledriver - X-bit
    labs](http://www.xbitlabs.com/hot-topics/amd-piledriver)

11.
12. [1](http://www.fudzilla.com/home/item/26253-amd-fx-8350-vishera-cpu-production-in-q3)

13.

14. [这货叫打桩机！AMD二代FX/二代APU揭秘](http://diy.pconline.com.cn/cpu/study_cpu/1206/2845170_all.html#content_page_1)
    - 太平洋電腦網

15. [AMD 打桩机 Piledriver
    内核有望突破 4GHz](http://cn.engadget.com/tag/resonant+clock+mesh/)
    - [engadget](../Page/engadget.md "wikilink")

16. [AMD高频旗舰！打桩机FX-8350首发测试](http://www.pcpop.com/doc/0/847/847573_all.shtml)
    - pcpop.com

17. <http://www.donanimhaber.com/islemci/haberleri/DH-Ozel-AMDnin-2012-yol-haritasi-FX-ve-Fusion-serisi-yeni-islemciler.htm>

18. [打桩机FX三季度投产 更多技术细节确认](http://news.mydrivers.com/1/228/228972.htm) -
    驅動之家

19.
20. [打桩机旗舰FX-8350 4GHz起步](http://news.mydrivers.com/1/233/233314.htm) -
    驅動之家

21. [打桩机新增FX-8300、FX-6350](http://news.mydrivers.com/1/244/244990.htm) -
    驅動之家

22. [打桩机新兵：95W的八核心](http://news.mydrivers.com/1/234/234389.htm) - 驅動之家

23. [四核打桩机也有三款：4.2GHz、95W](http://news.mydrivers.com/1/234/234695.htm) -
    驅動之家

24. [推土机第四季度“停工”](http://news.mydrivers.com/1/234/234696.htm) - 驅動之家

25.
26. [打桩机乱入！千元市场FX-8350大战i5/E3](http://diy.pconline.com.cn/cpu/reviews/1210/3037082_all.html)
    - 太平洋電腦網

27. [打桩机来临！AMD新旗舰FX-8350首发评测](http://diy.pconline.com.cn/cpu/reviews/1210/3031469.html)
    - 太平洋電腦網

28. [4GHz+“打桩机”！AMD新FX-8350评测](http://www.inpai.com.cn/doc/HDhard/183729_-3.htm)
     - inpai.com.cn

29. [打桩机旗舰级发布 AMD
    FX-8350全面评测](http://cpu.it168.com/a2012/1024/1412/000001412614_all.shtml)
     - it168.com

30. [升级打桩机核心 全新FX旗舰处理器首测](http://cpu.zol.com.cn/329/3291112_all.html) -
    zol.com.cn

31.

32.

33. [FX-9000来了
    AMD 5GHz超级处理器正式发布](http://news.mydrivers.com/1/266/266193.htm)
    - mydrivers.com.cn, 2013-06-12

34. [在【更新】以最佳化 AMD Bulldozer Cpu
    的效能](http://support.microsoft.com/kb/2592546/)

35.

36.

37. [Windows 7 更新檔，實測 AMD FX 處理器效能增加多少？ - 第 3
    頁](http://www.techbang.com/posts/8635-free-amd-fx-real-combat-effectiveness?page=3安裝)
    - T客邦

38.

39.

40.

41.
42.
43.
44. [AMD FX Processor Model Number and Feature
    Comparison](http://www.amd.com/tw/products/desktop/processors/amdfx/Pages/amdfx-model-number-comparison.aspx)
    - amd.com

45.

46.

47.

48.

49. [奇特四核推土机FX-4200：二级缓存竟有8MB](http://www.sosol.com.cn/html/2012/20123/2012330_225866_1.html)
    - 三好在線

50. [AMD CPU: AMD四核推土機
    FX-4200處理器接受預訂](http://big5.thethirdmedia.com/g2b.aspx/cpu.thethirdmedia.com/article/201205/show297524c31p1.html)

51. [AMD FX-4200 CPU spotted in Gigabyte support
    list](http://www.cpu-world.com/news_2012/2012032801_AMD_FX-4200_spotted_in_Gigabyte_support_list.html)
    - CPUWorld

52. [最后一代推土机即将发布](http://diy.pconline.com.cn/cpu/news/1203/2713873.html)
    - 太平洋電腦網

53. [推土机也玩开核？奇特FX-4200推土机曝光](http://diy.pconline.com.cn/cpu/news/1203/2723256.html)
    - 太平洋電腦網

54.

55.

56.

57.

58.

59.

60.

61.

62.

63.

64.

65. [Rumor: AMD "Piledriver" FX CPU production to begin
    Q3 2012](http://www.techspot.com/news/48742-rumor-amd-piledriver-fx-cpu-production-to-begin-q3-2012.html)
    - Techspot

66. [2](http://www.donanimhaber.com/islemci/haberleri/DH-Ozel-AMDnin-2012-yol-haritasi-FX-ve-Fusion-serisi-yeni-islemciler.htm)

67.

68.

69.

70.

71.

72. [AMD高频旗舰！打桩机FX-8350首发测试](http://www.pcpop.com/doc/0/847/847573_all.shtml)
    - pcpop.com

73.

74.

75.

76.

77.