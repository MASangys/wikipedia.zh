[Java_Card_Framework_Traditional_Chinese.png](https://zh.wikipedia.org/wiki/File:Java_Card_Framework_Traditional_Chinese.png "fig:Java_Card_Framework_Traditional_Chinese.png")

**Java Card**技術主要是讓[智慧卡](../Page/智慧卡.md "wikilink")或與智慧卡相近的裝置上，以具有安全防護性的方式來執行小型的[Java Applet](https://zh.wikipedia.org/wiki/Java_Applet "wikilink")，此技術也被廣泛運用在[SIM卡](https://zh.wikipedia.org/wiki/SIM "wikilink")、[提款卡上](https://zh.wikipedia.org/wiki/提款卡 "wikilink")。

第一個運用Java Card技術的智慧卡是在1997年發表，由數家公司所共同採行，包括過去[Schlumberger公司的卡片部門](https://zh.wikipedia.org/wiki/Schlumberger公司 "wikilink")（今日為[Axlto公司](https://zh.wikipedia.org/wiki/Axlto公司 "wikilink")）與[Gemplus公司](https://zh.wikipedia.org/wiki/Gemplus公司 "wikilink")。Java Card的產品皆以Java Card Platform specifications（爪哇卡平台規格）為依循標準，此技術規格標準由[昇陽電腦](../Page/昇陽電腦.md "wikilink")所研發。整體而言，Java Card的主要特點及訴求在於移攜性與安全性。

## 程式移攜性

Java Card虛擬機（Java Card Virtual Machine，也可簡稱為Java Card VM或JCVM）它是原有[Java虛擬機的子集合](https://zh.wikipedia.org/wiki/Java虛擬機 "wikilink")，負責對Java Applet進行程式直譯、執行及結果回應，也因此JCVM的空間佔量不能太大，必須能小到放入智慧卡內。此外，Java Card的Java Applet也必須比一般Java Applet更小型，要求JCVM與Java Card Applet都更小化，對日後的進一步撰寫開發與程式移植等有幫助。

既然有容量取向的要求，那也就必須對Java的功效機能進行部分權衡取捨，即便可以用多種方式讓應用程式的體積佔量突破容量限制，例如將應用程式的程式碼劃分到Package（Java程式語言中，用來將類以性質、用途等不同取向等而集中放置的地方，即稱為Package）內，但是每個Package也被限制不能超過64KB的容量。

## 防護安全性

Java Card技術在研發初衷就是為了保護[智慧卡](../Page/智慧卡.md "wikilink")內的私密、敏感性資料。

由於Java Card的應用程式是在Java Card VM具隔離性的環境下執行，所以程式對卡片資料的寫入、讀取、修改也受到權限機制的控制保護，無論使用何種讀卡設備、[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")、應用程式都不能跨越權限去存取不屬於自己的卡片內資料，等於具有小型應用程式的防火牆的功效。 Java Card能支援絕大多數的常用[加密](../Page/加密.md "wikilink")[演算法](https://zh.wikipedia.org/wiki/演算法 "wikilink")，包括[橢圓曲線加密法](https://zh.wikipedia.org/wiki/橢圓曲線加密法 "wikilink")。

無論是[電信方面還是金融方面的智慧片應用](https://zh.wikipedia.org/wiki/電信業 "wikilink")，現在都運用Java Card技術來防護卡內所儲存的資訊資料。

## 相關條目

  - [爪哇卡開放平台](https://zh.wikipedia.org/wiki/爪哇卡開放平台 "wikilink")（Java Card OpenPlatform，簡稱：JCOP），是一個以Java Card為基礎的作業系統，且因使用Java Card技術而具有安全防護性。

## 外部連結

  - [Java Card平台規格（昇陽電腦）](http://java.sun.com/products/javacard/specs.html)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:智能卡](https://zh.wikipedia.org/wiki/Category:智能卡 "wikilink")