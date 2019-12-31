> 本文内容由[AMD Epyc](https://zh.wikipedia.org/wiki/AMD_Epyc)转换而来。


**AMD Epyc**（或者全大寫字母**EPYC**）是[AMD推出的](https://zh.wikipedia.org/wiki/AMD "wikilink")[x86架構](https://zh.wikipedia.org/wiki/x86 "wikilink")[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")[微處理器產品線](https://zh.wikipedia.org/wiki/微處理器 "wikilink")，中文名为“霄龙”，採用[Zen微架構](../Page/AMD_Zen.md "wikilink")。與2017年6月發表並開始供貨，取代推出已有14年歷史的[Opteron系列](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")。\[1\] 2019年8月8日\[2\]，基于[Zen 2微结构](https://zh.wikipedia.org/wiki/Zen_2 "wikilink")7nm制程第二代**EPYC**处理器Rome发布。\[3\]

## 設計概略

當前EPYC全系列採用[多晶片模組](../Page/多晶片模組.md "wikilink")設計，將多顆8核心、代號「Zeppelin」的[晶片](https://zh.wikipedia.org/wiki/晶片 "wikilink")（與[Ryzen系列搭載的](https://zh.wikipedia.org/wiki/Ryzen "wikilink")「Summit Ridge」同源）整合在一塊[處理器基板上](https://zh.wikipedia.org/wiki/印刷電路板 "wikilink")，AMD表示這樣可以有效利用晶片電路（每顆晶片內的CCX、核心等電路單元可單獨關閉或遮蔽，可提升晶片可用率）、產品線的推出更容易多樣化、並且最重要的是晶片成本的降低帶來的低建置成本。\[4\]\[5\]當前最高規格為4顆8核心晶片組成32核心[NUMA結構](https://zh.wikipedia.org/wiki/NUMA "wikilink")，每顆8核心的處理器晶片都採用Zen微架構，晶片之間採用高頻寬、低延時的[Infinity Fabric互聯架構連接](https://zh.wikipedia.org/wiki/Infinity_Fabric "wikilink")。處理器容許最高雙處理器配置，之間也採用Infinity Fabric連接。\[6\]每顆處理器內由4個處理器晶片各自提供雙通道[記憶體控制器](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")，組成[八通道的配置](../Page/多通道記憶體技術.md "wikilink")，每顆處理器有128條[PCIe 3.0通道](https://zh.wikipedia.org/wiki/PCIe "wikilink")，但如果在雙處理器系統內，128條需除去CPU之間通過Infinity Fabric互聯佔用的64條。\[7\]

此外，和Ryzen系列一樣，處理器內均內建有[SATA](../Page/SATA.md "wikilink")/[SATA Express](../Page/SATA_Express.md "wikilink")（支援[AHCI](../Page/AHCI.md "wikilink")、[NVMe](https://zh.wikipedia.org/wiki/NVMe "wikilink")）、[USB](../Page/USB.md "wikilink")控制器，佈滿晶片內各處的數位控制[LDO和時鐘電路](https://zh.wikipedia.org/wiki/LDO "wikilink")，[主機板可無需搭載](https://zh.wikipedia.org/wiki/主機板 "wikilink")[南橋晶片](https://zh.wikipedia.org/wiki/南橋晶片 "wikilink")。這是AMD首次面向企業級市場推出如此高整合度的半[SoC化處理器產品](https://zh.wikipedia.org/wiki/SoC "wikilink")，被認為是面向[雲端運算](../Page/雲端運算.md "wikilink")高密度[資料中心的設計](https://zh.wikipedia.org/wiki/資料中心 "wikilink")，即使是老對手[英特爾](https://zh.wikipedia.org/wiki/英特爾 "wikilink")，其[Xeon產品線也從未有過如此高整合度的產品](https://zh.wikipedia.org/wiki/Xeon "wikilink")。\[8\]

## 處理器列表

### 基於Zen微架構

#### 伺服器

  - [缩略图](https://zh.wikipedia.org/wiki/File:EpycProcessor.jpg "fig:缩略图")本系列採用[Socket SP3插座](../Page/Socket_SP3.md "wikilink")，支援[八通道記憶體](../Page/多通道記憶體技術.md "wikilink")（由四個雙通道記憶體控制器提供支援），最多提供128個PCIe通道。EPYC系列不提供XFR，僅提供Precision Boost動態加速。

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>步進</p></th>
<th><p><a href="../Page/多核心處理器.md" title="wikilink">核心數</a><br />
/<a href="https://zh.wikipedia.org/wiki/執行緒" title="wikilink">執行緒數</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/時脈" title="wikilink">時脈</a> (<a href="https://zh.wikipedia.org/wiki/GHz" title="wikilink">GHz</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/快取" title="wikilink">快取</a></p></th>
<th><p>記憶體支援</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">TDP</a><br />
(<a href="https://zh.wikipedia.org/wiki/瓦" title="wikilink">W</a>)</p></th>
<th><p>部件號</p></th>
<th><p>發售日期</p></th>
<th><p>發售價格</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基準</p></td>
<td><p>加速</p></td>
<td><p>L2 (KiB)</p></td>
<td><p>L3 (MiB)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>雙路處理器</p></td>
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
<td><p><strong>7601</strong></p></td>
<td><p>B2</p></td>
<td><p>32/64</p></td>
<td><p>2.2</p></td>
<td><p>2.7～3.2</p></td>
<td><p>32 × 512</p></td>
<td><p>8 × 8</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/DDR4" title="wikilink">DDR4</a>-2666</p></td>
<td><p>180</p></td>
<td><p>PS7601BDVIHAF</p></td>
</tr>
<tr class="even">
<td><p><strong>7551</strong></p></td>
<td><p>2.0</p></td>
<td><p>2.55～3.0</p></td>
<td><p>PS7551BDVIHAF</p></td>
<td><p>$3400+</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>7501</strong></p></td>
<td><p>2.0</p></td>
<td><p>2.6～3.0</p></td>
<td><p>155/170</p></td>
<td><p>PS7501BEVIHAF</p></td>
<td><p>$3400</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>7451</strong></p></td>
<td><p>24/48</p></td>
<td><p>2.3</p></td>
<td><p>2.9～3.2</p></td>
<td><p>24 × 512</p></td>
<td><p>180</p></td>
<td><p>PS7451BDVHCAF</p></td>
<td><p>$2400+</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>7401</strong></p></td>
<td><p>2.0</p></td>
<td><p>2.8～3.0</p></td>
<td><p>155/170</p></td>
<td><p>PS7401BEVHCAF</p></td>
<td><p>$1850</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>7351</strong></p></td>
<td><p>16/32</p></td>
<td><p>2.4</p></td>
<td><p>2.9</p></td>
<td><p>16 × 512</p></td>
<td><p>PS7351BEVGPAF</p></td>
<td><p>$1100+</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>7301</strong></p></td>
<td><p>2.2</p></td>
<td><p>2.7</p></td>
<td><p>PS7301BEVGPAF</p></td>
<td><p>$800+</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>7281</strong></p></td>
<td><p>2.1</p></td>
<td><p>2.7</p></td>
<td><p>4 × 8</p></td>
<td><p>PS7281BEVGAAF</p></td>
<td><p>$650</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>7251</strong></p></td>
<td><p>8/16</p></td>
<td><p>2.1</p></td>
<td><p>2.9</p></td>
<td><p>8 × 512</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/DDR4" title="wikilink">DDR4</a>-2400</p></td>
<td><p>120</p></td>
<td><p>PS7251BFV8SAF</p></td>
<td><p>$475</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>單路處理器</p></td>
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
<td><p><strong>7551P</strong></p></td>
<td><p>B2</p></td>
<td><p>32/64</p></td>
<td><p>2.0</p></td>
<td><p>2.55～3.0</p></td>
<td><p>32 × 512</p></td>
<td><p>8 × 8</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/DDR4" title="wikilink">DDR4</a>-2666</p></td>
<td><p>180</p></td>
<td><p>PS755PBDVIHAF</p></td>
</tr>
<tr class="even">
<td><p><strong>7401P</strong></p></td>
<td><p>24/48</p></td>
<td><p>2.0</p></td>
<td><p>2.8～3.0</p></td>
<td><p>24 × 512</p></td>
<td><p>155/170</p></td>
<td><p>PS740PBEVHCAF</p></td>
<td><p>$1075</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>7351P</strong></p></td>
<td><p>16/32</p></td>
<td><p>2.4</p></td>
<td><p>2.9</p></td>
<td><p>16 × 512</p></td>
<td><p>PS735PBEVGPAF</p></td>
<td><p>$750</p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

[缩略图](https://zh.wikipedia.org/wiki/File:AMD_EPYC_die.jpg "fig:缩略图") 資料來源：\[9\]\[10\]\[11\]\[12\]\[13\]\[14\]\[15\]\[16\]\[17\]\[18\]\[19\]\[20\]\[21\]\[22\]

#### 嵌入式平台

2018年2月，AMD發表了供嵌入式系統使用的Epyc 3000系列。

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>步進</p></th>
<th><p><a href="../Page/多核心處理器.md" title="wikilink">核心數</a><br />
/<a href="https://zh.wikipedia.org/wiki/執行緒" title="wikilink">執行緒數</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/時脈" title="wikilink">時脈</a> (<a href="https://zh.wikipedia.org/wiki/GHz" title="wikilink">GHz</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/快取" title="wikilink">快取</a></p></th>
<th><p>記憶體支援</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">TDP</a><br />
(<a href="https://zh.wikipedia.org/wiki/瓦" title="wikilink">W</a>)</p></th>
<th><p>部件號</p></th>
<th><p>發表日期</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基準</p></td>
<td><p>加速</p></td>
<td><p>L2 (KiB)</p></td>
<td><p>L3 (MiB)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>單路嵌入式處理器</p></td>
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
<td><p><strong>3451</strong></p></td>
<td><p>N/A</p></td>
<td><p>16/32</p></td>
<td><p>2.15</p></td>
<td><p>2.45～3.0</p></td>
<td><p>16 × 512</p></td>
<td><p>4 × 8</p></td>
<td><p>四通道<br />
<a href="https://zh.wikipedia.org/wiki/DDR4" title="wikilink">DDR4</a>-2666</p></td>
<td><p>100</p></td>
</tr>
<tr class="even">
<td><p><strong>3401</strong></p></td>
<td><p>16/16</p></td>
<td><p>1.85</p></td>
<td><p>2.25～3.0</p></td>
<td><p>85</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>3351</strong></p></td>
<td><p>12/24</p></td>
<td><p>1.9</p></td>
<td><p>2.75～3.0</p></td>
<td><p>12 × 512</p></td>
<td><p>80</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>3301</strong></p></td>
<td><p>12/12</p></td>
<td><p>2.0</p></td>
<td><p>2.15～3.0</p></td>
<td><p>65</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>3251</strong></p></td>
<td><p>8/16</p></td>
<td><p>2.5</p></td>
<td><p>3.1</p></td>
<td><p>8 × 512</p></td>
<td><p>2 × 8</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/雙通道" title="wikilink">雙通道</a><br />
DDR4-2666</p></td>
<td><p>50</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>3201</strong></p></td>
<td><p>8/8</p></td>
<td><p>1.5</p></td>
<td><p>3.1</p></td>
<td><p>雙通道<br />
DDR4-2133</p></td>
<td><p>30</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>3151</strong></p></td>
<td><p>4/8</p></td>
<td><p>2.7</p></td>
<td><p>2.9</p></td>
<td><p>4 × 512</p></td>
<td><p>雙通道<br />
DDR4-2666</p></td>
<td><p>45</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>3151</strong></p></td>
<td><p>4/4</p></td>
<td><p>2.1</p></td>
<td><p>2.9</p></td>
<td><p>8</p></td>
<td><p>35</p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

資料來源：\[23\]\[24\]

## 參考資料

## 外部鏈接

  -
  -
  -
[Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink") [Category:2017年面世的產品](https://zh.wikipedia.org/wiki/Category:2017年面世的產品 "wikilink")

1.
2.  <https://www.anandtech.com/show/14724/the-amd-epyc-rome-launch-live-blog>
3.  <https://www.amd.com/en/processors/epyc-7002-series>
4.
5.  <https://www.nextplatform.com/2017/05/17/amd-disrupts-two-socket-server-status-quo/>
6.
7.
8.
9.
10.
11.
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