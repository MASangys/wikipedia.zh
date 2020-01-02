> 本文内容由[UUCP](https://zh.wikipedia.org/wiki/UUCP)转换而来。


**UUCP**即**UNIX间复制协议**（**U**nix to **U**nix **C**opy **P**rotocol）的缩写，它同时包括一个电脑[程序以及一个](https://zh.wikipedia.org/wiki/程序 "wikilink")[协议](https://zh.wikipedia.org/wiki/通信协议 "wikilink")，UUCP允许在未连上[Internet的](https://zh.wikipedia.org/wiki/Internet "wikilink")[UNIX](../Page/UNIX.md "wikilink")主机间远程执行命令以及传送[文件](https://zh.wikipedia.org/wiki/电脑文件 "wikilink")，[email或](https://zh.wikipedia.org/wiki/email "wikilink")[netnews](https://zh.wikipedia.org/wiki/netnews "wikilink").UUCP包是由多种程序组成，包括uucp,uuxqt（front ends for remote copy and execution）,uucico（通信程序），uustat，以及uuname.现在已经很少使用[Modem来进行通信了](https://zh.wikipedia.org/wiki/Modem "wikilink")，但是有时这个协议仍然在[TCP/IP上使用](https://zh.wikipedia.org/wiki/互联网协议套件 "wikilink")。

在广泛使用[Internet全球通信之前](https://zh.wikipedia.org/wiki/Internet "wikilink")，电脑间只能组建非常小型的网络连接或是点对点连接。UUCP允许机器间可以进行类似[Fidonet](https://zh.wikipedia.org/wiki/Fidonet "wikilink")（Fidonet在[DOS](../Page/DOS.md "wikilink")系统上非常流行，UUCP完全模仿Fidonet）的[消息交换](https://zh.wikipedia.org/wiki/消息交换 "wikilink")。

**UUCPNET**（UUCP网络）是指通过UUCP连接形成的网络，这只是一个俗称。

UUCP协议也用于在跳（"中继段"）与跳之间转发消息。UUCPNET上中间宿主地址路由被以使用[感叹号](https://zh.wikipedia.org/wiki/感叹号 "wikilink")（或称为"[bang](https://zh.wikipedia.org/wiki/bang "wikilink")"）分隔的形式存为一个列表，这种列表被称为**bang路径**。举例来说，...\!bigsite\!foovax\!barbox\!me这个路径说明有人发信到机器*bigsite*（可能是一个广为人知的地址），这封信通过机器*barbox*上的帐号"me"穿越机器*foovax*到达。

人们有时会使用混合的bang地址，这种地址使用{ }约定（参见）来到达多个不同的大型主机，这是希望某个邮件能够被可靠的传送（例如：...\!{seismo, ut-sally, ihnp4}\!rice\!beta\!gamma\!me）。带有8到10个跳的Bang路径在1981年是少见的。这种路径使得拨号网络上的UUCP连接可能需要一周的传送时间.Bang路径的传送和可靠性需要精心挑选，否则消息将会经常丢失。

[Usenet](../Page/Usenet.md "wikilink")通信最初是运行在UUCPNET上的，并且直到现在bang路径仍然用于Usenet的消息格式的*Path*段信头。但现在它们只是一个信息标记，该标记用于指明路由选择，这个标记可以用来确定循环回路的发生。通常，[E-mail地址格式已经被](https://zh.wikipedia.org/wiki/E-mail "wikilink")[SMTP协议中的](https://zh.wikipedia.org/wiki/SMTP "wikilink")"[@](../Page/@.md "wikilink")符号"取代了。

## 参见

  - [路由选择](https://zh.wikipedia.org/wiki/路由选择 "wikilink")
  - [域名](../Page/域名.md "wikilink")

## 外部链接

  - [UUCP Internals Frequently Asked Questions](http://www.faqs.org/faqs/uucp-internals/)
  - [Taylor UUCP](http://www.airs.com/ian/uucp.html) - [GPL](https://zh.wikipedia.org/wiki/GPL "wikilink") licensed UUCP package
  - [Taylor UUCP Documentation](http://www.airs.com/ian/uucp-doc/uucp.html) - it provides useful info about general UUCP and UUCP protocols.
  - Mark Horton (1986). *RFC 976: UUCP Mail Interchange Format Standard*. [Internet Engineering Task Force](https://zh.wikipedia.org/wiki/Internet_Engineering_Task_Force "wikilink") Requests for Comment.

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:Usenet](https://zh.wikipedia.org/wiki/Category:Usenet "wikilink")