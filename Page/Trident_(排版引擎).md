**Trident**（又稱為**MSHTML**、**IE内核**），是[微軟的視窗](https://zh.wikipedia.org/wiki/微軟 "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")（[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")）搭載的[網頁瀏覽器](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")—[Internet
Explorer的](../Page/Internet_Explorer.md "wikilink")[排版引擎的名稱](../Page/排版引擎.md "wikilink")，它的第一個版本隨著1997年10月Internet
Explorer第四版釋出，之後不斷的加入新的技術並隨著新版本的Internet Explorer釋出。在Internet
Explorer第七版中，微軟對Trident排版引擎做了的重大的變動，除了加入新的技術之外，並增加對網頁標準的支持\[1\]。儘管這些變動已經在相當大的程度上落後了其它的排版引擎，如[Gecko](../Page/Gecko.md "wikilink")、[KHTML](../Page/KHTML.md "wikilink")、[Webkit及](https://zh.wikipedia.org/wiki/Webkit "wikilink")[Presto](../Page/Presto.md "wikilink")。

除此之外，[微軟還有另一個網頁瀏覽器排版引擎](https://zh.wikipedia.org/wiki/微軟 "wikilink")，稱為[Tasman](../Page/Tasman.md "wikilink")，它是使用在「[Internet
Explorer for
Mac](../Page/Internet_Explorer_for_Mac.md "wikilink")」的排版引擎。相較於Trident，Tasman引擎對網頁標準有較佳的支援。與普遍的看法相反的是，[微軟已經停止了](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Mac版本的Internet](https://zh.wikipedia.org/wiki/Mac "wikilink")
Explorer的開發，但Tasman的開發仍舊持續，新版本的Tasman引擎仍被應用在一些微軟產品上，例如[Office for
Mac](https://zh.wikipedia.org/wiki/Office_for_Mac "wikilink")。

## 軟體開發

Trident引擎被設計成一個[軟體元件](https://zh.wikipedia.org/wiki/基於元件的軟體工程 "wikilink")（模組），使得其他[軟體開發人員很容易的將網頁瀏覽的功能加到他們自行開發的應用程式裡](https://zh.wikipedia.org/wiki/軟體 "wikilink")。微軟提出了一個稱為「[元件物件模型](https://zh.wikipedia.org/wiki/元件物件模型 "wikilink")」（COM）的軟體[介面架構](https://zh.wikipedia.org/wiki/介面 "wikilink")。供其它支援的元件物件模型開發環境的應用程式（如：[C++及](../Page/C++.md "wikilink")[.NET](https://zh.wikipedia.org/wiki/.NET "wikilink")）存取及編輯網頁。例如，由C++所撰寫的程式可以加入瀏覽器控制項裡，並透過Trident引擎存取當前顯示在瀏覽器上的網頁內容及網頁的各種元素的值，從瀏覽器控制項觸發的事件亦可被程式擷取並進行處理。Trident引擎所提供的所有函式庫可以透過與`mshtml.dll`這個檔案的連結而達成撰寫程式時所需要的功能。

## 版本

| Trident版本 | MSHTML.dll版本                                     | Internet Explorer版本                                                                                                                                            | 更新                                                                                                                                                                                                                                                                                                                      |
| --------- | ------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 不明 \[2\]  | 4.0.x                                            | [4](../Page/Internet_Explorer_4.md "wikilink")                                                                                                                 | 首發                                                                                                                                                                                                                                                                                                                      |
| 5.0.x     | [5](../Page/Internet_Explorer_5.md "wikilink")   | 增加對[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink") 1的支援及改變對CSS 2的渲染                                                                                        |                                                                                                                                                                                                                                                                                                                         |
| 5.5.x     | [5.5](../Page/Internet_Explorer_5.md "wikilink") | 修正部份CSS的排版控制                                                                                                                                                   |                                                                                                                                                                                                                                                                                                                         |
| 6.0.x     | [6](../Page/Internet_Explorer_6.md "wikilink")   | 修正[box model](../Page/IE盒模型缺陷.md "wikilink")的錯誤及新增[quirks mode](../Page/怪异模式.md "wikilink")的切換功能，以增加對[DTD的支援](https://zh.wikipedia.org/wiki/文件類型描述 "wikilink") |                                                                                                                                                                                                                                                                                                                         |
| 7.0.x     | [7](../Page/Internet_Explorer_7.md "wikilink")   | 修正部分CSS排版處理上的錯誤以及增加對[PNGalpha通道](../Page/PNG.md "wikilink")（半透明）的支援                                                                                            |                                                                                                                                                                                                                                                                                                                         |
| 4.0 \[3\] | 8.0.x                                            | [8](../Page/Internet_Explorer_8.md "wikilink")                                                                                                                 | 第一个通过[Acid2测试的版本](../Page/Acid2.md "wikilink")\[4\]                                                                                                                                                                                                                                                                     |
| 5.0 \[5\] | 9.0.x                                            | [9](../Page/Internet_Explorer_9.md "wikilink")                                                                                                                 | 首次支援[HTML5](../Page/HTML5.md "wikilink")、[SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")、[CSS3及採用新的](https://zh.wikipedia.org/wiki/CSS3 "wikilink")[JScript引擎](../Page/JScript.md "wikilink")。另外，首次加入利用[DirectX中的硬件加速改善](../Page/DirectX.md "wikilink")[網絡應用程序的性能](https://zh.wikipedia.org/wiki/網絡應用程序 "wikilink") |
| 6.0 \[6\] | 10.0.x                                           | [10](../Page/Internet_Explorer_10.md "wikilink")                                                                                                               | 支持[CSS3多栏式排版](https://zh.wikipedia.org/wiki/CSS3 "wikilink")、格子对齐、浮动式区块排版、渐变以及ECMA5严格模式                                                                                                                                                                                                                                 |
| 7.0       | 11.0.x                                           | [11](../Page/Internet_Explorer_11.md "wikilink")                                                                                                               | 支持[WebGL和](../Page/WebGL.md "wikilink")[SPDY](../Page/SPDY.md "wikilink")。增强对[HTML5标准的支持](../Page/HTML5.md "wikilink")\[7\]和性能提升\[8\]                                                                                                                                                                                   |

## 用例

除了Internet
Explorer第四版以後的版本使用Trident排版引擎之外，還有其它的應用程式也使用了Trident排版引擎所提供的技術（參見）。它也用於從[Windows
98到](../Page/Windows_98.md "wikilink")[Windows
XP及](../Page/Windows_XP.md "wikilink")[Windows Server
2003所有版本的](../Page/Windows_Server_2003.md "wikilink")[Windows
Explorer](https://zh.wikipedia.org/wiki/Windows_Explorer "wikilink")\[9\]。Windows
2000在新增／移除程式中使用Trident來渲染安裝程式清單\[10\]，以及在Windows
XP中也被用於使用者帳戶控制面板，這是一個[HTML應用程式](https://zh.wikipedia.org/wiki/HTML應用程式 "wikilink")\[11\]。

其他使用Trident的一些應用程式還包括：

  - [AOL
    Explorer](https://zh.wikipedia.org/wiki/AOL_Explorer "wikilink")
  - [Avant
    Browser](https://zh.wikipedia.org/wiki/Avant_Browser "wikilink")
  - [Maxthon](https://zh.wikipedia.org/wiki/Maxthon "wikilink")
  - [GreenBrowser](../Page/GreenBrowser.md "wikilink")
  - [Netscape
    Browser](../Page/Netscape_Browser.md "wikilink")，IE模式使用Trident來渲染網頁
  - [Sleipnir](../Page/Sleipnir.md "wikilink")
  - [GOSURF](../Page/GOSURF.md "wikilink")
  - [MyIE](../Page/MyIE.md "wikilink")
  - [騰訊TT](https://zh.wikipedia.org/wiki/騰訊TT "wikilink")
  - [世界之窗](../Page/世界之窗浏览器.md "wikilink")
  - [Google Talk](../Page/Google_Talk.md "wikilink")，使用Trident引擎來渲染對話介面
  - [IE Tab](../Page/IE_Tab.md "wikilink")，[Mozilla
    Firefox和](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[Google
    Chrome網頁瀏覽器的一個擴充套件](../Page/Google_Chrome.md "wikilink")，能實作在Firefox或Chrome調用Trident排版引擎來瀏覽網頁
  - [RealPlayer](../Page/RealPlayer.md "wikilink")，播放程式內附的網頁瀏覽器
  - [RealNetworks](../Page/RealNetworks.md "wikilink")，旗下的網路遊戲公司[RealArcade所提供的服務](../Page/RealNetworks.md "wikilink")
  - 微軟公司的[Microsoft Office
    Outlook以及](../Page/Microsoft_Outlook.md "wikilink")[Outlook
    Express](../Page/Outlook_Express.md "wikilink")[電子郵件軟體使用Trident技術協助HTML格式的信件資料排版以及](https://zh.wikipedia.org/wiki/電子郵件 "wikilink")「Outlook
    Today」畫面的顯示
  - 微軟公司的[Encarta](../Page/Encarta.md "wikilink")[百科全書及其相關產品](https://zh.wikipedia.org/wiki/百科全書 "wikilink")
  - 微軟公司的[Windows Media
    Player使用Trident技術產生](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")「Media
    Information」頁面
  - 微軟公司的[Microsoft Office InfoPath
    2003](../Page/Microsoft_InfoPath.md "wikilink")（以[XML為基礎的表格開發器](../Page/XML.md "wikilink")）產品
  - 微軟公司的[MSN
    Messenger](https://zh.wikipedia.org/wiki/MSN_Messenger "wikilink")[即時通訊軟體利用該技術處理使用](https://zh.wikipedia.org/wiki/即時通訊軟體 "wikilink")[Flash技術的遊戲或比賽以及廣告的展示資訊](https://zh.wikipedia.org/wiki/Flash "wikilink")
  - [跨平台的文件閱讀軟體](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[TomeRaider](../Page/TomeRaider.md "wikilink")
  - [維爾福軟體公司的](https://zh.wikipedia.org/wiki/維爾福軟體公司 "wikilink")[Steam內容傳送系統使用Trident技術在該軟體的](../Page/Steam.md "wikilink")「儲存」及「更新消息」的功能。

## 註釋

## 參考資料

## 參見

  - [排版引擎列表](../Page/排版引擎列表.md "wikilink")
  - [排版引擎比較](https://zh.wikipedia.org/wiki/排版引擎比較 "wikilink")
  - [網頁瀏覽器比較](https://zh.wikipedia.org/wiki/網頁瀏覽器比較 "wikilink")
  - [網頁親和力](../Page/網頁親和力.md "wikilink")
  - [Acid2](../Page/Acid2.md "wikilink")

[Category:排版引擎](https://zh.wikipedia.org/wiki/Category:排版引擎 "wikilink")
[Category:Internet_Explorer](https://zh.wikipedia.org/wiki/Category:Internet_Explorer "wikilink")

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