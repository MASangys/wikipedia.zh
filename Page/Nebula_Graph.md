Nebula Graph：一个开源\[1\]的分布式图数据库。Nebula Graph 是一个能够容纳千亿个顶点和万亿条边，并提供毫秒级查询延时的图数据库，其目标是为超大规模图数据提供高并发，低延时的读、写及计算\[2\]。

| 中文名 | Nebula Graph 图数据库     |
| --- | --------------------- |
| 英文名 | Nebula Graph Database |

### 简介

Nebula Graph 是一个超大规模的[图数据库](../Page/图数据库.md "wikilink")，主要应用于在线场景对**超大规模**关系网络的**高频**实时变更和查询。

### 特点

1\. **[开源](https://github.com/vesoft-inc/nebula)**

Nebula Graph 是一个完全开源的 [C++](../Page/C++.md "wikilink") 项目，欢迎开源软件爱好者参与 Nebula 社区。

2\. **[分布式](https://zh.wikipedia.org/wiki/分布式 "wikilink")**

Nebula Graph 采用 shared-nothing 的分布式架构，存储计算分离，无单点瓶颈。

3\. **可扩展**

  - 支持水平扩展，各模块可独立扩缩容。
  - 支持垂直扩展，支持新型硬件 [RDMA](https://zh.wikipedia.org/wiki/RDMA "wikilink")、[AEP](https://zh.wikipedia.org/wiki/AEP "wikilink")。

4\. **高[容错](https://zh.wikipedia.org/wiki/容错 "wikilink")**

多重冗余架构设计，为数据持久存储提供可靠保障。

5\. **[SQL](../Page/SQL.md "wikilink") 式的图查询语言**

图查询语言 Nebula Graph Query Language，支持多种图遍历与图计算，适用于复杂业务场景。

### 系统架构 Architecture

Nebula Graph 包括四个主要的功能模块，分别是**存储层**、**[元数据](../Page/元数据.md "wikilink")服务**、**计算层**和**客户端**。

#### 存储层 Storage

在 [Nebula Graph](../Page/Nebula_Graph.md "wikilink") 中存储层对应进程是 `nebula-storaged` ，其核心为基于 [Raft](../Page/Raft.md "wikilink")（用来管理日志复制的一致性算法） 协议的分布式 `Key-valueStorage` 。

目前支持的主要存储引擎为「[Rocksdb](https://zh.wikipedia.org/wiki/Rocksdb "wikilink")」和「[HBase](https://zh.wikipedia.org/wiki/HBase "wikilink")」。

[Raft](../Page/Raft.md "wikilink") 协议通过 `leader/follower` 的方式，来保持数据之间的一致性。Nebula Storage 主要增加了以下功能和优化：

1.  Parallel Raft：允许多台机器上的相同 partiton-id 组成一个 `Raft group` 。通过多组 Raft group 实现并发操作。
2.  Write Path & batch：Raft 协议的多机器间同步依赖于日志 id 顺序性，这样的吞吐量 `throughput` 较低。通过批量和乱序提交的方式可以实现更高的吞吐量。
3.  Learner：基于异步复制的 learner。当集群中增加新的机器时，可以将其先标记为 learner，并异步从 `leader/follower` 拉取数据。当该 learner 追上 leader 后，再标记为 follower，参与 Raft 协议。
4.  Load-balance：对于部分访问压力较大的机器，将其所服务的 partition 迁移到较冷的机器上，以实现更好的[负载均衡](../Page/负载均衡.md "wikilink")。

#### 元数据服务层 Metaservice

Metaservice 对应的进程是 `nebula-metad` ，其主要的功能有：

1.  用户管理：Nebula Graph 的用户体系包括 `Goduser` ， `Admin` ， `User` ， `Guest`  四种。每种用户的操作权限不一。
2.  集群配置管理：支持上线、下线新的服务器。
3.  图空间管理：增持增加、删除图空间，修改图空间配置（Raft副本数）
4.  [Schema](https://zh.wikipedia.org/wiki/Schema "wikilink") 管理：Nebula Graph 为强 schema 设计。
      - 通过 Metaservice 记录 Tag 和 Edge 的属性的各字段的类型。支持的类型有：整型 [int](https://zh.wikipedia.org/wiki/int "wikilink"), 双精度类型 [double](https://zh.wikipedia.org/wiki/double "wikilink"), 时间数据类型 [timestamp](https://zh.wikipedia.org/wiki/timestamp "wikilink"), 列表类型 [list等](https://zh.wikipedia.org/wiki/list "wikilink")；
      - 多版本管理，支持增加、修改和删除 schema，并记录其版本号
      - [TTL](https://zh.wikipedia.org/wiki/TTL "wikilink") 管理，通过标识到期回收 `time-to-live` 字段，支持数据的自动删除和空间回收

MetaService 层为有状态的服务，其状态持久化方法与 Storage 层一样通过 `KVStore` 方式存储。

#### 计算层 Query Engine & Query Language ([nGQL](https://zh.wikipedia.org/wiki/nGQL "wikilink"))

计算层对应的进程是 `nebula-graphd` ，它由完全对等无状态无关联的计算节点组成，计算节点之间相互无通信。

**Query Engine** 层的主要功能，是解析客户端发送 nGQL 文本，通过词法解析 `Lexer` 和语法解析 `Parser` 生成执行计划，并通过优化后将执行计划交由执行引擎，执行引擎通过 MetaService 获取图点和边的 schema，并通过存储引擎层获取点和边的数据。

**Query Engine** 层的主要优化有：

1.  [异步和](https://zh.wikipedia.org/wiki/异步 "wikilink")[并发执行](https://zh.wikipedia.org/wiki/并发 "wikilink")：由于 IO 和网络均为长时延操作，需采用异步及并发操作。此外，为避免单个长 query 影响后续 query，Query Engine 为每个 query 设置单独的资源池以保证服务质量 [QoS](https://zh.wikipedia.org/wiki/QoS "wikilink")。
2.  [计算下沉](https://zh.wikipedia.org/wiki/计算下沉 "wikilink")：为避免存储层将过多数据回传到计算层占用宝贵的带宽，条件过滤 `where` 等算子会随查询条件一同下发到存储层节点。
3.  执行计划优化：虽然在[关系数据库](../Page/关系数据库.md "wikilink") [SQL](../Page/SQL.md "wikilink") 中执行计划优化已经经历了长时间的发展，但业界对[图查询语言的优化研究较少](https://zh.wikipedia.org/wiki/图查询 "wikilink")。Nebula Graph 对图查询的执行计划优化进行了一定的探索，包括**执行计划缓存**和**上下文无关语句并发执行**。

#### 客户端 API & Console

Nebula Graph 提供 [C++](../Page/C++.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Golang](https://zh.wikipedia.org/wiki/Golang "wikilink") 三种语言的客户端，与服务器之间的通信方式为 RPC，采用的通信协议为 Facebook-Thrift。用户也可通过 Linux 上 console 实现对 Nebula Graph 操作。Web 访问方式目前在开发过程中。

## 参考文献

[Category:圖資料庫](https://zh.wikipedia.org/wiki/Category:圖資料庫 "wikilink") [Category:分散式計算架構](https://zh.wikipedia.org/wiki/Category:分散式計算架構 "wikilink") [Category:使用_Apache_许可证的软件](https://zh.wikipedia.org/wiki/Category:使用_Apache_许可证的软件 "wikilink") [Category:NoSQL](https://zh.wikipedia.org/wiki/Category:NoSQL "wikilink")

1.  v1.0.0-beta [1](https://github.com/vesoft-inc/nebula/releases/tag/v1.0.0-beta) 2019-08-14
2.  杭州欧若数网科技有限公司. 一种支持超大规模关系网络的图数据库构建方法: 中国，201910763745.5. 2019-08-19.