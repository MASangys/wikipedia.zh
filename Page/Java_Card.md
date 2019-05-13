[Java_Card_Framework_Traditional_Chinese.png](https://zh.wikipedia.org/wiki/File:Java_Card_Framework_Traditional_Chinese.png "fig:Java_Card_Framework_Traditional_Chinese.png")

**Java
Card**技術主要是讓[智慧卡或與智慧卡相近的裝置上](../Page/智慧卡.md "wikilink")，以具有安全防護性的方式來執行小型的[Java
Applet](../Page/Java_Applet.md "wikilink")，此技術也被廣泛運用在[SIM卡](../Page/SIM.md "wikilink")、[提款卡上](../Page/提款卡.md "wikilink")。

第一個運用Java
Card技術的智慧卡是在1997年發表，由數家公司所共同採行，包括過去[Schlumberger公司的卡片部門](../Page/Schlumberger公司.md "wikilink")（今日為[Axlto公司](../Page/Axlto公司.md "wikilink")）與[Gemplus公司](../Page/Gemplus公司.md "wikilink")。Java
Card的產品皆以Java Card Platform
specifications（爪哇卡平台規格）為依循標準，此技術規格標準由[昇陽電腦所研發](../Page/昇陽電腦.md "wikilink")。整體而言，Java
Card的主要特點及訴求在於移攜性與安全性。

## 程式移攜性

Java Card虛擬機（Java Card Virtual Machine，也可簡稱為Java Card
VM或JCVM）它是原有[Java虛擬機的子集合](../Page/Java虛擬機.md "wikilink")，負責對Java
Applet進行程式直譯、執行及結果回應，也因此JCVM的空間佔量不能太大，必須能小到放入智慧卡內。此外，Java Card的Java
Applet也必須比一般Java Applet更小型，要求JCVM與Java Card
Applet都更小化，對日後的進一步撰寫開發與程式移植等有幫助。

既然有容量取向的要求，那也就必須對Java的功效機能進行部分權衡取捨，即便可以用多種方式讓應用程式的體積佔量突破容量限制，例如將應用程式的程式碼劃分到Package（Java程式語言中，用來將類以性質、用途等不同取向等而集中放置的地方，即稱為Package）內，但是每個Package也被限制不能超過64KB的容量。

## 防護安全性

Java Card技術在研發初衷就是為了保護[智慧卡內的私密](../Page/智慧卡.md "wikilink")、敏感性資料。

由於Java Card的應用程式是在Java Card
VM具隔離性的環境下執行，所以程式對卡片資料的寫入、讀取、修改也受到權限機制的控制保護，無論使用何種讀卡設備、[作業系統](../Page/作業系統.md "wikilink")、應用程式都不能跨越權限去存取不屬於自己的卡片內資料，等於具有小型應用程式的防火牆的功效。
Java
Card能支援絕大多數的常用[加密](../Page/加密.md "wikilink")[演算法](../Page/演算法.md "wikilink")，包括[橢圓曲線加密法](../Page/橢圓曲線加密法.md "wikilink")。

無論是[電信方面還是金融方面的智慧片應用](../Page/電信業.md "wikilink")，現在都運用Java
Card技術來防護卡內所儲存的資訊資料。

## 相關條目

  - [爪哇卡開放平台](../Page/爪哇卡開放平台.md "wikilink")（Java Card
    OpenPlatform，簡稱：JCOP），是一個以Java Card為基礎的作業系統，且因使用Java
    Card技術而具有安全防護性。

## 外部連結

  - [Java
    Card平台規格（昇陽電腦）](http://java.sun.com/products/javacard/specs.html)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:智能卡](https://zh.wikipedia.org/wiki/Category:智能卡 "wikilink")