[缩略图](https://zh.wikipedia.org/wiki/File:KRACK-logo-small.png "fig:缩略图")
**KRACK**（取自“Key Reinstallation
Attack”的缩写，中文：**密钥重装攻击**）是一种针对保护[Wi-Fi连接的](../Page/Wi-Fi.md "wikilink")[Wi-Fi
Protected
Access](../Page/WPA.md "wikilink")（WPA）协议的攻击手段，于2017年由\[1\][比利时研究员Mathy](../Page/比利时.md "wikilink")
Vanhoef和[鲁汶大学Frank](https://zh.wikipedia.org/wiki/荷语天主教鲁汶大学 "wikilink")
Piessens发现。\[2\]Vanhoef的研究小组于2017年10月公布了此攻击的有关细节。\[3\]\[4\]\[5\]\[6\]

此漏洞影响所有主要软件平台，包括[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")、[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[Android以及](../Page/Android.md "wikilink")[Linux](../Page/Linux.md "wikilink")。被Linux、Android和[OpenBSD广泛使用的开源实现](../Page/OpenBSD.md "wikilink")尤易受到影响，其可以被操纵安装全零的[加密密钥](https://zh.wikipedia.org/wiki/密钥 "wikilink")，从而在[中间人攻击中有效消除WPA](../Page/中间人攻击.md "wikilink")2的防护能力。\[7\]\[8\]

## 细节

此攻击针对WPA2协议中建立一个[Nonce](https://zh.wikipedia.org/wiki/Nonce "wikilink")（一种共享密钥）的四次握手。WPA2的标准预期有偶尔发生的Wi-Fi断开连接，并允许使用同样的值重连第三次握手，以做到快速重连和连续性。因为标准不要求在此种重连时使用不同密钥，所以可能出现重放攻击。攻击者还可以反复重发另一设备的第三次握手来重复操纵或重置WPA2的加密密钥。每次重置都会使用相同的值来加密数据，因此可以看到和匹配有相同数据的块，识别出被加密密钥链的数据块。随着反复的重置暴露越来越多的密钥链，最终整个密钥链将被获知，攻击者将可读取目标在此连接上的所有流量。WPA2通常用于移动设备至固定接入点或家庭路由器的连接，尽管某些流量本身可能被[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")/[TLS等协议加密](https://zh.wikipedia.org/wiki/TLS "wikilink")，但风险仍十分严重。\[9\]

根据介绍\[10\]：

> US-CERT已经意识到WPA2安全协议中四次握手的数个密钥管理漏洞。利用这些漏洞所能造成的影响包括解密、[重放攻击](https://zh.wikipedia.org/wiki/重放攻击 "wikilink")、TCP[会话劫持](https://zh.wikipedia.org/wiki/会话劫持 "wikilink")、等等。此弱点存在于协议本身，遵循标准完成的大部分或所有协议实现都可能受到影响。CERT/CC和研究员Leuven于2017年10月16日公开披露了漏洞细节。

介绍该漏洞的文档已提供在线下载\[11\]，并将于11月1日在[ACM计算机与通信安全会议上正式提交](../Page/计算机协会.md "wikilink")。

US-CERT正在追踪此漏洞，名列VU\#228519。\[12\]下列[CVE标识符与此KRACK漏洞相关](https://zh.wikipedia.org/wiki/通用漏洞披露 "wikilink")：、、、、、、{{
CVE|2017-13084}}、、、。

用户可以更新Wi-Fi客户端（如[操作系统](../Page/操作系统.md "wikilink")）和Wi-Fi接入点设备[固件来抵御攻击](https://zh.wikipedia.org/wiki/固件 "wikilink")。\[13\]\[14\]但是，许多较旧的设备可能很晚乃至永远不会得到修复更新。\[15\]\[16\]

## 参见

  -
## 参考资料

## 外部链接

  - <https://www.krackattacks.com/>

[Category:2017年建立](https://zh.wikipedia.org/wiki/Category:2017年建立 "wikilink")
[Category:保全漏洞](https://zh.wikipedia.org/wiki/Category:保全漏洞 "wikilink")
[Category:Wi-Fi](https://zh.wikipedia.org/wiki/Category:Wi-Fi "wikilink")

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
11.
12.
13. <https://github.com/kristate/krackinfo>
14. [WiFi is broken – here's the companies that have already fixed
    it](https://char.gd/blog/2017/wifi-has-been-broken-heres-the-companies-that-have-already-fixed-it)
15. <https://www.tomsguide.com/us/wifi-krack-attack-what-to-do,news-25990.html>
16. <https://www.bleepingcomputer.com/news/security/new-krack-attack-breaks-wpa2-wifi-protocol/>