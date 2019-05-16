**ECMAScript for
XML**（**E4X**）是一扩展了[ECMAScript](../Page/ECMAScript.md "wikilink")（包含[ActionScript](../Page/ActionScript.md "wikilink")、[DMDScript](https://zh.wikipedia.org/wiki/DMDScript "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[JScript等](../Page/JScript.md "wikilink")）的程式語言，它增加对
[XML](../Page/XML.md "wikilink") 的内在支持。它的目標是在訪問XML文檔时，提供一種更直观、語法更簡潔的的
[DOM](https://zh.wikipedia.org/wiki/DOM "wikilink")
接口。它也是处理XML时的一种新的方式。在 E4X 版本之前，通常总是在
Objcet（对象）层次上访问XML，而 E4X 则是把 XML
当做原始数据（[primitive](https://zh.wikipedia.org/wiki/primitive "wikilink")）来处理（比如字符、数字和布尔值）。这也意味着更快的访问速度、更好的支持、和使
XML 可以成为程序的一个组块（数据结构）。

## 示例

``` JavaScript
 var sales = <sales vendor="John">
     <item type="peas" price="4" quantity="6"/>
     <item type="carrot" price="3" quantity="10"/>
     <item type="chips" price="5" quantity="3"/>
   </sales>;

 alert( sales.item.(@type == "carrot").@quantity );
 alert( sales.@vendor );
 for each( var price in sales..@price ) {
   alert( price );
 }
```

## 實現

E4X 的第一个实现是由 Terry Lucas 和 John Schneider 设计的，出现在 BEA 于2002年2月发布的
Weblogic Workshop 7.0中。BEA 的实现是基于
[Rhino](https://zh.wikipedia.org/wiki/Rhino "wikilink")， 并且于2004年6月先于
ECMAScript E4X 规范发布。John Schneider 当时写了一篇关于 BEA 的 Workshop
的[文章](http://dev2dev.bea.com/pub/a/2002/09/JSchneider_XML.html)。这个
E4X
语言前身的参考文档目前[仍然可用](https://web.archive.org/web/20030924134033/http://e-docs.bea.com/workshop/docs70/help/guide/xmlmap/conHandlingXMLWithECMAScriptExtensions.html)。

  - E4X
    在（至少部分地）[SpiderMonkey](../Page/SpiderMonkey.md "wikilink")（[Gecko的JavaScript引擎](../Page/Gecko.md "wikilink")）和
    [Rhino](https://zh.wikipedia.org/wiki/Rhino "wikilink")（Mozilla
    的另一个用 Java 而非 C 写的 JavaScript 引擎）中實現。

注意：為了正確地在Firefox 1.5中運行E4X，你必須在腳本的HTML標籤中將類型（type）值後面加入“；e4x=1”字串（例：

<script type="text/javascript; e4x=1">

）。

  - 由于 [Mozilla
    Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")
    是基於 [Gecko](../Page/Gecko.md "wikilink") 引擎的，所以它可以用 E4X
    運行腳本。該規範相當新，只有1.5及以后版本支持。

<!-- end list -->

  - [Macromedia的](../Page/Macromedia.md "wikilink")[ActionScript](../Page/ActionScript.md "wikilink")3腳本語言完整地支持
    E4X，[ActionScript](../Page/ActionScript.md "wikilink") 3
    在2005年末已可用。Adobe 于 2006年6月28日随 [Flash
    Player](https://zh.wikipedia.org/wiki/Flash_Player "wikilink") 9
    正式的发布了该语言。

<!-- end list -->

  - E4X 在 [Flash
    CS3](https://zh.wikipedia.org/wiki/Flash_CS3 "wikilink")、[Adobe
    AIR](../Page/Adobe_AIR.md "wikilink") 和 [Adobe
    Flex](https://zh.wikipedia.org/wiki/Adobe_Flex "wikilink")
    中可用，因为它们都使用 ActionScript 3 作为脚本语言。

<!-- end list -->

  - E4X 在 [Adobe Acrobat](../Page/Adobe_Acrobat.md "wikilink") 和 [Adobe
    Reader](https://zh.wikipedia.org/wiki/Adobe_Reader "wikilink") 8.0
    或更高版本中可用。

<!-- end list -->

  - E4X 在 [Aptana](https://zh.wikipedia.org/wiki/Aptana "wikilink") 的
    Jaxer Ajax 应用服务器中可用，该服务器使用了 Mozilla 的服务器端引擎。

<!-- end list -->

  - 从 Alfresco Community Edition 2.9B 以后，E4X 也可以在在这个企业文档管理系统中可用。

## 外部链接

  - [Tutorial from W3
    Schools](https://web.archive.org/web/20060718031705/http://www.w3schools.com/e4x/default.asp)
  - [ECMA-357
    standard](https://web.archive.org/web/20131104082608/http://www.ecma-international.org/publications/standards/Ecma-357.htm)
  - [E4X at
    faqts.com](https://web.archive.org/web/20050908063709/http://faqts.com/knowledge_base/index.phtml/fid/1762)
  - [Slides from E4X Presentation by Brendan Eich, Mozilla Chief
    Architect](https://web.archive.org/web/20060701164705/http://developer.mozilla.org/presentations/xtech2005/e4x/)

[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")