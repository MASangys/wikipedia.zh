> 本文内容由[CoffeeScript](https://zh.wikipedia.org/wiki/CoffeeScript)转换而来。


**CoffeeScript**是一套[JavaScript](../Page/JavaScript.md "wikilink")的轉譯語言。受到[Ruby](../Page/Ruby.md "wikilink")、[Python](../Page/Python.md "wikilink")與[Haskell](../Page/Haskell.md "wikilink")等語言的啟發\[1\]，CoffeeScript增強了JavaScript的簡潔性與可讀性。此外，CoffeeScript也新增了更複雜的功能，例如、等。一般來說，CoffeeScript可以在不影響執行效能的情況下，縮短約三分之一的程式碼長度\[2\]。自從2011年6月以來，CoffeeScript已經是[GitHub](../Page/GitHub.md "wikilink")上最受矚目的專案之一。\[3\]

## 歷史

2009年12月3日，在[Git](../Page/Git.md "wikilink")上對CoffeeScript做出了第一筆提交「這是這個神秘語言最初的提交。（initial commit of the mystery language.）」\[4\]當時的編譯器由Ruby語言所寫成。在同年12月24日，Ashkenas做出了第一個上標籤與歸檔的版本－0.1.0。2010年2月21日，他釋出了0.5版，此版本將原先由Ruby撰寫的編譯器改寫為純CoffeeScript撰寫。當時吸引了[GitHub](../Page/GitHub.md "wikilink")上的許多貢獻者，每日約有300人次造訪該專案的頁面。2010年12月24日，Askenas釋出了1.0.0穩定版本，並在Hacker News上發表。[Hacker News也是當時此專案第一次發表的網站](../Page/Hacker_News.md "wikilink")。\[5\]\[6\]

## 語法

許多JavaScript的陳述句皆可在CoffeeScript中視為表達式。例如，`if`, `switch`與`for`等。這些控制陳述句也有後綴的版本。

CoffeeScript的一般原則，是可以省略許多不必要的括號和大括號，可以使用縮排來取代。可以以隱喻方式呼叫函數（在JavaScript中呼叫函數所需的括號可以被省略），物件文字通常可以自動偵測。

## 範例

一個使用[jQuery的普通JavaScript程式碼如下](https://zh.wikipedia.org/wiki/jQuery "wikilink")：

``` javascript
$(document).ready(function() {
  // 這裡是初始化的程式碼
});
```

或可以更省略：

``` javascript
$(function() {
  // 這裡是初始化的程式碼
});
```

在CoffeeScript裡，`function`關鍵字可用`->`符號來取代，結尾的分號也可用縮排來表示，如同[Python](../Page/Python.md "wikilink")、[Haskell](../Page/Haskell.md "wikilink")等[縮排語言的](https://zh.wikipedia.org/wiki/縮排語言 "wikilink")[越位规则](../Page/越位规则.md "wikilink")一樣。此外，大括號通常也可以省略。因此上述的程式碼在CoffeeScript中可寫成如下的形式。

``` ruby
$(document).ready ->
  # 這裡是初始化的程式碼
```

或

``` ruby
($ document).ready ->
  # 這裡是初始化的程式碼
```

又或者

``` ruby
$ ->
  # 這裡是初始化的程式碼
```

## 編譯

CoffeeScript的編譯器在0.5版本之後由CoffeeScript本身寫成，為[Node.js](../Page/Node.js.md "wikilink")裡的一個工具程式。但核心程式碼並不依賴Node.js，且可直接在任何支援JavaScript的環境中使用。\[7\]此外，可以使用Coffee Maven Plugin\[8\]作為Node.js之外的替代方案，這是[Apache Maven建置工具的外掛](../Page/Apache_Maven.md "wikilink")，由[Rhino](../Page/Rhino_\(JavaScript引擎\).md "wikilink") JavaScript引擎並以[Java](../Page/Java.md "wikilink")語言寫成。

在CoffeeScript.org官方網站的選單上有「Try CoffeeScript」按鈕，可以讓使用者直接輸入CoffeeScript程式碼並直接在瀏覽器上編譯成JavaScript。另外一個網站「jscoffee\[9\]」提供雙向轉譯的功能。

## 引用資料

## 外部連結

  -
  - [中国官网](http://coffeescript.cn/)

  - [GitHub專案](http://github.com/jashkenas/coffee-script/)

<!-- end list -->

  - 教學文件

<!-- end list -->

  - [中文文档](http://coffeescript.cn/)
  - [CoffeeScript Cookbook](https://archive.is/20121208174724/http://coffeescriptcookbook.com/)
  - [The Little Book on CoffeeScript](http://arcturo.github.com/library/coffeescript/)（[簡體中文版](https://web.archive.org/web/20120426120616/http://island205.github.com/tlboc/)）
  - [Smooth CoffeeScript](http://autotelicum.github.com/Smooth-CoffeeScript/)

[Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.  The Changelog. [Episode 0.2.9 - CoffeeScript with Jeremy Ashkenas](http://thechangelog.com/post/849754840/episode-0-2-9-coffeescript-with-jeremy-ashkenas) , July 23, 2010
2.  Read Write Hack. [Interview with Jeremy Ashkenas](http://www.readwriteweb.com/hack/2011/01/interview-coffeescript-jeremy-ashkenas.php) , Jan 7, 2011
3.  Github. [Popular Watched Repositories](http://github.com/popular/watched)
4.  Github. ['initial commit of the mystery language'](https://github.com/jashkenas/coffee-script/commit/8e9d637985d2dc9b44922076ad54ffef7fa8e9c2)
5.  Hacker News. [CoffeeScript 1.0.0 announcement](http://news.ycombinator.com/item?id=2037801) posted by Jeremy Ashkenas on Dec 24, 2010
6.  Hacker News. [Original CoffeeScript announcement](http://news.ycombinator.com/item?id=1014080) posted by Jeremy Ashkenas on Dec 24, 2009
7.  <http://jashkenas.github.com/coffee-script/#installation>
8.
9.