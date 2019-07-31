**WebKit**是一種用來讓[网页浏览器](../Page/网页浏览器.md "wikilink")[繪製](../Page/渲染.md "wikilink")[網頁](../Page/網頁.md "wikilink")的[排版引擎](../Page/排版引擎.md "wikilink")。它被用於[Apple](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink") [Safari](../Page/Safari.md "wikilink")。其分支[Blink](../Page/Blink.md "wikilink")被用於基於[Chromium](../Page/Chromium.md "wikilink")的網頁瀏覽器，如：[Opera與](https://zh.wikipedia.org/wiki/Opera "wikilink")[Google Chrome](../Page/Google_Chrome.md "wikilink")。

Webkit亦使用於Apple [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[BlackBerry Tablet OS](https://zh.wikipedia.org/wiki/BlackBerry_Tablet_OS "wikilink")、[Tizen](../Page/Tizen.md "wikilink")及[Amazon Kindle的預設瀏覽器](../Page/Kindle.md "wikilink")。WebKit的[C++](../Page/C++.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")提供了一系列的[Class以在視窗上顯示網頁內容](../Page/类_\(计算机科学\).md "wikilink")，並且實現了一些瀏覽器的特色，如使用者連結點擊、管理前後頁面列表及近期歷史頁面等等。

WebKit的HTML及JavaScript程式碼源自[KDE](../Page/KDE.md "wikilink")的[KHTML](../Page/KHTML.md "wikilink")及[KJS](../Page/KJS.md "wikilink")函式庫的一個分支\[1\]，現已由KDE、Apple、[Google](../Page/Google.md "wikilink")、[Nokia](https://zh.wikipedia.org/wiki/Nokia "wikilink")、[Bitstream](https://zh.wikipedia.org/wiki/Bitstream "wikilink")、[BlackBerry及Igalia等獨立開發](https://zh.wikipedia.org/wiki/BlackBerry "wikilink")\[2\]。[OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[GNU](../Page/GNU計劃.md "wikilink")/[Linux](../Page/Linux.md "wikilink")以及其他[类Unix系统](../Page/类Unix系统.md "wikilink")作業系統，皆支援這個專案\[3\]。2013年4月3日，Google宣佈它建立了WebKit中WebCore元件的分支——Blink，Blink將用於新版[Google Chrome與](../Page/Google_Chrome.md "wikilink")[Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")\[4\]\[5\]。

WebKit的[WebCore及](https://zh.wikipedia.org/wiki/#WebCore "wikilink")[JavaScriptCore元件使用](https://zh.wikipedia.org/wiki/#JavaScriptCore "wikilink")[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")，其他元件則採用[BSD许可证](../Page/BSD许可证.md "wikilink")\[6\]。

截至2013年3月7日，Webkit商标已被[苹果公司在](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[美国专利及商标局](../Page/美国专利及商标局.md "wikilink")注册为其商标。\[7\]

## 緣起

WebKit的程式碼源自1998年所開發的KDE的[HTML](../Page/HTML.md "wikilink")排版引擎KHTML及KDE的JavaScript引擎[KJS](../Page/KJS.md "wikilink")的程式碼。Apple的Don Melton於2001年6月25日開始了WebKit這個專案\[8\]，當時WebKit僅為[KHTML](../Page/KHTML.md "wikilink")及[KJS](../Page/KJS.md "wikilink")的[复刻](https://zh.wikipedia.org/wiki/復刻_\(軟體工程\) "wikilink")，Melton在電子郵件中向KDE開發者解釋\[9\]，[KHTML](../Page/KHTML.md "wikilink")及[KJS](../Page/KJS.md "wikilink")比起其他技術有著更容易開發、更輕巧（少於140000行程式碼）、更加乾淨的設計，以及更與標準相容的優勢，KHTML及KJS將會透過連接器函式庫（adapter library）的幫忙被移植到OS X，並重新命名為WebCore及JavaScriptCore\[10\]。JavaScriptCore在2002年6月，於KDE的郵件列表（mailing list）中首度發表，包含著蘋果電腦首次釋出的部分\[11\]。WebCore在2003年1月，首度發佈於[Macworld Expo中由蘋果電腦](https://zh.wikipedia.org/wiki/Macworld_Expo "wikilink")[CEO](https://zh.wikipedia.org/wiki/CEO "wikilink") [Steve Jobs發表的Safari瀏覽器](https://zh.wikipedia.org/wiki/Steve_Jobs "wikilink")。當WebCore首次使用在第一個Safari的測試版本的同時，JavaScriptCore首次並以私有framework的方式包進[Mac OS X v10.2](../Page/Mac_OS_X_v10.2.md "wikilink")，蘋果電腦將其使用在[Sherlock軟體](https://zh.wikipedia.org/wiki/Sherlock_\(軟件\) "wikilink")。[Mac OS X v10.3是第一個Apple發佈內建WebKit的作業系統](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.3 "wikilink")，儘管它已經被內建在10.2內了。

Apple表示，有些牽涉到OSX的特定功能（例如：[Objective-C](../Page/Objective-C.md "wikilink")、KWQ\[12\]及[OS X特定函式](https://zh.wikipedia.org/wiki/OS_X "wikilink")）將會在KDE的KHTML中缺席，這行為被稱為不同的發展策略\[13\]。

### 開發分裂

由於這兩個分支（KHTML及WebCore）有著不同的目的而進行開發，所以他們程式碼互相補丁（patch）的難度越來越高\[14\]。 KHTML的開發者認為，他們不喜歡接受蘋果電腦對於KHTML的改變，並宣稱兩個組織的關係有些不好（a bitter failure）\[15\]，蘋果提交他們相當大的補丁，其中包含相當大數目的改變，但是卻缺少相關文件，並且經常包含著未來的擴充，然而這些補丁對於KDE的開發者而言，要整合回KHTML是相當困難的\[16\]，此外，蘋果電腦要求開發者閱覽Apple的程式碼之前必須簽署保密條款（non-disclosure agreements），甚至還不能存取蘋果電腦的bug資料庫。

在公佈*離婚*的期間，KDE開發者Kurt Pfeifle（*pipitas*）貼出了一篇文章，宣稱KHTML開發者已經設法從WebCore移植許多（但非全部）Safari所改進的項目回KHTML，而他們一直都希望這些改進是來自於蘋果電腦。這篇文章讓Apple開始聯絡KHTML的開發者，並討論有關增進彼起關係的方法及未來的合作模式\[17\]，事實上KDE專案確實有能力合併一些項目，來改進KHTML的渲染速度以及加入一些新的功能特色，包含[Acid2](../Page/Acid2.md "wikilink")渲染測試的改進\[18\]。

自从新闻播报了fork事件之后，Apple在[CVS](https://zh.wikipedia.org/wiki/Concurrent_Versions_System "wikilink")\[19\]发布了他們自己維護的WebKit版本，在他們发布代码後，Apple及KHTML開發者已經加深了合作關係，許多KHTML的開發者也成為了WebKit [SVN代码库的審查](https://zh.wikipedia.org/wiki/SVN "wikilink")（Reviewer）及提交者（Submitter）。

WebKit工作團隊同時也逆轉許多Webkit程式碼當中，專為蘋果特定的修正，並且實現了一個平台特定的抽象層，可使渲染的程式碼於其他平台可以更順利的運作\[20\]。

在2007年7月，[Ars Technica網站發佈一篇文章](../Page/Ars_Technica.md "wikilink")，指出KDE開發團隊將從KHTML轉移到WebKit\[21\]，再經由多年的整合，KDE開發平台4.5於2010年8月釋出，它同時支援WebKit及KHTML，而KHTML的開發仍在繼續\[22\]。

### 開源

在2005年6月7日，Safari開發者[戴夫·海厄特](../Page/戴夫·海厄特.md "wikilink")（Dave Hyatt）於他的blog宣布Apple將把Webkit開源（之前僅有WebCore及JavaScriptCore開源），並且開放了WebKit的CVS程式庫以及臭蟲資料庫工具\[23\]。這項消息由蘋果電腦軟體工程的高階副總（Senior Vice President）[Bertrand Serlet於蘋果電腦](https://zh.wikipedia.org/wiki/Bertrand_Serlet "wikilink")2005年的[Worldwide Developers Conference公開](https://zh.wikipedia.org/wiki/Worldwide_Developers_Conference "wikilink")。

在2005年12月中，[可縮放向量圖形](../Page/可縮放向量圖形.md "wikilink")的支援被加入了標準版本\[24\]，在2006年1月初，這項程式碼從[CVS轉移至](https://zh.wikipedia.org/wiki/Concurrent_Versions_System "wikilink")[Subversion](../Page/Subversion.md "wikilink")。

WebKit的JavaScriptCore及WebCore元件目前以GNU較寬鬆公共許可證方式授權，而其他的WebKit元件則是以BSD授權公開。

### 更進一步發展

在2007年一開始，開發團隊開始實現[层叠样式表](../Page/层叠样式表.md "wikilink")（CSS）的擴充，包含[動畫](../Page/CSS动画.md "wikilink")、轉換（transitions）以及2D和3D的轉場（transform）\[25\]，這樣的擴充在2009年[W3C的標準中被列入草案](../Page/万维网联盟.md "wikilink")\[26\]。

在2007年11月，這項專案宣布，他們已經完成了[HTML5](../Page/HTML5.md "wikilink")媒體特色的支援，允許頁面中以原生的方式嵌入影片，並且可以被script所控制\[27\]。

在2008年6月2日，WebKit專案宣布他們重寫了JavaScriptCore，被稱為"SquirrelFish"，它是一個[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")[直譯器](../Page/直譯器.md "wikilink")（Bytecode Interpreter）\[28\]\[29\]，這項專案驗後來變成SquirrelFish Extreme（SFX），它可將JavaScript編譯為[机器语言](../Page/机器语言.md "wikilink")而不再需要直譯器，這樣的做法加速了JavaScript的執行\[30\]，這項專案於2008年9月18日發布。一開始，SFX僅支援[x86架構](https://zh.wikipedia.org/wiki/x86 "wikilink")，於2009年1月底，SFX於OSX支援了[x86-64架構](https://zh.wikipedia.org/wiki/x86-64 "wikilink")，並且在該平台通過了所有的測試\[31\]。

### WebKit2

WebKit2發佈於2010年4月8日，WebKit2的目標是將元件抽象化，並提供更乾淨的網頁渲染，它會利用從周圍的界面或是應用程式的殻，建立一個環境使網頁的內容（JavaScript、HTML、排版等等）將會在另外一個进程(Process)運行，比起WebKit，這個抽象化的做法打算令WebKit2可重覆使用一個更簡單的程序。因為WebKit2對比起WebKit有*一個不相容的API*，所以導致他的名字被改變為WebKit2\[32\]。

目前WebKit2僅開放於Mac、Windows及MeeGo-Harmattan\[33\]\[34\]。

## 使用

[Usage_share_of_web_browsers_(Source_StatCounter).svg](https://zh.wikipedia.org/wiki/File:Usage_share_of_web_browsers_\(Source_StatCounter\).svg "fig:Usage_share_of_web_browsers_(Source_StatCounter).svg")根據[StatCounter](../Page/StatCounter.md "wikilink").\]\] [Web_browser_usage_on_Wikimedia.png](https://zh.wikipedia.org/wiki/File:Web_browser_usage_on_Wikimedia.png "fig:Web_browser_usage_on_Wikimedia.png") 作為渲染引擎使用的WebKit，被使用在[Safari](../Page/Safari.md "wikilink")及[Google Chrome瀏覽器於](../Page/Google_Chrome.md "wikilink")[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[iOS及](https://zh.wikipedia.org/wiki/iOS "wikilink")[Android](../Page/Android.md "wikilink")平台（然而，Chrome僅僅使用WebCore，而JavaScript引擎及多工系統則自行開發）\[35\]。其他的在OS X底下的應用程式也使用WebKit，例如Apple的e-mail用戶端軟體[Mail以及微軟的](https://zh.wikipedia.org/wiki/郵件_\(Mac_OS_X\) "wikilink")[个人信息管理系统](../Page/个人信息管理系统.md "wikilink")[Microsoft Entourage](../Page/Microsoft_Entourage.md "wikilink") 2008，皆使用WebKit來渲染HTML內容的e-mail訊息。

[Opera软件公司於](https://zh.wikipedia.org/wiki/Opera软件公司 "wikilink")2013年初宣布，他們將停止他們自行開發的[Presto](../Page/Presto.md "wikilink")排版引擎，由Webkit專案取代，在未來將會以Webkit來取代，並貢獻給Webkit專案\[36\]。

### 內建平台

新的網頁瀏覽器已經內建了WebKit，例如[Symbian手機的](https://zh.wikipedia.org/wiki/Symbian "wikilink")[S60瀏覽器](https://zh.wikipedia.org/wiki/S60 "wikilink")\[37\]、[BlackBerry瀏覽器](../Page/BlackBerry_OS.md "wikilink")（ver 6.0+）、[Midori](../Page/Midori.md "wikilink")、[Chrome瀏覽器](../Page/Google_Chrome.md "wikilink")\[38\]\[39\]、[Android](../Page/Android.md "wikilink")網頁瀏覽器、[PlayStation_3_系统软件](https://zh.wikipedia.org/wiki/PlayStation_3_系统软件 "wikilink")4.0以上所使用的瀏覽器\[40\]、KDE的[Rekonq](../Page/Rekonq.md "wikilink")瀏覽器以及[Plasma Workspaces都使用WebKit作為原生的網頁渲染引擎](https://zh.wikipedia.org/wiki/Plasma_Workspaces "wikilink")。WebKit已經被[OmniWeb](../Page/OmniWeb.md "wikilink")、[iCab及Web](https://zh.wikipedia.org/wiki/iCab "wikilink")（前面所說的Epiphany）採用，並取代原有的渲染引擎，[Sleipnir](../Page/Sleipnir.md "wikilink")於2012年開始在他們的瀏覽器開發WebKit，並於2012年5月17日進入第三個Alpha階段\[41\]。Epiphany同時支援[Gecko](../Page/Gecko.md "wikilink")及WebKit，但他們的團隊描述Gecko的發佈週期及未來的開發計劃將會令他們對於Gecko的支援太過笨重。HP的[WebOS使用WebKit作為它應用程式執行時期的基礎](https://zh.wikipedia.org/wiki/WebOS "wikilink")\[42\]。[Valve Corporation的](https://zh.wikipedia.org/wiki/维尔福 "wikilink")[Steam](../Page/Steam.md "wikilink")最新更新的界面，使用WebKit作為它界面的渲染以及內建的瀏覽器\[43\]。WebKit在[Adobe_AIR](../Page/Adobe_AIR.md "wikilink")中被使用在渲染HTML及執行JavaScript，在[Adobe Creative Suite](../Page/Adobe_Creative_Suite.md "wikilink") CS5，WebKit用來渲染部分元件的使用界面。

截至2010年上半年，分析估計內建WebKit瀏覽器的行動裝置已經達到3億5千萬\[44\]，，WebKit的市場份額已經達到36%，同等於Internet Explorer所使用的Trident/MSHTML引擎的市場份額\[45\]，如果這個成長持續下去，使用WebKit的總和（Chrome、Safari以及智慧型手機/平板）於2012年底將會超過50%，而WebKit將會是市場的領導者\[46\]。

### 移植

在Hyatt發佈WebKit開源之後的那一周，Nokia宣布他們將移植WebKit到[Symbian作業系統](https://zh.wikipedia.org/wiki/Symbian "wikilink")，並為S60開發一個基於WebKit的行動裝置瀏覽器，現在已經被命名為[Web Browser for S60](https://zh.wikipedia.org/wiki/Web_Browser_for_S60 "wikilink")，它被使用在Nokia、Samsung、LG及其他使用Symbian S60的行動電話。Apple也已經移植WebKit到[iOS並將其運行於](https://zh.wikipedia.org/wiki/iOS "wikilink")[iPhone](https://zh.wikipedia.org/wiki/iPhone "wikilink")、[iPod Touch及](https://zh.wikipedia.org/wiki/iPod_Touch "wikilink")[iPad](https://zh.wikipedia.org/wiki/iPad "wikilink")，它被使用在這些裝置的網頁瀏覽器及電子郵件軟體。\[47\][Android](../Page/Android.md "wikilink")行動電話平台也使用WebKit作為它網頁瀏覽器的基礎\[48\]，而於2009年1月發佈的[Palm Pre使用WebKit作為它的界面](../Page/Palm_Pre.md "wikilink")\[49\]。[Amazon Kindle](https://zh.wikipedia.org/wiki/Amazon_Kindle "wikilink") 3包含著一個以WebKit打造實驗性質的瀏覽器\[50\]。

在2007年6月，Apple宣布WebKit已經被移植到[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")，並作為Safari的一部分，還有一些正在進行中的項目，將WebKit移植到開源的作業系統[Syllable](https://zh.wikipedia.org/wiki/Syllable_\(operating_system\) "wikilink")\[51\]、[Haiku](https://zh.wikipedia.org/wiki/Haiku_\(operating_system\) "wikilink")\[52\]以及[AROS Research Operating System](https://zh.wikipedia.org/wiki/AROS_Research_Operating_System "wikilink")（AROS）.\[53\]。

WebKit也被移植到許多Toolkits使其支援多平台，例如[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink") toolkit\[54\]\[55\]、[Qt](https://zh.wikipedia.org/wiki/Qt_\(framework\) "wikilink") framework,\[56\]、[Adobe AIR](../Page/Adobe_AIR.md "wikilink")、[Enlightenment Foundation Libraries](https://zh.wikipedia.org/wiki/Enlightenment_Foundation_Libraries "wikilink") (EFL)以及[Clutter](https://zh.wikipedia.org/wiki/Clutter_\(toolkit\) "wikilink") toolkit\[57\]。[Qt Software](https://zh.wikipedia.org/wiki/Qt_Software "wikilink")（[Digia](../Page/Digia.md "wikilink")所擁有）於Qt 4.4包含Qt port，Qt port的WebKit也可使用在[Konqueror](../Page/Konqueror.md "wikilink") 4.1版本之後\[58\]。在Qt底下的[Iris Browser也使用WebKit](https://zh.wikipedia.org/wiki/Iris_Browser "wikilink")。The Enlightenment Foundation Libraries (EFL)的移植還在進行（經由[Samsung及ProFUSION](https://zh.wikipedia.org/wiki/Samsung "wikilink")\[59\]），他們將專注在嵌入式及行動系統，並將其作為一個獨立運行的瀏覽器、Widgets/Gadgets、文件閱讀及修改軟體。[Clutter的移植是由](https://zh.wikipedia.org/wiki/Clutter_\(toolkit\) "wikilink")[Collabora](../Page/Collabora.md "wikilink")所開放，由[Bosch所贊助](https://zh.wikipedia.org/wiki/Robert_Bosch_GmbH "wikilink")。

還有一個專案與WebKit同步（由Pleyo所贊助）\[60\]，被稱之為*[Origyn Web Browser](https://zh.wikipedia.org/wiki/Origyn_Web_Browser "wikilink")*，他提供了一個多元的移植方式，將其移植到抽象的平台，目的是讓移植到嵌入式或是輕量系統可以更快速簡單\[61\]。這個移植被使用在嵌入式裝置，例如[set-top boxes](https://zh.wikipedia.org/wiki/set-top_boxes "wikilink")、PMP，而他已經被移植到[AmigaOS](../Page/AmigaOS.md "wikilink")\[62\]\[63\]、[AROS](https://zh.wikipedia.org/wiki/AROS "wikilink")\[64\]及[MorphOS](https://zh.wikipedia.org/wiki/MorphOS "wikilink")，MorphOS 1.7是第一個支援[HTML5](../Page/HTML5.md "wikilink")媒體標籤的[Origyn Web Browser](https://zh.wikipedia.org/wiki/Origyn_Web_Browser "wikilink") (OWB)\[65\]\[66\]。

### 分支

在2013年4月3日，Google宣布他將自行開發WebCore的分支，也就是[Blink](../Page/Blink.md "wikilink")引擎。Chrome的開發者由於希望在瀏覽器的開發上擁有更大的自由度，同時避免與上游衝突，更可透過移除Chrome沒有使用的元件而簡化自己的程式庫，所以決定開發WebKit的分支版本。同時[Opera软件在同年稍早也宣布](https://zh.wikipedia.org/wiki/Opera软件 "wikilink")，他們將自有引擎轉換到Chromium的程式庫，在此時也同時轉換到Blink的分支\[67\]。根據這份聲明，WebKit的開發者開始討論移除Chrome相關程式碼的可能性，以精簡整個WebKit程式庫\[68\]。

## 元件

### WebCore

WebCore是一個由WebKit專案所開發的佈局（Layout）、渲染（Rendering）及HTML和[SVG的](https://zh.wikipedia.org/wiki/SVG "wikilink")[DOM函式庫](../Page/文档对象模型.md "wikilink")，完整的程式碼皆由[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")所授權，WebKit框架包裝了WebCore及JavaScriptCore，並提供一個Objective-C[应用程序接口](../Page/应用程序接口.md "wikilink")來接介由C++所開發的WebCore渲染引擎及JavaScriptCore腳本引擎，透過[Cocoa API就可以在應用程式中很簡單的使用這些元件](https://zh.wikipedia.org/wiki/Cocoa_API "wikilink")。之後的版本同時包含了一個[跨平台的C](https://zh.wikipedia.org/wiki/跨平台 "wikilink")++抽象平台，並且提供各種API使用。

WebKit通過[Acid2](../Page/Acid2.md "wikilink")及[Acid3](../Page/Acid3.md "wikilink")的測試，包含完美像素的渲染（pixel-perfect rendering）以及沒有任何時間及不順的問題\[69\]。

### JavaScriptCore

JavaScriptCore是一個在WebKit中提供[JavaScript引擎](../Page/JavaScript引擎.md "wikilink")的框架，而且在OS X作為其他內容的腳本引擎\[70\]\[71\]。JavaScriptCore最初是為[KDE](../Page/KDE.md "wikilink")的JavaScript引擎（[KJS](../Page/KJS.md "wikilink")）函式庫及[PCRE](https://zh.wikipedia.org/wiki/PCRE "wikilink")[正则表达式](../Page/正则表达式.md "wikilink")函式庫，JavaScriptCore從KJS及PCRE復刻之後，已比原先進步了許多，有了新的特色以及極大的效能改進\[72\]。

在2008年6月2日，WebKit專案宣布，將被重寫為"SquirrelFish"，它是一個[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")[直譯器](../Page/直譯器.md "wikilink")\[73\]\[74\]，這個專案演變成SquirrelFish Extreme（簡稱為SFX，市場稱之為Nitro），首次公開於2008年9月18日，它會將Javascript編譯為原生的[机器语言](../Page/机器语言.md "wikilink")，不再需要[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")[直譯器](../Page/直譯器.md "wikilink")，同時加速了JavaScript的執行效率\[75\]。

### Drosera

Drosera是一個JavaScript[调试工具](../Page/调试工具.md "wikilink")，它被包含在每日編譯的WebKit版本內\[76\]\[77\]。它被命名為*[茅膏菜屬](https://zh.wikipedia.org/wiki/茅膏菜屬 "wikilink")*，這是一種[食虫植物](../Page/食虫植物.md "wikilink")。Drosera目前已經被Web Inspector取代了\[78\]。

## 跨平台之路

### iOS

2007年6月29日，[iPhone上市](https://zh.wikipedia.org/wiki/iPhone "wikilink")，WebKit通过[Safari](../Page/Safari.md "wikilink")浏览器进入[iOS平台](https://zh.wikipedia.org/wiki/iOS "wikilink")，而且立即成为当时[iOS平台唯一的排版引擎](https://zh.wikipedia.org/wiki/iOS "wikilink")。

[苹果公司](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")\[79\]成为了这一项目的领导者。

### Windows

2008年3月18日，Safari 3.1 for Windows转正，解决了[Windows平台下WebKit一直存在的部分兼容性问题](https://zh.wikipedia.org/wiki/Windows "wikilink")。同年9月3日推出的[Google Chrome使得这一平台进一步成熟](../Page/Google_Chrome.md "wikilink")。而在[Windows Mobile战线](../Page/Windows_Mobile.md "wikilink")，领先推出稳定版的是拓驰公司的Iris Browser。

Windows\[80\]是除Mac OS X\[81\]外另一个得到WebKit.org官方支持的版本。

### Linux

2008年10月22日投入市场的[Android](../Page/Android.md "wikilink")，其内置浏览器Google Chrome Lite代表着脱胎于Linux的Webkit内核“回归”[Linux](../Page/Linux.md "wikilink")平台。尽管WebKit的原型Khtml是由Qt写成，但Linux下当前最受瞩目的WebKit项目却是Gnome领导的WebKit/Gtk+。不过随着奇趣科技于2008年6月被Nokia收购，Qt方面\[82\]也加快了WebKit的开发进程。目前，Google Chrome，Xfce的Midori，GNOME的Epiphany、KDE的Konqueror，Arora以及QupZilla是Linux系统下最流行的Webkit内核浏览器。

### Symbian

2005年，[诺基亚公司的](https://zh.wikipedia.org/wiki/诺基亚公司 "wikilink")[S60团队成为手机端WebKit的先驱](https://zh.wikipedia.org/wiki/S60 "wikilink")，他们将WebKit框架移植到了[Symbian](https://zh.wikipedia.org/wiki/Symbian "wikilink") [S60平台](https://zh.wikipedia.org/wiki/S60 "wikilink")，作为[S60第三版的浏览器内核](https://zh.wikipedia.org/wiki/S60 "wikilink")。

## 现在使用WebKit引擎的浏览器

### 开源

  - [Midori](../Page/Midori.md "wikilink")：当前最新测试版0.1.5所用的引擎版本是WebKitGTK+ 1.1.13
  - [Epiphany](https://zh.wikipedia.org/wiki/Epiphany "wikilink")：原使用[Gecko](../Page/Gecko.md "wikilink")，2.28版開始改用WebKit
  - [Arora](../Page/Arora.md "wikilink")：当前最新版本号是0.11.0，使用QtWebKit调用Webkit核心
  - [QupZilla](https://zh.wikipedia.org/wiki/QupZilla "wikilink")：当前最新版本号是1.3.5，使用QtWebKit调用Webkit核心

### 非开源

<table>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Avant_Browser" title="wikilink">Avant Browser</a></p></td>
<td><p>当前最新正式版2018 build 1<br />
采用Trident/WebKit/Gecko三引擎。[83]</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Lunascape.md" title="wikilink">Lunascape</a></p></td>
<td><p>当前最新正式版6.15.1<br />
采用Trident/WebKit/Gecko三引擎。[84]</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Safari.md" title="wikilink">Safari</a></p></td>
<td><p>当前最新版。</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Sleipnir.md" title="wikilink">Sleipnir</a></p></td>
<td><p>当前最新正式版6.2.10<br />
采用WebKit引擎。<br />
所用的引擎版本是 Blink 537.36 (Chromium 64.0.3282.140)[85]</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/搜狗高速浏览器" title="wikilink">搜狗高速浏览器</a></p></td>
<td><p>當前最新正式版7.5.8.27113<br />
其2.0版开始采用Trident/WebKit双引擎。[86]</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/傲游浏览器.md" title="wikilink">傲游浏览器</a></p></td>
<td><p>当前最新正式版5.1.6.3000。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/QQ浏览器.md" title="wikilink">QQ浏览器</a></p></td>
<td><p>當前最新正式版9.6.11165.400<br />
<a href="../Page/腾讯.md" title="wikilink">腾讯</a>公司的浏览器产品，采用Trident/WebKit双引擎。[87]</p></td>
</tr>
</tbody>
</table>

於2013年2月13日，Opera亦宣布將轉用Webkit引擎。\[88\]\[89\]

## 参考资料

[Category:Webkit衍生軟體](https://zh.wikipedia.org/wiki/Category:Webkit衍生軟體 "wikilink") [Category:自由排版引擎](https://zh.wikipedia.org/wiki/Category:自由排版引擎 "wikilink") [Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")

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

12. KWQ（讀作「quack」）是an implementation of the subset of Qt required to make KHTML work on OS X。它is written in Objective C++。

13.

14.

15. [The bitter failure named "safari and khtml"](http://www.kdedevelopers.org/node/1002)

16. [Open-source divorce for Apple's Safari?](http://news.cnet.com/Open-source-divorce-for-Apples-Safari/2100-1032_3-5703819.html)

17. [WebCore – KHTML – Firefox: Know your facts\!](http://www.kdedevelopers.org/node/1049)

18. [Konqueror now passes Acid2](https://blogs.kde.org/node/1129)

19.

20. [Ars at WWDC: Interview with Lars Knoll, creator of KHTML](http://arstechnica.com/journals/apple.ars/2007/06/12/ars-at-wwdc-interview-with-lars-knoll-creator-of-khtml)

21.

22. [KDE Development Platform 4.5.0 gains performance, stability, new high-speed cache and support for WebKit](http://kde.org/announcements/4.5/platform.php)

23.
24. [Next Generation KDE Technologies Ported to WebCore](http://dot.kde.org/1121021917/)

25. [*CSS Transforms*](http://webkit.org/blog/130/css-transforms/)

26. [*CSS3 Animations*](http://dev.w3.org/csswg/css3-animations/)

27. [*HTML5 Media Support*](http://webkit.org/blog/140/html5-media-support/) by Antti Koivisto, *Surfin' Safari* blog, November 12, 2007

28. [Announcing SquirrelFish](http://webkit.org/blog/189/announcing-squirrelfish/)

29. [SquirrelFish project](http://trac.webkit.org/wiki/SquirrelFish)

30. [Introducing SquirrelFish Extreme](http://webkit.org/blog/214/introducing-squirrelfish-extreme/)

31.

32.

33.

34.

35.
36. [300 million users and move to WebKit](https://web.archive.org/web/20130214043259/http://my.opera.com/ODIN/blog/300-million-users-and-move-to-webkit)

37. [Nokia S60 Webkit Browser](http://opensource.nokia.com/projects/S60browser/)

38. [Google Chrome, Google’s Browser Project](http://blogoscoped.com/archive/2008-09-01-n47.html)

39. [Comic describing the Google Chrome Project](http://www.google.com/googlebooks/chrome/)

40.

41. [Epiphany Mailing list – *Announcement: The Future of Epiphany*](http://mail.gnome.org/archives/epiphany-list/2008-April/msg00000.html)

42.

43. [A Brand New Steam](http://store.steampowered.com/uiupdate/)

44.

45.

46.

47.

48. [Android Uses WebKit](http://webkit.org/blog/142/android-uses-webkit/)

49. [Palm Pre in-depth impressions, video, and huge hands-on gallery](http://www.engadget.com/2009/01/08/palm-pre-in-depth-impressions-video-and-huge-hands-on-gallery/)

50.

51. [Syllable WebKit Port, Syllable Server](http://www.osnews.com/story.php/18165/Syllable-WebKit-Port-Syllable-Server/)

52.

53. [Cow launched\! |Robert Norris’ Blog on porting WebKit to AROS](http://cataclysm.cx/2008/02/18/cow-launched/)

54. [WebKitGTK+ project website](http://webkitgtk.org/)

55. [Alp Toker – WebKit/Gtk+ is coming](http://www.atoker.com/blog/2007/06/12/webkitgtk-is-coming/)

56. [QT WebKit](http://www.qtsoftware.com/products/library/modular-class-library#info_webkit)

57. [WebKitClutter project website](http://trac.webkit.org/wiki/clutter)

58.
59.

60. [pleyo](http://www.pleyo.org)

61. [See OWB forge](http://www.sand-labs.org/owb)

62. [AmigaOS OWB official page](http://strohmayer.org/)

63.

64. [AROS OWB developer page](http://sszymczy.rootnode.net/index.php?menu=projects&submenu=owb)

65.

66.

67.

68.

69.

70.
71. [The WebKit Open Source Project – JavaScript](http://webkit.org/projects/javascript/index.html)

72.

73.
74.
75.
76. WebKit.org [Drosera](http://trac.webkit.org/projects/webkit/wiki/Drosera) wiki article

77.

78.

79. [DeadLink](http://developer.apple.com/safari/mobile.php)

80. [Deadlink](http://nightly.webkit.org/builds/trunk/win/1)

81. [Archived Nightly Builds of Trunk](http://nightly.webkit.org/builds/trunk/mac/1)

82. [Deadlink](http://labs.trolltech.com/page/Projects/Internet/WebKit)

83. [關於Avant瀏覽器](http://browser.avantforce.com/)

84. [Lunascape - simple easy to use multi-featured web browser](http://www.lunascape.tv/)

85. [Fenrir Inc. - Free Sleipnir Web browser](http://www.fenrir-inc.com/jp/sleipnir/note.html)

86. [搜狗高速浏览器首页](http://ie.sogou.com/?f=pinyingw)

87. [QQ浏览器官方网站](http://browser.qq.com)

88. [Opera網誌：每月三億用戶及轉用Webkit](https://web.archive.org/web/20130213134814/http://my.opera.com/haavard/blog/2013/02/13/webkit)，2013年2月13日

89. [Opera月活躍用戶數突破三億大關，將轉向WebKit引擎](http://chinese.engadget.com/2013/02/13/opera-300-million-webkit-switch/)，2013年2月14日