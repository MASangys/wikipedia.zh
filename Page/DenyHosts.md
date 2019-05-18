**DenyHosts**是针对[SSH服务器的一个基于日志的](https://zh.wikipedia.org/wiki/SSH "wikilink")[入侵预防安全工具](../Page/入侵预防系统.md "wikilink")，是用[Python编写的](../Page/Python.md "wikilink")。其通过监测身份验证登录日志中失败的登录尝试，屏蔽这些登录者的IP地址，从而预防对SSH服务器的[暴力破解](https://zh.wikipedia.org/wiki/暴力破解法 "wikilink")。DenyHosts是由Phil
Schwartz开发的，他也是的开发者。

## 原理

DenyHosts通过监测身份验证登录日志的末尾，来获取近期失败的登录尝试信息。DenyHosts记录了有关登录者IP地址的信息，并将失败的登录尝试次数与用户指定的阈值进行比较。如果失败的登录尝试次数太多，DenyHosts假定发生了，并通过将IP地址添加到服务器上的`/etc/hosts.deny`，屏蔽相关IP，防止其进一步的攻击。DenyHosts
2.0及以上的版本支持集中同步，从而可以阻止攻击过多台电脑的惯犯。 从多台计算机，DenyHosts 2.0
及以上支持集中同步，所以重复的罪犯将被阻止。[denyhosts.net](http://stats.denyhosts.net/stats.html)网站从运行了该软件的计算机上收集统计信息。

DenyHosts仅对使用[IPv4的连接有效](../Page/IPv4.md "wikilink")。它在[IPv6下不起作用](../Page/IPv6.md "wikilink")。

DenyHosts可以手动运行，可以作为一个[守护进程](../Page/守护进程.md "wikilink")，也可以作为一个[cron任务](https://zh.wikipedia.org/wiki/cron "wikilink")。

## 漏洞

Daniel B.
Cid撰写了一篇论文，表示DenyHosts以及类似的应用和BlockHosts，容易受到远程日志注入的攻击\[1\]。这个问题在2.6版中被修复\[2\]。

## 参见

  - ，一个类似的程序，防止对SSH以及其他服务的暴力破解攻击

  -
  - [TCP Wrapper](https://zh.wikipedia.org/wiki/TCP_Wrapper "wikilink")

## 参考文献

  - Carla Schroder, *Linux Networking Cookbook*, O'Reilly, 2007,
    [pp. 223–226](http://books.google.com/books?id=P06O3lA0f5YC&pg=PT247&dq=DenyHosts+to+Foil&cd=1#v=onepage&q=DenyHosts%20to%20Foil&f=false),
    ISBN 0-596-10248-8
  - Ken Leyba, [*Protect your server with Deny
    Hosts*](http://fsmsh.com/2569), 2008-01-28,  issue 21
  - Daniel Bachfeld, 24 July 2009, *[Protecting SSH from brute force
    attacks.
    DenyHosts](http://www.h-online.com/security/features/DenyHosts-746344.html)*,


## 外部链接

  - [DenyHosts网站](http://www.denyhosts.net)
  - [Blue Box page on installing
    DenyHost](https://archive.is/20121217124638/https://boxpanel.blueboxgrp.com/public/the_vault/index.php/Installing_DenyHosts_\(Legacy\))
  - [Gentoo
    linux问题报告](http://www.gentoo.org/security/en/glsa/glsa-200710-14.xml)

[Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink")
[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")
[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")
[Category:Linux安全软件](https://zh.wikipedia.org/wiki/Category:Linux安全软件 "wikilink")

1.  Daniel B. Cid, [Attacking Log Analysis
    tools](http://dcid.me/texts/attacking-log-analysis-tools.html#denyhosts-remote-dos)
2.  DenyHosts,
    [Changelog](http://denyhosts.sourceforge.net/changelog.html)