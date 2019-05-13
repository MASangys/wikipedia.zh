**tcpdump**
是一个运行在[命令行下的](https://zh.wikipedia.org/wiki/命令行 "wikilink")[嗅探工具](https://zh.wikipedia.org/wiki/嗅探 "wikilink")。它允许用户拦截和显示发送或收到过[网络连接到该计算机的](https://zh.wikipedia.org/wiki/网络 "wikilink")[TCP/IP和其他](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")[数据包](https://zh.wikipedia.org/wiki/数据包 "wikilink")。tcpdump
是一个在[BSD许可证下发布](../Page/BSD许可证.md "wikilink")\[1\]的[自由软件](../Page/自由软件.md "wikilink")。

tcpdump 适用于大多数的[类Unix系统](../Page/类Unix系统.md "wikilink")
[操作系统](../Page/操作系统.md "wikilink")：包括[Linux](../Page/Linux.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[BSD](../Page/BSD.md "wikilink")、[Mac
OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[HP-UX和](../Page/HP-UX.md "wikilink")[AIX](https://zh.wikipedia.org/wiki/AIX "wikilink")
等等。在这些系统中，tcpdump
需要使用[libpcap这个捕捉数据的](https://zh.wikipedia.org/wiki/libpcap "wikilink")[库](https://zh.wikipedia.org/wiki/库 "wikilink")。其在[Windows下的版本称为](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[WinDump](https://zh.wikipedia.org/wiki/WinDump "wikilink")；它需要[WinPcap驱动](https://zh.wikipedia.org/wiki/WinPcap "wikilink")，相当于在[Linux平台下的](../Page/Linux.md "wikilink")[libpcap](https://zh.wikipedia.org/wiki/libpcap "wikilink").

## 历史

它最初由[范·雅各布森](../Page/范·雅各布森.md "wikilink")，[Craig
Leres和](https://zh.wikipedia.org/wiki/Craig_Leres "wikilink")[Steven
McCanne在](https://zh.wikipedia.org/wiki/Steven_McCanne "wikilink")1987年于[劳伦斯伯克利国家实验室担任研究小组时写成](../Page/劳伦斯伯克利国家实验室.md "wikilink")，当时，20世纪90年代末，有许多不同的操作系统，和无数的补丁，没有很好地协调分布的tcpdump版本。于是[Michael
Richardson
(mcr)和](https://zh.wikipedia.org/wiki/Michael_Richardson_\(mcr\) "wikilink")[Bill
Fenner在](https://zh.wikipedia.org/wiki/Bill_Fenner "wikilink")1999年创建了www.tcpdump.org。

## 用途

tcpdump能够分析网络行为，性能和应用产生或接收网络流量。它支持针对网络层、协议、主机、网络或端口的过滤，并提供and、or、not等逻辑语句来帮助你去掉无用的信息，从而使用户能够进一步找出问题的根源。

也可以使用 tcpdump
的实现特定目的，例如在[路由器和](../Page/路由器.md "wikilink")[网关之间拦截并显示其他用户或计算机通信](../Page/网关.md "wikilink")。通过
tcpdump
分析非加密的流量，如[Telnet或](../Page/Telnet.md "wikilink")[HTTP的数据包](https://zh.wikipedia.org/wiki/HTTP "wikilink")，查看登录的用户名、密码、网址、正在浏览的网站内容，或任何其他信息。因此系统中存在网络分析工具主要不是对本机安全的威胁，而是对网络上的其他计算机的安全存在威胁。\[2\]

有很多用户喜欢使用[柏克萊封包過濾器来限制](../Page/BPF.md "wikilink") tcpdump
产生的数据包数量，这样BPF会只把「感兴趣」的封包到上层软件，可以避免从[操作系统](../Page/操作系统.md "wikilink")
[内核向用户态复制其他封包](../Page/内核.md "wikilink")，降低抓包的[CPU的负担以及所需的缓冲区空间](https://zh.wikipedia.org/wiki/CPU "wikilink")，从而减少丢包率。

## 权限要求

一些[类Unix](../Page/类Unix系统.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")，用户有必须拥有[超级用户权限方可使用](../Page/超级用户.md "wikilink")
tcpdump，因为在这些系统需要使用[超级用户权限将网络界面设置为混杂模式](../Page/超级用户.md "wikilink")。然而，可以通过使用
-Z
选项在完成嗅探之后站即下降到一个特定的非特权用户的权限。在某一些类Unix操作系统，数据包嗅探机制可以配置为允许非特权用户可以使用它，如果做到这一点，就不需要超级用户权限。

## 参考

  - [Packetsquare](https://zh.wikipedia.org/wiki/Packetsquare "wikilink"),
    一个协议编辑器和回放工具
  - [Tcptrace](https://zh.wikipedia.org/wiki/Tcptrace "wikilink"),
    网络通讯消息截取工具
  - [EtherApe](https://zh.wikipedia.org/wiki/Etherape "wikilink"),
    一个图形化的网络流量嗅探器
  - [Ngrep](https://zh.wikipedia.org/wiki/Ngrep "wikilink"),
    一个在网络通讯的数据包中匹配指定内容的工具
  - [netsniff-ng](https://zh.wikipedia.org/wiki/netsniff-ng "wikilink"),
    一个自由、高性能的Linux下基于命令行的网络包分析工具
  - [Wireshark](../Page/Wireshark.md "wikilink"), 跨平台的图形抓包软件

## 引用

## 外部链接

  - [tcpdump 的官方网站(包括libpcap)](http://www.tcpdump.org/)
  - [WinDump的官方网站](http://www.winpcap.org/windump/)

[Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink")
[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")
[Category:Windows软件](https://zh.wikipedia.org/wiki/Category:Windows软件 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:網絡分析器](https://zh.wikipedia.org/wiki/Category:網絡分析器 "wikilink")

1.
2.