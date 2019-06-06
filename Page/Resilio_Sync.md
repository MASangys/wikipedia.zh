**Resilio Sync**（曾经名为“BitTorrent
Sync”）是由[BitTorrent公司开发的](https://zh.wikipedia.org/wiki/BitTorrent公司 "wikilink")[专有的](../Page/专有软件.md "wikilink")[对等网络](https://zh.wikipedia.org/wiki/对等网络 "wikilink")[数据同步工具](https://zh.wikipedia.org/wiki/数据同步 "wikilink")，可在[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[OS
X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Android](../Page/Android.md "wikilink")、[iOS和](https://zh.wikipedia.org/wiki/iOS "wikilink")[FreeBSD上使用](../Page/FreeBSD.md "wikilink")\[1\]。其可在局域网、互联网上通过安全的、分布式的[P2P技术在不同设备之间同步文件](https://zh.wikipedia.org/wiki/peer_to_peer "wikilink")。

尽管Resilio
Sync开发者不认为这是传统文件同步工具（如[Dropbox](../Page/Dropbox.md "wikilink")）的竞争者或替代品，但已有人开始注意到这个与众不同的同步工具了\[2\]\[3\]。这主要是由于Resilio
Sync没有常见的文件同步工具中所含有的问题，如文件存储容量限制、私有/安全性、价格因素、同步速度因素（参考技术原理一节）。

## 历史

BitTorrent, Inc与2013年1月24日发布信息，寻求测试人员来测试一种新的文件同步产品的pre-alpha版\[4\]。

此后，从2013年1月到4月期间，还面向测试者小范围发布了若干“SyncApp”的pre-alpha版本。在2013年4月中旬，“SyncApp”更名为“BitTorrent
Sync”。

2013年4月23日，“BitTorrent Sync”开始向大众用户发布了alpha版。\[5\]\[6\]\[7\]

至2013年5月6日，已有超过1PB的匿名数据通过BitTorrent Sync在用户间同步，平均每天有70TB的数据同步\[8\]。

至2013年7月16日，超过8PB数据通过BitTorrent Sync完成同步\[9\]。

2013年7月17日，BitTorrent Sync进入beta阶段，并发布Android版，同时引入了版本控制系统\[10\]。

2013年8月27日，发布了iOS版本\[11\]。

2013年11月5日，BitTorrent指出，每月有超过100万用户通过BitTorrent Sync Beta
API及1.2版（含里程碑版）客户端同步超过30PB的数据\[12\]。

2014年8月26日，已有超过1000万用户安装和超过80PB数据同步\[13\]

2015年3月3日，作为一个商业软件从beta版转为付费专业版。\[14\]

2015年9月9日，发布Sync 2.2，免费版取消10个文件夹的限制。 \[15\]

2016年1月21日，发布Sync 2.3，新增加密文件夹， \[16\]
Windows版可作为后台服务运行，Android版支持[SD卡](../Page/SD卡.md "wikilink")，Linux版可选择性同步文件等。\[17\]

2016年6月1日，产品和团队从BitTorrent公司分离，作为名为Resilio的独立公司继续开发。\[18\]

## 技术原理

Resilio
Sync使用P2P协议同步软件\[19\]。该协议用于在多个设备间传递大文件时非常有效\[20\]，与[µTorrent和](https://zh.wikipedia.org/wiki/µTorrent "wikilink")[BitTorrent使用的协议类似](../Page/BitTorrent_\(软件\).md "wikilink")
。Resilio Sync中，用户数据并不在云端，而是存储在本地硬盘中，因此在同步数据时需要至少一台持有数据的计算机处于开机状态。Resilio
Sync使用在计数模式中AES-128密钥，该密钥可随机生成，或由用户设置。在Resilio
Sync中该密钥称为secret，可告知给其他用户以便共享数据。数据是直接从一台设备上发送到另一台设备中，因此需要数据所在设备在网络上可访问。如果原设备不可访问，则数据由其他节点传播，这些传播节点无需知道原先的secret，但只有知道secret的节点才能解码并查看数据。

可以将secret告知给某个节点，这样就将该节点加入到同步系统中，使其可以访问数据。当创建新节点时，用户可以将原secret告知给新节点；若出于安全性考虑，也可以创建一次性使用的secret。用户还可以通过Resilio
Sync客户端生成一个只读的secret，这样当新节点接收到这个secret时，只能查看文件而无法修改。

Resilio Sync对需要同步的文件大小没有限制，唯一的限制就是不同的同步设备中都需要有足够的空间容纳所要同步的文件\[21\]。

## 优缺点

Resilio Sync最大的优势在于其不需要第三方服务器，几乎不受存储空间和流量限制。由于Resilio Sync是一款采用
BitTorrent
协议的P2P同步工具，传输速度基本上只受用户网络带宽的制约，它可以支持多人同时同步，而且，越多人对文件夹进行同步，则同步速度越快。它支持多平台，可以通过密钥进行文件分享。

由于Resilio Sync的数据不在云端，而是存储在本地。所以拥有文件的电脑需要保持在线，才能同步到其他电脑去。而且由于采用类似 BT
的协议，因此在某些禁用 BT 下载的场景中可能会受到影响。

## 在中国大陆被屏蔽

2017年6月开始，处在中国大陆的用户纷纷反映“无法获取追踪器列表”。2017年6月24日，Resilio
Sync中国大陆代理商——数码荔枝通过新浪微博发布消息：“【感觉在和国家作对...】Bittorrent
(Resilio) Sync 好像不能卖了。不然到时候数码荔枝还存在不存在都是一个问题。”。\[22\]

2017年8月2日，数码荔枝通过新浪微博发布信息：“【由于总所周知的原因】，Resilio Sync（原BitTorrent
Sync）在中国遭到了前所未有的封杀……”，数码荔枝一并停止了授权证书的销售活动。\[23\]此条微博信息已经删除，无法找到。

## 兼容性

目前，Resilio Sync可在下列操作系统中使用：

  - [Microsoft
    Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（XP
    SP3及以后的版本）
  - [Mac OS
    X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")（10.6及以后的版本）
  - [Linux](../Page/Linux.md "wikilink")
  - [FreeBSD](../Page/FreeBSD.md "wikilink")
  - [NAS设备](https://zh.wikipedia.org/wiki/網路儲存設備 "wikilink")\[24\]
  - [Android](../Page/Android.md "wikilink")
  - [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")

## 同类软件

  - [Syncthing](../Page/Syncthing.md "wikilink")

## 参考资料

## 外部链接

  -
  - [Resilio Sync
    中文官网](https://web.archive.org/web/20171012121515/https://www.resilio-sync.cn/)

[Category:文件共享服务](https://zh.wikipedia.org/wiki/Category:文件共享服务 "wikilink")
[Category:数据同步](https://zh.wikipedia.org/wiki/Category:数据同步 "wikilink")
[Category:被防火长城封锁的网站](https://zh.wikipedia.org/wiki/Category:被防火长城封锁的网站 "wikilink")

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

12. Protalinski, Emil. 5 November 2013 TheNextWeb. "[With over 1 million
    users and 30PB synced, BitTorrent speeds up Sync, adds iPad support,
    and debuts an
    API](http://thenextweb.com/insider/2013/11/05/1-million-users-30pb-synced-bittorrent-speeds-sync-adds-ipad-support-debuts-api/?fromcat=all)"

13.

14.

15.

16.

17.

18.

19.

20.

21. <http://www.bittorrent.com/sync>

22.

23.

24.