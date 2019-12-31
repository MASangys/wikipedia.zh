> 本文内容由[H.323](https://zh.wikipedia.org/wiki/H.323)转换而来。


**H.323协议**是[ITU-T提出的关于](https://zh.wikipedia.org/wiki/ITU-T "wikilink")[视频电话及](https://zh.wikipedia.org/wiki/视频电话 "wikilink")[多媒体](../Page/多媒体.md "wikilink")会议传输协议H.32x系列中的一部分。

## 歷史

第一版的 H.323 由 [ITU](https://zh.wikipedia.org/wiki/ITU "wikilink") 公布於1996年9月推出\[1\]。ITU-T在完成了在ISDN 2Mbit/s上的视频电话及多媒体会议传输协议[H.320后](https://zh.wikipedia.org/wiki/H.320 "wikilink")，ITU-T又相继发布了具有相似功能的[H.310](https://zh.wikipedia.org/wiki/H.310 "wikilink")，[H.321工作于](https://zh.wikipedia.org/wiki/H.321 "wikilink")[ATM网络和使用了调制解调技术的](https://zh.wikipedia.org/wiki/异步传输模式 "wikilink")[H.324工作于](https://zh.wikipedia.org/wiki/H.324 "wikilink")[公共交换电话网](../Page/公共交换电话网.md "wikilink")（PSTN）以及没有来得及发布就淘汰的[H.322工作在Isochronous](https://zh.wikipedia.org/wiki/H.322 "wikilink") Ethernet. 直到1995年ITU-T发布了迄今为止被广泛采用的，最有前途的，也是在QoS（Quality of Service 服务质量）上克服了众多困难，定义了完善的服务质量，提供较好的服务质量保证。H.323工作在[局域网](../Page/局域网.md "wikilink")，H.323为现有的分组网络（如IP网络）提供多媒体通信标准。若和其它的IP技术如[IETF的](https://zh.wikipedia.org/wiki/IETF "wikilink")[资源预留协议](../Page/资源预留协议.md "wikilink")（RSVP）相结合，就可以实现IP网络的多媒体通信。它配合IP做为在OSI网络层的协议。它的最主要的目的是提供PBN在不同的网络之间进行多媒体通信互连互通的标准。

关于H.323最初的版本是在1996年6月由ITU-T发布的，为各种通信行业提供了一个标准。最初的焦点只是在局域网上，因为当时Qos服务质量标准对于基于IP的广域网，例如Internet，还没有的很好的制定出。在1996年早期，H.323的应用明确的要求在广域网中得到应用，将语音通信做为唯一的目标，所以基于IP技术的H.323诞生了。随后，H.323继续向前发展，做为一个以IP技术应用为基础，集成了众多关于语音通信技术协议的平台。第一次主要的对这个协议做出的修改和添加内容，是由ITU-T在1998年1月发布的H.323版本2。在1999年9月，ITU-T发布H.323v3，合并了众多的长远的功能，并扩展了它的概念，这些工作使得H.323成为全球范围内数据IP电话及企业内部IP电话发展得基础。而且随后得时间更多得扩充被添加到H.323协议中，2000年11月17日H.323 的第4版问世，添加了在很多重要的领域的扩充和改进。其中包括可靠性，可测量性，和灵活性。新的特性使它在市场要求网关和MCU不断升级中更加灵活的完成自身的升级。H.323 已经无异议的成了在网络传输声音，视频，数据会议的领导者\[2\]。

## 協議

H.323是一個系統的規範，它使用多個ITU-T和IETF協議。H.323系統的核心是：

  - [H.225](../Page/H.225.md "wikilink").0 註冊（Registration），同意（Admission）和狀態（Status, 簡稱RAS），這是一個H.323終端和[Gatekeeper之間提供地址解析和准入控制服務](https://zh.wikipedia.org/wiki/Gatekeeper "wikilink")。
  - H.225.0呼叫信令，這是兩個H.323實體之間的任何使用，以建立溝通。
  - [H.245](../Page/H.245.md "wikilink")的控制協議的多媒體通信（multimedia communication），它描述的消息和程序，用於能力交換，打開和關閉邏輯通道音頻，視頻和數據，控制和適應症。
  - 實時傳輸協議（RTP），這是用於發送或接收任何兩個實體之間的多媒體信息（語音，視頻或文本）

許多H.323系統還實現了在各個定義的其他協議ITU-T建議提供補充服務支持。

  - [H.235系列介紹](https://zh.wikipedia.org/wiki/H.235 "wikilink")，包括信令和媒體的安全範圍內的H.323安全。
  - [H.239描述了雙流使用的視頻會議](https://zh.wikipedia.org/wiki/H.239 "wikilink")，視頻直播，其他靜止圖像。
  - [H.450系列介紹各種輔助服務](https://zh.wikipedia.org/wiki/H.450 "wikilink")。
  - [H.460系列的定義](https://zh.wikipedia.org/wiki/H.460 "wikilink")，可能是由一個端點或Gatekeeper來實作選擇性擴展，包括ITU-T建議書， H.460.17 ， \*H.460.18，和 H.460.19網絡地址轉換（NAT）/防火牆（FW）穿越。

除了這些ITU-T建議，H.323還實現各種IETF 的RFC, 為媒體傳輸和媒體打包，包括實時傳輸協議 （RTP）。

## H.323結構

H.323系統定義以提供豐富的多媒體通信功能的多個網絡元素。這些元素是終端（Terminals），多點控制單元（MCU）的，Gateway ，Gatekeeper和邊框元素（Border Elements）。終端，多點控制單元和網關往往統稱為端點（endpoints）。

### H.323網絡元素

#### 終端

[Typical_H.323_Stack.png](https://zh.wikipedia.org/wiki/File:Typical_H.323_Stack.png "fig:Typical_H.323_Stack.png") 終端（Terminals）在H.323網路裡是最基本的要素，因為這些設備，用戶通常會遇到。他們可能會在一個簡單的IP電話（IP phone）或一個功能強大的high-definition視訊會議系統的形式存在。

H.323終端裡面是一些被稱為[協議堆疊](https://zh.wikipedia.org/wiki/協議堆疊 "wikilink")（Protocol stack），實現H.323系統中定義的功能。 協議棧將包括ITU - T的建議 H.225.0和H.245，以及RTP或以上描述的其他協議中定義的基本協議的執行情況。

圖1中，描繪了一個提供支持語音、視頻和各種形式的數據通信的完整複雜堆疊。在現實中，大多數的H.323系統不會實作這麼多種的功能，但是這個堆疊的佈局邏輯對於理解這些協議的關聯很有幫助。

#### 多點控制單元

多點控制單元 （MCU）是負責管理多點會議，並稱為兩個邏輯實體組成的多點控制器（ MC ）和多點處理器（MP）。在更實際的術語，MCU不像今天在PSTN中使用的會議橋（conference bridges）。然而，最顯著的區別是H.323的MCU的可能是能夠在除了傳統的會議橋進行正常的音頻混合，視頻混合或切換。一些MCU還提供多點數據協作功能。這意味著終端用戶的是，放入一個 H.323 MCU進行視頻通話，用戶可能會看到會議的所有其他參與者，而不是只聽到他們的聲音。

#### Gateways

網關設備，使H.323網絡和其他網絡，如PSTN或ISDN網絡，之間的溝通。 如果在對話中的一方是利用一個終端，是不是一個 H.323終端，然後調用必須通過一個網關，以使雙方的溝通。

#### Gatekeepers

Gatekeeper在H.323網絡終端是一個可選組件，Gatekeeper和MCU套件提供了多項服務。這些服務包括端點註冊、地址解析、接入控制、用戶驗證，等等。看門人執行的各項職能，地址解析是最重要的，因為它能使兩個端點接觸沒有任何端點知道對方的其他端點的IP地址。

Gatekeepers可能被設計成工作在兩個信令模式之一，即“直接路由”和“gatekeeper routed”模式。直接路由模式是最有效和最廣泛部署的的的模式。在這種模式下，端點使用RAS協議，以了解遠程端點的IP地址和一個電話是直接建立與遠程設備。在Gatekeeper routed模式下，呼叫信令要經由gatekeeper確認通過。 而後者需要Gatekeeper有更多的處理能力，這也給Gatekeeper在呼叫和能力提供輔助服務，代表端點的完全控制。

H.323端點使用RAS協議，溝通與把關。 同樣，gatekeeper使用RAS與其他gatekeeper溝通。

註冊到一個endpoint守在H.323的端點的集合被稱為一個“zone”。這種設備的集合並不一定必須有一個相關的物理拓撲。相反，一個區域可能是完全合乎邏輯的，是由網路管理員任意定義。

Gatekeeper有能力鄰居一起，使呼叫解決區域之間可能發生。 周邊方便使用的撥號計劃， 作為全球撥號計劃。 撥號計劃促進“跨區域”撥號，以便在不同的區域中的兩個端點，仍然可以互相溝通。

#### 邊框元素和同行的元素

邊界元素（Border Elements）和同行元素（Peer Elements）類似Gatekeeper, 都是可選實體，但不直接管理端點（endpoint），並提供一些RAS協議中未描述的服務。邊框或同行元素的作用是通過了一個“管理域”（administrative domain）定義。

管理域是所有區域的集合，服務提供商的控制下的一個人或組織。在服務提供商網絡中可能有數百或數以千計的網關設備、電話、視頻終端，或其他H.323網絡元素。

### H.323 網路訊號

H.323 是使用二進制協議 ，它允許網絡元素高效的消息處理。該協議的ASN.1中的定義和使用在電線上的有效信息編碼壓縮編碼規則（PER,Packed Encoding Rules）的消息編碼形式。下面是一個在H.323系統中的各種通信流量的概述.

#### H.225.0 呼叫訊號

端點遠程端點的地址，一旦解決，將使用H.225.0呼叫信令，以建立與遠程實體通訊. H.225.0 messages are:

  - 安裝和設置承認（Setup and Setup acknowledge）
  - Call Proceeding
  - 連接（Connect）
  - Alerting
  - Information
  - Release Complete
  - Facility
  - Progress
  - 狀態和狀態查詢（Inquiry）
  - 通知（Notify）

#### RAS信號

端點使用RAS協議進行溝通。同樣，Gatekeeper使用RAS與同行進行交流。RAS是一個相當簡單的協議，只是一些消息組成。即：

  - Gatekeeper請求，拒絕，並確認消息（GRX）
  - 註冊（Registration）請求，拒絕，並確認消息（RRX）
  - 註銷（Unregister）請求，拒絕，並確認消息（URX）
  - 同意（Admission）要求，拒絕，並確認消息（ARX）
  - 頻寬（Bandwidth）請求，拒絕，並確認消息（BRX）
  - 放開（Disengage）要求，拒絕，並確認（DRX）
  - 位置請求，拒絕，並確認消息（LRX）
  - 信息的請求，ACK，NACK，並響應（IRX）
  - 非標準消息
  - 未知消息（Unknown message）回應
  - 正在進行的請求（Request in progress, RIP）
  - 資源可用性指示和確認（RAX）
  - 服務控制指示和響應（SCX）
  - 確認同意序列（Admission confirm sequence, ACS）

## 替代

H.323的擴展性在超大型應用中存在問題。例如H.323不能與[SS7整合](../Page/七号信令系统.md "wikilink")，或補充SS7必須提供的強大功能。建置H.323的成本也是一個問題。

IETF 發明會話發起協議（SIP），也可以通過IP語音和視頻通信的標準，SIP只使用6個指令管理呼叫控制資訊。也有其他的ITU-T建議用於視頻會議和可視電話服務-H.320（使用ISDN）和 H.324（使用普通模擬電話線和3G手機）。一些供應商（如Skype），還可以使用自己的封閉專有格式。[Access Grid提供了大致相似的功能](https://zh.wikipedia.org/wiki/Access_Grid "wikilink")，強調是open source以及multicast。EVO還提供通過Java的功能，包括對H.323的支持。媒體網路閘道控制協議（MGCP）是另一種解決方案。

## H.323系统ITU-T建议书

  - ITU-T H.323核心建议书

<!-- end list -->

  - [ITU-T Recommendation H.323](http://www.itu.int/rec/T-REC-H.323/en/), *Packet-based multimedia communications systems*.
  - [ITU-T Recommendation H.225.0](http://www.itu.int/rec/T-REC-H.225.0/en/), *Call signalling protocols and media stream packetization for packet-based multimedia communication systems*.
  - [ITU-T Recommendation H.245](http://www.itu.int/rec/T-REC-H.245/en/), *Control protocol for multimedia communication*.
  - [ITU-T Recommendation H.246](http://www.itu.int/rec/T-REC-H.246/en/), *Interworking of H-series multimedia terminals with H-series multimedia terminals and voice/voiceband terminals on GSTN and ISDN*.
  - [ITU-T Recommendation H.283](http://www.itu.int/rec/T-REC-H.283/en/), *Remote device control logical channel transport*.
  - [ITU-T Recommendation H.341](http://www.itu.int/rec/T-REC-H.341/en/), *Multimedia management information base*.

<!-- end list -->

  - ITU-T H.235系列建议书

<!-- end list -->

  - [ITU-T Recommendation H.235.1](http://www.itu.int/rec/T-REC-H.235.1/en/), *H.323 security framework: Baseline security profile*.
  - [ITU-T Recommendation H.235.2](http://www.itu.int/rec/T-REC-H.235.2/en/), *H.323 security framework: Signature security profile*.
  - [ITU-T Recommendation H.235.3](http://www.itu.int/rec/T-REC-H.235.3/en/), *H.323 security: Hybrid security profile*.
  - [ITU-T Recommendation H.235.4](http://www.itu.int/rec/T-REC-H.235.4/en/), *H.323 security: Direct and selective routed call security*.
  - [ITU-T Recommendation H.235.5](http://www.itu.int/rec/T-REC-H.235.5/en/), *H.323 security: Framework for secure authentication in RAS using weak shared secrets*.
  - [ITU-T Recommendation H.235.6](http://www.itu.int/rec/T-REC-H.235.6/en/), *H.323 security framework: Voice encryption profile with native H.235/H.245 key management*.
  - [ITU-T Recommendation H.235.7](http://www.itu.int/rec/T-REC-H.235.7/en/), *H.323 security framework: Usage of the MIKEY key management protocol for the Secure Real Time Transport Protocol (SRTP) within H.235*.
  - [ITU-T Recommendation H.235.8](http://www.itu.int/rec/T-REC-H.235.8/en/), *H.323 security: Key exchange for SRTP using secure signalling channels*.
  - [ITU-T Recommendation H.235.9](http://www.itu.int/rec/T-REC-H.235.9/en/), *H.323 security: Security gateway support for H.323*.

<!-- end list -->

  - ITU-T H.450系列建议书

<!-- end list -->

  - [ITU-T Recommendation H.450.1](http://www.itu.int/rec/T-REC-H.450.1/en/), *Generic functional protocol for the support of supplementary services in H.323*.
  - [ITU-T Recommendation H.450.2](http://www.itu.int/rec/T-REC-H.450.2/en/), *Call transfer supplementary service for H.323*.
  - [ITU-T Recommendation H.450.3](http://www.itu.int/rec/T-REC-H.450.3/en/), *Call diversion supplementary service for H.323*.
  - [ITU-T Recommendation H.450.4](http://www.itu.int/rec/T-REC-H.450.4/en/), *Call hold supplementary service for H.323*.
  - [ITU-T Recommendation H.450.5](http://www.itu.int/rec/T-REC-H.450.5/en/), *Call park and call pickup supplementary service for H.323*.
  - [ITU-T Recommendation H.450.6](http://www.itu.int/rec/T-REC-H.450.6/en/), *Call waiting supplementary service for H.323*.
  - [ITU-T Recommendation H.450.7](http://www.itu.int/rec/T-REC-H.450.7/en/), *Message waiting indication supplementary service for H.323*.
  - [ITU-T Recommendation H.450.8](http://www.itu.int/rec/T-REC-H.450.8/en/), *Name identification supplementary service for H.323*.
  - [ITU-T Recommendation H.450.9](http://www.itu.int/rec/T-REC-H.450.9/en/), *Call completion supplementary service for H.323*.
  - [ITU-T Recommendation H.450.10](http://www.itu.int/rec/T-REC-H.450.10/en/), *Call offering supplementary service for H.323*.
  - [ITU-T Recommendation H.450.11](http://www.itu.int/rec/T-REC-H.450.11/en/), *Call intrusion supplementary service for H.323*.
  - [ITU-T Recommendation H.450.12](http://www.itu.int/rec/T-REC-H.450.12/en/), *Common Information Additional Network Feature for H.323*.

<!-- end list -->

  - ITU-T H.460系列建议书

<!-- end list -->

  - [ITU-T Recommendation H.460.1](http://www.itu.int/rec/T-REC-H.460.1/en/), *Guidelines for the user of the generic extensible framework*.
  - [ITU-T Recommendation H.460.2](http://www.itu.int/rec/T-REC-H.460.2/en/), *Number Portability interworking between H.323 and SCN networks*.
  - [ITU-T Recommendation H.460.3](http://www.itu.int/rec/T-REC-H.460.3/en/), *Circuit maps within H.323 systems*.
  - [ITU-T Recommendation H.460.4](http://www.itu.int/rec/T-REC-H.460.4/en/), *Call priority designation and country/international network of call origination identification for H.323 priority calls*.
  - [ITU-T Recommendation H.460.5](http://www.itu.int/rec/T-REC-H.460.5/en/), *H.225.0 transport of multipl Q.931 information elements of the same type*.
  - [ITU-T Recommendation H.460.6](http://www.itu.int/rec/T-REC-H.460.6/en/), *Extended Fast Connect feature*.
  - [ITU-T Recommendation H.460.7](http://www.itu.int/rec/T-REC-H.460.7/en/), *Digit maps within H.323 systems*.
  - [ITU-T Recommendation H.460.8](http://www.itu.int/rec/T-REC-H.460.8/en/), *Queirying for alternate routes within H.323 systems*.
  - [ITU-T Recommendation H.460.9](http://www.itu.int/rec/T-REC-H.460.9/en/), *Support for online QoS-monitoring reporting within H.323 systems*.
  - [ITU-T Recommendation H.460.10](http://www.itu.int/rec/T-REC-H.460.10/en/), *Call party category within H.323 systems*.
  - [ITU-T Recommendation H.460.11](http://www.itu.int/rec/T-REC-H.460.11/en/), *Delayed call establishment within H.323 systems*.
  - [ITU-T Recommendation H.460.12](http://www.itu.int/rec/T-REC-H.460.12/en/), *Called user release control*.
  - [ITU-T Recommendation H.460.13](http://www.itu.int/rec/T-REC-H.460.13/en/), *Support for Multi-Level Precedence and Preemption (MLPP) within H.323 systems*.
  - [ITU-T Recommendation H.460.14](http://www.itu.int/rec/T-REC-H.460.14/en/), *Call signalling transport channel suspension and redirection within H.323 systems*.
  - [ITU-T Recommendation H.460.15](http://www.itu.int/rec/T-REC-H.460.15/en/), *Multiple message release sequence capability*.
  - [ITU-T Recommendation H.460.16](http://www.itu.int/rec/T-REC-H.460.16/en/), *Using H.225.0 call signalling connection as transport for H.323 RAS messages*.
  - [ITU-T Recommendation H.460.17](http://www.itu.int/rec/T-REC-H.460.17/en/), *Traversal of H.323 signalling across network address translators and firewalls*.
  - [ITU-T Recommendation H.460.18](http://www.itu.int/rec/T-REC-H.460.18/en/), *Traversal of H.323 signalling across network address translators and firewalls*.
  - [ITU-T Recommendation H.460.19](http://www.itu.int/rec/T-REC-H.460.19/en/), *Traversal of H.323 media across network address translators and firewalls*.
  - [ITU-T Recommendation H.460.20](http://www.itu.int/rec/T-REC-H.460.20/en/), *Location number within H.323 systems*.
  - [ITU-T Recommendation H.460.21](http://www.itu.int/rec/T-REC-H.460.21/en/), *Message broadcast for H.323 systems*.
  - [ITU-T Recommendation H.460.22](http://www.itu.int/rec/T-REC-H.460.22/en/), *Negotiation of security protocols to protect H.225.0 Call Signalling Messages*.

<!-- end list -->

  - ITU-T H.500系列建议书

<!-- end list -->

  - [ITU-T Recommendation H.501](http://www.itu.int/rec/T-REC-H.501/en/), *Protocol for mobility management and intra/inter-domain communication in multimedia systems*.
  - [ITU-T Recommendation H.510](http://www.itu.int/rec/T-REC-H.510/en/), *Mobility for H.323 multimedia systems and services*.
  - [ITU-T Recommendation H.530](http://www.itu.int/rec/T-REC-H.530/en/), *Symmetric security procedures for H.323 mobility in H.510*.

## 参考资料

<references/>

## 參見

  - [GNU Gatekeeper](../Page/GNU_Gatekeeper.md "wikilink")

[Category:ITU-T標準](https://zh.wikipedia.org/wiki/Category:ITU-T標準 "wikilink") [Category:通信技术](https://zh.wikipedia.org/wiki/Category:通信技术 "wikilink") [Category:多媒体](https://zh.wikipedia.org/wiki/Category:多媒体 "wikilink")

1.  [ITU-T Recommendation H.323 (11/1996)](http://www.itu.int/rec/T-REC-H.323-199611-S/en/), first version of H.323.
2.  IP telephony cookbook 2004