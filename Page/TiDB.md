**TiDB**是一个开源的[NewSQL](../Page/NewSQL.md "wikilink")数据库，支持混合事务和分析处理（）工作负载\[1\]。它与[MySQL](../Page/MySQL.md "wikilink")兼容，并且可以提供水平可扩展性、强一致性和高可用性。它主要由PingCAP公司开发和支持，并在Apache 2.0下授权。TiDB从Google的Spanner\[2\]和F1\[3\]论文中汲取了最初的设计灵感。\[4\]

TiDB被InfoWorld 2018 Bossie Award评选为最佳数据存储和分析开源软件之一。\[5\]

## 历史

PingCAP Inc.是一家软件公司，成立于2015年4月，成立后便开始开发TiDB。该公司是TiDB及其关联的开源社区的主要开发人员，维护人员和驱动者。\[6\]

## 主要特性

### 水平可扩展性

TiDB可以通过添加新节点来扩展SQL处理和存储容量。这使得基础设施容量的扩展更加容易和灵活，而传统的[关系数据库](../Page/关系数据库.md "wikilink")只能垂直扩展。

### MySQL兼容性

对于应用程序来说，TiDB的行为就如同一个[MySQL](../Page/MySQL.md "wikilink") 5.7服务器。用户可以继续使用所有现有的MySQL客户端库。因为TiDB的SQL处理层是从头开始构建的，而不是一个MySQL分支，所以它的兼容性不是100%，\[7\] 而且MySQL和TiDB之间存在已知的行为差异。\[8\]

### 具有强一致性的分布式事务

TiDB在内部基于范围将表分片为的小块，这些块称为“区域”。\[9\] 每个区域的默认大小约为100 MB，TiDB在内部使用[二阶段提交](../Page/二阶段提交.md "wikilink")来确保区域以事务上一致的方式进行维护。

### 云原生

为了使部署、配置、操作和维护更加灵活，TiDB被设计成可在云中工作。TiDB的存储层称为TiKV，于2018年8月成为[云原生计算基金会的沙盒级别项目](../Page/Linux基金會.md "wikilink")。\[10\] TiDB平台的体系结构还允许分别独立扩展SQL处理和存储。

### 更精简的ETL流程

TiDB可以支持联机事务处理（[OLTP](https://zh.wikipedia.org/wiki/線上交易處理 "wikilink")）和联机分析处理（[OLAP](../Page/線上分析處理.md "wikilink")）工作负载。这意味着，虽然用户可能传统上在MySQL上进行交易，然后将数据抽取、转换和加载（[ETL](https://zh.wikipedia.org/wiki/ETL "wikilink")）到一个[列存储中进行分析处理](../Page/列式数据库.md "wikilink")，但这一步骤不再需要。

### 高可用性

TiDB使用[Raft](../Page/Raft.md "wikilink")一致性算法\[11\]确保数据在整个Raft组的存储过程中高度可用和安全复制。在发生故障时，Raft组将自动为失败的成员选择一个新的领导者，并自我修复TiDB集群，而不需要任何必要的人工干预。失败和自愈操作对应用程序是透明的。

## 部署方法

### Kubernetes Operator

可以使用TiDB Operator将TiDB部署到支持[Kubernetes](../Page/Kubernetes.md "wikilink")的云环境中。\[12\] Operator是打包、部署和管理Kubernetes应用程序的方法。它是为运行有状态工作负载而设计的，最早由[CoreOS](../Page/CoreOS.md "wikilink")在2016年引入。\[13\] TiDB Operator\[14\]最初由PingCAP开发，并于2018年8月开源。\[15\] TiDB Operator可以用于在笔记本电脑\[16\]、Google Cloud Platform的Google Kubernetes引擎\[17\]和Amazon Web Services的Kubernetes弹性容器服务上部署TiDB。\[18\]

### Ansible

通过使用TiDB-Ansible playbook，可以使用部署TiDB。\[19\]

### Docker

可以使用[Docker](../Page/Docker.md "wikilink")在多个节点和多台机器上的容器化环境中部署TiDB，而Docker Compose可以使用单个命令部署TiDB以进行测试。\[20\]

## 工具

TiDB提供了一系列开源工具来帮助现有[MySQL](../Page/MySQL.md "wikilink")和[MariaDB](../Page/MariaDB.md "wikilink")用户进行数据复制和迁移。

### Syncer与Data Migration

Syncer是一个工具，它支持从MySQL或MariaDB实例到TiDB集群的完整数据迁移或增量数据复制。\[21\] Data Migration（DM）是 Syncer的第二代迭代，它适合将已分片的MySQL或MariaDB表中的数据复制到TiDB。\[22\] Syncer/DM的一个常见用例是将MySQL或MariaDB表连接到TiDB，几乎将TiDB视为从属，然后在该TiDB集群上直接实时运行分析工作负载。

### Lightning

Lightning是一个可将大型MySQL转储高速完全导入到新的TiDB群集中的工具，它提供了比执行每个SQL语句更快的导入体验。该工具用于把大量数据快速填充到一个最初为空的TiDB集群，以便加快测试或生产迁移。之所以能提升导入速度，是因为TiDB通过将SQL语句解析为键值对，然后直接生成**有序字符串表**（SSTable）文件到。\[23\]

### TiDB-Binlog

TiDB-Binlog是一个用于收集对TiDB集群所做逻辑更改的工具。它用于在两个TiDB集群之间或从一个TiDB集群到另一个下游平台之间提供增量备份和复制。

它的功能类似于MySQL主从复制。主要的区别在于，由于TiDB是一个分布式数据库文件管理器，因此每个TiDB实例生成的binlog需要在被下游使用之前，根据事务提交的时间进行合并和排序。\[24\]

## 用户案例

目前，已有300多家公司在使用 TiDB，其中包括Shopee\[25\]、BookMyShow\[26\]、小米\[27\]、知乎\[28\]、美团点评\[29\]、爱奇艺\[30\], 转转\[31\]、摩拜\[32\]、易果\[33\]，以及猿辅导\[34\]。

## 参考文献

[Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink") [Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.