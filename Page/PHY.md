**PHY**（），中文可称之为**端口物理层**，是一個對[OSI模型](../Page/OSI模型.md "wikilink")[實體層的共同簡稱](../Page/實體層.md "wikilink")。

PHY連接一個[數據鏈路層的設備](../Page/數據鏈路層.md "wikilink")（[MAC](../Page/媒體存取控制.md "wikilink")）到一個物理媒介，如光纖或銅纜線。典型的PHY包括PCS（Physical
Coding Sublayer，物理編碼子層）和PMD（Physical Media
Dependent，物理介質相關子層）。PCS對被傳送和接受的資訊加碼和解碼，目的是使接收器更容易恢復信號。

## 使用範例

  - [Wi-Fi](../Page/Wi-Fi.md "wikilink")：PHY的部分包括射頻、混合信號和類比部份（通常稱為收發器）和數位基頻部分是廣泛應用於[DSP和通訊邏輯運算](../Page/DSP.md "wikilink")（包括[信道码](../Page/信道码.md "wikilink")），PHY的典型應用常被整合在[SoC的](../Page/SoC.md "wikilink")[MAC層](../Page/媒體存取控制.md "wikilink")，其他類似的無線應用在[3G](../Page/3G.md "wikilink")/[4G](../Page/4G.md "wikilink")/[LTE](../Page/LTE.md "wikilink")、[WiMAX](../Page/WiMAX.md "wikilink")、[UWB等](../Page/UWB.md "wikilink")。
  - [乙太網路](../Page/乙太網路.md "wikilink")：PHY晶片時常在乙太網路設備中見到，它的目的是被調整的鏈接的數字式通入。
  - [USB](../Page/USB.md "wikilink")：PHY晶片被整合在 主控端的USB
    控制器內或[嵌入式系統並且提供數位和模組化組件介面的橋樑](../Page/嵌入式系統.md "wikilink")。
  - [IrDA](../Page/IrDA.md "wikilink")：IrDA規格包括數據運輸的物理層的一個IrPHY規格。
  - [SATA](../Page/SATA.md "wikilink")：連續ATA控制器類似
    [VIA](../Page/VIA_Technologies.md "wikilink")6421使用的PHY。
  - [SDRAM晶片介面](../Page/SDRAM.md "wikilink")
  - [Flash memory晶片介面](../Page/Flash_memory.md "wikilink")

## 乙太網路PHY

[缩略图](https://zh.wikipedia.org/wiki/File:Elitegroup_761GX-M754_-_Realtek_RTL8201CL-5493.jpg "fig:缩略图")
**PHY**是一個操作[OSI模型](../Page/OSI模型.md "wikilink")[實體層的設備](../Page/實體層.md "wikilink")。

一個[乙太網路PHY是一個晶片](../Page/乙太網路.md "wikilink")，可以發送和接收乙太網路的[數據幀](../Page/數據幀.md "wikilink")（frame）。它通常缺乏**NIC**（網路介面控制器）晶片所提供的[Wake-on-LAN或支援Boot](../Page/Wake-on-LAN.md "wikilink")
ROM的先進功能。此外，不同於NIC，PHY沒有自己的[MAC地址](../Page/MAC地址.md "wikilink")。

一些乙太網路PHY晶片的例子是Integrated Circuit Systems
ICS1893、[瑞昱RTL](../Page/瑞昱.md "wikilink")8201和[威盛電子VIA](../Page/威盛電子.md "wikilink")6103。

常見應用的乙太網路PHY是[集线器和](../Page/集线器.md "wikilink")[交換機](../Page/網絡交換機.md "wikilink")。

## 外部連結

  - [osuosl.org - ICS1890 10Base-T/100Base-TX Integrated PHYceiver
    datasheet](http://netwinder.osuosl.org/pub/netwinder/docs/nw/PHY/1890.pdf)
  - [Intel PHY controllers
    datasheet](http://www.intel.com/content/dam/doc/brochure/ethernet-controllers-phys-brochure.pdf)

[Category:集成電路](https://zh.wikipedia.org/wiki/Category:集成電路 "wikilink")
[Category:物理層協議](https://zh.wikipedia.org/wiki/Category:物理層協議 "wikilink")