**HTTP严格传输安全**（，縮寫：**HSTS**）是一套由[互联网工程任务组发布的](../Page/互联网工程任务组.md "wikilink")[互联网安全策略机制](../Page/互联网.md "wikilink")。[网站可以选择使用HSTS策略](https://zh.wikipedia.org/wiki/网站 "wikilink")，来让[浏览器强制使用](https://zh.wikipedia.org/wiki/浏览器 "wikilink")[HTTPS与网站进行通信](../Page/超文本传输安全协议.md "wikilink")，以减少[会话劫持风险](https://zh.wikipedia.org/wiki/会话劫持 "wikilink")。\[1\]\[2\]

其[徵求修正意見書文件编号是](https://zh.wikipedia.org/wiki/徵求修正意見書 "wikilink")-{}-RFC
6797，发布于2012年11月。

## 内容

HSTS的作用是强制客户端（如浏览器）使用HTTPS与服务器建立连接。服务器开启HSTS的方法是，当客户端通过HTTPS发出请求时，在服务器返回的[超文本传输协议](../Page/超文本传输协议.md "wikilink")（HTTP）响应头中包含`Strict-Transport-Security`字段。非加密传输时设置的HSTS字段无效。\[3\]

比如，https://example.com/ 的响应头含有`Strict-Transport-Security:
max-age=31536000; includeSubDomains`。这意味着两点：

1.  在接下来的31536000秒（即一年）中，浏览器向example.com或其子[域名发送HTTP请求时](../Page/域名.md "wikilink")，必须采用HTTPS来发起连接。比如，用户点击[超链接或在地址栏输入](https://zh.wikipedia.org/wiki/超链接 "wikilink")
    http://www.example.com/ ，浏览器应当自动将 http 转写成 https，然后直接向
    https://www.example.com/ 发送请求。
2.  在接下来的一年中，如果 example.com
    服务器发送的TLS[证书无效](https://zh.wikipedia.org/wiki/数字证书 "wikilink")，用户不能忽略浏览器警告继续访问网站。

## 历史

HSTS的雏形来自于2008年4月在[北京召开的第十七届](https://zh.wikipedia.org/wiki/北京 "wikilink")上柯林·杰克逊（）和亚当·巴斯（）的题为“ForceHTTPS:
Protecting High-Security Web Sites from Network
Attacks”的演讲。他们的提议是使用“ForceHTTPS”
[Cookie来强制浏览器使用HTTPS](../Page/Cookie.md "wikilink")\[4\]。

2009年9月18日，他们和杰夫·霍奇斯（）发布了最初的草案，题目为"Strict Transport
Security"\[5\]，这个草案基于ForceHTTPS，并有所修改\[6\]。

2010年6月17日，这三位作者经由[互联网工程任务组发布了首版](../Page/互联网工程任务组.md "wikilink")，"HTTP
Strict Transport Security"\[7\]。

2012年10月2日，批准了将第14版HSTS草案发布为RFC的请求\[8\]。

2012年11月19日，互联网工程任务组发布RFC 6797\[9\]。

## 作用

HSTS可以用来抵御SSL剥离攻击。SSL剥离攻击是[中间人攻击的一种](../Page/中间人攻击.md "wikilink")，由于2009年发明。他在当年的黑帽大会上发表的题为“New
Tricks For Defeating SSL In
Practice”的演讲中将这种攻击方式公开。SSL剥离的实施方法是阻止浏览器与服务器建立HTTPS连接。它的前提是用户很少直接在地址栏输入<https://>，用户总是通过点击链接或[3xx重定向](https://zh.wikipedia.org/wiki/3xx重定向 "wikilink")，从HTTP页面进入HTTPS页面。所以攻击者可以在用户访问HTTP页面时替换所有<https://>开头的链接为<http://>，达到阻止HTTPS的目的。\[10\]

HSTS可以很大程度上解决SSL剥离攻击，因为只要浏览器曾经与服务器建立过一次安全连接，之后浏览器会强制使用HTTPS，即使链接被换成了HTTP\[11\]\[12\]。

另外，如果中间人使用自己的自签名证书来进行攻击，浏览器会给出警告，但是许多用户会忽略警告。HSTS解决了这一问题，一旦服务器发送了HSTS字段，将不再允许用户忽略警告。

## 不足

用户首次访问某网站是不受HSTS保护的。这是因为首次访问时，浏览器还未收到HSTS，所以仍有可能通过明文HTTP来访问。解决这个不足目前有两种方案，一是浏览器预置HSTS域名列表，[Google
Chrome](../Page/Google_Chrome.md "wikilink")、[Firefox](../Page/Firefox.md "wikilink")、[Internet
Explorer和](../Page/Internet_Explorer.md "wikilink")[Microsoft
Edge实现了这一方案](../Page/Microsoft_Edge.md "wikilink")\[13\]\[14\]。二是将HSTS信息加入到[域名系统记录中](../Page/域名系统.md "wikilink")。但这需要保证DNS的安全性，也就是需要部署[域名系统安全扩展](../Page/域名系统安全扩展.md "wikilink")。截至2016年这一方案没有大规模部署。

由于HSTS会在一定时间后失效（有效期由max-age指定），所以浏览器是否强制HSTS策略取决于当前系统时间。部分操作系统经常通过[网络时间协议更新系统时间](https://zh.wikipedia.org/wiki/网络时间协议 "wikilink")，如[Ubuntu每次连接网络时](../Page/Ubuntu.md "wikilink")、[OS
X
Lion每隔](https://zh.wikipedia.org/wiki/OS_X_Lion "wikilink")9分钟会自动连接时间服务器。攻击者可以通过伪造NTP信息，设置错误时间来绕过HSTS。解决方法是认证NTP信息，或者禁止NTP大幅度增减时间。比如[Windows
8每](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")7天更新一次时间，并且要求每次NTP设置的时间与当前时间不得超过15小时。\[15\]

## 浏览器支持

  - [Chromium和](../Page/Chromium.md "wikilink")[Google
    Chrome从](../Page/Google_Chrome.md "wikilink")4.0.211.0版本开始支持HSTS
  - [Firefox
    4及以上版本](https://zh.wikipedia.org/wiki/Firefox_4 "wikilink")\[16\]
  - [Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")
    12及以上版本\[17\]
  - [Safari从](../Page/Safari.md "wikilink")[OS X
    Mavericks起](../Page/OS_X_Mavericks.md "wikilink")
  - [Internet
    Explorer和](../Page/Internet_Explorer.md "wikilink")[Microsoft
    Edge从](../Page/Microsoft_Edge.md "wikilink")[Windows
    10开始支持](../Page/Windows_10.md "wikilink")\[18\]

## 网站支持

根据SSL
Pulse的调查，截至2015年2月，仅有2.7%的网站开启了HSTS\[19\]。目前支持HSTS的主流网站有：[支付宝](../Page/支付宝.md "wikilink")\[20\]、[PayPal](../Page/PayPal.md "wikilink")\[21\]、[Twitter](../Page/Twitter.md "wikilink")\[22\]、[维基百科邮件列表](../Page/维基百科.md "wikilink")\[23\]等。

## 参见

  - [超文本传输安全协议](../Page/超文本传输安全协议.md "wikilink")
  - [传输层安全协议](https://zh.wikipedia.org/wiki/传输层安全协议 "wikilink")
  - [中间人攻击](../Page/中间人攻击.md "wikilink")
  - [HTTP公钥固定](../Page/HTTP公钥固定.md "wikilink")

## 参考文献

## 外部链接

  - [RFC 6797, HTTP Strict Transport Security
    (HSTS)](https://tools.ietf.org/html/rfc6797)

  - [IETF WebSec Working
    Group](https://tools.ietf.org/wg/websec/charters)（[互联网工程任务组中的WebSec工作小组主页](../Page/互联网工程任务组.md "wikilink")）

  - [Security Now 262: Strict Transport
    Security](http://www.twit.tv/sn262)（HSTS视频讲解）

  - [Open Web Application Security Project (OWASP): HSTS
    description](https://www.owasp.org/index.php/HTTP_Strict_Transport_Security)（OWASP上的HSTS条目）

  - [Online browser HSTS and Public Key Pinning
    test](https://projects.dm.id.lv/Public-Key-Pins_test)（浏览器支持测试）

  - [HSTS Preload
    Submission](https://hstspreload.appspot.com/)（提交网站至主流浏览器的HSTS预置列表）

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink")
[Category:电脑安全](https://zh.wikipedia.org/wiki/Category:电脑安全 "wikilink")
[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink")

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

14.

15.

16.

17.

18.

19.

20.

21.
22.
23.