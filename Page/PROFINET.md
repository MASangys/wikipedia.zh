**PROFINET**是一個開放式的[工業乙太網通訊協定](https://zh.wikipedia.org/wiki/工業乙太網 "wikilink")，是由PROFIBUS
&
PROFINET國際協會所提出。PROFINET應用TCP/IP及資訊科技的相關標準，是實時的工業乙太網。自2003年起，PROFINET是IEC
61158及IEC 61784標準中的一部分。

PROFINET有模組化的結構，使用者可以依其需求選擇層疊的機能。各機能的差異是在於為了滿足高速通訊的需求，而對應資料交換種類的不同。

PROFINET可分為PROFINET CBA及PROFINET IO二種：PROFINET
CBA適合經由TCP/IP，以元件為基礎的通訊，PROFINET IO
則使用在需要實時通訊的系統。PROFINET CBA和PROFINET IO可以在一個網路中同時出現。

PROFINET
IO是為分散式週邊的[實時](https://zh.wikipedia.org/wiki/實時計算 "wikilink")（RT）及實時（IRT）通訊所設計。其名稱RT及IRT只是在說明配合PROFINET
IO通訊時的實時特性。

## 技術

為了達到上述的通訊機能，定義了以下三種的通訊協定等級。

  - [TCP/IP是針對PROFINET](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")
    CBA及工廠調試用，其反應時間約為100ms\[1\]。
  - RT（實時）通訊協定是針對PROFINET CBA及PROFINET IO的應用，其反應時間小於10ms\[2\]。
  - IRT（等時實時）通訊協定是針對驅動系統的PROFINET IO通訊，其反應時間小於1ms\[3\]。

利用以太網的分析工具可以紀錄及顯示的PROFINET通訊協定的封包，也有一些軟體可以解讀PROFINET的資料幀。

## PROFINET元件模型（PROFINET CBA）

一個PROFINET CBA系統會包括許多自動化的元件，元件可能是機械的、電子的或是IT的-{zh-hans:變量;
zh-tw:變數}-，元件可以由標準的編程工具產生。

元件可由XML格式的PROFINET元件描述（PCD）檔來說明。規劃工具載入這些描述資料，並建立不同元件之間的邏輯關係。此模式相當程度地受到[IEC
61499標準的影響](https://zh.wikipedia.org/wiki/IEC_61499 "wikilink")。

PROFINET CBA的基本概念是很多時候自動化系統都可以分為幾個小的子系統，彼此有清楚的區分。
PROFINET元件一般只由少數幾個輸入信號控制，藉由這些元件，用戶寫的程式啟動了元件中的特定機能，將輸出信號傳遞給另一個元件。其中用到的技術是製作商中立的。以元件為基礎的通訊只需要進行規劃，不需要進行編程。PROFINET
CBA的通訊（非實時通訊）適用於總線周期時間在50...100微秒的系統。

## PROFINET及外部设备（PROFINET IO）

PROFINET網路和[外部设备的通訊是藉由PROFINET](https://zh.wikipedia.org/wiki/外部设备 "wikilink")
IO來實現\[4\]\[5\]，PROFINET IO定義和現場連接的外部设备的通訊機能，其基礎是級聯性的實時概念，PROFINET
IO定義控制器（有「主站機能」的設備）和其他設備（有「從站機能」的設備）之間完整的資料交換、參數設定及診斷機能。PROFINET
IO是設計用來在以以太網連接的設備提供快速的資料傳輸，且支援生產者－消費者模型（provider-consumer
model）\[6\]。支援PROFIBUS通訊協定的設備可以無縫的和PROFINET網路連接，不需要IO[代理器](https://zh.wikipedia.org/wiki/代理器 "wikilink")（IO-Proxy）之類的設備。設備開發者可以利用市面上販售的以太網控制器來開發PROFINET
IO設備\[7\]。PROFINET IO適用在網路循環時間在數ms的系統。

PROFINET IO系統包括以下幾種設備：

  - IO控制器，控制自動化的任務工作。
  - IO設備，一般是現場設備，受IO控制器的控制及監控，一個IO設備可能包括數個模組或是子模組。
  - IO監控器是一個PC的軟體，可以設定參數及診斷個別模組的狀態\[8\]。

PROFINET IO會在IO控制器及IO設備之間建立應用關係（Application
Relation,AR），應用關係中會定義有不同的參數傳遞、週期資料交換及警告處理等特性的通訊關係（Communication
Relations,CR）\[9\]。

一個IO設備的特性會由設備製造商在GSD（General Station
Description）檔中說明，所使用的語言是GSDML（GSD標記語言），GSD檔提供PC監控軟體規劃PROFINET組態所需要的基本資料\[10\]\[11\]。

## PROFINET IO 定址

PROFINET網路中的每個模組都有以下的三個位址：

  - [MAC位址](https://zh.wikipedia.org/wiki/MAC位址 "wikilink")。
  - [IP位址](https://zh.wikipedia.org/wiki/IP位址 "wikilink")。
  - 設備名稱，是在整個網路組態中對模組定義的邏輯名稱。

由於PROFINET使用[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")，會用到MAC位址及IP位址，但若一設備更換為其他設備，其MAC地址會變動，而IP位址是動態定址下的結果，為了讓網路上的某一設備有固定的名稱，因此會使用設備名稱。

為了分配IP位址、子網路遮罩及預設閘道，定義了以下的二種方式：

  - （發現和配置協定）。

  - [DHCP](https://zh.wikipedia.org/wiki/DHCP "wikilink")（動態主機設定協定）。

## PROFINET及實時

在PROFINET IO網路中，程序資料和警告都是實時（real
time，RT）傳送。PROFINET的實時是依IEEE及IEC的定義，在一個網路週期內允許在有限的時間內處理實時的服務。實時通訊是PROFINET
IO資料交換的基礎。在處理時，實時資料的優先權比TCP(UDP)/IP資料要高。PROFINET
RT是分散式週邊實時通訊的基礎，也是PROFINET元件模型（PROFINET
CBA）的基礎。一般資料交換的總線循環時間約在數百微秒以內。

## PROFINET及等時通訊

PROFINET的等時資料交換定義在等時實時（isochronous real time，IRT）機能中。具有IRT機能的PROFINET
IO現場設備有整合在現場設備中的switch ports，可以用例如像以太網控制器ERTEC
400/200為基礎。一般資料交換的總線循環時間約從數百毫秒至數微秒。等時通訊和實時通訊的差異是前者有高度的確定性，因此總線週期的啟始時間可維持到很高的準確度，其抖動至多到1
µs (jitter)。像馬達位置控制程序的運動控制應用就會用到等時實時通訊。

## 應用行規

應用行規（profile）是特殊設備或針對特別應用而事先定義的函數及特性組態。PROFINET應用行規由PI（PROFIBUS &
PROFINET國際協會）工作小組所訂定，由PI發佈。應用行規有助於設備的開放性、互操控性及互換性，因此終端使用者可以確定不同設備商提供的類似設備會有標準化的功能及使用方式。使用者的選擇促進設備商的競爭，使得產品的機能提昇，成本下降。

PROFINET有許多的應用行規，例如針對[編碼器的應用行規](https://zh.wikipedia.org/wiki/旋轉編碼器 "wikilink")，也有針對運動控制（PROFIdrive）及[機能安全](https://zh.wikipedia.org/wiki/機能安全 "wikilink")（PROFIsafe）的應用行規。甚至針對火車也有專用的應用行規。在2009年德國的汽車製造商提出了PROFIenergy應用行規，主要在管理車輛製造時產生的能源消耗。

## 其他特點

PROFINET支持工具調用接口（Tool Calling
Interface，簡稱TCI），每一個設備製造商用任何支援TCI機能的軟件進行現場設備的參數化和診斷，無需退出程序。

鄰近識別及設備替換：所有PROFINET都會識別鄰近的設備，因此若設備故障，可以在不需額外工具及先驗知識的情形下更換設備。藉由這些資訊，可以用圖像的方式清楚的呈現系統的拓撲。

參數伺服器：個別的資料可以用製造商中性的方式（例如TCI）載入到參數伺服器中，參數伺服器也會自動將參數歸檔。當更換設備時參數伺服器也會自動重新載入相關資料。

確定性：PROFINET支援確定性的資料傳遞，可用在高準確度的控制任務中。

冗餘：PROFINET中的冗餘概念大幅提昇系統的可用性。

## 相關條目

  - [工業以太網](../Page/工業以太網.md "wikilink")
  - [PROFIBUS](https://zh.wikipedia.org/wiki/PROFIBUS "wikilink")
  - [電腦網路](https://zh.wikipedia.org/wiki/電腦網路 "wikilink")

## 參考資料

## 延伸閱讀

  - Raimond Pigan, Mark Metter: *Automating with PROFINET*, 2nd rev. and
    enl. edition. 2008, ISBN 978-3-89578-294-7

## 外部連結

  - [PROFIBUS & PROFINET International
    (PI)](https://web.archive.org/web/20060315123332/http://www.profinet.com/pi/)
  - [All Things PROFINET](http://www.allthingsprofinet.com/)

[Category:自動化](https://zh.wikipedia.org/wiki/Category:自動化 "wikilink")
[Category:生產與製造](https://zh.wikipedia.org/wiki/Category:生產與製造 "wikilink")
[Category:工業乙太網](https://zh.wikipedia.org/wiki/Category:工業乙太網 "wikilink")
[Category:工業自動化](https://zh.wikipedia.org/wiki/Category:工業自動化 "wikilink")

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