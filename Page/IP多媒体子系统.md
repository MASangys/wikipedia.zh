**IP多媒体子系统**（IP Multimedia Subsystem，IMS）或**IP多媒体核心网络子系统**（IP Multimedia
Core Network Subsystem,
IMCNS）是一个基于互联网协议提供多媒体业务的体系架构。传统移动电话使用类[电路交换网络提供语音通话服务](../Page/电路交换.md "wikilink")，而非使用计算机[分组交换通信方式的网络](../Page/分组交换.md "wikilink")。虽然已有很多方式在智能手机上提供[网络电话与其他互联网多媒体服务](https://zh.wikipedia.org/wiki/网络协议通话技术 "wikilink")，但并未形成行业标准，IMS则为此提供了一个标准化体系架构。

IMS的最初的版本（3GPP
Rel-5）主要是给出了一种基于[GPRS来实现互联网协议多媒体业务的方法](../Page/GPRS.md "wikilink")。在这个版本的基础上，3GPP、[3GPP2以及](https://zh.wikipedia.org/wiki/3GPP2 "wikilink")[TISPAN进行了进一步的更新](https://zh.wikipedia.org/wiki/TISPAN "wikilink")，以支持GPRS之外，诸如[WLAN](https://zh.wikipedia.org/wiki/WLAN "wikilink")、[CDMA2000和固定电话线等其他接入方式](../Page/CDMA2000.md "wikilink")。

IMS在设计时优先使用属于[IETF的协议](../Page/互联网工程任务组.md "wikilink")，比如，[会话发起协议](../Page/会话发起协议.md "wikilink")。援引3GPP的说法，IMS并非刻意将应用标准化，而是帮助无线和有线终端的多媒体和通话应用提供一个接入方法，借此，辅助[移动固网融合](https://zh.wikipedia.org/wiki/移动固网融合 "wikilink")。方式是使用一个独立的控制层将网络接入的工作从服务层剥离出来。理论上讲，服务不再需要控制器，因为有单独的控制层负责统筹。但从实践情况看，此举并未对布网开销与复杂程度有太大帮助。

有线与无线网络中功能与IMS重叠的服务包括[通用访问网络](https://zh.wikipedia.org/wiki/通用访问网络 "wikilink")、[软交换和SIP](../Page/软交换.md "wikilink")，可将上述服务混合使用达到替代IMS的效果。

现今有太多内容获取/绕过传统网络运营商与他人联系的方式，因此IMS的作用受到挑战。

基于IMS达成全球标准的例子可见多媒体通话，这是[VoLTE和](https://zh.wikipedia.org/wiki/VoLTE "wikilink")[富通讯解决方案](../Page/富通讯解决方案.md "wikilink")（又被称作joyn或进阶消息服务）的基础。

## 历史

  - IMS最初是由一个名为[3G.IP的行业论坛组织所定义的](https://zh.wikipedia.org/wiki/3G.IP "wikilink")，并于1999年的成型。3G.IP开发的IMS架构后来被带入[3GPP](../Page/3GPP.md "wikilink")，成为其[3G移动系统标准化工作的一部分](../Page/3G.md "wikilink")。IMS的第一次出现是在3GPP标准版本5中，首次在3G网络中引入了分组域的多媒体业务，但主要是基于GPRS。
  - [3GPP2](https://zh.wikipedia.org/wiki/3GPP2 "wikilink")（另一个3G标准化组织）基于3GPP
    IMS构建了他们的CDMA2000多媒体域（Multimedia
    Domain，MMD），为IMS增加了[CDMA2000接入](../Page/CDMA2000.md "wikilink")。
  - 3GPP标准第6版加入了与[WLAN的交互](https://zh.wikipedia.org/wiki/WLAN "wikilink")，支持用户通过WLAN接入IMS。
  - 3GPP标准第7版，与[TISPAN](https://zh.wikipedia.org/wiki/TISPAN "wikilink")
    R1.1版本一起，增加了对固定网络的支持。AGCF（Access Gateway control function）和PES（PSTN
    Emulation Service）被引入，以继承PSTN的业务和终端。

## 架構

[Ims_overview.png](https://zh.wikipedia.org/wiki/File:Ims_overview.png "fig:Ims_overview.png")

以下將簡述上圖所列的各個功能組。

IP多媒體核心子系統是由一系統功能組組成的。各個功能組之間由一組標準接口聯鏈起來，組成一個IMS管理網絡。一個功能組並非是一個節點（即硬件實體）：它的實現方式是開放的，允許將多個功能組布署在一個節點，亦允許一個功能組由多個節點實現。考慮到容量、負載均衡和管理等方面，還允許在一個網絡存在有多個相同的功能組。

### 網絡訪問

使用者有多種途徑訪問IMS，最普遍的是使用[網際網路協議（IP）](https://zh.wikipedia.org/wiki/網際網路協議 "wikilink")。IMS終端（如[移動電話](https://zh.wikipedia.org/wiki/移動電話 "wikilink")、[個人數位助理（PDA）以及](https://zh.wikipedia.org/wiki/個人數位助理 "wikilink")[電腦](https://zh.wikipedia.org/wiki/電腦 "wikilink")）只需要使用IP協議並且運行[會話發起協議（SIP）](https://zh.wikipedia.org/wiki/會話發起協議 "wikilink")[用戶代理](https://zh.wikipedia.org/wiki/用戶代理 "wikilink")，就可以直接訪問IMS，即使他們已經漫游到其它國家或網絡。

IMS支援網絡訪問途徑有：

固定線路訪問（如[數位用戶線路（DSL）](https://zh.wikipedia.org/wiki/DSL "wikilink")、[纜線數據機以及](https://zh.wikipedia.org/wiki/纜線數據機 "wikilink")[以太網](https://zh.wikipedia.org/wiki/以太網 "wikilink")），移動訪問（如[WCDMA](https://zh.wikipedia.org/wiki/WCDMA "wikilink")、[CDMA2000](../Page/CDMA2000.md "wikilink")、[GSM以及](../Page/GSM.md "wikilink")[GPRS](../Page/GPRS.md "wikilink")），無線訪問（如[WLAN和](https://zh.wikipedia.org/wiki/WLAN "wikilink")[WiMAX](../Page/WiMAX.md "wikilink")）。

另外像[普通老式電話服務](https://zh.wikipedia.org/wiki/普通老式電話服務 "wikilink")，[H.323和非IMS兼容的](../Page/H.323.md "wikilink")[网络电话系統等電話系統可以通過](https://zh.wikipedia.org/wiki/网络电话 "wikilink")[閘道器接入IMS](https://zh.wikipedia.org/wiki/閘道器 "wikilink")。

### 核心網絡

#### 归属用户服务器（HSS - Home Subscriber Server）

归属用户服务器是一個核心的用戶數據庫。它為IMS網絡中實際管理通話的實體提供支持。如存取用戶相關的信息（稱之為用戶配置），對用戶認證和授權以及
提供用戶位置IP地址等相關信息。它和GSM的[歸屬位置寄存器（HLR - Home Location
Regiser）和](https://zh.wikipedia.org/wiki/网络交换子系统#归属位置寄存器（HLR） "wikilink")[認證中心（AuC
- Authentication
Centre）相似](https://zh.wikipedia.org/wiki/网络交换子系统#鉴权中心（AuC） "wikilink")。

在同時使用多個HSS時，需要用戶位置功能組（SLF - Subscriber Location
Function）映射用戶保存的位置。即當查詢某個用戶配置時，由SLF指出哪個HSS保存了這個用戶配置。

##### 用戶標識

IMS可以使用多種用戶標識：IP多媒體私有標識（IMPI - IP Multimedia Private
Identity），IP多媒體公共標識（IMPU - IP Multimedia PUblic
Identity），全局可路游用戶代理統一資源標識符（GRUU - Globally Routable User Agent
URI），通配公共用戶標識（Wildcarded PUblic User
Identity）。IMPI和IMPU是一種[統一資源標識符（URI）](https://zh.wikipedia.org/wiki/統一資源標識符 "wikilink")，它可以是數字（Tel
URI，如 tel: +1-555-123-4567），也可以是字符標識符（SIP
URI，如sip:john.doe@example.com）。

##### IP多媒體私有標識（IMPI）

IP多媒體私有標識是一種由主網絡操作者永久性分派的全局性標識，它可以用於註冊、認證、管理和記費等用途。每個IMS使用者可以有多個IMPI。

##### IP多媒體公有標識（IMPU）

當IMS使用者想要和其他使用者通訊時，需要使用IP多媒體公有標識（它可以寫在那個人的名片上）。IMS允許一個IMPI上綁定多個IMPU。IMPU也可以和其它電話共享（就像一個家庭使用一個電話號碼）。

##### 全局可路由用戶代理統一資源標識符（GRUU）

全局可路由用戶代理統一資源標識符是一個由IMPU和UE實例組成的標識符。IMS中有兩類GRUU：公共GRUU(P-GRUU)和臨時GRUU(T-GRUU)

  - P-GRUU 明示了用戶的IMPU並且長期有效
  - T-GRUU 隱藏了用戶的IMPU。當用戶顯式注銷T-GRUU或者過了有效期時，T-GRUU就會失效。

##### 通配公共用戶標識（Wildcarded PUblic User Identity）

通配公共用戶標識表示一組相似的IMPU。

HSS用戶數據庫保存用戶的IMPU，IMPI，[國際移動用戶識別碼（IMSI）](https://zh.wikipedia.org/wiki/國際移動用戶識別碼 "wikilink")，[MSISDN](https://zh.wikipedia.org/wiki/MSISDN "wikilink")，用戶服務配置，服務開關和其它信息。

#### 呼叫会话控制功能（CSCF - Call Session Control Function）

[會話發起協議](https://zh.wikipedia.org/wiki/會話發起協議 "wikilink")（SIP）伺服器和代理共同實現通話控制功能，稱之為CSCF。它們在IMS系統中處理SIP信號數據包。

  - 代理-CSCF（P-CSCF）是一個SIP代理，作為與IMS終端直聯通訊點。它可以設置在公網中也可以設置在IMS本網中。某些網絡在這個功能組中可能使用了[會談邊界控制器](../Page/會談邊界控制器.md "wikilink")（SBC）。P-CSCF其核心是一個特殊的SBC。該SBC使用的用戶網絡接口不僅保護網絡，也保護了IMS終端。在IMS終端和P-CSCF之間傳遞加密信號時，使用附加的SBC是毫無意義同時也是不可用的。終端可以使用[DHCP協議來找到它的P](https://zh.wikipedia.org/wiki/动态主机設定協定 "wikilink")-CSCF，也可以使用配置（如出廠設定、3GPP
    IMS管理對象）、或是記錄在ISIM中、或是在PDP環境（[GPRS](../Page/GPRS.md "wikilink") PDP
    Context）中賦值。
      - 它在IMS終端註冊之前就被分派給IMS終端，並且在註冊期間不會改變。
      - 它位於所有信號的通路，可以檢查所有的信號。IMS終端必須忽略任何其它未加密的信號。
      - 它提供用戶的認證，並且為IMS終端建立一個[IPsec或](../Page/IPsec.md "wikilink")[TLS連接](https://zh.wikipedia.org/wiki/TLS "wikilink")。這樣可以阻止和[重放攻擊](https://zh.wikipedia.org/wiki/重放攻擊 "wikilink")，並且保護用戶的隱私。
      - 它檢查信號，確保IMS終端沒有企圖作弊（比如改變通常信號路游，不遵守IMS網絡路游策略）。
      - 它也可以使用壓縮和解壓縮SIP信息，以降低較慢的無線電鏈路的負載。
      - 它也可以加入策略決擇功能（PDF - Policy Decision
        Function）。它可以允許媒體水平的資源（如[QoS](https://zh.wikipedia.org/wiki/QoS "wikilink")）可以達到媒體水平。它也可以用作策略控制、帶寬管理等等。PDF也可以作為獨立的功能組。
      - 它也產生費用記錄。
  - 服務-CSCF（S-CSCF）。從信號層面的來看，S-CSCF是IMS子系統的核心節點。它雖然是SIP伺服器，但也負責會話的控制。它永遠設置在IMS本網絡中，徑直地使用Cx和Dx接口訪問HSS。它從HSS下載用戶配置並且上傳用戶與S-CSCF關聯信息。（出於對處理用戶配置效率的考慮，S-CSCF會在其本地緩存用戶配置。但它不會在本地對用戶配置進行更改。）所有必要的用戶配置信息都會從HSS那裡加載。
      - 它負責處理SIP註冊。它會將用戶位置（如終端的IP地址）和SIP地址進行綁定。
      - 它位於所有在它那裡註冊的用戶所發出的信號信息的通路上，可以檢查所有的信息。
      - 它負責決定SIP信息將抵達哪一個應用服務處理，以完成應用服務。
      - 它提供路游服務，通常是使用（ENUM - Electronic Numbering）查找
      - 它執行網絡運營商的策略
      - 出於分布式負載和高可靠性的原因，IMS網絡中允許設置多個S-CSCF。這種情況下，由HSS在用戶配置記錄哪一個S-CSCF被關聯到該用戶，而後由I-CSCF來查詢這些記錄。
  - 詢問-CSCF（I-CSCF）是另一個位於管理域邊緣的功能組。它的IP地址通過[DNS發布](https://zh.wikipedia.org/wiki/DNS "wikilink")，所以遠程伺服器可以查找到它，並把它作為向它所在的域傳遞SIP包的跳點。
      - 它查詢HSS，獲取S-CSCF的地址並且分派給用戶以完成SIP註冊。
      - 它也為S-CSCF傳遞SIP請求和回應。
      - 直到IMS第6版，它是可以用來把內網隱藏起來，使外部網絡無法獲取內部網絡的信息（加密部分SIP信息）。這裡稱之為隱藏內部網絡拓扑閘道器（THIG
        - Topology Hiding Inter-network
        Gateway）。從第7版開始，這個功能從I-CSCF移走，作為互聯邊界控制功能組（IBCF
        - Interconnection Border Control
        Function）的一部分。IBCF被用作外部網絡的閘道器，提供[NAT和](../Page/网络地址转换.md "wikilink")[防火墻功能](https://zh.wikipedia.org/wiki/防火墙_\(计算机\) "wikilink")。IBCF實際上是的[會談邊界控制器的裁剪版本](../Page/會談邊界控制器.md "wikilink")。

#### 應用伺服器（AS - Application Server）

SIP應用伺服器負責和提供服務。它與S-CSCF之間使用[會話發起協議（SIP）](https://zh.wikipedia.org/wiki/會話發起協議 "wikilink")。由[3GPP開發的](../Page/3GPP.md "wikilink")（VCC
Server）就是一個應用伺服器的典型案例。基於具體的服務不同，AS可以選擇不同的SIP模式，如SIP代理模式，SIP用戶代理（UA -
[User agent](https://zh.wikipedia.org/wiki/User_agent "wikilink")）模式和SIP
模式。AS可以設置在IMS本网內也可以設置在外部的第三方網絡。如果位於本網，它還可以使用Sh或Si接口查詢HSS。

  - SIP AS：負責和提供IMS具體服務
  - IP多媒體切換功能（IM-SSF - IP Multimedia Service Switching
    Function）：SIP和[CAP之間的接口](https://zh.wikipedia.org/wiki/CAP "wikilink")，用以與應用伺服器通訊。
  - OSA服務性能伺服器（OSA SCS - OSA Service Capability Server）：SIP和OSA框架之間的接口。

##### 功能模型

AD-ILCM和AS-OLCM用來保存事務狀態並且可以根據特定服務的需要保存會話狀態。對於S-CSCF來說，AS-ILCM接口是輸入端，AS-OLCM接口是輸出端。應用邏輯提供服務和AS-ILCM、AS-OLCM之間的交互。

##### 公共服務標識（PSI - Public Service Identity）

公共服務標識是用來標識應用服務提供的服務。作為用戶標識，PSI可以提供SIP和Tel
URI兩種標識格式。PSI通常被HSS以完整PSI或通配PSI保存。

  - 完整PSI包含完整的PSI標識，可以直接用來路游。
  - 通配PSI表達一組PSI標識。

#### 媒體伺服器

媒體資源功能組（MRF - Media Resource Function）提供與媒體相關的功能，包括媒體處理（如混音）、播放撥號音和語音提示。

MRF可以進一步劃分為媒體資源功能控制器（MRFC - Media Reource Function
Controller）和媒體資源功能處理器（MRFP - Media Resource
Function Processor）。

  - MRFC是信號層面的節點，它根據來自AS和S-CSCF的信息來操控MRFP。
  - MRFP是媒體層面的節點，用來混合、產生或者處理媒體流。它也可以管理共享資源的訪問權限。

媒體資源協商器（MRB - Media Resource
Broker）是一個功能實體。負責收集已經發布的MRF信息，並且向AS這樣的信息消費實體提供適當的MRF信息。MRB通常有兩個模式：

  - 查詢模式：AS主動查詢MRB相應的媒體並且建立使用MRB回應的呼叫。
  - 線性模式：AS向MRB發送SIP INVITE，由MRB建立呼叫。

#### 出口网关控制功能

出口网关控制功能（BGCF - Breakout Gateway Control
Function）是一個SIP代理，它處理來自S-CSCF的路由請求。BGCF有基於電話號碼的路由功能，用来选择与PSTN网络的接口点。当BGCF发现被叫网络位于一个PSTN网络时，BGCF就选择一个媒体网关控制功能(MGCF)，将会话路由到MGCF，MGCF负责与PSTN网络交互。

#### 媒体网关控制功能

媒体网关控制功能（MGCF - Media Gateway Control
Function）完成IMS网络与PSTN网络之间的呼叫控制协议转换。主要是将SIP消息转换成ISUP消息。并控制IM-MGW中媒体信道，管理PSTN网络的承载和与IMS网络的IP流间的连接。

### 介面描述

| 介面名稱 | IMS entities                                 | 描述                                                                                                                                                                                                                                                                                               | 協定                                                                                                                                                                                                                                                                       |
| ---- | -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Cr   | MRFC, AS                                     | Used by MRFC to fetch documents (scripts and other resources) from an AS                                                                                                                                                                                                                         | [HTTP](https://zh.wikipedia.org/wiki/Hypertext_Transfer_Protocol "wikilink") over dedicated [TCP](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink")/[SCTP](https://zh.wikipedia.org/wiki/Stream_Control_Transmission_Protocol "wikilink") channels |
| Cx   | I-CSCF, S-CSCF, HSS                          | Used to communicate between I-CSCF/S-CSCF and HSS                                                                                                                                                                                                                                                | [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink")                                                                                                                                                                                               |
| Dh   | SIP AS, OSA, SCF, IM-SSF, HSS                | Used by AS to find a correct HSS in a multi-HSS environment                                                                                                                                                                                                                                      | [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink")                                                                                                                                                                                               |
| Dx   | I-CSCF, S-CSCF, SLF                          | 由 I-CSCF/S-CSCF 使用於 找尋正確的 HSS 在 multi-HSS environment                                                                                                                                                                                                                                            | [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink")                                                                                                                                                                                               |
| Gm   | UE, P-CSCF                                   | 用於 UE 與 CSCFs 之間交換訊息                                                                                                                                                                                                                                                                             | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Go   | PDF, GGSN                                    | Allows operators to control QoS in a user plane and exchange charging correlation information between IMS and GPRS network                                                                                                                                                                       | [COPS](https://zh.wikipedia.org/wiki/Common_Open_Policy_Service "wikilink") (Rel5), [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink") (Rel6+)                                                                                                   |
| Gq   | P-CSCF, PDF                                  | Used to exchange policy decisions-related information between P-CSCF and PDF                                                                                                                                                                                                                     | [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink")                                                                                                                                                                                               |
| ISC  | S-CSCF, I-CSCF, AS                           | 用於 CSCF 與 AS 之間交換訊息                                                                                                                                                                                                                                                                              | [SIP](https://zh.wikipedia.org/wiki/SIP "wikilink")                                                                                                                                                                                                                      |
| Ma   | I-CSCF -\> AS                                | Used to directly forward SIP requests which are destinated to a Public Service Identity hosted by the AS                                                                                                                                                                                         | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Mg   | MGCF -\> I-CSCF                              | MGCF converts [ISUP](https://zh.wikipedia.org/wiki/ISDN_User_Part "wikilink") signalling to [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink") signalling and forwards [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink") signalling to I-CSCF | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Mi   | S-CSCF -\> BGCF                              | 用於 S-CSCF 與 BGCF 之間交換訊息                                                                                                                                                                                                                                                                          | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Mj   | BGCF -\> MGCF                                | Used to exchange messages between BGCF and MGCF in the same IMS network                                                                                                                                                                                                                          | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Mk   | BGCF -\> BGCF                                | Used to exchange messages between BGCFs in different IMS networks                                                                                                                                                                                                                                | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Mm   | I-CSCF, S-CSCF, external IP network          | Used for exchanging messages between IMS and external IP networks                                                                                                                                                                                                                                | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Mn   | MGCF, IM-MGW                                 | 允許 user-plane resources 的控制                                                                                                                                                                                                                                                                      | [H.248](https://zh.wikipedia.org/wiki/Megaco "wikilink")                                                                                                                                                                                                                 |
| Mp   | MRFC, MRFP                                   | 用於 MRFC 與 MRFP 之間交換訊息                                                                                                                                                                                                                                                                            | [H.248](https://zh.wikipedia.org/wiki/Megaco "wikilink")                                                                                                                                                                                                                 |
| Mr   | S-CSCF, MRFC                                 | S-CSCF and MRFC 之間交換訊息                                                                                                                                                                                                                                                                           | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Mw   | P-CSCF, I-CSCF, S-CSCF                       | Used to exchange messages between CSCFs                                                                                                                                                                                                                                                          | [SIP](https://zh.wikipedia.org/wiki/Session_Initiation_Protocol "wikilink")                                                                                                                                                                                              |
| Rf   | P-CSCF, I-CSCF, S-CSCF, BGCF, MRFC, MGCF, AS | Used to exchange offline charging information with CCF                                                                                                                                                                                                                                           | [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink")                                                                                                                                                                                               |
| Ro   | AS, MRFC                                     | Used to exchange online charging information with ECF                                                                                                                                                                                                                                            | [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink")                                                                                                                                                                                               |
| Sh   | SIP AS, OSA SCS, HSS                         | Used to exchange information between SIP AS/OSA SCS and HSS                                                                                                                                                                                                                                      | [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink")                                                                                                                                                                                               |
| Si   | IM-SSF, HSS                                  | 用於 IM-SSF 與 HSS 之間交換訊息                                                                                                                                                                                                                                                                           | [MAP](https://zh.wikipedia.org/wiki/Mobile_Application_Part "wikilink")                                                                                                                                                                                                  |
| Sr   | MRFC, AS                                     | Used by MRFC to fetch documents (scripts and other resources) from an AS                                                                                                                                                                                                                         | [HTTP](https://zh.wikipedia.org/wiki/Hypertext_Transfer_Protocol "wikilink")                                                                                                                                                                                             |
| Ut   | UE, AS (SIP AS, OSA SCS, IM-SSF)             | Facilitates the management of subscriber information related to services and settings                                                                                                                                                                                                            | [HTTP](https://zh.wikipedia.org/wiki/Hypertext_Transfer_Protocol "wikilink")(s), [XCAP](https://zh.wikipedia.org/wiki/XCAP "wikilink")                                                                                                                                   |

另外，IMS要求一组垂直的接口规范来提供以下特性：

  - 普遍的接口，在应用服务器上用于帐务、安全、签订服务的数据、业务控制以及用来给诸如presence
    functions等的“积木”提供服务。
  - 协调后的和加强的[QoS](https://zh.wikipedia.org/wiki/QoS "wikilink")
  - 在操作员控制下的基于[会话的媒体关守](https://zh.wikipedia.org/wiki/会话 "wikilink")
  - 在各种业务、[会话和](https://zh.wikipedia.org/wiki/会话 "wikilink")[传输层间关联的帐务和付费](../Page/传输层.md "wikilink")

以上这些能力导致IMSs有别于通常的会话控制的[互联网应用](https://zh.wikipedia.org/wiki/互联网应用 "wikilink")。一个IMS是一种模型，在这种模型中，网络操作员和业务分别提供方控制网络和业务的接入，与此同时消费者会有消费账单。网络是完全透明的，并且所有的服务由终点（endpoint）提供——这与通常的[互联网模型相反](https://zh.wikipedia.org/wiki/互联网模型 "wikilink")。至少在理论上，这种更易控制的环境导致的结果是：用户因为QoS、单点登录和客户服务而享受到了更好的体验。

## 参见

  - [下一代网络](https://zh.wikipedia.org/wiki/下一代网络 "wikilink")（NGN）
  - [IMS-2000](https://zh.wikipedia.org/wiki/IMS-2000 "wikilink")

## 参考文献

[Category:多媒体](https://zh.wikipedia.org/wiki/Category:多媒体 "wikilink")
[Category:網路結構](https://zh.wikipedia.org/wiki/Category:網路結構 "wikilink")