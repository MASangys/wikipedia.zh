**OPC UA**的全名是OPC Unified Architecture（OPC統一架構）。是應用在[自动化技术](../Page/自动化技术.md "wikilink")的[機器對機器](../Page/機器對機器.md "wikilink")[网络传输协议](../Page/网络传输协议.md "wikilink")。有以下的特點：

  - 著重在資料收集以及控制為目的的通訊，用在工業設備以及系統中
  - [开源标准](../Page/开源标准.md "wikilink")：標準可以免費取得，實作設備不需授權費，也沒有其他限制
  - [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")：不限制作業系統或是程式語言
  - [面向服务的架构](https://zh.wikipedia.org/wiki/面向服务的架构 "wikilink")（SOA）
  - 強健的[信息安全](../Page/信息安全.md "wikilink")特性
  - 整合的[信息模型](https://zh.wikipedia.org/wiki/信息模型 "wikilink")，是資訊整合中，基础设施的基礎，制造商以及組織可以將其複雜的資料在OPC UA命名空間上建模，利用OPC UA面向服务的架构的優點。

## 歷史

OPC UA和其前身[开放平台通信](../Page/开放平台通信.md "wikilink")（OPC）是由同一個組織所開發，但兩者有顯著不同。基金會開發OPC UA的目的是發展比原來[OPC通訊架構](../Page/开放平台通信.md "wikilink")（只使用[Microsoft Windows的進程交換COM](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")/[DCOM](https://zh.wikipedia.org/wiki/Distributed_COM "wikilink")）更理想的架構，也更符合正在發展中的工業[自動化](https://zh.wikipedia.org/wiki/自動化 "wikilink")\[1\]

OPC UA的規格開發了三年，之後花了一年實現通訊協定，OPC UA的第一個版本在2006年問世。

到2015年10月10日為止，OPC UA最近的版本是1.03。除了client/server通訊協定外，新版的OPC UA也加入了publish/subscribe的機制。

## 創新

开放平台通信（OPC）和COM/[DCOM的結合雖讓开放平台通信可以順利推展](https://zh.wikipedia.org/wiki/Distributed_COM "wikilink")，但有以下的缺點：

  - 频繁配置DCOM的问题
  - 沒有可以規劃的逾時機能
  - 只適用於[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
  - 資料安全性較低
  - 沒有針對DCOM的控管（COM/DCOM類似黑盒子，開發者無法取得源代碼，因此需要處理一些相關的問題或是未充份實現的問題）

因為這些缺點以及許多其他的考慮因素，使得OPC基金會決定開發一個針對全新而且獨立的OPC UA通訊協定棧來取代COM/DCOM。其優點有：

  - 多平台實現，包括可攜式的[ANSI C](../Page/ANSI_C.md "wikilink")、[Java](../Page/Java.md "wikilink")及[.NET框架](../Page/.NET框架.md "wikilink")。
  - 可扩展性，從、智能致動器一直到大型计算机。
  - 支援[多線程](https://zh.wikipedia.org/wiki/多線程 "wikilink")，也有單線程/單任務的模式，以便將此通訊協定棧放在[嵌入式系統中](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")。
  - 基於新標準的資料安全性
  - 每個設備都有可以規劃的逾時機能
  - 大容量資料報文的組塊

通訊協定棧反映了架構創新的基礎，OPC UA架構是[服務導向架構](https://zh.wikipedia.org/wiki/服務導向架構 "wikilink")（SOA），以許多不同邏輯層級為其基礎。

OPC基礎服務是抽象形別的敘述，和通訊協定無關，是OPC UA機能的基礎。传输层將方法轉換為通訊協定，將資料[序列化](../Page/序列化.md "wikilink")（或反序列化），再傳送到網路上。 為了上述目的，定義了兩種[通訊協定](https://zh.wikipedia.org/wiki/通訊協定 "wikilink")，其中一個是以效率進行過最佳化的二進制[TCP訊定](../Page/传输控制协议.md "wikilink")，另一個則是[Web服务](../Page/Web服务.md "wikilink")導向的協定。

OPC資訊模型是所謂的全网状网络（Full Mesh Network），以[节点為基礎](../Page/节点_\(电信网络\).md "wikilink")。节点類似[物件導向程式設計](https://zh.wikipedia.org/wiki/物件導向程式設計 "wikilink")（OOP）中的[物件](https://zh.wikipedia.org/wiki/物件_\(電腦科學\) "wikilink")，可以包括各種的元資料。节点可以有屬性讓其他設備讀取（DA、HDA），有方法可以呼叫（Commands），也有可以啟動傳輸的触发事件（AE、DataAccess、DataChange）。节点包括過程資料，也包括其他種類的元資料。OPC命名空間中包括了形態模型。

客戶端軟體可以確認伺服器支援哪些行規（profile），有需要獲得這些資訊，知道伺服器是否只支援DA，或是還支援AE和HDA。而且可以得到伺服器是否支援特定行規的訊息。OPC UA還有以下重要的新機能：

  - 支援冗餘（Redundancy）
  - 雙方向連結的心跳報文（Heartbeat）（確定另外一端是否「活著」），這表示客戶端和伺服器都可以识别中断。
  - 傳輸資料及acknowledgement的緩衝（Buffering），連結遺失不會造成資料遺失，可以重新获取之前遺失的資料報文。

OPC UA 是在2006年10月在慕尼黑舉行的 OPC UA DevCon 中首次公開其協定，在 的 PLC 上已有許多的 UA 伺服器，在 Euros 嵌入式測試電路板中也有UA伺服器。Beckhoff PLC 的底層是 Windows XP嵌入式系統，而嵌入式控制器執行的作業系統是[实时操作系统](../Page/实时操作系统.md "wikilink") Euros。Embedded Labs Ltd 公司在他們執行在單晶片ARM控制器（64kb RAM） C++ UA Stack 上展示了 OPC-UA。2012年10月時德國的 Fraunhofer-Application Center IOSB-INA 以及工業信息技術研究所（Institute for industrial Information Technologies, inIT）證實了OPC-UA伺服器可以只使用15 kB RAM以及10 kB ROM，因此是晶片等級可以使用的通訊架構\[2\]。

## 通訊協定

OPC UA支援兩種通訊協定\[3\]，這兩種通訊協定的差異只有URL的不同，二進位通訊協定是**opc.tcp://Server**，而Web服务的通訊協定是**http://Server**，其他情形下，OPC UA對[应用程序接口](../Page/应用程序接口.md "wikilink")的作業完全透明，其他作業不受OPC UA的影響。

二進位通訊協定的效率最高，其overhead也最少，讓需要的資源最小化（不需要XML解析器、[SOAP及](https://zh.wikipedia.org/wiki/簡單物件存取協定 "wikilink")[HTTP](../Page/超文本传输协议.md "wikilink")，對嵌入式系統格外重要），提供最佳的互操控性（在實現時，二進位通訊協定提供較少的自由度），使用任意選取的TCP通道，可以較容易的進行[隧道协议](../Page/隧道协议.md "wikilink")，也可以從透過防火牆開啟。

Web服务（SOAP）通訊協定可以支援許多不同的工具（包括Java環境或是.NET環境的工具），使用標準HTTP(S)埠，可以和防火牆共同使用。

所有的實現方式都支援二進制通訊協定，但只有用.NET實現的設備才支援SOAP。

## 規範

OPC UA規範屬於多部份的規範，包括了以下部份：

1.  Concepts
2.  Security Model
3.  Address Space Model
4.  Services
5.  Information Model
6.  Mappings
7.  Profiles
8.  Data Access
9.  Alarms and Conditions
10. Programs
11. Historical Access
12. Discovery
13. Aggregates
14. PubSub

OPC UA規範和其他以COM為基礎的規範不同，OPC UA規範不是單純的應用規範。其中會描述典型的UA內部機制，這些會在通訊協定棧中處理，因此一般只有要將通訊協定棧導入特定硬體的人，或是要開發通訊協定棧的人才會對這些內容有興趣。

OPC UA應用程式的開發者需要撰寫程式和OPC UA API溝通，因此主要只需要用到API的說明文件。不過應用程式開發者也可能會對其中的第3、4、5部份感興趣\[4\]。

## UA通訊協定棧

UA應用程式在伺服器端或是客戶端，其架構上都有分層的結構。

有些部份和以往的COM Proxy/Stubs相等，由OPC協會提供。可移植性級別（portability level）是新的，簡化了引入UA ANSI C通訊協定棧的程序，也簡化了移植到其他平台的的難度。OPC協會也提供了針對Window及Linux的port layer。

## UA安全性

UA安全性包括了認證、授權、加密以及透過簽名實現的資料整合性。針對Web服务會使用，可以和[.NET和其他以](../Page/.NET框架.md "wikilink")[SOAP實現的軟體相容](https://zh.wikipedia.org/wiki/SOAP "wikilink")。若是二進制的版本，也會依循WS-SecureConversation的演算法，轉換為二進制的版本，稱為 UA Secure Conversation。

有另外一個混合的版本，程式是二進制的，而其傳輸層是用SOAP。這是在二進制的效率以及對防火牆友善的傳輸之間的妥協。因為是二進制的程式，會需要使用UA Secure Conversation。 其認證只使用[X.509](../Page/X.509.md "wikilink")認證，是靠程式開發者決定UA應用程式要使用哪一個證書存儲區。例如，也可能使用[Active Directory中的](../Page/Active_Directory.md "wikilink")[公開金鑰基礎建設](../Page/公開金鑰基礎建設.md "wikilink")（PKI）。

## OPC UA API

在許多程式語言中都有UA的API。在C、C++、Java及.NET中有商業的SDK。而至少在C、C++、Java、Javascript(node)及Python中有其開源的通訊協定棧。

## C++下的OPC UA

  - [open62541](https://github.com/open62541/open62541)計劃是OPC UA伺服器端及客戶端的開源計劃，以[Mozilla公共许可证](../Page/Mozilla公共许可证.md "wikilink")開放授權，有Linux及Windows的版本，也支援OS X、QNX及其他的嵌入式系統。
  - ASNeG計劃是C++開源（Apache License 2.0）OPC UA應用層及OPC UA 網頁伺服器（beta state，目前只有基本機能）\[5\]
  - [FreeOpcUa](https://freeopcua.github.io/)計劃提供開源（[LGPL](../Page/GNU宽通用公共许可证.md "wikilink")）的C++伺服器端及客戶端實現。
  - [UAF](https://github.com/uaf/uaf)計劃提供開源（LGPL）) 的C++/Python實現。

## .NET下的OPC UA

.NET版本的實現在底層用ANSI C，其餘部份使用.NET。因此只有網路端點的處理以及消息分塊的取得是從ANSI C的通訊棧處理的。反序列化直接在.NET中進行，會直接轉換為.NET的結構及物件。因此其效能會比先反序列化成C言言結構，再複制到.NET結構的效率要好。

## Java下的OPC UA

有許多Java語言的通訊棧，類似.NET，Java語言的通訊棧分為三種：

1.  用[Java本地接口](../Page/Java本地接口.md "wikilink")封裝完整的ANSI C通訊棧，這樣不利於可攜性。雖然通訊棧可以移殖到不同的作業系統，但需要個別的編輯這些程式。而且資料也需要複製到Java本地接口的邊界，不過在反序列化時會有C語言的效能。
2.  直接撰寫網路層的代碼（類似目前.Net的實現），用Java進行反序列化，省去了一次的資料複製，但仍會受到C堆疊的影響。
3.  撰寫原生的Java OPC UA通訊棧，這個是可攜性最好的，但是工程師需花費的心力也是最多的。Eclipse Milo專案提供一個純Java開源OPC UA實現，是依照UA 1.03客戶及伺服器規範\[6\]。

也有一些簡單的變體只支援WebService協定，此情形下，需要有可以支援[WS-Security](../Page/WS-Security.md "wikilink")的SOAP Toolkit。

## Python下的OPC UA

[FreeOpcUa](https://freeopcua.github.io/)專案提供了以Python程式語言實現的OPC UA（和Python 2, 3 及pypy相容），也提供了OPC-UA客戶及伺服器的高層次抽象化，可以用在客戶的應用中，或是漸漸延伸到客戶的應用。西瓜

## IEC 62541

IEC 62541是OPC UA的標準

| ID             | 發布日期    | 標題                                                       |
| -------------- | ------- | -------------------------------------------------------- |
| IEC/TR 62541-1 | 02/2010 | OPC Unified Architecture - Part 1: Overview and Concepts |
| IEC/TR 62541-2 | 02/2010 | OPC Unified Architecture - Part 2: Security Model        |
| IEC 62541-3    | 07/2010 | OPC Unified Architecture - Part 3: Address Space Model   |
| IEC 62541-4    | 10/2011 | OPC Unified Architecture - Part 4: Services              |
| IEC 62541-5    | 10/2011 | OPC Unified Architecture - Part 5: Information Model     |
| IEC 62541-6    | 10/2011 | OPC Unified Architecture - Part 6: Mappings              |
| IEC 62541-7    | 07/2012 | OPC Unified Architecture - Part 7: Profiles              |
| IEC 62541-8    | 10/2011 | OPC Unified Architecture - Part 8: Data Access           |
| IEC 62541-9    | 07/2012 | OPC Unified Architecture - Part 9: Alarms and Conditions |
| IEC 62541-10   | 07/2012 | OPC Unified Architecture - Part 10: Programs             |

IEC 62541簡介

## 相關條目

  -
  - [开放平台通信](../Page/开放平台通信.md "wikilink")（OLE for process control，簡稱OPC）

  -
## 腳註

## 參考資料

  - Wolfgang Mahnke, Stefan-Helmut Leitner, Matthias Damm: *OPC Unified Architecture.* Springer Verlag 2009;
  - Lange, J., Iwanitz, F., Burke, T. OPC From Data Access to Unified Architecture 2010;

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:自動化](https://zh.wikipedia.org/wiki/Category:自動化 "wikilink") [Category:计算机标准](https://zh.wikipedia.org/wiki/Category:计算机标准 "wikilink")

1.  Mahnke, Wolfgang; Leitner, Stefan-Helmut <https://library.e.abb.com/public/75d70c47268d78bfc125762d00481f78/56-61%203M903_ENG72dpi.pdf> OPC Unified Architecture - The future standard for communication and information modeling in automation\], 3/2009 [ABB Review 3/2009, page 56-61](http://www.abb.com/abbreview)
2.  [The world's smallest OPC-UA server comes from Germany](https://www.hs-owl.de/init/en/aktuelles/news/news-detail/news/the-worlds-smallest-opc-ua-server-comes-from-germany.html)
3.  Leitner, Stefan-Helmut; Mahnke, Wolfgang [OPC UA – Service-oriented Architecture for Industrial Applications](http://pi.informatik.uni-siegen.de/stt/26_4/01_Fachgruppenberichte/ORA2006/07_leitner-final.pdf), 11/2006 [Softwaretechnik-Trends](http://pi.informatik.uni-siegen.de/stt/index.html)
4.  Massaro, Simone [What is OPC UA and how does it affect your world?](http://www.plantengineering.com/index.php?id=1792&cHash=081010&tx_ttnews%5Btt_news%5D=35007), 5/15/2008 [planetengineering.com](http://www.plantengineering.com)
5.
6.