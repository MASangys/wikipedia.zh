**DocBook**是一种用于技术文件的语义[标记语言](https://zh.wikipedia.org/wiki/标记语言 "wikilink")。它本来是設計用來编写有关计算机硬件和软件的技术文件，但它可以用于任何其它类型的文件。

作为一个语义语言， DocBook让使用者能[建立自定義的樣式文件，使其能將能內容轉為不同格式](https://zh.wikipedia.org/wiki/呈現與內容分離 "wikilink")，例如[HTML](../Page/HTML.md "wikilink")、[XHTML](../Page/XHTML.md "wikilink")、[EPUB](../Page/EPUB.md "wikilink")、[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")、[手冊頁](https://zh.wikipedia.org/wiki/手冊頁 "wikilink")、、[Microsoft 的HTML Help檔案](https://zh.wikipedia.org/wiki/Microsoft已編譯的HTML_Help "wikilink")……等等，不需要使用者對原文件做任何修改。換句話說，一份DocBook格式的文件能簡單的移植成其他格式。它解決了寫一次使用XML標籤格式化的問題。

## 概览

**DocBook**是一种[XML](../Page/XML.md "wikilink")。在其最新版本（ 5.0 ） ， DocBook的语言被正式定义为由RELAX NG Schema集成Schematron规则。（也有W3C XML schema+ Schematron和文档类型定义（[DTD](https://zh.wikipedia.org/wiki/DTD "wikilink")）的schema版本可用，但这些被认为是非标准。） 作为一个语义语言， DocBook文件没有说明其内容“看起来像”，而是意义上的那些内容。例如，不是抽象的解释如何为一篇文章做可视化格式的摘要， DocBook只是说，在特定部分是一个摘要。它是一个外部处理工具或应用程序来决定在一页上的摘要应该和它看起来应该像什么。 （实际上，决定是否应该包括在最终输出中。） DocBook提供了大量的语义元素标记。它们分为三大类：结构，块级和内联。

## 範例

``` xml
 <?xml version="1.0" encoding="UTF-8"?>
 <book xml:id="simple_book" ns="http://docbook.org/ns/docbook" version="5.0">
   <title>Very simple book</title>
   <chapter xml:id="chapter_1">
     <title>Chapter 1</title>
     <para>Hello world!</para>
     <para>I hope that your day is proceeding <emphasis>splendidly</emphasis>!</para>
   </chapter>
   <chapter xml:id="chapter_2">
     <title>Chapter 2</title>
     <para>Hello again, world!</para>
   </chapter>
 </book>
```

[Category:计算机语言](https://zh.wikipedia.org/wiki/Category:计算机语言 "wikilink") [Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")