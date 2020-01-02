> 本文内容由[Delphi](https://zh.wikipedia.org/wiki/Delphi)转换而来。


**Delphi**，是[Windows平台下](https://zh.wikipedia.org/wiki/Windows "wikilink")[Object Pascal语言](../Page/Object_Pascal.md "wikilink")[集成开发环境](../Page/集成开发环境.md "wikilink")，支持[应用程序快速开发](../Page/快速應用程式開發.md "wikilink")（Rapid Application Development，简称RAD）。最初版本由美国[Borland](../Page/Borland.md "wikilink")公司於1995年开发，用于接替[DOS](../Page/DOS.md "wikilink")時代盛行一時的[Turbo Pascal](../Page/Turbo_Pascal.md "wikilink")」。主创者為[安德斯·海尔斯伯格](../Page/安德斯·海尔斯伯格.md "wikilink")。經過數年發展，此產品已轉移至[Embarcadero公司旗下](https://zh.wikipedia.org/wiki/Embarcadero "wikilink")。

从产品名称上就可以知道，Turbo Pascal使用的是[Pascal语言](https://zh.wikipedia.org/wiki/Pascal_\(编程语言\) "wikilink")。从Turbo Pascal 5.5版开始，Borland公司在传统Pascal的基础上加入了[物件導向的功能](https://zh.wikipedia.org/wiki/物件導向程序設計 "wikilink")。

Delphi所用语言是由传统Pascal语言发展而来的[Object Pascal](../Page/Object_Pascal.md "wikilink")，以[图形用户界面](../Page/图形用户界面.md "wikilink")（Graphical User Interface，简称GUI）为开发环境，透過IDE、图形界面库Visual Component Library (VCL)工具與編譯器，配合連結資料庫的功能，構成一個以[物件導向程式設計為中心的應用程式開發工具](../Page/面向对象设计.md "wikilink")。Delphi所編譯的可執行檔，雖然容量較大，但因為產生的是真正的原生機器碼，效能上比較快速。除了使用資料庫的程式之外，不需安裝即可執行，在使用上相當方便。

Delphi在本质上為[軟體開發工具](https://zh.wikipedia.org/wiki/軟體開發工具 "wikilink")，並非程式语言，但由于Delphi几乎是目前市场上唯一使用Pascal，並持續推出新版本的商业产品。因此，有時人们會把Delphi視為Object Pascal的代名词。Borland公司因而把Object Pascal改称为Delphi。2006年，Borland把开发工具产品线独立出来，成立了一家新的公司CodeGear，並把產品線交由此公司负责。原本的Delphi，亦曾一度因此被命名为Turbo Delphi。但是在新的版本中，除了Delphi for Win32（原有的Delphi版本）之外，还有一个新产品「Delphi for PHP」。在CodeGear的发展规划中，或许“Delphi”不再是Object Pascal的专屬IDE名稱，而是将之提升到通用IDE品牌的層次。2008年5月7日，Embarcadero Technologies（易博龙）公司宣布以2300万美元的价格收购CodeGear公司，从而把Delphi收入囊中。2009年5月6日，Micro Focus宣布以7500万美元收购Borland。

Delphi目前的最新版本是Delphi 10.3 Rio Release 1(10.3.1)\[1\]。

## 技术特点

### VCL

每一种开发工具，仅有[程式语言是不够的](https://zh.wikipedia.org/wiki/程式语言 "wikilink")，还需要一个完备的[函数库](https://zh.wikipedia.org/wiki/函数库 "wikilink")／[类库](https://zh.wikipedia.org/wiki/类库 "wikilink")。Delphi使用的[類別館是可視元件類別館VCL](https://zh.wikipedia.org/wiki/類別館 "wikilink")（[Visual Component Library](https://zh.wikipedia.org/wiki/Visual_Component_Library "wikilink")）。同[MFC](https://zh.wikipedia.org/wiki/MFC "wikilink")、[OWL一样](../Page/Object_Windows_Library.md "wikilink")，VCL也是一種[開發架構](https://zh.wikipedia.org/wiki/开发框架 "wikilink")（Framework），采用了[物件導向技术对Windows應用程式的开发进行了封装](https://zh.wikipedia.org/wiki/面向对象 "wikilink")，使用PME（Property/Method/Event）的开发模式，极大的提高了开发效率。

### 跨平台开发

在Delphi 7之後，開始支援[Linux](../Page/Linux.md "wikilink")下的[Kylix](../Page/Kylix.md "wikilink")，目前Kylix的最新版本为3。Borland公司为了[支援Delphi的跨平台开发](https://zh.wikipedia.org/wiki/支持 "wikilink")，从Delphi 6.0开始加入了另外一个[開發架構CLX](https://zh.wikipedia.org/wiki/开发框架 "wikilink")。开发人员可以使用CLX[架構开发出可以在Kylix中编译的](https://zh.wikipedia.org/wiki/框架 "wikilink")[程式](https://zh.wikipedia.org/wiki/程序 "wikilink")。但是從Delphi 8開始，其後續版本並不再對CLX提供支援。

  - .NET支援

2003年推出的Delphi从8.0，开始正式[支援](https://zh.wikipedia.org/wiki/支持 "wikilink")[微软](../Page/微软.md "wikilink")公司的[.NET平台](https://zh.wikipedia.org/wiki/.NET "wikilink")。Delphi9 或 Delphi 2005，亦将Delphi[整合在一个IDE环境中](https://zh.wikipedia.org/wiki/包容 "wikilink")（同时也[支援C](https://zh.wikipedia.org/wiki/支持 "wikilink")\#）。由於提供了.Net Framework的CLR，因此可用Delphi的程式碼，編譯成和.NET相同的執行碼，也可使用.NET的各項类库，使得程式設計上更富有彈性。

### 跨平台开发（Delphi XE2）

通过Delphi XE2所带的FireMonkey平台，Delphi可以开发跨平台应用程序，并原生编译到Windows和Mac OS X平台。FireMonkey还可以为iPhone、iPod Touch和iPad创建iOS应用，并分发到苹果公司的应用商店。Delphi的FireMonkey应用程序拥有完全的硬件加速。

### 分散式應用系統

應用程式開發團隊的每位成員，不見得會使用同一套開發工具，因此Delphi支援[COM](https://zh.wikipedia.org/wiki/COM "wikilink")／[DCOM與](https://zh.wikipedia.org/wiki/DCOM "wikilink")[CORBA](../Page/CORBA.md "wikilink")，可供Delphi設計人員使用[Visual C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")、[Visual BASIC的](https://zh.wikipedia.org/wiki/Visual_BASIC "wikilink")[ActiveX](../Page/ActiveX.md "wikilink")元件，或使用DCOM、CORBA的功能讓[JAVA應用程式取用其共享功能](https://zh.wikipedia.org/wiki/JAVA "wikilink")。

### 版本历史

| 年份      | 版本    | 特点                                                                                                                                                                                                                                                                                                                                 |
| ------- | ----- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1995    | 1.0   | [支援](https://zh.wikipedia.org/wiki/支持 "wikilink")16位元Windows，以VCL架構為基礎的視覺化开发环境。                                                                                                                                                                                                                                                    |
| 1996    | 2.0   | 以32位元编译器为核心，[支援主從式](https://zh.wikipedia.org/wiki/支持 "wikilink")（C/S）[資料庫的應用程式开发](../Page/数据库.md "wikilink")。                                                                                                                                                                                                                      |
| 1997    | 3.0   | 语法：加入[介面](https://zh.wikipedia.org/wiki/接口 "wikilink")（Interface）机制。IDE：首次提供。                                                                                                                                                                                                                                                      |
| 1998    | 4.0   | 语法：加入[動態陣列和](https://zh.wikipedia.org/wiki/动态数组 "wikilink")[方法改寫](https://zh.wikipedia.org/wiki/方法覆盖 "wikilink")。IDE：增强[偵錯能力](https://zh.wikipedia.org/wiki/调试 "wikilink")，提供[樣板](https://zh.wikipedia.org/wiki/代码模板 "wikilink")。                                                                                                  |
| 1999    | 5.0   | 加强IDE和[偵錯功能](https://zh.wikipedia.org/wiki/调试器 "wikilink")，以及對[資料庫的](../Page/数据库.md "wikilink")[支援](https://zh.wikipedia.org/wiki/支持 "wikilink")。並提供TeamSource，简化Internet的开发工作。                                                                                                                                                    |
| 2001    | 6.0   | 支援Web Service，以及跨平台的Kylix 1.0和CLX。                                                                                                                                                                                                                                                                                                 |
| 2002    | 7.0   | 提供了.NET的过渡，增强的Internet开发（IntraWeb），完善[資料庫](../Page/数据库.md "wikilink")[支援](https://zh.wikipedia.org/wiki/支持 "wikilink")，並加入Indy網路元件與Rave Report資料庫報表，同時支援UML及XP的程式製作。                                                                                                                                                               |
| 2003    | 8.0   | 单纯的for .NET版本，可用C\#語言進行程式開發工作，並保留了Delphi的易用性（業界视其为一个过渡版本）                                                                                                                                                                                                                                                                          |
| 2004    | 9.0   | 正式名称：Delphi 2005。语法：加入了inline及for in loop等功能。IDE：把Borland Delphi.Net、Borland Delphi Win32、Borland C\#、Enterprise Core Objects等环境和功能[整合為一个开发工具](https://zh.wikipedia.org/wiki/集成 "wikilink")，因此可以在[Win32和](https://zh.wikipedia.org/wiki/Win32 "wikilink")[.NET開發環境中切換或同時進行](https://zh.wikipedia.org/wiki/.NET "wikilink")。        |
| 2005    | 10.0  | 發佈名稱：Borland Developer Studio（BDS）2006。[整合C](https://zh.wikipedia.org/wiki/集成 "wikilink")++ Builder; ECO（Enterprise Core Objects）升級到ECO III；以及Together for Delphi，可以在同一個IDE中進行UML開發；QA Audits和QA Metrics可以快速把握專案的設計和[程式碼品質](https://zh.wikipedia.org/wiki/代碼的質量 "wikilink")。从此版开始，Delphi正式支持运算符重载。                                 |
| 2006    | Turbo | Borland將BDS 2006拆分成幾個獨立的版本（Delphi for win32、Delphi for .net、C\#、C++ Builder），而且不能同時安裝兩個不同的版本。由於Borland的IDE生産部門，獨立成為一家名為CodeGear的公司，所以這個版本是以Borland名義推出的最後一個版本。                                                                                                                                                                     |
| 2007/09 | 11.0  | 正式名称：CodeGear RAD Studio - Delphi 2007。正式对Windows x86的API進行了完善，這個版本亦是最後一個支援VCL.NET的版本。                                                                                                                                                                                                                                             |
| 2008/09 | 12.0  | 正式名称：CodeGear RAD Studio - Delphi 2009。正式全面支援[萬國碼](https://zh.wikipedia.org/wiki/統一碼 "wikilink")（Unicode）。从此版开始，Delphi终于实现了用户期待已久的功能：完整的泛型支持。从此Delphi语法在面向对象领域终于和C++持平。                                                                                                                                                            |
| 2009/08 | 14.0  | 正式名称：Embarcadero® RAD Studio 2010。代码编辑器加入了自动排版功能，编写出漂亮的源代码格式不再是累人的事情。                                                                                                                                                                                                                                                              |
| 2010/08 | 15.0  | 正式名称：Embarcadero® RAD Studio XE。首次在IDE里集成了Profile工具，Delphi开发人员终于可以方便地测试自己的代码运行效率了。                                                                                                                                                                                                                                                 |
| 2011/08 | 16.0  | 正式名称：Embarcadero® RAD Studio XE2。支持编译64位Windows应用程序。支持跨平台，这项技术被称作[FireMonkey](https://zh.wikipedia.org/wiki/FireMonkey "wikilink")，支持完全的硬件加速。使用FireMonkey可以创建Windows、[Mac和](https://zh.wikipedia.org/wiki/Mac "wikilink")[iOS的原生应用程序](https://zh.wikipedia.org/wiki/iOS "wikilink")，能够充分利用CPU和GPU。并且FireMonkey也带来了一个全新的2D/3D UI框架。 |
| 2012/08 | 17.0  | 正式名称：Embarcadero® RAD Studio XE3。橫跨Windows8和APPLE Mac OS－Mountain Lion兩平台的最佳開發工具，於2012年9月正式上市，主打符合多平台，並支援最新的Windows 8。                                                                                                                                                                                                             |
| 2013/04 | 18.0  | 正式名称：Embarcadero® RAD Studio XE4。通过 Delphi iOS ARM 编译器、工具链、全新可视化开发环境，开发iOS 应用。新增 FireDAC，实现功能强大、快速且简单的数据访问。                                                                                                                                                                                                                        |
| 2013/09 | 19.0  | 正式名称：Embarcadero® RAD Studio XE5。可以利用 Delphi 开发 Android 应用、利用C++开发 iOS 应用。REST 客户端支持，以访问基于云端的 RESTful web 服务(在专业版和更高级版本中)。                                                                                                                                                                                                         |
| 2014/04 | 20.0  | 正式名称：Embarcadero® RAD Studio XE6。全新 VCL 样式，可使用Windows样式的外观。在Windows平板电脑上开发VCL应用，访问设备传感器。用delphi进行的多设备应用不仅包括PC、平板电脑、和智能手机，现在已延伸到可穿戴设备，可以创建运行在Google 眼镜上的Android 应用。除Windows、Mac OS X和iOS外，还可以添加 Android 作为您的应用的目标平台。用单一的C++代码库，创建针对Android 和iOS 的应用。可以把32位应用（包括程序包）完全移植到64位，将组件放入共享的函数库(DLL)。                                       |
| 2014/09 | 21.0  | 正式名稱 : Embarcadero® RAD Studio XE7                                                                                                                                                                                                                                                                                                 |
| 2015/04 | 22.0  | 正式名稱 : Embarcadero® RAD Studio XE8。支援iOS 64bit                                                                                                                                                                                                                                                                                     |
| 2015/08 | 23.0  | 正式名稱 : Embarcadero® RAD Studio 10 Seattle。                                                                                                                                                                                                                                                                                         |
| 2016/04 | 24.0  | 正式名稱 : Embarcadero® RAD Studio 10.1 Berlin。                                                                                                                                                                                                                                                                                        |
| 2017/03 | 25.0  | 正式名稱 : Embarcadero® RAD Studio 10.2 Tokyo。                                                                                                                                                                                                                                                                                         |
| 2018/11 | 26.0  | 正式名稱 : Embarcadero® RAD Studio 10.3 Rio。                                                                                                                                                                                                                                                                                           |

## 市场状况

Delphi本身是极其优秀的编译器，比C++易学，比VB强大，曾经在国际市场上风靡一时。“真正的程序员用C，聪明的程序员用Delphi”，这句话是对其最经典、最实在的描述。由于[Borland](../Page/Borland.md "wikilink")公司连续决策失误，以及[Microsoft與](https://zh.wikipedia.org/wiki/Microsoft "wikilink")[Java](../Page/Java.md "wikilink")的冲击，使得delphi衰落。在中国大陆，又由于公司商业策略的考量，Delphi的市佔率越来越少。现在大部分的Delphi使用者，多為舊版本培养出來的老客户，而後來的Delphi使用者則是逐漸減少。之所以會有這種現象，除了微軟與Java兩大陣營的競爭效應，以及Delphi本身就缺乏中文教材的因素之外，在程式設計的正規教育體系中，此開發工具亦非主流學科。在這樣的環境下，如果Delphi得不到强大的软件公司作为后台来重点开发它，就很难再次崛起。免费软件[Lazarus](../Page/Lazarus.md "wikilink")在一定程度上也可作为delphi的互补品。

## 歷史演變

Delphi發展一直到Windows 98出現時候，當時推出的Delphi 5.0才成熟穩定，當時同類型的最大對手是Microsoft的資料庫軟體[Visual FoxPro與剛視覺化的Visual](../Page/Visual_FoxPro.md "wikilink") Basic，這時是BDE（[Borland Database Engine](https://zh.wikipedia.org/wiki/Borland_Database_Engine "wikilink")）與Delphi做資料庫配搭最全盛的時候，之後版本支援ADO、SQL、[dbExpress等等都是要取代](https://zh.wikipedia.org/wiki/dbExpress "wikilink")16位元的BDE資料庫，在Visual Basic大量推行下，視覺化的Delphi又有新程式語言Java可選擇，開Pascal課程的學校越來越少，市面上願意出版Delphi的參考書本也越來越少，相對的找不到參考書籍的使用群也減少了。

## 參考文獻

## 外部連結

  - [Virtual Pascal官方網站](http://vpascal.ning.com)：和Delphi、Lazarus同為[視覺化整合開發環境](https://zh.wikipedia.org/wiki/可视化集成开发环境 "wikilink")。
  - [Delphi K.Top討論區](http://delphi.ktop.com.tw/)台灣Delphi設計師交流網站Delphi K.Top討論區
  - [捷康科技](http://embarcadero.qcomgroup.com.tw/)大中華區經銷商-捷康科技
  - [全球程式語言排名](http://www.tiobe.com/index.php/content/paperinfo/tpci/index.html)
  - [Delphi（RAD Studio）重要版本新功能](http://www.embarcadero.com/cn/products/rad-studio/whats-new)

## 参见

  - [Lazarus](../Page/Lazarus.md "wikilink")

  - [Kylix](../Page/Kylix.md "wikilink")

  - [VCL](https://zh.wikipedia.org/wiki/VCL "wikilink")

  - [LCL](../Page/Lazarus.md "wikilink")

  -
  - [Pascal](../Page/Pascal_\(程式語言\).md "wikilink")

  - [Free Pascal](../Page/Free_Pascal.md "wikilink")

  - [Sinter Information Corp興德資訊](https://zh.wikipedia.org/wiki/Sinter_Information_Corp興德資訊 "wikilink")

{{-}}

[Category:Pascal](https://zh.wikipedia.org/wiki/Category:Pascal "wikilink") [Category:集成开发环境](https://zh.wikipedia.org/wiki/Category:集成开发环境 "wikilink") [Category:.NET编程语言](https://zh.wikipedia.org/wiki/Category:.NET编程语言 "wikilink")

1.