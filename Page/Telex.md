是一款用于[突破网络审查](../Page/突破网络审查.md "wikilink")的软件\[1\]\[2\]\[3\]\[4\]\[5\]。用户通过使用Telex客户端软件浏览互联网上被审查的内容。该项目由[美国](../Page/美国.md "wikilink")[密歇根大学](../Page/密歇根大学.md "wikilink")计算机科学与工程系和[加拿大](../Page/加拿大.md "wikilink")[滑铁卢大学Cheriton计算机科学学院赞助](https://zh.wikipedia.org/wiki/滑铁卢大学 "wikilink")。

## 概述

Telex是一種電文匯報計算的突破審查之軟件在於錢銀兩訖瓜藹交收的商業銀行業務系統。

文電報計算的突破網

文匯電

## 终端代理

传统突破网络审查软件（[Tor](../Page/Tor.md "wikilink")、[自由门](../Page/自由门.md "wikilink")）使用的是终端代理模式。在此模式下，身处网络审查国家的用户使用这些软件的客户端连接到运行这些软件的服务端的国外服务器上，以获取在网络审查国家被屏蔽的互联网上的信息。但是由于客户端软件是公开的，所以实施网络审查的国家的政府也可以下载这些软件，运行它们，然后监视它们连接到哪些IP地址上。政府随后把这些IP地址加入黑名单上，从而使得这些突破网络审查的软件失效。当然，负责维护软件的机构可以开通新的IP地址，并且公布包含这些新的IP地址的客户端软件的新的版本。但是这只会导致这些机构与实施网络审查的国家的政府之间的一场“猫和老鼠”的游戏\[6\]\[7\]\[8\]，并不能够从根本上解决问题。

## 终端到中间代理

Telex使用的是终端到中间代理模式。在此模式下，身处网络审查国家的用户首先在自己的电脑上运行Telex所提供的客户端软件。但是此软件里并不包含任何国外IP地址。当用户使用Telex客户端登陆被屏蔽网站的时候，用户首先为Telex客户端指定一个用户喜欢的运行在国外的支持[HTTPS的网站](https://zh.wikipedia.org/wiki/HTTPS "wikilink")，它可以是任何支持HTTPS的网站，比如国外商业公司的网站、[维基百科](../Page/维基百科.md "wikilink")加密版、国外银行的网站、国外大学的网站等。Telex客户端软件使用用户所指定的网站的IP地址构造一个IP数据包，这个数据包看上去似乎像是一个普通的请求连接到用户所指定的国外HTTPS网站的数据包，但是Telex客户端软件却运用[公钥隐写术](../Page/隐写术.md "wikilink")（public-key
steganography）技术\[9\]\[10\]对这个数据包做了一些手脚。然后Telex客户端软件把这个数据包送出。这个数据包由于其目的地IP地址是国外知名商业机构，大学或是银行的IP地址，而并非用于突破网络审查的国外服务器的IP地址，所以其目的地IP地址不可能出现在政府的防火墙的黑名单上。而公钥隐写术的使用又使得政府无法察觉数据包的内情。所以政府的防火墙只能为这个数据包放行\[11\]。而这个数据包一旦通过了政府的防火墙到达了国外自由互联网后，其在被中转到目的地IP地址之前很有可能经过支持Telex的[路由器](../Page/路由器.md "wikilink")（而事实上在Telex被骨干路由器采纳之后，数据包一定会经过支持Telex的路由器）。这时，支持Telex的路由器将会从数据包中读出早前由Telex客户端软件运用隐写术在数据包中埋下的隐藏信息，从而明白此数据包的真正意图。支持Telex的路由器在获取了用户需要的被屏蔽网站的信息以后，会把这些信息加密并且伪装成原先目的地商业机构，大学或是银行回应用户HTTPS连接请求的数据包送回给用户，从而达到中间代理的效果。而实施网络审查的国家的政府试图把国外支持Telex的路由器的IP地址加入黑名单的做法将会是徒劳的，因为经过Telex客户端加工的数据包一旦通过了国家的防火墙，其在以后的自由互联网上被中转的过程中通过哪些路由器并不是实施网络审查的国家所能够控制的。而Telex的作者们也有意愿在Telex获得广泛部署以后，随即在网上公布一部分支持Telex的路由器的IP地址以便学者们研究如何更好的改善Telex。\[12\]

## 技术细节

Telex客户端中包含多个Telex机构使用的[公钥](../Page/公开密钥加密.md "wikilink")（根据Telex作者的初步估算一兆空间可以提供约二万五千把公钥\[13\]）。Telex客户端利用HTTPS连接初期客户端所提供的任意数[ClientHello
nonce做手脚](https://zh.wikipedia.org/wiki/nonce "wikilink")\[14\]。Telex客户端把Telex协议特征用Telex的公匙加密后作为ClientHello
nonce发出，对于没有Telex[私钥的政府的防火墙来说这只是一个任意数](../Page/公开密钥加密.md "wikilink")。而拥有Telex机构的私钥的Telex路由器却能够从这个看似任意的数中还原出Telex客户段的请求，并且从中读出关于原HTTPS连接的若干参数，使得此路由器变成这个HTTPS连接的“[中间人](../Page/中间人攻击.md "wikilink")”（man-in-the-middle），然后此路由器就可以把用户所需要的被屏蔽网站信息注射入（inject
into）用户和表面上被连接的目的地（商业机构，维基百科，大学，银行，等等）之间正在进行（on-going）的HTTPS[会话](../Page/会话_\(计算机科学\).md "wikilink")（session）之中。而政府的防火墙却只能看到用户与国外商业机构，维基百科，大学，银行，等等之间正在进行一个加密的HTTPS会话，从而无从着手封锁。

Telex作者称Telex为一款“以毒攻毒”或“以暴制暴”的反审查软件。它运用了网络审查者惯用的手段，比如[深度包检测](../Page/深度包检测.md "wikilink")（deep-packet
inspection）\[15\]，[中间人攻击](../Page/中间人攻击.md "wikilink")（man-in-the-middle
attack）和国家级行为（state-level response）\[16\]\[17\]来帮助用户突破网络审查。

## 局限

Telex由于利用了公开密钥加密以及互联网的基本结构特征属性在网络层次进行代理，所以极难被封锁。政府应对Telex的唯一方式是禁止所有通往国外的HTTPS连接。但在现今的互联网大环境下，这样做无异于彻底断网，将会给该国的经济带来严重的损失\[18\]。所以不到万不得已的时候政府是不会选择这种做法的。而Telex作者们的基本前提也是实施网络审查的政府会允许其国民使用互联网，而且实施网络审查的政府会允许其国民连接至少一部分处在国外的安全HTTPS网站。\[19\]

其次是Telex私钥被泄露的问题。首先由于拥有Telex私钥的路由器都是国外受到信赖的机构所有，并且定期由Telex机构权威性重新评定是否继续给予Telex私钥\[20\]，所以私钥泄露的情况将会极为罕见。就算私钥被泄，也有很简单的解决方案，就是Telex路由器定期淘汰旧私钥，更换新私钥。\[21\]由于Telex客户端软件包含大量公钥，所以要过许多年才能用尽Telex客户端软件里包含的大量公钥。到时Telex机构只要公布一个新版本的Telex客户端软件，就又可以被使用很多年。所以就算最终在加密钥的问题上用户和政府需要玩猫和老鼠的游戏，这种猫和老鼠的游戏对于用户一方来说玩起来是毫不费力的。

特别有趣的是，由于公开密钥加密的应用，使得实施网络审查的政府无法像Tor那样在国内设置虚假代理站点以捕获和截停用户的代理访问\[22\]。Telex是开源软件，政府可以下载它的服务端并安装在自己的路由器上。但由于政府没有Telex的私钥，所以仍旧无法解密用户用Telex的公钥加密的Telex服务访问请求。所以就算是带有Telex服务访问请求的数据包经过政府的Telex路由器，政府仍旧无法察觉到这些数据包实际上是Telex数据包。只有Telex机构授权的真正的Telex路由器才能解读出这些数据包。\[23\]

还有就是Telex并不提供Tor所提供的网上匿名交流服务。通过使用Telex连接Tor网络可以解决这个问题。\[24\]

Telex对于[IPv6](../Page/IPv6.md "wikilink")的支持将在Telex被广泛应用以后实现。\[25\]

## 目前状况

Telex目前只在一台示范性路由器上运行。已有北京居民成功使用Telex服务观看YouTube视频。\[26\]2013年7月Telex机构已经开始与一家互联网提供商合作进行一次大规模的实验。\[27\]

## 未来

Telex机构希望西方大型的互联网提供商和电信公司会在未来陆续的加入到Telex计划中，把Telex协议部署到它们的路由器中。最终Telex协议的大规模部署以及把骨干路由器升级成支持Telex协议的工作则需要在西方国家政府的支持下才能完成。\[28\]

## 知名度

Telex軟件在著名電腦科技網站[Ars
Technica上有被報導](../Page/Ars_Technica.md "wikilink")。\[29\]並且在第二十屆[USENIX](../Page/USENIX.md "wikilink")安全座谈会上獲得二等獎。\[30\]

## 參考資料

## 参见

  - [HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")
  - [代理服务器](../Page/代理服务器.md "wikilink")
  - [突破網路審查](https://zh.wikipedia.org/wiki/突破網路審查 "wikilink")
  - [中華人民共和國網絡審查](https://zh.wikipedia.org/wiki/中華人民共和國網絡審查 "wikilink")
  - [网络安全](../Page/网络安全.md "wikilink")

## 延伸阅读

  - *Telex: Anticensorship in the Network Infrastructure*, By Eric
    Wustrow, Scott Wolchok, Ian Goldberg and J. Alex Halderman, In Proc.
    20<sup>th</sup> USENIX Security Symposium, August 2011.
    <https://telex.cc/paper.html>

## 外部链接

  - [Telex官方主页](https://telex.cc/)

{{-}}

[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")
[Category:翻墙软件](https://zh.wikipedia.org/wiki/Category:翻墙软件 "wikilink")
[Category:互联网审查](https://zh.wikipedia.org/wiki/Category:互联网审查 "wikilink")
[Category:互聯網隱私軟件](https://zh.wikipedia.org/wiki/Category:互聯網隱私軟件 "wikilink")
[Category:保密通信](https://zh.wikipedia.org/wiki/Category:保密通信 "wikilink")

1.  *Deep packet inspection used to stop censorship in new “Telex”
    scheme*, Ars Technica,
    <http://arstechnica.com/tech-policy/2011/07/researchers-develop-end-to-middle-anti-censorship-tech/>

2.  *Researchers Develop ‘End-to-Middle’ Proxy System to Evade
    Censorship*, threatpost,
    <http://threatpost.com/researchers-develop-end-middle-proxy-system-evade-censorship-071811/75440>

3.  *telex–新型翻墙软件使用教程详解*, BreakGFW翻墙,

4.  *telex--新型翻墙软件使用教程详解*, 美博园,
    <http://allinfa.com/telex-tutorials.html>

5.  *Telex Anti-Censorship System*, Schneier on Security,
    <https://www.schneier.com/blog/archives/2011/07/telex_anti-cens.html>

6.

7.
8.
9.
10. *Telex Anti-Censorship System*, Schneier on Security,
    <https://www.schneier.com/blog/archives/2011/07/telex_anti-cens.html>

11.
12.

13.

14.

15.
16.
17. 由于Telex的大规模部署以及其在骨干路由器上的部署需要西方国家政府配合才能完成。

18. 2013年HTTPS网站[GitHub](../Page/GitHub.md "wikilink")被中国封锁三天后解封，有一个说法就是政府出于经济损失考量才解封

19.
20.

21.

22.

23.

24.

25.

26.
27.
28.
29.
30. *USENIX Security '11 Technical Sessions*, 20th USENIX Security
    Symposium, <https://www.usenix.org/legacy/event/sec11/tech/>