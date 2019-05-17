**VPNFilter**是一種針對網路裝置（如[路由器](../Page/路由器.md "wikilink")）韌體的[惡意軟體](https://zh.wikipedia.org/wiki/惡意軟體 "wikilink")，其主要行為包括但不限於[蠕蟲感染](../Page/電腦蠕蟲.md "wikilink")、[中間人攻擊](https://zh.wikipedia.org/wiki/中間人攻擊 "wikilink")、[特洛伊木馬](https://zh.wikipedia.org/wiki/特洛伊木馬程式_\(電腦\) "wikilink")、破壞受感染的路由器韌體等。\[1\]\[2\][FBI經過調查認為是由俄羅斯駭客集團](https://zh.wikipedia.org/wiki/FBI "wikilink")製作。\[3\]\[4\]

至2018年5月，全球約50萬台網路通訊裝置的韌體遭受感染（數量仍在持續增加中\[5\]），不僅最初發現該惡意軟體的[Cisco](../Page/思科系统.md "wikilink")、[Linksys](../Page/Linksys.md "wikilink")、[Netgear等廠商的裝置受影響](https://zh.wikipedia.org/wiki/Netgear "wikilink")，[華碩](../Page/華碩.md "wikilink")、[D-Link](https://zh.wikipedia.org/wiki/D-Link "wikilink")、、[華為](https://zh.wikipedia.org/wiki/華為 "wikilink")、[中興](../Page/中兴通讯.md "wikilink")、[TP-Link](../Page/TP-Link.md "wikilink")、MikroTik、QNAP等眾多廠牌的裝置也有不同程度的感染，規模超乎對此介入調查的FBI的預期。受感染的裝置要徹底除去該惡意軟體只能重設路由器的韌體（返回出廠設定），然後立即更改裝置的預設管理密碼，單純的重新開機雖然能一定程度上遏制該惡意軟體的後續動作，但除了並不能阻止「感染復發」以外還有變成[殭屍網絡的風險](../Page/殭屍網絡.md "wikilink")。\[6\]\[7\]

## 軟體行爲動作

VPNFilter會感染多種網路路由器、[第三層交換器等網路通訊裝置](../Page/網路交換器.md "wikilink")，以及一些[網路存儲裝置](../Page/網路附加儲存.md "wikilink")\[8\]，並且該軟體還表現出對工業控制系統常見的[Modbus協定](../Page/Modbus.md "wikilink")、[SCADA系統有感染偏好](https://zh.wikipedia.org/wiki/SCADA "wikilink")，而這些協定在工廠廠房、倉儲倉庫的網路系統和控制系統中常見，在對該軟體的[反向工程中](https://zh.wikipedia.org/wiki/反向工程 "wikilink")，發現對SCADA的偏好甚至還是[寫死的](../Page/寫死.md "wikilink")。\[9\]

經過後來的版本分析顯示，最初安裝VPNFilter的蠕蟲程式僅能攻擊運行[嵌入式Linux韌體的裝置](../Page/嵌入式Linux.md "wikilink")，而且還要特定處理器平台的編譯版本，使用[x86架構的](https://zh.wikipedia.org/wiki/x86架構 "wikilink")[Linux作業系統的網路通訊裝置並未能感染](https://zh.wikipedia.org/wiki/Linux作業系統 "wikilink")，後來VPNFilter的攻擊範圍除了[ARM架構](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")、[MIPS架構的裝置以外](../Page/MIPS架構.md "wikilink")，x86架構等也未能倖免；感染的[作業系統也由Linux擴及至](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[OpenBSD等](../Page/OpenBSD.md "wikilink")[類UNIX系統](https://zh.wikipedia.org/wiki/類UNIX "wikilink")。\[10\]\[11\]\[12\]\[13\]

軟體先是依據內建的廠商型號「花名冊」來判別裝置廠牌及型號，一旦命中則使用相應廠牌裝置預設的管理員認證資訊（像是預設的路由器管理[密碼](../Page/密碼.md "wikilink")）來進入網路裝置的作業系統，一般的路由器等裝置預設便是管理員權限的使用者，因此這樣實際上已經獲得了管理員權限，不過這意味着要防範該惡意軟體的話，僅需更改裝置的預設管理密碼或其它安全認證資訊即可。\[14\]

在軟體獲得裝置的[管理員權限以後](https://zh.wikipedia.org/wiki/超級使用者 "wikilink")，便開始進行植入操作：\[15\]\[16\]

1.  第一階段，[蠕蟲感染](https://zh.wikipedia.org/wiki/蠕蟲病毒 "wikilink")，尋找[Busybox一類的工具包](https://zh.wikipedia.org/wiki/Busybox "wikilink")，獲得後利用該工具包在[crontab一類的工作排程器](https://zh.wikipedia.org/wiki/crontab "wikilink")、開機啓動管理器中加入自啓動項，令其可以定時啓動，即使是可执行文件及[腳本被移除亦可在某個時間點上重新下載可执行文件並執行隨後的感染動作](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")；
2.  第二階段，從遠端抓取惡意軟體的本體，即服务端，這是一個包含所有該軟體所有基本功能特性的[二進位可执行文件](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")，會從遠端（客户端）接收特定指令進行相應的操作，從遠端發出的命令還可以令服务端下載新增額外的可選的功能模組；
3.  第三階段，根據遠端的指令，安裝不同特定功能的模組，並執行相應的功能，不同場合安裝的模組可能會不一樣，如在工業控制裝置上會安裝Modbus、SCADA相關的組件，在需要監聽通訊內容時安裝、[Tor](../Page/Tor.md "wikilink")、ssller模組等

### 操作細節

VPNFilter在遭受感染的裝置中對該裝置所在網路位置的網路流量進行[封包分析](../Page/數據包分析器.md "wikilink")，獲取該網路下的密碼、使用者名稱、數位簽章等安全認證資訊，在某些時候還會執行數據篡改、對裝置進行其它控制操作，包括作爲往後使用這些竊取的認證資訊進行攻擊的中繼點，並隱藏這些攻擊行爲。

具體一些模組的細節，像是Tor模組可用於與遠端的加密通訊；ssller模組可用於中間人攻擊，向網路注入惡意流量負載，修改發送的流量，將[HTTPS降級爲](https://zh.wikipedia.org/wiki/HTTPS "wikilink")[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")，對[Google](../Page/Google.md "wikilink")、[Facebook](../Page/Facebook.md "wikilink")、[Twitter和](../Page/Twitter.md "wikilink")[Youtube等站的流量進行調整以便監視](https://zh.wikipedia.org/wiki/Youtube "wikilink")；\[17\]\[18\]\[19\]dstr模組會在必要時先抹掉VPNFilter的行動蹤跡，再刪除韌體內的一些必要軟體以達到破壞被感染裝置的目的。\[20\]還有其它的功能模組，不少是基於現有的惡意軟體重新編譯打包而來。

該惡意軟體還對對其進行追蹤的行爲有一定的反制措施。\[21\]而且該惡意軟體仍在持續演化中。\[22\]

## 緩解及解決

[Cisco和](https://zh.wikipedia.org/wiki/Cisco "wikilink")[Symantec針對這些受感染裝置影響](https://zh.wikipedia.org/wiki/Symantec "wikilink")，發表了使用者可操作的解決措施。

其中，根除措施是重設路由器裝置（返回出廠設定），對於小型家用級別的裝置，可使用慣常的用牙籤、針等尖銳物按壓裝置重設孔內的按鍵達到重設目的（具體視不同裝置而定）；一種是如果裝置官方有韌體更新，可按照韌體安裝說明重設韌體並重新安裝路由器的[韌體](../Page/韌體.md "wikilink")。不過無論何種方式達到了移除惡意程式的目的，原廠預設的裝置管理密碼是必須修改的，這也是防範再次感染的方法。

另一種方法是針對不能即時重設系統的臨時緩解措施，由於裝置受感染後，即便重啓裝置也只能暫時清除惡意軟體，但仍處於感染的第一階段，仍會試圖通過某個網址重新下載惡意軟體本體並繼續感染其它網路通訊裝置。\[23\]

該惡意程式也引起了美國聯邦調查局（FBI）的高度關注，在Cisco發表對VPNFliter的資訊安全報告後隨即展開了調查，不久就通過追踪在受感染裝置第一階段進行下載惡意軟體時的重新導向路徑找到一個[域名為](../Page/域名.md "wikilink")「toknowall.com」的網址來源，但網址並沒有明文顯示，而是隨機域名重新導向至此而得。\[24\]針對病毒的第一階段的感染，目前FBI一方面通過法院授權取得了對「toknowall.com」的控制權，將之重新導向至空連結（實際上是FBI的蜜罐，或是未知的行動\[25\]），以避免第二、三階段的感染（但該緩解方法非長久之計，仍有變成僵屍網路的風險）\[26\]，而另一方面試圖以[蜜罐的方式獲得更多的下載來源以追查發佈者](https://zh.wikipedia.org/wiki/蜜罐_\(電腦科學\) "wikilink")。\[27\]\[28\]\[29\]

## 受影響裝置、地區

至2018年5月24日，Cisco旗下的威脅情報組織Talos統計全球至少50萬台裝置被感染，分佈於54個國家及地區，尤其是以[烏克蘭為感染的重災區](https://zh.wikipedia.org/wiki/烏克蘭 "wikilink")。\[30\]次月的感染數量又翻了約一倍。\[31\]

以下是可能受影響的裝置清單：\[32\]\[33\]\[34\]\[35\]

華碩：

  - RT-AC66U
  - RT-N10
  - RT-N10E
  - RT-N10U
  - RT-N56U
  - RT-N66U

D-Link：

  - DES-1210-08P
  - DIR-300
  - DIR-300A
  - DSR-250N
  - DSR-500N
  - DSR-1000
  - DSR-1000N

華為：

  - HG8245

Linksys：

  - E1200
  - E2500
  - E3000
  - E3200
  - E4200
  - RV082
  - WRVS4400N

Mikrotik：

  - CCR1009
  - CCR1016
  - CCR1036
  - CCR1072
  - CRS109
  - CRS112
  - CRS125
  - RB411
  - RB450
  - RB750
  - RB911
  - RB921
  - RB941
  - RB951
  - RB952
  - RB960
  - RB962
  - RB1100
  - RB1200
  - RB2011
  - RB3011
  - RB Groove
  - RB Omnitik
  - STX5
  - Mikrotik RouterOS 6.37.5版至6.38.5版（現時最新版本）\[36\]

Netgear：

  - DG834
  - DGN1000
  - DGN2200
  - DGN3500
  - FVS318N
  - MBRN3000
  - R6400
  - R7000
  - R8000
  - WNR1000
  - WNR2000
  - WNR2200
  - WNR4000
  - WNDR3700
  - WNDR4000
  - WNDR4300
  - WNDR4300-TN
  - UTM50

QNAP：

  - TS251
  - TS439 Pro
  - Other QNAP NAS devices running QTS software

TP-Link：

  - R600VPN
  - TL-WR741ND
  - TL-WR841N

Ubiquiti：

  - NSM2
  - PBE M5

Upvel：

  - 型號未公佈\[37\]

中興：

  - ZXHN H108N

## 腳註

## 參考資料

## 外部連結

  - [VPNFilter 更新- VPNFilter 攻击终端并瞄准新设备 -
    Cisco](https://www.cisco.com/c/dam/global/zh_cn/products/security/talos/VPNFilter_Update-VPNFilter_exploits-endpoints.pdf)

[Category:惡意軟體](https://zh.wikipedia.org/wiki/Category:惡意軟體 "wikilink")
[Category:计算机病毒](https://zh.wikipedia.org/wiki/Category:计算机病毒 "wikilink")

1.

2.

3.
4.
5.

6.

7.

8.

9.  [VPNFilter: New Router Malware with Destructive
    Capabilities](https://www.symantec.com/blogs/threat-intelligence/vpnfilter-iot-malware)

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

24. [FBI to all router users: Reboot now to neuter Russia's VPNFilter
    malware](https://www.zdnet.com/article/fbi-to-all-router-users-reboot-now-to-neuter-russias-vpnfilter-malware/)

25.

26.

27.

28.

29.

30.

31.
32.
33.
34.
35.
36.

37. 在對VPNFliter的反向工程中獲得的「製造商清單」中有「Upvel」的字樣，但並未在裏面找到對應的裝置型號