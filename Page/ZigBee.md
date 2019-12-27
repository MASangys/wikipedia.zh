[Eazix_numbered.jpg](https://zh.wikipedia.org/wiki/File:Eazix_numbered.jpg "fig:Eazix_numbered.jpg") **ZigBee**，也称**紫蜂**\[1\]，是一種低速短距離傳輸的[無線網路協定](https://zh.wikipedia.org/wiki/無線網路 "wikilink")，底層是採用[IEEE 802.15.4標準規範的](../Page/IEEE_802.md "wikilink")[媒體存取層與](https://zh.wikipedia.org/wiki/媒體存取控制 "wikilink")[實體層](https://zh.wikipedia.org/wiki/實體層 "wikilink")。主要特色有低速、低耗電、低成本、支援大量網路節點、支援多種[網路拓撲](https://zh.wikipedia.org/wiki/網路拓撲 "wikilink")、低复杂度、快速、可靠、安全。

## 發展歷程

主要由[Honeywell公司組成的ZigBee](https://zh.wikipedia.org/wiki/Honeywell "wikilink") Alliance制定，從1998年開始發展，於2001年向[電機電子工程師學會](https://zh.wikipedia.org/wiki/電機電子工程師學會 "wikilink")（IEEE）提案納入IEEE 802.15.4標準規範之中，自此將ZigBee技術漸漸成為各業界共同通用的低速短距無線通訊技術之一\[2\]。

## IEEE802.15.4/ZigBee协议概述

IEEE802.15.4协议是IEEE802.15.4工作组为低速率无线个人区域网（WPAN:Wireless Personal Area Network）制定的标准，该工作组成立于2002年12月，致力于定义一种廉价的，固定、便携或移动设备使用的，低复杂度、低成本、低功耗、低速率的无线连接技术，并于2003年12月通过了第一个802.15.4标准。随着无线传感器网络技术的发展，无线传感器网络的标准也得到了快速的发展。802.15.4标准定义了在个人区域网中通过射频方式在设备间进行互连的方式与协议，该标准使用避免冲突的载波监听多址接入以方式作为媒体访问机制，同时支持星型与对等型拓扑结构。

在802.15.4标准中指定了两个物理频段和直接序列擴頻（DSSS）物理层频段：868/915MHz和2.4GHz。2.4GHz的物理层支持空气中250kb/s的速率，而868/915MHz的物理层支持空气中20kb/s和40kb/s的传输速率。由于数据包开销和处理延迟，实际的数据吞吐量会小于规定的比特率。作为支持低速率、低功耗、短距离无线通信的协议标准，802.15.4在无线电频率和数据率、数据传输模型、设备类型、网络工作方式、安全等方面都做出了说明。并且将协议模型划分为物理层和媒体接入控制层两个子层进行实现。

ZigBee协议是由ZigBee联盟制定的无线通信标准，该联盟成立于2001年8月。2002年下半年，英国Invensys公司、日本三菱电气公司、美国摩托罗拉公司以及荷兰飞利浦半导体公司共同宣布加入ZigBee联盟，研发名为“ZigBee”的下一代无线通信标准，这一事件成为该技术发展过程中的里程碑。ZigBee联盟现有的理事公司包括BM Group，Ember公司，飞思卡尔半导体，Honeywell，三菱电机，摩托罗拉，飞利浦，三星电子，西门子，及德州仪器。ZigBee联盟的目的是为了在全球统一标准上实现简单可靠、价格低廉、功耗低、无线连接的监测和控制产品进行合作，并于2004年12月发布了第一个正式标准。

## 縮寫與用語解釋

  - AF - Application Framework（应用层框架）。
  - APL - Application Layer（應用層）。
  - APS - Application Support sublayer（应用支撑层）。
  - MAC - Media Access Control layer（媒体访问控制层）。
  - NIB - Network Information Base（網路資訊庫）
  - NWK - Network layer（网络层）。
  - PHY - Physical layer（實體層）。
  - WPAN - Wireless Personal Area Network。為IEEE 802.15族系所規範的一系列無線個人區網標準。
  - ZC - ZigBee Coordinator（ZigBee协调员）。
  - [ZDO - ZigBee Device Object（ZigBee设备对象）。](https://zh.wikipedia.org/wiki/#ZigBee.E8.A3.9D.E7.BD.AE.E7.AE.A1.E5.88.B6.E7.89.A9.E4.BB.B6.28ZigBee_Device_Object.2C_ZDO.29 "wikilink")
  - ZED - ZigBee End Device（ZigBee终端设备）。
  - ZR - ZigBee Router（ZigBee路由）。
  - FFD - Full Function Device（全功能器件）。
  - RFD - Reduce Function Device（精简功能器件）。

## 協定層與標準說明

ZigBee協定層從下到上分別為實體層（PHY）、媒體存取層（MAC）、網路層（NWK）、應用層（APL）等。網路裝置的角色可分為ZigBee Coordinator、ZigBee Router、ZigBee End Device等三種。支援網路拓撲有星型、树型、网型等三種。

### 網路層（NWK）

網路層負責以下工作：

  - 加入與離開某個網路
  - 將封包做安全性處理
  - 传送封包到目標節點
  - 找尋並維護節點間的繞徑路線
  - 搜尋鄰節點
  - 儲存相關鄰節點資訊

ZigBee Coordinator額外工作：

  - 發起一個網路
  - 設定各項網路參數
  - 分派網路位址並規範網路位址分發原則

#### NWK Primitives（网络层原语）

  - NLDE-DATA
  - NLME-NETWORK-DISCOVERY
  - NLME-NETWORK-FORMATION
  - NLME-PERMIT-JOINING
  - NLME-START-ROUTER
  - NLME-JOIN
  - NLME-DIRECT-JOIN
  - NLME-LEAVE
  - NLME-RESET
  - NLME-SYNC
  - NLME-GET
  - NLME-SET

ZigBee V1.1新增：

  - NLME-ROUTE-ERROR
  - NLME-ROUTE-DISCOVERY
  - NLME-TEST

### 應用層（APL）

  - ZigBee應用層包含應用程式支援子層（APS）、應用程式框架（AF）、ZigBee裝置管控物件（ZDO）與各廠商定義的應用程式物件。
  - APS次層提供網路層與應用層之間的介面，維持物件之間的連結表（binding table），並在連結的裝置之間傳遞訊息，它也維持了一個APS資訊庫（APS Information Base, AIB）。
  - ZDO的功能包括起始應用程式支援子層、網路層以及安全服務等。

#### 應用程式支援子層（APS）

APS子層是負責上層應用程式物件與下層網路層的協調。其工作有：

  - 維護Binding表，這是用來配對兩網路節點間所需服務的對應表。
  - 轉發已配對裝置間的訊息。
  - 處理64位元IEEE位址與16位元NWK位址間的對應。

ZigBee V1.1新增：

  - 群播位址定義，移除與過濾群播訊息。

##### APS Primitives

  - APSDE-Data
  - APSME-BIND
  - APSME-GET
  - APSME-SET
  - APSME-UNBIND
  - APEME-ESTABLISH-KEY
  - APSME-TRANSPORT-KEY
  - APSME-UPDATE-DEVICE
  - APSME-REMOVE-DEVICE
  - APSME-REQUEST-KEY
  - APSME-SWITCH-KEY

ZigBee V1.1新增

  - APSME-ADD-GROUP
  - APSME-REMOVE-GROUP
  - APSME-REMOVE-ALL-GROUPS

#### ZigBee裝置管制物件（ZigBee Device Object, ZDO）

ZDO可視為應用程式物件之一，所不同的是ZDO專門負責整體系統的管理事務，Endpoint 0只能且必定由ZDO使用，每個節點都一定有此物件。負責工作有：

  - 定義或調整本身裝置在網路上的角色（ZC、ZR或ZED）。
  - 建構上層應用所需的資訊、發出或回應連結的要求。
  - 搜尋並探知其他網路節點可用的應用程式服務。
  - 起始與回應配對要求。
  - 建立兩網路節點間的安全性關係。

## 版本

### ZigBee V1.0

這是第一個ZigBee標準公開版，於2005年6月開放下載，文件內記載公布時間為*June 27, 2005*，內部文件編號為053474r06。

### ZigBee V1.1

第二個ZigBee標準公開版，於2007年1月開放下載，文件內記載公佈時間為*December 1, 2006*，內部文件編號為053474r13。又稱為ZigBee 2006。

### ZigBee V1.2

第三個ZigBee標準公開版，於2008年1月開放下載，文件內記載公佈時間為*January 17, 2008*，內部文件編號為053474r17。又稱為ZigBee Pro、ZigBee 2007。

## 整理

### 資訊庫（Information Base）

ZigBee某些層有資訊庫儲存該層所需資訊，共有以下幾種：

  - MAC資訊庫（MIB）
  - NWK資訊庫（NIB）
  - APS資訊庫（AIB）

### Profile

ZigBee所定義的Profile有兩種：

  - Application Pro：針對各種不同應用情境所定義出的概略行為藍圖，如**Home Control Lighting (HCL)**和**Home Automation (HA)**。一般所稱的Profile通常是指此種Profile。
  - Stack Pro：主要規定通用性的網路參數，如**Network Specific**、**Home Controls (HC)**、**Building Automation (BA)**、**Plant Control**等Stack Profile。原則上Application Profile中會說明可採用何種Stack Profile來作為基礎網路建構方案，如HCL中即採用HC作為網路建構方案。

### 各層定址

  - MAC：可採用64位元IEEE位址或16位元NWK位址。
  - NWK：16位元NWK位址。
  - APS：8位元Endpoint號碼。

## 比較

| 標題文字 | Wi-Fi    | ZigBee                | 电力载波           | Bluetooth      |
| ---- | -------- | --------------------- | -------------- | -------------- |
| 传输距离 | 100-300m | 50-300m               | 500m           | 1-10m          |
| 传输速率 | 300Mbps  | 250kbps               | 500Mbps        | 1Mbps          |
| 功耗   | 10-50mA  | 5mA                   |                | ZigBee和Wi-Fi之间 |
| 特点   | 应用最广     | 可自组网，网络节点数最大可达65000个。 | 可基于电力线传输，无需布线。 |                |

## 參考文獻

<div class="references-small">

<references>

</references>

</div>

## 外部連結

  - [ZigBee Alliance](http://www.zigbee.org/)
  - [IEEE 802.15.4 WPAN Working Group](http://www.ieee802.org/15/pub/TG4.html)
  - [Listing of major ZigBee semiconductor suppliers](http://www.microcontroller.com/EmbeddedSystems.asp?c=28)
  - [ZigBee Wireless Networks for Industrial Systems (white paper)](http://www.microcontroller.com/Embedded.asp?did=149)
  - [ZigBee introduction course](http://zigbee.hasse.nl/) ZigBee簡介（英文和荷蘭文）
  - [Palowireless ZigBee Resource Center](https://web.archive.org/web/20070127004257/http://www.palowireless.com/zigbee/)新聞、文件與資源
  - [ZigBee Chatter](http://hardware.slashdot.org/article.pl?sid=05/08/01/1739228&tid=193&tid=1) Slashdot用戶討論ZigBee文件的文件
  - [OpenBee](http://www.openbee.org/)一個使用UML開發ZigBee程式的開發套件，並帶有ZigBee協定堆疊軟體
  - [A ZigBeeTM-subset/IEEE 802.15.4TM Multi-platform Protocol Stack](https://archive.is/20121212103407/http://www.ece.msstate.edu/~reese/msstatePAN/)美國密西西比州立大學所開發的WPAN套件，並不支援完整的ZigBee協定
  - [Using ZigBee Wireless Networking to Develop Commercial Products](http://www.rtcmagazine.com/home/article.php?id=100656)
  - [1](https://web.archive.org/web/20131224115835/http://www.cn.nxp.com/news/news-archive/2013/smart_lighting.html) 恩智浦智能照明方案

[Category:无线网络](https://zh.wikipedia.org/wiki/Category:无线网络 "wikilink") [Category:IEEE_802](https://zh.wikipedia.org/wiki/Category:IEEE_802 "wikilink")

1.
2.