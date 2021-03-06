> 本文内容由[USB On-The-Go](https://zh.wikipedia.org/wiki/USB_On-The-Go)转换而来。


[USB_OTG_Logo.svg](https://zh.wikipedia.org/wiki/File:USB_OTG_Logo.svg "fig:USB_OTG_Logo.svg")

**USB On-The-Go**通常缩写為**USB OTG**，是[USB 2.0規格的補充標準](https://zh.wikipedia.org/wiki/USB_2.0 "wikilink")。它可使[USB](../Page/USB.md "wikilink")设备，例如播放器或手机，从USB周边设备变为USB主机，与其他USB设备连接通信。在正常情况下，这些支持OTG的USB设备和USB主机（如[桌上型電腦](../Page/桌上型電腦.md "wikilink")或者[手提电脑](https://zh.wikipedia.org/wiki/手提电脑 "wikilink")），仍然作为USB周边设备使用。

支持OTG的设备，如USB打印机，可以不连接电脑的情况下直接接入USB隨身碟来读取裝置内文件进行打印；或平板电脑可以直接接入USB儲存碟、键盘或鼠标来扩充外界硬件功能。

## 歷史

  - USB On-The-Go Supplement 0.7：2000年11月7日发布。
  - USB On-The-Go Supplement 1.0：2001年12月18日发布。
  - USB On-The-Go Supplement 1.0a：2003年6月24日发布。
  - USB On-The-Go Supplement 1.2：2006年4月4日发布。
  - USB On-The-Go Supplement 1.3：2006年12月5日发布。\[1\]

## 架构

標準的[USB](../Page/USB.md "wikilink")使用的架構，USB[主機端](https://zh.wikipedia.org/wiki/伺服器 "wikilink")（即電腦）是「主」，而USB[周邊裝置是](https://zh.wikipedia.org/wiki/周邊裝置 "wikilink")「從」。只有USB[伺服器可以排程該連結的設定與資料傳輸](https://zh.wikipedia.org/wiki/伺服器 "wikilink")。USB[周邊裝置不能夠自行啟動資料傳輸](https://zh.wikipedia.org/wiki/周邊裝置 "wikilink")，只能回應伺服器的指令。

USB OTG改變了這種狀況，配件不再需要一定要成為單純的周邊裝置，它們有時候也可以成為主機端。舉例來說，USB打印机与电脑连接时作为电脑的外界周边被电脑控制，与其他USB储存设备连接时作为控制主机来读取储存设备；平板电脑等手持智能终端与电脑连接时主要作为电脑的储存设备等，单独与USB储存设备或USB输入设备连接时则作为这些接入设备的主机来操控储存设备或接收输入。

不過目前支持的廠商比較少，主要是數碼伴侶支持此功能，行動電話和平板电脑在硬件情况允许并使用[Windows Mobile或](../Page/Windows_Mobile.md "wikilink")[Android](../Page/Android.md "wikilink")系統的支持此功能。現在不少播放器開始支持此功能，但大多數在主端時只支持讀取功能。

## 规格

USB OTG是原本制定於2001年底USB2.0規範，後來修訂的補充的一部分。 最新版本的補充還定義了用於嵌入式主機端從而有針對性的行為能力和使用電腦相同的USB標準A端口。

超高速OTG設備，嵌入式主機端和週邊通過USB3.0的補充USB On-The-Go與嵌入式主機端規格被支持。

## 协议

USB 2.0規範的USB OTG和嵌入式主機補充介紹了三種新的通信協議：

### 附加檢測協議（ADP）

允許OTG設備，嵌入式主機或USB設備在USB總線不通電的情況下確定連接狀態，同時啟用基於插入的行為和顯示連接狀態的功能。它通過定期測量USB端口上的電容來確定是否連接了其他設備，懸空電纜或無電纜。當檢測到足夠大的電容變化來指示設備連接時，A設備將向USB總線供電並查找設備連接。同時，B設備將生成SRP並等待USB總線上電。

### 會話請求協議（SRP）

允許通信設備控制鏈路的電源會話何時處於活動狀態; 在標準的USB中，只有主機能夠這樣做。這樣可以精確控制功耗，這對於電池供電設備（如相機和手機）非常重要。OTG或嵌入式主機可以使USB鏈路斷電，直到外設（可以是OTG或標準USB設備）需要電源。OTG和嵌入式主機通常只有很少的電池電量可供使用，因此將USB鏈路斷電會有助於延長電池運行時間。

### 主機協商協議（HNP）

允許這兩個設備交換其主機/外設角色，前提是兩個設備都是OTG雙角色設備。通過使用HNP來逆轉主機/外設角色，USB OTG設備能夠獲取對數據傳輸調度的控制。因此，任何OTG設備都能夠通過USB OTG總線啟動數據傳輸。最新版本的補充說明還介紹了HNP輪詢，其中主機設備在活動會話期間定期輪詢外設以確定它是否希望成為主機。 HNP的主要目的是容納連接了A和B設備（見下文）的用戶在錯誤的方向上執行他們想要執行的任務。例如，打印機作為A設備（主機）連接，但不能用作特定相機的主機，因為它不理解相機對打印作業的表示。當相機知道如何與打印機通話時，打印機將使用HNP切換到從屬角色，相機成為主機，因此存儲在相機中的照片可以在不重新連接電纜的情況下打印出來。新的OTG協議不能通過標準USB集線器，因為它們基於電信號通過專用線路。

所述USB OTG和嵌入式主機補編USB 3.0規範引入附加協議，角色交換協議（RSP）。通過擴展USB 3.0規範提供的標準機制，實現了與HNP（即角色交換）相同的目的。繼USB 2.0規範的USB OTG和嵌入式主機補充之後，還需要遵循USB 2.0補充規範，以保持向後兼容性。超高速外設功能的OTG設備（SS-OTG）需要支持RSP。超高速外設功能的OTG設備（SSPC-OTG）不需要支持RSP，因為它們只能作為超高速外設功能的上運行; 他們沒有超高速外設功能的主機，所以只能在USB 2.0數據速率下使用HNP進行角色交換。

## 设备角色

USB OTG為設備定義兩種角色：OTG A設備和OTG B設備，指定哪一端為鏈路供電，最初是主機。OTG A設備是電力供應商，而OTG B設備是電力消費者。在默認鏈接配置中，A設備充當USB主機，B設備充當USB外設。主機和外設模式可能會在以後使用HNP進行交換。由於每個OTG控制器都支持這兩種角色，因此它們通常被稱為**雙重角色**控制器，而不是**OTG控制器**。

對於集成電路（IC）設計人員來說，USB OTG的一個有吸引力的特性是能夠用更少的門實現更多的USB功能。

“傳統”方法包括四個控制器，從而導致更多的測試和調試門：

基於EHCI的 USB高速主機控制器（一個寄存器接口） 基於OHCI的全速/低速主機控制器（另一個寄存器接口） USB設備控制器，支持高速和全速 第四個控制器在主機和設備控制器之間切換OTG根端口 另外，大多數小工具必須是主機或設備。OTG硬件設計將所有控制器合併為一個雙角色控制器，比單個設備控制器稍微複雜一些。

## 目标外设列表

在將主機設備聚焦於特定的產品或應用程序，而不是像普通PC一樣用作通用主機。TPL指定“定位”主機支持的產品，定義需要支持的產品，包括輸出功率，傳輸速度，支持的協議和設備類別。它適用於所有目標主機，包括充當主機和嵌入式主機的OTG設備。

## 接口

[USB_2.0_connectors.svg](https://zh.wikipedia.org/wiki/File:USB_2.0_connectors.svg "fig:USB_2.0_connectors.svg")

### OTG迷你接口

最初的USB OTG標準引入了一種名為mini-AB的插座，在稍後的版本（1.4版以後）中被[micro-AB取代](../Page/USB.md "wikilink")。它可以接受mini-A插頭或mini-B插頭，而mini-A適配器可以連接到來自外圍設備的標準A USB電纜。標準OTG電纜的一端有一個mini-A插頭，另一端有一個mini-B插頭（它不能有兩個相同類型的插頭）。

插入mini-A插頭的設備成為OTG A設備，插入迷你B插頭的設備成為B設備。插入的插頭類型通過ID引腳的狀態進行檢測（mini-A插頭的ID引腳接地，而mini-B插頭懸空）。

純mini-A插座也存在，用於需要緊湊主機端口的地方，但OTG不受支持。

### OTG微型接口

隨著USB微型插頭的推出，還引入了一種名為micro-AB的新插頭插座。它可以接受一個micro-A插頭或一個micro-B插頭。Micro-A適配器允許連接到標準A插頭，如在固定或標准設備上使用的那樣。OTG產品必須有一個微型AB插座，並且不能有其他USB插座。

OTG電纜的一端有一個micro-A插頭，另一端有一個micro-B插頭（它不能有兩個相同類型的插頭）。OTG為標準USB連接器添加了第五個引腳，稱為ID引腳; micro-A插頭的ID引腳接地，而micro-B插頭的ID懸空。插入micro-A插頭的設備成為OTG A設備，插入了micro-B插頭的設備成為B設備。所插入的插頭的類型由引腳ID的狀態來檢測。

在標稱阻值124kΩ，68kΩ和36.5kΩ的情況下，相對於接地引腳定義了三個額外的ID引腳狀態。這些允許設備與USB附件充電器適配器一起工作，允許OTG設備同時連接到充電器和另一個設備。

這三種狀態用於以下情況：

一個充電器和一個沒有斷言V BUS（不提供電源）的設備或A設備都被連接。允許OTG設備充電並啟動SRP，但不能連接。 充電器和斷言V BUS（正在提供電源）的A設備已連接。允許OTG設備充電並連接，但不啟動SRP。 充電器和B設備連接在一起。OTG設備被允許充電並進入主機模式。 USB 3.0引入了micro-AB插座和micro-A和micro-B插頭的向後兼容SuperSpeed擴展。它們包含非超速微型連接器的所有引腳，並使用ID引腳標識A設備和B設備角色，並添加SuperSpeed引腳。

## OTG微电缆

當支持OTG的設備連接到PC時，它使用自己的USB-A或USB Type-C電纜（通常以現代設備的微B，USB-C或Lightning插頭結尾）。當啟用OTG的設備連接到USB從設備（如閃存驅動器）時，從設備必須以設備的適當連接結束，或者用戶必須提供以USB-A結尾的適當適配器。該適配器可將任何標準USB外設連接到OTG設備。將兩台支持OTG的設備連接在一起需要一個適配器連接從設備的USB-A電纜，或者使用適當的雙面電纜和一個軟件實施來管理它。USB Type-C設備正變得越來越普遍。

## 向下兼容性

### 充电器的兼容性

USB OTG設備向後兼容USB 2.0（適用於SuperSpeed OTG設備的USB 3.0），並且在連接到標準（非OTG）USB設備時，將作為標準USB主機或設備運行。主要的例外是OTG主機只需要為TPL上列出的產品提供足夠的電力，這些產品可能足以連接未列出的外設。有源USB集線器可能會迴避這個問題（如果支持的話），因為它會根據USB 2.0或USB 3.0規範提供自己的電源。

在OTG補充版本的1.3和2.0版本之間引入了HNP和SRP中的一些不兼容問題，這會在使用這些協議版本時導致互操作性問題。 有些设备可以通过USB端口为其电池充电；有些甚至可以检测到专用充电器，并汲取大于500mA的电流量，以帮助其更快速的充电。OTG设备也不例外\[2\]。

## 参考文献

## 外部連結

  - [USB OTG（On-The-Go）簡介](https://web.archive.org/web/20130410140447/http://www.usblab.idv.tw/usbotg.html)

  - [USB On-The-Go Basics](http://www.maxim-ic.com/appnotes.cfm?appnote_number=1822&CMP=WP-3)

  - [USB On-The-Go官方網站](https://web.archive.org/web/20120505091034/http://www.usb.org/developers/onthego/)

## 参见

  - [USB](../Page/USB.md "wikilink")

{{-}}

[de:Universal Serial Bus\#USB On-the-go](https://zh.wikipedia.org/wiki/de:Universal_Serial_Bus#USB_On-the-go "wikilink")

[Category:USB](https://zh.wikipedia.org/wiki/Category:USB "wikilink")

1.  [On-The-Go Supplement to the USB 2.0 Specification](http://www.softelectro.ru/usbotg13.pdf)
2.