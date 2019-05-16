****是的[開放](https://zh.wikipedia.org/wiki/開放源碼 "wikilink")[原始碼開發版本](https://zh.wikipedia.org/wiki/原始碼 "wikilink")\[1\]。自2009年11月19日開始，以為名陸續發佈其開發原始碼，並在遵守著[BSD授權條款不斷有新版本釋出](https://zh.wikipedia.org/wiki/BSD授權條款 "wikilink")\[2\]\[3\]，並試圖能夠提供絕大多數長時間瀏覽[全球資訊網的用戶一個快速](https://zh.wikipedia.org/wiki/全球資訊網 "wikilink")、方便且[安全的作業系統](https://zh.wikipedia.org/wiki/計算機安全 "wikilink")\[4\]。

歷史上曾經整體是建立在以[Linux核心為主的](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")版本上\[5\]\[6\]，而作業系統的的[軟體包管理系統則是使用官方](https://zh.wikipedia.org/wiki/軟體包管理系統 "wikilink")[Linux發行版](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")的。因此，也有人曾經認為是混合了以及兩個著名版本的作業系統編製而成的，但是現在實際上已經與
Ubuntu 無關，只是單純利用了 的 -{Portage}- 而獨立編譯出來的特製化 -{Linux}- 作業系統，而這個系統本身也與
-{Gentoo Linux}- 無關。

其實在之前，的工程師已經為了某些型號的[小筆電發展出](https://zh.wikipedia.org/wiki/小筆電 "wikilink")，且不斷對其進行更新研發。所以作為開放原始碼版本的，雖然也作為研發計畫的項目之一，但它所針對的客戶群不再是最終的一般用戶，而是保留給一般開發族群，以因應他們自己的需求來加以開發設計。也因此，一些版本可能比原本版本更能夠得到更多一般用戶的廣泛支持；但相對的，具有自動更新功能的則能讓系統更加穩定便利。此外，用戶得先安裝有其預設主要程式，再與[網際網路相連來得到其他相應的服務](https://zh.wikipedia.org/wiki/網際網路 "wikilink")；相對的，允許用戶自由下載自己喜歡版本的原始碼，安裝於自己的電腦中使用\[7\]\[8\]。

## 使用者介面

Chromium OS整體設計如同負責處理網頁的[Google
Chrome一般](../Page/Google_Chrome.md "wikilink")，可以在過去的網頁分頁中執行應用程式。螢幕左上角處提供應用程式的列表分頁，其上會提供包括[Gmail](../Page/Gmail.md "wikilink")、[Google
Apps與](https://zh.wikipedia.org/wiki/Google_Apps "wikilink")[YouTube等Google網路服務的應用程式](../Page/YouTube.md "wikilink")，以及[Facebook和](../Page/Facebook.md "wikilink")[Twitter等瀏覽的輔助程式](../Page/Twitter.md "wikilink")；與過去其他版本的作業系統相比，這功能取代了傳統的應用程式列表。而在右上角處，Chromium
OS也提供了計算機、時鐘、電量顯示器和網路狀態等工具選單。在通訊軟體的支援上，Chromium
OS已經能夠接受[Yahoo\!奇摩即時通以及](https://zh.wikipedia.org/wiki/Yahoo!奇摩即時通 "wikilink")[Windows
Live
Messenger的服務](../Page/Windows_Live_Messenger.md "wikilink")。而當使用者按下功能鍵的F12鍵，便可以如使用瀏覽器一般於多個視窗頁面之間切換；而如果按下功能鍵F8搭配鍵盤上的[快捷鍵時](https://zh.wikipedia.org/wiki/快捷鍵 "wikilink")，Chromium
OS會優先執行快捷鍵的內容並將剛剛執行的功能先擱置；此外Chromium OS也有如Google
Chrome[網頁瀏覽器一般的記憶體管理功能以及](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")[命令列介面設計](https://zh.wikipedia.org/wiki/命令列介面 "wikilink")，令包括一些工作的執行和檔案的儲存管理等動作，都可以藉由常見的[Linux命令進行](../Page/Linux.md "wikilink")\[9\]\[10\]\[11\]。

## 架構

在最初的設計[文件中](https://zh.wikipedia.org/wiki/文件 "wikilink")，[Google將整個Chromium](../Page/Google.md "wikilink")
OS應用程式分成三層架構：[韌體](../Page/韌體.md "wikilink")、[網頁瀏覽器和](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")[視窗管理員](https://zh.wikipedia.org/wiki/視窗管理員 "wikilink")，透過這些同時提供系統軟體架構和[使用者空間的服務](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")\[12\]：

  - [韌體使得Chromium](../Page/韌體.md "wikilink")
    OS即使尚未完全解析[個人電腦硬體](https://zh.wikipedia.org/wiki/個人電腦硬體 "wikilink")，也能夠快速[啟動整個作業系統](../Page/啟動程式.md "wikilink")，這讓作業系統允許使用者透過行動儲存媒體啟動。這種方式在過去並不常出現在一般[個人電腦中](../Page/電子計算機.md "wikilink")，特別是[小筆電的市場中更是一大創舉](https://zh.wikipedia.org/wiki/小筆電 "wikilink")。此外，透過韌體還有利於作業系統在每個運作過程中能夠提供有效的安全性驗證步驟，並令作業系統在恢復運作[啟動程式時能更加迅速](../Page/啟動程式.md "wikilink")\[13\]。
  - 系統軟體架構主要以[Linux核心作為其運作核心](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")，並輔有可改善啟動效能的加速軟體來讓[使用者空間的消耗空間盡量減少](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")\[14\]。此外在[守护进程方面](../Page/守护进程.md "wikilink")，Chromium
    OS透過經另行調整過的[Upstart軟體](../Page/Upstart.md "wikilink")，令作業系統得以在為使用者提供優先重要的服務同時，同步為執行失敗的程式進行修補作業。這也讓作業系統不需同步開啟所有的行程來運作，同時能先將能夠優先延遲系統的某些服務執行，讓整體作業系統的啟動速度更為迅速\[15\]。
  - [視窗管理員能同時處理多個用戶端與使用者的交流視窗](https://zh.wikipedia.org/wiki/視窗管理員 "wikilink")，其主要運作方式則與其他[X視窗系統一致](https://zh.wikipedia.org/wiki/X視窗系統 "wikilink")\[16\]。

## 著名的版本

### ChromiumOS Cherry（櫻桃）

最早被大量下載使用的Chromium
OS版本，是由就讀[英國](https://zh.wikipedia.org/wiki/英國 "wikilink")[曼徹斯特某所大學的](https://zh.wikipedia.org/wiki/曼徹斯特 "wikilink")[連姆·麥克勞林](https://zh.wikipedia.org/wiki/連姆·麥克勞林 "wikilink")（Liam
McLoughlin）所設計開發的\[17\]。17歲的他在網路上以Hexxeh為名\[18\]\[19\]，於2009年12月4日首次公布了由自己主導開發的Chromium
OS版本\[20\]</ref>，也就是ChromiumOS Cherry（櫻桃）\[21\]。最初這個版本一度被命名為「Diet
Chromium」和「ChromeOS Cherry」\[22\]\[23\]，但後來仍改命名為「ChromiumOS
Cherry」。整個版本的程式大小約有300MB，其中包括一些支援[Wi-Fi的軟體等](../Page/Wi-Fi.md "wikilink")\[24\]。

<div align="center">

<File:ChromiumOS> Cherry - login screen.png|ChromiumOS
Cherry（櫻桃）的登錄螢幕截圖。（運行在[VMware上](../Page/VMware.md "wikilink")）
<File:ChromiumOS> Cherry - logo.jpg|ChromiumOS Cherry（櫻桃）的標誌。
<File:ChromiumOS> Cherry - on web.png|2009年12月4日版本的ChromiumOS
Cherry（櫻桃）實際運作截圖。（運行在[VMware上](../Page/VMware.md "wikilink")）

</div>

### ChromiumOS Zero（零）

2009年12月9日，Hexxeh宣布繼Cherry（櫻桃）之後持續開發新版本的系統，也就是之後的ChromiumOS
Zero（零）\[25\]。此時他本人以企圖提供更好的硬體支援和系統的自動更新（這時期大多數的Chromium
OS作業系統都缺乏自動更新的功能），並將此作為下一個版本的努力目標。2010年1月10日，Zero（零）版本正式公布並開放下載。在這個版本之中，Hexxeh設法減少作業系統的大小，使得整個系統大小僅有250MB左右\[26\]，而不是如同同時期其他版本的Chromium
OS有4GB之譜\[27\]。也因此相較於其他版本Zero（零）的運作速度極為的快，甚至還能輕易下載到[Live
CD和](../Page/Live_CD.md "wikilink")[Live
USB供用戶使用](https://zh.wikipedia.org/wiki/Live_USB "wikilink")。

<div align="center">

<File:ChromiumOS> Zero - login screen.png|2009年12月9日版本的Chromium OS
Zero（零）的登錄螢幕截圖。（運行在[VMware上](../Page/VMware.md "wikilink")）
<File:ChromiumOS> Zero - menu.png|Chromium OS
Zero（零）實際運作的主選單截圖。（運行在[VMware上](../Page/VMware.md "wikilink")）
<File:ChromiumOS> Zero - on web.png|Chromium OS
Zero（零）實際運作的桌面截圖。（運行在[VMware上](../Page/VMware.md "wikilink")）

</div>

### ChromiumOS Flow（流）

2010年2月8日，Hexxeh宣布正持續開發一個新的Chromium
OS[作業系統版本](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，這個版本被定名為「ChromiumOS
Flow」，或者乾脆簡稱為「Flow（流）」。2010年2月15日，Flow（流）版本正式公布並開放下載\[28\]。這個版本提供了更好的硬體支援功能，除了支援包括[NVIDIA等高階顯卡顯示卡外](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，甚至還支援一些[網路攝影機的運作](https://zh.wikipedia.org/wiki/網路攝影機 "wikilink")，Hexxeh也提供了一個電腦硬體的列表來讓用戶了解作業系統支援哪些硬體\[29\]。在Flow（流）中，首次讓Chromium
OS能夠自動更新整個作業系統。此外還能透過預先安裝的[Adobe
Systems官方軟體](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink")[Adobe
Flash以及](../Page/Adobe_Flash.md "wikilink")[Java來支援](../Page/Java.md "wikilink")[HTML5技術的運作](../Page/HTML5.md "wikilink")，並允許使用戶自己定義系統的主選單或者是自行下載新的應用程式\[30\]，但受限於軟體使用協定的限制使得Flow（流）並無安裝[Adobe
Flash Player](../Page/Adobe_Flash_Player.md "wikilink")\[31\]。

Flow（流）也強化了作業系統與網路互動的能力，在作業系統中的我的菜單中便可自由讓使用者設定網路的連結服務，這包括有[Youtube](https://zh.wikipedia.org/wiki/Youtube "wikilink")、[Gmail](../Page/Gmail.md "wikilink")、[維基百科](https://zh.wikipedia.org/wiki/維基百科 "wikilink")、[Google
Talk](../Page/Google_Talk.md "wikilink")、[Google
Voice](../Page/Google_Voice.md "wikilink")、[Last.fm](../Page/Last.fm.md "wikilink")、[Google日曆](../Page/Google日曆.md "wikilink")、[Google文件](../Page/Google文件.md "wikilink")、[Facebook](../Page/Facebook.md "wikilink")、[Twitter](../Page/Twitter.md "wikilink")、[俄羅斯方塊和](../Page/俄羅斯方塊.md "wikilink")[西洋棋等](https://zh.wikipedia.org/wiki/西洋棋 "wikilink")\[32\]。不過也由於加入眾多功能，使得當用戶在安裝Flow（流）於LiveCD和LiveUSB時，至少得提供將近327MB的容量來安裝主程式，而且至少能提供2GB的[隨身碟容量大小才能正常運作](https://zh.wikipedia.org/wiki/隨身碟 "wikilink")\[33\]。

<div align="center">

<File:ChromiumOS> Flow - login screen.png|2010年2月15日版本的Chromium OS
Flow（流）的登錄螢幕截圖。（運行在[VMware上](../Page/VMware.md "wikilink")）
<File:ChromiumOS> Flow - menu.png|2010年3月7日版本的Chromium OS
Flow（流）實際運作的主選單截圖。（運行在[VMware上](../Page/VMware.md "wikilink")）
<File:ChromiumOS> Flow - on web.png|Chromium OS
Flow（流）瀏覽網路時的截圖。（運行在[VMware上](../Page/VMware.md "wikilink")）

</div>

### ChromiumOS Vanilla（香草）

2010年8月13日，Hexxeh發布了一個更新過的版本─「ChromiumOS
Vanilla（香草）」\[34\]。然而嚴格來說這並不能算是一個完整的版本，因為Vanilla（香草）並沒有另外添加其他的原始代碼。這個版本被認為可能是Chromium
OS官方向Hexxeh提出該次計畫，用來作為該作業系統的[市場測試版本](https://zh.wikipedia.org/wiki/軟體版本週期 "wikilink")\[35\]。在Vanilla（香草）中，使用者能夠輕易的安裝由Hexxeh所指定的硬體，而其他官方版本的軟體則時有衝突的可能。而在這版本之後，Hexxeh幾乎每天都會發布新的更新資料，並自動安裝在作業系統上。

### Chromium OS Lime（萊姆）

Hexxeh在發布ChromiumOS
Flow（流）後不斷提供更新檔更新，並於[2010年12月宣布即將推出全新的版本](../Page/2010年12月.md "wikilink")「Chromium
OS
Lime（萊姆）」，或者乾脆簡稱為「Lime（萊姆）」\[36\]。到了[2011年1月](../Page/2011年1月.md "wikilink")，Lime（萊姆）針對[Google提供給](../Page/Google.md "wikilink")[Chrome
OS的原型硬體Cr](https://zh.wikipedia.org/wiki/Google_Chrome_OS "wikilink")-48給予支援，同時發布了一個通用的[BIOS應用程序提供安裝](../Page/BIOS.md "wikilink")\[37\]。而在2011年3月13日，Hexxeh則在他自己的部落格中發布專門給予開發人員使用的虛擬架設平台程式\[38\]。

### 其他版本

Neverware公司的 *CloudReady* 是基於Chromium OS二次開發的一個產品可供免費使用。\[39\]

同样，一家名为燧炻创新的公司，想通过对Chromium OS的二次开发，推出 *FlintOS* 打造本土化的Chrome
OS系统。\[40\]

開放性源碼作業系統Linux版本的Ubuntu也有 *Chromixium OS* 這個分支。\[41\]

## 對Chromium OS的評價

Chromium
OS在一開始便是以[小筆電為主要作業平台](https://zh.wikipedia.org/wiki/小筆電 "wikilink")，但是也支援[x86的桌上型電腦使用](https://zh.wikipedia.org/wiki/x86 "wikilink")。截至[2010年5月為止](../Page/2010年5月.md "wikilink")，Chromium
OS的[原始碼已經在網路被下載超過百萬次](https://zh.wikipedia.org/wiki/原始碼 "wikilink")，這其中還包括正在開發中的作業系統。其中當前最為流行的版本便是由17歲的Hexxeh所開發的一系列作業軟體。特別的是在他所開發可由[USB隨身碟中的作業軟體中](https://zh.wikipedia.org/wiki/隨身碟 "wikilink")，已包括有大多數的作業軟體功能；有些功能甚至連[Google工程師都尚未落實引進](../Page/Google.md "wikilink")，例如支援[Java程式語言等功能](../Page/Java.md "wikilink")\[42\]\[43\]。

而[2011年5月](../Page/2011年5月.md "wikilink")，電腦公司[戴爾發布了一個全新的戴爾Inspiron](../Page/戴爾.md "wikilink")
Mini 10V小筆電；整個企劃生產案總共耗時了18個多月，同時該筆記型電腦便是以Chromium
OS作為作業系統\[44\]。雖然在硬體上仍不支援音訊設備，但是其主要特點在於能夠以USB設備執行[啟動程式](../Page/啟動程式.md "wikilink")\[45\]。有些電腦公司也開始為他們所租產的設備預先安裝有Chromium
OS，例如澳大利亞公司[Kogan
Technologies便為自家公司推出的Kogan](https://zh.wikipedia.org/wiki/Kogan_Technologies "wikilink")
Agora筆記型電腦與[Xi3模組化電腦搭載了Chromium](https://zh.wikipedia.org/wiki/Xi3 "wikilink")
OS\[46\]\[47\]\[48\]\[49\]。

雖然Google公司在Chromium OS正式發布之前，並沒想到會有如此大量的愛好者使用且改良Chromium
OS。然而許多人就像擔任Google全球產品管理部門副總裁的[桑德爾·皮蔡](https://zh.wikipedia.org/wiki/桑德爾·皮蔡 "wikilink")（Sundar
Pichai）所想的：「令我們驚訝的是許多人十分喜愛Hexxeh所開發的版本。」森達爾認為釋放了一個作業系統的[原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，將會帶來許多意想不到的發展結果，正如他所說的：「如果你決定做一個開源計畫時，你就必須要開放所有的功能。\[50\]」\[51\]

## 參見

  - [Android](../Page/Android.md "wikilink")

  - [Firefox OS](../Page/Firefox_OS.md "wikilink")

  - [Chromium](../Page/Chromium.md "wikilink")

  - [Easy Peasy](https://zh.wikipedia.org/wiki/Easy_Peasy "wikilink")

  - [Google Chrome](../Page/Google_Chrome.md "wikilink")

  - [Google Chrome
    OS](https://zh.wikipedia.org/wiki/Google_Chrome_OS "wikilink")

  -
  -
  - [Windows
    Azure](https://zh.wikipedia.org/wiki/Windows_Azure "wikilink")

## 參考

## 外部連結

  - [Chromium OS](http://www.chromium.org/chromium-os)

  - [ChromiumOS
    Flow](https://web.archive.org/web/20111105230536/http://chromeos.hexxeh.net/)

{{-}}

[Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink")
[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink")

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
21.

22.
23.

24.

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

37.

38.

39.

40.

41.

42.

43.

44.

45.
46.

47.

48.

49.

50.
51.