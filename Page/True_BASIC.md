**True
BASIC**是[BASIC的一種](../Page/BASIC.md "wikilink")，由原來的BASIC作者[约翰·凯梅尼及](../Page/约翰·凯梅尼.md "wikilink")[托马斯·卡茨兩位教授所創立](https://zh.wikipedia.org/wiki/托马斯·卡茨 "wikilink")。他們有感自從BASIC這種[編程語言在](https://zh.wikipedia.org/wiki/編程語言 "wikilink")[微電腦上風行以來](https://zh.wikipedia.org/wiki/微電腦 "wikilink")，其設計都與原來BASIC的設計逐漸偏離，所以他們希望可以透過這一套True
BASIC語言來重新強調BASIC語言所應有的設計特色，使到原來為[迷你電腦及](https://zh.wikipedia.org/wiki/迷你電腦 "wikilink")[小型電腦設計的BASIC程序可以更好地移殖到微機上使用](https://zh.wikipedia.org/wiki/小型電腦 "wikilink")。巧合的是，當時所風行的各個BASIC版本，不論是[蘋果電腦的](https://zh.wikipedia.org/wiki/蘋果電腦 "wikilink")[Applesoft
BASIC或](../Page/Applesoft_BASIC.md "wikilink")[MS-DOS的](../Page/MS-DOS.md "wikilink")[GWBASIC或](https://zh.wikipedia.org/wiki/GWBASIC "wikilink")[Quick
BASIC](https://zh.wikipedia.org/wiki/Quick_BASIC "wikilink")，都是由[微軟所開發的](https://zh.wikipedia.org/wiki/微軟 "wikilink")。就連第一套編譯式的BASIC版本、[Borland的](../Page/Borland.md "wikilink")[Turbo
BASIC](../Page/Turbo_BASIC.md "wikilink")，也是基於微軟的GW-BASIC語言。

## 簡介

True BASIC的語法是基於[Dartmouth
BASIC的版本](https://zh.wikipedia.org/wiki/Dartmouth_BASIC "wikilink")7，於1985年開始推出市面。True
BASIC在繪圖方面的功能大大加強：它除了允許用戶重新定義在640×480解像度之下的16種顏色的調色盤以外，亦增加了對繪畫曲線圖的支援。它更在語言中加入[BitBLT的功能](https://zh.wikipedia.org/wiki/BitBLT "wikilink")，並容許用戶擷取畫面的部份並儲存。這些繪圖功能都是1980年代的迷你電腦BASIC的標準功能，但在微機版本上都欠奉的。

True BASIC在語法上盡可能忠於[ANSI
BASIC](https://zh.wikipedia.org/wiki/ANSI_BASIC "wikilink")。為使用戶設計出更好結構的程序，True
BASIC取消了對GOTO命令及行號的支援。而這兩項功能，[微軟一直到現在的Visual](https://zh.wikipedia.org/wiki/微軟 "wikilink")
BASIC還在保留。不過，True BASIC亦允許用戶在指示數值時省略LET命令。而對於變數的命名，亦由ANSI
BASIC所要求的一個字母加一個數字，改為容許較長的描述性變數名稱。

以下是一個用True BASIC所寫的程序，用來計算 \(y = mx + b\)這條方程式：

``` qbasic
slope = 2
let x = 3
y_intercept = 4
let y2 = slope * x + y_intercept
print "y2="; y2
```

這段程式碼執行後會顯示：

``` text
y2= 10
```

True
BASIC所提供的另外一個在較大型電腦很常見，但在微機電腦很少見的功能就是[矩陣及](https://zh.wikipedia.org/wiki/矩陣 "wikilink")[遞迴計算功能的支援](https://zh.wikipedia.org/wiki/遞迴 "wikilink")。由於記憶所限，很多美國設計的微機BASIC都沒有提供矩陣計算（但[英國的](https://zh.wikipedia.org/wiki/英國 "wikilink")[BBC](https://zh.wikipedia.org/wiki/BBC "wikilink")、[Acorn](https://zh.wikipedia.org/wiki/Acorn "wikilink")、[Amiga的BASIC卻有提供](../Page/Amiga.md "wikilink")）。而True
BASIC對global及local變數的支援，使recurssive的程序得以實現。這其實是因為當True
BASIC推出之時，當時的微機的功能已經很強，足以比美較大型的電腦的緣故。

今天的True Basic包含著編譯器在裡面，可以將程式編譯成可執行檔。另外也支援Mac平台（classic OS），不過尚不支援MacOS
X。

## 參考書目

1.  《家庭微電腦》創刊號，True BASIC專欄。

2.  Kemeny, John G.; Kurtz, Thomas E. (1985). *Back To BASIC: The
    History, Corruption, and Future of the Language*. Addison-Wesley.
    141 pp. ISBN 0-201-13433-0.

## 參看

  - [BASIC](../Page/BASIC.md "wikilink")

## 外部連結

  - [True BASIC, Inc. 網站](http://www.truebasic.com)
  - [Short overview, from True BASIC,
    Inc.](https://web.archive.org/web/20070218131154/http://www.truebasic.com/pages_content.asp?page_id=7)

[Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")
[Category:BASIC解释器](https://zh.wikipedia.org/wiki/Category:BASIC解释器 "wikilink")