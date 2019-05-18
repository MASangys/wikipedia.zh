[Autopackage_installing_software.png](https://zh.wikipedia.org/wiki/File:Autopackage_installing_software.png "fig:Autopackage_installing_software.png")

**Autopackage**是一個[自由的](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")[軟體包管理系統](https://zh.wikipedia.org/wiki/軟體包管理系統 "wikilink")，其目標為可以簡易的創造在所有的[Linux發行版上安裝的軟體包](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")，此專案由Mike
Hearn於2002年時創立。

在2010年8月時，Autopackage宣佈與[Listaller專案合併](../Page/Listaller.md "wikilink")\[1\]。

[aMSN和](https://zh.wikipedia.org/wiki/aMSN "wikilink")[Inkscape等專案都有提供Autopackage類型的安裝檔](../Page/Inkscape.md "wikilink")，而也提供了一個地方讓提供內容的人放置Autopackage檔案的[URL](https://zh.wikipedia.org/wiki/URL "wikilink")。但其提供的軟體包列表非常有限，而且裡面大多數程式的版本是過時的（舉例來說，Autopackage上的[GIMP版本為](../Page/GIMP.md "wikilink")2.2.6，但截至2013年8月，GIMP的最新版本為2.8.6）\[2\]\[3\]。

## 目的

Autopackage是用來安裝那些二進制，或是預編譯的非核心應用程式（如[文書處理器](https://zh.wikipedia.org/wiki/文書處理器 "wikilink")、[網頁瀏覽器](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")、或是[電腦遊戲](https://zh.wikipedia.org/wiki/電腦遊戲 "wikilink")），而不是核心[函式庫或是如](../Page/函式庫.md "wikilink")[作業系統殼層等的核心應用程式](../Page/殼層.md "wikilink")。
Autopackage想要以類似Windows或MacOS的安裝程式的方式「改善」Linux在桌面[平台的可用性](https://zh.wikipedia.org/wiki/系統平台 "wikilink")\[4\]。

Autopackage不提供核心應用程式及函式庫的其中一個原因是，這可能會有相容性問題。即便用來提供非核心的函式庫也可能會有問題。一方面來說Autopackage提供了多數系統都可安裝的檔案，但另一方面來說，它也可能會與已安裝的軟體包有相依性的衝突。

Autopackage也可以作為與發行版原有的軟體包管理系統（例如[RPM或是](../Page/RPM套件管理員.md "wikilink")[deb](https://zh.wikipedia.org/wiki/deb "wikilink")）互補的一個工具。不像這些格式，Autopackage檢查[相依性的方法是](../Page/耦合性_\(計算機科學\).md "wikilink")，直接檢查對應的檔案是否存在，而不是從[資料庫中查詢](https://zh.wikipedia.org/wiki/資料庫 "wikilink")。這簡化了Autopackage的設計，因為其不需要跟蹤所有提供的軟體包\[5\]。

那些使用Autopackage的軟體包也必須重新定位，這表示每個軟體包必須被安裝到不同的目錄中。這可以讓Autopackage可以安裝軟體包在非root用戶的家目錄下。

## 軟體包格式

Autopackage的軟體包使用了`.package`副檔名。實際上是可執行的[bash腳本](https://zh.wikipedia.org/wiki/bash "wikilink")，可以透過執行它們來安裝檔案。在Autopackage包裡的檔案並不易透過除了Autopackage以外的軟體進行解壓縮，因為其必須透過Autopackage解析以避免檔案放置錯誤或其他問題\[6\]。

Autopackage包的程式會被安裝在[寫死的系統路徑](../Page/寫死.md "wikilink")，可能會導致與已有的軟體包衝突，
從而導致部份錯誤。這通常可以利用反安裝使用Autopackage安裝的舊版軟體解決。

Autopackage檔案也可以使用Listaller工具安裝或移除\[7\]。Listaller在其檔案格式中包含了Autopackage包，Listaller在處理Autopackage檔時就如同在處理其他的Listaller檔案格式
。

## 參見

  - [Listaller](../Page/Listaller.md "wikilink")

  - [軟體包管理系統](https://zh.wikipedia.org/wiki/軟體包管理系統 "wikilink")

  - [Linux軟體包格式](https://zh.wikipedia.org/wiki/Linux軟體包格式 "wikilink")

  -
## 註釋

## 外部連結

  - [專案首頁](http://www.autopackage.org/)

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink")
[Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink")

1.  [Launchpad.net announcement: Listaller and Autopackage will
    merge](https://launchpad.net/listaller/+announcement/6593/)
2.  [Autopackage struggling to gain
    acceptance](https://web.archive.org/web/20080331092730/http://www.linux.com/articles/60124)
3.  [Projects using
    Autopackage](https://web.archive.org/web/20090122070758/http://www.autopackage.org/packages/)
    (archived)
4.
5.
6.  [Criticism of Autopackage format by author of Alien, a package
    adapter
    tool](http://kitenet.net/~joey/blog/entry/autopackage_designed_by_monkeys/)
7.  [Listaller Project](http://listaller.nlinux.org/)