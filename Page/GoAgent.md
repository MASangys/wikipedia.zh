> 本文内容由[GoAgent](https://zh.wikipedia.org/wiki/GoAgent)转换而来。


[Wikipedia_main_page_with_GoAgent_validation_certificate_in_firefox.png](https://zh.wikipedia.org/wiki/File:Wikipedia_main_page_with_GoAgent_validation_certificate_in_firefox.png "fig:Wikipedia_main_page_with_GoAgent_validation_certificate_in_firefox.png")中打开维基百科主页的截图
可见证书颁发人为GoAgent\]\]

**GoAgent**是使用跨平台语言[Python](../Page/Python.md "wikilink")开发、基于[GPL自由软件协议的代理软件](https://zh.wikipedia.org/wiki/GPL "wikilink")。它利用[Google App Engine](../Page/Google_App_Engine.md "wikilink")（GAE）的服务器充當代理。该软件在[中国大陆](../Page/中国大陆.md "wikilink")被廣泛用于突破大陆官方建立的[防火长城](../Page/防火长城.md "wikilink")（GFW），以瀏覽被封鎖的內容。

GoAgent分为两个部分，一部分是需要部署到GAE上的服务器端软件，另一部分是用户电脑上运行的客户端软件。用户需要将服务器端软件上传到GAE中，然后通过客户端软件与其连接，获取被封锁的内容。为方便用户使用，GoAgent也提供了自动部署工具。

从2015年8月以后，GoAgent已停止维护，并被开发者删除。GoAgent作者 phuslu 于2015年3月开始开发另一个翻墙软件GoProxy，现已删除。

## 特性

由于使用Python开发，GoAgent支持多种操作系統，例如[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[Linux](../Page/Linux.md "wikilink")（包括基于Linux开发的移动操作系统、[路由器](../Page/路由器.md "wikilink")固件，如[Android](../Page/Android.md "wikilink")和[OpenWrt](../Page/OpenWrt.md "wikilink")）\[1\]。

GoAgent的其他特性如下：

  - 支持作為本地[DNS伺服器使用](https://zh.wikipedia.org/wiki/DNS "wikilink")。
  - 支持[代理自動配置（PAC）](../Page/代理自动配置.md "wikilink")。
  - 支持在數據傳送過程中採用[HTTPS加密連線](https://zh.wikipedia.org/wiki/HTTPS "wikilink")。
  - 支持[Google App Engine](../Page/Google_App_Engine.md "wikilink")，[PHP](../Page/PHP.md "wikilink")和[PaaS三種模式](https://zh.wikipedia.org/wiki/PaaS "wikilink")。
  - 自2.1.17版本起支持在通信時加入混淆數據以避免數據封包在傳輸時受到特徵過濾 。
  - 允許用戶選擇使用[Google](../Page/Google.md "wikilink")在[北京](https://zh.wikipedia.org/wiki/北京 "wikilink")、[香港](../Page/香港.md "wikilink")或[台灣數據中心的](https://zh.wikipedia.org/wiki/台灣 "wikilink")[IP地址](../Page/IP地址.md "wikilink")，或者Google的[IPv6](../Page/IPv6.md "wikilink")地址（[Google App Engine位於](../Page/Google_App_Engine.md "wikilink")[美國的數據中心在](https://zh.wikipedia.org/wiki/美國 "wikilink")[中國大陸被](https://zh.wikipedia.org/wiki/中國大陸 "wikilink")[防火长城](../Page/防火长城.md "wikilink")封鎖）。
  - GoAgent自3.0.6版开始可选支持[RC4](../Page/RC4.md "wikilink")加密选项。

## 運行原理

GoAgent的運行原理与其他代理工具基本相同，使用特定的中转服务器完成数据传输。它使用[Google App Engine的服务器作爲中傳](../Page/Google_App_Engine.md "wikilink")，將數據封包後傳送至[Google](../Page/Google.md "wikilink")服务器，再由Google服务器轉發至目的服务器，接收數據時方法也類似\[2\] 。由于服务器端软件基本相同，该中转服务器既可以是用户自行架设的服务器，也可以是由其他人架设的开放服务器。

因为[中國大陸的](https://zh.wikipedia.org/wiki/中國大陸 "wikilink")[防火长城](../Page/防火长城.md "wikilink")难以完全封锁，或出于其他考虑不能完全封锁此Google服務，到目前为止幾經更新的GoAgent仍旧可以正常使用，儘管在2014年5月底開始，Google又一次遭到中國政府防火長城的大規模封鎖，Google首頁至今仍不能從中國大陸正常存取。\[3\]\[4\]

GoAgent可以通过HTTP和[HTTPS两种方式连接Google服务器](https://zh.wikipedia.org/wiki/HTTPS "wikilink")，用户可以根据自己的网络情况酌情选择。

由于[防火长城](../Page/防火长城.md "wikilink")的屏蔽策略调整，[Google](../Page/Google.md "wikilink") IP被悉数封锁，因而该工具的破网效率已大不如前。但是由于Google采用了[任播](../Page/任播.md "wikilink")技术，只要用户能够自行找到可用的Google IP（例如使用GoGoTester），那么GoAgent就可以通过用户找到的IP直接与Google连接，从而提高连接成功率和连接速度\[5\]。

## 争议

### 身份暴露风险

GoAgent依赖Google App Engine服务器，在发送请求、获取网页内容的时候，请求报头中的[User Agent会带有唯一的AppID](../Page/用户代理.md "wikilink")\[6\]，存在暴露身份信息的风险\[7\]。

### 证书风险

  - GoAgent 在启动时会尝试自动往系统的可信根证书中导入一个名为“GoAgent CA”的证书。由于这个证书的私钥是公开的，导致任何人都可以利用这个私钥来伪造任意网站的证书进行 HTTPS 中间人攻击。即使在不开启 GoAgent 时，这种攻击的风险仍然存在。换而言之，一旦这个证书被导入，攻击者可以用此绕过几乎所有网站的 HTTPS 保护。
      - 在GoAgent 3.2.1版本之后这个漏洞得以修复。
  - GoAgent 本身对 TLS 证书的认证存在问题，而且默认时不对证书进行检查，这导致在使用 GoAgent 时存在 HTTPS 中间人攻击的风险。\[8\]

## 注意事项

由於GoAgent所使用的[Google App Engine被认为可以作为开放式代理](../Page/Google_App_Engine.md "wikilink")，因此其使用的[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[加利福尼亞州](https://zh.wikipedia.org/wiki/加利福尼亞州 "wikilink")[山景城](https://zh.wikipedia.org/wiki/山景城_\(加利福尼亞州\) "wikilink")[Google](https://zh.wikipedia.org/wiki/谷歌 "wikilink")[數據中心的出口](https://zh.wikipedia.org/wiki/數據中心 "wikilink")[IP地址段会受到部分網站的封鎖或限制](https://zh.wikipedia.org/wiki/IP位址 "wikilink")（如对[維基百科只能瀏覽而不能編輯](https://zh.wikipedia.org/wiki/維基百科 "wikilink")），以防止恶意攻擊。

## 衍生项目

GoAgent发布以后，民间的开发者又发起了众多的衍生项目，以方便用户使用GoAgent，像是XX-Net和GreatAgent和GoAgent+。

### XX-Net

XX-Net是一个免费的桌面应用程序，是基于GoAgent的一个GUI图形界面程序，使用起来简单方便，减少了GoAgent繁琐的设置步骤，为被审查区域的用户提供快速、可靠和安全的开放互联网访问。它使用谷歌App Engine（GAE）代理服务器通过防火墙。可以自动扫描IP。XX-Net是github上的一个项目。安卓系统则有衍生项目Xndroid。

### GreatAgent

此項目旨在提供公共而開放的服務端供普通用戶使用，有GreatAgent-ga與GreatAgent-wp兩個版本，分別對應GoAgent與WallProxy這兩個常用的代理程式；除此之外，還提供配置好的[Firefox](../Page/Firefox.md "wikilink")，免去了用戶自行配置、調試的麻煩。

目前，GreatAgent已部署830個適用於GoAgent的AppID和1210個適用於WallProxy的AppID，兩者在功能上有所不同。GreatAgent-ga版本僅支援Google的搜尋和[YouTube](../Page/YouTube.md "wikilink")的在線視訊，並且不支援中國大陸國內網站的訪問；而GreatAgent-wp則沒有上述限制，被稱為「電影 AppID」，意指其連線速率較快，但是抗干擾能力不佳。\[9\]

### GoAgent GUI

GoAgent GUI是一个GoAgent图形化版本。

### GoAgent+

Smartladder是一个内置4947个AppID的GoAgent的打包版本集，包括单独的GoAgent打包以及作者提供的带该工具的浏览器便捷版。

### AppID列表

由于GAE有流量限制和应用数量限制，所以有志愿者收集和维护了开放的AppID的列表供大家使用，这样，用户便可以在不花钱的情况下，通过类似[负载均衡](../Page/负载均衡.md "wikilink")的机制绕过流量限制。

### 浏览器

有些民间志愿者将GoAgent配置好，并将其与[Chromium](../Page/Chromium.md "wikilink")等开源的浏览器整合，制作成整合包，从而做到一键启动，例如天行浏览器（Xskywalker）、畅游无限浏览器等。

### 枫叶香蕉

枫叶香蕉是一个用[Delphi](../Page/Delphi.md "wikilink")语言编写的，基于GoAgent、[WallProxy等代理工具的代理客户端](https://zh.wikipedia.org/wiki/WallProxy "wikilink")。

2014年11月4日，北京警方以“涉嫌寻衅滋事”为由抓捕了其主要维护者许东（OnionHacker）。据报道许东被抓捕和其推特发布支持占中言论有关，以及其推特发布的追求自由言论是其身陷囹圄的重要因素。之后，网络著名维权人士“超级低俗屠夫”在其推特发起募款行动，为其筹集律师费用。在民间维权力量积极活动和施压下，许东于2015年1月30日离开北京第一看守所，恢复自由，总共被关押89天.\[10\]。

在许东被捕后，GoAgent 的主要贡献者之一phus.lu 在其[Twitter](../Page/Twitter.md "wikilink")中发表声明，称其“从未在 GoAgent 获得直接或间接的经济利益，也未接受过任何境外和境内组织的捐助；从未提供基于 GoAgent 的公共服务和政治看法”。phus.lu 解释到，在许东被捕后发表声明，是为了“以防万一”\[11\]。

## 停止维护

2015年8月25日，在[Shadowsocks](../Page/Shadowsocks.md "wikilink")作者迫于警方压力删除其项目之后，GoAgent的开发者也删除了该项目。\[12\]

GoAgent项目删除不久，[GitHub](../Page/GitHub.md "wikilink")即遭到了来自中国的[DDoS攻击](https://zh.wikipedia.org/wiki/DDoS "wikilink")。开发者普遍认为此次攻击与中国政府有关。\[13\]2015年8月28日，[电子前哨基金会](../Page/电子前哨基金会.md "wikilink")针对Shadowsocks和GoAgent被删除一事发表评论，对中国政府针对翻墙软件作者的打击表示了强烈的谴责。\[14\]

## 注释

## 參考資料

## 外部链接

  - [GoAgent在GitHub的主页](https://web.archive.org/web/20141013072118/https://goagent.github.io/)（已删除）
  - [GoAgent在GitHub的代码库](https://web.archive.org/web/20160909181826/https://github.com/phuslu/goagent/)（已删除）
  - [goproxy](https://web.archive.org/web/20160724134452/https://github.com/phuslu/goproxy)（已删除）
  - [XXNet在Github上的主页](https://github.com/XX-net/XX-Net)
  - [Xndroid在Github上的主页](http://github.com/XX-net/Xndroid)

[Category:翻墙软件](https://zh.wikipedia.org/wiki/Category:翻墙软件 "wikilink") [Category:代理软件](https://zh.wikipedia.org/wiki/Category:代理软件 "wikilink") [Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink") [Category:软件小作品](https://zh.wikipedia.org/wiki/Category:软件小作品 "wikilink") [Category:代理服务器](https://zh.wikipedia.org/wiki/Category:代理服务器 "wikilink")

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
13.
14. <small>（[中文翻译](https://zh.wikipedia.org/wiki/s:Translation:Speech_that_Enables_Speech:_China_Takes_Aim_at_Its_Coders "wikilink")）</small>