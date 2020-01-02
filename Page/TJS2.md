> 本文内容由[TJS2](https://zh.wikipedia.org/wiki/TJS2)转换而来。


**TJS2**，即是第二代 TJS ，是種一由 W.Dee 開發，主要用於[吉里吉里](../Page/吉里吉里.md "wikilink")的[內嵌式](https://zh.wikipedia.org/wiki/腳本語言#扩展/可嵌入语言 "wikilink")[腳本](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")[程式設計語言](https://zh.wikipedia.org/wiki/程式設計語言 "wikilink")。

## 概述

TJS2是一種用於遊戲開發的內嵌式腳本語言。以C/C++實現，其語法多來自C/C++、Java和Javascript，方便對相關程式語言有認識的人學習。

## 語言特性

TJS2 是一種弱類型動態物件導向語言。支持：

  - 多重繼承
  - 对象封装

### 物件導向

和[ECMAScript 3一樣](../Page/ECMAScript.md "wikilink")，沒有函式和方法之分。

所有宣告／定義於全局作用域或宣告／定義於函式、setter、getter、類型之外的變量、函式、類別、屬性都是全局物件（global）的成員。

和[ECMAScript 3一樣](../Page/ECMAScript.md "wikilink")，所有函式／方法都是物件，而且TJS2中的屬性和類型（class）也是物件。

所有類型、屬性、函式在宣告／定義了之後，就成為最接近的類型、函式、getter、setter或全局物件的成員，而可見於任何作用域。

只有類型物件是執行時動態查找（lookup），所有實例物件的成員變量、屬性和方法都在實例化時靜態束綁固定了，任何對類型物件的運行時修改都不會影響到該類型的實例。物件所屬類型可以在運行時動態增添。

### 作用域

沒有詞法作用域，所有函式、屬性和類別在執行時的[作用域](../Page/作用域.md "wikilink")都由物件閉包來決定。

### 跨平臺性

TJS2本身是[跨平臺](../Page/跨平臺.md "wikilink")的，但其宿主程式[吉里吉里2的框架暫時不是](https://zh.wikipedia.org/wiki/吉里吉里2 "wikilink")[跨平臺](../Page/跨平臺.md "wikilink")而依賴於Windows作業系統。

## 產品

### KAG3

由W.Dee氏開發的[KAG3系統](https://zh.wikipedia.org/wiki/吉里吉里#KAG3 "wikilink")，主要用於開發視覺化文字[冒險遊戲](https://zh.wikipedia.org/wiki/冒險遊戲 "wikilink")（AVG），也可以用於開發[養成遊戲或其他種類的電子遊戲](https://zh.wikipedia.org/wiki/養成遊戲 "wikilink")。

## 外部連結

  - [吉里吉里下載頁](https://web.archive.org/web/20070518171021/http://kikyou.info/tvp/)
  - [W.Dee的日記（載有開發進度和內容）](https://web.archive.org/web/20070529043219/http://kikyou.info/diary/)
  - [TJS2最新源始碼](https://sv.kikyou.info/trac/kirikiri/browser/kirikiri2/trunk/kirikiri2/src/core/tjs2)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")