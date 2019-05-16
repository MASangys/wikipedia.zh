**ping**是一种[電腦](https://zh.wikipedia.org/wiki/電腦 "wikilink")[網路工具](../Page/计算机网络.md "wikilink")，用來測試数据包能否透過[IP协议到達特定](https://zh.wikipedia.org/wiki/IP协议 "wikilink")[主機](https://zh.wikipedia.org/wiki/主機 "wikilink")。ping的運作原理是向目標主機傳出一個[ICMP的请求回显数据包](https://zh.wikipedia.org/wiki/ICMP "wikilink")，并等待接收回显回應封包。程式會按時間和成功响应的次數估算丢失封包率（丢包率）和[封包往返時間](https://zh.wikipedia.org/wiki/來回通訊延遲 "wikilink")（网络时延，）。

在1983年12月，Mike
Muuss编写了首个這样的程式，用于在IP網路出现問題時方便探查其根源。因為這個程式的運作原理与[潛水艇的主动](https://zh.wikipedia.org/wiki/潛水艇 "wikilink")[声纳相似](https://zh.wikipedia.org/wiki/声纳 "wikilink")，他便用聲納的聲音來為程式取名。David
L. Mills曾提出另一個取名：**P**acket **I**nter**n**et
**G**rouper/**G**opher（後者指[地鼠](https://zh.wikipedia.org/wiki/地鼠 "wikilink")）。

[网络管理员之间也常将ping用作动词](https://zh.wikipedia.org/wiki/网络管理员 "wikilink")，如“ping一下计算机XXX，看它是否开着。”

## 例子

### Linux系统下的示例

具有iputils的[Linux系统內的ping](../Page/Linux.md "wikilink")：

``` shell-session
root@localhost:~# ping www.wikipedia.org
PING www.wikipedia.org (198.35.26.96): 56(84) data bytes
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=1 ttl=53 time=198.6 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=2 ttl=53 time=199.2 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=3 ttl=53 time=198.5 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=4 ttl=53 time=199.2 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=5 ttl=53 time=198.5 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=6 ttl=53 time=199.2 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=7 ttl=53 time=198.6 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=8 ttl=53 time=199.3 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=9 ttl=53 time=198.7 ms
64 bytes from text-lb.ulsfo.wikimedia.org (198.35.26.96): seq=10 ttl=53 time=198.4 ms
^C
--- www.wikipedia.org ping statistics ---
10 packets transmitted, 10 received, 0% packet loss, time 9021ms
rtt min/avg/max/mdev = 198.402/198.866/199.334/1.536 ms
```

有时在ping的返回信息里面会显示“DUP\!”，表明存在环路，例如：

``` doscon
64 bytes from 10.0.0.1: icmp_seq=10 ttl=62 time=10.2 ms
64 bytes from 10.0.0.1: icmp_seq=10 ttl=62 time=11.8 ms (DUP!)
64 bytes from 10.0.0.1: icmp_seq=10 ttl=62 time=12.6 ms (DUP!)
64 bytes from 10.0.0.1: icmp_seq=10 ttl=62 time=13.2 ms (DUP!)
64 bytes from 10.0.0.1: icmp_seq=11 ttl=62 time=11.9 ms
64 bytes from 10.0.0.1: icmp_seq=11 ttl=62 time=13.3 ms (DUP!)
64 bytes from 10.0.0.1: icmp_seq=11 ttl=62 time=14.3 ms (DUP!)
64 bytes from 10.0.0.1: icmp_seq=12 ttl=62 time=12.1 ms
```

### Windows系统下的示例

[Windows XP內置的ping](../Page/Windows_XP.md "wikilink")：

``` doscon
C:\> ping www.google.com
Pinging www.l.google.com [64.233.183.103] with 32 bytes of data:
Reply from 64.233.183.103: bytes=32 time=25ms TTL=245
Reply from 64.233.183.103: bytes=32 time=22ms TTL=245
Reply from 64.233.183.103: bytes=32 time=25ms TTL=246
Reply from 64.233.183.103: bytes=32 time=22ms TTL=246
Ping statistics for 64.233.183.103:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 22ms, Maximum = 25ms, Average = 23ms
```

其中

``` doscon
Pinging www.l.google.com [64.233.183.103] with 32 bytes of data:
```

`www.google.com`是`www.l.google.com` DNS別名，IP位址是`64.233.183.103`。以32
bytes大小測試，可以以-l（Windows）參數更改，大小是1-65500

``` doscon
Reply from 64.233.183.103: bytes=32 time=25ms TTL=245
Reply from 64.233.183.103: bytes=32 time=22ms TTL=245
Reply from 64.233.183.103: bytes=32 time=25ms TTL=246
Reply from 64.233.183.103: bytes=32 time=22ms TTL=246
```

反應時間25[毫秒](https://zh.wikipedia.org/wiki/毫秒 "wikilink")，TTL（Time To
Live）值為245 由上來看，到google通過255-245 = 10個路由

``` doscon
Ping statistics for 64.233.183.103:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 22ms, Maximum = 25ms, Average = 23ms
```

總計，最小22ms，最大25ms，平均23ms

## 相關條目

  - [死亡之Ping](https://zh.wikipedia.org/wiki/死亡之Ping "wikilink")
  - [Pathping](../Page/Pathping.md "wikilink")

## 外部連結

  - [PING的歷史](https://www.webcitation.org/5saCKBpgH?url=http://ftp.arl.mil/~mike/ping.html)，Mike
    Muuss

  - [Ping Test Online](http://www.test-net.org/)

  - [Ping
    Wiki](https://web.archive.org/web/20111102042149/http://www.bgp4.net/wiki/doku.php?id=tools%3Aipv4_ping)：提供了過百個網上ping工具

  - [Ping在线工具](https://myipaddress.pro/cn/ping)

[Category:网路管理软件](https://zh.wikipedia.org/wiki/Category:网路管理软件 "wikilink")
[Category:網絡分析器](https://zh.wikipedia.org/wiki/Category:網絡分析器 "wikilink")