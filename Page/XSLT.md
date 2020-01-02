> 本文内容由[XSLT](https://zh.wikipedia.org/wiki/XSLT)转换而来。


[TempEngXslt015.svg](https://zh.wikipedia.org/wiki/File:TempEngXslt015.svg "fig:TempEngXslt015.svg")

在[计算机科学](../Page/计算机科学.md "wikilink")中，**可扩展样式-{表}-转换语言**（，[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")）是一种樣式轉換標記语言，可以將[XML](../Page/XML.md "wikilink")資料檔轉換為另外的XML或其它格式，如HTML網頁，純文字。XSLT最末的T字母表示英语中的“转换”（transformation）。它是[XSL规范中的一部分](https://zh.wikipedia.org/wiki/XSL "wikilink")，目前最新的建議版本為XSL 3.0。

以XSLT進行格式轉換不會變動原始的資料文件；而會以現有資料產生新的內容格式。作為輸入的通常是XML資料檔，或者由支援XQuery和XPath的資料模型處理器，其他來源的資料也能轉換，例如關聯式資料庫表格或地理資訊系統。

XSL规范的另一部分是XSLF（Formatting Objects，代表格式化物件）,又称XSL-FO或XSLFO，目前已逐漸被CSS 3.0所取代。XSLT是一種[圖靈完備的語言](https://zh.wikipedia.org/wiki/圖靈完備性 "wikilink")，它可以指定計算機能執行的任何計算。

## 歷史

XSLT受到函數式編程語言和字串模式匹配語言（如SNOBOL和AWK）的影響。它最直接的前輩是DSSSL，即為[SGML](../Page/SGML.md "wikilink")的文件樣式描述語言。

  - XSLT 1.0版本：XSLT是二十世紀末[全球資訊網協會](../Page/万维网联盟.md "wikilink")（W3C）可擴展樣式表語言（XSL）開發工作的一部分，該專案還產出了XSL-FO和XPath。編訂XSLT規範的委員會成員，包括編輯James Clark，具備DSSSL的工作經驗。W3C於1999年11月推薦發表了XSLT 1.0規範。

<!-- end list -->

  - XSLT 2.0：XSL工作群組在2001年嘗試新創1.1版本中斷之後，與XQuery工作群組合作，產出了根基於[XML綱要之上的XPath](../Page/XML_Schema.md "wikilink") 2.0，具有更豐富的資料模型和型別系統；而XSLT 2.0是由Michael Kay主導開發的，在2007年1月成為推薦狀態。然而至2010年，XSLT 1.0仍然被廣泛使用，因為用戶端的網路瀏覽器尚未內建支援XSLT 2.0，或因為處於[LAMP](../Page/LAMP.md "wikilink")架構環境中。

<!-- end list -->

  - XSLT 3.0：於2017年6月8日成為W3C推薦書。主要新功能有：
      - 流轉換：在以前版本中，整個輸入資料檔必須在處理之前被讀入記憶體，在處理完成之前無法寫到輸出（儘管Saxon有流擴展）。這個工作草案允許XML流，這對於處理記憶體容納不下的過大資料檔，或者在XML管道中連串變換時，是有用處的。
      - 改進大型樣式表的模組化。
      - 改進動態錯誤的處理，例如`xsl:try`指令。
      - 函數可以作為其他（高階）函數的參數。

## 設計模型與處理

XSLT處理器會取用一或多個XML源資料檔，加上一或多個XSLT樣式表，並處理它們以產生輸出文件。與廣泛實作的[指令式編程](../Page/指令式編程.md "wikilink")語言（例如C編程語言）相反，XSLT是[宣告式的](../Page/宣告式編程.md "wikilink")。基本處理的範式是模式配比。模板規則只定義如何處理特定XPath模式相符的節點，而不是列出在具有狀態的環境中執行的一系列動作；處理器在遇到某一模式符合時，那麼模板規則的內容就包含了，以函數式語句評估的直接成果：即結果樹，它是處理器輸出的基礎。

處理器遵循固定的算法。首先，假設樣式表已經讀取和準備好了，處理器從輸入的XML資料檔建立來源代碼樹。然後處理來源樹的根節點，在樣式表中找到該節點相符的最佳模板，並評估模板的內容。每一個模板中的指令通常要求處理器在結果樹中產生節點，或者與根節點相同的方式，處理來源樹中的其它節點。從結果樹中取得輸出。

## 處理器實作

  - Altova RaptorXML 伺服器：支援XSLT 1.0和2.0的跨平台引擎，大部分XPath 3.0，以及XSLT 3.0工作草案中的一些功能；也有XQuery支援。允許指令列操作以及利用COM，Java和.NET的介面，還包括一個內置的HTTP伺服器。

<!-- end list -->

  - Exselt：在.NET框架上以F\#編寫成的XSLT 3.0流處理器。完全支援XSLT 3.0草案，XPath 3.0推薦標準和XDM 3.0推薦標準。

<!-- end list -->

  - libxslt是根據MIT授權發佈的開放函式庫，可商業化且重複使用。它以libxml為基礎並以C語言實作，有快速的效能和可移植性。它支援XSLT 1.0和EXSLT擴展。
      - 在指令列中可執行`xsltproc`，它包含在macOS和許多Linux版本中，在微軟Windows系統則透過Cygwin使用。
      - Safari瀏覽器的WebKit引擎，和Chrome和Blink佈局引擎，都利用libxslt函式庫進行XSL轉換。
      - 在Python、Perl、Ruby、PHP、Common Lisp、Tcl和C++等編程語言中也有相對的綁定。

<!-- end list -->

  - MSXML和.NET。MSXML包括XSLT 1.0處理器。從MSXML 4.0它包括指令列的工具程序`msxsl.exe`。

<!-- end list -->

  - Saxon：XSLT 3.0和XQuery 3.1處理器，有獨立操作的開源和專有版本，也提供了可用於Java，JavaScript和.NET的函式庫。

<!-- end list -->

  - QuiXSLT：由Innovimax和INRIA以Java編程語言實作的XSLT 3.0處理器。

<!-- end list -->

  - Xalan：來自Apache Software Foundation的開源XSLT 1.0處理器，可以獨立使用，也適用於Java和C++。

<!-- end list -->

  - 網路瀏覽器：目前Safari，Chrome，Firefox，Opera 和Internet Explorer這些網路瀏覽器都只支援XSLT 1.0；而如果以Saxon-CE和Frameless這樣的第三方協力產品，則可支援XSLT 2.0。瀏覽器有能力執行XML文件的即時轉換，並在其視窗中顯示輸出。轉換方式有將XSL嵌入到XML資料檔中，或在XML資料檔中以匯入XSL的指示來完成。由於Chrome的保守安全策略，可能無法使用匯入XSL的指示。

<!-- end list -->

  - XMLStarlet是“可用於轉換、查詢、驗證和編輯XML資料檔的一組指令列工具程序。它可以將XSLT樣式表應用於XML資料檔”，而且不需要Java。它使用libxslt支援XSLT 1.0。

<!-- end list -->

  - Xuriella和Plexippus-xpath是用Common Lisp編程語言實作的XSLT 1.0處理器。

### 效能

早期大多數的XSLT處理器都是直譯器。近來[位元組碼越來越普遍](https://zh.wikipedia.org/wiki/字节码 "wikilink")，使用可移植的[中間語言](../Page/中間語言.md "wikilink")（如[Java位元組碼或](../Page/Java字节码.md "wikilink")[.NET中間語言](../Page/通用中间语言.md "wikilink")）作為目標。然而，即使是直譯器的成品通常也提供單獨的分析和執行階段，允許在記憶體中建立優化的表達式樹，並可重複使用以執行多重轉換。在線上發行應用程序時，這方式有顯著的性能優勢，其中同樣的轉換每秒可多次應用在不同的來源檔之上。這種分離處理反映在XSLT處理器的[應用編程介面](../Page/应用程序接口.md "wikilink")（如JAXP）的設計中。

早期XSLT處理器很少被優化過。讀取的樣式表成為[文檔物件模型](../Page/文档对象模型.md "wikilink")，而XSLT處理器會直接對它們產生作用。XPath引擎也沒有被優化過。但是漸增地，XSLT處理器利用了函數式編程和資料庫查詢語言中發現的優化技術，例如表達式樹的靜態重寫（例如，將計算移出迴圈），以及[惰性的串流評估來減少過程中所佔記憶體的足跡](../Page/惰性求值.md "wikilink")（允許處理器對子表達式求值時，“提早退出”而不必執行全部，例如`following-sibling::*[1]`）。許多處理器還使用比一般DOM實作更有效率（在空間和時間上）的樹表達式。

2014年6月，Debbie Lockett和Michael Kay推出了一個開放源碼的標竿測試框架，名稱為XT-Speedo。

## XPath

XSLT使用XPath來選取資料來源樹的節點集合，並執行相關的轉換運算。XPath還提供了一系列功能，XSLT則將其功能進一步強化。在3.0版本前的XSLT，使用的XPath版本都是相對應的。到了XSLT 3.0版本則將與XPath 3.0或3.1 配合使用。在之前的版本，XSLT和XPath規範在同一天發佈。然而到了XSLT 3.0版本，它不再和XPath的版本同步；XPath 3.0於2014年4月成為推薦書，接著是2017年2月的XPath 3.1；於2017年6月時才推出了XSLT 3.0版本。

## 與 XQuery 比較

XSLT與XQuery的功能之間有互相重疊的部份，XQuery最初被認為是大型XML資料檔集合的查詢語言。XSLT 2.0和XQuery 1.0標準是由W3C內的不同工作群組開發的，它們彼此合作以確保處理作法可以共通地適用。它們都使用相同的資料模型，型別系統和函數庫，並且都包括了XPath 2.0作為子語言。

但這兩種語言因服務於不同社群的需求，而根植於不同的傳統上。XSLT主要被認為是一種樣式語言，主要目標是在網路（當作網頁模板）、在螢幕或紙張，呈現給人類讀者觀看的XML。而XQuery則類比為傳統中的[資料庫查詢語言](../Page/SQL.md "wikilink")。因為這兩種語言起源於不同的社群，XSLT偏重於處理彈性的敘述式資料應用上，而XQuery則偏重在資料處理方面，例如執行[關係聯結的操作](https://zh.wikipedia.org/wiki/关系代数_\(数据库\) "wikilink")。

## 媒體類型

<code>

<output>

</code>元素可以設定媒體類型的屬性`media-type`，將結果輸出為該[媒體類型](../Page/互联网媒体类型.md "wikilink")（或[MIME](../Page/多用途互聯網郵件擴展.md "wikilink")），例如：
`<xsl：output output =“xml”media-type =“application/xml“/>`

長時間以來在網際網路上沒有XSLT的註冊媒體類型，`text/xsl`為實用上的標準。XSLT 1.0規範建議泛用化的屬性`text/xml`和`application/xml`，但其中沒有指出媒體類型的屬性值應當如何使用。隨著XSLT 2.0的發表，W3C推薦使用MIME媒體類型`application/xslt+xml`，之後這種類型已在[IANA註冊](../Page/互联网号码分配局.md "wikilink")。

1.0之前的XSLT工作草案在範例中使用了`text/xsl`，微軟在Internet Explorer和MSXML產品中採用這一媒體類型，而其他瀏覽器的xml樣式表處理指令也廣泛的認可。所以在實作中，瀏覽器使用者若想以處理指令來轉換XML，應使用這種未註冊的媒體類型。

## 範例

關於分組問題請參閱XSLT/Muenchian分組。以下是當作範例中輸入的XML文檔內容：

``` xml
<?xml version="1.0" ?>
<persons>
  <person username="JS1">
    <name>John</name>
    <family-name>Smith</family-name>
  </person>
  <person username="MI1">
    <name>Morka</name>
    <family-name>Ismincius</family-name>
  </person>
</persons>
```

### 例一（從XSL轉換為XML）

以下XSLT樣式表提供了轉換 XML 文檔的模板：

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/persons">
    <root>
      <xsl:apply-templates select="person"/>
    </root>
  </xsl:template>

  <xsl:template match="person">
    <name username="{@username}">
      <xsl:value-of select="name" />
    </name>
  </xsl:template>

</xsl:stylesheet>
```

它的評估結果是一個新的XML文檔，有另一種結構：

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<root>
  <name username="JS1">John</name>
  <name username="MI1">Morka</name>
</root>
```

### 例二（從XML轉換為XHTML）

如應用以下XSLT樣式表：

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  ns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/persons">
    <html>
      <head> <title>Testing XML Example</title> </head>
      <body>
        <h1>Persons</h1>
        <ul>
          <xsl:apply-templates select="person">
            <xsl:sort select="family-name" />
          </xsl:apply-templates>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="person">
    <li>
      <xsl:value-of select="family-name"/><xsl:text>, </xsl:text><xsl:value-of select="name"/>
    </li>
  </xsl:template>

</xsl:stylesheet>
```

將XML輸入文件轉換則產生如下XHTML（為了清楚起見，空格已被調整）：

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<html ns="http://www.w3.org/1999/xhtml">
  <head> <title>Testing XML Example</title> </head>
  <body>
    <h1>Persons</h1>
      <ul>
        <li>Ismincius, Morka</li>
        <li>Smith, John</li>
      </ul>
  </body>
</html>
```

網路瀏覽器中顯示時，此XHTML會產生如下的輸出。 [xslt_ex2.png](https://zh.wikipedia.org/wiki/File:xslt_ex2.png "fig:xslt_ex2.png")

為了使網路瀏覽器能夠自動將XSL轉換應用於顯示的XML文檔，XML的樣式表處理指令可插入XML中。因此若上例二中的樣式表為“example2.xsl”，則以下指令將把它添加到原來輸入的XML中：

``` xml
<?xml-stylesheet href="example2.xsl" type="text/xsl" ?>
```

本範例中，根據W3C規範（其類型應為text/xml），在技術上text/xsl類型是不正確的，但它是2009年以來唯一在瀏覽器之間，有廣泛支援的媒體類型。

## 参考文献

## 外部連結

  - [XSLT 1.0 W3C Recommendation](http://www.w3.org/TR/xslt)
  - [XSLT 2.0 W3C Working Draft](http://www.w3.org/TR/xslt20/)

<!-- end list -->

  - 具体应用

<!-- end list -->

  - [Xalan-Java](http://xml.apache.org/xalan-j/)
  - [Xalan-C++](http://xml.apache.org/xalan-c/)
  - [libxslt](http://xmlsoft.org/XSLT/) the XSLT C library for Gnome
  - [Sablotron](https://www.webcitation.org/5EsZoiDSj?url=http://www.gingerall.com/charlie/ga/xml/p_sab.xml)
  - [SAXON](http://saxon.sourceforge.net/) by Michael Kay
  - [XT](https://web.archive.org/web/20040803043851/http://www.blnz.com/xt/index.html) by James Clark
  - [Microsoft XSLT engine](https://web.archive.org/web/20040405181042/http://msdn.microsoft.com/library/en-us/xmlsdk/htm/xsl_intro_7yw5.asp)
  - [Mozilla](../Page/Mozilla.md "wikilink") has native [XSLT support](http://www.mozilla.org/projects/xslt/)
  - [X-Smiles](http://www.xsmiles.org/) has native XSLT support
  - [<oXygen/> XSLT editor and debugger](http://www.oxygenxml.com/xslt_editor.html)

## 参见

  - [XML](../Page/XML.md "wikilink")
  - [XSL](https://zh.wikipedia.org/wiki/XSL "wikilink")
  - [XPath](../Page/XPath.md "wikilink")
  - [XSLF](https://zh.wikipedia.org/wiki/XSLF "wikilink")

{{-}}

[Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink") [Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink") [Category:置标语言](https://zh.wikipedia.org/wiki/Category:置标语言 "wikilink") [Category:網頁模板引擎](https://zh.wikipedia.org/wiki/Category:網頁模板引擎 "wikilink")