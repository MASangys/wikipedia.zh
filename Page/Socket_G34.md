**Socket G34**，又稱**LGA
1944**，是[美商超微](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")（AMD）和TE
Connectivity\[1\]設計的中央處理器管腳排列及相應的插座，用於[AMD Opteron
6000系列處理器以及SR](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")5600/SP5100系列晶片組的主機板中。\[2\]除了插座供應商以LGA
1944作爲其零部件名稱以外，坊間也有以插座觸點數來自行命名Socket G34爲**LGA 1974**的説法。\[3\]\[4\]\[5\]

## 技術概況

正如和對手[英特爾常用的可插拔式處理器的插座](https://zh.wikipedia.org/wiki/英特爾 "wikilink")（[行動平台及](https://zh.wikipedia.org/wiki/行動平台 "wikilink")[嵌入式平台除外](../Page/嵌入式系统.md "wikilink")）以及前代的[Socket
F](../Page/Socket_F.md "wikilink")/F+一樣，Socket
G34採用平面網格陣列封裝（LGA），處理器基板上有1,944個觸點，最小間距1.00毫米，而主機板上的處理器插座則有1,974支類似針腳的金屬彈簧片與處理器上的觸點接觸。整個觸點或引腳陣列呈[長方形](https://zh.wikipedia.org/wiki/長方形 "wikilink")，57行×40列。\[6\]\[7\]觸點爲工業鍍[金](../Page/金.md "wikilink")，使用[表面黏著技術以及](https://zh.wikipedia.org/wiki/表面黏著技術 "wikilink")[焊錫球將插座焊接在主機板上](https://zh.wikipedia.org/wiki/焊錫 "wikilink")。\[8\]

採用Socket G34的處理器，均支持四路[HyperTransport
3.0/3.1匯流排](../Page/HyperTransport.md "wikilink")（其中一路用於外部擴展，只有三路用於CPU之間的互聯）和[雙通道/四通道](../Page/多通道記憶體技術.md "wikilink")、可選帶[ECC的](https://zh.wikipedia.org/wiki/ECC "wikilink")[DDR3-1600](../Page/DDR3_SDRAM.md "wikilink")
UDIMM/RDIMM/LRDIMM內存模塊；[TDP最高達](https://zh.wikipedia.org/wiki/TDP "wikilink")150W，支援雙路/四路工作方式。\[9\]\[10\]

這些Socket
G34的處理器中還有採用[多晶片模組](../Page/多晶片模組.md "wikilink")技術（MCM）製造的處理器，將兩顆相同規格的處理器晶粒封裝於1,944個觸點的處理器基板上，因此，在技術上以一個處理器晶粒為一個處理器實體的角度看的，一顆這種多晶片模組封裝的處理器實際上包含了兩顆處理器，以HyperTransport匯流排連接，也因此，安裝了四顆Opteron處理器的平台，有可能實際上是八處理器平台。\[11\]\[12\]此前的Socket
F/F+平台，最高支援八顆處理器安裝於一塊主機板上，而每個插座上安裝的CPU，只會有一顆處理器晶粒。因此總的來說，最高規格的四處理器Socket
G34平台，相當於形制上將八處理器平台壓縮為四處理器平台規格，而處理器內部的協調運作還是八處理器的操作方式，[作業系統會識別出八個實體處理器](https://zh.wikipedia.org/wiki/作業系統 "wikilink")（節點）。\[13\]而AMD的多處理器平臺均支援[NUMA](https://zh.wikipedia.org/wiki/NUMA "wikilink")，并且可以在主機板的[BIOS](../Page/BIOS.md "wikilink")中，根據伺服器或工作站的用途手動開啓或關閉。\[14\]

對於純雙處理器工作站/伺服器平台，AMD也推出了同樣是LGA封裝的[Socket
C32對應](../Page/Socket_C32.md "wikilink")，單塊[主機板上安裝的處理器的核心總數](https://zh.wikipedia.org/wiki/主機板 "wikilink")，最多僅為Socket
G34四处理器平臺中最大處理器核心總數的1/4（以Socket G34最高規格——4顆16核心的處理器共64個CPU核心為例）。\[15\]

散熱器的安裝規格，是兩個散熱器扣具固定點分佈於長方形插座中短邊一側。形式上與Socket C32和Socket
F/F+的類似，但是長度兩者不一致，因此C32的散熱器扣具和G34的散熱器扣具不能直接相容。\[16\]不過有電腦玩家通過改造現有的CPU散熱器，來令市售的CPU散熱器能安裝於Socket
G34平台上的做法。

## 部署狀況

Socket G34於2010年3月29日推出，用於取代Socket F/F+，原來也用於取代Socket
F/[F+的](https://zh.wikipedia.org/wiki/Socket_F+ "wikilink")[Socket
G3和相應的](https://zh.wikipedia.org/wiki/Socket_G3 "wikilink")[記憶體擴充晶片](https://zh.wikipedia.org/wiki/記憶體 "wikilink")[G3MX被完全取消](https://zh.wikipedia.org/wiki/Socket_G3_記憶體擴展器 "wikilink")。\[17\]

最初，AMD雙處理器及四處理器平台[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")/[工作站](../Page/工作站.md "wikilink")用的[Opteron](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")，包括代號為「Shanghai」4核心處理器、「Istanbul」6核心處理器等45奈米版本K10微架構的處理器，都在Socket
G3取消以後，計劃使用此種管腳排列。然而後來，普通雙處理器平臺使用Socket
C32，用於單處理器平臺的則使用和普通桌上型電腦一樣的[Socket
AM3](../Page/Socket_AM3.md "wikilink")/[AM3+](../Page/Socket_AM3+.md "wikilink")，僅高階的雙處理器/四處理器平臺以及支援雙/四路工作方式的處理器，方會使用Socket
G34。見於工作站及伺服器平台的AMD Opteron 6100/6200/6300系列處理器以及SR5600系列晶片組。\[18\]

### 晶片組

採用Socket
G34插座的主機板，到目前為止均採用AMD自家的[SR5600系列晶片組](https://zh.wikipedia.org/wiki/AMD_800_芯片组系列 "wikilink")，而這款晶片組實際上是桌上型電腦平台中，AMD
800/900晶片組的伺服器/工作站平台版本。插座上共有1,974支金屬接觸片。\[19\]

  - SR5690/SP5100
  - SR5670/SP5100
  - SR5650/SP5100

注：[北橋晶片](https://zh.wikipedia.org/wiki/北橋 "wikilink")/[南橋晶片](https://zh.wikipedia.org/wiki/南橋 "wikilink")

### 處理器

2009年推出的45奈米製程、[K10微架構](../Page/AMD_10h.md "wikilink")、核心代號「Magny-Cours」8核心/12核心處理器，以及2011年至2013年間陸續推出的、32奈米製程的[Bulldozer微架構的](https://zh.wikipedia.org/wiki/Bulldozer微架構 "wikilink")「Interlagos」、[Piledriver微架構的](https://zh.wikipedia.org/wiki/Piledriver微架構 "wikilink")「Abu
Dhabi」和「Warsaw」核心代號的伺服器/工作站處理器，均採用了Socket
G34管腳排列，處理器[基板上有](https://zh.wikipedia.org/wiki/印刷電路板 "wikilink")1,944個觸點。\[20\]

#### Opteron 6100系列「Magny-Cours」

[AMD_Opteron_6168_magny_cours_server_workstation_cpu_for_socket_1974.jpg](https://zh.wikipedia.org/wiki/File:AMD_Opteron_6168_magny_cours_server_workstation_cpu_for_socket_1974.jpg "fig:AMD_Opteron_6168_magny_cours_server_workstation_cpu_for_socket_1974.jpg")
 以下的處理器型號，支援3.2GHz運行的HyperTransport
3.1以及四通道記憶體技術，而且全爲多晶片模組構建而成，實際上一顆處理器内封裝了兩個處理器晶粒，在作業系統中，一顆MCM技術組裝的處理器，相當於兩顆實體處理器（下面以「（2×X核心/模組）」表示）：

  - 八核心（2×4核心）：Opteron 61KS、61QS、6128、6134、6136、6140、6124 HE、6128
    HE、6132 HE
  - 十二核心（2×6核心）：Opteron 6168、6172、6174、6176、6176 SE、6180 SE、6164 HE、6166
    HE

#### Opteron 6200系列「Interlagos」

本系列部分型號為單一一塊晶片，但6模組12核心、8模組16核心的型號則仍然為多晶片模組的設計。
[AMD_Opteron_6282SE_on_socket_(14470254034).jpg](https://zh.wikipedia.org/wiki/File:AMD_Opteron_6282SE_on_socket_\(14470254034\).jpg "fig:AMD_Opteron_6282SE_on_socket_(14470254034).jpg")

  - 雙模組四執行緒：Opteron 6204
  - 四模組八執行緒：Opteron 6212、6220
  - 六模組十二執行緒（2×三模組）：Opteron 6234、6238、6230 HE
  - 八模組十六執行緒（2×四模組）：Opteron 6272、6274、6276、6278、6282 SE、6284 SE、6262 HE

#### Opteron 6300系列「Abu Dhabi」

本系列的處理器全部為一顆晶片的設計，而非多晶片模組。

  - 雙模組四執行緒：Opteron 6308
  - 四模組八執行緒：Opteron 6320、6328
  - 六模組十二執行緒：Opteron 6344、6348
  - 八模組十六執行緒：Opteron 6376、6378、6380、6386 SE、6366 HE

#### Opteron 6300P系列「Warsaw」

本系列是Opteron 6300系列的低功耗版本

  - 六模組十二執行緒：Opteron 6338P
  - 八模組十六執行緒：Opteron 6370P

## 參見

  - [AMD Opteron](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")
  - [AMD Opteron處理器列表](../Page/AMD_Opteron處理器列表.md "wikilink")
  - [Socket C32](../Page/Socket_C32.md "wikilink")
  - [Socket AM3+](../Page/Socket_AM3+.md "wikilink")

## 參考資料

## 外部連結

  - [Daily tech: Hello AMD Socket
    G34](https://web.archive.org/web/20120522122341/http://www.dailytech.com/Hello+AMD+Socket+G34/article12400.htm)
  - [AMD Analyst Day 2009
    Slideshow](http://phx.corporate-ir.net/External.File?item=UGFyZW50SUQ9MjAzMzJ8Q2hpbGRJRD0tMXxUeXBlPTM=&t=1)
  - [AMD outs Socket
    G34](http://www.semiaccurate.com/2009/08/24/amd-outs-socket-g34/)
  - [AMD Analyst Day 2010
    Slideshow](http://phx.corporate-ir.net/External.File?item=UGFyZW50SUQ9Njk3NDJ8Q2hpbGRJRD0tMXxUeXBlPTM=&t=1)

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

13.
14.

15.
16.

17.  [PC Watch
    report](http://pc.watch.impress.co.jp/docs/2008/0520/kaigai440.htm)，取自2008年8月20號

18.

19.
20.