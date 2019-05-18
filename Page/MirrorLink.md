**MirrorLink**
是提供[行動裝置與車用娛樂系統之間資訊交換的標準](https://zh.wikipedia.org/wiki/行動裝置 "wikilink")。MirrorLink
可以讓行動裝置成為車用娛樂系統的[應用程式](https://zh.wikipedia.org/wiki/應用程式 "wikilink")[平台](../Page/平台.md "wikilink")，可讓駕駛人與乘客透過[方向盤上的控制裝置](https://zh.wikipedia.org/wiki/方向盤 "wikilink")、[儀錶板](https://zh.wikipedia.org/wiki/儀錶板 "wikilink")[按鈕或是車用娛樂系統的](https://zh.wikipedia.org/wiki/按鈕 "wikilink")[觸控螢幕來與在行動裝置上所搭載的應用程式互動以達到不同的功能](https://zh.wikipedia.org/wiki/觸控螢幕 "wikilink")\[1\]。

MirrorLink
應用了許多成熟且非[專有的技術](https://zh.wikipedia.org/wiki/專有 "wikilink")，如：[网际协议](../Page/网际协议.md "wikilink")、[USB](../Page/USB.md "wikilink")、[Wi-Fi](../Page/Wi-Fi.md "wikilink")、[藍牙](../Page/藍牙.md "wikilink")、[RTP](https://zh.wikipedia.org/wiki/RTP "wikilink")
即時通訊協定及 [UPnP](../Page/UPnP.md "wikilink") 等\[2\]。此外 MirrorLink 還使用了
[VNC](../Page/VNC.md "wikilink")
為基本的通訊協定來在車用娛樂系統上顯示行動裝置上的應用程式畫面，並將使用者的指令輸入送回行動裝置上。

## 起源

MirrorLink 一開始只是個研究專案，一位來自
[Nokia](https://zh.wikipedia.org/wiki/Nokia "wikilink") 美國 [Palo
Alto](https://zh.wikipedia.org/wiki/Palo_Alto "wikilink") 研發中心的研究員 Jörg
Brakensiek 使用了由另一位 Nokia
德國[波鴻研究中心研究員](https://zh.wikipedia.org/wiki/波鴻 "wikilink")
Bernd Steinke 所開發的 noBounds\! 專案的數據資料，並將其應用於車用領域。

一開始的研究\[3\] 是由 Bernd Steinke 及三位學生所製作，其包含了三種針對電源效率最佳化的特製通訊協定：2D, 3D
與多媒體。使用選定的行動 Linux 設備 Nokia
[N800](https://zh.wikipedia.org/wiki/N800 "wikilink") 並透過
[X11](https://zh.wikipedia.org/wiki/X11 "wikilink") 映射的方式支援 2D 繪圖合成並加速顯示
2D 特效的示範效果來呈現出不同的使用情境。該研究使用了[OpenGL ES](../Page/OpenGL_ES.md "wikilink")
技術來達成快速 3D 繪圖功能，並使用 Porter-Duff 合成技術來顯示 2D 的透明效果。為了讓這些效果能夠在 N800
裝置上呈現而使用了 [Mesa 3D](../Page/Mesa_3D.md "wikilink")
技術\[4\] 來實作。高畫質串流多媒體則是透過
[OpenMAX](../Page/OpenMAX.md "wikilink")、[RTP等技術實作](https://zh.wikipedia.org/wiki/RTP "wikilink")\[5\]以避免將原始影片做轉檔的動作。原始的實作已可遠端顯示
Nokia
[N800的使用界面](https://zh.wikipedia.org/wiki/N800 "wikilink")、遊戲畫面及多媒體播放畫面，稍晚在
[N810](https://zh.wikipedia.org/wiki/N810 "wikilink")
上也實作成功。當時實作所達成的成果在引起了主要媒體如
[Engadget](../Page/Engadget.md "wikilink") 的大幅報導\[6\]。

同時，看到上述研究成果的車用消費性電子聯盟 Consumer Electronics for Automotive (CE4A) 成員與
Nokia 接觸並開始了兩方的合作。首次使用 Nokia N810 網路平板電腦的合作成果在 2009 年的 IEEE CCNC
大會中發表\[7\]。透過兩位 Nokia Palo Alto 研究中心研究員 Raja Bose 與 Keun-Young
Park 的努力，以及與車用消費性電子聯盟 (CE4A) 的德國汽車製造商之間的緊密合作，建立了原始的 Terminal Mode
(終端模式)概念。 Terminal Mode 是由 CE4A 聯盟內的專家集團所命名，並建立了。\[8\]

在 2009 年 9 月的法蘭克福國際汽車大展 (IAA) Nokia 與 Magneti Marelli 在 NAVTEQ
的活動中公開合作發表了第一部 Terminal Mode 概念機\[9\]。第一部與汽車的整合實作則在
2010 年 3 月於日內瓦汽車大展中展出，其使用了一台 Nokia N97 概念機來呈現 Terminal Mode 的實作，並整合在
概念車中\[10\]。0.9 版的規格草案\[11\]在 2010 年 3 月釋出\[12\]，並在 2010 年 7 月的
MobileBeat 展覽中將 Terminal Mode 整合於 VW Passat
汽車中一同展出\[13\]。第一次實際操作的展出影片\[14\]於
2010 年 9 月釋出，稍後 Terminal Mode 規格書於 2010 年 10 月 6 日正式公開。\[15\]早期採用廠商有
Continental、\[16\] Alpine\[17\] 與 Clarion\[18\]。

Nokia 與 CE4A 聯盟在 Terminal Mode 規格上的合作導致了汽車連接聯盟 (Car Connectivity
Consortium) 的誕生。汽車連接聯盟涵括了汽車產業與行動裝置產業中的主要廠商，包含大量的第一層供應商以及少數的網路供應商。在 2011
年 9 月 12 日 Terminal Mode 被改名為 **MirrorLink**，該名稱並成為汽車連接聯盟所擁有的商標。到 2012
年 5 月為止，汽車連接聯盟已經有 56 個涵括全世界汽車與行動裝置產業的成員。

## 成為全球標準

汽車連接聯盟是由多家汽車與電子產品製造商所共同參與組成，其建立了一套可確保駕駛安全與可用性之應用程式與設備的產業認證標準，即為
MirrorLink，是為了制定與汽車連接的行動設備其行為的開放標準。\[19\]

一項 MirrorLink 獨特功能是可以在車用音響的顯示畫面上顯示智慧型手機的使用畫面\[20\]。

## MirrorLink 的採用

MirrorLink 目前可相容於 Nokia
[Symbian](https://zh.wikipedia.org/wiki/Symbian "wikilink") 手機與 Sony
[Xperia](../Page/Xperia.md "wikilink") Z 系列
[Android](../Page/Android.md "wikilink") 手機\[21\]。Sony 在 2012 Q2 也釋出與
MirrorLink 相容的車用音響主機\[22\]。手機製造商
[Motorola](https://zh.wikipedia.org/wiki/Motorola "wikilink") 與汽車音響製造商
[Alpine](../Page/Alpine.md "wikilink") 也是支援 MirrorLink 規格的成員，Alpine 並從
2013 年起在美國提供支援 MirrorLink 的車用音響主機\[23\]。

## 參考來源

## 外部連結

  - [官方網站](http://www.mirrorlink.com/)

[Category:互操作性](https://zh.wikipedia.org/wiki/Category:互操作性 "wikilink")

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

12.

13.

14.

15.

16.

17.

18.

19.
20.

21. <http://esupport.sony.com/US/perl/support-info.pl?info_id=1145>

22.
23.