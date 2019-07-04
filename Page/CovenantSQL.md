**CovenantSQL** 是一个开源的关系型数据库，具备去中心化、不可篡改、共享经济等特点，CovenantSQL 为传统应用和 ĐApp
提供支持，实现去中心化存储。在兼容传统 SQL
的同时，可以实现高性能的可拓展性、安全性及保密性。其愿景之一是用户可以掌握个人数据的真正控制权，而不是放在中心化的大公司手上。\[1\]。CovenantSQL
从[比特币的论文](../Page/比特币.md "wikilink") \[2\] 和 vSQL \[3\] 等论文中汲取了最初的设计灵感。

## 系统架构

CovenantSQL
有三层架构，包括主链，侧链和个体矿工。整个网络中只有一个主链，主要负责数据库矿工与用户的合同匹配，交易结算，反作弊，子链哈希锁定等全局共识事宜。

每个侧链由一组称为矿工的计算节点生成，是一个单一的数据库。每个数据库都有自己独立的子链。主要负责数据库各种事务的签名，交付和一致性。这里主要实现永久可追溯性的数据历史，并且在主链中执行哈希锁定。

每个矿工都是独立的数据库引擎，负责数据库存储和加密；查询处理和签名；高效索引。矿工们使用拜占庭式容错筏的变种达成共识，CovenantLabs
称之为 Kayak。 当一个矿工下线时，同一个分链中的矿工会求助于块生产者来决定是否等待领导者重新上线或选出新的领导者。\[4\]

## 部署方式

CovenantSQL 提供了 HTTP/HTTPS Adapter，类似于云数据库， 开发者可以直接用
[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink") 的形式部署
CovenantSQL。\[5\]安装 [Docker](../Page/Docker.md "wikilink") 之后， 通过
QuickStart \[6\] 获取公私钥和地址，接着在 Docker 里创建数据库。

## 参考资料

[Category:关系型数据库](https://zh.wikipedia.org/wiki/Category:关系型数据库 "wikilink")
[Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink")

1.
2.
3.
4.
5.
6.