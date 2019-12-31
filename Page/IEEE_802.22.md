> 本文内容由[IEEE 802.22](https://zh.wikipedia.org/wiki/IEEE_802.22)转换而来。


IEEE 802.22标准全称为：*Standard for Wireless Regional Area Networks (WRAN) - Specific requirements - Part 22: Cognitive Wireless RAN Medium Access Control (MAC) and Physical Layer (PHY) Specifications: Policies and procedures for operation in the TV Bands*\[1\]

IEEE 802.22 标准规定了在一个固定的基站与一个或多个固定或移动的用户通信终端之间的空中接口。该空中接口包括基于[认知无线电技术的介质访问控制层](https://zh.wikipedia.org/wiki/认知无线电 "wikilink")(MAC layer)以及物理层(PHY layer)，使用54MHz至862MHz之间的[甚高频](https://zh.wikipedia.org/wiki/甚高頻 "wikilink")(VHF)/[特高频](https://zh.wikipedia.org/wiki/特高频 "wikilink")(UHF)电视广播频段进行通信。IEEE 802.22标准旨在解决用户密度较低但面积较大的郊区地带，低成本的无线宽带接入数据网络的问题。同时，保证不会对其所使用的频段上的其他通信设备，包括数字电视广播，模拟电视广播和低功率授权设备（如无线麦克风）等造成干扰。

## 标准产生背景

### 需求

随着互联网在世界上的普及，以及对于经济、文化和教育方面等产生巨大的影响和推动，世界上仍存在很大部分部分人口密度低，面积大的乡村地区，尤其在亚非拉美等发展中国家，无法实现互联网等数据通信网络的接入。在传统的接入手段下，由于服务覆盖面积以及服务终端地理分布范围较广等因素，运营商实现数据通信服务的接入成本巨大。

### 电视空闲频段(TV white space)

分配给电视广播的频谱使用率很低\[2\]。在该频段上的其他干扰信号很少。该频段电磁波具有非视距传播特性。同时天线的尺寸合理。单个基站能覆盖较大范围。

## 标准技术内容

### 物理层

IEEE802.22主要物理层参数见下表

|        |                        |
| ------ | ---------------------- |
| 参数     | 标准值                    |
| 频率范围   | 54-862MHz              |
| 信道带宽   | 6,7或8MHz （根据各地区电视信道带宽） |
| 通信速率   | 4.54-22.69Mbps         |
| 信号调制方式 | QPSK，16-QAM，64QAM      |
| 信道复用方式 | 时分复用                   |
| 多址方式   | 正交频分多址（OFDMA）          |

### 介质访问控制层 MAC

#### 数据传输

IEEE 802.22设备应具备48比特的通用MAC地址。设备之间的连接由12比特的连接认证码（CIDs）标示。

#### 超帧（[superframe](https://zh.wikipedia.org/wiki/superframe "wikilink")）与帧（frame）结构

超帧长度160ms，由16个10ms的帧构成。每个超帧开始，有一个超帧前缀，一个帧前缀和一个超帧控制头。其余每帧开始有一个帧前缀。每一帧由下行子帧和上行子帧构成。

#### 自辨识能力

IEEE 802.22标准中，具有自辨识机制。每个IEEE802.22网络可以探测到其他在相邻地区的IEEE802.22网络的工作，以避免互相干扰。

### 认知无线电功能

由于本标准使用的频段是分配给电视以及其他合法用户的，因此，符合本标准的通信设备必须具备感知本身周围其他合法用户的通信行为的能力，也可称为认知无线电能力。实现这个能力的方法，主要依靠频谱感知功能块，地理位置信息以及合法用户频谱使用信息数据库。

#### 地理位置信息与合法用户频谱使用信息数据库

使用本标准的所有通信设备都必须装备卫星定位系统（如[GPS](https://zh.wikipedia.org/wiki/GPS "wikilink")，[伽利略等](../Page/伽利略定位系統.md "wikilink")）。合法用户频谱使用数据库中，存储所有工作在电视频段上的授权设备的地理位置，通信时间，以及使用频段的信息。这样就可以保证IEEE 802.22设备不会对其他已授权用户的通信产生影响。

#### 频谱感知

按照IEEE 802.22标准要求，设备必须具备感知周围的信道是否被合法授权用户占用的能力。感知要求包括四部分：感知接收器灵敏度，信道检测时间，成功检测概率（信道被占用且被检测出占用）和假警报概率（信道未被占用且被检测出占用）。

## 参见

  - [IEEE 802](../Page/IEEE_802.md "wikilink")

[Category:無線通信](https://zh.wikipedia.org/wiki/Category:無線通信 "wikilink") [Category:IEEE_802](https://zh.wikipedia.org/wiki/Category:IEEE_802 "wikilink")

1.
2.