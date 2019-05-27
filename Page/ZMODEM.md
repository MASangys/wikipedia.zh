**ZMODEM**是由Chuck
Forsberg于1986年在由Telenet资助的[项目中开发的文件传输协议](https://zh.wikipedia.org/wiki/项目 "wikilink")
，用于改进其[X.25网络上的文件传输](../Page/X.25.md "wikilink")。
除了与旧协议相比显着提高的性能外，ZMODEM还提供可重新启动的传输，发送器自动启动，扩展的32位[CRC以及支持](../Page/循環冗餘校驗.md "wikilink")8位干净传输的[控制字符引用](../Page/转义字符.md "wikilink")
，支持无法传输控制字符的网络。 20世纪90年代初，ZMODEM在[公告板系统](../Page/BBS.md "wikilink")
（BBS）上变得非常流行，取代了早期的协议，如XMODEM和YMODEM 。

## 改进

ZMODEM的关键改进是引入了滑动窗口支持以提高性能。 通常，文件传输协议将文件分解为一系列*数据包* ，然后一次一个地发送到接收方。
每个数据包都带有*[校验和](https://zh.wikipedia.org/wiki/校验和 "wikilink")*
，可用于确定数据包是否被正确接收。 如果正确接收到分组，则发送`ACK`消息，然后发送方开始发送下一个分组。

但是，通信系统中存在*[延迟](../Page/延迟_\(工程学\).md "wikilink")*，干扰了这个过程。
即使接收方立即发送`ACK`
，通信系统中的延迟也意味着在发送方收到确认并发送下一个数据包之前总会有一段时间。
随着[调制解调器速度的增加](../Page/调制解调器.md "wikilink")，在延迟期间可发送的包数目越来越大，这降低了*[信道效率](../Page/吞吐量.md "wikilink")*
。

滑动窗口协议通过允许发送机器在不等待`ACK的`情况下继续处理下一个数据包来避免此问题。 接收方发送`ACK` （或者如果有错误则发送`NAK`
）以及它正在确认的分组号。 发送方可以随意处理这些内容，根据需要重新发送数据包。
这有效地消除了没有错误发生时的确认延迟，只留下了数据传输和错误检测的延迟。

ZMODEM的性能比以前的通用协议有了很大提高，它甚至可以替代YMODEM-g这样的特殊协议，YMODEM-g根本不包含纠错，而是依赖于调制解调器维护的无差错链路。
尽管YMODEM-g明显更快，但缺乏其他功能（如可重新启动的传输）使其不那么吸引人。

自动启动管理通过允许发送方启动传输来简化这个过程。
以前，用户必须首先向发送方请求文件，将其置于“等待”状态，然后返回其本地程序并调用命令以开始传输。
通过自动传输，他们只需要请求文件，然后发件人就会自动触发用户程序中的传输过程。

重新启动是另一个增强，允许在线路被中断或用户时间用完之后重新启动传输。

## 变种

出现了许多ZMODEM的修改版本。 ZedZap是ZMODEM的一种变体，带有8 kbyte块，可在高速调制解调器上获得更好的性能。
LeechZmodem是一个恶作剧的ZMODEM变种（在类似的XMODEM和YMODEM衍生品中），它欺骗了[BBS下载配额](../Page/BBS.md "wikilink")。
ADONTEC在2002年和2007年创建了具有32千字节和64千字块长度的ZMODEM向后兼容扩展，以提高ISDN或TCP /
IP网络等高速无差错连接的性能。

最值得注意的ZMODEM实现时来自 Chuck Forsberg 的 Omen Technology,Inc. 包括DSZ(DOS Send
ZMODEM)，GSZ(图形化ZMODEM发送协议)，以及无所不在(l)rzsz Unix变体。

在更新的时代， Synchronet的开发人员已经创建了一个名为SEXYZ的现代X/Y/ZMODEM实现，它基于zmtx /
zmrx软件包，该软件包支持Windows和Unix变体，支持长文件名，更快，提供更可靠的数据传输。
SEXYZ的ZMODEM实现也已整合到SyncTERM项目中。
Synchronet，SEXYZ和SyncTERM都是开源，跨平台，以BBS为中心的项目。

Forsberg自己收集了许多ZMODEM-90的改进。 第一个是MobyTurbo，它删除了控制字符转义以进一步提高性能，约提高了15％。
即使在会“吃掉”控制字符的网络上，ZMODEM-90也可以定制为仅转义网络实际吃的那些字符，而不是每个控制字符。
类似的改进允许ZMODEM-90在7bit网络上工作，而早期的协议（除了Kermit之外 ）都要求8bit到或更多。
最后，ZMODEM-90包括一个基本的[游程编码压缩系统](../Page/游程编码.md "wikilink")，以进一步提高传输未压缩文件的性能。

## 局限性

  - 一些ZMODEM数据包（例如 ZACK，ZRPOS）在传输的文件中嵌入一个字节的32位无符号整数，作为偏移量。
    此设计限制了ZMODEM只能可靠地传输大小不超过4GB的文件。
  - 即使协议允许它，引用（l）rzsz实现也不能编码任何非控制字符（例如'〜'），这些字符经常被TCP /
    IP连接程序（如telnet和ssh）用作客户端“终端转义”字符。
    用户必须禁用终端转义功能才能在这些类型的链接上实现可靠的传输，例如ssh
    -e none user@hostname。

## 参考

  - [ZMODEM应用程序间文件传输协议](http://gallium.inria.fr/~doligez/zmodem/zmodem.txt)
  - [同步外部X / Y /
    Zmodem（SEXYZ）文件传输协议驱动程序](http://synchro.net/docs/sexyz.txt)

## 外部链接

  - [文件传输协议的演变与选择](https://web.archive.org/web/20150107103454/http://www.omen.com/zmdmev.html)

[Category:數據機](https://zh.wikipedia.org/wiki/Category:數據機 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")