**Whonix**\[1\] 是一个基于 [Debian](../Page/Debian.md "wikilink") 的以安全为核心\[2\]的 Linux 发行版\[3\]。其主要目标在于保护线上的隐私、安全与匿名。这个操作系统包含两个虚拟机，一个工作站与一个基于 Tor 的网关机，这两个虚拟机均基于 Debian。系统会迫使所有网络连接都经过 Tor。\[4\]目前最新的版本是 15.0，基于 Debian 10 所构建。

## 设计理念

工作站用于运行用户所要使用的应用程序。工作站只有对内通过虚拟 LAN 连接到网关 VM 的网络通道，这样就能强制工作站内的所有网络连接走 Tor 通道。网关 VM 负责运行 Tor，网关 VM 有两个网络连接，一个通过 host 上的 NAT 与互联网上的 Tor 中继相连，一个仅在主机内部与工作站相连。

Whonix 支持的虚拟化方案有 [Qubes OS](../Page/Qubes_OS.md "wikilink")、[VirtualBox](../Page/VirtualBox.md "wikilink") 与 [Linux KVM](https://zh.wikipedia.org/wiki/Linux_KVM "wikilink")。

与 [Tails](../Page/Tails_\(操作系统\).md "wikilink") 不同的是，Whonix 在重启后不会擦除所有数据。

## 参考文献

## 外部链接

  - [项目主页](https://www.whonix.org/)

[Category:2012年软件](https://zh.wikipedia.org/wiki/Category:2012年软件 "wikilink") [Category:Debian](https://zh.wikipedia.org/wiki/Category:Debian "wikilink") [Category:网络隐私](https://zh.wikipedia.org/wiki/Category:网络隐私 "wikilink")

1.
2.
3.
4.