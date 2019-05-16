Simple API for
XML（簡稱**SAX**）是個循序存取XML的解析器API。SAX提供一個機制從XML文件讀取資料。它是除了[文档对象模型](../Page/文档对象模型.md "wikilink")（DOM）的另外一種流行選擇。

## 使用SAX处理XML

实现SAX了的解析器拥有[事件驱动式的API](https://zh.wikipedia.org/wiki/事件驱动 "wikilink")，并像流读取器那样工作。由使用者定义[回调函数](../Page/回调函数.md "wikilink")，解析时，若发生事件的话会被调用。SAX事件包括：

  - XML 文字 节点
  - XML 元素 节点
  - XML 处理指令
  - XML 注释

事件在遇到任一XML特性时触发，以及遇到他们结尾时再次触发。XML属性也作为传给元素事件资料的一部分。

SAX运行时是单向的；解析过的资料无法在不重新开始的情况下再次读取。

## 定义

不像
DOM，对于SAX并沒有「正式的」规格。[Java对于SAX的实现被认为是一种规范](../Page/Java.md "wikilink")，在其他语言的实现尝试遵循著该实现的程序，必要時根据语言差异而调整。

## 優點

SAX解析器在某些方面優於DOM風格解析器。SAX解析器的[記憶體使用量一般遠低於DOM解析器使用量](https://zh.wikipedia.org/wiki/主記憶體 "wikilink")。DOM解析器在任何處理開始之前，必須把整棵樹放在記憶體，所以DOM解析器的記憶體使用量完全根據輸入資料的大小。相對來說，SAX解析器的記憶體內容，是只基於XML檔案的最大深度（XML樹的最大深度）和單一XML項目上XML屬性儲存的最大資料。這兩個總是比整顆解析樹本身還小。

因為SAX事件驅動的本質，處理文件通常會比DOM風格的解析器快。記憶體存取耗時，所以DOM較大的記憶體使用也是一個效能議題。

因為SAX的本質，從磁碟串流讀取是可行的。無法放入記憶體的XML文件只可能使用SAX解析器（或另外的串流XML解析器）來處理。

## 缺點

SAX事件驅動的模型對於XML解析很有用，但它確實有某些缺點。

某些種類的[XML驗證需要存取整份文件](https://zh.wikipedia.org/wiki/XML驗證 "wikilink")。例如，一個[DTD](https://zh.wikipedia.org/wiki/文件類型描述 "wikilink")
IDREF屬性需要文件內有項目使用指定字串當成DTD
ID屬性。要在SAX解析器內驗證，必須追蹤每個之前遇過的ID和IDREF屬性，檢查是否有任何相符。更甚者，一個IDREF找不到對應的ID，使用者只會在整份文件都解析完後才發現，若這種連結對於建立有效輸出是重要的，那用在處理整份文件的時間只是浪費。

另外，某些XML處理僅要求存取整份文件。舉例來說，[XSLT及](../Page/XSLT.md "wikilink")[XPath需要能夠任何時間存取任何解析過的XML樹](../Page/XPath.md "wikilink")。當SAX以用來建構此樹時，DOM解析器在設計上已經是如此了。

## 參見

### 其他XML處理技術

  - [文檔對象模型](https://zh.wikipedia.org/wiki/文檔對象模型 "wikilink")

  - [XSL Transformations (XSLT)](../Page/XSLT.md "wikilink")

  -
  - [System Integrated Automation
    parser](https://zh.wikipedia.org/wiki/System_Integrated_Automation_parser "wikilink")

### 支援SAX的解析器及API

  - [Xerces](https://zh.wikipedia.org/wiki/Apache_Xerces "wikilink")
  - [MSXML](../Page/MSXML.md "wikilink")
  - [Crimson XML](https://zh.wikipedia.org/wiki/Crimson_XML "wikilink")
  - [JAXP](../Page/JAXP.md "wikilink") - Java XML解析API
  - [LibXML](https://zh.wikipedia.org/wiki/LibXML "wikilink")
  - [AVHTML](https://github.com/avplayer/avhtml) - 轻量级C++ HTML Parser

## 參考

  - [David
    Brownell](https://zh.wikipedia.org/wiki/David_Brownell "wikilink")：*SAX2*,
    O'Reilly, ISBN 0-596-00237-8
  - [W. Scott
    Means](https://zh.wikipedia.org/wiki/W._Scott_Means "wikilink")，[Michael
    A.
    Bodie](https://zh.wikipedia.org/wiki/Michael_A._Bodie "wikilink")：*The
    Book of SAX*, No Starch Press, ISBN 1-886411-77-8

## 外部連結

  - [SAX 首頁](http://www.saxproject.org/)
  - [前10大 SAX2 密技](http://xml.com/pub/a/2001/12/05/sax2.html)

<!-- end list -->

  - 語言介面：
      - [Perl](https://web.archive.org/web/20070208091617/http://search.cpan.org/~grantm/XML-SAX-0.15/SAX.pm)
      - [Python](https://web.archive.org/web/20070517233418/http://www.python.org/doc/current/lib/module-xml.sax.html)
      - [Java](http://www.saxproject.org/?selected=quickstart)

[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")