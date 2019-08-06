**Cookie**（复数形態Cookies），又稱為「小甜餅」。類型為「**小型文字檔案**」\[1\]，指某些[网站为了辨别用户身份而储存在用户本地终端](https://zh.wikipedia.org/wiki/网站 "wikilink")（Client Side）上的数据（通常经过[加密](https://zh.wikipedia.org/wiki/加密 "wikilink")）。由[网景公司的前雇员](https://zh.wikipedia.org/wiki/网景公司 "wikilink")[盧·蒙特利](../Page/盧·蒙特利.md "wikilink")在1993年3月發明\[2\]。最初定義於RFC 2109。目前使用最广泛的 Cookie标准却不是RFC中定义的任何一个，而是在网景公司制定的标准上进行扩展后的产物。

## 分类

Cookie总是保存在客户端中，按在客户端中的存储位置，可分为内存Cookie和硬盘Cookie。

内存Cookie由[浏览器维护](https://zh.wikipedia.org/wiki/浏览器 "wikilink")，保存在[内存中](https://zh.wikipedia.org/wiki/内存 "wikilink")，浏览器关闭后就消失了，其存在时间是短暂的。硬盘Cookie保存在[硬盘](../Page/硬盘.md "wikilink")裡，有一个过期时间，除非用户手工清理或到了过期时间，硬盘Cookie不会被删除，其存在时间是长期的。所以，按存在时间，可分为非持久Cookie和持久Cookie。

## 用途

因为[HTTP协议是无状态的](https://zh.wikipedia.org/wiki/HTTP "wikilink")，即[服务器](../Page/服务器.md "wikilink")不知道用户上一次做了什么，这严重阻碍了[交互式Web应用程序的实现](https://zh.wikipedia.org/wiki/交互式Web应用程序 "wikilink")。在典型的网上购物场景中，用户浏览了几个页面，买了一盒饼干和两瓶饮料。最后结帐时，由于HTTP的无状态性，不通过额外的手段，服务器并不知道用户到底买了什么，所以Cookie就是用来绕开HTTP的无状态性的“额外手段”之一。服务器可以设置或读取Cookies中包含信息，借此维护用户跟服务器[会话中的状态](../Page/会话_\(计算机科学\).md "wikilink")。

在刚才的购物场景中，当用户选购了第一项商品，服务器在向用户发送网页的同时，还发送了一段Cookie，记录着那项商品的信息。当用户访问另一个页面，浏览器会把Cookie发送给服务器，于是服务器知道他之前选购了什么。用户继续选购饮料，服务器就在原来那段Cookie里追加新的商品信息。结帐时，服务器读取发送来的Cookie就行了。

Cookie另一个典型的应用是当登录一个网站时，网站往往会请求用户输入用户名和密码，并且用户可以勾选“下次自动登录”。如果勾选了，那么下次访问同一网站时，用户会发现没输入用户名和密码就已经登录了。这正是因为前一次登录时，服务器发送了包含登录凭据（用户名加密码的某种[加密形式](https://zh.wikipedia.org/wiki/加密 "wikilink")）的Cookie到用户的硬盘上。第二次登录时，如果该Cookie尚未到期，浏览器会发送该Cookie，服务器验证凭据，于是不必输入用户名和密码就让用户登录了。

## Cookie的缺陷

1.  Cookie会被附加在每个HTTP请求中，所以无形中增加了流量。
2.  由于在HTTP请求中的Cookie是明文传递的，所以安全性成问题，除非用[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")。
3.  Cookie的大小限制在4KB左右，对于复杂的存储需求来说是不够用的。\[3\]

## 使用Cookies

用户可以改变浏览器的设置，以使用Cookies。同时一些浏览器自带或安装开发者工具包允许用户查看、修改或删除特定网站的Cookies信息。

## 识别功能

如果在一台计算机中安装多个浏览器，每个浏览器都会以独立的空间存放Cookie。因为Cookie中不但可以确认用户信息，还能包含计算机和浏览器的信息，所以一个用户使用不同的浏览器登录或者用不同的计算机登录，都会得到不同的Cookie信息，另一方面，对于在同一台计算机上使用同一浏览器的多用户群，Cookie不会区分他们的身份，除非他们使用不同的用户名登录。

## 反对Cookies者

一些人反对Cookies在网络中的应用，他们的理由如下：

### 识别不精确

  - 如果在同一台机器上使用多个浏览器，每个浏览器在不同的存储位置保存 Cookie，因此，Cookie 并不能定位到一个具体的人，而是用户,计算机和浏览器的组合。

### 不准确的状态

如果用户在取得了一个 Cookie 之后,点击了浏览器的"回退"按键,则浏览器的状态和取得Cookie 的状态就出现了不一致.例如, 如果网站基于 Cookie 技术实现了购物车的应用,当用户添加了物品后点击了"回退"按键, 购物车的物品状态可能并没有发生变化.

### 隐私、安全和广告

Cookies在某种程度上说已经严重危及用户的[隐私和](https://zh.wikipedia.org/wiki/隐私 "wikilink")[安全](../Page/安全.md "wikilink")。其中的一种方法是：一些公司的高层人员为了某种目的（譬如市场调研）而访问了从未去过的网站（通过搜索引擎查到的），而这些网站包含了一种叫做[网页臭虫的图片](https://zh.wikipedia.org/wiki/网页臭虫 "wikilink")，该图片透明，且只有一个像素大小（以便隐藏），它们的作用是将所有访问过此页面的计算机写入Cookie。而后，[电子商务](../Page/电子商务.md "wikilink")网站将读取这些Cookie信息，并寻找写入这些Cookie的网站，随即发送包含了针对这个网站的相关产品广告的[垃圾邮件给这些高级人员](https://zh.wikipedia.org/wiki/垃圾邮件 "wikilink")。

## 偷窃Cookies和脚本攻击

雖然Cookies没有中電腦病毒那么危险，但它仍包含了一些敏感訊息：用户名、電腦名、使用的浏览器和曾经访问的网站。用户不希望这些内容洩漏出去，尤其是当其中还包含有私人信息的时候。

这并非危言耸听，[跨網站指令碼](../Page/跨網站指令碼.md "wikilink")（**Cross site scripting**）可以达到此目的。在受到跨網站指令碼攻击时，Cookie盗贼和Cookie毒药将窃取内容。一旦Cookie落入攻击者手中，它将会重现其价值。

  - Cookie盗贼：搜集用户Cookie并发给攻击者的黑客，攻击者将利用Cookie訊息通过合法手段进入用户帐户。
  - Cookie投毒：一般认为，Cookie在储存和传回服务器期间没有被修改过，而攻击者会在Cookie送回服务器之前对其进行修改，达到自己的目的。例如，在一个购物网站的Cookie中包含了顾客应付的款项，攻击者将该值改小，达到少付款的目的。

## Cookies的替代品

鉴于Cookie的局限和反对者的声音，有如下一些替代方法：

  - [Brownie方案](http://sourceforge.net/projects/brownie)，是一项[开放源代码](../Page/开放源代码.md "wikilink")工程，由[SourceForge](../Page/SourceForge.md "wikilink")发起。Brownie曾被用以共享在不同域中的接入，而Cookies则被构想成单一域中的接入。这项方案已经停止开发。
  - [P3P](https://zh.wikipedia.org/wiki/P3P "wikilink")，用以让用户获得更多控制个人隐私权利的[协议](../Page/网络传输协议.md "wikilink")。在浏览网站时，它类似于Cookie。
  - 在与服务器传输数据时，通过在地址后面添加唯一[查询串](https://zh.wikipedia.org/wiki/查询串 "wikilink")，让服务器识别是否合法用户，也可以避免使用Cookie。

## 引用

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")

1.  香港中學會考08年CIT卷一中文版
2.
3.