[Logo_AMD_Geode_140w.gif](https://zh.wikipedia.org/wiki/File:Logo_AMD_Geode_140w.gif "fig:Logo_AMD_Geode_140w.gif") **AMD Geode™** 處理器是[AMD公司針對低功耗應用所設計的](https://zh.wikipedia.org/wiki/AMD "wikilink")[x86处理器](https://zh.wikipedia.org/wiki/x86 "wikilink")，其頻率從400MHz到1GHz不等。主要應用於各種[終端機](https://zh.wikipedia.org/wiki/終端機 "wikilink")、[精簡型終端機](../Page/瘦客户端.md "wikilink")（Thin client）和移動數位設備（如PDA）。

## 概要

Geode是一系列相容x86的微處理器，針對[嵌入式運算市場](https://zh.wikipedia.org/wiki/嵌入式 "wikilink")。該系列最初是在1999年由美國[國家半導體](https://zh.wikipedia.org/wiki/國家半導體 "wikilink")（National Semiconductor，NS）推出的Geode家族。原Geode處理器核心本身就是源自於[Cyrix](../Page/Cyrix.md "wikilink") [MediaGX](../Page/MediaGX.md "wikilink")平台，該平台在1997年與[Cyrix](../Page/Cyrix.md "wikilink")合併過程中由美國國家半導體獲得。在2003年8月，AMD公司從美國國家半導體買下Geode業務，以擴大其現有的嵌入式x86處理器產品。AMD把Geode系列處理器擴大為兩種： 由MediaGX衍生的Geode GX和LX，以及自家原有的Athlon 衍生的Geode NX。

Geode處理器在為低功耗和低成本最佳化的同時，而仍然相容X86平台的軟體。由MediaGX 衍生的處理器缺乏現今常見的功能，例如[SSE](../Page/SSE.md "wikilink")和內建大容量L1[快取記憶體](https://zh.wikipedia.org/wiki/快取記憶體 "wikilink")，但是這些功能由較近期的Athlon所衍生的Geode NX提供。Geode處理器緊緊地結合一些通常由一個單獨的晶片組提供的功能，例如[北橋](https://zh.wikipedia.org/wiki/北橋 "wikilink")。該處理器家族最適合於瘦用戶端，[機上盒和嵌入式計算應用](https://zh.wikipedia.org/wiki/機上盒 "wikilink")。

[OLPC](../Page/OLPC.md "wikilink")（One Laptop per Child）計畫的[百元筆電](https://zh.wikipedia.org/wiki/百元筆電 "wikilink")「[XO](https://zh.wikipedia.org/wiki/XO "wikilink")」上最初使用Geode GX系列處理器，但後來改用了Geode LX。[Linutop也是基於Geode](https://zh.wikipedia.org/wiki/Linutop "wikilink") LX 。[3Com](../Page/3Com.md "wikilink")的[Audrey也使用這個晶片](https://zh.wikipedia.org/wiki/Audrey "wikilink")。2006年11月，日本[工人舍](../Page/工人舍.md "wikilink")（Kohjinsha）推出了LX-800的SA系列[UMPC](https://zh.wikipedia.org/wiki/UMPC "wikilink")，CPU時脈500MHZ，並在無風扇狀態下運作，作業系統為[Windows XP](../Page/Windows_XP.md "wikilink")，直到2008年11月有多個型號發售中。

Geode的SCxxxx 系列是單晶片的版本，相較於[SiS](https://zh.wikipedia.org/wiki/SiS "wikilink") 552或[VIA](https://zh.wikipedia.org/wiki/VIA "wikilink") [CoreFusion](https://zh.wikipedia.org/wiki/CoreFusion "wikilink")，整合了CPU，記憶體控制器，圖形處理器和I/O裝置近一個封裝中。基於這些處理器的機板由Artec Group，PC Engines (WRAP) 和 Soekris所製造。

## 美國國家半導體公司的Geode

### Geode GXm

Cyrix [MediaGX](../Page/MediaGX.md "wikilink")m的複製品。[CPUID](../Page/CPUID.md "wikilink")顯示為"CyrixInstead"。

  - 由MediaGX衍生的核心
  - [0.35 µm](https://zh.wikipedia.org/wiki/0.35微米製程 "wikilink") 4層金屬電路的CMOS
  - [MMX](../Page/MMX.md "wikilink") 指令集
  - 電壓：I/O 3.3 V，核心2.9 V
  - 16 Kb 「寫回，Write-Back」，資料、指令一體性存取的L1快取記憶體
  - PCI控制器
  - 64-bit SDRAM控制器
  - CS5530協同晶片（提供音效及影像功能）
  - VSA架構
  - 1280x1024x8 or 1024x768x16 的顯示能力

### Geode GXLV

  - 由MediaGX衍生的核心
  - [0.25 µm](https://zh.wikipedia.org/wiki/0.25微米製程 "wikilink") 4層金屬電路的CMOS
  - I/O電壓：3.3 V
  - 核心電壓：2.2 V, 2.5 V, 2.9 V
  - 16 Kb 「寫回，Write-Back」，資料、指令一體性存取的L1快取記憶體
  - Fully static設計 (Fully Static—No Clock or Timing Strobes Necessary )
  - 1.0 W @2.2 V/166 MHz, 2.5 W @2.9 V/266 MHz

### Geode GX1

[Geode_GX1_233.jpg](https://zh.wikipedia.org/wiki/File:Geode_GX1_233.jpg "fig:Geode_GX1_233.jpg")

  - 由MediaGX衍生的核心
  - [0.18 µm](https://zh.wikipedia.org/wiki/0.18微米製程 "wikilink") CMOS
  - 200 - 333 MHz
  - 核心電壓：1.6 - 2.2 V
  - 16 kB（16 [KiB](https://zh.wikipedia.org/wiki/kibibyte "wikilink")）L1快取記憶體
  - 0.8 W - 1.2 W typical
  - [SDRAM](../Page/SDRAM.md "wikilink")記憶體 111 MHz
  - CS5530A協同晶片
  - 85 Hz VGA更新頻率

美國國家半導體／AMD SC1100是基於Cyrix GX1核心和CS5530輔助晶片。

### Geode GX2

由美國國家半導體公司於2001年10月在微處理器論壇（Microprocessor Forum）發表。2002年6月在台灣[COMPUTEX上展出](https://zh.wikipedia.org/wiki/COMPUTEX "wikilink")。

  - 0.15 µm 製程
  - [MMX](../Page/MMX.md "wikilink")及[3DNow\!](../Page/3DNow!.md "wikilink")™ 指令集
  - 16 kB 指令+ 16 kB 數據快取記憶體
  - GeodeLink 架構，6 [GB](https://zh.wikipedia.org/wiki/gigabyte "wikilink")／s對晶片頻寬，高達2 GB/s記憶體頻寬
  - 整合64-bit PC133 SDRAM 及 [DDR266](../Page/DDR_SDRAM.md "wikilink") 控制器
  - 頻率：266, 333 and 400 MHz
  - 支援3組PCI
  - 1600x1200x24 bit顯示和影片縮放
  - CRT DACs及UMA DSTN/TFT控制器
  - Geode CS5535協同晶片

## AMD Geode

在2002年， AMD公司推出Geode GX系列，這是一個重新定位的NS GX2 。隨後有Geode LX ，運行速度最高可達667MHz。LX也帶來了不少改進，如使用高速的DDR ，一個重新設計的指令管線，以及一個更強大的顯示控制器。從CS5535升級到CS5536的I/O帶來更高速的USB 。

Geode GX和LX處理器通常可在精簡型終端機和工業控制系統上見到。但他們仍在x86方面受到[VIA的競爭壓力](https://zh.wikipedia.org/wiki/VIA_Technologies "wikilink")，以及[ARM和](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")[XScale](../Page/XScale.md "wikilink") 帶走大部分低階產品的生意。

因為GX和LX核心表現欠佳的設計，AMD推出了「Geode NX」，它是非常成功的[Athlon處理器](https://zh.wikipedia.org/wiki/Athlon "wikilink")（K7）的嵌入式版本。Geode NX使用Thoroughbred核心並與使用這核心的Athlon XP-M十分類似。Geode NX包含256 KB的L2快取記憶體，並且NX1500@6W版本可以在無風扇下運作在1 GHz。NX2001的運行速度為1.8 GHz，NX1750運行速度為1.4 GHz，而NX1250運行在667MHz。

有強大的FPU的Geode NX特別適合需要圖形性能的嵌入式設備，如資訊站及賭場的遊戲機台。

但是，據報導說，Geode處理器在Longmont[科羅拉多州](../Page/科羅拉多州.md "wikilink")的設計團隊已被關閉，75個員工正在搬遷到Fort Collins科羅拉多州的新發展設施。 由於關閉的Geode設計中心，可以預見的是Geode系列處理器更新的速度將變得比較慢。

### Geode GX

當AMD在推出Geode NX系列的同時，將原有的AMD Geode GX2處理器系列改名而來。

1.  Geode GX 466@0.9 W：時脈：333 MHz
2.  Geode GX 500@1.0 W：時脈：366 MHz
3.  Geode GX 533@1.1 W：時脈：400 MHz

### Geode LX

1.  LX 700@0.8 W：時脈：433 MHz，功耗：1.3 watts. ([TDP](https://zh.wikipedia.org/wiki/Thermal_Design_Power "wikilink") 3.1 W)
2.  LX 800@0.9 W：時脈：500 MHz，功耗：1.8 watts. ([TDP](https://zh.wikipedia.org/wiki/Thermal_Design_Power "wikilink") 3.6 W)
3.  LX 900@1.5 W：時脈：600 MHz，功耗：2.6 watts.（[TDP](https://zh.wikipedia.org/wiki/Thermal_Design_Power "wikilink") 5.1 W）特點：

<!-- end list -->

  - 低功耗
  - 完全相容x86
  - 處理器功能模塊：
      - CPU 核心
      - GeodeLink™ 控制處理器
      - GeodeLink Interface Units
      - GeodeLink 記憶體控制器
      - 圖形處理器
      - 顯示控制器
      - Video處理器
      - Video輸入Port
      - GeodeLink PCI Bridge
      - Security Block
          - 128-Bit 先進加密標準（[Advanced Encryption Standard](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")） (AES) - (CBC/ECB)
          - 真實的隨機數產生器

規格：

  - 處理器頻率達600 MHz (LX900), 500 MHz (LX800) 及 433 MHz (LX700).
  - 電源管理：符合ACPI ，功耗低，[SMI](../Page/SMI.md "wikilink")／[INTR喚醒](https://zh.wikipedia.org/wiki/INTR "wikilink")。
  - 64K指令／64K數據L1快取記憶體 和128K L2快取記憶體
  - Split Instruction/Data cache/[TLB](https://zh.wikipedia.org/wiki/Translation_Lookaside_Buffer "wikilink")。
  - DDR記憶體 400 MHz (LX 800), 333 MHz (LX 700)
  - 整合[MMX](../Page/MMX.md "wikilink")® 和 [3DNow\!](../Page/3DNow!.md "wikilink")™ [FPU](https://zh.wikipedia.org/wiki/FPU "wikilink")
  - 9 GB/s 內部GeodeLink™ 介面單元（GLIU）
  - 高解析度的CRT與TFT（高和標準解析度）。支援[VESA](https://zh.wikipedia.org/wiki/VESA "wikilink") 1.1及2.0 VIP/VDA
  - [0.13微米製程](https://zh.wikipedia.org/wiki/0.13微米製程 "wikilink")
  - 481-terminal PBGA (Plastic Ball Grid Array)
  - GeodeLink動態硬體電源管理

### Geode NX

1.  NX 1250@6W：時脈：667 MHz，功耗：9 watts（核心操作電壓1.1v）.
2.  NX 1500@6W：時脈：1 GHz，功耗：9 watts（核心操作電壓1.0v）.
3.  NX 1750@14W：時脈：1.4 GHz，功耗：25 watts（核心操作電壓1.25v）.

特點：

  - 第七代核心（基於Mobile [Athlon XP-M](https://zh.wikipedia.org/wiki/Athlon#Mobile_Athlon_XP "wikilink")）.
  - 電源管理：AMD PowerNow\!™，ACPI 1.0b 及 ACPI 2.0.
  - 128 KB L1快取記憶體
  - 256 KB L2快取記憶體（有硬體資料預先擷取功能）
  - 266 MHz 匯流排（FSB）
  - 3DNow\!™，MMX® 和 SSE 指令集
  - 0.13 µm 製程
  - 與所有NX家族處理器腳位相容
  - [OS支援](https://zh.wikipedia.org/wiki/OS "wikilink")：[Linux](../Page/Linux.md "wikilink")，[Windows CE](https://zh.wikipedia.org/wiki/Windows_CE "wikilink")，MS [Windows XP](../Page/Windows_XP.md "wikilink")。
  - 相容[Socket A主機板](../Page/Socket_A.md "wikilink")

## Geode使用的晶片組

1.  AMD Geode CS5530A南橋用在Geode GX1.
2.  AMD Geode CS5535南橋用在GX與Geode LX (USB 1.1)。整合4個USB, 1個ATA-66 UDMA控制器，1個紅外線通訊埠，1個[AC97](../Page/AC97.md "wikilink")控制器，1個[SMBUS控制器](https://zh.wikipedia.org/wiki/System_Management_Bus "wikilink")，1個[LPC埠](https://zh.wikipedia.org/wiki/Low_Pin_Count "wikilink")，as well as GPIO，電源管理，和legacy functional blocks.
3.  AMD Geode CS5536 南橋用在Geode GX和Geode LX (USB 2.0)。功耗：1.9 W (433 MHz) 和 2.4 W (500 MHz).
4.  Geode NX處理器與AMD的[Socket A](../Page/Socket_A.md "wikilink") Athlon XP處理器 "插槽和晶片100%相容" : SIS741CX北橋和SIS 964南橋，VIA KM400北橋和VIA VT8235南橋，VIA KN400A北橋和VIA VT8237R南橋。

## 另見

  - [Intel Atom](https://zh.wikipedia.org/wiki/Intel_Atom "wikilink")
  - [ARM](https://zh.wikipedia.org/wiki/ARM "wikilink")

[Category:AMD处理器](https://zh.wikipedia.org/wiki/Category:AMD处理器 "wikilink")