**Microsoft Azure**
是[微軟的公用雲端服務](https://zh.wikipedia.org/wiki/微軟 "wikilink")
(Public Cloud Service) 平台，是微軟線上服務 (Microsoft Online Services) 的一部份，自
2008 年開始發展，2010年2月份正式推出，目前全球有54座資料中心以及44個CDN跳躍點 (POP)，並且於2015年時被 Gartner
列為雲端運算的領先者\[1\]。

目前 Microsoft Azure 已包含 30 餘種服務，數百項功能，並且為微軟帶來了12億美元的獲利 (2015年度)
已规划网络基础结构并确定了要迁移到云的数台 VM。 可以选择多种方法创建 VM。
选择哪种方法取决于你所熟悉的环境。 Azure 支持使用基于 Web 的门户来创建和管理资源。
还可以选择使用 MacOS、Windows 和 Linux 上运行的命令行工具。\[2\]。

## 發展歷程

Microsoft Azure 的發展最早源於2006，由Amitabh Srivastava與Dave
Culter所主導，當時雲端運算在市場上還沒有受到關注，微軟當時所需解決的問題是需要整合與提升線上服務的管理與運用能力，而提出的代號為
Red Dog 的計畫，該計畫要解決的是：

  - 開發一個運算資源的管理工具，稱為 Hypervisor，後來演變為 Hyper-V 平台以及 Azure 的虛擬機器基礎建設。
  - 具有自主管理能力的分散式管理系統，以管理大量的運算資源，稱為 Fabric Controller，目前為 Azure
    基礎建設服務的重要元件之一。
  - 高度可用性與備援能力的分散式儲存系統，此為 Azure Storage 的源頭。
  - 支援上述平台的開發工具。

經過數年的開發，Azure平台於2010年2月正式推出公開服務版 (General Availability)，當時的名稱為 Azure
Service Platform，包含 [Azure Cloud
Service](https://zh.wikipedia.org/wiki/Microsoft_Azure_Cloud_Service "wikilink")、[Azure
Storage](https://zh.wikipedia.org/wiki/Microsoft_Azure_Storage "wikilink")、[SQL
Azure](https://zh.wikipedia.org/wiki/SQL_Azure "wikilink") 與 AppFabric
四種服務，且僅提供[平台服務](https://zh.wikipedia.org/wiki/PaaS "wikilink")
(PaaS) 一種。

2010年下半年更新管理介面為[Microsoft
Silverlight開發的管理介面](https://zh.wikipedia.org/wiki/Microsoft_Silverlight "wikilink")，並新增
VM Role
([虛擬機器的前身](https://zh.wikipedia.org/wiki/Microsoft_Azure_Virtual_Machine "wikilink"))，以及
Azure Connect (Azure 虛擬網路的 VPN 連線的前身)。

2012 年是 Azure 發展的里程碑之一，共做了下列改變：

  - 更新管理介面，採用 HTML5 技術。
  - 首次發行[基礎建設服務](https://zh.wikipedia.org/wiki/IaaS "wikilink")
    (IaaS)，包含[虛擬機器與](https://zh.wikipedia.org/wiki/Microsoft_Azure_Virtual_Machine "wikilink")[虛擬網路](https://zh.wikipedia.org/wiki/Microsoft_Azure_Virtual_Network "wikilink")。
  - 發行 Website 服務，並首次支援 .NET 以外的平台。
  - 發行 Media Service 服務。
  - 2014 年下半年發行 Mobile Service，提供行動應用必須的後台服務，包含資料、識別、通知以及 API 等。

2013\~2014年加入 Hadoop 服務 (HDInsight)、Streaming Analytics
(資料流分析)、資料工廠服務、事件中樞與機器學習等與大數據相關的服務，同時更新
SQL Azure 大幅提升效能。

2014 年微軟將 Windows Azure 更名為 Microsoft Azure，以修正其市場方向，也為了要讓外界不再認為 Azure
只能跑 Windows 作業系統 \[3\]。

2015 年將 Website 與 Mobile Service 合併，並新增 API App 與 Logic App 合稱為 Azure
App Services，並推出 Azure Redis Cache 取代原有的 Azure Shared Cache；推出 Azure
Application Insights 以支援應用程式層級的監測數據能力；新增 Azure DNS 以支援 DNS 代管、Azure
Search 支援搜尋能力等。

2016 年微軟推出 Azure Functions (函數服務) 以支援無伺服器 (Serverless) 的應用，成為繼 AWS
Lambda 與 Google CloudFunction 之後的第三個具備無伺服器應用程式開發能力的主流雲端供應商，同時也推出了
Service Fabric 以支援微服務 (Microservices) 的開發。

目前 Azure 上的服務與功能仍然在增加中。

## 基礎建設

Microsoft Azure是專為在微軟建設的資料中心管理所有伺服器，網路以及儲存資源所開發的一種特殊版本Windows
Server作業系統，它具有針對資料中心架構的**自我管理（autonomous）**機能，可以自動監控劃分在資料中心數個不同的分區（微軟將這些分區稱為Fault
Domain）的所有伺服器與儲存資源，自動更新修補程式，自動執行虛擬機器部署與鏡像備份（Snapshot
Backup）等能力，Microsoft Azure被安裝在資料中心的所有伺服器中，並且定時和中控軟體**Microsoft
Azure Fabric Controller**進行溝通，接收指令以及回傳執行狀態資料等等，系統管理人員只要透過Microsoft Azure
Fabric Controller就能夠掌握所有伺服器的執行狀態，Fabric
Controller本身是融合了很多微軟系統管理技術的總成，包含對虛擬機器的管理（System
Center Virtual Machine Manager），對作業環境的管理（System Center Operation
Manager），以及對軟體部署的管理（System Center Configuration Manager）等，在Fabric
Controller中被發揮得淋漓盡致，如此才能夠達成透過Fabric Controller來管理在資料中心中所有伺服器的能力。

Microsoft Azure環境除了各式不同的虛擬機器外，它也為應用程式打造了分散式的巨量儲存環境（Distributed Mass
Storage），也就是Azure
Storage，應用程式可以根據不同的儲存需求來選擇要使用哪一種或哪幾種儲存的方式，以保存應用程式的資料，而微軟也盡可能的提供應用程式的相容性工具或介面，以降低應用程式移轉到Microsoft
Azure上的負擔。

Microsoft Azure不但是開發給外部的雲端應用程式使用的，它也作為微軟許多雲端服務的基礎平台。

### Fabric Controller

[Windows_Azure_Architecture.png](https://zh.wikipedia.org/wiki/File:Windows_Azure_Architecture.png "fig:Windows_Azure_Architecture.png")

Fabric Controller 是管理微軟資料中心的 Azure
運算資源的中控管理系統，扮演心臟的角色，它負責自動化的管理資料中心內所有的實體伺服器，包含由使用者要求的
Azure Guest OS 的部署工作，定時的Hotfix修補，機器狀態回報，以及管理不同版本的VM部署影像的複製等重要核心工作，Fabric
Controller 本身也具有高可用性，並且有一個管理 Fabric Controller 的子系統（稱為"Utility" Fabric
Controller）來管理與監控 Fabric Controller 的運作。

Fabric Controller也處理虛擬機器的健康管理（Health Management）工作，當Windows Azure Guest
OS發生當機時，會由Fabric Controller自動選擇不同的實體機器重新部署與啟動。當應用程式提交即地更新（In-place
upgrade）時，Fabric Controller也負責即地更新的協調工作，以保持應用程式在更新時仍可保持SLA所承諾的服務水準。

### RDFE

RDFE (Red Dog's Front-End) 是 Azure 的前端介面，負責接取來自任何存取 Azure
的應用程式的命令，它是一組可控制與管理 Azure 服務的
[REST](https://zh.wikipedia.org/wiki/REST "wikilink")
APIs，對外接受應用程式的要求並回應，對內則是扮演大腦的角色，Azure
資源的配置策略與方式均是由 RDFE 所進行，包含虛擬機器的 Fault Domain (失效域) 與 Upgrade
Domain (更新域) 的配置與計算都是由 RDFE 處理。

### 網路基礎建設

[Windows_Azure_Network_and_Computes_Architecture.png](https://zh.wikipedia.org/wiki/File:Windows_Azure_Network_and_Computes_Architecture.png "fig:Windows_Azure_Network_and_Computes_Architecture.png")

Microsoft Azure 資料中心內部的架構自 2010 年正式上市開始就不斷的與日俱進，早期 Azure 使用的是 DLA
網路架構，採用多層次分層的設計方式，由資料中心的路由器 (Internet 邊界) 開始，接續第二層的存取路由器
(Access Router)，再接至第三層的聚合負載平衡器 (Aggregation Load
Balancer)，最後到伺服器所在的伺服器機架頂的交換器 (Top-Of-Rack
Switch)，雖然符合早期雲端所需要的網路建設作法，但問題在於它並沒有網路備援能力，當問題發生在主要節點如第二層或第三層的設備時，伺服器將無法與外界連繫，使服務中斷，且使用
DLA 網路架構下的資源配置極限為 10000 台實體伺服器，頻寬為 120GB (平均一台只有 0.012GB
流量)，無法供給充足的網路頻寬與效能給資料中心內的資源使用。

2012 年起，微軟開始建構新的第二代資料中心網路建設，採用平滑化網路拓樸 (Flat Network Topology) 設計，代號為
Quantum10，其理論來源是 1952 年的
，在每個網路設備間都採用了網狀的連線，亦即每個設備彼此之間都有備援能力，而且配置適當的網路節點設備，可以提供更大量的頻寬與資源配置，Quantum10
的第一代可供應 30000 台伺服器 30000GB 的流量 (平均一台 1TB 流量)。2013年更提升至 Quantum10
v2，可支援在不同服務群集 (例如運算群集與儲存群集) 之間的網路通訊，基於 Leaf-Spine 網路拓樸
\[4\]的特性，不論是走哪一條通訊路徑，其成本都是等價 [(Equal-Cost Multipath,
ECMP)](../Page/等價多路徑路由.md "wikilink")，用來減少因網路擴展生成樹 (Spanning Tree)
產生的網路負擔，其資源供應可跨越不同群集，頻寬也提升到 50000GB。

隨著 Azure 服務愈來愈多元，其服務共用網路基礎建設已經變成常態，為了要讓各服務可順暢存取網路功能 (例如與 Azure
虛擬網路的整合)，微軟開始發展適用於資料中心的網路相關技術，並設計相關輔助資源。2015年微軟在
提出了數個重要設計成果 \[5\]：

  - Azure 智慧網路卡 (Azure SmartNIC)，它採用了
    [FPGA](https://zh.wikipedia.org/wiki/FPGA "wikilink") 晶片輔助 CPU
    進行網路流量的處理，可支援加密與遠端記憶體直接存取
    ([RDMA](https://zh.wikipedia.org/wiki/远程直接内存访问 "wikilink")) 的功能，降低
    RDMA 花費在 CPU 上的運算時間。
  - 虛擬過濾平台 (Virtual Filtering Platform)，使用於 Azure Hyper-V 內的 VMSwitch
    元件，它可以在網路流量進入網路實體層前先進行處理，包括存取控制表、網路安全、虛擬網路與軟體負載平衡等作業，並且支援
    40GbE 以上的高速網路。
  - 交換器抽象介面 (Switch Abstraction Interface,
    SAI)，定義了交換器作業系統的功能規格，目前已被()協會接受。
  - Azure Cloud
    Switch，一種具備[網路交換器能力的網路作業系統](../Page/網路交換器.md "wikilink")，基於交換器抽象介面所設計，使用微軟自製的[Linux作業系統](../Page/Linux.md "wikilink")\[6\]。
  - 網路管理[微服務化](../Page/微服務.md "wikilink")，以及[軟體定義網路的基礎建設](../Page/軟體定義網路.md "wikilink")。

## 服務位置

Microsoft Azure 目前於全球有54個資料中心 (另有6個正興建中)，以及44個 CDN 跳躍點
\[7\]，以提供全球使用者所需的資源。但因為當地法規與行政的要求，因此並不是所有的使用者都能使用所有的區域，目前
Azure 服務區域有分為三種：

  - Azure Cloud: 意指全球的資料中心，共有 54 個據點：
      - 位於澳洲的資料中心，共有4座，分別位於[新南威爾斯與](https://zh.wikipedia.org/wiki/新南威爾斯 "wikilink")[維多利亞](https://zh.wikipedia.org/wiki/維多利亞 "wikilink")
        (位於坎培拉的兩座正興建中)。
      - 位於印度的資料中心，共有3座，分別位於[孟買](https://zh.wikipedia.org/wiki/孟買 "wikilink")、[金奈與](https://zh.wikipedia.org/wiki/金奈 "wikilink")[浦那](../Page/浦那.md "wikilink")，必須是於由印度微軟認可的大量授權客戶與合作夥伴才能使用，線上申請預計於2016開放。
      - 位於德國的資料中心，共有2座，分別位於[馬德堡與](https://zh.wikipedia.org/wiki/馬德堡 "wikilink")[法蘭克福](https://zh.wikipedia.org/wiki/法蘭克福 "wikilink")，於資料信任者模式
        (Data Trustee Model) 下提供服務。
  - Azure China:
    意思位於中國的資料中心，共有2座，分別位於[北京與](https://zh.wikipedia.org/wiki/北京 "wikilink")[上海](https://zh.wikipedia.org/wiki/上海 "wikilink")，且並非由微軟直接經營，而是由中國代理商世紀互聯公司
    (21vianet) 所經營，因此可用服務會比全球的服務要少，更新也較慢。
  - Azure Government Cloud (GOV):
    負責管理政府雲端服務的資料中心，共有6座，目前僅美國境內設置，且具有政府等級的資訊安全規範。

| 洲別                                                | 地區(中文)                                              | 地區(英文)               | 區域別\[8\]               | 地理位置                                                                                                | 說明                              |
| ------------------------------------------------- | --------------------------------------------------- | -------------------- | ---------------------- | --------------------------------------------------------------------------------------------------- | ------------------------------- |
| [北美洲](../Page/北美洲.md "wikilink")                  | [美國中部](https://zh.wikipedia.org/wiki/美國 "wikilink") | Central US           | Azure Cloud (Region 1) | [愛荷華州](https://zh.wikipedia.org/wiki/愛荷華州 "wikilink")                                               |                                 |
| 北美洲                                               | 美國東部                                                | East US              | Azure Cloud (Region 1) | [維吉尼亞州](https://zh.wikipedia.org/wiki/維吉尼亞州 "wikilink")                                             |                                 |
| 北美洲                                               | 美國東部2                                               | East US 2            | Azure Cloud (Region 1) | [維吉尼亞州](https://zh.wikipedia.org/wiki/維吉尼亞州 "wikilink")                                             |                                 |
| 北美洲                                               | 美國政府機構愛荷華州                                          | Central US GOV       | Azure Government Cloud | [愛荷華州](https://zh.wikipedia.org/wiki/愛荷華州 "wikilink")                                               | 專供美國聯邦政府、州政府、地方政府、原住民政府及其合作夥伴使用 |
| 北美洲                                               | 美國政府機構維吉尼亞州                                         | East US GOV          | Azure Government Cloud | [維吉尼亞州](https://zh.wikipedia.org/wiki/維吉尼亞州 "wikilink")                                             | 專供美國聯邦政府、州政府、地方政府、原住民政府及其合作夥伴使用 |
| 北美洲                                               | 美國政府機構亞利桑那州                                         | Arizona US GOV       | Azure Government Cloud | [亞利桑那州](../Page/亞利桑那州.md "wikilink")                                                                | 專供美國聯邦政府、州政府、地方政府、原住民政府及其合作夥伴使用 |
| 北美洲                                               | 美國政府機構德克薩斯州                                         | Texas US GOV         | Azure Government Cloud | [德克薩斯州](https://zh.wikipedia.org/wiki/德克薩斯州 "wikilink")                                             | 專供美國聯邦政府、州政府、地方政府、原住民政府及其合作夥伴使用 |
| 北美洲                                               | 美國國防部東部                                             | US DoD East          | Azure Government Cloud | (未公布)                                                                                               | 專供美國國防部使用                       |
| 北美洲                                               | 美國國防部中部                                             | US DoD Central       | Azure Government Cloud | (未公布)                                                                                               | 專供美國國防部使用                       |
| 北美洲                                               | 美國中部                                                | Central US           | Azure Cloud (Region 1) | [愛荷華州](https://zh.wikipedia.org/wiki/愛荷華州 "wikilink")                                               |                                 |
| 北美洲                                               | 美國中北部                                               | North Central US     | Azure Cloud (Region 1) | [伊利諾州](https://zh.wikipedia.org/wiki/伊利諾州 "wikilink")                                               |                                 |
| 北美洲                                               | 美國中南部                                               | South Central US     | Azure Cloud (Region 1) | [德克薩斯州](https://zh.wikipedia.org/wiki/德克薩斯州 "wikilink")                                             |                                 |
| 北美洲                                               | 美國中西部                                               | West Central US      | Azure Cloud (Region 1) | (未公布)                                                                                               |                                 |
| 北美洲                                               | 美國西部                                                | West US              | Azure Cloud (Region 1) | [加利福尼亞州](https://zh.wikipedia.org/wiki/加利福尼亞州 "wikilink")                                           |                                 |
| 北美洲                                               | 美國西部2                                               | West US 2            | Azure Cloud (Region 1) | (未公布)                                                                                               |                                 |
| 北美洲                                               | [加拿大中部](../Page/加拿大.md "wikilink")                  | Central Canada       | Azure Cloud (Region 1) | [多倫多](https://zh.wikipedia.org/wiki/多倫多 "wikilink")                                                 |                                 |
| 北美洲                                               | 加拿大東部                                               | East Canada          | Azure Cloud (Region 1) | [魁北克](https://zh.wikipedia.org/wiki/魁北克 "wikilink")                                                 |                                 |
| [歐洲](https://zh.wikipedia.org/wiki/歐洲 "wikilink") | 北歐                                                  | North Europe         | Azure Cloud (Region 1) | [愛爾蘭](https://zh.wikipedia.org/wiki/愛爾蘭 "wikilink")                                                 |                                 |
| 歐洲                                                | 西歐                                                  | West Europe          | Azure Cloud (Region 1) | [荷蘭](https://zh.wikipedia.org/wiki/荷蘭 "wikilink")                                                   |                                 |
| 歐洲                                                | [德國中部](https://zh.wikipedia.org/wiki/德國 "wikilink") | West Europe          | Azure Cloud (Region 1) | [法蘭克福](https://zh.wikipedia.org/wiki/法蘭克福 "wikilink")                                               | 僅設籍於德國的公司可申請使用                  |
| 歐洲                                                | 德國東北部                                               | West Europe          | Azure Cloud (Region 1) | [馬德堡](https://zh.wikipedia.org/wiki/馬德堡 "wikilink")                                                 | 僅設籍於德國的公司可申請使用                  |
| 歐洲                                                | [英國南部](https://zh.wikipedia.org/wiki/英國 "wikilink") | United Kingdom South | Azure Cloud (Region 1) | [倫敦](https://zh.wikipedia.org/wiki/倫敦 "wikilink")                                                   |                                 |
| 歐洲                                                | 英國西部                                                | United Kingdom West  | Azure Cloud (Region 1) | [卡地夫](https://zh.wikipedia.org/wiki/卡地夫 "wikilink")                                                 |                                 |
| 歐洲                                                | [法國中部](https://zh.wikipedia.org/wiki/法國 "wikilink") | France Central       | Azure Cloud (Region 1) | (尚未宣佈)                                                                                              | (興建中)                           |
| 歐洲                                                | 法國南部                                                | France South         | Azure Cloud (Region 1) | (尚未宣佈)                                                                                              | (興建中)                           |
| [亞洲](https://zh.wikipedia.org/wiki/亞洲 "wikilink") | 東亞                                                  | East Asia            | Azure Cloud (Region 2) | [香港](https://zh.wikipedia.org/wiki/香港特別行政區 "wikilink")                                              |                                 |
| 亞洲                                                | 東南亞                                                 | Southeast Asia       | Azure Cloud (Region 2) | [新加坡](../Page/新加坡.md "wikilink")                                                                    |                                 |
| 亞洲                                                | [日本東部](../Page/日本.md "wikilink")                    | Japan East           | Azure Cloud (Region 2) | [東京](https://zh.wikipedia.org/wiki/東京 "wikilink")，[埼玉](https://zh.wikipedia.org/wiki/埼玉 "wikilink") |                                 |
| 亞洲                                                | 日本西部                                                | Japan West           | Azure Cloud (Region 2) | [大阪](https://zh.wikipedia.org/wiki/大阪 "wikilink")                                                   |                                 |
| 亞洲                                                | [印度中部](../Page/印度.md "wikilink")                    | Central India        | Azure Cloud (Region 2) | [浦那](../Page/浦那.md "wikilink")                                                                      |                                 |
| 亞洲                                                | 印度西部                                                | South India          | Azure Cloud (Region 2) | [孟買](https://zh.wikipedia.org/wiki/孟買 "wikilink")                                                   |                                 |
| 亞洲                                                | 印度南部                                                | West India           | Azure Cloud (Region 2) | [清奈](https://zh.wikipedia.org/wiki/清奈 "wikilink")                                                   |                                 |
| 亞洲                                                | [中國東部](../Page/中國.md "wikilink")                    | China East           | Azure China            | [上海](https://zh.wikipedia.org/wiki/上海 "wikilink")                                                   | 由世紀互聯 (21Vianet) 代理營運           |
| 亞洲                                                | 中國北部                                                | China North          | Azure China            | [北京](https://zh.wikipedia.org/wiki/北京 "wikilink")                                                   | 由世紀互聯 (21Vianet) 代理營運           |
| 亞洲                                                | [韓國中部](https://zh.wikipedia.org/wiki/韓國 "wikilink") | Central Korea        | Azure Cloud (Region 2) | [首爾](https://zh.wikipedia.org/wiki/首爾 "wikilink")                                                   |                                 |
| 亞洲                                                | 韓國南部                                                | South Korea          | Azure Cloud (Region 2) | [釜山](https://zh.wikipedia.org/wiki/釜山 "wikilink")                                                   |                                 |
| [大洋洲](../Page/大洋洲.md "wikilink")                  | [澳洲東部](https://zh.wikipedia.org/wiki/澳洲 "wikilink") | Australia East       | Azure Cloud (Region 2) | [新南威爾斯](https://zh.wikipedia.org/wiki/新南威爾斯 "wikilink")                                             |                                 |
| 大洋洲                                               | 澳洲東南部                                               | Australia Southeast  | Azure Cloud (Region 2) | [維多利亞](https://zh.wikipedia.org/wiki/維多利亞 "wikilink")                                               |                                 |
| 大洋洲                                               | 澳洲中部                                                | Australia Central    | \-                     | [坎培拉](https://zh.wikipedia.org/wiki/坎培拉 "wikilink")                                                 | 興建中                             |
| 大洋洲                                               | 澳洲中部2                                               | Australia Central 2  | \-                     | [坎培拉](https://zh.wikipedia.org/wiki/坎培拉 "wikilink")                                                 | 興建中                             |
| [南美洲](../Page/南美洲.md "wikilink")                  | 巴西南部                                                | Brazil South         | Azure Cloud (Region 3) | [聖保羅州](https://zh.wikipedia.org/wiki/聖保羅州 "wikilink")                                               |                                 |
| [非洲](../Page/非洲.md "wikilink")                    | 南非西部                                                | South Africa West    | \-                     | [開普敦](../Page/開普敦.md "wikilink")                                                                    | 興建中                             |
| [非洲](../Page/非洲.md "wikilink")                    | 南非北部                                                | South Africa North   | \-                     | [約翰尼斯堡](https://zh.wikipedia.org/wiki/約翰尼斯堡 "wikilink")                                             | 興建中                             |
|                                                   |                                                     |                      |                        |                                                                                                     |                                 |

## 管理模式

[AzurePortalv2010.png](https://zh.wikipedia.org/wiki/File:AzurePortalv2010.png "fig:AzurePortalv2010.png")
Web Forms 版本) (2010年版)\]\]
[Windows_Azure_Management_Portal.png](https://zh.wikipedia.org/wiki/File:Windows_Azure_Management_Portal.png "fig:Windows_Azure_Management_Portal.png")
版本) (2011年版)\]\]
[AzurePortalHtml5.png](https://zh.wikipedia.org/wiki/File:AzurePortalHtml5.png "fig:AzurePortalHtml5.png")
版本) (2012年版)\]\]
[AzurePortalIbiza.png](https://zh.wikipedia.org/wiki/File:AzurePortalIbiza.png "fig:AzurePortalIbiza.png")

Microsoft Azure 早期開發時，使用的是以服務為主體的管理方式，稱為服務管理模式 (Azure Service
Management, ASM)，其管理觀點是依服務來區分，這個模式在目前的 Azure Portal (2012年發佈的管理介面) 以及
Azure PowerShell、Azure CLI 等都支援，也是 RDFE 一開始就支援的
API，服務管理的好處是以服務為主體，其管理方式環繞著服務，在小型應用
(使用的資源種類很少時) 相當方便，但當服務愈來愈多種，應用也愈來愈大 (橫跨多種服務的應用) 時，這樣的方法反而會導致管理上的不便。

為了改良服務管理模式的缺點，微軟在 2014 年提出了資源管理 (Azure Resource Management, ARM)
的新模式，其管理觀點是依資源來區分，應用程式的資源可組織在同一個或不同的群組，管理人員可以利用資源群組
(Resource Group) 來組織資源以及使用資源的服務
(例如虛擬機器會使用到網路卡、網路安全群組、公開IP、負載平衡器與虛擬網路等資源)。資源管理模式適當中大型的應用，但小型應用也同樣適合。資源管理模式由
Azure Ibiza Portal (2015年公開服務的新管理介面)、Azure PowerShell v1.0 起、Azure CLI
v1.0 起適用。資源管理模式同時也引入了資源範本 (Resource Template)
的概念，允許管理人員一次部署多種或大量服務與資源，微軟也提供了
Azure Quickstart Template \[9\]供入門的系統管理人員使用。

## 服務

Microsoft Azure 現已包含 30
餘種服務，以及數百項功能，針對雲端以及[物聯網與](https://zh.wikipedia.org/wiki/物聯網 "wikilink")[大數據等所需要的各類型服務提供](../Page/大數據.md "wikilink")。

### 運算服務

運算服務是以 Azure 內的伺服器群經過[虛擬化後形成的大量虛擬機器](../Page/虛擬化.md "wikilink") (Virtual
Machine) 所組成的服務群，其主要功能是提供 CPU、記憶體等具有運算能力的資源。在 Azure 中的運算資源分成 IaaS 與 PaaS
兩種：

  - IaaS
      - Virtual Machine (VM): 提供標準與客制化後的虛擬機器映像
        (Images)，供使用者於雲端產生虛擬機器使用，也可以利用上傳映像的方式，使用客制化映像來生成虛擬機器。Azure
        可支援 Windows 與特定的 Linux 作業系統。
      - RemoteApp: 提供桌面虛擬化 (Desktop Virtualization) 的基礎建設，企業可依需求產生預設範本
        (搭載 Office 應用程式) 或是上傳自訂的範本生成，其應用近似於在地端建設的 Remote Desktop
        Service VDI。
  - PaaS
      - Cloud Service: 提供標準的作業系統映像，開發人員可使用 Azure SDK 開發程式，發行到 Cloud
        Service 內，適合具高度客制化的大型應用程式。
      - Service Fabric: 提供標準的作業系統映像，開發人員可使用 Azure Service Fabric SDK
        開發微服務 (Microservice) 應用程式，可視為下一代的 Azure Cloud Service。
      - Azure Kubernetes Service (AKS): 提供以
        [Docker](https://zh.wikipedia.org/wiki/Docker "wikilink")
        容器格式為基礎，並由微軟維運
        [Kubernetes](https://zh.wikipedia.org/wiki/Kubernetes "wikilink")
        叢集，用以支援容器部署，調度與管理功能。
      - Azure Application Services，提佈署網頁應用程式的 Web Apps, 以及具無伺服器
        (Serverless) 應用開發能力的 Logic Apps 與 Functions 服務。

### 應用服務

Microsoft Azure 為了要有效降低將應用程式移植到雲端所需的負擔，微軟在 2012 年度的 Spring Release
中首次發佈了 Azure Website 服務，支援 .NET 以及像
PHP、Java、Python、Ruby、node.js 等非微軟平台，成功吸引開發網站的 Web
開發人員以及企業將其網站移轉到 Azure，Azure Website 為
Virtual Machine 以外最受歡迎的 PaaS 服務。同年底，微軟也發布了為行動應用程式 (Mobile App) 提供後台支援的
Mobile Service，以簡單的管理機制與充份的 SDK 支援吸引行動應用開發人員使用，這兩個服務在 2015 年時合併為 Azure
App Service，並加入了發展 RESTful API 應用的 API App 以及以視覺化設定執行流程控制的 Logic App。

為了要支援大型應用程式的發展，微軟在 Azure 發布初期就提供了 AppFabric 服務，包含 Access Control Service
以及 Service Bus 功能，Access Control Service 負責統一帳戶管理機制，後期也引入了 Social
Identity 的功能，可與 Facebook, Google 等社群連結並共用其帳戶；Service Bus 則是提供了訊息轉送
(Message Relay)、佇列 (Queue) 與主題訂閱 (Topics) 的功能，隨後也加入了 Notification Hub
以支援對行動裝置平台的訊息傳送功能。

### 儲存服務

儲存資料是一個平台服務最基本的要求，Azure 在開發初期就提供了基本的儲存 (Azure Storage) 與關聯式資料庫 (SQL
Azure)，儲存服務提供了 Blob、Table 和 Queue 分別管理非結構化資料、結構化資料與訊息通訊，2014年新增 File
服務，以支援在雲端虛擬機器間的快速資料共享。

資料庫服務 SQL Azure 為 SQL Server as a Service，提供大部份在地端的 [SQL
Server](https://zh.wikipedia.org/wiki/SQL_Server "wikilink") 資料庫的能力，2013
年微軟將 SQL Azure 正名為 Azure SQL Database，以提升品牌識別度，2014 年新增依交易量計費的 DTU
模式，以及新一代資料庫引擎 V12，強化資料庫的功能與效率，2015 年更提出了許多資料庫的企業級應用，如
Elastic Pooling、SQL Data Warehouse 與和 SQL Server 2016 配合的 SQL Database
Strerch Database 功能，使 SQL Database 更適合企業的應用。2017 年將 Database as a
Service 擴大支援 [MySQL](../Page/MySQL.md "wikilink") 與
[PostgreSQL](../Page/PostgreSQL.md "wikilink") 等資料庫系統，2018 年新增依虛擬核心數計費的
vCore 模式，讓用戶更容易對應在原本伺服器環境的硬體規格。

Azure Search 是微軟為提升雲端資料檢索的功能而於 2014 年提供，搭配 Azure DocumentDB 實作出的資料檢索服務。

Azure Redis Cache 為微軟基於 [Redis](../Page/Redis.md "wikilink")
開源專案所發展的分散式快取服務，用以取代 2011 年的 Azure Shared Cache
以及 2012 年提出的 Azure Role-based Cache 服務，由於 Redis Cache 適用於許多平台與框架，使得
Azure Redis Cache 更容易被大眾接受以作為分散式快取基礎建設。

Azure Cosmos DB 是微軟於 Build 2017 所宣布的新型 NoSQL 資料庫服務，可同時支援鍵值對
(Key-Value)、文件 (Document)、Column Family 與圖形 (Graph) 等資料結構，並同時支援
Azure Table API, Mongo API, Cassandra API, DocumentDB SQL 與 Graph API
等不同的存取方式。

### 分析服務

分析服務是 Microsoft Azure 一系列支援大數據與機器學習等與資料分析相關的服務集合，由資料的獲取，分析到儲存都有完整的解決方案。

  - 資料獲取：Azure Event Hub，由物聯網設備獲取訊號或訊息資料；Azure Data Factory
    處理資料的轉換；Azure Stream Analytics 處理在資料流動過程中的特徵分析。
  - 資料分析：Azure HDInsights 支援以 [Apache
    Hadoop](../Page/Apache_Hadoop.md "wikilink") 為主的技術集合所支援的資料分析，包含
    [MapReduce](../Page/MapReduce.md "wikilink")、[HDFS](https://zh.wikipedia.org/wiki/HDFS "wikilink")、[HBase](https://zh.wikipedia.org/wiki/HBase "wikilink")、[Pig](https://zh.wikipedia.org/wiki/Pig "wikilink")
    等技術；Azure Machine Learning 支援以模型為主的資料分析與推斷能力。
  - 資料儲存：Azure Data Lake 支援各種類型的資料，無上限的資料儲存能力。

### 網路服務

網路服務是 Microsoft Azure 對外通訊與內部各類服務之間的資料通訊基礎建設，也是 Azure IaaS 的重要成員之一。

Azure 虛擬網路可允許組織或企業在雲端建置自己的網路基礎建設，包含子網路、IP配置、負載平衡器與網路安全原則等，同時可以建置
[VPN](https://zh.wikipedia.org/wiki/VPN "wikilink")
以串連企業網路與其他區域的虛擬網路，也可以利用 P2S
VPN 串接個人用戶端與虛擬網路。

為了要加速網路速度、隔離用戶與 Internet 網路環境，Azure 提供 ExpressRoute 給用戶以支援專屬性
(Dedicated) 的 Azure 資料中心間通訊。

對於具全球性的大型服務，Azure Traffic Manager
可協助發展大規模的負載平衡解決方案，將用戶導向到全球各地離其最近的資料中心，並且也可支援跨區域性的備援重導向。

### 身份識別與存取管理服務

Azure AD (Active Directory) 是 Microsoft Azure 上主要的身份識別與存取服務，是基於 HTTP
之業界標準 OAUTH 2.0 與 OpendID 協定的雲端身分驗證服務，由於傳統使用
[LDAP](https://zh.wikipedia.org/wiki/LDAP "wikilink")/Kerberos 驗證協定的
Windows Server [Active
Directory](../Page/Active_Directory.md "wikilink")
不易用於網際網路與行動裝置環境上身分驗證，因此微軟提供
Azure AD Connect 服務以處理 Windows Server Active Directory \<-\> Azure
Active Directory 的帳戶同步功能。Azure AD
也提供了[多重要素驗證](https://zh.wikipedia.org/wiki/多重要素驗證 "wikilink")
(Multi-Factor Authentication) 能力以支援需要多重方法驗證的應用，Azure AD
的應用程式連結功能則提供了軟體服務 (SaaS) 整合所需的身份驗證能力。

Azure AD 提供 Azure AD B2C 服務讓應用程式可以利用多種網際網路上常用之身分驗證機制 (例如 Microsoft
Account，Google ID ，Facebook ID 等) 來進行進行身分驗證，也提供 Azure AD 網域服務以減少企業在雲端
Azure 環境內部署 Windows Server AD 網域控制站成本。

### 開發人員服務

為支援 Web App 與行動 App 的記錄、使用者行為追踪與網路監控等需求，Azure 提供 Application Insights
可供開發人員實作所需的記錄功能，Application Insights 也可作為協助監控網站存活的輔助服務。

Azure DevOps 提供雲端的版本控制、自動化建造、自動化測試與部署等軟體工程流程服務。

Azure App Center 可協助處理行動 App 內的使用者回報，包含當機回報與使用者意見回饋等。

### 管理服務

管理服務是 Microsoft Azure 提供給 IT 與網路管理能力的服務。

  - Scheduler 可允許 IT 人員上傳指令腳本，以排定的時程執行。
  - Automation 可允許 IT 人員上傳指令腳本，以排定的流程執行，通常會搭配 Azure Scheduler。
  - Operational Insights 會收集 Azure 內的作業稽核記錄並提供洞察訊息。
  - KeyVault 可允許 IT 人員或應用程式透過 Azure AD 權限管制之下，存取以硬體加密 (HSM) 之金鑰或憑證。
  - Security Center 可提供 Azure 使用時的相關資訊安全訊息。
  - Backup 能備份 Windows Server、Windows Client 與 Azure VM 以及其他支援服務的資料。
  - Site Recovery 具備跨地端、雲端到地端、雲端之間的虛擬機器備援服務。

## 法規與規範認證

Microsoft Azure 目前已經通過包含政府機構與產業標準數十項法規與規範的認證，以允許政府機關使用 Microsoft
Azure，或是認可 Microsoft Azure 在資訊安全上的努力 \[10\]。

### 政府機關

  - 阿根廷個人資料保護法 25326 號 (Argentina Personal Data Protection Act 25,326)
    \[11\]
  - 美國刑事司法資訊服務處 (CJIS) 資訊安全政策 v5.4 \[12\]
  - 美國國防資訊系統局 (DISA) 影響等級 2 臨時授權 (Provisional Authorization) \[13\]
  - 美國國防部資訊安全認證與認可流程 (DIACAP)
  - 美國聯邦風險與授權管理計畫 (FedRAMP)
  - 歐洲網路與資訊安全局資訊安全框架 (ENISA IAF)
  - 歐洲示範條款 (EU Model Clauses)
  - 美國家庭教育與隱私權法案 (FERPA)
  - 美國聯邦資訊處理標準 (FIPS) 140-2
  - 美國聯邦資訊安全管理法案 (FISMA)
  - 新加坡多層次雲端安全標準 (MTCS)
  - 美國內部收益服務公報 (IRS) 1075
  - 澳洲雲端服務認證清單 (CCSL IRAP)
  - 紐西蘭政府資訊長認證 (NZ CC Framework)
  - 英國政府雲 (UK G-Cloud)
  - 日本我的編號法案 (My Number Act)
  - 日本雲端安全標章 (Cloud Security Mark)
  - 美國食品與藥物管理局 (FDA) 聯邦準則 (CFR) 21-11 (Title 21 Part 11)
  - 中國 GB 18030
  - 中國多層次保護方案 (MLPS) \[14\]
  - 中國可信雲服務認證 (TRUCS) \[15\]

### 產業標準

  - 雲端安全聯盟雲端控制矩陣認證 (CSA CCM)
  - 內容傳遞與安全協會 (CDSA)
  - 財務產業資訊系統中心 (FISC)
  - 健康保險流通與責任法案 (HIPAA) HITECH
  - ISO 27001
  - ISO 27018
  - 支付卡產業資料安全標準 (PCI-DSS) 等級 1 v3.0
  - 共享評估計畫
  - 服務組織控制 (SOC) 類型 1, 2, 3

## 工具

Microsoft Azure 在早期只能使用 Web-based 管理工具存取，在 2012 年開始提供
[PowerShell](https://zh.wikipedia.org/wiki/PowerShell "wikilink")
指令介面，並進一步於 2013 年起開始提供指令介面，以支援非 Windows 作業系統的使用者 (Azure
CLI)，而微軟也開放了服務管理介面 (RDFE 的 API) 供開發人員使用，因此能管理與存取 Microsoft Azure 的工具相當多。

  - [Microsoft Visual
    Studio](../Page/Microsoft_Visual_Studio.md "wikilink")，配合 Azure SDK
    for .NET，可直接部署、管理與新增相關專案。
  - [Azure
    PowerShell](https://zh.wikipedia.org/wiki/Azure_PowerShell "wikilink")，提供
    IT 人員管理 Azure 所需的 PowerShell 指令介面。
  - [Azure CLI](https://zh.wikipedia.org/wiki/Azure_CLI "wikilink")，舊稱
    Xplat-CLI，提供跨平台的指令管理介面。
  - [Azure 服務管理
    APIs](https://zh.wikipedia.org/wiki/Azure_RDFE_API "wikilink")，為
    [REST](https://zh.wikipedia.org/wiki/REST "wikilink")
    API，由開發人員編寫程式存取 \[16\]。
  - [System
    Center](https://zh.wikipedia.org/wiki/System_Center "wikilink") App
    Controller，可在企業內管理與部署 Azure 資源 \[17\]。
  - Azure Storage Explorer，由社群開發，支援 Azure Storage 的存取 (除 Azure File 外)
    \[18\]。
  - Microsoft Storage Explorer，由官方開發，跨平台的 Azure Storage 管理工具 \[19\]。

## 參考

## 外部連結

  - [Microsoft Azure](http://azure.com)
  - [Microsoft Azure
    Blog](https://web.archive.org/web/20150812153506/http://blog.azure.com/)

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink")
[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")
[Category:Microsoft_Azure](https://zh.wikipedia.org/wiki/Category:Microsoft_Azure "wikilink")

1.  [Microsoft – the only vendor named a leader in Gartner Magic
    Quadrants for IaaS, Application PaaS, and Cloud
    Storage](https://azure.microsoft.com/zh-tw/blog/microsoft-the-only-vendor-named-a-leader-in-gartner-magic-quadrants-for-iaas-application-paas-cloud-storage-and-hybrid/)


2.  [Microsoft's Azure To Boost Cloud Revenues In The Coming
    Years](http://www.forbes.com/sites/greatspeculations/2015/10/09/microsofts-azure-to-boost-cloud-revenues-in-the-coming-years/#505484656267)

3.  [Upcoming Name Change for Windows
    Azure](https://azure.microsoft.com/en-us/blog/upcoming-name-change-for-windows-azure/)

4.  [A Beginner’s Guide to Understanding the Leaf-Spine Network
    Topology](https://blog.westmonroepartners.com/a-beginners-guide-to-understanding-the-leaf-spine-network-topology/)

5.  [SDN for the Cloud -- SIGCOMM Conference 2015
    Keynote](http://conferences.sigcomm.org/sigcomm/2015/pdf/papers/keynote.pdf)

6.  [Microsoft showcases the Azure Cloud Switch
    (ACS)](https://azure.microsoft.com/zh-tw/blog/microsoft-showcases-the-azure-cloud-switch-acs/)

7.  [Azure CDN 的 POP
    位置](https://docs.microsoft.com/zh-tw/azure/cdn/cdn-pop-locations)

8.  區域別中的 Region 1, 2, 3 為 Azure 在計算網路頻寬費用時的分類。

9.  [Azure Resource Manager QuickStart
    Templates](https://github.com/Azure/azure-quickstart-templates)

10. [Microsoft Trust
    Center-Compliance](https://www.microsoft.com/en-us/TrustCenter/Compliance/default.aspx)

11. [PROTECCION DE LOS DATOS
    PERSONALES](http://www.infoleg.gov.ar/infolegInternet/anexos/60000-64999/64790/norma.htm)

12. [Criminal Justice Information Services (CJIS) Security Policy
    Version 5.4](https://www.microsoft.com/en-us/TrustCenter/Compliance/CJIS)

13. [Defense Information Systems Agency (DISA) Impact Level 2
    PA](https://www.microsoft.com/en-us/TrustCenter/Compliance/DISA)

14. [Azure
    信任中心-合规性](https://www.azure.cn/support/trust-center/compliance)

15.
16. [Azure Service Management
    APIs](https://msdn.microsoft.com/en-us/library/azure/ee460799.aspx)

17. [如何將服務部署至公用雲端](https://technet.microsoft.com/zh-tw/library/hh221341.aspx)

18. [Azure Storage Explorer](https://azurestorageexplorer.codeplex.com/)

19. [Microsoft Azure Storage Explorer](http://storageexplorer.com/)