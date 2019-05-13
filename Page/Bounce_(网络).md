**BNC**（**bouncer**的缩写）是一种用来在[电脑网络中进行中继通讯和连接的软件](../Page/电脑网络.md "wikilink")，很像是[代理](../Page/代理服务器.md "wikilink")。BNC可以让用户隐藏其连接的原始资料，为从特定的位置路由其通讯的用户提供了[隐私性](../Page/隐私性.md "wikilink")，BNC也可以被用来隐藏用户所要连接的真正目标。

## IRC

常见的用途为通过运行在远程[服务器上的BNC来进行](../Page/服务器_\(计算机\).md "wikilink")[Internet中继聊天](../Page/Internet中继聊天.md "wikilink")
(IRC)。在那样的环境下，本来很容易通过IRC通讯确定用户的[IP地址](../Page/IP地址.md "wikilink")，而用了BNC就可以隐藏原始的连接信息，同时BNC也提供了有趣的[vhost或者是](../Page/vhost_\(IRC\).md "wikilink")"虚拟主机"
。使用vhost并不能隐藏连接信息，只是加入了关于主机的声明。\[1\]

许多BNC会在Internet客户端与IRC服务器失去连接时依然维持连接状态，而连接状态是会被追踪的，当客户端再次连接的时候就可以继续之前的连接。有些功能实现会选择存储所有客户端从网络接受到的消息，并且在客户端重新连接将消息发回，一般这对商业性主机服务提供来说是有点过多了。而其它的一些细节日志和类似[机器人的功能也属于不标准的功能实现](../Page/IRC机器人.md "wikilink")。

**举例:**

  -
    直接连接，IRC日志表示为`USER!user@255.255.255.0`
    通过BNC非直接连接，IRC日志表示为`USER!user@example.net`
    *注意: example.net是一个虚构的实例，就当前角度来说，它是可以被解析成IP地址或者是BNC的主机名。*

## FTP

BNC也经常被应用于使用[FTP](../Page/文件传输协议.md "wikilink")，同样的既可以使得[用户和](../Page/用户_\(计算机\).md "wikilink")[服务器相互隐藏自己的信息](../Page/服务器_\(计算机\).md "wikilink")，而且从特定位置进行路由通讯时信息也可以得到隐藏。FTP保护者可以被分成两种不同的种类，入口和通讯。入口保护者对服务器来说就像一个[网关](../Page/网关_\(电信\).md "wikilink")
，但是它并不隐藏实际服务器的存在。入口保护者，像[cubnc就可以被用于对多服务器的建立](../Page/cubnc.md "wikilink")，可以使得每个服务器可以很方便地互访，而且达到[负载平衡](../Page/负载平衡_\(计算机\).md "wikilink")，这样在访问服务器群的时候就不存在选择哪个FTP服务器进行登入的问题了。

通讯保护者从它所安装的主机进行中继通讯，它就像正在被使用的FTP服务器，完全隐藏了真正服务器的位置。为了平衡不同连接的流量，通讯保护者可以被平行安装多个。非常多复杂的保护者甚至可以有效维护[SSL/TLS连接](../Page/传输层安全.md "wikilink")。

## 參見

  - [代理](../Page/代理服务器.md "wikilink")
  - [开放代理](../Page/开放代理.md "wikilink")
  - [psyBNC](../Page/psyBNC.md "wikilink")

## 参考

## 外部链接

  -
[Category:网络隐私](https://zh.wikipedia.org/wiki/Category:网络隐私 "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:IRC](https://zh.wikipedia.org/wiki/Category:IRC "wikilink")
[Category:代理服务器](https://zh.wikipedia.org/wiki/Category:代理服务器 "wikilink")
[Category:FTP](https://zh.wikipedia.org/wiki/Category:FTP "wikilink")

1.  <http://www.gotbnc.com/>