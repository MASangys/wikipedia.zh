> 本文内容由[MediaGX](https://zh.wikipedia.org/wiki/MediaGX)转换而来。


[Media_GX.jpg](https://zh.wikipedia.org/wiki/File:Media_GX.jpg "fig:Media_GX.jpg")

**MediaGX**是[Cyrix](../Page/Cyrix.md "wikilink")公司於1997年所發創、開展的[x86整合型處理器](https://zh.wikipedia.org/wiki/x86 "wikilink")\[1\]，該處理器雖由Cyrix公司所設計，但Cyrix公司為Fabless型態的[半導體業者](https://zh.wikipedia.org/wiki/半導體 "wikilink")，沒有自屬的晶圓廠，因此發表之初是委託[IBM公司代為產製](https://zh.wikipedia.org/wiki/IBM公司 "wikilink")，之後Cyrix公司由NS公司\[2\]所收併，才逐漸將產製線由IBM移轉至NS，此一轉移至1998年初才澈底完成。

MediaGX處理器發表之初是用於[COMPAQ公司的Presario](https://zh.wikipedia.org/wiki/康柏電腦 "wikilink") 2100個人電腦內，該部電腦也是首次一線國際品牌業者首次推出低於1,000美元價位的電腦（不含顯示器），自此掀起了持續數年的**低價電腦**（**Low Cost PC**）風潮，而當年Presario 2100之所以能如此空前平價，原因也在於使用高度整合取向，進而使電路成本大幅精縮的MediaGX處理器。

除了COMPAQ Presario 2100（以及後續的Presario 2200）的桌上型電腦外，MediaGX也有用於[筆記型電腦](https://zh.wikipedia.org/wiki/笔记本电脑 "wikilink")，或成為電子彈珠台內的控制器，例如CTX的[EzBook筆記型電腦](https://zh.wikipedia.org/wiki/EzBook "wikilink")、[COMPAQ的Presario](https://zh.wikipedia.org/wiki/COMPAQ "wikilink") 1230筆記型電腦、[CASIO的Cassiopeia](../Page/卡西歐.md "wikilink") Fiva[平板電腦](../Page/平板電腦.md "wikilink")、電子彈珠機台Pinball 2000等等。

## 整合過程

MediaGX是一顆整合型處理器，言下之意除了具有核心的處理器功效外，也具備其他的相關的週邊功效。

在執行核心的電路上，MediaGX用的是比它更早出現，且同樣是Cyrix公司自屬設計的[5x86處理器](https://zh.wikipedia.org/wiki/Cyrix_Cx5x86 "wikilink")，除此之外還整合了三種主要的週邊功能：「視訊輸出」、「音訊輸入／輸出」、以及「記憶體存取控制」，此三項整合Cyrix公司也分別給予技術稱呼：XpressGRAPHICS、XpressAUDIO、XpressRAM。其中XpressGRAPHICS的視訊技術及電路設計，主要是由Cyrix公司向當時的[S3公司購買視訊晶片的技術而得](../Page/S3_Graphics.md "wikilink")，XpressGRAPHICS用的是S3 [ViRGE](https://zh.wikipedia.org/wiki/ViRGE "wikilink")／DX晶片的設計，但是去除了3D功效，是一顆僅具2D能力的[S3](https://zh.wikipedia.org/wiki/S3 "wikilink") ViRGE/DX電路。

而XpressAUDIO方面，XpressAUDIO屬於軟體性質的音效處理，技術上也一樣並非Cyrix公司所原創，而是由Cyrix公司向[ESSTech公司](http://www.esstech.com/)購取軟體音效電路及相關技術而得，並將此內建到MediaGX內。至於XpressRAM則是過往PC[晶片組中的北橋晶片功效](https://zh.wikipedia.org/wiki/晶片組 "wikilink")，此方面Cyrix則運用自力將其整合到MediaGX中。

## 虛擬子系統架構

由於MediaGX整合了記憶體控制、視訊、音訊等過去分立於處理器外的硬體週邊功效，整合後使得硬體系統的架構與線路也隨之變動，對過去的PC軟體（作業系統、驅動程式、應用程式）而言，並無法在此種整合變革後的新架構上執行，Cyrix公司為了讓過往的PC軟體能在MediaGX相容執行，因而提出了虛擬子系統架構（Virtual Subsystem Architecture；VSA）技術，此虛擬化技術是在系統管理模式（System Management Mode；SMM）下，於[BIOS](../Page/BIOS.md "wikilink")內置放軟體存取、服務呼用的轉向陷阱，使過往的PC軟體能將XpressGRAPHICS視為過往標準、傳統的[VGA視訊](https://zh.wikipedia.org/wiki/VGA "wikilink")，同時也將XpressAUDIO視為傳統的[聲霸卡](https://zh.wikipedia.org/wiki/聲霸卡 "wikilink")，如此無論[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")、[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")、還是[應用程式](https://zh.wikipedia.org/wiki/應用程式 "wikilink")，都會將MediaGX「誤認」成傳統PC硬體架構，並與往常一樣地平順執行。

## 時脈強化版：GXi

嚴格而論，GXi是研發代號（codename），並非是正式的晶片編號、型號、名稱，字母「i」雖沒有官方的證實解釋，但一般認為具有increasing的「增量、遞增」含意，表示增加MediaGX處理器的時脈速度。然而事實也近似，GXi版的MediaGX其運作時脈、頻率為150MHz、166MHz，而最初原創的MediaGX則為120MHz\[3\]、133MHz，除此之外在功效機制上毫無差別，因此可以確定GXi僅是時脈加速、提升的一個版本，此方面屬製程、製造技術方面的強化改進，與電路設計較無關連。

## 媒體強化版：GXm

[Cyrix_MediaGXm.jpg](https://zh.wikipedia.org/wiki/File:Cyrix_MediaGXm.jpg "fig:Cyrix_MediaGXm.jpg")

MediaGX是在1997年2月發表，GXi則是在同年6月的[COMPUTEX展中現身](../Page/台北國際電腦展覽會.md "wikilink")，展後Cyrix公司隨即由NS公司收併，收併之後的1998年GXm\[4\]才正式推出，不過在MediaGX的最初發表時就有將GXm列入規劃之中，GXm主要是在既有的MediaGX處理核心中加入了[MMX](../Page/MMX.md "wikilink")的多媒體指令集功能，除此之外，在製造的工藝技術也有更顯著的進步：

  - 製程上使用0.35um、4層金屬電路的CMOS半導體技術。
  - 執行核心的運作時脈、頻率：180MHz、200MHz、233MHz、266MHz
  - 匯流排運作頻率：33MHz
  - [快取記憶體](https://zh.wikipedia.org/wiki/快取 "wikilink")：
      - 第一階快取記憶體容量為16KB，採「寫回，Write-Back」、4路的設計，同時也採行資料、指令的一體性存取，而非分立各自存取。
      - 或者，第一階快取的記憶體容量降至12KB，保留4KB供系統管理模式（SMM）與視訊（Graphics）方面之用。
  - 整合週邊：
      - [PCI控制器](https://zh.wikipedia.org/wiki/PCI "wikilink")
      - 顯示控制器及2D（平面）視訊加速器
      - 硬體電路式的[MPEG-1](../Page/MPEG-1.md "wikilink")解碼電路，可流暢地進行（[Video CD](../Page/VCD.md "wikilink")、MPEG-1視訊）全螢幕播放
      - [16位元音訊子系統](https://zh.wikipedia.org/wiki/16位元 "wikilink")，相容於[創新未來](https://zh.wikipedia.org/wiki/創新未來 "wikilink")[Sound Blaster系列中的](../Page/Sound_Blaster.md "wikilink")16/PRO
      - 64位元SDRAM控制器
  - 核心電壓：2.9V
  - I/O電壓：3.3V
  - 封裝：（320個接腳，陶瓷[PGA封裝](https://zh.wikipedia.org/wiki/PGA "wikilink")）或（352個接腳，金屬BGA封裝）
  - 系統[晶片組Cx](https://zh.wikipedia.org/wiki/晶片組 "wikilink")5520\[5\]：352個接腳，BGA封裝

## 晶片組的弔詭機制

某些人對MediaGX的一項設計感到詬病，MediaGX的搭配晶片組若未與MediaGX搭配，而是個別、獨立用於非MediaGX的系統電路時，則晶片組會啟動其內部自屬的迷你處理器（mini processor），且晶片組的[前端匯流排](https://zh.wikipedia.org/wiki/前端匯流排 "wikilink")（FSB）運作頻率會以迷你處理器的速率為基準，如此無論在[PCI](https://zh.wikipedia.org/wiki/PCI "wikilink")、視訊等方面的執行速度都會較快，快過與MediaGX處理器搭配時，與MediaGX處理器搭配時的晶片組，由於內部自屬的迷你處理器會因為MediaGX的統管權接手而停止功效，如此晶片組在PCI、視訊等方面的效能表現反而低落。

## 型款整理

| 發表日期       | 發表時脈          | 核心類型 |
| ---------- | ------------- | ---- |
| 1997年2月20日 | 120MHz、133MHz | GX   |
| 1997年6月6日  | 150MHz        | GXi  |
| 1997年6月30日 | 166MHz、180MHz | GXi  |
| 1998年1月    | 200MHz        | GXm  |
| 1998年3月18日 | 233MHz        | GXm  |
| 1998年8月25日 | 266MHz        | GXm  |

  - 1997年6月6日是COMPUTEX展期間，也是Cyrix被收併前最後一次發表MediaGX。
  - 另有假偽的366MHz、433MHz版。

## 附註說明

<references/>

7.PALMAX公司的PD-1000 Plus筆記型電腦採用過120MHz CPU。

## 參考引據

  - 規格：[NS公司有關GXm方面的規格說明](https://web.archive.org/web/20060115164740/http://www.national.com/pf/GX/GXM.html)

## 關連條目

  - [Cyrix](../Page/Cyrix.md "wikilink")公司 - 發創MediaGX[處理器的](https://zh.wikipedia.org/wiki/處理器 "wikilink")[半導體業者](https://zh.wikipedia.org/wiki/半導體 "wikilink")。
  - [AMD公司](https://zh.wikipedia.org/wiki/AMD "wikilink")－2003年後MediaGX/Geode處理器的新買主與技術擁有者。
  - [5x86處理器](https://zh.wikipedia.org/wiki/Cyrix_Cx5x86 "wikilink")－1997年Cyrix MediaGX的最初處理核心來源基礎。
  - [Geode處理器](../Page/AMD_Geode.md "wikilink")－1999年NS公司將後續的MediaGX處理器改名成Geode處理器。

## 外部連結

  - [GXM Product Folder](https://web.archive.org/web/20060115164740/http://www.national.com/pf/GX/GXM.html)
  - [AMD Geode Solutions](http://www.amd.com/geode)
  - [Cyrix MediaGX and National Semiconductor Geode Information](http://www.cpushack.net/MediaGX.html)
  - [Cyrix MediaGX](http://www.pctechguide.com/24Cyrix_MediaGX.htm)
  - [Cyrix](http://www.cpu-central.com/Hardware.asp?id=822&hw_id=13&htype=cpus&display=1)
  - [1998年12月4日，NEC的120LT筆記型電腦（低於1,000美元）使用NS/Cyrix的MediaGX 200MHz處理器](http://findarticles.com/p/articles/mi_m0EKF/is_2249_44/ai_53455216)

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink") [Category:威盛处理器](https://zh.wikipedia.org/wiki/Category:威盛处理器 "wikilink")

1.  在正式晶片名稱尚未確定前，該處理器（晶片）的研發代號為：**Gx86**，也有人說是：**5g86**。
2.  全稱是National Semiconductor公司，簡稱NS公司。
3.  120MHz版與133MHz版於同一天同時發表，但自始自終似乎沒有業者採用過120MHz，皆是從133MHz版開始採行、運用。
4.  原本GXm與GXi一樣僅是個研發代號，字母m具有Multimedia（多媒體）的含意。不過，由於NS公司收併Cyrix公司後過久沒有提升MediaGX處理器，因此將GXm的研發代號轉成正式產品名稱，試圖用新名來刷新用戶買主對該處理器的印象，更之後則將MediaGX改名成[Geode](../Page/AMD_Geode.md "wikilink")。
5.  最初的MediaGX所搭配的是Cx5510晶片，之後為Cx5520，更之後則有CS5530。