> 本文内容由[Google Talk](https://zh.wikipedia.org/wiki/Google_Talk)转换而来。


[Talk_(Google).svg](https://zh.wikipedia.org/wiki/File:Talk_\(Google\).svg "fig:Talk_(Google).svg") [Google_Talk_Screenshot.png](https://zh.wikipedia.org/wiki/File:Google_Talk_Screenshot.png "fig:Google_Talk_Screenshot.png") **-{Google Talk}-**是[Google公司于](https://zh.wikipedia.org/wiki/Google公司 "wikilink")2005年8月24日推出的一款[IP电话及](https://zh.wikipedia.org/wiki/IP电话 "wikilink")[即时通讯的服務](https://zh.wikipedia.org/wiki/即时通讯 "wikilink")。与其他即时通讯服務不同的是，-{Google Talk}-在使用开放的[XMPP协议](https://zh.wikipedia.org/wiki/XMPP "wikilink")（原名[Jabber](https://zh.wikipedia.org/wiki/Jabber "wikilink")），使用-{Google Talk}-服务不一定要通过官方[客戶端](https://zh.wikipedia.org/wiki/客戶端 "wikilink")。[VoIP](../Page/VoIP.md "wikilink")使用XMPP扩展的[Jingle协议](../Page/Jingle_\(协议\).md "wikilink")。

\-{Google Talk}-用户端仅支援[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（[2000](../Page/Windows_2000.md "wikilink")、[XP](../Page/Windows_XP.md "wikilink")、[Server 2003](../Page/Windows_Server_2003.md "wikilink")、[7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")）和[Google Chrome OS](https://zh.wikipedia.org/wiki/Google_Chrome_OS "wikilink")；在[Android](../Page/Android.md "wikilink")上被系统原生支持；对于其它的移动电话，支持[BlackBerry](https://zh.wikipedia.org/wiki/BlackBerry "wikilink")、[iPhone](https://zh.wikipedia.org/wiki/iPhone "wikilink")。[XMPP协议的客户端软件列表列举了很多非Google提供的兼容软件](https://zh.wikipedia.org/wiki/XMPP协议的客户端软件列表 "wikilink")。

\-{Google Talk}-在其开发者页面\[1\] 以**开放的通讯**为大标题，深入客户端、服务、平台三方面的选择。

2016年6月26日，Google Talk正式关闭，并被[Google Hangouts取代](https://zh.wikipedia.org/wiki/Google_Hangouts "wikilink")\[2\]。

## 历史

Google即时通讯服务的点子最早由Apple-X于2004年8月23日提出，它以[Jabber为基础](https://zh.wikipedia.org/wiki/Jabber "wikilink")。\[3\]一年后，[纽约时报](../Page/纽约时报.md "wikilink")\[4\]与[洛杉矶时报均于](https://zh.wikipedia.org/wiki/洛杉矶时报 "wikilink")2005年8月23日报导Google即将发布即时通讯软件的传言，一个运作的Jabber服务器的[二级域名](https://zh.wikipedia.org/wiki/二级域名 "wikilink")[`talk.google.com`](https://talk.google.com)被发现。\[5\]不久，在Google正式开通此服务前，两个登入此服务器的端口均被[博客作者发现](https://zh.wikipedia.org/wiki/博客 "wikilink")。8月23日晚间，许多使用*5222*端口的用户均不能够登入，但*5223*仍可，在[UTC时间](https://zh.wikipedia.org/wiki/UTC "wikilink")04:12:52，这些用户收到了来自`gmail.com`的广播信息，“损坏的链接已修复，谢谢你们成为我们的第一批用户！”。而发现*5222*端口可以继续使用。2006年2月7日，登入[Gmail](../Page/Gmail.md "wikilink")的用户可在其页面上使用-{Google Talk}-上的即时通讯功能，此功能将更提升-{Google Talk}-的重要性。

## 技术

Google声明-{Google Talk}-服务具有通透性，[Jabber提供了即时通訊和](https://zh.wikipedia.org/wiki/Jabber "wikilink")“当前状态”信息功能。官方用戶端並未實作其中的离线信息功能，但透過其他用户端（如Adium）可以使用。2006年1月17日，Google支持服务器互相通讯，可与任何支援dialback协议的Jabber服务器「結盟」（federate，即伺服器互通之意）。\[6\]

2005年12月15日，Google发表了**libjingle**，一个实践[Jingle的](https://zh.wikipedia.org/wiki/Jingle "wikilink")[C++](../Page/C++.md "wikilink")[库](https://zh.wikipedia.org/wiki/库 "wikilink")。Jingle是一個“扩展了[IETF的的扩展信息](https://zh.wikipedia.org/wiki/IETF "wikilink")（Extensible Messaging and Presence Protocol, **XMPP**）以及[IP电话](https://zh.wikipedia.org/wiki/IP电话 "wikilink")、[视频交流](../Page/视频会议.md "wikilink")，以及其他[点对点的多媒体协议](https://zh.wikipedia.org/wiki/点对点 "wikilink")”。\[7\] Libjingle是Google用作为点对点传输的[库](https://zh.wikipedia.org/wiki/库 "wikilink")，以大量的[STL與](https://zh.wikipedia.org/wiki/STL "wikilink")[template的技術實作](../Page/模板_\(C++\).md "wikilink")，甚至在sigslot namespace內有[基于原则设计的程式設計風格](https://zh.wikipedia.org/wiki/基于原则设计 "wikilink")，并可用于[BSD许可证](../Page/BSD许可证.md "wikilink")。\[8\]

\-{Google Talk}-并未对Jabber加密，反倒使用了[HTTPS以认证](https://zh.wikipedia.org/wiki/HTTPS "wikilink")。比起Google本身，其他的用户端在送出密码前都会遵循[TLS](https://zh.wikipedia.org/wiki/TLS "wikilink")，并在整个通讯状态下加密。Google要求所有的信息（文字、语音）都得在未来的版本中加密。\[9\]

现在对话记录可以自动地被记录到Gmail，可让使用者简单的查询他们的对话历史，且不会记录在电脑上。然而也可以使用关闭记录（off the record）模式以让Gmail不记录，但使用其他用户端的有它自己的设置，如[Gaim](https://zh.wikipedia.org/wiki/Gaim "wikilink")。\[10\]

支持离线信息，语音留言，和在线用户间的文件传输。

## 批评，检讨与漏洞

早期的评论家指责-{Google Talk}-客户端不支持超过20行的文本信息，也不能保存离线信息，与Google收集所有资讯的理念相互矛盾。但不久之后-{Google Talk}-就开始将可以超过2GB的对谈记录存入[Gmail](../Page/Gmail.md "wikilink")帐户中。

网站也指出此产品并未像其他Google产品（如[Gmail](../Page/Gmail.md "wikilink")与[Google地图](../Page/Google地图.md "wikilink")）产生“哇”效果。\[11\]此外，他们也指出-{Google Talk}-只支援PC对PC的语音交谈，并不可延伸至传统的电话网络（[PSTN](https://zh.wikipedia.org/wiki/PSTN "wikilink")）。尽管一些批评者称此产品“平淡无奇”；也有一些人预言-{Google Talk}-将有其他新鲜（印象深刻）的特色。

在Windows的-{Google Talk}-用户端上也有不少的[程序错误](../Page/程序错误.md "wikilink")，如[任务栏](../Page/任务栏.md "wikilink")上图示的电子邮件通知并不可靠，在有对话通知时会出现干扰等问题。当视窗开启了一段时间，按下[Esc键时该视窗并无法产生任何作用](https://zh.wikipedia.org/wiki/Esc "wikilink")。其他的问题，联络人视窗若长期未最小化，可能就会并在Windows重新启动后自动地“最大化”（至原来的相同尺寸），并持续这个动作。在使用[中文输入法](../Page/中文输入法.md "wikilink")如“[微软拼音输入法](../Page/微软拼音输入法.md "wikilink")”的时候，当文字输入多到碰触栏位右边时，所拼得音会被自动截开而产生不是所想的文字。这一点在-{Google Talk}-的新版本中已经修改完善。

在2006年1月-{Google Talk}-加入服务器对服务器传输功能，在此之前许多人批评-{Google Talk}-無法与庞大的Jabber公開网络作传输。

\-{Google Talk}-也没有多人交谈的功能，用户-{只}-能在同一个时间与另一人对话。然而，一个自定义的[Python](../Page/Python.md "wikilink")程序可让使用者使用多人交谈功能。\[12\]使用者可藉由其他Jabber服务器（如`conference.ursine.ca`）加入多人交谈。目前-{Google Talk}-採用[JEP-0166](https://zh.wikipedia.org/wiki/JEP-0166 "wikilink")\[13\]與[JEP-0167](https://zh.wikipedia.org/wiki/JEP-0167 "wikilink")\[14\]作為([P2P](https://zh.wikipedia.org/wiki/P2P "wikilink"))連線的標準。

许多批评者，在指责它的缺点时，都异口同声地赞美它拥有其他即时通讯软件所没有的简洁界面。此简洁界面与Google的计划一样，从它的首页至其他的服务都是。

此外，有人发现，包含简体中文，以及其他多国语言的-{Google Talk}- 1.0.0.105版本，其通过网络传输的聊天内容是未经加密的。而只提供英文的1.0.0.104版本，是使用[TLS加密的](https://zh.wikipedia.org/wiki/TLS "wikilink")。\[15\]

2013年，Google Talk被[Google+ Hangouts取代](https://zh.wikipedia.org/wiki/Google+_Hangouts "wikilink")。

## 未来计划

Google在[Gmail](../Page/Gmail.md "wikilink")上有着遵循用戶建議的良好评价，但与Gmail不同的是，Google并不会泄露他们正在开发的功能，虽然[FAQ表示他们正在研发加入](https://zh.wikipedia.org/wiki/FAQ "wikilink")[富文本功能](https://zh.wikipedia.org/wiki/富文本 "wikilink")。

在2005年12月20日Google买下5%的[AOL股份后](https://zh.wikipedia.org/wiki/AOL "wikilink")，-{Google Talk}-使用者被指将可以与AOL的主导产品[AIM做联系](https://zh.wikipedia.org/wiki/AIM "wikilink")。\[16\] -{Google Talk}-使用者将直接与AIM用户联系，**不**需要註冊AIM的用户名称。但截至2010年7月，Google仅仅在美国英语版本的Gmail中整合了Open AIM，即用户需要同时登录自己的Gtalk和AIM帐号\[17\]，而XMPP网关并未如预料般开启。

## 参考文献

## 外部链接

  - [-{Google Talk}-](http://www.google.com/talk/)
      - [-{Google Talk}-](http://www.google.com/talk/intl/zh-CN/)
      - [-{Google Talk}-](http://www.google.com/talk/intl/zh-TW/)
  - [官方网志：-{Google Talk}-about](http://googletalk.blogspot.com/)
  - [Customize Talk](http://customizetalk.com/)
  - [Libjingle源代码与API](http://code.google.com/apis/talk/index.html)
  - [GTalk Profile(搜索其他世界上的人)](http://www.gtalkprofile.com/)
  - [Google开放与公众Jabber服务器对谈](https://web.archive.org/web/20060313070227/http://www.instantmessagingplanet.com/public/article.php/3578061)

[Category:已終止開發的Google軟體](https://zh.wikipedia.org/wiki/Category:已終止開發的Google軟體 "wikilink") [Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink") [Category:Jabber客户端](https://zh.wikipedia.org/wiki/Category:Jabber客户端 "wikilink") [Category:Windows即時通訊客戶端](https://zh.wikipedia.org/wiki/Category:Windows即時通訊客戶端 "wikilink") [Category:Android软件](https://zh.wikipedia.org/wiki/Category:Android软件 "wikilink")

1.  <http://www.google.com/talk/developer.html>
2.
3.
4.
5.
6.  <http://googletalk.blogspot.com/2006/01/xmpp-federation.html>
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
17. <https://mail.google.com/support/bin/answer.py?answer=61024>