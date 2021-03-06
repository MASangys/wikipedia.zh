> 本文内容由[私有VLAN](https://zh.wikipedia.org/wiki/私有VLAN)转换而来。


**私有VLAN**（英文：Private VLAN），也称为**专用VLAN**，是一種[電腦網路技術](https://zh.wikipedia.org/wiki/電腦網路 "wikilink")，它包含被限制的交换机端口，使得它们只能与给定的“上行链路”（uplink）通信。受限（restricted）端口称为“私有端口”。每个专用VLAN通常包含许多私有端口和单个上行链路。上行链路通常是连接到路由器、防火墙、服务器、提供商网络或类似中心资源的端口。

无论VLAN ID或目的MAC地址如何，交换机将从专用端口接收的所有帧转发到上行端口。从上行链路端口接收的帧以正常方式转发（即，到承载目的地MAC地址的端口，或广播帧的所有端口或未知目的地MAC地址）。结果，通过交换机的端对端流量会被交换机阻塞（blocked），并且任何这样的通信必须经过上行链路。私有VLAN在数据链路层提供通讯间的隔离，但网络设备的配置会导致客户端仍然可能在高层进行通信。

私有VLAN的典型应用是酒店或家庭以太网，每个房间或公寓都有一个可以上网的端口。在基于以太网的ADSL DSLAM中使用类似的端口隔离。允许客户节点之间的直接数据链路层通信将使本地网络暴露于诸如ARP Spoofing之类的各种安全攻击，并增加由于配置错误而导致的损坏的可能性。

私有VLAN的另一个应用是简化IP地址分配。属于同一个IP子网时，端口在数据链路层可以彼此隔离（出于安全性，性能或其他原因）。在这种情况下，受保护端口上的IP主机之间的直接通信只能通过使用MAC-Forced Forwarding或类似的基于Proxy ARP的解决方案通过上行链路连接来实现。

## 概述

[缩略图](https://zh.wikipedia.org/wiki/File:Private_VLAN_Traffic_Flow.jpg "fig:缩略图") 私有VLAN将一个主要VLAN划分为多个次要VLAN，并同时保留现有的IP子网和第三层配置。常规VLAN是单个广播域，而私有VLAN将一个广播域分成多个较小的广播子域。

  - 主要VLAN：原始的VLAN。这种类型的VLAN用于将数据帧下行转发到所有次要VLAN。
  - 次要VLAN：次要VLAN配置为以下类型之一：
      - 隔离（Isolated）：与隔离VLAN相关联的任何端口都可以到达主要VLAN，但不能访问任何其他次要VLAN。此外，与同一个隔离VLAN关联的主机无法相互通讯。一个私有VLAN中可以有多个隔离VLAN（如果出于安全考虑，VLAN需要使用不同的路径，则可能会有用）; 隔离VLAN的端口在每个VLAN内保持彼此隔离。\[1\]
      - 公共（Community）：与公共VLAN相关联的任何交换机端口都可以相互通信，并与主VLAN进行通信，但不能与任何其他辅助VLAN进行通信。一个私有VLAN内可以有多个不同的公共VLAN。

私有VLAN主要有两种类型的端口：混杂端口（P-Port）和主机端口。主机端口进一步分为两种类型：隔离端口（I-Port）和公共端口（C-Port）。

  - 混杂端口（P-Port）：交换机端口连接到路由器，防火墙或其他网关设备。该端口可以与连接到主VLAN或任何辅助VLAN的任何其他端口进行通信。换句话说，它是允许从VLAN中任何其他端口发送和接收数据帧的一种类型的端口。
  - 主机端口：
      - 隔离端口（I-Port）：连接到隔离VLAN上的常规主机。此端口只能与P-Port通信。
      - 公共端口（C-Port）：连接到公共VLAN上的常规主机。该端口能与同一个私有VLAN上的P-Port和C-Port端口进行通信。

[Devices_connected_to_Switch.JPG](https://zh.wikipedia.org/wiki/File:Devices_connected_to_Switch.JPG "fig:Devices_connected_to_Switch.JPG") 示例：一台VLAN100的交换机，为其配置一个私有VLAN，一个端口为P-Port，两个端口为隔离VLAN 101，四个端口为公共VLAN 102和公共VLAN 103。交换机有一个uplink-port（上行端口）（trunk），连接到另一个交换机。如右图。

下表显示了可以在这些端口之间通讯的流量。

|         | I-Port | P-Port | C1-Port | C2-Port | 上鏈至交換器2 |
| ------- | ------ | ------ | ------- | ------- | ------- |
| I-Port  | 拒絕     | 允許     | 拒絕      | 拒絕      | 允許/拒絕   |
| P-Port  | 允許     | 允許     | 允許      | 允許      | 允許      |
| C1-Port | 拒絕     | 允許     | 允許      | 拒絕      | 允許      |
| C2-Port | 拒絕     | 允許     | 拒絕      | 允許      | 允許      |
| 上鏈至交換器2 | 允許/拒絕  | 允許     | 允許      | 允許      | 允許      |

流量从Uplink-port到隔离端口将会被拒绝。如果在主要VLAN中，将允许从uplink-port到隔离端口的流量。

## 相關RFC

  - – Cisco Systems' Private VLANs: Scalable Security in a Multi-Client Environment

## 參考資料

### 腳註

### 其他

  -
  - CCNP BCMSN Official exam certification guide.By-David Hucaby, ,

[Category:局域网](https://zh.wikipedia.org/wiki/Category:局域网 "wikilink") [Category:網路結構](https://zh.wikipedia.org/wiki/Category:網路結構 "wikilink")

1.