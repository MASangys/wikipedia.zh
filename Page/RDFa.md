**RDFa**是一個[W3C推薦標準](https://zh.wikipedia.org/wiki/W3C推薦標準 "wikilink")。它擴充了[XHTML](../Page/XHTML.md "wikilink")的幾個屬性，網頁製作者可以利用這些屬性在網頁中添加可供机器读取的[後設資料](https://zh.wikipedia.org/wiki/後設資料 "wikilink")。與[RDF資料模型的對應關係使得RDFa可以將RDF的](https://zh.wikipedia.org/wiki/RDF "wikilink")[三元组嵌入在XHTML文档中](https://zh.wikipedia.org/wiki/三元组 "wikilink")，它也使得符合標準的使用端可以從RDFa文件中提取出這些RDF三元组來。

W3C的「XHTML內的RDF」小組也在討論如何在非XML的HTML下實作RDFa\[1\]。主要的問題是在非XML的HTML裡無法使用[XML名稱空間](https://zh.wikipedia.org/wiki/XML名稱空間 "wikilink")。

RDFa社群建了一個用來放RDFa工具、例子、教學的[維基](../Page/維基.md "wikilink")\[2\]。

## 歷史

RDFa一開始是被Mark
Birbeck提出的，那是一份W3C筆記，標題為「XHTML與RDF」\[3\]，這個想法在[W3C的](https://zh.wikipedia.org/wiki/W3C "wikilink")2004年技術交流會的語意網興趣群組上被提出了\[4\]。那年後來，這個想法被寫入了XHTML
2.0第六版的草案裡\[5\]。雖然一般人們以為RDFa是只能被用在XHTML
2上的，但是RDFa原來的目的就是要提供一個在任意XML上加入後設資料的方法。事實上，在早期的一個叫「RDF/A
Syntax」的文件的子標題就是「一些讓RDF呈現在XML上的屬性」\[6\]。這份文件的作者是Mark Birbeck與Steven
Pemberton，公開時間為2004年10月11日。

2007年四月，「XHTML 2工作小組」提出了一個「RDF註釋」的模組，以便於XHTML 1的系列文件使用\[7\]
。舉例來說，他涵蓋了XHTML 1.1的一個延伸版本，叫XHTML+RDFa
1.0。雖然RDFa被W3C視為不是能代表W3C在標記語言上的發展方向，RDFa仍漸漸的出現在Web上\[8\]。

2007年10月，第一版的公開工作草案「XHTML裡的RDFa：語法與處理」發表了\[9\]。這取代並擴充了四月的那個版本，它包含了做一個RDFa語法處理器的一些規定與給想要實際應用這個科技的組織的一些指引。

2008年10月，RDFa成為了W3C標準\[10\]。

另外一份「RDFa入門」也在2008年6月上線了\[11\]。（第一版工作草案起源於2006年3月）。

## 要素

RDFa的本質就是提供一些屬性，載有後設資料的這些屬性可以被用在XML文件上（也就是RDFa的a的來源 - Attributes）。

這些屬性分別是：

  - **about** –
    一個URI或是[CURIE](https://zh.wikipedia.org/wiki/CURIE "wikilink")，用來指出這份後設資料要描述的主語
  - **rel**及**rev** – 用來指出與另一個東西的關係或是相反關係
  - **href**、**src**及**resource** – 用來指出與主語有關係的東西
  - **property** – 用來指出一個元素的內文的相應屬性
  - **content** – 一個選擇性屬性，在使用property的時候，用來覆蓋一個元素的內文
  - **datatype** – 一個選擇性屬性，在使用property的時候，用來指出內文的文字的資料類型
  - **typeof** – 用來指出被描述的主語的RDF類

## RDFa的好處

RDFa達成了五個「可交互利用的後設資料的條件」。\[12\]

  - 出版者的獨立性 – 每個網站可以用自己的標準
  - 重複使用資料 – 資料不會被複製成兩份。對於同樣的內容，不需要有非別的XML跟HTML的部份。
  - 自我包含 – HTML與RDF是分開的
  - 文法模組化 – 那些屬性可以被重複使用
  - 可演化性 – 可以加更多的屬性，且[XSLT](../Page/XSLT.md "wikilink")可以從一個XHTML檔裡萃取出資料

另外RDFa可以增進一個網頁的[網頁親和力](../Page/網頁親和力.md "wikilink")，畢竟[輔助科技軟體可以使用更多的機械可讀資料](https://zh.wikipedia.org/wiki/輔助科技 "wikilink")。\[13\]

## 例子

以下是一個加入[都柏林核心](../Page/都柏林核心.md "wikilink")後設資料的XHTML的檔案。都柏林核心的字彙都是那些跟書或是文章有關的（標題、作者、主題等等）。

``` xml
<div xmlns:dc="http://purl.org/dc/elements/1.1/"
about="http://dbpedia.org/resource/馬皇降臨">
<span property="dc:title">馬皇降臨</span>
<span property="dc:creator">韋宗成</span>
<span property="dc:date">2009-07-25</span>
</div>
```

更厲害的是，RDFa可以跟著字句的推移，將語意標籤貼在文字上：

``` xml
<p xmlns:dc="http://purl.org/dc/elements/1.1/"
about="http://dbpedia.org/resource/馬皇降臨">
<cite property="dc:title">馬皇降臨</cite>，是台灣漫畫家<span property="dc:creator">韋宗成</span>的一部政治漫畫作品。
漫畫全1卷，<span property="dc:date" content="2009-07-25">2009年7月25日</span>在台北市的國立臺灣大學綜合體育館舉行的
第14屆開拓動漫祭上開始發售，接受網上預購。
</p>
```

## 參見

  - [微格式](../Page/微格式.md "wikilink") – 一個簡化的在網站上標注語意資料的方向
  - [Microdata
    (HTML5)](https://zh.wikipedia.org/wiki/Microdata_\(HTML5\) "wikilink")
    – 一個在HTML5被提出的功能，增強微格式可用性
  - [eRDF](https://zh.wikipedia.org/wiki/eRDF "wikilink") – 類似RDFa的一種格式
  - [GRDDL](https://zh.wikipedia.org/wiki/GRDDL "wikilink") –
    一種從XHTML與XML文件中萃取出後設資料，把它轉成RDF圖的一種協定

## 參考

## 外部連結

  - [rdfa.info – 有大公司使用RDFa的小道消息](http://rdfa.info/)

[Category:语义网](https://zh.wikipedia.org/wiki/Category:语义网 "wikilink")

1.  [（英文）HTML+RDFa –
    一個在HTML裡嵌入RDF的機制](http://www.w3.org/TR/rdfa-in-html/)
2.  [（英文）RDFa社群維基](http://rdfa.info/wiki)
3.
4.
5.
6.
7.
8.  舉例來說，參考（英文）：
9.
10.
11.
12.
13. [1](http://www.standards-schmandards.com/2007/rdfa-and-accessibility/)