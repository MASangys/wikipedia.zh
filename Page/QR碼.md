[QRcode_image.svg](https://zh.wikipedia.org/wiki/File:QRcode_image.svg "fig:QRcode_image.svg")
**QR圖碼**（全稱為**快速響應矩陣圖碼**；）是[二維條碼的一種](https://zh.wikipedia.org/wiki/二維條碼 "wikilink")，於1994年由[日本](../Page/日本.md "wikilink")[DENSO
WAVE公司](../Page/電裝.md "wikilink")[發明](https://zh.wikipedia.org/wiki/發明 "wikilink")。QR來自英文的縮寫，即快速反應，因為發明者希望QR碼可以快速解碼其內容\[1\]。QR碼使用四種標準化編碼模式（數字、字母數字、字節（二進制）和漢字）來存儲數據。QR碼常見於[日本](../Page/日本.md "wikilink")，為目前日本最通用的二維空間條碼，在世界各國廣泛運用於[手機讀碼操作](https://zh.wikipedia.org/wiki/手機 "wikilink")，而[中國也普遍使用](../Page/中國.md "wikilink")\[2\]。QR碼比普通[一維條碼具有快速讀取和更大的儲存資料容量](https://zh.wikipedia.org/wiki/一維條碼 "wikilink")，也無需要像一維條碼般在掃描時需要直線對準掃描器。因此其應用範圍已經擴展到包括產品跟踪，物品識別，文檔管理，庫存營銷等方面。

## 格式

QR碼呈[正方形](../Page/正方形.md "wikilink")，常见的是黑白兩色。在3個角落，印有較小，像「回」字的正方圖案。這3個是幫助解碼軟件定位的圖案，使用者不需要對準，無論以任何角度掃描，資料仍然可以正確被讀取\[3\]。

日本QR碼的標準[JIS](https://zh.wikipedia.org/wiki/JIS "wikilink") X
0510在1999年1月發佈，而其對應的[ISO國際標準ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/IEC18004，則在2000年6月獲得批准。根據Denso
Wave公司的網站資料，QR碼是屬於開放式的標準，QR碼的規格公開，雖由Denso Wave公司持有的專利權益，但不會被執行。

除了標準的QR碼之外，也存在一種稱為「微型QR碼」的格式，是QR碼標準的縮小版本，主要是為了無法處理較大型掃描的應用而設計。微型QR碼同樣有多種標準，最高可儲存35個字元。

## 技术特性

### 结构

\-{zh-hans:[QR_Code_Structure_Example_3_zh-hans.svg](https://zh.wikipedia.org/wiki/File:QR_Code_Structure_Example_3_zh-hans.svg "fig:QR_Code_Structure_Example_3_zh-hans.svg");
zh-hant:[QR_Code_Structure_Example_3_zh-hant.svg](https://zh.wikipedia.org/wiki/File:QR_Code_Structure_Example_3_zh-hant.svg "fig:QR_Code_Structure_Example_3_zh-hant.svg");}-
QR码最大特征为其左上，右上，左下三个大型的如同“回”字的黑白间同心方图案，为QR码识别定位标记，失去其中一个会影响识别。而呈棋盘般分布的有别与大定位标记的较小的同心方则为其校正标记，用于校正识别，版本1没有校正标记，版本2在右下方，其中心点在左下和右上定位标记的外边框的相交点，版本10开始以每个等距的方式出现在右下校正点至左下和右上定位标记的外边框的连线、左上与左下定位标记的外边框的连线、左上与右上定位标记的外边框的连线之间、这四边线上等距点对边相连线，版本10等距有1个，版本25为3个，版本40为5个。

### 加密

日本[法务省入国管理局在护照入境许可證上使用加密的QR碼](https://zh.wikipedia.org/wiki/法务省 "wikilink")。

## 儲存

QR碼一共提供40種不同版本儲存密度的結構，對應指示圖的“版本信息”，版本1為21×21模块（模块为QR码中的最小单元），每增加一个版本，长宽各增加4个模块，最大的版本40为177×177模块。

| QR碼最大資料容量（对于版本40）                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------------- |
| [數字](../Page/數字.md "wikilink")                                                                                               |
| [字母](../Page/字母.md "wikilink")                                                                                               |
| [二進位數](https://zh.wikipedia.org/wiki/二進位數 "wikilink")（8 bit）                                                                 |
| 日文[漢字](https://zh.wikipedia.org/wiki/漢字 "wikilink")／[片假名](../Page/片假名.md "wikilink")                                         |
| 中文[漢字](https://zh.wikipedia.org/wiki/漢字 "wikilink")                                                                          |
| 最多1,800字元（採用[BIG5](https://zh.wikipedia.org/wiki/BIG5 "wikilink")/[GB2312](https://zh.wikipedia.org/wiki/GB2312 "wikilink")） |

### 容错能力

QR码有容錯能力，QR碼圖形如果有破損，仍然可以被機器讀取內容，最高可以到30%面積破損仍可被讀取。所以QR码可以被廣泛使用在運輸外箱上。

相對而言，容錯率愈高，QR码圖形面積愈大。所以一般折衷使用15%容錯能力。

| 錯誤修正容量 |
| ------ |
| L等級    |
| M等級    |
| Q等級    |
| H等級    |

### 编码

1\. 格式信息

QR碼的格式信息記錄了兩種數據：糾錯等級和掩碼的類型。掩碼的作用是為了對數據區域進行掩模以利於掃瞄器識別，可以避免數據區域出現連續的空白或者連續的黑色區，同時也避免了數據區出現類似定位點樣式的正方形出現。掩模圖案在整個數據區域的網格內不斷重複進行掩模計算（功能圖形不進行掩模），數據區上對應掩模黑色模塊的單元將會反轉。每個二維碼上會有兩組相同的格式信息出現，並且帶有有BCH糾錯。

<File:QR> Format Information.svg|格式信息说明

### 解码

## 應用

QR碼最早在汽車製造廠為了便於追蹤零件而使用，今日QR碼已廣泛使用在各行各業的存貨管理。使用者亦可透過設有[RS-232C界面的](https://zh.wikipedia.org/wiki/RS-232 "wikilink")[個人電腦及解碼程式](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")，連接[掃描器或](https://zh.wikipedia.org/wiki/掃描器 "wikilink")[攝影機取得QR碼中的資料](../Page/攝影機.md "wikilink")，十分適合[存貨管理等企業應用](../Page/存貨管理.md "wikilink")。

### 日本

近年來，日本的行動電話公司開始在有[相機的](https://zh.wikipedia.org/wiki/相機 "wikilink")[行動電話加入QR碼讀取](https://zh.wikipedia.org/wiki/行動電話 "wikilink")[軟件](https://zh.wikipedia.org/wiki/軟件 "wikilink")，為QR碼帶來更廣泛、更新穎的消費者相關用途。主要能讓使用者減少在手機上輸入文字等資料的麻煩。最早設有QR碼閱讀功能的行動電話是「J-PHONE」（今[SoftBank](https://zh.wikipedia.org/wiki/SoftBank "wikilink")）的「J-SH09」。

使用QR碼來儲存商店地址及[網址](https://zh.wikipedia.org/wiki/網址 "wikilink")，在日本的[雜誌及](https://zh.wikipedia.org/wiki/雜誌 "wikilink")[廣告上越來越流行](../Page/廣告.md "wikilink")。而在[名片上加入QR碼亦逐漸成為趨勢](../Page/名片.md "wikilink")，
這讓將對方個人資料輸入手機的工作變得更簡單。除個人聯絡資料外，使用相機手機掃瞄車站海報、商店型錄等地方上的QR條碼之後，就能立即連至條碼所在的產品[網頁](../Page/網頁.md "wikilink")，並了解訂購與該人物的資訊，或藉由撥打電話號碼來讓使用者取得該商品的優惠。而大型的日本網站如[Yahoo\!等也有應用QR碼](https://zh.wikipedia.org/wiki/Yahoo! "wikilink")，為消費者提供網址及優惠等資訊。

在公共事務上，QR碼也有很多應用機會：例如日本出入境管理已採用列印QR碼標籤貼在入境人員護照上，替代以往只是蓋印入境章。在日本許多[公共汽車站牌都已增加上QR碼](../Page/公共汽車.md "wikilink")，乘客只需用手機閱讀解碼，就可以及時獲得該站牌的路線與班車時刻資訊。

### 臺灣

在台灣，[中華電信是最早應用QR碼作為介面的電信公司之一](https://zh.wikipedia.org/wiki/中華電信 "wikilink")。其emome
636影城通服務也是一種利用手機直接訂購電影票，並以MMS簡訊傳送附有QR碼的訂位記錄給訂購者。訂票人只需在開場前至櫃臺出示手機中的QR碼，即可確認訂位記錄。因此又稱作「[行動條碼](https://zh.wikipedia.org/wiki/行動電話 "wikilink")」。

中華民國行政院[農委會推廣生產履歷](https://zh.wikipedia.org/wiki/行政院農業委員會 "wikilink")\[4\]的機制，民眾可藉由生鮮產品上面所附有的QR碼E標誌，用自己的照相手機一照，再藉由手機內建的QR碼解碼功能，便能看到生鮮產品的生產資訊。

[台灣高鐵在](../Page/台灣高鐵.md "wikilink")2010年2月時所推出的高鐵超商取票服務，於付款完成後所取得的高鐵車票在票面上印有QR碼，在搭乘高鐵列車時可直接持該車票，將印有QR碼的一面朝下對準高鐵各車站驗票閘門的條碼掃描區，利用感應方式即可通過閘門。2011年10月28日起，以智慧型手機購票後下載條碼，開啟後即可以手機畫面感應通關，免持紙票使得購票與搭車流程更為流暢。

### 中國大陸

[Z80-Tianjin_-Beijing.jpg](https://zh.wikipedia.org/wiki/File:Z80-Tianjin_-Beijing.jpg "fig:Z80-Tianjin_-Beijing.jpg")
[中華人民共和國](https://zh.wikipedia.org/wiki/中華人民共和國 "wikilink")[鐵道部于](https://zh.wikipedia.org/wiki/中華人民共和國鐵道部 "wikilink")2009年12月10日開始改版鐵路車票，
新版車票采用QR碼作為防偽措施，取代以前的一維條碼\[5\]。

[浙江省](../Page/浙江省.md "wikilink")[杭州市](../Page/杭州市.md "wikilink")、[四川省](../Page/四川省.md "wikilink")[成都市及](../Page/成都市.md "wikilink")[河北省](../Page/河北省.md "wikilink")[石家庄市等地區的公交业者](../Page/石家庄市.md "wikilink")，在站台和车上，使用QR码提供给市民公交的线路信息。

2012年春节期间，中国的一家线上支付平台[支付宝实现了透過QR码进行银行卡转账和送红包的功能](../Page/支付宝.md "wikilink")，允许用户在支付宝平台在线生产、制作“电子红包”QR码，其包含了转账金额、收款人和祝福语等訊息，并透過互联网发送至收款人，收款人使用相关设备扫描QR码后，账款就可以成功地转入其银行账户中\[6\]。

2016年开始，QR码被共享单车广泛使用。用户只需要用手机扫描共享单车上的QR码即可开锁使用单车。微信钱包和支付宝的移动应用也可以通过给商户展示QR码或者扫描商户的QR码来完成电子钱包支付。接受移动应用APP支付的商户包含沿街售卖的小商贩、出租车一类的个体经营者。QR码成为推广中国大陆数字支付的重要环节之一。

### 香港

2007年，香港的行動電話公司也開始開始利用QR碼，[PCCW
mobile](https://zh.wikipedia.org/wiki/PCCW_mobile "wikilink")\[7\]首個一站式手機購票服務
-「流動戲票」。只須以手機登入購票，便可以收到「流動戲票」[MMS短訊](https://zh.wikipedia.org/wiki/MMS "wikilink")，內附有QR碼，在進電影院前把行動電話放於QR碼掃描器上，便可進場。此外，現時香港亦有首本利用QR碼的雜誌，名為CPU。

## 主要應用項目

QR碼的主要應用的項目可分成四類：

1.  自動化文字傳輸：通常應用在文字的傳輸，利用快速方便的模式，讓人可以輕鬆輸入如地址、電話號碼、行事曆等，進行名片、行程資料等的快速交換。
2.  數位內容下載：通常應用在電信公司遊戲及影音的下載，在帳單中列印相關的QR碼資訊供消費者下載，消費者透過QR碼的解碼，就能輕易連線到下載的網頁，下載需要的數位內容。
3.  網址快速連結：以提供使用者進行網址快速連結、電話快速撥號等。
4.  身分鑑別與商務交易：許多公司現在正在推行QR碼防偽機制，利用商品提供的QR碼連結至交易網站，付款完成後系統發回QR碼當成購買身分鑑別，應用於購買票券、販賣機等。在消費者端，也開始有企業提供了商品品牌確認的服務，透過QR碼連結至統一驗證中心，去核對商品資料是否正確，並提供生產履歷供消費者查詢，消費者能夠更明白商品的資訊，除了能夠杜絕仿冒品，對消費者的購物更是多了一層保護。

## 讀取方式

[Taggingprozess.jpg](https://zh.wikipedia.org/wiki/File:Taggingprozess.jpg "fig:Taggingprozess.jpg")
利用30萬畫素以上的照相手機，搭配手機內的QR碼解碼軟體，對著QR碼一照，解碼軟體會自動解讀此訊息，顯示於手機螢幕上面，目前也有運用到Webcam的鏡頭來解碼。

此外，CodeTwo、QuickMark会提供[PC版的QR碼解碼軟體](../Page/个人电脑.md "wikilink")，讓沒有照相手機的使用者也能直接透過PC版QR碼解碼軟體直接截取螢幕上的QR碼得到相關資訊，使手機和PC使用者都能體驗到QR碼帶來的方便性。

## 變種

[MicroQR_Example.png](https://zh.wikipedia.org/wiki/File:MicroQR_Example.png "fig:MicroQR_Example.png")

## 與其他技術的結合

運用QR碼及GPS的手機導航技術，讓用戶簡化在手機中輸入座標的程序，只須透過QR碼照相手機一照，便可及時將地理座標儲存在手機當中。

## 轶闻

  - 2019年2月22日，中国大陆媒体《[环球网](https://zh.wikipedia.org/wiki/环球网 "wikilink")》发布新闻“日本人提出向中国收取‘二维码’使用费？中国有权说No！”\[8\]，在中国大陆网络中引发热议。但随后被网友及媒体指出这是一条假新闻\[9\]。

## 參見

  - [條碼](https://zh.wikipedia.org/wiki/條碼 "wikilink")
  - [日本手機文化](../Page/日本手機文化.md "wikilink")

## 參考資料

## 外部連結

  - [QR Code官方網站](http://www.qrcode.com/)（自动本地化）

[Category:條碼](https://zh.wikipedia.org/wiki/Category:條碼 "wikilink")
[Category:行動電話](https://zh.wikipedia.org/wiki/Category:行動電話 "wikilink")
[Category:日本發明](https://zh.wikipedia.org/wiki/Category:日本發明 "wikilink")

1.
2.
3.  根据Denso
    Wave公司的网站，为便于识别，此图案黑白部分的宽幅比率定为1︰1︰3︰1︰1。参见[QR码的成功之路](http://www.qrcode.com/zh/history/)。
4.
5.
6.
7.
8.
9.