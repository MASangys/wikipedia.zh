**TCP快速打开**（，简称**TFO**）是对计算机网络中[传输控制协议](../Page/传输控制协议.md "wikilink")（TCP）连接的一种简化握手手续的拓展，用于提高两端点间连接的打开速度。

它通过握手开始时的SYN包中的TFO
cookie（一个TCP选项）来验证一个之前连接过的客户端。如果验证成功，它可以在三次握手最终的ACK包收到之前就开始发送数据，这样便跳过了一个绕路的行为，更在传输开始时就降低了延迟。这个加密的Cookie被存储在客户端，在一开始的连接时被设定好。然后每当客户端连接时，这个Cookie被重复返回。\[1\]

此Cookie通常采用一种[分组密码](../Page/分组密码.md "wikilink")，私钥由服务器根据客户端的[IP地址保存](../Page/IP地址.md "wikilink")，生成一个第三方难以仿冒的[訊息鑑別碼标签](https://zh.wikipedia.org/wiki/訊息鑑別碼 "wikilink")，即便第三方可以伪造源IP地址或从其他IP地址制造到同一个服务器的连接。尽管使用了加密技术来生成cookie，但TFO并不着眼于提供比它所替换的三次握手有更多的安全性，并且不对所产生的TCP连接提供任何形式的加密保护或端点身份认证。它的目的不是为了抵挡中间人攻击。

这个协议最早提出于2011年\[2\] 并在2012年2月时已为一个IETF互联网草案，\[3\] 这项规范最终在2014年12月作为RFC
7413发布。\[4\]

## 过程

### 请求Fast Open Cookie

1.  客户端发送SYN数据包，该数据包包含Fast Open选项，且该选项的Cookie为空，这表明客户端请求Fast Open
    Cookie；
2.  支持TCP Fast Open的服务器生成Cookie，并将其置于SYN-ACK数据包中的Fast Open选项以发回客户端；
3.  客户端收到SYN-ACK后，缓存Fast Open选项中的Cookie。

### 实施TCP Fast Open

以下描述假定客戶端在此前的TCP連接中已完成請求Fast Open Cookie的過程並存有有效的Fast Open Cookie。

1.  客户端发送SYN数据包，该数据包包含数据（对于非TFO的普通TCP握手过程，SYN数据包中不包含数据）以及此前记录的Cookie；
2.  支持TCP Fast
    Open的服务器会对收到Cookie进行校验：如果Cookie有效，服务器将在SYN-ACK数据包中对SYN和数据进行确认（Acknowledgement），服务器随后将数据递送至相应的应用程序；否则，服务器将丢弃SYN数据包中包含的数据，且其随后发出的SYN-ACK数据包将仅确认（Acknowledgement）SYN的对应序列号；
3.  如果服务器接受了SYN数据包中的数据，服务器可在握手完成之前发送数据；
4.  客户端将发送ACK确认服务器发回的SYN以及数据，但如果客户端在初始的SYN数据包中发送的数据未被确认，则客户端将重新发送数据；
5.  此后的TCP连接和非TFO的正常情况一致。

注：客户端在请求并存储了Fast Open Cookie之后，可以不断重复TCP Fast
Open直至服务器认为Cookie无效（通常为过期）。\[5\]

## 实现

TFO的实现包括：

  - TFO的IPv4支持在3.6（客户端）和3.7（服务端）版本中被合并进[Linux内核主线](../Page/Linux内核.md "wikilink")，\[6\]\[7\]从3.13版本开始默认打开。\[8\]IPv6服务器的TFO支持被合并进入3.16版本。\[9\]
  - FreeBSD自10.3\[10\]和11.0版本开始支持TFO\[11\]（仅支持服务端，未默认启用需要手动修改配置，需要重新编译内核）。

<!-- end list -->

  - [Mozilla Firefox](../Page/Firefox.md "wikilink") 56将支持TFO。\[12\]

<!-- end list -->

  - [Google
    Chrome和](../Page/Google_Chrome.md "wikilink")[Chromium浏览器在](../Page/Chromium.md "wikilink")[Linux上提供TFO支持](../Page/Linux.md "wikilink")，包括[Chrome
    OS和](../Page/Chrome_OS.md "wikilink")[Android](../Page/Android.md "wikilink")。
  - [Exim](https://zh.wikipedia.org/wiki/wikipedia:Exim "wikilink")（邮件传输代理）从4.88开始启用TFO。\[13\]
  - [BIND自](../Page/BIND.md "wikilink")9.11.0开始启用。\[14\]

<!-- end list -->

  - [苹果公司的](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[iOS
    9和](https://zh.wikipedia.org/wiki/iOS_9 "wikilink")[OS X
    10.11支持TCP快速打开](https://zh.wikipedia.org/wiki/OS_X_10.11 "wikilink")，但并未为各连接默认启用。\[15\]
  - [Microsoft
    Edge从](https://zh.wikipedia.org/wiki/Microsoft_Edge "wikilink")[Windows
    10](https://zh.wikipedia.org/wiki/Windows_10 "wikilink") Preview
    build 14352开始支持TFO。\[16\]

## 替代品

TCP快速打开（TFO）类似一项1994年被称作[T/TCP](https://zh.wikipedia.org/wiki/T/TCP "wikilink")（RFC
1644）的提议，但由于它未考虑安全原因而存在漏洞，所以未被广泛使用。

## 参见

  - [SPDY](../Page/SPDY.md "wikilink")
  - [SYN cookies](https://zh.wikipedia.org/wiki/SYN_cookies "wikilink")
  - [TCP Cookie
    传输](https://zh.wikipedia.org/wiki/TCP_Cookie_传输 "wikilink")

## 参考文献

[Category:TCP/IP](https://zh.wikipedia.org/wiki/Category:TCP/IP "wikilink")

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

16.