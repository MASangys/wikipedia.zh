**PMIC**（Power Management
IC）又稱**電源管理IC**，是一種特定用途的[集成電路](https://zh.wikipedia.org/wiki/集成電路 "wikilink")，其功能是為主系統作管理電源等工作。

PMIC常用於以電池作為電源的裝置，例如[行動電話或](https://zh.wikipedia.org/wiki/行動電話 "wikilink")[可攜式媒體播放器](../Page/可攜式媒體播放器.md "wikilink")。由於這類裝置一般有多於一個電源(例如電池及USB電源)，系統又需要多個不同電壓的電源，加上要控制電池的充放電，以傳統方式滿足這樣的需求會佔用不少空間，同時增加產品開發時間，因此造就了PMIC的出現。

## 功能

PMIC的主要功用為控制電量流量及流向以配合主系統需要。在多個電源(例如，外部真流電源、電池、USB電源等)，選取、分配電力給主系統各部份使用，例如提供多個不同電壓的電源，並負責為內部電池充電。因為使用的系統多以電池為電源，其多使用高轉換效率的設計，以減少功率損耗。

PMIC可以具有一个或者多个功能，這些功能包括：

  - [直流-直流轉換器](https://zh.wikipedia.org/wiki/直流-直流轉換器 "wikilink")
  - [低壓差穩壓器](../Page/低壓差穩壓器.md "wikilink")(LDO)
  - [電池充電器](../Page/充電器.md "wikilink")
  - 電源選擇
  - [動態電壓調節](https://zh.wikipedia.org/wiki/動態電壓調節 "wikilink")
  - 各電源開啟、關閉次序控制
  - 各電源電壓檢測
  - 溫度檢測
  - 其他功能

由於需要與主系統協調，因此需要與主系統溝通的訊號接口，一般會使用[I²C或](../Page/I²C.md "wikilink")[SPI等](https://zh.wikipedia.org/wiki/SPI "wikilink")[串聯接口](https://zh.wikipedia.org/wiki/串聯接口 "wikilink")，部份功能較簡單的PMIC會直接以獨立訊號接至[MCU的](https://zh.wikipedia.org/wiki/MCU "wikilink")[GPIO](https://zh.wikipedia.org/wiki/GPIO "wikilink")。

部份PMIC能夠接上後備電源作供應[實時時鐘之用](../Page/實時時鐘.md "wikilink")，有些會有簡單的電源狀態指示，例如使用[LED顯示電池充放電狀態](https://zh.wikipedia.org/wiki/LED "wikilink")。

有些PMIC是專為某特定系列的MCU而設計，開發對應MCU的公司會有現成的[韌體支援該PMIC的工作](../Page/韌體.md "wikilink")。

## IC生產商

由於以電池操作的移動裝置十分普及，加上各處理器設計、生產商也為其下處理器設計專用PMIC，使得多家半導體公司也有設計、生產PMIC，以下是部份廠商：

  - [英特爾Intel](https://zh.wikipedia.org/wiki/英特爾 "wikilink")

  - [高通Qualcomm](../Page/高通.md "wikilink")

  - [聯發科技MediaTek](../Page/聯發科技.md "wikilink")

  - [安森美](../Page/安森美.md "wikilink")(ON Semiconductor)

  - [飛思卡爾Freescale](https://zh.wikipedia.org/wiki/飛思卡爾 "wikilink")

  - [美信集成產品Maxim](https://zh.wikipedia.org/wiki/美信集成產品 "wikilink")

  -
## 參見

  - [PMU](https://zh.wikipedia.org/wiki/PMU "wikilink")
  - [開關電源](https://zh.wikipedia.org/wiki/開關電源 "wikilink")
  - [充電器](../Page/充電器.md "wikilink")

[Category:集成電路](https://zh.wikipedia.org/wiki/Category:集成電路 "wikilink")
[Category:類比IC](https://zh.wikipedia.org/wiki/Category:類比IC "wikilink")