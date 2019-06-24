**Outline VPN** 是一个基于 [Shadowsocks](../Page/Shadowsocks.md "wikilink")
服务器的[免费开源工具网络代理工具](../Page/自由及开放源代码软件.md "wikilink")，可运行在多个[云服务提供商上](../Page/雲端運算.md "wikilink")。\[1\]\[2\]
此工具为[多个系统开发了适配](../Page/跨平臺.md "wikilink")[应用](https://zh.wikipedia.org/wiki/客户端 "wikilink")
。 Outline
是由[Jigsaw开发](../Page/Jigsaw.md "wikilink")，一个由[谷歌创建的](../Page/Google.md "wikilink")[技术孵化器](../Page/企业孵化器.md "wikilink")。[<sup>\[3\]</sup>](../Page/Jigsaw.md "wikilink")

Outline
服务器支持[自托管](https://zh.wikipedia.org/wiki/自托管 "wikilink")，同时也支持包括[DigitalOcean](../Page/DigitalOcean.md "wikilink")、[Google
Cloud
Platform以及](https://zh.wikipedia.org/wiki/Google_Cloud_Platform "wikilink")[Amazon
EC2在内的多家云服务供应商](../Page/Amazon_EC2.md "wikilink")。\[3\]
安装方法为在[命令行窗口运行相应命令](../Page/命令行界面.md "wikilink")（若是DigitalOcean，则在它的
[图形用户界面中进行](../Page/图形用户界面.md "wikilink")）。

## 组件

Outline 由三个主要部分组成：\[4\]

  - Outline 服务器用作一个用户试图访问的站点的[代理](../Page/代理服务器.md "wikilink") 和中转点。 它基于
    [Shadowsocks](../Page/Shadowsocks.md "wikilink")，并通过 Outline
    管理程序提供一个[REST
    API管理服务](https://zh.wikipedia.org/wiki/REST_API "wikilink")。
  - Outline
    管理程序是一个[图形化程序](../Page/图形用户界面.md "wikilink")，用于[部署和管理](https://zh.wikipedia.org/wiki/软件部署 "wikilink")
    Outline 服务器。 它支持
    [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[MacOS](../Page/MacOS.md "wikilink")
    和 [Linux](../Page/Linux.md "wikilink") 。
  - Outline App 通过 Outline 服务器连接到[互联网](../Page/互联网.md "wikilink")。它支持
    [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[MacOS](../Page/MacOS.md "wikilink")、[Chrome
    OS](../Page/Chrome_OS.md "wikilink")、[安卓以及](../Page/Android.md "wikilink")
    [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")。

## 安全和隐私

Outline
使用[Shadowsocks协议在客户机和服务器之间进行通信](../Page/Shadowsocks.md "wikilink")。流量使用
IETF ChaCha20
流密码（[256位](https://zh.wikipedia.org/wiki/256位 "wikilink")[密钥](../Page/密钥.md "wikilink")）加密\[5\]，并使用
IETF Poly1305 身份验证器进行身份验证。\[6\]

Outline 是免费和开源的，根据 Apache License 2.0 获得许可，并由 radical Open Security
审计，同时也声称不会记录用户的 web 流量\[7\]\[8\]。Outline服务器支持自动升级。

Outline
不是一个匿名工具，它不提供与[Tor相同程度的匿名保护](../Page/Tor.md "wikilink")。Tor通过三个[跃点来路由流量](https://zh.wikipedia.org/wiki/跃点 "wikilink")，而不是仅仅一个，还可以防止[浏览器指纹等攻击模式](https://zh.wikipedia.org/wiki/浏览器指纹 "wikilink")。

## 社会认可

2018年3月，[PCMag的马克思](https://zh.wikipedia.org/wiki/PCMag "wikilink")·艾迪表示，Outline
VPN 的预览版“使用起来非常简单”，“消除了与 VPN 公司相关的隐私担忧”。然而，艾迪批评该软件没有加密 Windows
上的所有流量，并警告用户，“与大型 VPN 公司相比，个人使用可能缺乏一些匿名性”。\[9\]

## 更多相关内容

  - 比较虚拟私人网络服务
  - [互联网隐私](../Page/网络隐私.md "wikilink")

## 参考资料

<references group="" />

[Category:Alphabet](https://zh.wikipedia.org/wiki/Category:Alphabet "wikilink")
[Category:自由代理服务器](https://zh.wikipedia.org/wiki/Category:自由代理服务器 "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink")
[Category:虛擬私人網路](https://zh.wikipedia.org/wiki/Category:虛擬私人網路 "wikilink")
[Category:维基数据上没有官方网站](https://zh.wikipedia.org/wiki/Category:维基数据上没有官方网站 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.
5.
    ZDNet|last=Tung|first=Liam|work=ZDNet|access-date=2018-07-02|language=en}}
6.
7.
8.
9.