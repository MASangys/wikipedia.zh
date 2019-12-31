> 本文内容由[Sender ID](https://zh.wikipedia.org/wiki/Sender_ID)转换而来。


**Sender ID**是曾经加入[发件人策略框架](../Page/发件人策略框架.md "wikilink")（SPF）和Caller ID的前 [IETF工作组的一项反](../Page/互联网工程任务组.md "wikilink")协议。 Sender ID主要定义在实验性RFC 4406，而其余部分在RFC 4405、RFC 4407和RFC 4408中定义。

## 操作原理

Sender ID脱胎于[SPF](../Page/发件人策略框架.md "wikilink")，只增加了部分内容。下面讨论两者的差异：

Sender ID试图改进SPF中的主要缺陷：SPF不验证表示发送方的电子邮件头地址。此类地址通常是显示给用户并作为回复地址，因而，此类报头地址可以与SPF尝试验证的地址不同。也就是说，SPF仅验证了邮件来自（MAIL FROM）地址，也称邮件发送人。

然而，还有许多类似的电子邮件报头字段包含发送方的信息。因此，在RFC 4407中定义的Sender ID定义了一个“声称负责地址”（Purported Responsible Address，缩写PRA）以及一组启发式规则，用于从电子邮件的许多典型报头中建立此地址。

在语法上，Sender ID与SPF相差无几，除了`v=spf1`被替换为下列之一：

  - `spf2.0/mfrom` - 表示同SPF那样验证邮件发送人。
  - `spf2.0/mfrom,pra` 或 `spf2.0/pra,mfrom` - 表示验证邮件发送人和声称负责地址。
  - `spf2.0/pra` - 表示只验证声称负责地址。

Sender ID的另一项语法差异是，它提供SPF不支持的定位（positional）修饰符特性。但实际上，到目前为止，还没有任何Sender ID的实现指定定位修饰符。

在实践中，*pra*（声称负责地址）方案通常只在电子邮件合法时提供保护，而在[垃圾邮件或](https://zh.wikipedia.org/wiki/垃圾邮件 "wikilink")[网络钓鱼的情况下不提供真正的保护](https://zh.wikipedia.org/wiki/网络钓鱼 "wikilink")。最合法的电子邮件*pra*是熟悉的From:头字段，或者邮件列表中的Sender:头字段。但在网络钓鱼或垃圾邮件中，*pra*可能基于通常不向用户显示的Resent-\*头字段。要成为有效的反钓鱼工具，需要修改MUA（“邮件代理人”或“邮件客户端”）以显示用于Sender ID的pra，或者用于SPF的Return-Path:。

*pra*尝试抵制的是网络钓鱼问题，而SPF或mfrom尝试解决的是垃圾邮件退回和其他自动回复到伪造的回复地址（Return-Path）的问题。两个不同的问题要使用不同的解决方案。

## 标准化问题

*pra*的缺点是，转发器和邮件列表只能通过修改邮件头来支持它，例如插入一个`Sender`或`Resent-Sender`。而后者违背RFC 2822并可能与RFC 822不兼容。

在使用SPF时，邮件列表能继续运作。希望支持SPF的转发器只需要修改SMTP MAIL FROM（邮件来自）和RCPT TO（回复至），而不是邮件。这不是新的概念，原始的RFC 821 SMTP转发器始终将其主机名添加到MAIL FROM中的反向路径。

最大的问题是，核心Sender ID规范推荐解释`v=spf1`策略为如同`spf2.0/mfrom,pra`而不是`spf2.0/mfrom`。这在2003年以来发布的所有SPF草案中从未考虑，并且对于未知的大量`v=spf1`策略、同时有pra和mfrom且不同的许多情况，对pra的评估可能导致错误的结果。此问题是向（IAB）呼吁的基础。为响应另一个先前的呼吁，已注明Sender ID不能在[IETF标准轨道上继续前进](../Page/互联网工程任务组.md "wikilink")，必须先解决与RFC 2822的不兼容。

## 知识产权

Sender ID提案也是一个涉及[知识产权](../Page/知识产权.md "wikilink")[授權的话题](../Page/授權_\(法律\).md "wikilink")：[微软](../Page/微软.md "wikilink")持有Sender ID关键部分的[专利](../Page/专利.md "wikilink")\[1\]\[2\]，并以不兼容[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")的条款许可这些专利，这在一些[自由软件](../Page/自由软件.md "wikilink")中被认为是有问题的。2006年10月23日，微软将这些专利放置到下，这与自由和开源许可证兼容，但与GPL许可证3.x版本不兼容。

## 参见

  - [:Category:电子邮件身份验证](https://zh.wikipedia.org/wiki/Category:电子邮件身份验证 "wikilink")

  - \- 概述

  - （2004年IETF WG）

  - [DKIM](https://zh.wikipedia.org/wiki/DKIM "wikilink")

  -
## 参考资料

## 外部链接

  - [*ASF Position Regarding Sender ID*](http://www.apache.org/foundation/docs/sender-id-position.html)，[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")的声明
  - [IAB appeal](http://www.iab.org/appeals/2006-02-08-mehnle-appeal.html) about Sender ID's reuse of `v=spf1` for PRA from the [SPF project](https://web.archive.org/web/20060702025443/http://new.openspf.org/) (2006).
  - [*Debian project unable to deploy Sender ID*](http://www.debian.org/News/2004/20040904)，[Debian](../Page/Debian.md "wikilink")项目的声明
  - [*IETF Decides on SPF / Sender-ID issue*](https://zh.wikipedia.org/wiki/slashdot:04/09/13/1317238 "wikilink")，[slashdot上的讨论](https://zh.wikipedia.org/wiki/slashdot "wikilink")
  - [*Is Sender ID Dead in the Water? - No MARID Working Group Consensus*](http://www.groklaw.net/article.php?story=20040908180737547)，groklaw上的讨论
  - [MARID Co-Chairs Clarify Consensus Statement](http://www.moongroup.com/index.php?option=content&task=view&id=26&Itemid=2)
  - [*MARID to close*](https://web.archive.org/web/20040929020641/http://www.imc.org/ietf-mxcomp/mail-archive/msg05054.html)邮件列表话题。
  - [Sender ID: A Tale of Open Standards and Corporate Greed?](http://www.circleid.com/posts/sender_id_a_tale_of_open_standards_and_corporate_greed_part_i/)
  - ["SPF: SPF vs Sender ID"](https://web.archive.org/web/20071102120517/http://www.openspf.org/SPF_vs_Sender_ID)

[Category:电子邮件身份验证](https://zh.wikipedia.org/wiki/Category:电子邮件身份验证 "wikilink") [Category:垃圾邮件过滤](https://zh.wikipedia.org/wiki/Category:垃圾邮件过滤 "wikilink") [Category:微软](https://zh.wikipedia.org/wiki/Category:微软 "wikilink")

1.
2.  <http://www.internetnews.com/dev-news/article.php/3409971/Exposed+Sender+ID+Patents+Up+Debate.htm>