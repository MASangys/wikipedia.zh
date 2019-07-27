**摘要访问认证**是一种协议规定的[Web服务器用来同](https://zh.wikipedia.org/wiki/Web服务器 "wikilink")[网页浏览器](../Page/网页浏览器.md "wikilink")进行认证信息协商的方法。它在[密码发出前](https://zh.wikipedia.org/wiki/密码 "wikilink")，先对其应用[哈希函数](https://zh.wikipedia.org/wiki/哈希函数 "wikilink")，这相对于[HTTP基本认证](../Page/HTTP基本认证.md "wikilink")发送[明文而言](https://zh.wikipedia.org/wiki/明文 "wikilink")，更安全。

从技术上讲，摘要认证是使用[随机数](../Page/随机数.md "wikilink")来阻止进行[密码分析](../Page/密码分析.md "wikilink")的[MD5](../Page/MD5.md "wikilink")[加密哈希函数应用](https://zh.wikipedia.org/wiki/加密哈希函数 "wikilink")。它使用[HTTP协议](https://zh.wikipedia.org/wiki/HTTP "wikilink")。

## 概述

摘要访问认证最初由 RFC 2069 (*HTTP的一个扩展：摘要访问认证*)中被定义。RFC 2069
大致定义了一个传统的由服务器生成[随机数](../Page/随机数.md "wikilink")来维护安全性的摘要认证架构。认证响应由下列组成（HA1、HA2、A1、及A2为字符串变量的名称）：

\[\mathrm{HA1} = \mathrm{MD5}\Big(\mathrm{A1}\Big) = \mathrm{MD5}\Big( \mathrm{username} : \mathrm{realm} : \mathrm{password} \Big)\]

\[\mathrm{HA2} = \mathrm{MD5}\Big(\mathrm{A2}\Big) = \mathrm{MD5}\Big( \mathrm{method} : \mathrm{digestURI} \Big)\]

\[\mathrm{response} = \mathrm{MD5}\Big( \mathrm{HA1} : \mathrm{nonce} : \mathrm{HA2} \Big)\]

RFC 2069 随后被 RFC 2617 (*HTTP 认证：基本及摘要访问认证*)取代。RFC 2617
引入了一系列安全增强的选项；“保护质量”(qop)、随机数计数器由客户端增加、以及客户生成的随机数。这些增强为了防止如[选择明文攻击的](https://zh.wikipedia.org/wiki/选择明文攻击 "wikilink")[密码分析](../Page/密码分析.md "wikilink")。

\[\mathrm{HA1} = \mathrm{MD5}\Big(\mathrm{A1}\Big) = \mathrm{MD5}\Big( \mathrm{username} : \mathrm{realm} : \mathrm{password} \Big)\]

如果 qop 值为“auth”或未指定，那么 HA2 为

\[\mathrm{HA2} = \mathrm{MD5}\Big(\mathrm{A2}\Big) = \mathrm{MD5}\Big( \mathrm{method} : \mathrm{digestURI} \Big)\]

如果 qop 值为“auth-int”，那么 HA2 为

\[\mathrm{HA2} = \mathrm{MD5}\Big(\mathrm{A2}\Big) = \mathrm{MD5}\Big( \mathrm{method} : \mathrm{digestURI} : \mathrm {MD5}(entityBody)\Big)\]

如果 qop 值为“auth”或“auth-int”，那么如下计算 response：

\[\mathrm{response} = \mathrm{MD5}\Big( \mathrm{HA1} : \mathrm{nonce} : \mathrm{nonceCount} : \mathrm{clientNonce} : \mathrm{qop} : \mathrm{HA2} \Big)\]

如果 qop 未指定，那么如下计算 response：

\[\mathrm{response} = \mathrm{MD5}\Big( \mathrm{HA1} : \mathrm{nonce} : \mathrm{HA2} \Big)\]

上面所述的这种当 qop 未指定的情况，也就是遵循简化的 RFC 2069 标准。

## MD5 安全问题对摘要认证的影响

在 HTTP 摘要认证中使用 MD5
加密是为了达成"不可逆的"，也就是说，当输出已知的时候，确定原始的输入应该是相当困难的。如果密码本身太过简单，也许可以通过尝试所有可能的输入来找到对应的输出（[穷举攻击](../Page/蛮力攻击.md "wikilink")），甚至可以通过字典或者适当的查找表加快查找速度。

HTTP 构架由[Phillip
Hallam-Baker于](https://zh.wikipedia.org/wiki/Phillip_Hallam-Baker "wikilink")1993年在[CERN设计成的](https://zh.wikipedia.org/wiki/CERN "wikilink")，并且没有吸收后续认证系统的改进，如基于密钥的雜湊訊息驗證碼[HMAC的发展](https://zh.wikipedia.org/wiki/HMAC "wikilink")。虽然所使用的[密码结构是基于](../Page/密码学.md "wikilink")[MD5](../Page/MD5.md "wikilink")雜湊函數的，在2004年，通常认为[冲突攻击不会影响明文](https://zh.wikipedia.org/wiki/冲突攻击 "wikilink")（如密码）未被得知的应用。\[1\]
但是，在2006年的声明 (Kim, Biryukov2, Preneel, Hong, ["On the Security of HMAC
and NMAC Based on HAVAL MD4 MD5 SHA-0 and
SHA-1"](http://eprint.iacr.org/2006/187.pdf)) 导致了一些包括关于 MD5
应用的疑虑。不过，至今为止，MD5 冲突攻击没有被视为对摘要认证的威胁，并且 RFC
2617
允许服务器实现一些机制来检测冲突以及[重放攻击](https://zh.wikipedia.org/wiki/重放攻击 "wikilink")。

## HTTP摘要认证的考虑

### 优势

HTTP摘要认证目的在于比传统摘要认证构架更安全；例如，“明显强于（如）[CRAM-MD5](https://zh.wikipedia.org/wiki/CRAM-MD5 "wikilink")……”。
（RFC 2617）

一些HTTP摘要认证的安全性增强如下：

  - 密码并非直接在摘要中使用，而是 HA1 =
    MD5(username:realm:password)。这就允许一些实现（如，[JBoss](https://zh.wikipedia.org/wiki/JBoss "wikilink")
    [DIGESTAuth](http://wiki.jboss.org/wiki/Wiki.jsp?page=DIGESTAuth))仅存储
    HA1 而不是[明文密码](https://zh.wikipedia.org/wiki/明文 "wikilink")。
  - 在 RFC 2617
    中引入了[客户端随机数nonce](https://zh.wikipedia.org/wiki/nonce "wikilink")（cnonce），这将使客户端能够防止[选择明文攻击](https://zh.wikipedia.org/wiki/选择明文攻击 "wikilink")，否则像[彩虹表](../Page/彩虹表.md "wikilink")（Rainbow
    table）这类东西就会成为摘要认证构架的威胁。
  - 服务器随机数 nonce 允许包含时间戳。因此服务器可以检查客户端提交的随机数
    nonce，以防止[重放攻击](https://zh.wikipedia.org/wiki/重放攻击 "wikilink")。
  - 服务器也可以维护一个最近发出或使用过的服务器随机数nonce的列表以防止重用。

### 劣势

摘要访问认证有意成为一个安全性的折衷。它意图代替非加密的[HTTP基本认证](../Page/HTTP基本认证.md "wikilink")。但是，它没有被设计为替换强认证协议，例如[公钥密码学或](https://zh.wikipedia.org/wiki/公钥密码学 "wikilink")[Kerberos](../Page/Kerberos.md "wikilink")认证。

在安全性方面，摘要访问认证有几个缺点：

  - RFC 2617 中的许多安全选项都是可选的。如果服务器没有指定保护质量(qop)，客户端将以降低安全性的早期的 RFC 2069
    的模式操作。
  - 摘要访问认证容易受到[中间人攻击](../Page/中间人攻击.md "wikilink")。举例而言，一个中间人攻击者可以告知客户端使用基本访问认证或早期的RFC
    2069摘要访问认证模式。进一步而言，摘要访问认证没有提供任何机制帮助客户端验证服务器的身份。
  - 一些服务器要求密码以可逆加密算法存储。但是，仅存储用户名、realm、和密码的摘要是可能的。\[2\]
  - 它阻止了使用强密码哈希函数（如[bcrypt](https://zh.wikipedia.org/wiki/bcrypt "wikilink")）保存密码（因为无论是密码、或者用户名、realm、密码的摘要都要求是可恢复的）。

### 可替代的认证协议

一些可以用于Web应用程序的强认证协议包括：

  - [公钥密码学认证](https://zh.wikipedia.org/wiki/公钥密码学 "wikilink")（通常随
    [HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink") /
    [SSL客户端整数一起实现](https://zh.wikipedia.org/wiki/传输层安全 "wikilink")）。
  - [Kerberos](../Page/Kerberos.md "wikilink")或[SPNEGO认证](https://zh.wikipedia.org/wiki/SPNEGO "wikilink")，主要是在配置为[Integrated
    Windows
    Authentication](https://zh.wikipedia.org/wiki/Integrated_Windows_Authentication "wikilink")
    (IWA)的[微软的IIS使用](https://zh.wikipedia.org/wiki/互联网信息服务 "wikilink")。
  - [Secure Remote Password
    protocol](https://zh.wikipedia.org/wiki/Secure_Remote_Password_protocol "wikilink")
    (适用于[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink") /
    [TLS层](https://zh.wikipedia.org/wiki/传输层安全 "wikilink"))。

常用的弱明文协议：

  - [HTTP基本认证](../Page/HTTP基本认证.md "wikilink")构架
  - [HTTP+HTML表单认证](https://zh.wikipedia.org/wiki/HTTP+HTML表单认证 "wikilink")

使用HTTPS网络加密同时使用这些弱明文协议解决了许多摘要访问认证试图要防止的许多威胁。

## 示例及说明

下面的例子出自 RFC
2617，在这里进行了扩展，对每一个请求和响应显示出完整的文本。注意，这里仅仅涵盖了“auth”保护质量的代码，因为在撰写期间，所知道的只有[Opera和](https://zh.wikipedia.org/wiki/Opera "wikilink")[Konqueror](../Page/Konqueror.md "wikilink")[网页浏览器](../Page/网页浏览器.md "wikilink")支持“auth-int”（带完整性保护的认证）。虽然定义中提到了HTTP
1.1，但是该构架可以像下面所描述的这样添加到1.0的服务器中去。

典型的认证过程包括如下步骤。

  - 客户端请求一个需要认证的页面，但是不提供[用户名和](https://zh.wikipedia.org/wiki/用户名 "wikilink")[密码](https://zh.wikipedia.org/wiki/密码 "wikilink")。通常这是由于用户简单的输入了一个地址或者在页面中点击了某个[超链接](https://zh.wikipedia.org/wiki/超链接 "wikilink")。
  - 服务器返回[401](https://zh.wikipedia.org/wiki/HTTP_401#4xx_Client_Error "wikilink")
    "Unauthorized" 响应代码，并提供认证域(realm)，以及一个随机生成的、只使用一次的数值，称为[密码随机数
    nonce](https://zh.wikipedia.org/wiki/密码随机数 "wikilink")。
  - 此时，浏览器会向用户提示认证域(realm)（通常是所访问的计算机或系统的描述），并且提示用户名和密码。用户此时可以选择取消。
  - 一旦提供了用户名和密码，客户端会重新发送同样的请求，但是添加了一个认证头包括了响应代码。
  - 在这个例子中，服务器接受了认证并且返回了请求页面。如果用户名非法和/或密码不正确，服务器将返回"401"响应代码，然后客户端会再次提示用户输入用户名及密码。

注意：客户端可能已经拥有了用户名和密码，因此不需要提示用户，比如以前存储在浏览器里的。

-----

  - 客户端请求 (无认证):

`GET /dir/index.html HTTP/1.0`
`Host: localhost`

(跟随一个新行，形式为一个[回车再跟一个](../Page/回车符.md "wikilink")[換行](../Page/換行.md "wikilink")）
\[3\]

  - 服务器响应:

`HTTP/1.0 401 Unauthorized`
`Server: HTTPd/0.9`
`Date: Sun, 10 Apr 2005 20:26:47 GMT`
`WWW-Authenticate: Digest realm="testrealm@host.com",`
`                        qop="auth,auth-int",`
`                        nonce="dcd98b7102dd2f0e8b11d0f600bfb0c093",`
`                        opaque="5ccc069c403ebaf9f0171e9517f40e41"`
`Content-Type: text/html`
`Content-Length: 311`

`<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"`
` "`<http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd>`">`

<HTML>

<HEAD>

<TITLE>

Error

</TITLE>

<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">

</HEAD>

`  <BODY><H1>401 Unauthorized.</H1></BODY>`

</HTML>

  - 客户端请求 (用户名 "Mufasa", 密码 "Circle Of Life"):

`GET /dir/index.html HTTP/1.0`
`Host: localhost`
`Authorization: Digest username="Mufasa",`
`                     realm="testrealm@host.com",`
`                     nonce="dcd98b7102dd2f0e8b11d0f600bfb0c093",`
`                     uri="/dir/index.html",`
`                     qop=auth,`
`                     nc=00000001,`
`                     cnonce="0a4f113b",`
`                     response="6629fae49393a05397450978507c4ef1",`
`                     opaque="5ccc069c403ebaf9f0171e9517f40e41"`

(跟随一个新行，形式如前所述).

  - 服务器响应:

`HTTP/1.0 200 OK`
`Server: HTTPd/0.9`
`Date: Sun, 10 Apr 2005 20:27:03 GMT`
`Content-Type: text/html`
`Content-Length: 7984`

(随后是一个空行，然后是所请求受限制的HTML页面).

-----

如下所述，response 值由三步计算而成。当多个数值合并的时候，使用[冒号](../Page/冒号.md "wikilink")作为分割符。

1.  对用户名、认证域(realm)以及密码的合并值计算 MD5 哈希值，结果称为 HA1。
2.  对HTTP方法以及[URI的摘要的合并值计算](../Page/统一资源标志符.md "wikilink") MD5
    哈希值，例如，`"GET"` 和 `"/dir/index.html"`，结果称为 HA2。
3.  对 HA1、服务器密码随机数(nonce)、请求计数(nc)、客户端密码随机数(cnonce)、保护质量(qop)以及 HA2
    的合并值计算 MD5 哈希值。结果即为客户端提供的 response 值。

因为服务器拥有与客户端同样的信息，因此服务器可以进行同样的计算，以验证客户端提交的 response
值的正确性。在上面给出的例子中，结果是如下计算的。
（`MD5()`表示用于计算 MD5 哈希值的函数；“\\”表示接下一行；引号并不参与计算）

完成 RFC 2617 中所给出的示例，将在每步得出如下结果。

`   HA1 = MD5( "Mufasa:testrealm@host.com:Circle Of Life" )`
`       = 939e7578ed9e3c518a452acee763bce9`

`   HA2 = MD5( "GET:/dir/index.html" )`
`       = 39aff3a2bab6126f332b942af96d3366`

`   Response = MD5( "939e7578ed9e3c518a452acee763bce9:\`
`                    dcd98b7102dd2f0e8b11d0f600bfb0c093:\`
`                    00000001:0a4f113b:auth:\`
`                    39aff3a2bab6126f332b942af96d3366" )`
`            = 6629fae49393a05397450978507c4ef1`

此时客户端可以提交一个新的请求，重复使用服务器密码随机数(nonce)（服务器仅在每次“401”响应后发行新的nonce），但是提供新的客户端密码随机数(cnonce)。在后续的请求中，十六进制请求计数器(nc)必须比前一次使用的时候要大，否则攻击者可以简单的使用同样的认证信息[重放老的请求](https://zh.wikipedia.org/wiki/重放攻击 "wikilink")。由服务器来确保在每个发出的密码随机数nonce时，计数器是在增加的，并拒绝掉任何错误的请求。显然，改变HTTP方法和/或计数器数值都会导致不同的
response 值。

服务器应当记住最近所生成的服务器密码随机数nonce的值。也可以在发行每一个密码随机数nonce后，记住过一段时间让它们过期。如果客户端使用了一个过期的值，服务器应该响应“401”状态号，并且在认证头中添加`stale=TRUE`，表明客户端应当使用新提供的服务器密码随机数nonce重发请求，而不必提示用户其它用户名和口令。

服务器不需要保存任何过期的密码随机数，它可以简单的认为所有不认识的数值都是过期的。服务器也可以只允许每一个服务器密码随机数nonce使用一次，当然，这样就会迫使客户端在发送每个请求的时候重复认证过程。需要注意的是，在生成后立刻过期服务器密码随机数nonce是不行的，因为客户端将没有任何机会来使用这个nonce。

## SIP 摘要认证

[SIP基本上使用了同样的摘要认证算法](../Page/会话发起协议.md "wikilink")。它由 RFC 3261 定义。

## 浏览器实现

大多数浏览器都基本上实现了该协议，除了某些特性，比如检查auth-int、或者MD5-sess算法。如果服务器要求处理这类可选特性，客户端可能无法进行认证（虽然需要注意的是，Apache服务器的mod_auth_digest模块也没有完全实现
RFC 2617）。

  - [Amaya](../Page/Amaya.md "wikilink")
  - 基于[Gecko](../Page/Gecko.md "wikilink"): (不包括 auth-int:
    [1](https://bugzilla.mozilla.org/show_bug.cgi?id=168942))
      - [Mozilla Application
        Suite](../Page/Mozilla_Application_Suite.md "wikilink")
      - [Mozilla
        Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")
      - [Netscape 7+](../Page/Netscape_7.md "wikilink")
  - [iCab 3.0.3+](../Page/ICab.md "wikilink")
  - 基于[KHTML](../Page/KHTML.md "wikilink")- 及
    [WebKit](../Page/WebKit.md "wikilink"): (不包括 auth-int
    [2](http://www.vsecurity.com/download/papers/HTTPDigestIntegrity.pdf))
      - [iCab](https://zh.wikipedia.org/wiki/iCab "wikilink") 4
      - [Konqueror](../Page/Konqueror.md "wikilink")
      - [Google Chrome](../Page/Google_Chrome.md "wikilink")
      - [Safari](../Page/Safari.md "wikilink")
  - 基于[Tasman](../Page/Tasman.md "wikilink"):
      - [Internet Explorer for
        Mac](../Page/Internet_Explorer_for_Mac.md "wikilink")
  - [Trident](../Page/Trident_\(排版引擎\).md "wikilink")-based:
      - [Internet Explorer
        7+](../Page/Internet_Explorer_7.md "wikilink") \[4\] (不包括
        auth-int)
  - 基于[Presto](../Page/Presto.md "wikilink"):
      - [Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")
      - [Opera
        Mobile](https://zh.wikipedia.org/wiki/Opera_Mobile "wikilink")
      - [Opera Mini](../Page/Opera_Mini.md "wikilink")
      - [Nintendo DS
        浏览器](https://zh.wikipedia.org/wiki/Opera_Devices#Nintendo_DS_Browser "wikilink")
      - [Nokia 770](https://zh.wikipedia.org/wiki/Nokia_770 "wikilink")
        浏览器
      - [Sony Mylo 1](../Page/Mylo.md "wikilink") 的浏览器
      - [Wii](../Page/Wii.md "wikilink") [Internet
        Channel](https://zh.wikipedia.org/wiki/Internet_Channel "wikilink")
        浏览器

## 参见

  - [认证和密钥协商协议](https://zh.wikipedia.org/wiki/认证和密钥协商协议 "wikilink")
  - [HTTP基本认证](../Page/HTTP基本认证.md "wikilink")

## 参考

## 外部链接

  - RFC 2617
  - RFC 2069 (废弃的)

[fr:HTTP Authentification\#Méthode
Digest](https://zh.wikipedia.org/wiki/fr:HTTP_Authentification#Méthode_Digest "wikilink")

[Category:加密协议](https://zh.wikipedia.org/wiki/Category:加密协议 "wikilink")
[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")
[Category:RFC](https://zh.wikipedia.org/wiki/Category:RFC "wikilink")

1.   *注意：没有给出具体信息；需要引用该页的准确的版本。*
2.  <http://tools.ietf.org/html/rfc2617#section-4.13>
3.  <http://www.w3.org/Protocols/HTTP/1.0/spec.html#Request>
4.  <http://httpd.apache.org/docs/2.2/mod/mod_auth_digest.html#msie>