> 本文内容由[Burp suite](https://zh.wikipedia.org/wiki/Burp_suite)转换而来。


Burp 或 Burp Suite 是一个用于测试 Web 应用程序安全性的图形化工具。该工具使用[Java](../Page/Java.md "wikilink")编写，由PortSwigger Web Security开发。 [缩略图](https://zh.wikipedia.org/wiki/File:Burp_Decoder_-_Free_Edition.png "fig:缩略图") 该工具有三个版本。可以免费下载的社区版、专业版和试用后可以购买的企业版。社区版大大减少了功能。它是为Web应用程序安全检查提供全面解决方案而开发的。除了[代理服务器](../Page/代理服务器.md "wikilink")、Scanner 和Intruder等基本功能外，该工具还包含更高级的选项，如Spider、Repeater、Decoder、Comparer、Extender和Sequencer。

Burp suite背后的公司还开发了一个移动应用程序，其中包含与 iOS 8 及更高版本兼容的类似工具。

PortSwigger由Web安全领域的领先专家Dafydd Stuttard于2004年创建。\[1\]

## 工具

  - **HTTP代理** — 它作为一个 Web 代理服务器运行，并且位于浏览器和目标 Web 服务器之间。这允许拦截、检查和修改在两个方向上通过的原始流量。
  - **Scanner** — 一个 Web 应用程序安全扫描器，用于执行 Web 应用程序的自动漏洞扫描。
  - **Intruder** — 此工具可以对 Web 应用程序执行自动攻击。该工具提供了一种可配置的[算法](../Page/算法.md "wikilink")，可以生成恶意 HTTP 请求。Intruder 工具可以测试和检测 [SQL 注入](https://zh.wikipedia.org/wiki/SQL資料隱碼攻擊 "wikilink")、[跨站脚本](../Page/跨網站指令碼.md "wikilink")、参数篡改和易受蛮力攻击的漏洞。
  - **Spider** — 一个自动抓取 Web 应用程序的工具。它可以与手工映射技术一起使用，以加快映射应用程序内容和功能的过程。
  - **Repeater** — 一个可以用来手动测试应用程序的简单工具。它可以用于修改对服务器的请求，重新发送它们并观察结果。
  - **Decoder** — 一种将已编码的数据转换为其规范形式，或将原始数据转换为各种编码和散列形式的工具。它能够利用启发式技术智能识别多种编码格式。
  - **Comparer** — 在任意两个数据项之间执行比较（一个可视化的“差异”）的工具。
  - **Extender** — 允许安全测试人员加载 Burp 扩展，使用安全测试人员自己的或第三方代码（[BAppStore](https://portswigger.net/bappstore/)）扩展 Burp 的功能
  - **Sequencer** — 一种分析数据项样本随机性的工具。它可以用于测试应用程序的会话令牌或其他重要的数据项，如反 CSRF 令牌、密码重置令牌等。

## 另请参阅

  - [渗透测试](https://zh.wikipedia.org/wiki/渗透测试 "wikilink")

  - [Web应用程序安全扫描器](../Page/Web应用程序攻击和检查框架.md "wikilink")

  - [Fiddler](../Page/Fiddler.md "wikilink")（软件）

  - [代理服务器](../Page/代理服务器.md "wikilink")

  -
## 参考文献

<references group="" responsive="">

</references>

## 外部链接

  - [官方网站](http://portswigger.net)
  - [Burp Suite 支持中心](https://support.portswigger.net/)包含大量有关使用 Burp Suite 的文章和社区讨论。
  - [Burp 测试方法](https://support.portswigger.net/customer/en/portal/topics/792273-burp-testing-methodologies/articles)解释了使用 Burp Suite 测试各种 Web 应用程序漏洞的方法。
  - [知识库](https://portswigger.net/kb/issues)包含 Burp Scanner 可以检测到的所有问题的定义。
  - Burp Suite Essentials，作者 Akash Mahajan，[由 PACKT 出版](https://www.packtpub.com/hardware-and-creative/burp-suite-essentials)
  - [Sec Tools](http://sectools.org/tag/web-scanners/)

[Category:網絡分析器](https://zh.wikipedia.org/wiki/Category:網絡分析器 "wikilink") [Category:Java平台軟體](https://zh.wikipedia.org/wiki/Category:Java平台軟體 "wikilink") [Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink")

1.