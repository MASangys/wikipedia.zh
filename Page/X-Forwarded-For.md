**X-Forwarded-For**（**XFF**）是用来识别通过[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")[代理或](../Page/代理服务器.md "wikilink")[负载均衡方式连接到](../Page/负载均衡.md "wikilink")[Web服务器的客户端最原始的](https://zh.wikipedia.org/wiki/Web服务器 "wikilink")[IP地址的HTTP请求头字段](../Page/IP地址.md "wikilink")。
[Squid](../Page/Squid_\(软件\).md "wikilink")
缓存代理服务器的开发人员最早引入了这一HTTP头字段，并由[IETF在HTTP头字段标准化草案](https://zh.wikipedia.org/wiki/IETF "wikilink")\[1\]中正式提出。

当今多数缓存服务器的使用者为大型ISP，为了通过缓存的方式来降低他们的外部带宽，他们常常通过鼓励或强制用户使用代理服务器来接入[互联网](../Page/互联网.md "wikilink")。有些情况下，这些代理服务器是透明代理，用户甚至不知道自己正在使用代理上网。

如果没有XFF或者另外一种相似的技术，所有通过代理服务器的连接只会显示代理服务器的IP地址，而非连接发起的原始IP地址，这样的代理服务器实际上充当了匿名服务提供者的角色，如果连接的原始IP地址不可得，恶意访问的检测与预防的难度将大大增加。XFF的有效性依赖于代理服务器提供的连接原始IP地址的真实性，因此，XFF的有效使用应该保证代理服务器是可信的，比如可以通过建立可信服务器白名单的方式。

## 格式

这一HTTP头一般格式如下:

  -
    `X-Forwarded-For: client1, proxy1, proxy2`

其中的值通过一个 逗号+空格 把多个IP地址区分开, 最左边（client1）是最原始客户端的IP地址,
代理服务器每成功收到一个请求，就把**请求来源IP地址**添加到右边。
在上面这个例子中，这个请求成功通过了三台代理服务器：proxy1, proxy2 及
proxy3。请求由client1发出，到达了proxy3（proxy3可能是请求的终点）。请求刚从client1中发出时，XFF是空的，请求被发往proxy1；通过proxy1的时候，client1被添加到XFF中，之后请求被发往proxy2;通过proxy2的时候，proxy1被添加到XFF中，之后请求被发往proxy3；通过proxy3时，proxy2被添加到XFF中，之后请求的的去向不明，如果proxy3不是请求终点，请求会被继续转发。

鉴于伪造这一字段非常容易，应该谨慎使用X-Forwarded-For字段。正常情况下XFF中最后一个IP地址是最后一个代理服务器的IP地址,
这通常是一个比较可靠的信息来源。

## 使用

在[代理转发及](https://zh.wikipedia.org/wiki/代理转发 "wikilink")[反向代理中经常使用X](../Page/反向代理.md "wikilink")-Forwarded-For
字段。

### 代理转发

在
[代理转发的场景中](https://zh.wikipedia.org/wiki/代理转发 "wikilink")，你可以通过内部代理链以及记录在网关设备上的IP地址追踪到网络中客户端的IP地址。处于安全考虑，网关设备在把请求发送到外网（[因特网](https://zh.wikipedia.org/wiki/因特网 "wikilink")）前，应该去除
X-Forwarded-For
字段里的所有信息。这种情况下所有的信息都表现为从内部网络公共IP生成，因此X-Forwarded-For字段中的信息应该是可靠的。

### 反向代理

在 [反向代理的情况下](../Page/反向代理.md "wikilink")，你可以追踪到互联网上连接到你的服务器的客户端的IP地址,
即使你的网络服务器和互联网在路由上是不可达的。这种情况下你不应该信任所有X-Forwarded-For信息，其中有部分可能是伪造的。因此需要建立一个信任白名单来确保X-Forwarded-For中哪些IP地址对你是可信的。

最后一次代理服务器的地址并没有记录在代理链中，因此只记录 X-Forwarded-For
字段是不够的。完整起见，Web服务器应该记录请求来源的IP地址以及X-Forwarded-For
字段信息。

## Web服务器日志中的X-Forwarded-For

大多数Web服务器可以通过配置在日志中记录X-Forwarded-For。 Apache中可以非常简单地修改配置来实现，但MS IIS
6及以下的版本需要第三方软件支持来实现。\[2\] IIS7用户可以从IIS.net获得免费的IIS相关组件来实现。\[3\]

## 参见

  - [网络隐私](../Page/网络隐私.md "wikilink")
  - [代理服务器](../Page/代理服务器.md "wikilink")
  - [X-Originating-IP](https://zh.wikipedia.org/wiki/X-Originating-IP "wikilink")

## 引用

<references/>

## 外部链接

  - Apache
    [mod_extract_forwarded](https://web.archive.org/web/20070218024619/http://www.openinfo.co.uk/apache/index.html)
  - X-Forwarded-For in TMG2010 [Free web filter for TMG2010 to add
    X-Forwarded-For header in inbound
    requests](https://web.archive.org/web/20110903202457/http://itboard.ro/blogs/jurnal_de_vet/archive/2011/03/30/x-forwarded-for-pentru-tmg.aspx)

[Category:匿名](https://zh.wikipedia.org/wiki/Category:匿名 "wikilink")
[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")

1.
2.  [Winfrasoft X-Forwarded-For for
    IIS](http://www.winfrasoft.com/X-Forwarded-For.htm)
    是一个通过添加XFF信息替换C-IP信息的IIS 插件。
3.  [blogs.iis.net](http://blogs.iis.net/anilr/archive/2009/03/03/client-ip-not-logged-on-content-server-when-using-arr.aspx)