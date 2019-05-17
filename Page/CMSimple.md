**CMSimple**是一種自由的[內容管理系統](https://zh.wikipedia.org/wiki/內容管理系統 "wikilink")。標榜架構簡單，程式檔案小並且反應快速。系統以[PHP編寫](../Page/PHP.md "wikilink")，可以在各種平台上運作。

CMSimple不需要使用[資料庫](https://zh.wikipedia.org/wiki/資料庫 "wikilink")，所有的頁面資料都以一個[超文件檔案格式](https://zh.wikipedia.org/wiki/超文件 "wikilink")，名稱為content.htm，存於全球資訊網伺服器上。純文字檔的資料設計使得安裝與備份工作相對較為簡單。

## 程式架構

CMSimple主要的程式功能分為頁面展示與後台管理。其頁面展示功能是利用超文件中的 \<h1\>\</h1\>，
\<h2\>\</h2\>，與 \<h3\>\</h3\> 標註（可後續延伸至
\<h4\>\</h4\>等），進行分頁。CMSimple程式會將content.htm中的
\<h1\>\</h1\> 當作第一層頁面的標題，緊跟其後之 \<h2\>\</h2\> 則將被視為第二層頁面的標題，而
\<h3\>\</h3\>
所涵蓋的內容則為第三層頁面的標題。各層標題則依照其位於content.htm文件中的順序而定。由於CMSimple利用
\<h1\>\</h1\>, \<h2\>\</h2\>，與\<h3\>\</h3\>
標註進行分頁，因此其文件內容無法出現標題標註（header）所對應的粗體文字，使用者必須透過其他方式產生類似粗體文字的效果。

CMSimple的後台管理，僅允許單一用戶使用。透過後台管理，可設定各種與頁面展示相關的參數。與許多[內容管理系統相同](https://zh.wikipedia.org/wiki/內容管理系統 "wikilink")，CMSimple提供[延伸程式開發架構的設計](https://zh.wikipedia.org/wiki/延伸程式 "wikilink")，可以讓程式開發者自行建構原始CMSimple以外的功能。

CMSimple授權採[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")
v3、[Affero通用公共许可证](https://zh.wikipedia.org/wiki/Affero通用公共许可证 "wikilink")
v3、Linkware和商业许可四種。\[1\]

## 参考资料

<references/>

## 外部連結

  - [CMSimple首頁](http://www.cmsimple.dk)
  - [CMSimple論壇](http://www.cmsimpleforum.com)
  - [CMSimple简体中文版](http://www.cmsimple.tk)
  - [CMSimple繁体中文版](https://web.archive.org/web/20170413004626/http://cmsimple.cycu.org/)

## 參看

  - [內容管理系統列表](https://zh.wikipedia.org/wiki/內容管理系統列表 "wikilink")

[Category:内容管理系统](https://zh.wikipedia.org/wiki/Category:内容管理系统 "wikilink")
[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink")

1.