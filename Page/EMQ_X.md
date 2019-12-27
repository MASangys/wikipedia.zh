**EMQ X**（简称**EMQ**），曾用名 **emqttd**（v3.0 版本开始正式更名为 EMQ X）， 基于 [Erlang](../Page/Erlang.md "wikilink") 语言平台开发，是一款完全开源，高度可伸缩，高可用的分布式 [MQTT](../Page/MQTT.md "wikilink") 消息服务器。EMQ 支持大规模 [MQTT](../Page/MQTT.md "wikilink") 连接和分布式集群，同时也支持 CoAP/LwM2M 一站式 [IoT](https://zh.wikipedia.org/wiki/IoT "wikilink") 协议接入。

EMQ 是 [5G](../Page/5G.md "wikilink") 时代万物互联的消息引擎，适用于 [IoT](https://zh.wikipedia.org/wiki/IoT "wikilink")、[M2M](https://zh.wikipedia.org/wiki/M2M "wikilink") 和移动应用程序，可处理千万级别的并发客户端，帮助企业快速构建物联网平台与应用。\[1\]

## 特性

EMQ 作为[物联网](../Page/物联网.md "wikilink")应用开发和物联网平台搭建的基础设施软件之一，主要在边缘和云端实现物联网设备互联与设备上云，提供物联网设备接入、协议处理、消息路由、数据存储、流数据处理等核心能力。其特性如下：

  - 物联网设备一站式连接。[3G](../Page/3G.md "wikilink")/[4G](../Page/4G.md "wikilink")/[5G](../Page/5G.md "wikilink")&[NB-IoT](../Page/NB-IoT.md "wikilink") 全网络支持，[TLS](https://zh.wikipedia.org/wiki/TLS "wikilink")/[DTLS](https://zh.wikipedia.org/wiki/DTLS "wikilink") 多重网络安全，[X.509](../Page/X.509.md "wikilink") 证书等多种身份认证；
  - 基于 [Erlang](../Page/Erlang.md "wikilink")/OTP 电信级软实时消息架构，支持海量 [MQTT](../Page/MQTT.md "wikilink")/[TCP](https://zh.wikipedia.org/wiki/TCP "wikilink") 连接。大规模分布式，高可用集群架构，弹性伸缩部署；
  - 内置扩展插件架构，支持以插件方式提供认证、ACL、存储接口，能非常方便的与上层物联网应用及其他 [IT](https://zh.wikipedia.org/wiki/IT "wikilink") 系统快速集成；
  - 多种[物联网](../Page/物联网.md "wikilink")协议支持。完整支持 [MQTT](../Page/MQTT.md "wikilink") V5.0 协议规范，并下兼容 [MQTT](../Page/MQTT.md "wikilink") V3.1 和 V3.1.1，还可扩展支持 MQTT-SN、CoAP、LwM2M、[WebSocket](../Page/WebSocket.md "wikilink")、STOMP 或私有 [TCP](https://zh.wikipedia.org/wiki/TCP "wikilink") 等多种[物联网](../Page/物联网.md "wikilink")协议；
  - 内置高性能的规则引擎，一站式数据提取、过滤与转换。灵活集成 [SQL](../Page/SQL.md "wikilink")、[NoSQL](../Page/NoSQL.md "wikilink")、时序数据库，及 [Kafka](../Page/Kafka.md "wikilink") 等流处理中间件。
  - 从资源受限的边缘计算设备，到私有云、混合云和公共云之上，到跨域、跨 [IDC](https://zh.wikipedia.org/wiki/IDC "wikilink") 与跨多云，EMQ 支持物理机、VM、容器/K8S 跨平台任意部署；
  - 完全开放源码，基于 [Apache许可证](../Page/Apache许可证.md "wikilink") 2.0 开源协议。

## 架构设计

### 概览

EMQ 消息服务器在设计上，首先分离了前端协议(FrontEnd)与后端集成(Backend)，其次分离了消息路由平面(Flow Plane)与监控管理平面(Monitor/Control Plane)。

EMQ 消息服务器是基于 [Erlang](../Page/Erlang.md "wikilink")/OTP 平台的全异步的架构：异步 [TCP](https://zh.wikipedia.org/wiki/TCP "wikilink") 连接处理、异步主题(Topic)订阅、异步消息发布。只有在资源负载限制部分采用同步设计，比如 [TCP](https://zh.wikipedia.org/wiki/TCP "wikilink") 连接创建和 [Mnesia](../Page/Mnesia.md "wikilink") 数据库事务执行。

### 设计原则

EMQ 概念上更像一台网络[路由器](../Page/路由器.md "wikilink")(Router)或[交换机](https://zh.wikipedia.org/wiki/交换机 "wikilink")(Switch)，而不是传统的企业级[消息队列](../Page/消息队列.md "wikilink")(MQ)。相比网络路由器按 [IP](https://zh.wikipedia.org/wiki/IP "wikilink") 地址或 [MPLS](https://zh.wikipedia.org/wiki/MPLS "wikilink") 标签路由报文，EMQ 按主题树发布订阅模式在集群节点间路由 [MQTT](../Page/MQTT.md "wikilink") 消息。

1.  EMQ 消息服务器核心解决的问题：处理海量的并发 [MQTT](../Page/MQTT.md "wikilink") 连接与路由消息；
2.  充分利用 [Erlang](../Page/Erlang.md "wikilink")/OTP 平台软实时、低延时、高并发、分布容错的优势；
3.  [连接](../Page/连接.md "wikilink")(Connection)、[会话](https://zh.wikipedia.org/wiki/会话 "wikilink")(Session)、[路由](../Page/路由.md "wikilink")(Router)、[集群](https://zh.wikipedia.org/wiki/集群 "wikilink")(Cluster)分层；
4.  消息路由平面(Flow Plane)与控制管理平面(Control Plane)分离；
5.  支持后端数据库或 [NoSQL](../Page/NoSQL.md "wikilink") 实现数据持久化、容灾备份与应用集成。

### 系统分层

1.  连接层(Connection Layer)：负责 TCP 连接处理、 [MQTT](../Page/MQTT.md "wikilink") 协议编解码；
2.  会话层(Session Layer)：处理 [MQTT](../Page/MQTT.md "wikilink") 协议发布订阅消息交互流程；
3.  路由层(Route Layer)：节点内路由派发 [MQTT](../Page/MQTT.md "wikilink") 消息；
4.  分布层(Distributed Layer)：分布节点间路由 [MQTT](../Page/MQTT.md "wikilink") 消息；
5.  认证与访问控制(ACL)：连接层支持可扩展的认证与访问控制模块；
6.  钩子(Hooks)与插件(Plugins)：系统每层提供可扩展的钩子，支持插件方式扩展服务器。

## 安装

EMQ 是[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，支持 [Linux](../Page/Linux.md "wikilink")、[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、 [MacOS](../Page/MacOS.md "wikilink") 以及 [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")。这意味着 EMQ 既可以部署在 [x86_64](https://zh.wikipedia.org/wiki/x86_64 "wikilink") 架构的服务器上，也可以部署在 [Raspberry Pi](https://zh.wikipedia.org/wiki/Raspberry_Pi "wikilink") 这样的 [ARM](https://zh.wikipedia.org/wiki/ARM "wikilink") 设备上。

使用 EMQ Docker 镜像进行快速安装：

``` bash
docker run -d --name emqx -p 1883:1883 -p 8083:8083 -p 8883:8883 -p 8084:8084 -p 18083:18083 emqx/emqx
```

## 参考资料

## 外部链接

1.