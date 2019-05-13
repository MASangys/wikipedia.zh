**Nmap**（**网络映射器**）是一款用于[网络发现和](../Page/网络发现.md "wikilink")[安全审计的](../Page/安全审计.md "wikilink")[网络安全工具](../Page/网络安全.md "wikilink")，它是[自由软件](../Page/自由软件.md "wikilink")。软件名字Nmap是Network
Mapper的简称。通常情况下，Nmap用于：
\* 列举网络主机清单

  - 管理服务升级调度
  - 监控主机
  - 服务运行状况

Nmap可以检测目标主机是否在线、端口开放情况、侦测运行的服务类型及版本信息、侦测操作系统与设备类型等信息。
它是网络管理员必用的软件之一，用以评估网络系统安全。

Nmap
是不少[黑客及](../Page/黑客.md "wikilink")[脚本小子爱用的工具](../Page/脚本小子.md "wikilink")
。[系统管理员可以利用Nmap來探測工作環境中未經批准使用的服务器](../Page/系统管理员.md "wikilink")，黑客通常会利用Nmap來搜集目标电脑的網絡设定，从而计划攻击的方法。

Nmap通常用在信息搜集阶段，用于搜集目标机主机的基本状态信息。扫描结果可以作为[漏洞扫描](../Page/漏洞扫描.md "wikilink")、[漏洞利用和](../Page/漏洞利用.md "wikilink")[权限提升阶段的输入](../Page/权限提升.md "wikilink")。例如，业界流行的漏洞扫描工具[Nessus与漏洞利用工具](../Page/Nessus.md "wikilink")[Metasploit都支持导入Nmap的](../Page/Metasploit.md "wikilink")[XML格式结果](../Page/XML.md "wikilink")，而Metasploit框架内也集成了Nmap工具（支持Metasploit直接扫描）。

Nmap不仅可以用于扫描单个主机，也可以适用于扫描大规模的[计算机网络](../Page/计算机网络.md "wikilink")（例如，扫描英特网上数万台计算机，从中找出感兴趣的主机和服务）。

## Nmap 核心功能

### 主机发现

用于发现目标主机是否处于活动状态。
Nmap 提供了多种检测机制，可以更有效地辨识主机。例如可用来列举目标网络中哪些主机已经开启，类似于Ping命令的功能。

### 端口扫描

用于扫描主机上的端口状态。
Nmap可以将端口识别为开放（Open）、关闭（Closed）、过滤（Filtered）、未过滤（Unfiltered）、开放或过滤（Open|Filtered）、关闭或过滤（Closed|Filtered）。默认情况下，Nmap会扫描1660个常用的端口\[1\]，可以覆盖大多数基本应用情况。

### 版本侦测

用于识别端口上运行的应用程序与程序版本。
Nmap目前可以识别数千种应用的签名（Signatures）,检测数百种应用协议。而对于不识别的应用，Nmap默认会将应用的指纹(Fingerprint)打印出来，如果用户确知该应用程序，那么用户可以将信息提交到社区，为社区做贡献。

### 操作系统侦测

用于识别目标主机的操作系统类型、版本编号及设备类型。
Nmap目前提供1500个操作系统或设备的指纹数据库\[2\]，可以识别通用PC系统、路由器、交换机等设备类型。

### 防火墙/IDS规避和哄骗

Nmap提供多种机制来规避防火墙、IDS的的屏蔽和检查，便于秘密地探查目标主机的状况。
基本的规避方式包括：分片、IP诱骗、IP伪装、MAC地址伪装。

### NSE脚本引擎

NSE是Nmap最强大最灵活的特性之一，可以用于增强主机发现、端口扫描、版本侦测和操作系统侦测等功能，还可以用来扩展高级的功能如web扫描、漏洞发现和漏洞利用等。Nmap使用Lua语言来作为NSE脚本语言，目前的Nmap脚本库已经支持350多个脚本。

## Nmap基本命令和典型用法

  - Nmap 基本语法

`nmap [ `<扫描类型>` ...] [ `<选项>` ] { `<扫描目标说明>` }`

  - 全面进攻性扫描（包括各种主机发现、端口扫描、版本扫描、OS扫描及默认脚本扫描）:

`nmap -A -v target_ip`

  - Ping扫描:

`nmap -sn -v target_ip`

  - 快速端口扫描:

`nmap -F -v target_ip`

  - 版本扫描:

`nmap -sV -v target_ip `

  - 操作系统扫描:

`nmap -O -v target_ip`

## 其他

Nmap 常被跟評估系統漏洞軟件Nessus混為一談。Nmap 以隱祕的手法，避開闯入检测系统的監視，並儘可能不影響目標系統的日常操作。

Nmap
在电影《[黑客帝国](../Page/黑客帝国.md "wikilink")》中，連同的[32位元迴圈冗餘校驗漏洞](../Page/32位元迴圈冗餘校驗.md "wikilink")，被崔妮蒂用以入侵發電站的能源管理系統。

## 参见

  - [Netcat](../Page/Netcat.md "wikilink")
  - [Nessus](../Page/Nessus.md "wikilink")
  - [Metasploit](../Page/Metasploit.md "wikilink")
  - [Wireshark](../Page/Wireshark.md "wikilink")
  - [BackTrack](../Page/BackTrack.md "wikilink")

## 外部链接

  - [Nmap官网](http://www.nmap.org/)
  - [nmap-online.com在线检查工具](http://nmap-online.com)
  - [Nmap扫描方法](http://blog.csdn.net/aspirationflow/article/details/7694274)
  - [如何利用nmap收集操作系统的资料](http://www.insecure.org/nmap/nmap-fingerprinting-article.html)
  - [Nessus 系統弱点扫描器](http://www.nessus.org)
  - [BBC News: Matrix mixes life and
    hacking](http://news.bbc.co.uk/1/hi/technology/3039329.stm)
  - [*一種避開Nmap操作系統特徵辨識法的手段*](https://web.archive.org/web/20040903195457/http://voodoo.somoslopeor.com/papers/nmap.html)

## 参考资料

[Category:网路管理软件](https://zh.wikipedia.org/wiki/Category:网路管理软件 "wikilink")
[Category:端口掃描器](https://zh.wikipedia.org/wiki/Category:端口掃描器 "wikilink")
[Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:Lua可脚本软件](https://zh.wikipedia.org/wiki/Category:Lua可脚本软件 "wikilink")
[Category:网络分析器](https://zh.wikipedia.org/wiki/Category:网络分析器 "wikilink")
[Category:C++軟體](https://zh.wikipedia.org/wiki/Category:C++軟體 "wikilink")
[Category:Python軟體](https://zh.wikipedia.org/wiki/Category:Python軟體 "wikilink")
[Category:Linux安全软件](https://zh.wikipedia.org/wiki/Category:Linux安全软件 "wikilink")

1.
2.