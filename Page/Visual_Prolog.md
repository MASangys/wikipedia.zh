Turbo Prolog 是一個以[Prolog](../Page/Prolog.md "wikilink")(即：Programming in
Logic) 語言的軟體，該系統只適用於[MS-DOS](../Page/MS-DOS.md "wikilink"),
亦可以使用[Windows內的Console介面來編輯使用](https://zh.wikipedia.org/wiki/Windows "wikilink")。

## 版本資訊

Turbo Prolog 1.0 版本是Borland公司於 1986年面世，但隨後於同年再出版 1.1 版本，於1988年推出 Turbo
Prolog 2.0版本後即未再有更新的商業版本。 而最新的版本是視窗化，可視覺化版本**Visual Prolog**。

[TurboProlog2.png](https://zh.wikipedia.org/wiki/File:TurboProlog2.png "fig:TurboProlog2.png")

## 軟體說明

[Borland](../Page/Borland.md "wikilink") Turbo Prolog 採用了特殊的
[Prolog](../Page/Prolog.md "wikilink")
的語法與類型的變量，並於使用上有一些限制，但這不符合Edinborough的標準。
然而，Turbo Prolog
編輯器包含基本的使用者介面，可以方便設計人使用。而[Prolog是一種邏輯編程語言](../Page/Prolog.md "wikilink")。它建立在邏輯學的理論基礎之上，最初被運用於自然語言等研究領域。現在它已廣泛的應用在人工智慧的研究中，它可以用來建造專家系統、自然語言理解、智慧知識庫等，在早期的機器智慧研究領域，[Prolog曾經是主要的開發工具](../Page/Prolog.md "wikilink")。而Prolog語言中最重要的功能即是：回溯，這點與其他一般的程式語言有著明顯的不同。

## 程式資訊

[Prolog的程式語言包含了三個主要部份](../Page/Prolog.md "wikilink")：domains, predicates
與 clauses，而執行程式則是以Goal來回應。

說明如下：

domains 宣告。定義欄位的屬性，如：文字，整數，數值...等。

predicates 判斷，或稱為謂詞。即給事實項目的判斷定定義與關係。

clauses 事實，或稱為子句段。即為輸入已知的事實條件。

## 範例程式

範例是說明誰喜歡那一種運動。其中Bill喜歡的運動，就是與Tom喜歡的相同，皆是Baseball

``` prolog
domains
      person, activity = symbol

predicates
      likes(person, activity)

clauses
      likes(Ellen, Tennis).
      likes(John, Football).
      likes(Tom, Baseball).
      likes(Eric, Swimming).
      likes(Mark, Tennis).
      likes(Bill, X) if likes(Tom, X).
```

輸入問題：Mark喜歡Football嗎？

``` prolog
Goal: likes(Mark, Football)
```

執行結果：回覆：不是

``` prolog
No
```

變化問題與回覆

輸入問題：喜歡Tennis有那些人

``` prolog
Goal: likes(X, Tennis)
```

執行結果：回覆：有Ellen與Mark

``` prolog
X=Ellen
X=Mark
2 Solutions
```

由範例程式可以看出Prolog語言是可以判斷問題與回應使用者的需求

## 注意事項

目前Turbo Prolog已無更新版本。

## 外部連結

  - [Visual Prolog官方網站](http://www.visual-prolog.com/)
  - [GNU Prolog官方網站](http://www.gprolog.org/)

[Category:Prolog](https://zh.wikipedia.org/wiki/Category:Prolog "wikilink")
[Category:Borland軟體](https://zh.wikipedia.org/wiki/Category:Borland軟體 "wikilink")