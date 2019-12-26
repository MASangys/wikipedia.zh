**Twister**是一款测试性的[P2P](https://zh.wikipedia.org/wiki/P2P "wikilink")[微型博客](https://zh.wikipedia.org/wiki/微型博客 "wikilink")[自由软件](../Page/自由软件.md "wikilink")。它是完全分散式的，所以没有什么单独的位置可以攻击，进而无人可以让它停止工作。这个软件系统使用端对端[加密](../Page/加密.md "wikilink")以保护信息交互安全。\[1\] 软件基于[BitTorrent和](https://zh.wikipedia.org/wiki/BitTorrent "wikilink")[比特币](../Page/比特币.md "wikilink")，并且意图建立一个分散式的[Twitter](../Page/Twitter.md "wikilink") 克隆。\[2\]\[3\]\[4\]

## 概述

Twister是一个类似于[Twitter](../Page/Twitter.md "wikilink")的[微博](../Page/微博.md "wikilink")平台，它结合了[比特币](../Page/比特币.md "wikilink")的加密方法和[BitTorrent的文件交换方法](https://zh.wikipedia.org/wiki/BitTorrent "wikilink")（而这均是基于[P2P技术](https://zh.wikipedia.org/wiki/P2P "wikilink")）。

Twister是一个处于[beta测试阶段的实验性的软件](https://zh.wikipedia.org/wiki/軟件版本週期#Beta "wikilink")，它实现了一个分散式的[文件共享系统](https://zh.wikipedia.org/wiki/文件共享 "wikilink")。用户的注册以及接受注册是以一种类似于比特币网络的方式进行的，所以这是完全分散式的社交网络，进而无需受限于中心服务器机器管理者的权威。

Twister贴子（post）的发送基于[Kademlia](../Page/Kademlia.md "wikilink")[分散式哈希表](https://zh.wikipedia.org/wiki/分散式哈希表 "wikilink")（DHT）以及类BitTorrent的群，而Kademlia和DHT又基于 。\[5\]但是Twister使用的Kademlia和DHT都是经过大幅修改以使之无法和已存在的网络协作。

2013年7月，为了建立一个反屏蔽的公众微博平台以及保障隐私及言论自由，\[6\]Miguel Freitas开始从事Twister的开发。而Lucas Leal则被邀请使用HTML和CSS开发用户界面，Miguel负责 JavaScript 代码的书写。

在Twister刚开始运作的6天内，就有2,500个用户注册。\[7\]

Twister被设计为阻止其他用户对你进行[GSM定位或者取得你的](https://zh.wikipedia.org/wiki/GSM定位 "wikilink")[IP地址](../Page/IP地址.md "wikilink")。你可以在Twister上像其他微博平台一样地发布公开信息。但你还可以给其他用户发私密信息，这些信息会被使用[Lavabit](https://zh.wikipedia.org/wiki/Lavabit "wikilink")（[爱德华·斯诺登](../Page/爱德华·斯诺登.md "wikilink")使用的[e-mail加密方法](https://zh.wikipedia.org/wiki/e-mail "wikilink")）进行加密。

## 技术

### 协议

Twister 是一个与众不同的分散式的系统，它不像 [pump.io](https://zh.wikipedia.org/wiki/pump.io "wikilink")、[Identi.ca](../Page/Identi.ca.md "wikilink")、[StatusNet](https://zh.wikipedia.org/wiki/StatusNet "wikilink")、[GNU social或](../Page/GNU_social.md "wikilink")[Diaspora那样要求你使用你的服务器或者选择信任一个第三方服务器](../Page/Diaspora_\(软件\).md "wikilink")。它使用[P2P的方式进行通信](https://zh.wikipedia.org/wiki/P2P "wikilink")。

#### 比特币

Twister 使用[比特币](../Page/比特币.md "wikilink")协议实现。 一般地，处理用户的注册和通信是使用类似于比特币避免两次支付的处理交易的方法，Twister验证信息是由一个确定的用户发出的并且真是是由此用户发出的。 \[8\]

#### BitTorrent

用户所发送的信息由 [BitTorrent](https://zh.wikipedia.org/wiki/BitTorrent "wikilink") 控制。这允许使用快速并有效的方法运作含有大量信息的去中心化网络，并且还允许用户几乎是实时地接收新信息和提醒——并且全部不需要中心服务器。\[9\]

因为交互信息从一段加密到另一端，即使它被截获，私密信息仍不能被除了被指定接收者以外的人阅读。 这些信息使用比特币使用的[椭圆曲线密码](../Page/椭圆曲线密码学.md "wikilink")。这种密码被认为与[RSA加密算法是同等级的加密算法](https://zh.wikipedia.org/wiki/RSA加密算法 "wikilink")。

因为这些信息没有被存储，它们不会被盗用；但相对的，如果你丢失了你的密码，你也没办法查看你的私密信息。

Freitas 说，这个系统被设计为令用户无法知晓其他用户是否上线、他们的IP地址以及他们阅读了什么信息；因为这些信息没有被在任何地方注册。 尽管如此，Freitas 还是警告用户匿名并非完全取决于环境。

### 平台

Twister 在 [Linux](../Page/Linux.md "wikilink") 环境下开发。Freitas 也被成功地移植到了 [Android](../Page/Android.md "wikilink") 和 [OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")。虽然起先没有准备为 [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 开发客户端，但因为本软件是开源的，故也被社区移植到了 Windows 上。

另一长期令人感兴趣的事物是把这些密码学代码放到浏览器用户界面，进而使得用户可以使用第三方客户端继续安全地使用密码连接 Twister 网络。

## 功能

Twister的首个原型是复制其它[微博平台的特性](https://zh.wikipedia.org/wiki/微博平台 "wikilink")：

  - 查找和搜索用户信息和配置
  - Follow / Unfollow
  - 发送140字符以内的消息
  - 发送和回复公开信息
  - 浏览邮件转发，提及（`#`），[主题标签](https://zh.wikipedia.org/wiki/主题标签 "wikilink")（`#`）和私信。

这类私信要求信息接收者一定要关注发送者，就像大多数现在流行的微博平台。

一些特性可能对于分散式的社交网络难以实现。比如以任意字符串为用户名注册，以及使用主题标签标注主题的趋势\[10\]。

## 安全

Twister 使用的椭圆曲线密码是 [secp256k1](https://zh.wikipedia.org/wiki/secp256k1 "wikilink")，与[NSA常用的](https://zh.wikipedia.org/wiki/NSA "wikilink")[sec256r1不同](https://zh.wikipedia.org/wiki/sec256r1 "wikilink")。

### 审查

节点运行者可以在 DHT 中删除你的 post，但不可以屏蔽你的账户。

### 完全的隐私保护

因为信息是直接从一个用户发送到另一个，省去了经过中间服务器的过程，并且是以加密的方式进行传输；所以，自始至终，信息都像“黑盒子”一样在互联网中传递——仅在发送时加密，接收时解密。

### 匿名

在此应用当中，为了防止被一切组织或企业追踪，IP地址不会被记录。

Freitas 说，本软件保护匿名性，但不代表IP不会被[ISP发现](https://zh.wikipedia.org/wiki/ISP "wikilink")，但除非监视者知道打破加密算法的解密算法，否则你的信息仍旧无法被阅读。为了保证完全的匿名，你可能需要使用一些隐去IP的工具，比如[Tor](../Page/Tor.md "wikilink")以提供更完全的隐私服务。

## 参考资料

## 额外连接

  - [Twister官网](http://twister.net.co/)
  - [Twister的社区Wiki](http://wiki.twister.net.co/)
  - [Twister部分用户邮件列表](https://groups.google.com/forum/#!forum/twister-users)
  - [Twister开发者的邮件列表](https://groups.google.com/forum/#!forum/twister-dev)
  - [Building a Better Twitter: A Study of the Twitter Alternatives GNU Social, Quitter, rstat.us, and Twister](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2595247)

[Category:分布式计算](https://zh.wikipedia.org/wiki/Category:分布式计算 "wikilink") [Category:社交網路服務](https://zh.wikipedia.org/wiki/Category:社交網路服務 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:Android软件](https://zh.wikipedia.org/wiki/Category:Android软件 "wikilink") [Category:匿名網路](https://zh.wikipedia.org/wiki/Category:匿名網路 "wikilink") [Category:巴西发明](https://zh.wikipedia.org/wiki/Category:巴西发明 "wikilink")

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