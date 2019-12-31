> 本文内容由[OpenID](https://zh.wikipedia.org/wiki/OpenID)转换而来。


[OpenID_logo.svg](https://zh.wikipedia.org/wiki/File:OpenID_logo.svg "fig:OpenID_logo.svg")

**OpenID**是一个[去中心化的網上](https://zh.wikipedia.org/wiki/去中心化 "wikilink")[身份認證系统](../Page/数字身份.md "wikilink")。对于支持OpenID的网站，用户不需要记住像用户名和密码这样的传统验证标记。取而代之的是，他们只需要预先在一个作为OpenID身份提供者（identity provider, IdP）的网站上注册。OpenID是去中心化的，任何网站都可以使用OpenID来作为用户登录的一种方式，任何网站也都可以作为OpenID身份提供者。OpenID既解决了问题而又不需要依赖于中心性的网站来确认[数字身份](../Page/数字身份.md "wikilink")。

## 历史

OpenID最初由[LiveJournal的](https://zh.wikipedia.org/wiki/LiveJournal "wikilink")[Brad Fitzpatrick开发](https://zh.wikipedia.org/wiki/Brad_Fitzpatrick "wikilink")，后来加入了Light-Weight Identity，Yadis，Sxip DIX protocol和XRI/i-names。未来的OpenID规范正在由OpenID.net开发，都参与其中。

为了推动OpenID的应用，2006年8月，赞助设立了OpenID奖励计划，对前10位满足要求的软件项目各奖励5000美元。

2007年12月5日，OpenID验证规范9.0和属性交换规范9.0发布。

## 使用OpenID

OpenID相关基本术语：

**最终用户（End User）**

  -
    想要向某个网站表明身份的人。

**标识（Identifier）**

  -
    最终用户用以标识其身份的[URL或](https://zh.wikipedia.org/wiki/URL "wikilink")[XRI](https://zh.wikipedia.org/wiki/XRI "wikilink")。

**身份提供者（Identity Provider, IdP）**

  -
    提供OpenID URL或XRI注册和验证服务的服务提供者。

**依赖方（Relying Party, RP）**

  -
    想要对最终用户的标识进行验证的网站。

### 登录

一个想要为其访问者提供OpenID登录网站，比如example.com，需要在页面的某个地方放置一个登录表单。与提示用户输入用户名和密码的传统登录表单不同的是，这种表单只有一个输入框：OpenID标识。网站可以选择在这个输入框旁显示一个小的OpenID图标。这个表单与OpenID客户端库的实现相连接。

假设用户Alice在身份提供者openid-provider.org处注册了一个OpenID标识：alice.openid-provider.org。如果Alice想使用这个标识来登录example.com，她只需要到example.com去将alice.openid-provider.org填入OpenID登录表单。

如果标识是一个URL，依赖方example.com做的第一件事情是将这个URL转换为典型格式：http://alice.openid-provider.org/。在OpenID 1.0中，依赖方接着请求该URL对应的网页，然后通过一个HTML链接tag发现提供者服务器，比如http://openid-provider.org/openid-auth.php。同时也确定是否应该使用授权身份（delegated identity）。从OpenID 2.0开始，依赖方请求的是XRDS文档（也称为Yadis文档），使用内容类型application/xrds+xml。这种类型在URL中可能存在，而在XRI中总是存在。

依赖方可以通过两种模式来与身份提供者通信：

  - checkid_immediate：两个服务器间的所有通信都在后台进行，不提示用户。
  - checkid_setup：用户使用访问依赖方站点的同一个浏览器窗口与身份提供者服务器交互。

第二种模式更加常用。而且，如果操作不能够自动进行的话，checkid_immediate模式会转换为checkid_setup模式。

首先，依赖方与身份提供者建立一个“共享秘密”——一个联系句柄，然后依赖方存储它。如果使用checkid_setup模式，依赖方将用户的网页浏览器重定向到提供者。在这个例子里，Alice的浏览器被重定向到openid-provider.org，这样Alice能够向提供者验证自己。

验证的方法可能不同，但典型地，OpenID提供者要求提供密码（然后可能使用cookies存储用户会话，就像很多基于密码验证的网站的做法一样）。如果Alice当前没有登录到openid-provider.org，她可能被提示输入密码，然后被问到是否信任依赖方页面——如http://example.com/openid-return.php，这个页面被example.com指定为用户验证完成后返回的页面——获取她的身份信息。如果她给出肯定回答，OpenID验证被认为是成功的，浏览器被重定向到被信任的返回页面。如果Alice给出否定回答，浏览器仍然会被重定向，然而，依赖方被告知它的请求被拒绝，所以example.com也依此拒绝Alice的登录。

但是，登录的过程还没有结束，因为在这个阶段，example.com不能够确定收到的信息是否来自于openid-provider.org。如果他们之前建立了“共享秘密”，依赖方就可以用它来验证收到的信息。这样一个依赖方被称为是stateful的，因为它存储了会话间的“共享秘密”。作为对比，stateless的验证方必须再作一次背景请求（check_authentication）来确保数据的确来自openid-provider.org。

Alice的标识被验证之后，她被看作以alice.openid-provider.org登录到example.com。接着，这个站点可以保存这次会话，或者，如果这是她的第一次登录，提示她输入一些专门针对example.com的信息，以完成注册。

OpenID不提供它自己的验证方式，但是如果身份提供者使用强验证，OpenID可被用于安全事务，比如银行和电子商务。

## 推广

OpenID正在被越来越多的大网站采用。[Yahoo\!已经支持OpenID](https://zh.wikipedia.org/wiki/Yahoo! "wikilink")。所有有Yahoo账户的用户可以通过OpenID directed identity方式登录支持OpenID信赖方网站。\[1\]　\[2\]

Google 曾經支援OpenID 2.0，不過自 2015 年 4 月 20 日起，Google 帳戶將不再使用 OpenID，转而使用[OpenID Connect](https://zh.wikipedia.org/wiki/OpenID_Connect "wikilink")。\[3\]

[Orange](../Page/Orange_\(公司\).md "wikilink")、[AOL與](https://zh.wikipedia.org/wiki/AOL "wikilink")[Yahoo\!都已經支援OpenID](https://zh.wikipedia.org/wiki/Yahoo! "wikilink")。AOL提供每個AOL或AIM的使用者一組OpenID Identity，目前還在測試階段，為`openid.aol.com/username`。

目前使用OpenID代替一般帳號密碼的網站包括了 著名的开源社区[SourceForge](../Page/SourceForge.md "wikilink")、[LiveJournal](https://zh.wikipedia.org/wiki/LiveJournal "wikilink")、[Zooomr](https://zh.wikipedia.org/wiki/Zooomr "wikilink")、[Wikitravel](https://zh.wikipedia.org/wiki/Wikitravel "wikilink")、ma.gnolia.com、claimid.com以及[Jyte](https://zh.wikipedia.org/wiki/Jyte "wikilink")。

在openid.net上有一份公開的[伺服器列表](https://web.archive.org/web/20070314003841/http://openid.net/wiki/index.php/OpenIDServers)，可以讓一般人申請OpenID Identity。

## 安全

### 隐蔽重定向漏洞(Covert Redirect)

2014年5月，新加坡南洋理工大学一位名叫王晶（Wang Jing）的物理和数学科学学院博士生\[4\]，发现了[OAuth和](https://zh.wikipedia.org/wiki/OAuth "wikilink")**OpenID**开源登录工具的"[隐蔽重定向漏洞](https://zh.wikipedia.org/wiki/隐蔽重定向漏洞 "wikilink")"\[5\]\[6\]\[7\]。

其实漏洞不是出现在OpenID这个协议本身，这个协议本身是没有问题的，之所以存在问题是因为各个厂商没有严格參照官方文档，只是实现了简版。问题的原因在于OpenID的提供方提供OpenID授权过程中没有对回调的URL进行校验，从而导致可以被赋值为非原定的回调URL\[8\]\[9\]。

## 中文OpenID提供商

  - [www.CloudID.cn](http://www.CloudID.cn/) - 支持动态口令，免费
  - [VIeID.com](https://archive.is/20140322035020/http://vieid.com/)
  - [openid.org.cn](http://openid.org.cn/) - 多国语言，免费 - OpenID格式：http://用户名.openid.org.cn/
  - [87id](http://87id.com/) - 中英文，免费，支持IPv6 - OpenID格式：http://用户名.87id.com/
  - [openid.35.com](https://web.archive.org/web/20081218011854/http://openid.35.com/) - 中英文，免费 - OpenID格式：http://openid.35.com/users/ 用户名/
  - [login.comrite.com](http://login.comrite.com/) - 中英文，免费 - OpenID格式：http://login.comrite.com/ 用户名
  - [myID.tw](http://myid.tw/) - 中文，免費 - OpenID格式：http://用户名.myid.tw/

## 運作方式

## 法律問題

## 参考资料

## 外部链接

  - [OpenID openid.net](http://openid.net/)

  - [OpenID openid.net.cn](http://openid.net.cn/)

  - [OpenID Source](https://web.archive.org/web/20071011182708/http://openidsource.org/)

  - [OpenID Asia Organization](http://openidasia.org/)

  - [OpenID wiki](https://web.archive.org/web/20061109020926/http://openid.net/wiki/index.php/Main_Page)

  - [Directory of OpenID-enabled sites](https://web.archive.org/web/20100103222056/http://openiddirectory.com/)

  - [OpenID Europe Foundation](https://web.archive.org/web/20070313203041/http://www.openideurope.eu/)

[Category:認證方法](https://zh.wikipedia.org/wiki/Category:認證方法 "wikilink") [Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")

1.
2.
3.  <https://support.google.com/accounts/answer/6135882>
4.
5.
6.
7.
8.
9.