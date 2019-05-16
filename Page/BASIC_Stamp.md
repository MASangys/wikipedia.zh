[PD-20060911-BASIC-Stamp-2.svg](https://zh.wikipedia.org/wiki/File:PD-20060911-BASIC-Stamp-2.svg "fig:PD-20060911-BASIC-Stamp-2.svg")

**BASIC Stamp**（有時也稱**BASIC Stamp
Module**）\[1\]是由[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[Parallax公司自](https://zh.wikipedia.org/wiki/Parallax公司 "wikilink")1992年起所提創的一種[微控制器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，此種微控制器與其他微控制器不同的地方在於：微控制器（BASIC
Stamp）中的[ROM記憶體內建了一套小型](https://zh.wikipedia.org/wiki/ROM "wikilink")、特有的[BASIC](../Page/BASIC.md "wikilink")（培基）程式語言[直譯器](../Page/直譯器.md "wikilink")，稱為：[PBASIC](https://zh.wikipedia.org/wiki/PBASIC "wikilink")。有了PBASIC後，想開發、撰寫微控器應用的設計者，只要學會、具備BASIC程式語言的撰寫能力，就能夠用其開發出嵌入式系統所用的控制應用程式，大幅降低了嵌入式設計的技能學習門檻，也因此BASIC
Stamp在電子電機的嗜好玩家群中相當普遍與受歡迎。

## 概述

就外觀來看，BASIC
Stamp如同一個以[DIP型態封裝的](../Page/雙列直插封裝.md "wikilink")[積體電路](../Page/集成电路.md "wikilink")\[2\]，不過實際上它卻是用一片小型的[印刷電路板](https://zh.wikipedia.org/wiki/印刷電路板 "wikilink")\[3\]，並在電路板上建立一個嬌小的控制系統，這個系統內包括了以下的組件：

  - 一顆[微控制器晶片](https://zh.wikipedia.org/wiki/微控制器 "wikilink")（在小型電路板中的角色為[中央处理器](../Page/中央处理器.md "wikilink")）
  - 一顆串列式傳輸介面的[EEPROM晶片](https://zh.wikipedia.org/wiki/EEPROM "wikilink")（在小型電路板中的角色為[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink")）
  - 一顆時脈產生晶片
  - 一個電源供應晶片
  - 外部輸入與輸出

在BASIC
Stamp的程式語言內已備齊了一般微控制器的功效函式，包括：[脈寬調變](https://zh.wikipedia.org/wiki/脈寬調變 "wikilink")（PWM）輸出、[I2C的串列通訊](https://zh.wikipedia.org/wiki/I2C "wikilink")、[LCD驅動等](https://zh.wikipedia.org/wiki/LCD "wikilink")，此外也能產生馬達伺服控制之用的脈波、假充（pseudo）的正弦波頻率、以及用[RC電路來偵測一個模拟數值](../Page/RC電路.md "wikilink")\[4\]等。最後，電子電機的嗜好玩家只要再接上一顆9V電壓準位輸出的電池，BASI
Stamp就正式成為一個完整可用的系統。

接著，BASIC Stamp也能與[PC連線](../Page/个人电脑.md "wikilink")，從PC端將軟體程式上載傳輸到BASIC
Stamp內，並且存放到電路板上的EEPROM中，如此即便系統斷電後程式依然能夠持留而不會消失，且日後也能反覆多次地載入新版、新修改的程式到EEPROM中。

## 版本

目前BASIC Stamp先後兩種類型的直譯器：BASIC Stamp 1與BASIC Stamp 2，其中較後期推出的BASIC Stamp
2有延伸發展出七種不同的模組：

  - BS2\[5\]
  - BS2e
  - BS2sx
  - BS2p24
  - BS2p40
  - BS2pe
  - BS2px

此外，許多公司運用虛擬性相容（virtual clone）的手法為BASIC
Stamp加添更多的功效機制與特性功能，例如更快速的控制執行、硬體式的[類比數位轉換](https://zh.wikipedia.org/wiki/類比數位轉換 "wikilink")（ADC）、硬體式的[脈寬調變輸出](https://zh.wikipedia.org/wiki/脈寬調變 "wikilink")（PWM），使ADC、PWM工作可以在背景運作，不用耗費軟體運算執行的資源心力。更重要的是，這些功能增添仍能與BASIC
Stamp在引脚配置上維持相容，這表示原有已運用BASIC Stamp來進行控制的應用不需要變更設計，也能夠享用新添功能的特性益處。
\[6\]\[7\]\[8\]

## 參考附註

<references/>

## 關連條目

  - [Boe-Bot](https://zh.wikipedia.org/wiki/Boe-Bot "wikilink")

<!-- end list -->

  -
    **說明：**由美國Parallax公司所研創的一種智能型[機器人](../Page/机器人.md "wikilink")（Robot），這個機器人是用**BASIC
    Stamp**進行控制，發創此機器人的主要用意是做為一種教學套件，教導如何運用BASIC Stamp中的函式來撰寫開發BASIC
    Stamp所用的嵌入式控制程式。除此之外也還有其他類型的機器人，如Toddler機器人、SumoBot機器人、Scribbler機器人等，且在學習之外也可做為嗜好娛樂。

<!-- end list -->

  - [PICAXE](https://zh.wikipedia.org/wiki/PICAXE "wikilink")

<!-- end list -->

  -
    **說明：**與**BASIC
    Stamp**相同，皆是嵌入式軟體開發的簡化型模組方案，提創的是一家英國公司，名字名稱與模組方案名稱相同都是PICAXE，不過之後由英國[革命教學公司](http://www.rev-ed.co.uk)（Revolution
    Education
    Ltd）所收併，如今PICAXE成為該公司旗下的產品系列名稱，但該系列產品仍擁有原公司的[網站、網址](http://www.picaxe.co.uk)。

<!-- end list -->

  - [Javelin
    Stamp](https://zh.wikipedia.org/wiki/Javelin_Stamp "wikilink")

<!-- end list -->

  -
    **說明：**與**BASIC
    Stamp**相同，皆是嵌入式軟體開發的簡化型模組方案，但程式語言部分從BASIC改成Java，也是Parallax公司所提創。

## 外部連結

  - [Parallax, Inc.](http://www.parallax.com)

<!-- end list -->

  -
    **說明：**Parallax公司的官方網站。

<!-- end list -->

  - [Parallax Forums](http://forums.parallax.com)

<!-- end list -->

  -
    **說明：**Parallax公司的討論區、論壇。

<!-- end list -->

  - [PBASIC 2.5與舊式PBASIC在控制架構上的比較](https://web.archive.org/web/20050405124150/http://www.emesystems.com/BS2pbasic25.htm)


<!-- end list -->

  -
    **說明：**2003年，作者：任職於EME Systems公司的Tracy Allen

<!-- end list -->

  - [單品評鑑：Scribbler機器人（一種用BASIC
    Stamp 2控制的可编程化、具智慧性的機器人）](http://www.andybrain.com/extras/scribbler-robot-review.htm)


<!-- end list -->

  -
    **說明：**作者：Andy Kaiser

<!-- end list -->

  - ["Il BASIC Stamp® 2 - Un microcontrollore dalle dimensioni di un
    francobollo"](http://www.parallax.com/dl/docs/article/IlBASICStamp2.pdf)


<!-- end list -->

  -
    **說明：**關於BASIC Stamp 2微控制器的簡介，作者：Giuseppe Francesco Indelli。

<!-- end list -->

  - [PlayRobot](https://web.archive.org/web/20070612181812/http://www.playrobot.com/introduce_parallax.htm)


<!-- end list -->

  -
    **說明：**台灣專業銷售Parallax相關商品網站。

[Category:微控制器](https://zh.wikipedia.org/wiki/Category:微控制器 "wikilink")

1.  **註：**Stamp具有貼片、郵票、額外附貼的薄物（不具份量的東西）等意味。
2.  **註：**縮寫、簡稱：IC，俗稱：晶片。
3.  **註：**縮寫、簡稱：PCB（Printed Circuit Board）。
4.  **註：**言下之意是運用軟體的演算法來進行類比數位的偵測、轉換程序，相對於此的是硬體式[類比數位轉換器晶片](../Page/類比數位轉換器.md "wikilink")（ADC）。
5.  **註：**BS即是BASIC Stamp的縮寫含意。
6.  **參：**主體描述參考自英文維基百科的BASIC Stamp條目。
7.  **參：**[概述段落若干參考](https://zh.wikipedia.org/wiki/#概述 "wikilink")[關於BASIC
    Stamp](http://www.parallax.com/html_pages/products/basicstamps/basic_stamps_about.asp)
     並進行再次確認比對。
8.  **參：**[版本段落若干參考](https://zh.wikipedia.org/wiki/#版本 "wikilink")[BASIC
    Stamp模組](http://www.parallax.com/html_pages/products/basicstamps/basic_stamps.asp)
     並進行再次確認比對。