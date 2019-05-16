{{ infobox programming language | logo = | logo caption = | screenshot =
| screenshot caption = | file ext = `.xul`
[互联网媒体类型](../Page/互联网媒体类型.md "wikilink")：`application/vnd.mozilla.xul+xml`
| paradigm = Declarative（[置标语言](../Page/置标语言.md "wikilink")） | scope = |
released = | designer = | developer =
[Mozilla基金會](../Page/Mozilla基金會.md "wikilink") | latest
release version = | latest release date = | latest preview version = |
latest preview date = | typing = | implementations =
[Mozilla](../Page/Mozilla.md "wikilink") | dialects = | influenced by =
[HTML](../Page/HTML.md "wikilink")、[XML](../Page/XML.md "wikilink") |
influenced = | programming language = [C++](../Page/C++.md "wikilink") |
platform = [Gecko](../Page/Gecko.md "wikilink") | operating system =
[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | license =
[Mozilla公共许可证](../Page/Mozilla公共许可证.md "wikilink") | website =  |
wikibooks = }}

****（
）是英文「****」（XML用户界面语言）的[首字母縮寫](https://zh.wikipedia.org/wiki/首字母縮寫 "wikilink")。它是為支持系列的應用程式（如[Mozilla
Firefox和](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[Mozilla
Thunderbird](../Page/Mozilla_Thunderbird.md "wikilink")）而開發的[使用者界面標示語言](https://zh.wikipedia.org/wiki/使用者界面標示語言 "wikilink")。顧名思義，它是一種應用[XML來描述](../Page/XML.md "wikilink")[使用者界面的](https://zh.wikipedia.org/wiki/人机界面 "wikilink")[標示語言](https://zh.wikipedia.org/wiki/標示語言 "wikilink")。XUL被实现为一种[XML的方言](../Page/XML.md "wikilink")。它允许以类似写[网页的方式编写](https://zh.wikipedia.org/wiki/网页 "wikilink")[图形用户界面](../Page/图形用户界面.md "wikilink")。

## 設計

XUL是一个[开放標準](https://zh.wikipedia.org/wiki/开放標準 "wikilink")，它重用了許多現有的標準和技術，包括[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[DTD和](https://zh.wikipedia.org/wiki/DTD "wikilink")[RDF等](https://zh.wikipedia.org/wiki/RDF "wikilink")。所以對於有網絡編程和設計經驗的人士來說，學習XUL比學習其他使用者界面標示語言相對簡單。

使用XUL的主要好處在於它提供了一套簡易和跨平台的Widget定義。這節省了編程人員在[開發軟件時所付出的努力](../Page/软件工程.md "wikilink")。

## XUL文件

一個XUL界面一般包含以下三個部份：

1.  *內容*：定義使用者界面的XUL檔
2.  *Skin*：定義程式外觀的CSS和圖像檔
3.  *Locale*：定義界面字串的DTD檔（為了[軟件本地化](https://zh.wikipedia.org/wiki/國際化與在地化 "wikilink")）

### XUL元素

XUL定義了一套豐富的元素。它們大致上可分為以下幾種：

  - 基層元素:
    例如[視窗](../Page/視窗.md "wikilink")、page、[對話框](https://zh.wikipedia.org/wiki/對話框 "wikilink")、[精靈](https://zh.wikipedia.org/wiki/精靈_\(軟件\) "wikilink")
    Widget:
    例如標籤、[按鈕](https://zh.wikipedia.org/wiki/按钮_\(计算机\) "wikilink")、[文字方塊](https://zh.wikipedia.org/wiki/文本框 "wikilink")、條列式選單、[下拉式方塊](https://zh.wikipedia.org/wiki/组合框 "wikilink")、[選擇鈕](https://zh.wikipedia.org/wiki/選擇鈕 "wikilink")、[核取方塊](https://zh.wikipedia.org/wiki/核取方塊 "wikilink")、[樹](https://zh.wikipedia.org/wiki/樹狀檢視 "wikilink")、[選單](https://zh.wikipedia.org/wiki/选单 "wikilink")、[工具列](../Page/工具栏.md "wikilink")、分组框、[标签页](https://zh.wikipedia.org/wiki/分頁瀏覽器 "wikilink")、色彩選擇器、spacer、splitter
    排版: 例如方框、網格、堆疊、疊
    事件和腳本:
    例如[腳本](../Page/脚本语言.md "wikilink")、[命令](https://zh.wikipedia.org/wiki/命令 "wikilink")、key、broadcaster、observer
    資料來源: 例如template、rule
    其他:
    例如overlay（類似[SSI](https://zh.wikipedia.org/wiki/SSI "wikilink")，但在客戶端運作，而且更為強大）、iframe、浏览器、编辑器

一個XUL文件中也可以包含其他[XML命名空間的元素](https://zh.wikipedia.org/wiki/XML命名空間 "wikilink")，例如[XHTML](../Page/XHTML.md "wikilink")、[SVG和](https://zh.wikipedia.org/wiki/SVG "wikilink")[MathML](https://zh.wikipedia.org/wiki/MathML "wikilink")。

現時的XUL還未在提供一些普遍的widget，例如spinbox、slider和canvas。[XUL 2.0計劃](http://wiki.mozilla.org/wiki/XUL:Home_Page)中將會包括這些缺乏的[控件](../Page/控件.md "wikilink")。

## XUL應用

雖然XUL的設計原意是為了創作Mozilla程式及其擴充套件，但事實上人們也能利用它來編寫基於[HTTP的](https://zh.wikipedia.org/wiki/HTTP "wikilink")[網絡應用程式](https://zh.wikipedia.org/wiki/網絡應用程式 "wikilink")。基本[安全性的原則](https://zh.wikipedia.org/wiki/安全性 "wikilink")，很多需要特權的[XPCOM物件在無特權的XUL文件上都不能使用](https://zh.wikipedia.org/wiki/XPCOM "wikilink")。唯有使用[數碼簽署的腳本才享有此種特權](https://zh.wikipedia.org/wiki/数字签名 "wikilink")。就算如此，這些文件亦受[網頁瀏覽器的限制](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")，例如不能載入遠端的XUL、DTD和RDF文件。

## 電影致敬

XUL讀作「zool」有向電影[捉鬼敢死隊](https://zh.wikipedia.org/wiki/捉鬼敢死隊 "wikilink")[致敬之意](../Page/致敬.md "wikilink")。在捉鬼敢死隊中，有一名為「Zuul」的古代[蘇美爾女神在支配住Dana](https://zh.wikipedia.org/wiki/苏美尔人 "wikilink")
Barrett的情況下說道：「There is no Dana, only Zuul」\[1\]
。在開發XUL之前，XML通常都是用於記錄資料性文件，而非定義使用者界面。因此設計XUL的編程員們便想到以「There
is no data, only
XUL」作為標語。而「Keymaster」和「Gatekeeper」都是來自該個情節。另外，Mozilla的JavaScript[除錯器](https://zh.wikipedia.org/wiki/除錯器 "wikilink")——[Venkman也是捉鬼敢死隊的其中一個角色](../Page/Venkman.md "wikilink")。這可以見於XUL的[XML命名空間](https://zh.wikipedia.org/wiki/XML命名空間 "wikilink")\[2\]。而在可以顯示XUL的應用程式上，利用該網頁就可以瀏覽到一個置中的、以大字型顯示的標語。

## 參見

  - [可扩展用户界面协议](https://zh.wikipedia.org/wiki/可扩展用户界面协议 "wikilink")（XUP）

  - [用户界面标记语言](https://zh.wikipedia.org/wiki/用户界面标记语言 "wikilink")

  -
  - [Mozilla应用程序框架](https://zh.wikipedia.org/wiki/Mozilla应用程序框架 "wikilink")

  - [XBL](../Page/XBL.md "wikilink")

  - [XULRunner](https://zh.wikipedia.org/wiki/XULRunner "wikilink")

  - [ZK](../Page/ZK.md "wikilink")

## 参考文献

## 外部链接

  - [Mozilla XUL](http://www.mozilla.org/projects/xul/)
  - [XULPlanet](http://www.xulplanet.com)
  - [XUL Periodic Table](http://www.hevanet.com/acorbin/xul/top.xul)
  - [XUL
    Weblog](https://web.archive.org/web/20060207014248/http://xulblog.de/xul/)
  - [Mobile Amazon
    Browser](https://web.archive.org/web/20070707130622/http://www.faser.net/mab/)
  - [Xul and Xml-related formats](http://www.xul.fr/en-xml-xul.html)

[Category:基於XML的標準](https://zh.wikipedia.org/wiki/Category:基於XML的標準 "wikilink")
[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")

1.  [Ghostbusters clip](https://www.youtube.com/watch?v=lg7MAacSPNM)
2.  [Mozilla XML
    Namespace](https://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul)