> 本文内容由[USB Type-C](https://zh.wikipedia.org/wiki/USB Type-C)转换而来。


[LeTV_X600_USB_Type_C_port.jpg](https://zh.wikipedia.org/wiki/File:LeTV_X600_USB_Type_C_port.jpg "fig:LeTV_X600_USB_Type_C_port.jpg")

**USB Type-C**，又稱**USB-C**，是一種[通用序列匯流排](https://zh.wikipedia.org/wiki/通用序列匯流排 "wikilink")（USB）的硬體介面形式，外觀上最大特點在於其上下端完全一致，與[Micro-USB相比用戶不必再區分USB正反面](https://zh.wikipedia.org/wiki/Micro-USB "wikilink")。

USB Type-C規範1.0由[USB開發者論壇](../Page/USB開發者論壇.md "wikilink")（[USB-IF](https://zh.wikipedia.org/wiki/USB-IF "wikilink")）發布，並於2014年8月完成\[1\]。與[USB 3.1規格大致相同](../Page/USB_3.1.md "wikilink")。但USB-C只是一個接口，不一定支援USB 3.1或[Power Delivery](https://zh.wikipedia.org/wiki/Power_Delivery "wikilink")\[2\]\[3\]。自從2014年USB-C規範發佈後，許多新款的[Android](../Page/Android.md "wikilink")[行動裝置](https://zh.wikipedia.org/wiki/行動裝置 "wikilink")、[筆記型電腦](../Page/筆記型電腦.md "wikilink")、[桌上型電腦](../Page/桌上型電腦.md "wikilink")甚至是[遊戲機等](https://zh.wikipedia.org/wiki/遊戲機 "wikilink")3C裝置開始使用這種連接埠。[Windows 10原生支援Type](../Page/Windows_10.md "wikilink")-C。

## 簡介

[USB-C.png](https://zh.wikipedia.org/wiki/File:USB-C.png "fig:USB-C.png") USB-C介面尺寸為8.3×2.5毫米，小於當前PC的USB介面，但略大於許多手機採用的尺寸6.85×1.8毫米的micro-USB介面。至於電力傳輸規格，線材標準為直流電5[V](../Page/伏特.md "wikilink")、5[A](../Page/安培.md "wikilink")，而連接器為3A。Type-C由於不相容現有的任何類型，因此需要額外設計轉接設備。全球首套USB 3.1主控端與裝置端原型，則由[祥碩科技於](https://zh.wikipedia.org/wiki/祥碩科技 "wikilink")2014年的USB-IF年會中發表，但因速度僅較[USB 3.0快一倍](../Page/USB_3.0.md "wikilink")（理論值，實際上不到一倍），因此眾多大廠仍以主流規格USB 3.0為主及設備端廠商也極少願意跟進投入開發對應的USB3.1產品。\[4\]

USB 3.0 Promoter Group主席Brad Saunders在接受採訪時表示：「雖然USB技術在設備連接和設備充電中是最受歡迎的，但是我們仍然意識到我們需要開發一個新的接頭來滿足不斷發展的設計趨勢，比如設備尺寸和可用性的進步。新的USB-C接頭將迎合市場的需求並為未來的USB版本奠定一個基礎。」

## 引腳

有24個引腳，兩邊各12個。

| 針                                              | 名               | 描述                                                                      | 針   | 名               | 描述                       |
| ---------------------------------------------- | --------------- | ----------------------------------------------------------------------- | --- | --------------- | ------------------------ |
| A1                                             | GND             | 接地                                                                      | B12 | GND             | 接地                       |
| A2                                             | SSTXp1          | SuperSpeed[差分信號](https://zh.wikipedia.org/wiki/差分信號 "wikilink")\#1，TX，正 | B11 | SSRXp1          | SuperSpeed差分信號\#1，RX，正   |
| A3                                             | SSTXn1          | SuperSpeed差分信號\#1，TX，負                                                  | B10 | SSRXn1          | SuperSpeed差分信號\#1，RX，負   |
| A4                                             | V<sub>BUS</sub> | 總線電源                                                                    | B9  | V<sub>BUS</sub> | 總線電源                     |
| A5                                             | CC1             | Configuration channel                                                   | B8  | SBU2            | Sideband use (SBU)       |
| A6                                             | Dp1             | USB 2.0差分信號，position 1，正                                                | B7  | Dn2             | USB 2.0差分信號，position 2，負 |
| A7                                             | Dn1             | USB 2.0差分信號，position 1，負                                                | B6  | Dp2             | USB 2.0差分信號，position 2，正 |
| A8                                             | SBU1            | Sideband use (SBU)                                                      | B5  | CC2             | Configuration channel    |
| A9                                             | V<sub>BUS</sub> | 總線電源                                                                    | B4  | V<sub>BUS</sub> | 總線電源                     |
| A10                                            | SSRXn2          | SuperSpeed差分信號\#2，RX，負                                                  | B3  | SSTXn2          | SuperSpeed差分信號\#2，TX，負   |
| A11                                            | SSRXp2          | SuperSpeed差分信號\#2，RX，正                                                  | B2  | SSTXp2          | SuperSpeed差分信號\#2，TX，正   |
| A12                                            | GND             | 接地                                                                      | B1  | GND             | 接地                       |
| *USB 2.0差分信號只會連接其中一邊。因USB Type-c Plug 無B6、B7。* |                 |                                                                         |     |                 |                          |

[USB_Type-C_Receptacle_Pinout.svg](https://zh.wikipedia.org/wiki/File:USB_Type-C_Receptacle_Pinout.svg "fig:USB_Type-C_Receptacle_Pinout.svg") [Usb-type-c-plug-pinout.svg](https://zh.wikipedia.org/wiki/File:Usb-type-c-plug-pinout.svg "fig:Usb-type-c-plug-pinout.svg")

## 其他特性

USB-C的其他特性如下：

  - 正確插入後發出聲音。
  - 通過USB [Power Delivery](https://zh.wikipedia.org/wiki/Power_Delivery "wikilink")\[5\]技術，可用於3C產品（如[筆記型電腦](../Page/筆記型電腦.md "wikilink")、[智能手機](https://zh.wikipedia.org/wiki/智能手機 "wikilink")）的充電。
  - 增進的[電磁干擾](https://zh.wikipedia.org/wiki/電磁干擾 "wikilink")（EMI） 與射頻干擾（RFI mitigation）特性。
  - 支持1萬次[拔插](https://zh.wikipedia.org/wiki/熱插拔 "wikilink")。
  - 可整合[DisplayPort](../Page/DisplayPort.md "wikilink")\[6\]，可外接高畫質螢幕與音質喇叭。
  - 某些品牌Type-C接口整合了[Thunderbolt](../Page/Thunderbolt.md "wikilink") 3。

## 支援產品

从2015年起，有许多支持USB-C的电子产品面世，USB-C接口开始普及，例如[Nexus 5X](../Page/Nexus_5X.md "wikilink")、[Nexus 6P及](../Page/Nexus_6P.md "wikilink")[任天堂Switch](../Page/任天堂Switch.md "wikilink")等，現時大部分[Android](../Page/Android.md "wikilink")電子產品都使用USB-C接口。在2017年推出的中階手機也開始使用Type-C，例子有[三星Galaxy C7 Pro](../Page/三星Galaxy_C7_Pro.md "wikilink")、[Sony Xperia XA1 Ultra](../Page/Sony_Xperia_XA1_Ultra.md "wikilink")。[蘋果公司在](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")2015年起於[MacBook](../Page/MacBook.md "wikilink")改用USB C，2018年11月7日推出的[iPad Pro亦改用USB](https://zh.wikipedia.org/wiki/iPad_Pro "wikilink") C接口。

  - 第一款引入USB-C的產品是[NOKIA於](https://zh.wikipedia.org/wiki/NOKIA "wikilink")2014年出產的[NOKIA N1平板電腦](https://zh.wikipedia.org/wiki/NOKIA_N1 "wikilink")，传输速率仍相当于[USB 2.0](https://zh.wikipedia.org/wiki/USB_2.0 "wikilink")。
  - 第二款引入USB-C的产品是[谷歌于](https://zh.wikipedia.org/wiki/谷歌 "wikilink")2015年出产的[Chromebook](../Page/Chromebook.md "wikilink") Pixel，但同时保留了传统接口。
  - 第三款引入USB-C的產品是[蘋果公司於](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")2015年出產的[全新MacBook](https://zh.wikipedia.org/wiki/全新MacBook "wikilink")。（由於最高速度只有5Gbps，所以檔案傳輸速度比舊款[Mac的](https://zh.wikipedia.org/wiki/Mac "wikilink")[Thunderbolt](../Page/Thunderbolt.md "wikilink")介面慢。）
  - 第四批引入USB 3.1 的產品為[主機板](https://zh.wikipedia.org/wiki/主機板 "wikilink")，2015年[華碩](../Page/華碩.md "wikilink")、[技嘉](https://zh.wikipedia.org/wiki/技嘉 "wikilink")、[微星](https://zh.wikipedia.org/wiki/微星 "wikilink")、[華擎主機板開始使用USB](../Page/華擎科技.md "wikilink")3.1接口，大部分保留3.0和2.0。
  - 第五批引入USB-C接口的产品是乐视在2015年4月15日推出的乐1手机。
  - 第六批引入USB-C接口的产品是一加（OnePlus）在2015年7月28日推出的[OnePlus 2手机](../Page/一加手機2.md "wikilink")。

## 參考資料

[Category:USB](https://zh.wikipedia.org/wiki/Category:USB "wikilink") [Category:連接器](https://zh.wikipedia.org/wiki/Category:連接器 "wikilink")

1.
2.
3.
4.
5.  <https://zh.wikipedia.org/wiki/Power_Delivery>
6.  <http://www.pcworld.com/article/2686892/reversible-usb-type-c-wonder-cable-will-deliver-displayport-audio-and-video-too.html>