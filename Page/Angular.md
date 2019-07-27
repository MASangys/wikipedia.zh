**AngularJS**是一款由[Google](../Page/Google.md "wikilink")维护的[开源](../Page/开源软件.md "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")函式庫，用來協助[單一頁面應用程式運行](../Page/单页应用.md "wikilink")。它的目标是透過[MVC模式](https://zh.wikipedia.org/wiki/MVC模式 "wikilink")（MVC）功能增强基于浏览器的应用，使开发和测试变得更加容易。在版本2大改（最突出的改变的全面使用**[TypeScript](../Page/TypeScript.md "wikilink")**）之后改名**Angular**，第N版以Angular
N的形式命名。

函式庫讀取包含附加自定義（）的[HTML](../Page/HTML.md "wikilink")，遵從這些自定義屬性中的指令，並將頁面中的輸入或輸出與由JavaScript變量表示的模型綁定起來。這些JavaScript變量的值可以手工設置，或者從靜態或動態[JSON](../Page/JSON.md "wikilink")資源中獲取。

## Angular的哲學

[Architecture_of_an_Angular_2_application.png](https://zh.wikipedia.org/wiki/File:Architecture_of_an_Angular_2_application.png "fig:Architecture_of_an_Angular_2_application.png")
Angular的理念是[声明式编程應該用於構建用戶界面以及編寫軟件構建](https://zh.wikipedia.org/wiki/声明式编程 "wikilink")，而[指令式編程](../Page/指令式編程.md "wikilink")非常適合來表示[業務邏輯](https://zh.wikipedia.org/wiki/業務邏輯 "wikilink")。\[1\]框架採用並擴展了傳統HTML，通過雙向的數據綁定來適應動態內容，雙向的數據綁定允許模型和视图之間的自動同步。因此，Angular使得對DOM的操作不再重要並提升了可測試性。

設計目標：

  - 將應用邏輯與對[DOM的操作解耦](../Page/文档对象模型.md "wikilink")。這會提高代碼的可測試性。
  - 將應用程序的測試看的跟應用程序的編寫一樣重要。代碼的構成方式對測試的難度有巨大的影響。
  - 將應用程序的客戶端與伺服器端解耦。這允許客戶端和伺服器端的開發可以齊頭並進，並且讓雙方的復用成為可能。
  - 指導開發者完成構建應用程序的整個歷程：從用戶界面的設計，到編寫業務邏輯，再到測試。

Angular遵循軟件工程的MVC模式，並鼓勵展現，數據，和邏輯組件之間的松耦合。通過[依賴注入](https://zh.wikipedia.org/wiki/依賴注入 "wikilink")（dependency
injection），Angular為客戶端的Web應用帶來了傳統服務端的服務，例如獨立於视圖的控制。因此，後端減少了許多負擔，產生了更輕的Web應用。

## Angular主要的指令（自定义标签）

## 雙向數據綁定

Angular在呈現和資料中間，可以簡單建立雙向的數據綁定。一旦建立雙向綁定，使用者輸入，會由Angular自動傳到一個變數中，再自動讀到所有綁到它的內容，更新它。效果上就是立即的資料同步。在程式碼中修改變數，也會直接反應到呈現的外觀上。不僅內容可以雙向綁定，其他諸如類別、寬度、高度等等，都可以和變數與使用者的輸入，綁定起來。

## 開發歷史

AngularJS在2009年由Miško Hevery和Adam
Abrons開發，作為線上[JSON](../Page/JSON.md "wikilink")儲存服務的軟體，它是以兆位元來計價，便於成為企業的應用服務。當初以"GetAngular.com"註册網域，但由於只有少量的註册用户，在兩人決定放棄這個商業想法前，就把Angular開源了。

Abrons後來離開了這個計劃，但在[Google](../Page/Google.md "wikilink")工作的Hevery和一些谷歌員工如Igor
Minár和Vojta Jína等則繼續開發維護此函式庫。

### 发行

目前有兩個正在維護的穩定版本：1.3.x和1.4.x，更新频率約为每周一次或每两周一次. \[2\]

### 舊版瀏覽器支援

Angular在1.2之後的版本不再支援[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")
6和7.\[3\]在1.3之後的版本停止對Internet Explorer 8的支援.\[4\]

## 和Backbone.js的比较

  - REST \[5\]

依赖注入

## 参考文献

## 延伸阅读

  -
## 外部链接

  -
  - [在Google
    Groups上的AngularJS](https://groups.google.com/forum/?fromgroups#!forum/angular)

  - [在Google+上的AngularJS](https://web.archive.org/web/20130703211140/https://plus.google.com/+AngularJS/posts)

  - [Github上AngularJS Batarang Chrome
    plugin](https://github.com/angular/angularjs-batarang)

[Category:JavaScript函式库](https://zh.wikipedia.org/wiki/Category:JavaScript函式库 "wikilink")
[Category:Ajax](https://zh.wikipedia.org/wiki/Category:Ajax "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")
[Category:Google软体](https://zh.wikipedia.org/wiki/Category:Google软体 "wikilink")

1.
2.
3.
4.
5.