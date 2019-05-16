**DVI**的英文全名為**Digital Visual
Interface**，中文稱為**「數位視訊介面」**。是一種[視訊介面標準](https://zh.wikipedia.org/wiki/視訊 "wikilink")，設計的目的是用來傳輸未經壓縮的數位化影像。目前廣泛應用於[LCD](https://zh.wikipedia.org/wiki/LCD "wikilink")、數位[投影機等顯示設備上](https://zh.wikipedia.org/wiki/投影機 "wikilink")。此標準由顯示業界數家領導廠商所組成的[論壇](https://zh.wikipedia.org/wiki/論壇 "wikilink")：「[數位顯示工作小組](https://zh.wikipedia.org/wiki/數位顯示工作小組 "wikilink")」（Digital
Display Working
Group，DDWG）制訂。DVI介面可以傳送未[壓縮的數位視訊資料到顯示裝置](https://zh.wikipedia.org/wiki/視訊壓縮技術 "wikilink")。本規格部分相容於[HDMI標準](../Page/HDMI.md "wikilink")。

## 概要

DVI介面的協定會使得[像素的亮度與色彩訊號從訊號來源](../Page/像素.md "wikilink")（如顯示卡）以[二進位方式傳送到顯示裝置](https://zh.wikipedia.org/wiki/二進位 "wikilink")。當顯示裝置以其原生解析度被驅動時，僅需讀取DVI傳來的每個像素的數值資料並且套用到正確的位置即可。相對於[類比方式傳送的像素資料會受到鄰接像素資料以及電磁](https://zh.wikipedia.org/wiki/類比訊號 "wikilink")[雜訊以及其他的類比失真影響](../Page/雜訊.md "wikilink")，在此方法中，輸出端[暫存器中的每個像素都直接對應顯示端的每個像素](https://zh.wikipedia.org/wiki/暫存器 "wikilink")。使得畫面品質有基本的保障。

在此之前以類比方式傳送視訊資料的標準，如[VGA是為了以映像管](https://zh.wikipedia.org/wiki/VGA "wikilink")（[陰極射線管](https://zh.wikipedia.org/wiki/陰極射線管 "wikilink")）為基礎的顯示裝置而設計，傳送的單位是-{水平}-[掃瞄線](https://zh.wikipedia.org/wiki/掃瞄線 "wikilink")，因此並未使用數位化的[離散訊號](https://zh.wikipedia.org/wiki/離散訊號 "wikilink")。類比傳送的視訊訊號是以變更輸出[電壓來控制掃瞄中的](../Page/電壓.md "wikilink")[電子流束的密度](https://zh.wikipedia.org/wiki/電子 "wikilink")，並藉此來表現亮度以及彩度。

然而當[LCD等數位化的顯示裝置開始實用化之後](https://zh.wikipedia.org/wiki/LCD "wikilink")，以類比方式傳送訊號至數位顯示裝置時，該裝置必須以特定頻率將掃瞄線訊號取樣再轉換回數位格式。若取樣出現誤差就會使得畫面品質劣化，但DVI實際畫面在19吋以下與D-SUB輸出畫質並無明顯差異。且當訊號來源為[電腦時](https://zh.wikipedia.org/wiki/電腦 "wikilink")，[顯示卡將數位的畫面訊號轉換為類比輸出](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，再被LCD顯示器轉換回數位畫面的流程顯然是多餘的。因此DVI也隨著LCD顯示器成為主流而被廣泛使用。

## 技術導論

DVI的資料格式來自於[半導體廠商](https://zh.wikipedia.org/wiki/半導體 "wikilink")[Silicon
Image公司所發展的](https://zh.wikipedia.org/wiki/Silicon_Image "wikilink")**PanelLink**技術（此技術最早應用於筆記型電腦），並使用了**最小化轉移差動訊號**（Transition
Minimized Differential
Signaling，[TMDS](https://zh.wikipedia.org/wiki/TMDS "wikilink")）技術來確保高速串列資料傳送的穩定性。一個「**單鍊結**」（Single
Link）DVI通道包括了四條雙絞纜線（紅，綠，藍，時脈訊號），每個像素資料量為24位元。訊號的時序與VGA極為類似。畫面是以逐行的方式被傳送，並在每一行與每禎畫面傳送完畢後加入一個特定的空白時間（類似類比掃瞄線），並沒有將資料[封包化](https://zh.wikipedia.org/wiki/封包 "wikilink")，也不會只更新前後畫面改變的部分。每張畫面在該更新時都會被完整的重新傳送。

單鍊結DVI最大可傳送的解析度為2.6百萬像素，每秒鐘更新60次。新版的DVI規格中提供一組額外的DVI鍊結通道，當兩組鍊結一起使用時可以提供額外的傳送頻寬，稱為**雙鍊結**（Dual-link
DVI）運作模式。DVI規格中規定以165MHz的頻寬為界，當顯示模式需求低於此頻寬時應只使用單鍊結運作，以上則應自動切換為雙鍊結。另外第二組鍊結也可作為傳送超過24位元的像素色彩資料使用。

另外，DVI接頭內也如同[VGA介面一樣備有](https://zh.wikipedia.org/wiki/VGA "wikilink")[DDC](https://zh.wikipedia.org/wiki/DDC "wikilink")-2協定的腳位以便顯示卡能讀取螢幕的EDID（延伸顯示能力識別）資料，藉以幫助顯示卡決定其可能的輸出解析度。

## 接頭形式

[DVI_Connector.jpg](https://zh.wikipedia.org/wiki/File:DVI_Connector.jpg "fig:DVI_Connector.jpg")
[DVI_Connector_Types.svg](https://zh.wikipedia.org/wiki/File:DVI_Connector_Types.svg "fig:DVI_Connector_Types.svg")

DVI接頭除包含DVI標準所規定的數位訊號腳位之外也可包含傳統類比訊號（[VGA](https://zh.wikipedia.org/wiki/VGA "wikilink")）的腳位，此設計是為了維持DVI的通用性以便不同形式的螢幕可以共用同一種連接線。隨著實作功能的不同，DVI接頭被分成三種類型：

  - **DVI-D**（Digital數位訊號；single link或dual link）
  - **DVI-A**（Analog類比訊號）
  - **DVI-I**（Integrated混合式；數位及類比訊號皆可；single link或dual link）

此外，有實作出第二組DVI鍊路的接頭被稱為**DVI-DL**（dual link），以強調傳輸能力。

某些較新型的[DVD播放機](https://zh.wikipedia.org/wiki/DVD "wikilink")，[電視機](https://zh.wikipedia.org/wiki/電視機 "wikilink")（包括[HDTV](https://zh.wikipedia.org/wiki/HDTV "wikilink")）以及[投影機採用了所謂](https://zh.wikipedia.org/wiki/投影機 "wikilink")"DVI/[HDCP](../Page/HDCP.md "wikilink")"接頭，這種接頭在外型上完全與DVI相同，但是其傳送的資料有經過**HDCP**協定所加密以防止非法複製。現今裝有DVI接口顯示卡的電腦經常可利用前述顯示裝置作為大型螢幕之用，但由於2007年之前產製的顯示卡大多不支援HDCP，所以可能會受到版權保護技術的限制而無法以最高解析度播放受到HDCP保護的視訊內容。

此外，DVI-D的類比腳位故意設計得比DVI-I的同樣腳位短，以防止使用者將DVI-I公頭誤插入DVI-D的母座。

{{-}}

## 規格

### 數位訊號

  - 最小時脈頻率：25.175 MHz（640x480@60Hz），當T.M.D.S. Clock小於22.5 MHz時，DVI
    Link被識別為inactive狀態；
  - 單鏈模式最大時脈頻率：165 MHz（3.7 Gbit/s）
  - 雙鏈模式最大時脈頻率：330 MHz（Primary link：165MHz + Secondary link：165MHz）
  - 每一時脈可傳送像素數：1 pixel or 2 pixels（雙鏈模式）；1 pixel（單鏈模式）
  - 單一像素資料長度：24位元/30位元/36位元/48位元

<!-- end list -->

  - 單鏈模式解析度範例（single link）：
      - [HDTV](https://zh.wikipedia.org/wiki/HDTV "wikilink")（1920×1080）@
        60 Hz with 5% [LCD
        blanking](https://zh.wikipedia.org/wiki/LCD_blanking "wikilink")（131 MHz）
      - [UXGA](https://zh.wikipedia.org/wiki/UXGA "wikilink")（1600×1200）@
        60 Hz with [GTF
        blanking](https://zh.wikipedia.org/wiki/GTF_blanking "wikilink")（161 MHz）
      - [WUXGA](https://zh.wikipedia.org/wiki/WUXGA "wikilink")（1920×1200）@
        60 Hz（154 MHz）
      - [SXGA](https://zh.wikipedia.org/wiki/SXGA "wikilink")（1280×1024）@
        85 Hz with GTF blanking（159 MHz）
  - 雙鏈模式解析度範例（dual link）：
      - [QXGA](https://zh.wikipedia.org/wiki/QXGA "wikilink")（2048×1536）@
        75 Hz with GTF blanking（2×170 MHz）
      - [HDTV](https://zh.wikipedia.org/wiki/HDTV "wikilink")（1920×1080）@
        85 Hz with GTF blanking（2×126 MHz）
      - [WQXGA](https://zh.wikipedia.org/wiki/WQXGA "wikilink")（2560×1600）@
        60 Hz with GTF blanking (2x174 MHz)（30" LCD Dell, Apple,
        Samsung）
      - [WQUXGA](https://zh.wikipedia.org/wiki/WQUXGA "wikilink")（3840×2400）@
        33 Hz with GTF blanking (2x159 MHz)

GTF（[Generalized Timing
Formula](https://zh.wikipedia.org/wiki/Generalized_Timing_Formula "wikilink")）是一種[VESA標準](https://zh.wikipedia.org/wiki/VESA "wikilink")

### 類比訊號

  - RGB頻寬：400 MHz at -3 dB

## 轉接頭

DVI可使用便宜的被動式轉接頭轉成VGA或HDMI。被動式轉接頭是指，該轉接頭只是一組「被動的」電路，沒有「主動的」[晶片進行運算](https://zh.wikipedia.org/wiki/晶片 "wikilink")。若要把[DisplayPort轉成VGA就需要主動式轉接頭](../Page/DisplayPort.md "wikilink")。

[VGA轉接頭只可在DVI](https://zh.wikipedia.org/wiki/VGA "wikilink")-I或DVI-A上使用，不能用在DVI-D，也無法插入DVI-D。要注意，一些顯示卡提供兩個DVI-I外型的輸出端子，實際上內部線路只是一組DVI-I和一組DVI-D，VGA轉接頭必須插在真正的DVI-I上才能使用。[AMD在](https://zh.wikipedia.org/wiki/AMD "wikilink")2013年末推出的[Radeon
R9
290系列開始](../Page/AMD_Radeon_Rx_200.md "wikilink")，移除了模擬訊號輸出功能，兩個DVI都是DVI-D。用家要連接採用VGA端子的顯示屏，必須購買主動式轉接頭，除非顯示屏是使用多端子接頭（例如VGA
,
DVI-D和HDMI），顯示屏裡面有內建轉換電路，可以切換輸入訊號的種類，才可以使用DVI-D轉VGA轉接頭（以顯示屏包裝內附上的轉接頭為準，如果沒有附的話，表示不能使用這種轉接頭），但實際上接頭端仍然是數位輸入。

[HDMI轉接頭只可在DVI](../Page/HDMI.md "wikilink")-I或DVI-D上使用，不能用在DVI-A，也無法插入DVI-A。一般而言，使用轉接頭轉出來的HDMI是沒有音頻功能的，因為DVI本身只是影像端子。[ATi](https://zh.wikipedia.org/wiki/ATi "wikilink")
[Radeon HD
3000顯示卡上的DVI可轉出帶有音頻的HDMI](../Page/ATI_Radeon_HD_3000.md "wikilink")，原理是使用dual
link中未被使用的針腳提供音頻功能，但必須使用原廠印有ATi字樣的轉接頭。很多年前HDMI還未普及，所有顯示卡都沒有HDMI，現在大多顯示卡都已經直接提供HDMI輸出，不再需要HDMI轉接頭。

DVI-VGA-Adapter.jpg|VGA轉接頭 Adapter dvi hdmi S7302224 wp.jpg|HDMI轉接頭

## 參見

  - ，一種在早期[麥金塔電腦上出現](https://zh.wikipedia.org/wiki/麥金塔電腦 "wikilink")，現已被放棄的數位螢幕端子，以DVI為基礎，並附加了[USB與](../Page/USB.md "wikilink")[Firewire連接的能力](https://zh.wikipedia.org/wiki/Firewire "wikilink")。

  - [D-Sub端子](https://zh.wikipedia.org/wiki/D-Sub "wikilink")，非常普遍的電腦螢幕類比介面。

  - [HDMI](../Page/HDMI.md "wikilink")，視訊部分向前相容於DVI，並附加數位音訊傳輸能力的新型影音家電介面。

  - [統一顯示介面](https://zh.wikipedia.org/wiki/統一顯示介面 "wikilink")，一種已被放棄的數位螢幕端子，試圖統合並取代DVI與HDMI的介面標準。

  - [DisplayPort](../Page/DisplayPort.md "wikilink")，[VESA於](https://zh.wikipedia.org/wiki/VESA "wikilink")2006年初發表的另一種新型數位介面企圖取代HDMI與DVI，與目前的HDMI/DVI不相容。

  - [液晶顯示器](https://zh.wikipedia.org/wiki/液晶顯示器 "wikilink")

  - [DMS-59](https://zh.wikipedia.org/wiki/DMS-59 "wikilink")，一種可同時輸出兩組類比與兩組數位訊號的介面。

  - [LFH](https://zh.wikipedia.org/wiki/Low_Force_Helix "wikilink")，DMS-59介面之前身。

  - ，DVI普及之前曾出現於少數顯示器的另一種數位介面。目前已被放棄。

  - [MHL](https://zh.wikipedia.org/wiki/流動高清連結技術 "wikilink")，可連接移動裝置與電視，與HDMI向下相容。

## 外部連結

  - [The DVI specification at the Digital Display Working
    Group](http://www.ddwg.org/)

[Category:數碼顯示接口](https://zh.wikipedia.org/wiki/Category:數碼顯示接口 "wikilink")