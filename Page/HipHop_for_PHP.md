是一系列[PHP腳本語言的程式碼轉換器的集合](../Page/PHP.md "wikilink")，它包含、、以及，這四個腳本引擎各有所不同，但是他們共用相同的运行時（）及工具集（）。是由[Facebook所建立](../Page/Facebook.md "wikilink")，他們用它來節省伺服器的資源。被發佈時，已經是高達60萬行由[C++及](../Page/C++.md "wikilink")[C所撰寫的程式碼](https://zh.wikipedia.org/wiki/C语言 "wikilink")，它以[自由软件發佈](../Page/自由软件.md "wikilink")，採用[PHP许可证](../Page/PHP许可证.md "wikilink")
3.01版。

可顯著的增快應用程式的速度，藉由2到6個已觀察到的要素，改善了網頁生成的效能\[1\]\[2\]。

## 歷史

一開始，由[Haiping
Zhao於](https://zh.wikipedia.org/wiki/Haiping_Zhao "wikilink")領銜開發，運行於[CentOS及](../Page/CentOS.md "wikilink")[Fedora作業系統](../Page/Fedora.md "wikilink")。在釋出之前，已經被開發了兩年，最後於2010年2月2日發佈，但由於技術的困難，實際釋出的時間延後18天\[3\]\[4\]，於2月20日發佈在公開的[Git程式庫](../Page/Git.md "wikilink")。

### HPHPc

這是最原始版本的（被稱之為），它可以將的程式碼轉換成[C++的程式碼](../Page/C++.md "wikilink")，並且利用[g++將它編譯成](../Page/GCC.md "wikilink")[机器语言](../Page/机器语言.md "wikilink")。[Facebook使用它多年](../Page/Facebook.md "wikilink")，但由於他對於開發者並不友善，而且[Facebook龐大的程式庫使得開發者在進行程式更動時](../Page/Facebook.md "wikilink")，必須等待數個小時的編譯，所以在2013年2月19日被官方棄用\[5\]。

### HPHPi

的*開發者模式*版本（被稱之為）被用來處理[PHP程式碼](../Page/PHP.md "wikilink")，它在執行時期進行編譯，但與使用相同的執行時期以及執行邏輯，比起，它的執行效能較低，但它令開發者可以使用與產品發佈時相同堆疊的程式碼。目前的支援也已經終止。

### HPHPd

的除錯程式（被稱之為）被用來作為執行時期的鍵盤互動界面，它允許開發者可以嘗試使用一些程式碼、緊繫執行時期的直譯器以及可以設定監視器或中斷點。現在仍被支援及使用。

### HHVM

這是當前版本的（被稱之為），被用以取代以及在產品的開發及發佈，藉由將 [PHP](../Page/PHP.md "wikilink")
程式碼編譯為[位元組碼](https://zh.wikipedia.org/wiki/位元組碼 "wikilink")
，使其可運行於[虛擬機器的環境](../Page/虛擬機器.md "wikilink")，也可以利用客制的[JIT在執行時期編譯為](../Page/即時編譯.md "wikilink")[機器碼](https://zh.wikipedia.org/wiki/機器碼 "wikilink")。當前[Facebook的](../Page/Facebook.md "wikilink")[PHP程式皆運行在](../Page/PHP.md "wikilink")上。

## 使用HipHop for PHP

是一個開放原始碼的專案，可在[GitHub](http://github.com/facebook/hiphop-php)取得，它是採用[PHP许可证授權](../Page/PHP许可证.md "wikilink")。上已編譯可直接執行的套件已經可以在專案的程式庫取得\[6\]\[7\]。

於2012年5月，的指出
*目前已經支援的多項特色*[1](https://github.com/facebook/hiphop-php/wiki/)

於及上開發，目前在其他系統編譯可能不能正常運行，雖然在未來可能會加入其他作業系統的支援，但是現在，僅能運行於64位元架構的環境。

在執行專案，有相當多的改進，也能減少記憶體使用量\[8\]並增加對[TBB的](https://zh.wikipedia.org/wiki/Intel_Threading_Building_Blocks "wikilink")的支援，以至於除了加速之外並顯著的減少記憶體使用量\[9\]。

## 另見

  - [Project
    Zero](https://zh.wikipedia.org/wiki/Project_Zero "wikilink")
  - [Phalanger
    (compiler)](https://zh.wikipedia.org/wiki/Phalanger_\(compiler\) "wikilink")

## 參考文獻

## 外部連結

  -
  -
  - *[HipHop Compiler for PHP? Transforming PHP into
    C++](http://www.stanford.edu/class/ee380/Abstracts/100505.html)* —
    lecture given by HipHop Lead Engineer, Haiping Zhao at [Stanford
    University](https://zh.wikipedia.org/wiki/Stanford_University "wikilink")
    ([video
    archive](http://ee380.stanford.edu/cgi-bin/videologger.php?target=100505-ee380-300.asx)).

  - [List of unimplemented functions and features in HipHop for
    PHP](http://php.webtutor.pl/?p=1188)

  - "[Integration of Intel's TBB into Facebook's
    HipHop](http://2011.linux.conf.au/programme/schedule/view_talk/174?day=friday)"
    – Presentation by Lenz Gschwendtner and Nicolás Erdödy at
    [LCA2011](https://web.archive.org/web/20100717122935/http://lca2011.linux.org.au/)
    in Brisbane, Australia. [Video (28
    Jan 2011)](https://archive.is/20130418171913/http://blip.tv/file/4729313/)

[Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink")
[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink")
[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink")
[Category:Facebook軟體](https://zh.wikipedia.org/wiki/Category:Facebook軟體 "wikilink")

1.
2.
3.  *[PHP Creator Asks, Is Facebook's HipHop Just a 'Nifty
    Trick'?](http://www.readwriteweb.com/archives/rasmus-lerdorf-php-hiphop-facebook.php)
    *
4.  *[Repository documentation on
    February 8, 2010.](http://github.com/facebook/hiphop-php/commit/344ad7dcb05b8afed0825fb1ddd9b4c5f76b3235)*
5.
6.
7.
8.
9.