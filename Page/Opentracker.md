**opentracker是一个**[BitTorrent伺服软件](../Page/BitTorrent_\(协议\).md "wikilink")，是一个[啤酒软件](../Page/啤酒软件.md "wikilink")，其特点是快速性和低系统资源消耗。

## 特点

opentracker的速度比其他的伺服软件快很多，占用内存也更少，就连在[嵌入式系统中都运行自如](../Page/嵌入式系统.md "wikilink")。程序的实例可以在[集群中同时运行](../Page/集群.md "wikilink")，因为不同实例间可以相互同步。opentracker同时支持[HTTP协议和](../Page/HTTP.md "wikilink")[UDP协议](../Page/UDP.md "wikilink")，后者的负载仅为前者的一半\[1\]。同时，opentracker还支持[IPv6](../Page/IPv6.md "wikilink")\[2\]、[gzip压缩和黑名单](../Page/gzip.md "wikilink")\[3\]。因为曾有人的[IP地址暴露在伺服列表中而以侵害](../Page/IP地址.md "wikilink")[版权被起诉](../Page/版权.md "wikilink")\[4\]，opentracker可以生成随机IP地址而避免以上情况。

## 所用技术

opentracker可以完全在[内存中运行](../Page/内存.md "wikilink")，这就是它速度快的原因。它完全由[C语言写成](../Page/C语言.md "wikilink")，使用libowfat库管理网络连接。

## 使用情况

程序的作者运营着全球第二大的BitTorrent伺服器denis.stalker.h3q.com，而全球最大的BitTorrent伺服器[海盗湾也在](../Page/海盗湾.md "wikilink")2007年底开始使用opentracker\[5\]之前他们使用自己的Hypercube。挪威的[挪威广播公司也用opentracker来发布自己的电视剧](../Page/挪威广播公司.md "wikilink")\[6\]。

## 外部链接

  - [官方网站](http://erdgeist.org/arts/software/opentracker/)
  - [网志](https://web.archive.org/web/20090322090636/http://opentracker.blog.h3q.com/)

## 参考

[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")
[Category:BitTorrent](https://zh.wikipedia.org/wiki/Category:BitTorrent "wikilink")

1.  <http://xbtt.sourceforge.net/udp_tracker_protocol.html>
2.
3.
4.  <http://bmaurer.blogspot.com/2007/02/big-media-dmca-notices-guilty-until.html>
5.  <http://torrentfreak.com/the-pirate-bay-switches-to-opentracker-071208/>
6.  <http://nrkbeta.no/norwegian-broadcasting-corporation-sets-up-its-own-bittorrent-tracker/>