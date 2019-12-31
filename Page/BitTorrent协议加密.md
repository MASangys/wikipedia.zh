> 本文内容由[BitTorrent协议加密](https://zh.wikipedia.org/wiki/BitTorrent协议加密)转换而来。


**协议加密**（**Protocol encryption**，**PE**）、**消息流加密**（**message stream encryption**，**MSE**）或**协议头加密**（**protocol header encrypt**，**PHE**）是部分[對等網路](../Page/對等網路.md "wikilink")[檔案分享](../Page/檔案分享.md "wikilink")[客户端的特性](../Page/檔案分享程式比較.md "wikilink")，包括[BitTorrent客户端](https://zh.wikipedia.org/wiki/BitTorrent客户端 "wikilink")。它们尝试增强隐私和保密性，并尝试使第三方（如[互联网服务供应商](../Page/互联网服务供应商.md "wikilink")）更难识别流量头部。

MSE/PE在[BitComet](../Page/BitComet.md "wikilink")、、[Deluge](../Page/Deluge.md "wikilink")、[Flashget](../Page/快车.md "wikilink")、[KTorrent](../Page/KTorrent.md "wikilink")、[Mainline](https://zh.wikipedia.org/wiki/BitTorrent客户端 "wikilink")、[µTorrent](https://zh.wikipedia.org/wiki/µTorrent "wikilink")、[qBittorrent](https://zh.wikipedia.org/wiki/qBittorrent "wikilink")、[rTorrent](https://zh.wikipedia.org/wiki/rTorrent "wikilink")、[Transmission](../Page/Transmission.md "wikilink")、和[Vuze](../Page/Vuze.md "wikilink")等软件中有被实现。PHE在旧版本的BitComet中被实现。类似的协议在最新版本的非BitTorrent系统（包括[eMule](https://zh.wikipedia.org/wiki/eMule "wikilink")）中也有实现\[1\]。

## 目的

截至2005年1月，BitTorrent流量占据了住宅互联网总流量的三分之一以上\[2\]，虽然这在2009年下降到不足20%\[3\]。一些互联网服务提供商通过增加其容量来处理这种流量，另有一些服务商使用专用的系统来降速对等流量以降低成本。混淆和加密会使流量更难以被检测和控制。这些系统的最初设计目的是[匿名](../Page/匿名.md "wikilink")性或[保密性](https://zh.wikipedia.org/wiki/保密 "wikilink")，但在某些国家（或地区、运营商）因[互联网服务供应商](../Page/互联网服务供应商.md "wikilink")限制BitTorrent流量或用户而变成必需品，他们认为BitTorrent流量占用过多网络资源（增加运营成本）、干扰网络正常运行，或认为或限制“非法的”文件共享。

## 历史

### 早期方法

协议头加密（PHE）由构想并最先在2005年9月8日的[BitComet](../Page/BitComet.md "wikilink") 0.60中实现。一些软件如IPP2P声称可以检测到使用了PHP的BitComet流量\[4\]。PHE是可以被检测的，因为只有部分流被加密。由于没有此协议的开放规范，其他客户端支持它的唯一方法是通过[逆向工程](../Page/逆向工程.md "wikilink")。

### MSE/PE的开发

2006年1月下旬，[Vuze](../Page/Vuze.md "wikilink")（当时称为Azureus）的开发者决定设计并实现一个新的、开放的协议混淆方法，它被称消息流加密（message stream encryption，简称MSE）。该协议被包含在2006年1月19日的Azureus CVS快照2307-B29中\[5\]。

这份首稿受到了严重的批评，因为它缺乏几个关键特征。在几名BitTorrent开发者磋商后，一份新的提案在几天内被撰写并实现到[Azureus和](../Page/Vuze.md "wikilink")[µTorrent](https://zh.wikipedia.org/wiki/µTorrent "wikilink") beta。在µTorrent中，新的协议被称为协议加密（protocol encryption，简称PE）。

### BitTorrent客户端各版本中的MSE/PE

  - BitComet 0.63版本，发布于2006年3月7日。它移除了旧的协议头加密并实现了新的MSE/PE以兼容Azureus和µTorrent\[6\]。

  - 从T-0.3.18版本开始支持MSE/PE。截至2007年1月5日，该版本仍在下载页面上标为“实验性”\[7\]。

  - [BitTorrent](https://zh.wikipedia.org/wiki/BitTorrent客户端 "wikilink") （Mainline）从2006年5月2日的4.9.2-beta开始支持MSE/PE\[8\]。

  - [Deluge](../Page/Deluge.md "wikilink")从Deluge-0.5.1开始支持MSE/PE\[9\]。

  - [KTorrent](../Page/KTorrent.md "wikilink")在2006年4月29日的SVN版本535386中实现MSE/PE\[10\]。

  - [rTorrent从rTorrent](https://zh.wikipedia.org/wiki/rTorrent "wikilink")-0.7.0开始支持MSE/PE\[11\]。

  - [Transmission](../Page/Transmission.md "wikilink")从Transmission-0.90开始支持MSE/PE\[12\]。

  - [Vuze](../Page/Vuze.md "wikilink")（以前名为Azureus）自2006年1月25日（CVS快照2307-B33）起支持最终版标准\[13\]。Azureus 2.4.0.0于2006年2月10日发布，是首个支持MSE/PE的稳定版本客户端。不过，Azureus的实现中存在瑕疵，会导致不正确的加密片段，从而散列检查失败。该瑕疵在2.4.0.2版本中被纠正\[14\]。

  - [µTorrent在Azureus的beta](https://zh.wikipedia.org/wiki/µTorrent "wikilink") 1.4.1 build 407发布4年后支持MSE/PE\[15\]。µTorrent的1.5（build 436）版本于2006年3月7日发布；它是首个支持PE的µTorrent稳定版本\[16\]。

## 操作

BitComet 0.60至0.62版本中使用的PHE方法即没有发布，也不兼容MSE/PE。

MSE/PE使用[密钥交换结合torrent的infohash建立一个](../Page/迪菲-赫爾曼密鑰交換.md "wikilink")[RC4](../Page/RC4.md "wikilink")加密密钥。密钥交换有助于最小化被动监听器的风险，而infohash有助于避免[中间人攻击](../Page/中间人攻击.md "wikilink")。选择RC4是为了速度更快。输出的第一个[kibibyte](https://zh.wikipedia.org/wiki/kibibyte "wikilink")（1024字节）被丢弃以防止。

该规范允许用户选择仅加密报头或者完全加密整个连接。加密整个连接提供更强的混淆能力，但也消耗更多的CPU时间。

为确保与不支持此规范的其他客户端的兼容性，用户还可选择是否仍允许未加密的传入或传出连接。

支持的客户端通过[节点交换](../Page/节点交换.md "wikilink")（PEX）和[分散式雜湊表](../Page/分散式雜湊表.md "wikilink")（DHT）通告它们已启用MSE/PE。

## 安全性

该加密方法若对应常用的对称加密算法，加密强度约为60-80比特\[17\]。在密码学领域，这个有效的密钥长度相当低，但该协议不是为安全传输而设计，而是作为一种快速并有效的混淆方法。[AES曾被提出作为加密方法](../Page/高级加密标准.md "wikilink")，但未被采用，因为会消耗太多的CPU时间。它需要[迪菲-赫爾曼密鑰交換](../Page/迪菲-赫爾曼密鑰交換.md "wikilink")（Diffie–Hellman）密钥来做到AES级别的安全性，而AES要做到会更大，或者需要[椭圆曲线密码学](../Page/椭圆曲线密码学.md "wikilink")，使握手要使用较多的CPU时间。

## 效果

一些互联网服务提供商正在使用更复杂的措施（例如模式/时量分析，或者基于信道侧数据对端口进行分类）来检测BitTorrent流量。这意味着加密的BitTorrent流量也可以被限流。但是，也有些服务商继续使用简单、便宜的方法来识别和限流BitTorrent，因此当前的方案仍有效果。

对BitTorrent协议加密（也称MSE）的分析显示，数据包大小的测量统计和TCP会话中前100个数据包的数据包方向可以被用来识别混淆的协议，具有超过96%的准确性\[18\]。

应用程序采用另一种途径，通过使播种（Seeding）失效来瓦解BitTorrent流量。Sandvine截取对等端到跟踪服务器（tracker）的通信并基于跟踪服务器返回的节点列表中的节点地址和端口号来识别对等端。当Sandvine在之后看到已截取的对等端列表中的对等端的连接时，它可能（根据策略）发送伪造的TCP重置来中断这些连接。有多种方案来抗击Sandvine的攻击，包括对等端到跟踪服务器及对等端到对等端之间的通信加密，使用微软的[Teredo使TCP连接隧道化为UDP数据包](https://zh.wikipedia.org/wiki/Teredo "wikilink")，在终端主机的TCP层中过滤掉TCP重置包，或者完全从基于TCP的传输变为基于UDP的传输等。每个解决方案都各有利弊。过滤掉TCP重置通常需要内核访问权限和远程节点的参与，因为Sandvine会将重置数据包同时发给本地和远程节点。

## 批评

[BitTorrent的发明者](../Page/BitTorrent_\(协议\).md "wikilink")[布莱姆·科亨](../Page/布莱姆·科亨.md "wikilink")（Bram Cohen）反对将加密加入BitTorrent协议，他担心加密可能导致客户端之间的不兼容，并还强调大多数ISP不封阻torrent协议。2006年他写道：“我相当怀疑有些开发者受到了他的ISP的限制，并更有兴趣破解他的ISP的限制，而不是整个互联网的性能。”\[19\] 许多BitTorrent社区的用户强烈反对Cohen的指责\[20\]。Cohen后来也添加了加密连接到他的[Mainline客户端](../Page/BitTorrent_\(软件\).md "wikilink")\[21\]使其有接收能力，但不会如此发送加密连接。

## 参考资料

## 外部链接

  - ["Message Stream Encryption"](http://wiki.vuze.com/w/Message_Stream_Encryption). Vuze.
  - ["ISPs that shape BitTorrent"](http://wiki.vuze.com/w/Bad_ISPs). Vuze.
  - ["BitTorrent End to End Encryption and Bandwidth Throttling - Part I" with µTorrent developers](http://www.slyck.com/news.php?story=1083). Slyck News.
  - ["BitTorrent End to End Encryption and Bandwidth Throttling - Part II" with Azureus developers](http://www.slyck.com/news.php?story=1098) Slyck News.
  - ["BitTorrent and End to End Encryption"](http://yro.slashdot.org/story/06/02/06/2039241/bittorrent-and-end-to-end-encryption). Slashdot.
  - ["Tracker Peer Obfuscation"](http://bittorrent.org/beps/bep_0008.html). BitTorrent.org.
  - ["Identifying the Message Stream Encryption (MSE) protocol" for Statistical Protocol IDentification](https://web.archive.org/web/20121109160226/http://sourceforge.net/apps/mediawiki/spid/index.php?title=Identifying_the_Message_Stream_Encryption_%28MSE%29_protocol). Sourceforge.
  - ["Block P2P Traffic on a Cisco IOS Router using NBAR"](http://www.cisco.com/en/US/products/ps5855/products_configuration_example09186a0080ac3082.shtml). Cisco.
  - ["Aria2c VPN/Proxy Tutorial"](http://gotux.net/arch-linux/aria2c-downloader-through-vpn-tunnel/). GoTux.

[Category:BitTorrent](https://zh.wikipedia.org/wiki/Category:BitTorrent "wikilink") [Category:加密协议](https://zh.wikipedia.org/wiki/Category:加密协议 "wikilink")

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
16. ["µTorrent 1.5 released"](http://forum.utorrent.com/viewtopic.php?id=7199) . uTorrent Announcements. 2006-03-07.
17.
18.
19.
20.
21.