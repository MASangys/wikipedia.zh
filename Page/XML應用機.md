**XML應用機**是一种专用的计算机系統（或稱：[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")），它专门用来处理其它计算机系統之间的[XML](../Page/XML.md "wikilink")消息的交换，其功能有[XML](../Page/XML.md "wikilink")消息的加速、加密、路由、整合、[轉換](https://zh.wikipedia.org/wiki/XSL "wikilink")、交換等。与之相對的通用计算机系统（伺服器）則可以完成多种不同的任务，而非只具有某些特定的功能。

XML應用機的用戶主要為企業或機關單位，特別是在大型的企業或機關，以及經常與內外多方進行電子訊息聯繫、交換的企業或機關，這類型的用戶近年來為了強化資訊軟體與訊息的整合、交換，紛紛規劃與佈建[服務導向架構](../Page/面向服务的体系结构.md "wikilink")（Service Oriented Architecture，SOA）的資訊環境，而XML應用機能夠使SOA環境的建立及營運更加精省及效率。

此外，XML應用機也與其他伺服應用機（）相同，具有易於安裝佈建、易於組態配置、易於維護管理等特性。另外為了使特定工作獲得更專精強化的表現，通常在機內組件中用上特有的軟硬體設計。

## 發展歷史

### 第一代（1999年）

第一代的XML應用機約在1999年開始，由[DataPower](../Page/DataPower.md "wikilink")公司的兩組工程師團隊各自負責一種應用取向的機型，第一組團隊專注在如何進行大量的XML轉換（XML轉換團隊），第二組團隊則專注在如何讓XML的處理、加密等程序能更快執行（XML處理團隊）。

XML轉換團隊運用了特別的軟體及[特殊應用積體電路](../Page/特殊應用積體電路.md "wikilink")，使轉換效率比「一般用途性的伺服器再搭配相同功效的軟體執行」還快上一百倍。而買主方面，初期以具有大量[電子商務](https://zh.wikipedia.org/wiki/電子商務 "wikilink")（e-Commerce）交易、執行需求的網站業者為多，如[雅虎](../Page/雅虎.md "wikilink")（Yahoo\!）、[亞馬遜公司](../Page/亞馬遜公司.md "wikilink")（Amazon.com）等。而XML處理團隊則針對XML加密及整合進行高度最佳化的設計，XML加密及整合能適用在較多領域及層面。

在投入業者方面，早期主要有[DataPower](../Page/DataPower.md "wikilink")公司、Reactivity公司（）、Layer 7科技公司（）、以及Sarvega公司（）。其中Sarvega公司於2005年8月由[英特爾公司](https://zh.wikipedia.org/wiki/英特爾 "wikilink")（Intel）所[收購](https://zh.wikipedia.org/wiki/收購 "wikilink")，而DataPower公司亦於2005年10月由[IBM](../Page/IBM.md "wikilink")公司收購，剛收購時以IBM DataPower之名持續推行，之後於2006年5月改名成IBM WebSphere DataPower SOA Appliance，歸編到已推行多年的IBM WebSphere系列中。

### 第二代（2003年）

約從2003年開始XML應用機進入了第二代的發展，促使世代提升的主要原因與需求有二，一是有愈來愈多的電腦需要在公眾網路上以[SOAP協定進行XML訊息交換](https://zh.wikipedia.org/wiki/SOAP "wikilink")，由於公眾網路的安全防護性低，在此環境下傳送XML訊息必須對機密內容、重要過程進行防護，對此必須加入[加密](../Page/加密.md "wikilink")、[數位簽章](../Page/數位簽章.md "wikilink")以及預防[服務阻斷性攻擊等安全機制](https://zh.wikipedia.org/wiki/分散式阻斷服務攻擊 "wikilink")。

另一個原因是上述這些安全機制與交換工作，若是用純軟體式的電腦系統來執行則會耗佔相當多的時間，且這些交換也通常是企業或機關的重要商務或營運，因此必須盡可能爭取運作的時效性，能多節省時間也就意味著有更多的機會去爭取更多的商機及交易。此等條件與需求促使了用戶對專屬型執行機器的倚賴，特別是用戶期望新一代的XML應用機能運用[WS-Security](../Page/WS-Security.md "wikilink")這項安全標準為傳輸內容進行預先性的封包化，使安全性與交換標準性兩者都能獲得兼顧。

更簡單地說，第一代以XML運算為重點，第二代則以XML通訊為重點。運算主要是如何達到更快速、更大量的執行處理；交換則是如何更安全、更速省地完成交換傳輸。

## 共通特點

雖然近年來因市場的看好而有多家業者投入XML加速系統的市場，然而無論各業者間的技術、經驗、規模等差異為何，其所研製出的XML應用機都具有幾項共通相近的訴求特性：

  - 高度堅穩性，XML應用機在功效機制運作在網路環境中將被視為必要的一項環節、一個樞紐，倘若不夠堅穩將會連帶波及影響整體的網路運作。

<!-- end list -->

  - 平順協調性，在網路環境中XML應用機必須與其他「用一般性伺服器來執行XML工作」的系統能保持正確且良善地搭配協同運作，也必須與原有已存在於網路上的其他XML應用機或其他任何與XML相關的系統保持相同的良善運作。

<!-- end list -->

  - 管理操控性，具有搭配對應的軟體，能使XML應用機更容易地進行安裝、組態配置以及管理。

<!-- end list -->

  - 多樣轉換性，能夠將XML格式轉換成各種資料格式。

<!-- end list -->

  - 完整記錄性，內建用於正常運作外的儲存子系統，用來儲存運作過程中的各項記錄，以便維護檢視、行政稽核、除錯循跡之用。

<!-- end list -->

  - 標準支援性，內建各種XML相關標準的支援能力，包括[XSLT](../Page/XSLT.md "wikilink")、[XPath](../Page/XPath.md "wikilink")、[SOAP以及](https://zh.wikipedia.org/wiki/SOAP "wikilink")[WS-Security](../Page/WS-Security.md "wikilink")等。

<!-- end list -->

  - 升級容易性，能夠輕易地升級。

<!-- end list -->

  - 靈活搭配性，XML應用機的硬體部分必須能依據用戶的需求而彈性搭配組合，軟體部分也必須能針對軟體進行最佳化，以便能有效地解析與分析XML檔案。舉例而言，Reactivity公司的方案即不用搭配特定規格的硬體，其執行效能也必須比完全一體性特有設計的XML應用機還高，而作法上則是將特有設計限縮至組件的局部層次，如DataPower公司以自有研發的[XG4 XML晶片組](http://www.datapower.com/solutions/xg4.html)來設計XML應用機的機內加速執行卡，或如Tarari公司所研製的[T9000型硬體式XML處理器](https://web.archive.org/web/20060624210637/http://www.tarari.com/T9000/index.html)，並運用此處理器來製做XML加速執行卡，如此不用過度限定系統的軟硬體，也能夠獲得相近的加速效益。

## 取向類型

嚴格而論XML應用機只是個泛稱，泛指各種能對XML進行專精化執行的設備硬體，而投入此類研製的業者則進一步對這些設備硬體以專精的功效取向為區別而分別給予專業的類型稱呼，以下是幾種常見的類稱：

  - **XML加速執行器**（XML accelerator），一般來說這類取向的機型多以產業性標準的硬體為基礎，然後再搭配特有的軟硬體設計，以此方式讓[XPath](../Page/XPath.md "wikilink")的執行處理獲得加速性，若以每秒能完成多少個XML訊息的處理作為效率基準，則此類的加速器多半能帶來10倍—100倍不等的效能提升。

<!-- end list -->

  - **集成應用機**（，也稱：**應用程式路由器**），此類的機型主要訴求為整合功效，能讓多部電腦系統間的訊息傳遞溝通，以及機制運作協同等需求以更快速、更容易的方式實現。

<!-- end list -->

  - **XML安全网关**（XML security gateway，也稱：**XML防火牆**，），此類機型主要能支援[WS-Security](../Page/WS-Security.md "wikilink")的安全機制標準，並運用特有的硬體設計使應用機能快速地執行XML相關的加解密運算。

<!-- end list -->

  - **XML功效型網路**（），在既有的IP型網上設想出一個抽象層（abstraction layer），此抽象層的用意在於去除、吸收不利於交換或整合的各項妨礙，包括去除不安全因素、不相容性、傳遞延遲等差異問題，以便讓[XML](../Page/XML.md "wikilink")訊息、[網路服務](https://zh.wikipedia.org/wiki/网络服务 "wikilink")（Web Service）、[面向服务的体系结构](../Page/面向服务的体系结构.md "wikilink")（SOA）等能更無礙地運作。

## 投入業者

  - Layer 7 科技公司（）
  - Cast Iron 系統公司（[Cast Iron Systems](https://web.archive.org/web/20060813105148/http://www.castironsys.com/)）
  - InfoTone 通訊公司（[InfoTone Communications](http://www.infotone.com/)）
  - [DataPower 公司](../Page/DataPower.md "wikilink")**（已屬IBM公司）**
  - Reactivity 公司（）
  - Sarvega 公司（）**（已屬Intel公司）**
  - Tarari 公司（[Tarari, Inc.](https://web.archive.org/web/20060901113700/http://www.tarari.com/index2.asp)）- Fabless型態的半導體業者，專注於XML加速用晶片（ASIC）的研發。

## 相关条目

  - [XML](../Page/XML.md "wikilink") - 可擴展標記語言。
  - [XSLT](../Page/XSLT.md "wikilink") - [XSL規範的一部份](https://zh.wikipedia.org/wiki/XSL "wikilink")，是[XML](../Page/XML.md "wikilink")檔案進行轉換的轉化程式語言。
  - [SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink") - 简单对行访问协议，[網路服務](https://zh.wikipedia.org/wiki/网络服务 "wikilink")（Web Service）的通訊協定。
  - （）- 具備[XML](../Page/XML.md "wikilink")功效的網路。
  - （[WS-Security](../Page/WS-Security.md "wikilink")）- [網路服務](https://zh.wikipedia.org/wiki/网络服务 "wikilink")（Web Service）在跨網交換訊息時的安全機制標準
  - （[Apache Axis](../Page/Apache_Axis.md "wikilink")）- 一套以[開放原碼](https://zh.wikipedia.org/wiki/開放原碼 "wikilink")、[Java](../Page/Java.md "wikilink")程式語言、[XML](../Page/XML.md "wikilink")格式等為基礎的[網路服務](https://zh.wikipedia.org/wiki/网络服务 "wikilink")（Web Service）框架。
  - （）- 整合應用機。

## 外部連結

  - [IBM WebSphere DataPower SOA Appliances](http://www-306.ibm.com/software/integration/datapower/) （IBM官方網站的DataPower網頁）
  - [IBM Acquires DataPower](http://www-03.ibm.com/press/us/en/pressrelease/7934.wss) （IBM公司收購DataPower公司的新聞稿）
  - [Intel® XML Appliance Products](http://www.intel.com/cd/ids/developer/asmo-na/eng/240839.htm) （英特爾官方網站的XML應用機網頁）
  - [Intel Acquires Sarvega To Bolster Software, Enterprise Platform Strategies](http://www.intel.com/pressroom/archive/releases/20050817corp.htm) （英特爾公司收購Sarvega公司的新聞稿）

[Category:網路硬體](https://zh.wikipedia.org/wiki/Category:網路硬體 "wikilink") [Category:信息技术](https://zh.wikipedia.org/wiki/Category:信息技术 "wikilink")