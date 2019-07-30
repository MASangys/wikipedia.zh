**SPARQL**（讀做「sparkle」\[1\]、「史巴–摳」）是一種用於[資源描述框架](../Page/資源描述框架.md "wikilink")上的[查詢語言](https://zh.wikipedia.org/wiki/查詢語言 "wikilink")，它的名字是一個[遞迴縮寫](https://zh.wikipedia.org/wiki/遞迴縮寫 "wikilink")，代表「**S**PARQL **P**rotocol **a**nd **R**DF **Q**uery **L**anguage（SPARQL協定與RDF查詢語言）」。它的標準化為[全球資訊網協會的](https://zh.wikipedia.org/wiki/全球資訊網協會 "wikilink")*RDF資料存取工作小組（DAWG）*所進行，被認為是[語意網科技的一個關鍵](https://zh.wikipedia.org/wiki/語意網 "wikilink")。2008年1月15日，SPARQL正式成為一項[W3C推薦標準](https://zh.wikipedia.org/wiki/W3C推薦標準 "wikilink")\[2\]。

一個SPARQL查詢由一些組合、[與邏輯](https://zh.wikipedia.org/wiki/邏輯與 "wikilink")、[或邏輯](https://zh.wikipedia.org/wiki/邏輯或 "wikilink")，及選項組合所組成\[3\] 。

SPARQL現已有在多個[程式語言上的实现了](https://zh.wikipedia.org/wiki/程式語言 "wikilink")\[4\]。在一個2006年5月的訪問裡，[提姆·柏納李說到](https://zh.wikipedia.org/wiki/提姆·柏納李 "wikilink")：「SPARQL將會帶來很大的變化」。

## 優點

SPARQL可以讓使用者寫出廣域上不含糊的詢問。舉例來說，以下的詢問可以取得世界上所有人的姓名與Email：

``` sparql
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
SELECT ?name ?email
WHERE {
  ?person a foaf:Person.
  ?person foaf:name ?name.
  ?person foaf:mbox ?email.
}
```

假設用來描述[人](../Page/人.md "wikilink")的[本體最終統一為](https://zh.wikipedia.org/wiki/本體_\(資訊學\) "wikilink")[FOAF](https://zh.wikipedia.org/wiki/FOAF "wikilink")。注意到所有在SPARQL裡的標示都是[URI都是廣域上不含糊的](https://zh.wikipedia.org/wiki/URI "wikilink")，與[SQL](../Page/SQL.md "wikilink")常用的欄位名「email」或是「e-mail」有所不同。這是此詢問不含糊的根本原因。

這個詢問可以被散布到多個SPARQL節點上，被計算之後結果再聚合起來，這個過程被稱作[聯合式搜尋](https://zh.wikipedia.org/wiki/聯合式搜尋 "wikilink")。

## 例子

另一個SPARQL詢問的例子如下，這模擬了以下的問題「非洲裡有哪些國家首都？」：

``` sparql
PREFIX abc: <http://example.com/exampleOntology#>
SELECT ?capital ?country
WHERE {
  ?x abc:cityname ?capital ;
     abc:isCapitalOf ?y .
  ?y abc:countryname ?country ;
     abc:isInContinent abc:Africa .
}
```

變數的字首是`?`或`$`。回傳會包含`?captial`跟`?country`的所有可能答案。

SPARQL詢問處理器會找到所有滿足這4個三體組合的配對，將對應的變數代表的值找出來。很重要的一點是這是「屬性導向」的（類的配對只能從屬性裡找出來。

為了讓詢問變得更精簡，SPARQL可以讓使用者定義前輟與[URI底](https://zh.wikipedia.org/wiki/URI "wikilink")，與[Turtle類似](https://zh.wikipedia.org/wiki/Turtle "wikilink")。在這個詢問中，「abc」這個前輟代表「http://example.com/exampleOntology\#」。

## 參考

## 外部連結

  - [SPARQL 1.1 概述](https://www.w3.org/TR/sparql11-overview/)

  - [SPARQL 1.0 詢問語言規範書](http://www.w3.org/TR/rdf-sparql-query/)

公开的 SPARQL Web服务

  - [维基数据](https://query.wikidata.org)
  - [DBpedia](http://dbpedia.org/isparql/)

[Category:语义网](https://zh.wikipedia.org/wiki/Category:语义网 "wikilink") [Category:数据查询语言](https://zh.wikipedia.org/wiki/Category:数据查询语言 "wikilink") [Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink") [Category:Web服务](https://zh.wikipedia.org/wiki/Category:Web服务 "wikilink") [Category:宣告式编程语言](https://zh.wikipedia.org/wiki/Category:宣告式编程语言 "wikilink") [Category:资源描述架构](https://zh.wikipedia.org/wiki/Category:资源描述架构 "wikilink")

1.
2.
3.
4.