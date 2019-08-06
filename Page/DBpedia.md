**DBpedia** （*DB*乃是[資料庫](https://zh.wikipedia.org/wiki/資料庫 "wikilink")，database的意思，也可做資料庫百科全書解） 是一項從[維基百科裡萃取](https://zh.wikipedia.org/wiki/維基百科 "wikilink")的專案計畫。這些計畫所得的結構化資訊，也將放在[網際網路中公開讓人取閱](https://zh.wikipedia.org/wiki/網際網路 "wikilink")。\[1\]DBpedia允許使用者查詢跟維基百科相關資源之間的關係與性質，甚至也可查詢從維基百科外連到其他的內容。\[2\]DBpedia曾被全球資訊網創始人[提姆·柏內茲-李評論為世界上最有名的幾個去中心化](https://zh.wikipedia.org/wiki/提姆·柏內茲-李 "wikilink")[連結資料的專題之一](https://zh.wikipedia.org/wiki/連結資料 "wikilink")。\[3\]

## 緣起

此計畫案一開始是由來自[柏林自由大學以及](https://zh.wikipedia.org/wiki/柏林自由大學 "wikilink")[萊比錫大學的人士所開啟](https://zh.wikipedia.org/wiki/萊比錫大學 "wikilink")，並與（Open Linked Software）同盟合作\[4\]。第一份公開可取得的資料集在2007年時發佈。它是透過的方式所發佈，允許他人自由利用這些資料集。

維基百科的條目大部分都是沒有固定格式的文字，不過也有部分的資料是屬於結構化的資訊並且被鑲嵌在條目中，像是*[資訊框](https://zh.wikipedia.org/wiki/資訊框 "wikilink")*的表格內容（也就是預設在[桌機版維基百科瀏覽格式](https://zh.wikipedia.org/wiki/桌機 "wikilink")，出現在條目右上角出現的欄位，或是[行動版維基百科的條目一開始就顯示的欄位](https://zh.wikipedia.org/wiki/維基百科#行動版 "wikilink")。）、分類、圖像、地理座標、以及外部[網頁](../Page/網頁.md "wikilink")連結。這些結構化的資訊會在此計畫案被提取出來並且將其統一的放在一個資料集裡頭以方便查詢。

## 資料組

2013年9月，DBpedia發佈了第3.9版的更新。\[5\]如同之前版本的加強，這次也新增了維基百科更多資訊框的比對，同時也新增了[維基數據的連結](https://zh.wikipedia.org/wiki/維基數據 "wikilink")。（透過 `owl:sameAs` 的連結）。\[6\]此版的資料組描述了四百萬筆實體（entities），其中有322萬筆實體是在一個連貫的[知識本體中進行分類](../Page/本体_\(信息科学\).md "wikilink")，這些實體包含了832,000位人物、639,000個地景、116,000份音樂專輯、78,000部影片、18,500個電動遊戲、209,000個組織、226,000個物種以及5,600種疾病。\[7\]。DBpedia資料集提供了最多有119個不同語言的特色標籤以及資料摘要；現總共有2460萬個圖片連結以及2760萬筆連到外部網頁的連結資料、4500萬筆連結到其他RDF格式的資料集、6700萬筆連結到維基百科的分類頁，以及4120萬筆分類的資料\[8\]。DBpedia計畫使用[資源描述框架](../Page/資源描述框架.md "wikilink")（Resource Description Framework，簡稱RDF）來呈現擷取的資料，目前包含了24.6億筆的資料、4700萬從英文版本維基百科上擷取的資料、19.8億則來自其他的語言版本，同時有大約4,500萬的資料連往外部的資料集。\[9\]

從本資料集，多個頁面之間傳播的資訊可以被擷取，例如某書籍的作者資料，能夠被放在關於此書或關於作者的頁面中。

從維基百科擷取資料其中的一個重大挑戰是，相同概念可能會在資訊框以及其他的模版中被用不同的參數表示，例如以及意義相同。在這樣的情況下，查詢人物出生地點就必須要在這兩個參數下都有查詢才能夠得到完整的結果。於是，DBpedia的映對語言就被開發了出來，以幫助映對知識本體裡頭這些定義的異同，進而減少同義詞的重疊。有鑑於維基百科中使用資訊框以及其他數值非常的多元，開發以及改善映對語言的機制是以開源的方式徵求大眾參與\[10\]。

## 範例

DBpedia摘取維基百科頁面上的事實資訊，讓使用者可以不用在多個維基百科條目之間瀏覽便找到問題的答案。查詢資料的方式是利用叫做[SPARQL](../Page/SPARQL.md "wikilink")（像是[SQL](../Page/SQL.md "wikilink")一類的[查詢語言](https://zh.wikipedia.org/wiki/查詢語言 "wikilink")）來對[資源描述框架](../Page/資源描述框架.md "wikilink")(RDF)進行查詢。舉例而言，假如你對日本[少女漫畫系列](https://zh.wikipedia.org/wiki/少女漫畫 "wikilink")[東京喵喵](../Page/東京喵喵.md "wikilink")感興趣，想要找這位漫畫的繪者所創作的其他作品。DBpedia結合了維基百科上東京喵喵、[征海未亞這些條目](https://zh.wikipedia.org/wiki/征海未亞 "wikilink")，以及相關作品諸如[麗佳公主](../Page/麗佳公主.md "wikilink")以及的資訊。因為DBpedia把這些資料都標準化到單一的資料庫裡頭，下列[查詢](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&should-sponge=&query=PREFIX+dbprop%3A+%3Chttp%3A%2F%2Fdbpedia.org%2Fproperty%2F%3E%0D%0APREFIX+db%3A+%3Chttp%3A%2F%2Fdbpedia.org%2Fresource%2F%3E%0D%0ASELECT+%3Fwho%2C+%3Fwork%2C+%3Fgenre+WHERE+%7B+%0D%0A+db%3ATokyo_Mew_Mew+dbprop%3Aauthor+%3Fwho+.%0D%0A+%3Fwork++dbprop%3Aauthor+%3Fwho+.%0D%0A+OPTIONAL+%7B+%3Fwork+dbprop%3Agenre+%3Fgenre+%7D+.%0D%0A%7D+%0D%0A&format=text%2Fhtml&debug=on&timeout=)就能夠在不需具體清楚哪一個條目有包含了哪一部分的片段資訊，就能夠完整的列出相關作品類型：

``` sparql
PREFIX dbprop: <http://dbpedia.org/property/>
PREFIX db: <http://dbpedia.org/resource/>
SELECT ?who, ?WORK, ?genre WHERE {
 db:Tokyo_Mew_Mew dbprop:author ?who .
 ?WORK  dbprop:author ?who .
 OPTIONAL { ?WORK dbprop:genre ?genre } .
}
```

## 使用DBpedia的相關計畫或組織

DBpedia廣納了人類知識不同領域，十分多元的範疇資料。這使得它自然而然成為連結眾多資料集的樞紐，讓外部資料集能夠連結到相關的概念。\[11\]DBpedia的資料集是跟其他許多網路上不同的[開放資料](../Page/開放資料.md "wikilink")資料集在RDF的層級交互相連著。透過這些資料集，可以讓應用程式豐富DBpedia的資料。，已經有超過4500萬筆在DBpedia與外部資料集之間的交互連結產生，外部資料集包含：[Freebase (database)](https://zh.wikipedia.org/wiki/Freebase_\(database\) "wikilink")、[OpenCyc](https://zh.wikipedia.org/wiki/Cyc#OpenCyc "wikilink")、、、[Musicbrainz](https://zh.wikipedia.org/wiki/Musicbrainz "wikilink")、[CIA World Fact Book](https://zh.wikipedia.org/wiki/CIA_World_Fact_Book "wikilink")、[DBLP](https://zh.wikipedia.org/wiki/DBLP "wikilink")、[Project Gutenberg](https://zh.wikipedia.org/wiki/Project_Gutenberg "wikilink")、DBtune [Jamendo](../Page/Jamendo.md "wikilink")、[Eurostat](https://zh.wikipedia.org/wiki/Eurostat "wikilink")、[Uniprot](https://zh.wikipedia.org/wiki/Uniprot "wikilink")、、以及等資料\[12\]\[13\]。[湯森路透公司的前導計畫](https://zh.wikipedia.org/wiki/湯森路透 "wikilink")、[紐約時報的連結開放資料計畫](https://zh.wikipedia.org/wiki/New_York_Times "wikilink")、以及[DBpedia Spotlight也納入了DBpedia的連結](https://zh.wikipedia.org/wiki/DBpedia_Spotlight "wikilink")\[14\]\[15\]\[16\]。[BBC也使用DBpedia來輔助其內容組織](https://zh.wikipedia.org/wiki/BBC "wikilink")\[17\]\[18\]。使用DBpedia進行語意標籤（semantic tagging）\[19\]。

[亞馬遜公司提供一串DBpedia](https://zh.wikipedia.org/wiki/Amazon.com "wikilink")*公共資料集（Public Data Set）*，這可整合進[亞馬遜網路服務應用之中](https://zh.wikipedia.org/wiki/Amazon_Web_Services "wikilink")\[20\]。

## DBpedia Spotlight

2010年6月，來自[Web Based Systems Group以及](https://zh.wikipedia.org/wiki/Web_Based_Systems_Group "wikilink")[柏林自由大學的研究人員開始了一個叫做](https://zh.wikipedia.org/wiki/柏林自由大學 "wikilink")「DBpedia Spotlight」的計畫，開發工具來將文字資料中使用DBpedia資源的部份加上註解。這個工具解決了過去透過DBpedia連結非結構化資訊來源到[開放連結資料雲的問題](https://zh.wikipedia.org/wiki/開放連結資料雲 "wikilink")。DBpedia Spotlight可展示已命名[實體擷取](https://zh.wikipedia.org/wiki/實體擷取 "wikilink")（named entity extraction）、包含[實體偵測](https://zh.wikipedia.org/wiki/實體偵測 "wikilink")（entity detection）以及[命名衝突化解](https://zh.wikipedia.org/wiki/命名衝突化解 "wikilink")（name resolution）（也就是消歧義（disambiguation））。此工具也能在其他[資訊擷取](https://zh.wikipedia.org/wiki/資訊擷取 "wikilink")（information extraction）任務中，用來進行[命名實體辨識](https://zh.wikipedia.org/wiki/命名實體辨識 "wikilink")（named entity recognition）。DBpedia Spotlight聚焦在多種不同用途的客製應用。不去聚焦於少部分的實體類型，此計畫試圖支援全部DBpedia上來自超過320個不同分類裡，共約三百五十萬個實體與概念。

DBpedia Spotlight可公開獲取，是以一個為了測試用途而提供的[網路服務](https://zh.wikipedia.org/wiki/web_service "wikilink")，或者也可以從[Apache授權的](https://zh.wikipedia.org/wiki/Apache_License "wikilink")[Java](../Page/Java.md "wikilink")/[Scala](../Page/Scala.md "wikilink") API。DBpedia Spotlight分配也包含了一[jQuery插件](https://zh.wikipedia.org/wiki/jQuery "wikilink")，此插件允許開發人員在網路上的任何一頁加上註解，只要在他們的頁面上增加一行文字即可\[21\]用戶端也有Java或[PHP](../Page/PHP.md "wikilink")的支援應用\[22\]。此工具可從其展示頁（demo page）裡，處理多種的英語資料\[23\]以及網路服務。國際化的支援部分，只要此語言有開維基百科即可支援\[24\]。

## 參見

  - [BabelNet](../Page/BabelNet.md "wikilink")
  - [Freebase](../Page/Freebase.md "wikilink")
  - [Semantic MediaWiki](https://zh.wikipedia.org/wiki/Semantic_MediaWiki "wikilink")

<!-- end list -->

  - [Wikidata](https://zh.wikipedia.org/wiki/Wikidata "wikilink")
  - [Linked Hypernyms Dataset](http://ner.vse.cz/datasets/linkedhypernyms/)

## 參考來源

## 外部連結

  -
  - 在[TED大會上](https://zh.wikipedia.org/wiki/TED "wikilink")，由[蒂姆·伯納斯-李所做的關於語意網](https://zh.wikipedia.org/wiki/蒂姆·伯納斯-李 "wikilink")（semantic web）[短講影片](http://www.ted.com/talks/lang/eng/tim_berners_lee_on_the_next_web.htm)，引用了DBpedia作為範例。

  - [DBpedia - Extracting structured data from Wikipedia](http://wikimania2009.wikimedia.org/wiki/Proceedings:174) 以及 [LinkedGeodata](http://wikimania2009.wikimedia.org/wiki/Proceedings:178)，[2009年國際維基年會兩個談到關於DBpedia計畫的議程](https://zh.wikipedia.org/wiki/:C:Wikimania_2009 "wikilink")。

  - [DBpedia: Querying Wikipedia like a Database](http://lists.w3.org/Archives/Public/www-archive/2007May/att-0056/WWW2007-DBpedia-Talk.pdf) - Chris Bizer, World Wide Web Conference Developers Track, 11 May 2007

  - [W3C SWEO Linking Open Data Community Project](http://esw.w3.org/topic/SweoIG/TaskForces/CommunityProjects/LinkingOpenData)

  - [DBpedia Spotlight的首頁連結](http://spotlight.dbpedia.org/)

[Category:语义网](https://zh.wikipedia.org/wiki/Category:语义网 "wikilink") [Category:維基百科歷史](https://zh.wikipedia.org/wiki/Category:維基百科歷史 "wikilink") [Category:Scala平台軟體](https://zh.wikipedia.org/wiki/Category:Scala平台軟體 "wikilink")

1.
2.
3.
4.
5.

6.
7.

8.
9.
10.
11. E. Curry, A. Freitas, and S. O’Riáin, ["The Role of Community-Driven Data Curation for Enterprises,"](http://3roundstones.com/led_book/led-curry-et-al.html)  in Linking Enterprise Data, D. Wood, Ed. Boston, MA: Springer US, 2010, pp. 25-47.

12.
13.
14.
15.
16.
17.
18.
19.
20.
21.

22.

23.

24.