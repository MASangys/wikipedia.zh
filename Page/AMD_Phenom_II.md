**Phenom II**是[AMD生產的](https://zh.wikipedia.org/wiki/AMD "wikilink")45[奈米制程多核心處理器的一個家族](https://zh.wikipedia.org/wiki/奈米 "wikilink")，是原[Phenom處理器的後繼者](https://zh.wikipedia.org/wiki/Phenom "wikilink")。Phenom II的[Socket AM2+版本於](../Page/Socket_AM2+.md "wikilink")2008年12月推出，而支援[DDR3記憶體的](https://zh.wikipedia.org/wiki/DDR3 "wikilink")[Socket AM3版本則於](../Page/Socket_AM3.md "wikilink")2009年2月9日推出，分三核心和四核心形號\[1\]，而雙處理器系統需要[Socket F+接口用於](https://zh.wikipedia.org/wiki/Socket_F+ "wikilink")[Quad FX平台](../Page/AMD_Quad_FX平台.md "wikilink")\[2\]。Phenom II X4核心代號為Deneb，並由之前的Shanghai核心修改而來\[3\]。因為使用45nm製程除了時脈可以再提高外，Phenom II 的[TDP也更低](https://zh.wikipedia.org/wiki/TDP "wikilink")，同時有很大的[超頻](../Page/超頻.md "wikilink")空間。

Phenom II是AMD的Dragon平台構成部分之一，該平台包括[AMD 700 晶片組系列和](https://zh.wikipedia.org/wiki/AMD_700_晶片組系列 "wikilink")[Radeon HD 4800系列](https://zh.wikipedia.org/wiki/Radeon_R700#Radeon_HD_4800 "wikilink")[顯示卡](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")。

## 特點

Phenom II的L3快取記憶體的容量是上一代的三倍，由Phenom的2MB提升至6MB，\[4\] 此改進令到處理器在標準檢查程式中的成績提升了30%。\[5\] 另一個改變是[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")技術是同時間應用在整個處理器上，而不是上一代Phenom般，是應用在個別核心上。這一個轉變是針對著[Windows Vista而來](../Page/Windows_Vista.md "wikilink")。由於Vista對於程式線程的錯誤管理，只支援單執行緒的程式會運行在頻率只有半速的核心上。\[6\]

透過主機板的[BIOS](../Page/BIOS.md "wikilink")升級，[Socket AM3版本的Phenom](../Page/Socket_AM3.md "wikilink") II是可以向後兼容[Socket AM2+](../Page/Socket_AM2+.md "wikilink")。Phenom II的針腳相容性，使到AM3的記憶體控制器可以支援[DDR2和](https://zh.wikipedia.org/wiki/DDR2 "wikilink")[DDR3記憶體](https://zh.wikipedia.org/wiki/DDR3 "wikilink")(最高支援DDR3-1333)，現有的AM2+主板使用者可以直接升級使用Phenom II處理器，而無需更換主板和記憶體。但是，與原Phenom管理DDR2-1066記憶體的方法相似，現時的Phenom II平台限制了DDR3-1333的使用。每一個通道記憶體只可以支援一DIMM的DDR3-1333。否則，記憶體會降頻至DDR3-1066運行。\[7\] AMD稱這是BIOS的問題，而不是處理器內的記憶體控制器的問題。這個問題可以透過升級BIOS來修正。由於Phenom II的記憶體控制器是支援雙規格，所以主板製造商和用家可以將DDR2用於AM3處理器上，從而降低組機的成本。而Intel的Core i7，就只能使用DDR3。

從AM3版本的Phenom II開始，基於同一款晶片的三個產品系列會同時發售。第一個系列是旗艦級，代表著擁有最佳性能。另外兩個系列是透過屏蔽核心的某些元件而達成。在製造處理器的時候，不免會有瑕疵。透過屏蔽核心的瑕疵的，就可以製造另一較低端形號的產品。\[8\]

在2010年4月26日開始正式出售Phenom II x6 處理器，以平價方式對抗對手i5及i7級產品。

  - 1000T系列：旗艦產品，原生六核和高達9MB的快取記憶體。
  - 900T系列：透過屏蔽2個核心使之只有4個核心(市場上稱為“X4”，與“X6”之對比)，和L3快取記憶體。
  - 900系列：擁有所有核心和L3快取記憶體。
  - 800系列：屏蔽了2MB快取記憶體，核心只擁有4MB的L3快取記憶體。但核心數量沒有改變，維持4個。
  - 700系列：透過屏蔽1個核心使之只有3個核心(市場上稱為“X3”，與“X4”之對比)，但是L3快取記憶體仍然維持6MB。
  - 500系列：透過屏蔽2個核心使之只有2個核心(市場上稱為“X2”，與“X3”或“X4”之對比)，但是L3快取記憶體仍然維持6MB。

## 超頻

Phenom II是AMD第一個修正“cold bug”問題的處理器系列。“cold bug”是一個物理現象，當溫度低於某個程度時，處理器會停止運作。這樣會令到使用[乾冰](../Page/乾冰.md "wikilink")或者[液氮](../Page/液氮.md "wikilink")等“極端”冷卻方法失效。如果“cold bug”的影響能夠減低，此處理器可以超頻至更高程度。\[9\]\[10\]

## 核心

### *Thuban*

  - 6個[AMD K10核心](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")
  - 45 nm [SOI](https://zh.wikipedia.org/wiki/Silicon_on_Insulator "wikilink") with [Immersion Lithography](https://zh.wikipedia.org/wiki/Immersion_lithography "wikilink") and [Low-k insulator](https://zh.wikipedia.org/wiki/Low-k_dielectric "wikilink")
  - L1 快取記憶體: 每一個核心64 [kB](https://zh.wikipedia.org/wiki/Kilobyte "wikilink") + 64 kB ([data](https://zh.wikipedia.org/wiki/Data_\(computing\) "wikilink") + [instructions](https://zh.wikipedia.org/wiki/Instruction_\(computer_science\) "wikilink"))
  - L2 快取記憶體: 每一個核心擁有全速512 kB
  - L3 快取記憶體: 所有核心共享6 [MB](https://zh.wikipedia.org/wiki/MB "wikilink")
  - 記憶體控制器: 雙通道DDR2-1066 MHz (AM2+)，雙通道DDR3-1600 (AM3) with unganging option
  - [MMX](../Page/MMX.md "wikilink")，擴充[3DNow\!](../Page/3DNow!.md "wikilink")，[SSE](../Page/SSE.md "wikilink")，[SSE2](../Page/SSE2.md "wikilink")，[SSE3](../Page/SSE3.md "wikilink")，[SSE4a](https://zh.wikipedia.org/wiki/SSE4a "wikilink")， [AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")，[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")，[NX bit](https://zh.wikipedia.org/wiki/NX_bit "wikilink")， [AMD-V](https://zh.wikipedia.org/wiki/AMD-V "wikilink")
  - Turbo Core
  - [Socket AM2+](../Page/Socket_AM2+.md "wikilink"), [Socket AM3](../Page/Socket_AM3.md "wikilink")
  - [HyperTransport](../Page/HyperTransport.md "wikilink") 頻率 2000 MHz
  - 核心面積: 346 mm²
  - 功耗 ([TDP](https://zh.wikipedia.org/wiki/Thermal_Design_Power "wikilink")): 95 W或125 W
  - 製程
      - 2010年4月27日 （E0步進）
  - 核心頻率: 2600至3300 MHz (最高可自動加速至3100\~3700 MHz)
  - 型號: Phenom II X6 1035T to 1100T

### *Zosma*

  - 4個[AMD K10核心](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")
  - 45 nm [SOI](https://zh.wikipedia.org/wiki/Silicon_on_Insulator "wikilink") with [Immersion Lithography](https://zh.wikipedia.org/wiki/Immersion_lithography "wikilink") and [Low-k insulator](https://zh.wikipedia.org/wiki/Low-k_dielectric "wikilink")
  - L1 快取記憶體: 每一個核心64 [kB](https://zh.wikipedia.org/wiki/Kilobyte "wikilink") + 64 kB ([data](https://zh.wikipedia.org/wiki/Data_\(computing\) "wikilink") + [instructions](https://zh.wikipedia.org/wiki/Instruction_\(computer_science\) "wikilink"))
  - L2 快取記憶體: 每一個核心擁有全速512 kB
  - L3 快取記憶體: 所有核心共享6 [MB](https://zh.wikipedia.org/wiki/MB "wikilink")
  - 記憶體控制器: 雙通道DDR2-1066 MHz (AM2+)，雙通道DDR3-1333 (AM3) with unganging option
  - [MMX](../Page/MMX.md "wikilink")，擴充[3DNow\!](../Page/3DNow!.md "wikilink")，[SSE](../Page/SSE.md "wikilink")，[SSE2](../Page/SSE2.md "wikilink")，[SSE3](../Page/SSE3.md "wikilink")，[SSE4a](https://zh.wikipedia.org/wiki/SSE4a "wikilink")， [AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")，[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")，[NX bit](https://zh.wikipedia.org/wiki/NX_bit "wikilink")， [AMD-V](https://zh.wikipedia.org/wiki/AMD-V "wikilink")
  - Turbo Core
  - [Socket AM2+](../Page/Socket_AM2+.md "wikilink"), [Socket AM3](../Page/Socket_AM3.md "wikilink")
  - [HyperTransport](../Page/HyperTransport.md "wikilink") 頻率 2000 MHz
  - 功耗 ([TDP](https://zh.wikipedia.org/wiki/Thermal_Design_Power "wikilink")): 95 W
  - 製程
      - 2010年第三季 （E0步進）
  - 核心頻率: 3000 MHz (最高可自動加速至3400 MHz)
  - 型號: Phenom II X4 960T、Phenom II X4 970T、Phenom II X4 840T、Athlon II X4 640T

### *Deneb*

  - 4個[AMD K10核心](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")
  - 45 nm [SOI](https://zh.wikipedia.org/wiki/Silicon_on_Insulator "wikilink") with [Immersion Lithography](https://zh.wikipedia.org/wiki/Immersion_lithography "wikilink") and [Low-k insulator](https://zh.wikipedia.org/wiki/Low-k_dielectric "wikilink")
  - L1 快取記憶體: 每一個核心64 [kB](https://zh.wikipedia.org/wiki/Kilobyte "wikilink") + 64 kB ([data](https://zh.wikipedia.org/wiki/Data_\(computing\) "wikilink") + [instructions](https://zh.wikipedia.org/wiki/Instruction_\(computer_science\) "wikilink"))
  - L2 快取記憶體: 每一個核心擁有全速512 kB
  - L3 快取記憶體: 所有核心共享6 [MB](https://zh.wikipedia.org/wiki/MB "wikilink")
  - 記憶體控制器: 雙通道DDR2-1066 MHz (AM2+)，雙通道DDR3-1333 (AM3) with unganging option
  - [MMX](../Page/MMX.md "wikilink")，擴充[3DNow\!](../Page/3DNow!.md "wikilink")，[SSE](../Page/SSE.md "wikilink")，[SSE2](../Page/SSE2.md "wikilink")，[SSE3](../Page/SSE3.md "wikilink")，[SSE4a](https://zh.wikipedia.org/wiki/SSE4a "wikilink")， [AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")，[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")，[NX bit](https://zh.wikipedia.org/wiki/NX_bit "wikilink")， [AMD-V](https://zh.wikipedia.org/wiki/AMD-V "wikilink")
  - [Socket AM2+](../Page/Socket_AM2+.md "wikilink")， [Socket AM3](../Page/Socket_AM3.md "wikilink")
  - [HyperTransport](../Page/HyperTransport.md "wikilink")頻率從 1800至2000 MHz
  - 核心面積: 258 mm²
  - 功耗 ([TDP](https://zh.wikipedia.org/wiki/Thermal_Design_Power "wikilink")): 65 W，95 W，125 W或140 W
  - 製程
      - 2009年1月8日 (C2步進)
      - 2009年11月31日 (C3步進)
  - 核心頻率: 2500至3700 MHz
  - 型號:
      - Phenom II X4 805 to 980
      - Phenom II X4 B93 to B97 (商用版)

### *Heka*

  - 3個[AMD K10核心](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")，透過屏蔽原4核心的其中一個而取得。
  - 45 nm [SOI](https://zh.wikipedia.org/wiki/Silicon_on_Insulator "wikilink") with [Immersion Lithography](https://zh.wikipedia.org/wiki/Immersion_lithography "wikilink") and [Low-k insulator](https://zh.wikipedia.org/wiki/Low-k_dielectric "wikilink")
  - L1 快取記憶體: 每一個核心64 kB + 64 kB ([data](https://zh.wikipedia.org/wiki/Data_\(computing\) "wikilink") + [instructions](https://zh.wikipedia.org/wiki/Instruction_\(computer_science\) "wikilink"))
  - L2 快取記憶體: 每一個核心擁有全速512 kB
  - L3 快取記憶體: 所有核心共享6 [MB](https://zh.wikipedia.org/wiki/MB "wikilink")
  - 記憶體控制器: 雙通道DDR2-1066 MHz (AM2+)，雙通道DDR3-1333 (AM3) with unganging option
  - [MMX](../Page/MMX.md "wikilink")，擴充[3DNow\!](../Page/3DNow!.md "wikilink")，[SSE](../Page/SSE.md "wikilink")，[SSE2](../Page/SSE2.md "wikilink")，[SSE3](../Page/SSE3.md "wikilink")，[SSE4a](https://zh.wikipedia.org/wiki/SSE4a "wikilink")， [AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")，[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")，[NX bit](https://zh.wikipedia.org/wiki/NX_bit "wikilink")， [AMD-V](https://zh.wikipedia.org/wiki/AMD-V "wikilink")
  - [Socket AM3](../Page/Socket_AM3.md "wikilink")
  - [HyperTransport](../Page/HyperTransport.md "wikilink")頻率2000 MHz
  - 功耗 ([TDP](https://zh.wikipedia.org/wiki/Thermal_Design_Power "wikilink")): 95 W
  - 製程
      - 2009年2月9日 (C2步進)
      - 2010年第2季 (C3步進) 迄今僅有B77
  - 核心頻率: 2600至3200 MHz
  - 型號:
      - Phenom II X3 710 to 740
      - Phenom II X3 B73 to B77 (商用版)

### *Callisto*

  - 2個[AMD K10核心](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")，透過屏蔽原4核心的其中2個而取得。
  - 45 nm [SOI](https://zh.wikipedia.org/wiki/Silicon_on_Insulator "wikilink") with [Immersion Lithography](https://zh.wikipedia.org/wiki/Immersion_lithography "wikilink") and [Low-k insulator](https://zh.wikipedia.org/wiki/Low-k_dielectric "wikilink")
  - L1 快取記憶體: 每一個核心64 kB + 64 kB ([data](https://zh.wikipedia.org/wiki/Data_\(computing\) "wikilink") + [instructions](https://zh.wikipedia.org/wiki/Instruction_\(computer_science\) "wikilink"))
  - L2 快取記憶體: 每一個核心擁有全速512 kB
  - L3 快取記憶體: 所有核心共享6 [MB](https://zh.wikipedia.org/wiki/MB "wikilink")
  - 記憶體控制器: 雙通道DDR2-1066 MHz (AM2+)，雙通道DDR3-1333 (AM3) with unganging option
  - [MMX](../Page/MMX.md "wikilink")，擴充[3DNow\!](../Page/3DNow!.md "wikilink")，[SSE](../Page/SSE.md "wikilink")，[SSE2](../Page/SSE2.md "wikilink")，[SSE3](../Page/SSE3.md "wikilink")，[SSE4a](https://zh.wikipedia.org/wiki/SSE4a "wikilink")， [AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")，[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")，[NX bit](https://zh.wikipedia.org/wiki/NX_bit "wikilink")，[AMD-V](https://zh.wikipedia.org/wiki/AMD-V "wikilink")
  - [Socket AM3](../Page/Socket_AM3.md "wikilink")
  - [HyperTransport](../Page/HyperTransport.md "wikilink")頻率2000 MHz
  - 功耗 ([TDP](https://zh.wikipedia.org/wiki/Thermal_Design_Power "wikilink")): 80 W
  - 製程
      - 2009年6月1日 (C2步進)
      - 2009年11月4日 (C3步進)
  - 核心頻率: 3000至3500 MHz
  - 型號:
      - Phenom II X2 511 (HDX511OCK23GM，規格同Athlon II X2 270)
      - Phenom II X2 545 to 570
      - Phenom II X2 B53 to B59 (商用版)

## 相關條目

  - [AMD 10h](../Page/AMD_10h.md "wikilink")
  - [Phenom](https://zh.wikipedia.org/wiki/Phenom "wikilink")
  - [AMD Phenom處理器列表](https://zh.wikipedia.org/wiki/AMD_Phenom處理器列表 "wikilink")

## 參考資料

[Category:AMD处理器](https://zh.wikipedia.org/wiki/Category:AMD处理器 "wikilink") [Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")

1.  <http://anandtech.com/cpuchipsets/showdoc.aspx?i=3512>

2.

3.  [Stepping codes of AMD K10 microprocessors](http://www.cpu-world.com/info/AMD/K10_stepping_codes.html)

4.  <http://www.anandtech.com/cpuchipsets/showdoc.aspx?i=3492&p=3>

5.  <http://www.anandtech.com/cpuchipsets/showdoc.aspx?i=3492&p=9>

6.  <http://www.anandtech.com/cpuchipsets/showdoc.aspx?i=3492&p=6>

7.

8.
9.  <http://www.techspot.com/news/32576-amd-shows-off-phenom-ii-overclocked-to-63ghz.html> AMD Shows Off Phenom II OverClocked to 6.5GHz

10. <http://blogs.zdnet.com/hardware/?p=3082> AMD's Phenom II Show Overclocking Potential