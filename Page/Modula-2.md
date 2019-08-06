**Modula-2**是由[图灵奖](../Page/图灵奖.md "wikilink")获得者[尼克劳斯·维尔特](../Page/尼克劳斯·维尔特.md "wikilink")（Niklaus Wirth）所提出的一个[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")。Modula-2之名是根據其3個編譯單元的模組而來，這些模組分別為程式模組（Program Module），定義模組（Definition Module）及執行模組（Implementation Module）。

Wirth根據其早期對Pascal、模組程式語言(Modula)或稱為Modula-1程式語言及Alto電腦的經驗來定義Modula-2。在1976至1977年間，Wirth在Xerox Palo Alto研究中心與一群設計Alto電腦的工作夥伴一同工作，次年，他開始一個在瑞士聯邦理工學院資訊研究所的Lilith個人電腦計畫。該計畫主要的原則乃是以Modula-2為Lilith的系統程式語言，而以Lilith為Modula-2的組織架構。由於不需組譯器(Assembler)，該語言不僅適用於編寫高階的應用程式，也應適用於編寫低階，與機器相關的編碼程式(Machine-Dependent Coding)，用裝置的操控與儲存體的配置。

該語言本身與Lilith結構之設計，都以優雅及簡單為原則，在整個Lilith計畫的生命期中(1978-1988)，作業系統、繪圖套裝軟體、資料庫系統、網路協議、檔案伺服器及許多其他系統和應用模組都是藉著Modula-2發展出來的。

Modula-2設計是讓其程式模組得以重複使用(Reuse)。它藉著提供一些標準程式庫，如異常處置(Exception Handling)、字串處理(String Processing)、輸入／輸出(I/O)及並行程式設計(Concurrent Programming)等來降低語言本身的複雜度。

一個Modula-2的定義模組(Definition Module)定義抽象化資料(Data Abstraction)的介面規格。一個定義模組是與其相對應的實作模組(Implementation Module)個別分開來編譯。一旦編譯好就不必再改變。一個定義模組(Definition Module)包含對常數、類型(Type)、變數及程序標頭的宣告。只有那些可能會被其他程式設計師引用到的程式標頭才會被宣告在定義模組內。那些相對應的執行模組包括區域性的常數、類型、變數宣告；以及外部程序和內部實作所需用到的程序定義。

程式是由上而下(Top-Down)的方式發展，其步驟乃是先建立若干定義模組，之後再隨著需要建立實作模組的部分。每一個實作模組可在其被呼叫前對其區域性的資料結構設定初始值。Modula-2也需偵測在實作模組內的資料是否已過時而導致資料的不一致。

Modula-2程式語言有幾項特色使其在電腦科學的發展過程中有著功不可沒的功勞。首先，它所提出的電腦架構、語言和作業環境的整合概念是一項創舉；其次，它強調程式設計師在使用者介面的設計上，至少需花費用同實作程式設計時所耗費的成本和努力。最後，它提出對抽象化資料的簡化。

## 參見

  - — 初期參考與發想的程式語言

  - —  的初階語言

  - —  擴增物件導向語言

  -
  -
  -
## 外部連結

  - [Modula-2 Internet directory](http://www.modula2.org/)
  - [The Modula-2 website ring](http://www.modulaware.com/m2wr/)

<!-- end list -->

  - <http://murray.newcastle.edu.au/users/staff/peter/m2/Modula2.html> (英文)
  - <http://www.arjay.bc.ca/Modula-2/m2faq.html> (英文)
  - <http://www.nongnu.org/gm2/>  (英文)
  - <https://web.archive.org/web/20150722230801/http://objective.modula2.net/>  (英文)

[Category:ISO标准化编程语言](https://zh.wikipedia.org/wiki/Category:ISO标准化编程语言 "wikilink") [Category:静态类型编程语言](https://zh.wikipedia.org/wiki/Category:静态类型编程语言 "wikilink") [Category:系統程式語言](https://zh.wikipedia.org/wiki/Category:系統程式語言 "wikilink")