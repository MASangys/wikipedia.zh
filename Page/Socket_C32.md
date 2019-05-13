**Socket
C32**是[美商超微推出的的](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")[處理器插座和處理器管腳陣列](../Page/CPU插座.md "wikilink")，用於取代Socket
F/F+，供支援單處理器或雙處理器協同處理的[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")、[工作站平台之](../Page/工作站.md "wikilink")[Opteron
4000系列中央處理器使用](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")。\[1\]

## 技術概況

本插座是單CPU插座[Socket
AM3和低階雙處理器平台處理器插座](../Page/Socket_AM3.md "wikilink")[Socket
F+的後繼者](https://zh.wikipedia.org/wiki/Socket_F+ "wikilink")，高階的雙處理器、四處理器平台（Opteron
6000系列）的[處理器插座則由](https://zh.wikipedia.org/wiki/處理器 "wikilink")[Socket
G34接任](../Page/Socket_G34.md "wikilink")。儘管基建於Socket
F+，並且使用相同的[平面网格阵列封装](https://zh.wikipedia.org/wiki/平面网格阵列封装 "wikilink")（LGA）、相同的腳位數量，但由於全面支援DDR3[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink")，腳位排布和[電氣特性均有所改變](https://zh.wikipedia.org/wiki/電氣 "wikilink")，不相容於採用Socket
F（可支援[FB-DIMM](../Page/FB-DIMM.md "wikilink")、[DDR2](https://zh.wikipedia.org/wiki/DDR2 "wikilink")、DDR3部分的記憶體）腳位的[處理器](https://zh.wikipedia.org/wiki/處理器 "wikilink")。也因此，將Socket
C32稱為「LGA 1207」或「Socket 1207」將會有歧義。\[2\]\[3\]Socket C32和前代Socket
F/F+一樣，插座上共1,207個金屬觸片，處理器上有1,207個觸點；每管腳的最小間距為1.10毫米，35行×35列，大致呈[正方形](../Page/正方形.md "wikilink")。\[4\]

Socket
C32支援[雙通道](../Page/雙通道記憶體技術.md "wikilink")、可選[ECC的](https://zh.wikipedia.org/wiki/ECC "wikilink")[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink")/DDR3L
SDRAM，支援UDIMM/RDIMM/LRDIMM，最高支援至1600MT/s；每個記憶體通道支援2支[DIMM](https://zh.wikipedia.org/wiki/DIMM "wikilink")。具備兩條16位元寬度的[HyperTransport鏈路](../Page/HyperTransport.md "wikilink")，每鏈路的資料吞吐量可達6.4GT/s（HyperTransport
3.1 @
3.2GHz時）。支援的處理器[熱設計功耗](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")（TDP）可達105W\[5\]（然而所有Socket
C32的處理器中，TDP最高者僅95W）。

使用Socket C32的主機板，支援單路/雙路運行方式。可只使用一個處理器插座並安裝一顆Opteron
4000系列的處理器；配備全規格的兩個Socket
C32插座時最多可安裝兩顆Opteron
4000系列的處理器，目前最多共16個處理器核心。\[6\]運行於雙路工作模式時，支援[NUMA](https://zh.wikipedia.org/wiki/NUMA "wikilink")。\[7\]

散熱器的安裝規格和Socket
G34一樣採用兩點固定，但是長度兩者不一致，因此C32的散熱器扣具和G34的散熱器扣具不能直接相容。但是前代的[Socket
F](../Page/Socket_F.md "wikilink")/F+的散熱器，則可以無縫相容於Socket C32。\[8\]

## 部署狀況

Socket C32於2010年6月23日與“San
Marino”四處理器伺服器平台一同發布，用於普通雙處理器系統或高階單處理器系統。高階雙處理器及四處理器系統的Opteron
6000系列，使用Socket G34；而入門級單處理器伺服器平台當時還是使用[Socket
AM3的Opteron](../Page/Socket_AM3.md "wikilink")
1380系列以及13QS、13KS擔當，在基於Bulldozer微架構Opteron
3000系列推出以後，使用[Socket
AM3+](../Page/Socket_AM3+.md "wikilink")。Socket
C32同樣也使用於超低功耗，使用SR5650晶片組和[HyperTransport](../Page/HyperTransport.md "wikilink")
1.0[總線的](https://zh.wikipedia.org/wiki/總線 "wikilink")“[Adelaide](https://zh.wikipedia.org/wiki/Adelaide "wikilink")”平台。\[9\]

### 晶片組

與前代的Socket F/F+仍可使用其他協力廠商的晶片組不同的是，採用Socket
C32插座的主機板，到目前為止均採用AMD自家的[SR5600/SP5100系列晶片組](https://zh.wikipedia.org/wiki/AMD_800_芯片组系列 "wikilink")。插座上共有1,207支金屬接觸片。\[10\]

  - SR5690/SP5100
  - SR5670/SP5100
  - SR5650/SP5100

注：[北橋晶片](https://zh.wikipedia.org/wiki/北橋 "wikilink")/[南橋晶片](https://zh.wikipedia.org/wiki/南橋 "wikilink")
[Supermicro_IMGP7339_wp.jpg](https://zh.wikipedia.org/wiki/File:Supermicro_IMGP7339_wp.jpg "fig:Supermicro_IMGP7339_wp.jpg")以及[主機板電源插座](https://zh.wikipedia.org/wiki/主機板 "wikilink")\]\]

### 處理器

基於45奈米版本[K10微架構的Opteron](../Page/AMD_10h.md "wikilink")
4100系列處理器，核心代號“[Lisbon](https://zh.wikipedia.org/wiki/Lisbon "wikilink")”，有四核心和六核心的細分型號，支援單處理器或雙處理器平台的版本使用Socket
C32；\[11\]現在，2011年11月發布的基於[AMD
Bulldozer微架構](../Page/AMD_Bulldozer.md "wikilink")、代號“[Valencia](../Page/Valencia.md "wikilink")”、用於的六核心和八核心Opteron
4200系列處理器，以及後來2012年推出的[Bulldozer架構新步進版本的Opteron](https://zh.wikipedia.org/wiki/Piledriver微架構 "wikilink")
4300系列，也使用了Socket C32。\[12\]

#### Opteron 4100系列「Lisbon」

  - Opteron 4122
  - Opteron 4130
  - Opteron 41LE HE
  - Opteron 41QS HE
  - Opteron 4180
  - Opteron 4184
  - Opteron 41KX HE
  - Opteron 4170 HE
  - Opteron 4171 HE
  - Opteron 4174 HE
  - Opteron 4176 HE
  - Opteron 41GL EE
  - Opteron 4162 EE
  - Opteron 4164 EE

#### Opteron 4200系列「Valencia」

  - Opteron 42DX EE
  - Opteron 4226
  - Opteron 4234
  - Opteron 4238
  - Opteron 4240
  - Opteron 4228 HE
  - Opteron 4230 HE
  - Opteron 4280
  - Opteron 4284
  - Opteron 42MX HE
  - Opteron 4274 HE
  - Opteron 4276 HE
  - Opteron 4256 EE

#### Opteron 4300系列「Seoul」

  - Opteron 43CX EE
  - Opteron 4310 EE
  - Opteron 4334
  - Opteron 4340
  - Opteron 4332 HE
  - Opteron 4386
  - Opteron 4365 EE
  - Opteron 43GK HE
  - Opteron 4376 HE

## 參考

## 參見

  - [AMD
    Opteron](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")、[AMD
    Opteron處理器列表](../Page/AMD_Opteron處理器列表.md "wikilink")
  - [Socket G34](../Page/Socket_G34.md "wikilink")
  - [Socket AM3+](../Page/Socket_AM3+.md "wikilink")

## 外部連結

  - [AMD Opteron 4000 Series product
    brief](https://www.amd.com/Documents/4000_Series_product_brief.pdf)

  - [Server Roadmap & Final Words - AMD's 2010 - 2011 Roadmaps \~1B
    Transistor Llano APU, Bobcat and
    Bulldozer](http://anandtech.com/show/2871/5)

  - [Want to see our Roadmaps and Bulldozer
    Info?](https://web.archive.org/web/20110728150926/http://www.amdzone.com/phpbb3/viewtopic.php?f=52&t=137051&st=0&sk=t&sd=a)

  -
  - [amd服务器socket插槽发展里程](http://wenku.baidu.com/view/56ef678f8762caaedd33d474.html)（有抄襲維基百科中文版相關條目的嫌疑）

[Category:CPU插座](https://zh.wikipedia.org/wiki/Category:CPU插座 "wikilink")

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