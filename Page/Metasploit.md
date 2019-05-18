**Metasploit项目**是一个旨在提供[安全漏洞信息计算机安全项目](https://zh.wikipedia.org/wiki/计算机安全隐患 "wikilink")，可以协助安全工程师进行[渗透测试](https://zh.wikipedia.org/wiki/渗透测试 "wikilink")（penetration
testing）及[入侵检测系统签名开发](../Page/入侵检测系统.md "wikilink")。

Metasploit项目最为知名的子项目是[开源的Metasploit框架](../Page/开放源代码.md "wikilink")，一套针对远程主机进行开发和执行“[exploit代码](https://zh.wikipedia.org/wiki/exploit "wikilink")”的工具。其他重要的子项目包括Opcode数据库、shellcode档案、安全研究等内容。

Metasploit项目知名的功能还包括反取证与规避工具，其中的某些工具已经内置在Metasploit Framework里面。

## Metasploit Framework

使用Metasploit框架的基本步骤包括：

1.  选择并配置一个攻击代码(exploit,
    利用[漏洞来进入目标系统的代码](https://zh.wikipedia.org/wiki/漏洞 "wikilink")）；
2.  （可选）检查目标系统是否会被此代码影响；
3.  选择并配置一个[有效负载](https://zh.wikipedia.org/wiki/有效负载 "wikilink")
    (payload,
    在成功进入后在目标系统上执行的代码；例如，一个远端[壳层或一个](https://zh.wikipedia.org/wiki/壳层 "wikilink")[VNC服务器](../Page/VNC.md "wikilink")）；
4.  选择编码方式，使[入侵预防系统](../Page/入侵预防系统.md "wikilink")，忽略已被编码的有效负载；
5.  执行攻击代码。

这种允许任何攻击代码和任何有效负载进行随意组合的模块化的结构是Metasploit框架的主要优势。使用者可以通过不同的搭配在有限的漏洞下导入不同的负载。Metasploit框架可以通过添加模块实现扩展，允许使用者，攻击代码作者和有效负载的作者专注于写出所需的功能，而无需处理其他问题。

选择攻击代码和有效负载需要目标系统的部分信息，比如其操作系统的版本和安装的网络服务。这些信息可被类似于[Nmap的](../Page/Nmap.md "wikilink")[端口扫描和](https://zh.wikipedia.org/wiki/端口扫描 "wikilink")[操作系统分析工具收集到](https://zh.wikipedia.org/wiki/操作系统分析 "wikilink")。类似于[Nexpose或](https://zh.wikipedia.org/wiki/Nexpose "wikilink")[Nessus的](https://zh.wikipedia.org/wiki/Nessus "wikilink")[弱点扫描工具可以探测到目标系统的弱点](https://zh.wikipedia.org/wiki/弱点扫描 "wikilink")。Metasploit可以导入弱点扫描数据并通过对比已发现的弱点和拥有的攻击代码模块来进行准确的攻击。\[1\]

## Metasploit 用户界面

Metasploit有多个可用的用户界面，最流行的界面由Rapid7和Strategic Cyber LLC.维护。\[2\]

### Metasploit Framework Edition

由Rapid7发布的Metasploit 的免费版本。 包括命令行界面，拥有第三方引入,
手动攻击和手动[暴力破解等功能](https://zh.wikipedia.org/wiki/暴力破解法 "wikilink")。\[3\]

### Metasploit Community Edition

在2011年10月，Rapid7 发布了免费的，使用网页界面的Metasploit Community
Edition（社区版）。基于收费版本，但并不包括所有付费版的功能。它的功能包括：网络发现，模块浏览，和手动攻击。

### Metasploit Express

在2010年4月, Rapid7 发布了开放核心的付费版本Metasploit Express。它使用网页界面，拥有Metasploit
Community的所有功能和智能攻击，密码审计，基准渗透测试报告等免费版所没有的功能。

### Metasploit Pro

在2011年10月， Rapid7 添加了开放核心的付费版本Metasploit Pro。它使用网页界面，拥有Metasploit
Express的所有功能和闭环弱点验证，模拟[钓鱼式攻击等](../Page/钓鱼式攻击.md "wikilink")[社会工程学功能](../Page/社会工程学.md "wikilink")，[网络应用程序测试](../Page/网络应用程序.md "wikilink")，攻击自动化，和其他Express版所没有的功能。

### Armitage

Armitage是一个由Strategic Cyber LLC.开发的，拥有图形用户界面的Metasploit管理工具。
允许使用者通过一个实例共享对话和数据，这个免费且开源的网络安全工具在帮助红队(red
team)合作上有显著贡献。\[4\]

### Cobalt Strike

Cobalt Strike是一个由Strategic Cyber
LLC.开发的，拥有图形用户界面的Metasploit管理工具。它是Armitage的扩展，并包含报告生成工具等Armitage所没有的功能。\[5\]

## 参考文献

## 扩展阅读

  - *[Powerful payloads: The evolution of exploit
    frameworks](http://searchsecurity.techtarget.com/originalContent/0,289142,sid14_gci1135581,00.html)*,
    searchsecurity.com, 2005-10-20
  - Chapter 12: Writing Exploits III from *Sockets, Shellcode, Porting &
    Coding: Reverse Engineering Exploits and Tool Coding for Security
    Professionals* by James C. Foster (ISBN 1-59749-005-9). Written by
    Vincent Liu, chapter 12 explains how to use Metasploit to develop a
    buffer overflow exploit from scratch.
  - *[HackMiami Pwn-Off Hack-A-Thon review of Metasploit
    Express](https://web.archive.org/web/20120706035800/http://www.n00bz.net/metasploit-express)*

## 外部链接

  -
  - [官方社区](https://community.rapid7.com)

  - [Metasploit Unleashed
    （教程）](https://www.offensive-security.com/metasploit-unleashed)

[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:保全漏洞](https://zh.wikipedia.org/wiki/Category:保全漏洞 "wikilink")
[Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink")
[Category:自由軟體組織](https://zh.wikipedia.org/wiki/Category:自由軟體組織 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:注入漏洞](https://zh.wikipedia.org/wiki/Category:注入漏洞 "wikilink")
[Category:软件测试](https://zh.wikipedia.org/wiki/Category:软件测试 "wikilink")
[Category:Windows软件](https://zh.wikipedia.org/wiki/Category:Windows软件 "wikilink")

1.  [Metasploit installer download
    page](http://www.metasploit.com/download)

2.

3.
4.

5.