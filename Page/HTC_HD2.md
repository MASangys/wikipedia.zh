**HTC HD2** （也称为 **HTC T8585**, **HTC T9193** 和 **HTC
Leo**）\[1\]，是台湾[宏达电](https://zh.wikipedia.org/wiki/宏达电 "wikilink")[公司设计](../Page/公司.md "wikilink")、制造的[智能手机](../Page/智能手机.md "wikilink")，采用[微软](../Page/微软.md "wikilink")[Windows
Mobile](../Page/Windows_Mobile.md "wikilink") 6.5
Professional[操作系统](../Page/操作系统.md "wikilink")
，于2009年11月在欧洲发布，其他地区（包括北美）将会在2010年销售\[2\]\[3\]。

## 描述

这是首部4.3英寸触摸屏的智能手机，也是第一部基于Window
Mobile操作系统支持多点触摸的电容式手机，同时也是第二部使用[Snapdragon](https://zh.wikipedia.org/wiki/Snapdragon "wikilink")
ARM CPU（第一部是[Toshiba
TG01](https://zh.wikipedia.org/wiki/Toshiba_TG01 "wikilink")）的智能手机\[4\]\[5\]。使用HTC
Sense。因为旧的[Windows Mobile](../Page/Windows_Mobile.md "wikilink")
6.5主要使用手写笔进行输入，因此HTC也销售一种可用于HD2的手写笔，手写笔是可选的\[6\]。一些Windows
Mobile应用程序是基于手写笔进行设计的，而不是手指触摸，因此仍然需要使用手写笔才能有效的使用\[7\]。 HTC HD2
2009年發表至今，網路上一直有人將其稱為神機，那是因為 HD2
可以刷入多種手機作業系統；以致於形成了一條黃金法則，只要有新的系統版本，基本上
HD2 都能嘗到。

## 升级与修改

原本HTC有将HD2升级到[Windows Phone
7的计划](https://zh.wikipedia.org/wiki/Windows_Phone_7 "wikilink")，但由于微软的要求\[8\]，以及HD2硬件按键与WP7要求的一些出入（没有搜索键和相机快门但却在前部有五个按键），最终HD2的官方ROM停留在了Windows
Phone 6.5上。

和缩小版[HTC HD
Mini已经升级到Windows](https://zh.wikipedia.org/wiki/HTC_HD_Mini "wikilink")
Mobile的最后一个版本6.5.3不同，HD2对6.5.3和之后的测试版本支持都是社区实现的。

目前HD2上已有[Android](../Page/Android.md "wikilink")
2.2(Froyo)、2.3(Gingerbread)、4.0(ICS)、4.1(Jelly
Bean),4.2(Jellybean),5.0(Lollipop)\[9\],6.0(Marshmallow)\[10\],7.0(Nougat)\[11\],7.1(Nougat),
[Ubuntu](../Page/Ubuntu.md "wikilink")、[MeeGo](../Page/MeeGo.md "wikilink")、[Firefox
OS](../Page/Firefox_OS.md "wikilink")、[Windows
95和](../Page/Windows_95.md "wikilink")[Windows Phone
7的第三方移植](https://zh.wikipedia.org/wiki/Windows_Phone_7 "wikilink")\[12\]\[13\]\[14\]。由於移植的成熟度问题，目前只有Android和Windows
Phone 7可以较完美的執行，但这对于手机而言已经是十分强大了。

## 问题

HTC HD2 遭遇了一系列的问题\[15\]\[16\]：

  - 一些HD2手机照相存在缺陷，导致描述为“粉红色光环”的色偏出现在所有的照片上.\[17\]\[18\]HTC已经为此发布了一个补丁包，使用者可以通过USB线将手机连接到Windows电脑上进行安装，但是，无法修复出现缺陷的照片，而且，HD2的屏幕中央仍然会出现摄像头导致的粉红色光环。\[19\]\[20\]

<!-- end list -->

  - 另一个问题是与手机的发送短信程序有关，在HTC
    Sense中发送的短信会停留在发送箱而不会被传送到接收器\[21\]。HTC已经发布了一个补丁包，但很多用户还是报告说，即使是在安装完补丁后问题仍然存在\[22\]\[23\].。

<!-- end list -->

  - 作为第一部使用电容触摸屏的 Windows Mobile
    手机，用户手指很难在大屏幕上准确地点击位置，即使是在手指没有移动的情况下，手机确定的位置时常都会在两个相邻位置摆动。HTC正在解决这个问题。\[24\]\[25\]

## Magldr

**Magldr** 是一種由DFT團隊(DarkForceTeam)開發。專門為**HTC HD2**設計的前導(Bootloader)。

### 版本

目前最新版本為：Magldr1.13\[26\]

### 功能

作為**HTC
HD2**的前導系統，功能類似於電腦的[BIOS](../Page/BIOS.md "wikilink")。安裝完後開機便會進入此系統，再從此系統執行命令。其中此前導功能如下：

1.  Boot WPH：以[Windows Phone
    7系統開機](https://zh.wikipedia.org/wiki/Windows_Phone_7 "wikilink")。
2.  Boot AD
    SD：以SD卡的[Android系統開機](../Page/Android.md "wikilink")。但[Android系統的檔案必須放在SD卡的根目錄](../Page/Android.md "wikilink")。
3.  Boot AD
    NAND：以[NAND或](https://zh.wikipedia.org/wiki/NAND "wikilink")[CWM上的](https://zh.wikipedia.org/wiki/CWM "wikilink")[Android系統開機](../Page/Android.md "wikilink")。預設值就是執行這個選項。
4.  USB MassStg：將HD2當讀卡機使用。執行完成後可按Power鍵回到主選單。但1.13版本後，此項功能有問題。
5.  USB
    Flasher：刷[DAF版本的](../Page/DAF.md "wikilink")[ROM](https://zh.wikipedia.org/wiki/ROM "wikilink")，通常用來刷[CWM或](https://zh.wikipedia.org/wiki/CWM "wikilink")[Windows
    Phone 7](https://zh.wikipedia.org/wiki/Windows_Phone_7 "wikilink")。
6.  USB TTY
7.  AD
    Hardreset：把[NAND上的](https://zh.wikipedia.org/wiki/NAND "wikilink")[Android版本回復初始設定](../Page/Android.md "wikilink")。
8.  AD Recovery：開啟[CWM](https://zh.wikipedia.org/wiki/CWM "wikilink")。
9.  Tetris：[俄羅斯方塊遊戲](../Page/俄羅斯方塊.md "wikilink")，按音量鍵就會開始，下面五個按鍵分別是「左、下、右、無用、旋轉」，死掉後按Home鍵便可離開。
10. Services：設定
    1.  BootSettings：
        1.  「Boot
            source」：設定內建是用[NAND開機或](https://zh.wikipedia.org/wiki/NAND "wikilink")[SD開機](https://zh.wikipedia.org/wiki/SD "wikilink")。
        2.  「AlwaysMenu」：開機直接進入[Magldr的選單](https://zh.wikipedia.org/wiki/Magldr "wikilink")。
        3.  「AD SD
            Dir」：選擇[SD卡上](https://zh.wikipedia.org/wiki/SD "wikilink")[Android開機目錄](../Page/Android.md "wikilink")。此外，這裡會用[DOS的](../Page/DOS.md "wikilink")8.3的檔名格式，若目錄太長就會被切掉加上數字編號。
    2.  DMESG to SD
    3.  DumpUDtoSD
    4.  UseLast24NAND
    5.  ClearSD MBR
11. Reset：重新開機。
12. PowerDown：關機。

## 参见

  - [TouchFLO 3D](https://zh.wikipedia.org/wiki/TouchFLO_3D "wikilink")
  - [HTC HD7](../Page/HTC_HD7.md "wikilink")
  - [HTC Sense](../Page/HTC_Sense.md "wikilink")
  - [HTC Touch
    Family](https://zh.wikipedia.org/wiki/HTC_Touch_Family "wikilink")
  - [Information
    appliance](https://zh.wikipedia.org/wiki/Information_appliance "wikilink")
  - [Technological
    convergence](https://zh.wikipedia.org/wiki/Technological_convergence "wikilink")

## 參考資料

## 外部链接

  - [Official site
    (europe)](http://www.htc.com/europe/product/hd2/overview.html)
  - [HTC HD2 overview](http://www.htc.com/www/product/hd2/overview.html)
  - [HTC HD2 Updates](http://www.htchd2forum.com)
  - [Introduction
    video](http://www.youtube.com/watch?v=E0f54DmA4Os&fmt=22)
  - [HTC HD2
    Specifications](https://web.archive.org/web/20120522053257/http://www.hellkom.co.za/smartphones/82/HTC-HD2-Smartphone/)
  - [HTC HD2 Multitouch Proof of
    Concept](http://www.scilor.com/hd2-leo-real-multitouch.html)
  - [T-Mobile HTC HD2
    Specifications](https://web.archive.org/web/20100127110627/http://www.marytown.cn/wordpress/2010/01/25/t-mobile-htc-hd2-spec-upgrade/)

[Category:智能手機](https://zh.wikipedia.org/wiki/Category:智能手機 "wikilink")
[Category:觸控手機](https://zh.wikipedia.org/wiki/Category:觸控手機 "wikilink")
[Category:宏達電手機](https://zh.wikipedia.org/wiki/Category:宏達電手機 "wikilink")

1.  [PDAdb.net - HTC HD2
    specifications](http://www.pdadb.net/index.php?m=specs&id=1783)

2.

3.  [HTC's Peter Chou Promises an HTC HD2 to America by
    Q1 2010](http://htcpedia.com/news/htc-peter-chou-promises-htc-hd2-america-2010-q1.html)


4.  [HTC HD2
    specifications](http://www.htc.com/www/product/hd2/specification.html)


5.

6.

7.
8.

9.  <http://www.ubergizmo.com/2015/01/htc-hd2-get-android-5-0-lollipop-port/>

10. <https://www.youtube.com/watch?v=yXips3_bu2k>

11.
    Androidheadlines.com|accessdate=2016-09-19|date=2016-09-16|language=en-US}}

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

24.
25.

26. <http://forum.xda-developers.com/showthread.php?t=893618>