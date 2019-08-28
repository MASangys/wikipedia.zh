**NTP pool**是一个通过收集世界各地-{}-志愿提供的服务器，使用[NTP为世界各地提供高准确度时间的项目](../Page/網路時間協定.md "wikilink")。项目通过网址“pool.ntp.org”基于划分为多个子域名作为服务提供池，并在这些池子域名使用[DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")[轮循来提供所需的服务器IP地址来给客户端使用](https://zh.wikipedia.org/wiki/轮循 "wikilink")。除此之外，也会通过IP地理识别来分配相应地区的服务器。

直到2016年11月项目已经拥有存活的IPv4服务器大约2800台、IPv6服务器1050台。\[1\]由于项目的审核权下放，具体服务器数量无法完全统计，但根据网站数据显示，项目能提供为五百万至一千五百万个系统提供授时服务。\[2\]由于服务需求不断增加，项目一直招募更多的服务器加入，\[3\]\[4\]\[5\]因为如果服务池内的服务器越多，每台服务器能摊分到更少的服务时间从而降低服务器负载压力。

加入该项目需要一个静态对外服务IP和宽带接入线路，和需要上游授时源用于准确授时，例如其他NTP服务器、授时接收器、[WWVB](../Page/WWVB.md "wikilink")授时接收器、[GPS授时接收器等](https://zh.wikipedia.org/wiki/GPS "wikilink")。

该项目最早由Adrian von Bidder在2003年1月于comp.protocols.time.ntp讨论频道提及公共一级NTP授时服务器被滥用的问题而设立。\[6\]\[7\]现在这套系统自2005年7月由Ask Bjørn Hansen设计和维护。\[8\]

## 参考文献

## 外部链接

  -
[Category:网络时间相关软件](https://zh.wikipedia.org/wiki/Category:网络时间相关软件 "wikilink") [Category:Perl软件](https://zh.wikipedia.org/wiki/Category:Perl软件 "wikilink") [Category:用Perl编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Perl编程的自由软件 "wikilink")

1.
2.
3.  ["Reached 500 servers - Welcome Slashdot"](http://news.ntppool.org/2006/01/reached-500-servers-welcome-sl.html). Ask Bjørn Hansen. January 15, 2006.
4.  ["Yes, the pool needs more servers"](http://news.ntppool.org/2009/08/yes-the-pool-needs-more-server.html). Ask Bjørn Hansen. August 11, 2009.
5.  ["The NTP Pool needs more servers"](http://news.ntppool.org/2012/06/more-servers-please.html). Ask Bjørn Hansen. June 21, 2012.
6.  ["Public servers abuse"](http://groups.google.com/group/comp.protocols.time.ntp/browse_thread/thread/fc51c6ee6ad66f66). [David L. Mills](https://zh.wikipedia.org/wiki/David_L._Mills "wikilink"). January 21, 2003.
7.  ["ntp DNS round robin experiment"](http://groups.google.com/group/comp.protocols.time.ntp/browse_thread/thread/71286b37b8a6089d). Adrian 'Dagurashibanipal' von Bidder. January 27, 2003.
8.  ["The Future is Bright, The Future is ..."](http://groups.google.com/group/comp.protocols.time.ntp/browse_thread/thread/cd486a782b40f620). Adrian 'Dagurashibanipal' von Bidder. July 24, 2005.