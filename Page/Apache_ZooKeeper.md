**Apache
ZooKeeper**是[Apache软件基金会的一个软件项目](../Page/Apache软件基金会.md "wikilink")，他为大型[分布式计算提供](../Page/分布式计算.md "wikilink")[开源的分布式配置服务](https://zh.wikipedia.org/wiki/开源 "wikilink")、同步服务和命名注册。
ZooKeeper曾经是[Hadoop的一个子项目](https://zh.wikipedia.org/wiki/Hadoop "wikilink")，但现在是一个独立的顶级项目。

ZooKeeper的架构通过冗余服务实现。因此，如果第一次无应答，客户端就可以询问另一台ZooKeeper主机。ZooKeeper节点将它们的数据存储于一个分层的命名空间，非常类似于一个文件系统或一个[前缀树结构](https://zh.wikipedia.org/wiki/前缀树 "wikilink")。客户端可以在节点读写，从而以这种方式拥有一个共享的配置服务。更新是[全序的](https://zh.wikipedia.org/wiki/全序 "wikilink")。\[1\]

使用ZooKeeper的公司包括[Rackspace](../Page/Rackspace.md "wikilink")、[雅虎](../Page/雅虎.md "wikilink")\[2\]和[eBay](https://zh.wikipedia.org/wiki/eBay "wikilink")，以及类似于像[Solr这样的开源](../Page/Solr.md "wikilink")系统。\[3\]

## 典型用例

  - [目录服务](../Page/目录服务.md "wikilink")

  - [配置管理](https://zh.wikipedia.org/wiki/配置管理 "wikilink")

  - [同步](https://zh.wikipedia.org/wiki/同步 "wikilink")

  -
  - [消息队列](../Page/消息队列.md "wikilink")

  -
## 参见

  - [Hadoop](https://zh.wikipedia.org/wiki/Hadoop "wikilink")

## 参考资料

## 外部链接

  - [ZooKeeper主页](http://zookeeper.apache.org/)
  - [highscalability.com的文章](http://highscalability.com/blog/2008/7/15/zookeeper-a-reliable-scalable-distributed-coordination-syste.html)
  - [《软件开发时代》关于ZooKeeper迁至Apache的文章](http://archive.wikiwix.com/cache/20170126143726/http://www.sdtimes.com/ZOOKEEPER_SERVICES_COORDINATOR_MOVES_TO_APACHE/About_SERVICECOORDINATION_and_ZOOKEEPER_and_APACHE_and_YAHOO/33011)
  - [基于ZooKeeper的Eclipse
    ECF发现](http://wiki.eclipse.org/index.php?title=Zookeeper_Based_ECF_Discovery)

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:形态管理](https://zh.wikipedia.org/wiki/Category:形态管理 "wikilink")
[Category:用Java编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Java编程的自由软件 "wikilink")
[Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink")

1.
2.
3.