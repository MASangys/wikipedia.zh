> 本文内容由[AMD Piledriver](https://zh.wikipedia.org/wiki/AMD_Piledriver)转换而来。


**AMD Piledriver**（[中文](https://zh.wikipedia.org/wiki/中文 "wikilink")：“**AMD 打樁機**”\[1\]）是[超微半導體研發](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")[微處理器架構的代號](https://zh.wikipedia.org/wiki/微處理器 "wikilink")，是為第一代[Bulldozer](../Page/AMD_Bulldozer.md "wikilink")[微架構](../Page/微架構.md "wikilink")的改進版。\[2\]\[3\]首發產品是2012年5月發布的基於Piledriver微架構的[AMD Fusion之流動版本A](https://zh.wikipedia.org/wiki/AMD_Fusion "wikilink")10、A8系列（核心代號“[Trinity](../Page/三位一體.md "wikilink")”）。Piledriver在架構上不會與Bulldozer有太大的差別，而部分國外科技媒體則稱它為「New Stepping of Bulldozer」，是步進比較新的Bulldozer\[4\]。給人一種「只對耗電問題解決，並在某些方面的改良當中讓時脈變得更好提升。\[5\]

2010年超微半導體的[財務分析日上](https://zh.wikipedia.org/wiki/財務分析 "wikilink")，公佈了2012年第二代Bulldozer微架構的計劃事宜\[6\]，指出它是“增強型Bulldozer”微架構；後來這個微架構被賦予了代號“Piledriver”。Piledriver相對於第一代Bulldozer微架構的主要改進在於提升每[時鐘週期的](https://zh.wikipedia.org/wiki/時鐘週期 "wikilink")[指令執行效能](https://zh.wikipedia.org/wiki/指令 "wikilink")、提升[時鐘頻率](https://zh.wikipedia.org/wiki/時鐘頻率 "wikilink")、提高效能功耗比率和降低發熱量。\[7\]和Bulldozer微架構不同的是，Piledriver微架構還將會有流動平台型號的處理器，部分型號還內建[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")。 同頻率下單核心效能約Phenom II(K10.5架構)的0.8\~0.85之間。

## 特性

### 微架構設計、製作工藝

  - 延續[AMD Bulldozer微架構的](../Page/AMD_Bulldozer.md "wikilink")“M-SPACE”模組化設計，AMD FX的高階型號FX-8350共計12億左右的[電晶體數量](https://zh.wikipedia.org/wiki/電晶體 "wikilink")；\[8\]
  - 採用[格羅方德改進的](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink")32[納米](https://zh.wikipedia.org/wiki/納米 "wikilink")[SOI](../Page/SOI.md "wikilink") HKMG製程；
  - Piledriver把所謂的[FPU](https://zh.wikipedia.org/wiki/FPU "wikilink")（浮點運算單元）從2個合成1個，於是128位元的FPU因為2合1變成了256位元。因此說它是雙核心不太對，因為FPU只剩下1個而不是2個，而架構上看起來是有點怪的單核心，但比較確切來說是變成2個邏輯核心。\[9\]

### 指令集

  - 指令集方面，加入[FMA](https://zh.wikipedia.org/wiki/FMA "wikilink")4/3、[AVX](https://zh.wikipedia.org/wiki/AVX "wikilink")、[AES和](https://zh.wikipedia.org/wiki/AES "wikilink")[XOP等新指令集](https://zh.wikipedia.org/wiki/XOP "wikilink")。\[10\]\[11\]\[12\]
  - 改進浮點運算單元排程器、改進[分支預測器](../Page/分支預測器.md "wikilink")；\[13\]

### 快取

  - 和Bulldozer架構一樣，每整數排程運算單元獨占4路16KB一級資料[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")，每模組共用2路64KB一級[指令](https://zh.wikipedia.org/wiki/指令 "wikilink")[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")；每模組1～2MB二級快取；FX系列和Opteron系列分別擁有最高8MB和16MB的三級快取，但改進了一級快取的轉譯後備緩衝器（[TLB](https://zh.wikipedia.org/wiki/TLB "wikilink")）和快取分支預測器。\[14\]

### 電源管理

  - 加入[Cyclos半導體公司最新的](https://zh.wikipedia.org/wiki/Cyclos半導體公司 "wikilink")[共振时钟网络](https://zh.wikipedia.org/wiki/共振时钟网络 "wikilink")/振諧時鐘網絡（Resonant Clock Mesh，RCM）技術，透過最大限度地回收[晶片](https://zh.wikipedia.org/wiki/晶片 "wikilink")[時鐘電路運作時損耗的能量](https://zh.wikipedia.org/wiki/時鐘電路 "wikilink")，來為時鐘電路產生更多的時鐘信號，以此來提升晶片運作時的[電能利用效率](https://zh.wikipedia.org/wiki/電能 "wikilink")，降低發熱量。\[15\]\[16\]Cyclos指出，相同的架構的處理器，加入共振時鐘網絡技術的可以在降低5%至10%的耗電量的同時提升5%至30%的效能，AMD認為該技術可使Piledriver微架構的晶片降低24%每[時鐘週期的能耗](https://zh.wikipedia.org/wiki/時鐘週期 "wikilink")，相較於Bulldozer微架構的晶片相同的效能而言。\[17\]\[18\]\[19\]
  - Turbo Core 3.0，與Turbo Core 2.0相比，可以同時動態調整CPU和內建GPU的時鐘頻率；\[20\]
  - 處理器的[熱設計功耗最低](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")17[瓦](../Page/瓦特.md "wikilink")\[21\]，最高140瓦，一些特别型号更达到220瓦；\[22\]\[23\]

### 記憶體界面、晶片組、處理器插座、匯流排

  - 仍然是內建[雙通道](https://zh.wikipedia.org/wiki/雙通道 "wikilink")[DDR3記憶體界面](https://zh.wikipedia.org/wiki/DDR3 "wikilink")，支援DDR3-800至2133的記憶體時鐘頻率規格，支援1.25V超低[電壓](../Page/電壓.md "wikilink")DDR3[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink")；企業級的處理器則最高支援[四通道DDR](https://zh.wikipedia.org/wiki/四通道 "wikilink")3，支援[ECC記憶體](https://zh.wikipedia.org/wiki/寄存式內存 "wikilink")；\[24\]\[25\]
  - 消費級的[AMD FX系列沿用](../Page/AMD_FX.md "wikilink")[Socket AM3+插座](../Page/Socket_AM3+.md "wikilink")，沿用舊有的[900系列晶片組](../Page/AMD_900_芯片组系列.md "wikilink")；\[26\]\[27\]而基於Piledriver微架構的[AMD Fusion](https://zh.wikipedia.org/wiki/AMD_Fusion "wikilink") A系列APU雖然仍使用舊有的A55、A75等晶片組，也可使用全新發布的A85X晶片組，但插座則使用全新的[Socket FM2插座](../Page/Socket_FM2.md "wikilink")，不相容於舊有的[Socket FM1](https://zh.wikipedia.org/wiki/Socket_FM1 "wikilink")；\[28\]\[29\]\[30\]基於Piledriver微架構的[AMD Opteron則全部相容於既有的晶片組和既有的Socket](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink") AM3+、[Socket C32和](../Page/Socket_C32.md "wikilink")[Socket G34插座](../Page/Socket_G34.md "wikilink")；\[31\]
  - [HyperTransport 3.1](../Page/HyperTransport.md "wikilink")，預設運作時鐘頻率3.2[GHz](https://zh.wikipedia.org/wiki/GHz "wikilink")，資料吞吐效能為單向6.4GT/s；

### 內建顯示核心（僅限AMD Fusion）

  - 基於Piledriver微架構的AMD Fusion，核心代號“Trinity”，[CPU部分是單](https://zh.wikipedia.org/wiki/CPU "wikilink")/雙Piledriver模組，2至4核心，無L3快取，[GPU部分基於](https://zh.wikipedia.org/wiki/GPU "wikilink")[AMD Radeon HD 6900系列的](https://zh.wikipedia.org/wiki/AMD_Radeon_HD_6000 "wikilink")“Cayman”顯示核心之[VLIW4指令架構而設計的](https://zh.wikipedia.org/wiki/VLIW "wikilink")[Radeon HD 7600D/G系列](../Page/AMD_Radeon_HD_7000.md "wikilink")，擁有128至384個流處理器，核心時鐘頻率為327MHz至492MHz，支援[DriectX 11](../Page/DirectX.md "wikilink")、[OpenGL 4.2](../Page/OpenGL.md "wikilink")、[OpenCL 1.1](../Page/OpenCL.md "wikilink")，支援[UVD](../Page/UVD.md "wikilink")3[高解析度視訊](https://zh.wikipedia.org/wiki/高清 "wikilink")[解碼](https://zh.wikipedia.org/wiki/解碼 "wikilink")、Eyefinity多屏顯示輸出、[DisplayPort 1.2規範等](../Page/DisplayPort.md "wikilink")\[32\]

## 處理器

### 桌上型效能級處理器

基於AMD Piledriver微架構的第二代AMD FX處理器，核心代號“Vishera”，單晶片最高4模組8核心，支援TurboCore 3.0，無[整合顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，使用既有的900系列晶片組和Socket AM3+插座，支援雙通道DDR3記憶體界面，大體上和第一代基於AMD Bulldozer微架構的AMD FX的規格相差不大。超微稱第二代FX系列處理器可以在多媒體任務的處理效能上提供20%至30%的效能增長幅度，得益於共振時鐘網絡技術帶來的更低的能耗、更高的時鐘頻率和更低的發熱量。\[33\]\[34\]\[35\]

第二代AMD FX在2012年10月23日正式上市。其後，首發的效能評測媒體普遍表示基於Piledriver架構的AMD FX系列效能上比Bulldozer的強13%至15%，但仍不敵對手英特爾的[Core i7-3770K](https://zh.wikipedia.org/wiki/Core_i7 "wikilink")，部分項目甚至只和[Core i5-3570K持平](https://zh.wikipedia.org/wiki/Core_i5 "wikilink")，功耗上Vishera核心的FX比Zambezi核心的稍有下降但降幅不大，低負載時（瀏覽網頁為例）的功耗水平優於對手但滿負載時依然和對手存在差距。\[36\]\[37\]\[38\]\[39\]\[40\]\[41\]不過首發FX-8350的[官方售價卻不超過](https://zh.wikipedia.org/wiki/建議售價 "wikilink")200[美元](../Page/美元.md "wikilink")。\[42\]

2013年6月11日，AMD發布基於Piledriver架構的FX-9590和FX-9370，其中FX-9590更以5.0GHz的預設加速時脈、220瓦的热设计功耗創下市售處理器（包括OEM）的時脈以及发热功率记录。\[43\]\[44\]\[45\]处理器本身是FX-8350的芯片中挑选过“过硬体质”的结果，但功耗仍巨大，部分多线程性能可与对手英特尔的旗舰级型号Core i7-4770K抗衡。\[46\]

### 桌上型主流級處理器

第二代AMD Fusion A系列APU，主要面向桌上型主流平台，AMD也推出了“Virgo”（[處女星座](https://zh.wikipedia.org/wiki/處女座 "wikilink")）平台：由第二代A系列APU、A系列晶片組和可選的AMD Radeon HD 7000系列顯示卡組成。\[47\]針對[Intel Core i3和](../Page/Intel_Core_i3.md "wikilink")[Core i5之間的市場領域](https://zh.wikipedia.org/wiki/Core_i5 "wikilink")。

基於AMD Piledriver微架構的AMD Fusion A系列APU，核心代號“Trinity”（三位一體），諸多規格都與現時基於[K10/K10.5的](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")“Llano”核心的APU大相徑庭：除了支援雙通道DDR3-800至2133、以及可以沿用現有的晶片組和無L3[快取外](https://zh.wikipedia.org/wiki/快取 "wikilink")，使用全新的Socket FM2插座、支援TurboCore3.0、內建效能更強的顯示核心、CPU部分使用1至2個Piledriver模組（2至4核心）。\[48\]\[49\]

值得注意的是和第一代A系列Fusion APU一樣，會有無顯示核心的晶片以Athlon II（速龍2）的品牌推出。“Trinity”核心的Athlon II有Athlon II X4 730、740和750K，和A10、A8系列一樣均為2模組4核心，但屏蔽了內建顯示核心，730更將Turbo Core功能刪減。\[50\]\[51\]\[52\]

  - Athlon II X4 750K，CPU核心同A10/A8，預設時脈3.4GHz，加速時鐘頻率4.0GHz，採用不鎖倍頻設計，熱設計功耗100瓦；
  - Athlon II X4 740，CPU核心同A10/A8，預設時脈3.2GHz，加速時脈3.7GHz，最高倍頻鎖定，熱設計功耗65瓦；\[53\]
  - Athlon II X4 730，CPU核心同A10/A8，但支援的記憶體時脈最高只到1600MHz。

在一些基準效能測試中，CPU核心的效能依舊不敵對手Intel Core i5，但要優於Core i3，而內建GPU核心的效能繼續大幅拋離對手Intel的HD Graphics以及一眾入門級獨立顯示核心。\[54\]\[55\]\[56\]而且有高時脈DDR3記憶體的加入也可使第二代A系列APU的效能有所提升。\[57\]

### 移動型效能/主流級處理器

第二代AMD Fusion A系列APU移動版本，主要針對主流級和效能級的筆記型電腦市場，AMD相應地推出了“Comal”移動平台。\[58\]AMD也籍此推行自己的超輕薄筆電平台“Ultrathin”。\[59\]\[60\]\[61\]\[62\]

和桌上型主流級平台一樣，AMD Fusion A系列APU流動版本的核心代號為“Trinity”（三位一體），也分為A10、A8、A6和A4四大系列。其中A10、A8的CPU部分均為雙模組四核心，4MB L2快取，主要區別在於內建GPU部分：A10的為Radeon HD 7660G/7620G，而A8的則為Radeon HD 7640G；A6和A4的CPU部分為單模組雙核心，2MB L2快取，A6的內建顯示核心為Radeon HD 7500G/7520G。A10、A8和A6均在2012年4月發布，不少效能測評媒體也收到了[測試樣機](https://zh.wikipedia.org/wiki/樣品 "wikilink")。\[63\]

在2011年AMD Fusion開發者論壇上，超微稱流動平台上“Trinity”核心AMD Fusion APU的計算能力會比“Llano”核心的快50%。\[64\]\[65\]\[66\] 實際上是藉著拉頻率來比舊的Llano核心快30% (單核心同頻下只有 0.8\~0.9的效能)。

### 企業級處理器

對於伺服器市場，超微在2012年財政分析日上（2012年2月2日）表示，將和基於AMD Bulldozer微架構的AMD Opteron一樣，分為三大系列：\[67\]

  - 針對單路伺服器市場（單CPU，用於Web伺服器、Web網站託管以及小型伺服器、小型工作站）的AMD Opteron 3300系列，核心代號“Delhi”，擁有2模組4核心或4模組8核心，和桌上型效能級的AMD FX一樣採用Socket AM3+插座，以及支援雙通道DDR3 ECC記憶體；\[68\]
  - 針對單路至雙路伺服器市場（單CPU或雙CPU，用於高效益、高能效比的伺服器、中型工作站）的AMD Opteron 4300系列，核心代號“Seoul”，擁有3模組6核心或4模組8核心，繼續沿用舊有的Socket C32插座，支援雙通道DDR3 ECC記憶體。\[69\]
  - 針對雙路至四路伺服器市場（雙CPU至四CPU，用於主流企業級伺服器、大型工作站）的Opteron 6300系列，核心代號“Abu Dhabi”，擁有雙模組四核心、4模組8核心、6模組12核心、8模組16核心等型號，繼續沿用舊有的Socket G34插座，支援四通道DDR3 ECC記憶體。4模組以上的型號不再採用多晶片模組的封裝，而是統一整合至一塊晶片上，即單晶片最高可容納8模組16核心。\[70\]

超微認為Piledriver架構的Opteron相比Bulldozer架構的會有15%的效能增長，得益於每時鐘週期指令數的優化和高20%的處理器時鐘頻率。\[71\]

## 未來發展

超微在發布AMD Bulldozer微架構時表示Bulldozer架構實現“一年一改進”，2011年發布首代Bulldozer架構，2012年發布第二代『增強型』Bulldozer架構（即Piledriver架構），2013年/2014年推出第三代Bulldozer架構（即Steamroller架構），2015年/2016年推出第四代Bulldozer架構（即Excavator架構）。\[72\]\[73\]

## Piledriver Bug

  - 2016年2月，AMD Piledriver核心處理器被發現非管理員權限的使用者，可以接管整台伺服器的漏洞。AMD已發佈新微代碼修正此一漏洞。被發現此一漏洞的是AMD Opteron 6300系列處理器，執行微代碼版本為 0x6000832 及 0x6000836 的產品。一旦漏洞被執行，這個漏洞會干擾處理器核心的執行資料，可能導致現在運轉中的處理器當機。使得虛擬機中的的非管理者權限使用者可以利用這個漏洞，接管整個主機系統或者誘導主機的處理器執行被使用者控制的惡意程式。

## 參見

  - [AMD CPU微架構列表](../Page/AMD_CPU微架構列表.md "wikilink")
  - [AMD Bulldozer](../Page/AMD_Bulldozer.md "wikilink")
  - [AMD Opteron](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")
  - [AMD FX](../Page/AMD_FX.md "wikilink")
  - [AMD Fusion](https://zh.wikipedia.org/wiki/AMD_Fusion "wikilink")

## 參考資料

## 外部連結

  - [New "Bulldozer" and "Piledriver" Instructions](http://developer.amd.com/wordpress/media/2012/10/New-Bulldozer-and-Piledriver-Instructions.pdf)

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink")

1.  [AMD下代APU改用「Piledriver」微架構 13年升級至28nm 進入異類多核心時代](http://www.hkepc.com/7513) - hkepc
2.
3.  [2011至2012年最新AMD產品發表時程大公開](http://info.amdtaiwan.com.tw/survey/PDF/2011Q1_21-23.pdf)
4.  [AMD Working on Bulldozer B3 Stepping](http://www.anandtech.com/show/4997/amd-working-on-bulldozer-b3-stepping)
5.
6.
7.
8.
9.
10.
11. [Rumor: AMD "Piledriver" FX CPU production to begin Q3 2012](http://www.techspot.com/news/48742-rumor-amd-piledriver-fx-cpu-production-to-begin-q3-2012.html) - Techspot
12. [AMD FX 8350处理器预览](http://www.mcplive.cn/index.php/article/index/id/12097) - 微型計算機
13.
14.
15. <http://www.bit-tech.net/news/hardware/2012/02/21/amd-packs-cyclos-piledriver/1>
16. [打桩机突破4GHz的秘密：谐振时钟网络](http://news.mydrivers.com/1/218/218855.htm) - 驅動之家
17. [AMD Piledriver Cores to Use Energy Recovery Tech](http://www.tomshardware.com/news/amd-piledriver-cyclos-clock-mesh-kers,14766.html) - Tom's Hardware
18. [AMD 打桩机 Piledriver 内核有望突破 4GHz](http://cn.engadget.com/tag/resonant+clock+mesh/) - [engadget](https://zh.wikipedia.org/wiki/engadget "wikilink")
19. [打桩机内核照片首次公开 默频超4GHz](http://news.mydrivers.com/1/218/218695.htm) - 驅動之家
20.
21.
22. [四路打桩机：Opteron 6300型号、规格一览](http://news.mydrivers.com/1/243/243559.htm) - 驅動之家
23. [成功逆天 AMD 5GHz超级处理器实测](http://news.mydrivers.com/1/268/268445.htm) - mydrivers.com, 2013-07-08
24. [不止三位一体 Trinity APU同步首发评测](http://hardware.mydrivers.com/2/227/227950_all.htm)  - 驅動之家
25. [打桩机版Opteron值得期待的地方……](http://news.mydrivers.com/1/233/233775.htm) - 驅動之家
26. url=
27.
28. [A85主板携手Trinity APU真身“驾临”](http://news.mydrivers.com/1/233/233959_all.htm) - 驅動之家
29.
30. [AMD Socket FM2 Motherboards Based on A85 FCH Arrive in June](http://www.techpowerup.com/162005/AMD-Socket-FM2-Motherboards-Based-on-A85-FCH-Arrive-in-June.html) - techpowerup.com
31.
32.
33. url=
34.
35. <http://www.bit-tech.net/news/hardware/2012/02/21/amd-packs-cyclos-piledriver/1>
36. [AMD高频旗舰！打桩机FX-8350首发测试](http://www.pcpop.com/doc/0/847/847573_all.shtml) - pcpop.com
37. [打桩机乱入！千元市场FX-8350大战i5/E3](http://diy.pconline.com.cn/cpu/reviews/1210/3037082_all.html) - 太平洋電腦網
38. [打桩机来临！AMD新旗舰FX-8350首发评测](http://diy.pconline.com.cn/cpu/reviews/1210/3031469.html) - 太平洋電腦網
39. [4GHz+“打桩机”！AMD新FX-8350评测](http://www.inpai.com.cn/doc/HDhard/183729_-3.htm)  - inpai.com.cn
40. [打桩机旗舰级发布 AMD FX-8350全面评测](http://cpu.it168.com/a2012/1024/1412/000001412614_all.shtml)  - it168.com
41. [升级打桩机核心 全新FX旗舰处理器首测](http://cpu.zol.com.cn/329/3291112_all.html) - zol.com.cn
42. [打桩机便宜卖了！最高不超过200美元](http://news.mydrivers.com/1/244/244083.htm) - 驅動之家
43.
44.
45. [FX-9000来了 AMD 5GHz超级处理器正式发布](http://news.mydrivers.com/1/266/266193.htm) - mydrivers.com.cn, 2013-06-12
46.
47.
48.
49.
50. <http://www.cpu-world.com/CPUs/Bulldozer/AMD-Athlon%20II%20X4%20730.html>
51. <http://www.fudzilla.com/home/item/28949-trinity-athlons-listed-but-not-available-yet>
52.
53.
54. \[diy.pconline.com.cn/cpu/reviews/1209/2955523_all.html AMD能借新系统雄起？三代i3/APU再战Win8\] - 太平洋電腦網
55. \[diy.pconline.com.cn/cpu/reviews/1209/2998818_all.html CPU+GPU升级！AMD二代APU A10-5800K首测\] - 太平洋電腦網
56. [独显说再见 A10-5800K首发评测](http://hardware.mydrivers.com/2/242/242953_all.htm)  - 驅動之家
57. \[diy.pconline.com.cn/cpu/reviews/1210/3020786_all.html 高频出奇迹？二代APU最佳内存频率实测\] - 太平洋電腦網
58.
59. [扔掉你的独显 AMD Trinity APU首发测试](http://notebook.pconline.com.cn/testing/hxpc/1206/2830000_all.html) - 太平洋電腦網
60. [基于AMD新一代APU的三星超轻薄笔记本亮相台北电脑展](http://news.mydrivers.com/1/230/230439.htm) - 驅動之家
61. [AMD定调APU超薄本](http://news.mydrivers.com/1/230/230920.htm) - 驅動之家
62. [AMD产品总监Kevin Lensing谈笔记本整机发展](http://news.mydrivers.com/1/230/230682.htm) - 驅動之家
63. [坚持异构计算 AMD发布新一代APU Trinity](http://news.pconline.com.cn/it/notebook/1205/2787554.html) - 太平洋電腦網
64.
65.
66.
67.
68.
69.
70.
71. [打桩机版Opteron值得期待的地方……](http://news.mydrivers.com/1/233/233775.htm)
72. [Our Take on AMD FX](https://archive.is/20120707175240/blogs.amd.com/play/2011/10/13/our-take-on-amd-fx/) - Blogs.amd.com 2011-10-13
73. [能否推倒“爱妻”?AMD FX推土机PK两代i7](http://diy.pconline.com.cn/cpu/reviews/1110/2557474_6.html) - 太平洋電腦網