> 本文内容由[Arptables](https://zh.wikipedia.org/wiki/Arptables)转换而来。


**arptables** 是运行在[用户空间的应用软件](https://zh.wikipedia.org/wiki/用户空间 "wikilink")，通过控制[Linux内核](../Page/Linux内核.md "wikilink")[netfilter模块](https://zh.wikipedia.org/wiki/netfilter "wikilink")，来管理[地址解析协议](../Page/地址解析协议.md "wikilink")(arp)数据包的过滤和转发。

arptables基于[iptables开发](https://zh.wikipedia.org/wiki/iptables "wikilink")，使用时也与iptables有些类似，都有“表（tables）”、“链（chain）”和“规则（rules）”三个层面。

但是arptables功能较单一，仅有`filter`一个表。并且，也只有`INPUT`（从内核2.4版）、`OUTPUT`（从内核2.4版）和`FORWARD`（从内核2.6版）三个内建链。arptables的主要用途之一是防范[ARP欺骗](https://zh.wikipedia.org/wiki/ARP欺骗 "wikilink")。

## 外部链接

  - [The ebtables/arptables download web page](http://ebtables.sourceforge.net/downloads/latest.html)
  - [arptables(8) - Linux man page](http://ebtables.sourceforge.net/misc/arptables-man.html)
  - [arptables, and ARP poisoning](http://abulmagd.blogspot.com/2008/08/arptables-and-arp-poisoningnetcut.html)

[Category:防火墙软件](https://zh.wikipedia.org/wiki/Category:防火墙软件 "wikilink") [Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink") [Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink") [Category:Linux网络相关软件](https://zh.wikipedia.org/wiki/Category:Linux网络相关软件 "wikilink") [Category:網路軟體小作品](https://zh.wikipedia.org/wiki/Category:網路軟體小作品 "wikilink")