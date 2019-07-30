**DNS重新绑定**是[计算机攻击的一种形式](../Page/计算机安全.md "wikilink")。 在这种攻击中，恶意[网页会导致访问者运行](https://zh.wikipedia.org/wiki/网页 "wikilink")[客户端脚本客户端脚本](https://zh.wikipedia.org/wiki/:en:Dynamic_web_page#Client-side_scripting "wikilink")，攻击网络上其他地方的计算机。 从理论上讲，[同源策略可防止发生这种情况](https://zh.wikipedia.org/wiki/同源策略 "wikilink")：客户端脚本只能访问为脚本提供服务的同一主机上的内容。 比较[域名](../Page/域名.md "wikilink")是实施此策略的重要部分，因此DNS重新绑定通过滥用域名系统（DNS）来绕过这种保护。

这种攻击可以通过让受害者的网络浏览器访问专用IP地址的机器并将结果返回给攻击者来破坏专用网络。 它也可以用于使用受害者机器发送垃圾邮件，分布式拒绝服务攻击或其他恶意活动。

## DNS如何重新绑定的工作

攻击者注册一个域名（如attacker.com），并在攻击者控制下将其代理给[DNS服务器](../Page/域名系统.md "wikilink")。 服务器配置为很短响应时间的[TTL记录](https://zh.wikipedia.org/wiki/:en:Time_to_live "wikilink")，防止响应被缓存。 当受害者浏览到恶意域时，攻击者的DNS服务器首先用托管恶意客户端代码的服务器的IP地址作出响应。 例如，他们可以将受害者的浏览器指向包含旨在在受害者计算机上执行的恶意JavaScript或Flash脚本的网站。

恶意客户端代码会对原始域名（例如attacker.com）进行额外访问。 这些都是由同源政策所允许的。 但是，当受害者的浏览器运行该脚本时，它会为该域创建一个新的DNS请求，并且攻击者会使用新的IP地址进行回复。 例如，他们可以使用内部IP地址或互联网上某个目标的IP地址进行回复。

## 保护

以下技术可以防止DNS重新绑定攻击:\[1\]\[2\]\[3\]\[4\]

  - Web浏览器可以实现DNS固定：IP地址被锁定到第一个DNS响应中收到的值。 此技术可能会阻止[动态DNS的某些合法使用](https://zh.wikipedia.org/wiki/動態DNS "wikilink")，并且可能无法对付所有攻击。 但是，如果IP地址确实发生变化，则安全失败很重要（停止渲染）因为使用超过TTL过期的IP地址可能会在IP地址合法更改并且现在可以由攻击者控制过期IP地址时打开相反的漏洞。
  - 专用IP地址可以被过滤掉DNS响应。
      - 具有此筛选的外部公共DNS服务器 例如. [OpenDNS](../Page/OpenDNS.md "wikilink").\[5\]
      - 本地系统管理员可以配置组织的本地[名称服务器](https://zh.wikipedia.org/wiki/名称服务器 "wikilink")，以阻止将外部名称解析为内部IP地址。 这具有允许攻击者映射正在使用的内部地址范围的缺点。
      - 防火墙或守护进程中的DNS过滤 例如. dnswall.\[6\]\[7\]
  - Web服务器可以使用无法识别的[主机头来拒绝](../Page/HTTP头字段.md "wikilink")[HTTP请求](../Page/超文本传输协议.md "wikilink")。
  - Firefox NoScript扩展使用其ABE功能提供部分保护（对于专用网络），该功能可阻止从外部地址到本地地址的网页流量。

## 参见

  - [DNS劫持](https://zh.wikipedia.org/wiki/DNS劫持 "wikilink")
  - [DNS欺骗](https://zh.wikipedia.org/wiki/DNS欺骗 "wikilink")

## 参考文献

## 外部链接

  - [Protecting Browsers from DNS Rebinding Attacks](https://crypto.stanford.edu/dns/) (2007)
  - [DNS hardening update](https://www.adobe.com/devnet/flashplayer/articles/fplayer9_security.html#goal_dns) for [Adobe Flash Player](../Page/Adobe_Flash_Player.md "wikilink") (2008)
  - [Security Sun Alert 200041](http://download.oracle.com/sunalerts/1000033.1.html) for the [Sun JVM](../Page/Java平臺.md "wikilink") (2008-09-04)
  - [DNS Rebinding with Robert RSnake Hansen](https://vimeo.com/7907871) (2009)

[Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink") [Category:互联网安全](https://zh.wikipedia.org/wiki/Category:互联网安全 "wikilink")

1.  <https://crypto.stanford.edu/dns/dns-rebinding.pdf>
2.  <https://www.adambarth.com/papers/2009/jackson-barth-bortz-shao-boneh-tweb.pdf> ([1](http://crypto.stanford.edu/~dabo/abstracts/dnsrebind.html))
3.  <https://www.ptsecurity.com/upload/corporate/ww-en/download/DNS-rebinding.pdf>
4.
5.
6.
7.