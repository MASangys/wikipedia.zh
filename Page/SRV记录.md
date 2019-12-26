**SRV记录**（，中文又名**服务定位记录**）是[域名系统](../Page/域名系统.md "wikilink")中用于指定服务器提供服务的位置（如主机名和端口）数据。此数据于RFC 2782中定义，类型代码为33。部分协议，如[会话发起协议](../Page/会话发起协议.md "wikilink")（SIP）及[可扩展消息与存在协议](../Page/可扩展消息与存在协议.md "wikilink")（XMPP）通常需要服务记录的支持。

## 记录格式

服务记录的格式为：

`_服务._协议.名称. TTL 类别 SRV 优先级 权重 端口 主机.`

  - 服务：服务的符号名称。
  - 协议：服务的传输协议，通常为[TCP或](../Page/传输控制协议.md "wikilink")[UDP](../Page/用户数据报协议.md "wikilink")。
  - 名称：此记录生效的所在域名，以半角逗号结尾。
  - TTL：标准DNS[存活时间值](https://zh.wikipedia.org/wiki/存活時間 "wikilink")。
  - 类别：标准DNS类别值（此值总为IN）。
  - 优先级：目标主机的优先级，值越小越优先。
  - 权重：相同优先度记录的相对权重，值越大越优先。
  - 端口：服务所在的TCP或UDP端口。
  - 主机：提供服务的规范主机名，以半角句号结尾。

以下是中的服务记录示例：

`_minecraft._tcp.example.com. 86400 IN SRV 0 5 25565 mc.example.com.`

此记录指向在TCP端口25565上监听[Minecraft游戏协议的](https://zh.wikipedia.org/wiki/Minecraft "wikilink") `mc.example.com`。此处的优先级为0，权重为5。

与[MX记录](../Page/MX记录.md "wikilink")一样，SRV记录中的主机必须指向已有地址记录（[A或](../Page/DNS记录类型列表.md "wikilink")）的主机名。指向带有[CNAME记录的主机名则无效](https://zh.wikipedia.org/wiki/CNAME "wikilink")。

## 负载均衡

优先级值决定记录数据的先后顺序。客户端应先尝试使用优先级最高的数据，在连接失败时尝试更低优先级的数据。若一项服务有着同一优先级的多个SRV记录，客户端则应根据记录中的权重进行[负载均衡](../Page/负载均衡.md "wikilink")。下例中，优先度及权重值用于提供负载均衡与备份服务。

<span style="color:gray;">*`#``   ``-{zh-hans:_服务;zh-hant:_服務}-._协议.名称.``   ``TTL``   ``类别``   ``SRV``   ``优先级``   ``权重``   ``端口``   ``主机.`*</span>
`_sip._tcp.example.com.   86400 IN    SRV 10       60     5060 bigbox.example.com.`
`_sip._tcp.example.com.   86400 IN    SRV 10       20     5060 smallbox1.example.com.`
`_sip._tcp.example.com.   86400 IN    SRV 10       20     5060 smallbox2.example.com.`
`_sip._tcp.example.com.   86400 IN    SRV 20       0      5060 backupbox.example.com.`

前三个记录优先度均为10，故客户端将根据权重决定该联系哪台服务器（主机及端口）。三个记录的权重值相加为100，故60%的时间内客户端使用 `bigbox.example.com`。剩下40%的时间内，客户端会将请求发送给主机 `smallbox1` 和 `smallbox2`；其中的一半将发送给 `smallbox1`，另一半给 `smallbox2`。若`bigbox`不可用，则剩余两台机器由于权重相同，其将共享负载。

若三台优先级为10的服务器均不可用，则客户端将使用下一优先级的记录，即`backupbox.example.com`。这台机器可能为位于其他地理位置且不受造成上述三台机器不可用原因影响的主机。

由于SRV记录所提供的记录均为静态数据，其负载均衡能力天生有限。记录无法根据服务器的当前负载进行变通，除非TTL值足够低（一分钟或更小）才能使优先级（或权重值）迅速更新。

## 用法

SRV记录通常与下列[标准化](https://zh.wikipedia.org/wiki/互联网标准 "wikilink")[传输协议同时使用](../Page/网络传输协议.md "wikilink")：

  - 或

  - \[1\]

  -
  -
  -
  - [Kerberos](../Page/Kerberos.md "wikilink")\[2\]

  - [LDAP](../Page/轻型目录访问协议.md "wikilink")\[3\]

  - [SMTP](../Page/简单邮件传输协议.md "wikilink")、[POP及](../Page/郵局協定.md "wikilink")[IMAP](../Page/因特网信息访问协议.md "wikilink")\[4\]

  - [Matrix.org](../Page/Matrix_\(协议\).md "wikilink")\[5\]

  - [Minecraft](../Page/我的世界.md "wikilink")\[6\]

  - \[7\]

  - \[8\]

  - [会话发起协议](../Page/会话发起协议.md "wikilink")

  - [STUN](../Page/STUN.md "wikilink")

  - [Teamspeak 3](../Page/TeamSpeak.md "wikilink")\[9\]\[10\]

  - [XMPP](../Page/可扩展消息与存在协议.md "wikilink")\[11\]

在[微软](../Page/微软.md "wikilink")[Windows 2000中](../Page/Windows_2000.md "wikilink")，客户端查询SRV服务来确定特定服务的[域名控制器](https://zh.wikipedia.org/wiki/網域控制器 "wikilink")。SRV记录同时也被Outlook 2007、2010及macOS 10.6邮件使用来定位Exchange自动发现服务。\[12\] 微软Windows网络域名控制器在DNS中注册其[活动目录的服务类型](../Page/Active_Directory.md "wikilink")。

RFC 6335中定义[互联网号码分配局](../Page/互联网号码分配局.md "wikilink")（IANA）来维护SRV记录及协议的服务名记录表。\[13\]

## 另请参阅

  - [DNS记录类型列表](../Page/DNS记录类型列表.md "wikilink")
  - [MX记录](../Page/MX记录.md "wikilink") — 一项用于定位SMTP服务器的DNS RR类型

## 参考文献

## 外部链接

  - RFC 2782 – SRV资源记录定义

  - [Service Name and Transport Protocol Port Number Registry](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)

  - [draft-andrews-http-srv-01.txt](http://tools.ietf.org/html/draft-andrews-http-srv-01) – Use of SRV records in conjunction with HTTP and URIs (Expired Internet-Draft)

  - RFC 6186 – Use of SRV Records for Locating Email Submission/Access Services

  -
[Category:DNS记录类型](https://zh.wikipedia.org/wiki/Category:DNS记录类型 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [1](http://baraza.im/userguide_pre.htm)
8.
9.
10.
11.
12.
13.