**Openfire**（以前称为**Wildfire**和**Jive
Messenger**）是一个[即時通訊](../Page/即時通訊.md "wikilink")（IM）和[群聊服务器](https://zh.wikipedia.org/wiki/網路聊天室 "wikilink")，它使用[Java编写的](../Page/Java.md "wikilink")[XMPP](https://zh.wikipedia.org/wiki/XMPP "wikilink")[服务器](../Page/服务器.md "wikilink")，并以[Apache
License](../Page/Apache许可证.md "wikilink") 2.0发布。\[1\]

## 历史

该项目由Jive Software于2002年左右发起，部分原因是为了支持FastPath基于Web的客户支持工具，如**Jive
Messenger**，并于2005年更名为**Wildfire**。由于商标问题，2007年又将其更名为**Openfire**。该项目于2008完全移交给社区。Jive在2016年前继续托管该项目。

## 目前管理模式

Openfire是作为Ignite Realtime项目的一部分，在社区模式下开发的。项目负责人是Dave Cridland。

## 基于Web的管理面板

服务器的大多数管理都是通过Web界面完成的，默认情况下，该界面在9090（HTTP）和9091（HTTPS）端口上运行。管理员可以从任何地方连接并编辑服务器和配置设置。

## 功能

Openfire支持以下功能：

  - 基于Web的管理面板
  - 插件界面
  - 可定制
  - [SSL/TLS支持](../Page/傳輸層安全性協定.md "wikilink")\[2\]
  - 用户友好的Web界面和引导安装
  - 数据库连接（即嵌入式[HSQLDB](../Page/HSQLDB.md "wikilink")，或其他带有[JDBC](../Page/Java数据库连接.md "wikilink")
    3驱动的DBMS）用于存储消息和用户详细信息
  - [LDAP连接](../Page/轻型目录访问协议.md "wikilink")
  - 平台独立，纯[Java](../Page/Java.md "wikilink")
  - 完全集成
  - 可以支持超过5万个并发用户\[3\]

Openfire对插件和定制构建有强大的支持；有很多插件可以用过管理控制台直接下载安装，许多安装操作都有定制插件。

Openfire允许多个服务器实例在一个集群环境中一起工作。有一个基于开源Hazelcast技术的开源聚类插件。

## 参见

  - [可扩展消息与存在协议](../Page/可扩展消息与存在协议.md "wikilink")
  - [XMPP協議伺服器軟體列表](../Page/XMPP協議伺服器軟體列表.md "wikilink")

## 参考文献

## 外部链接

  -
  - [GitHub repository](https://github.com/igniterealtime/Openfire)

[Category:Java平台軟體](https://zh.wikipedia.org/wiki/Category:Java平台軟體 "wikilink")
[Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink")

1.
2.

3.