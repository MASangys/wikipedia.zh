在[HTTP中](../Page/HTTP.md "wikilink")，**基本认证**（Basic access
authentication）是一种用来允许[网页浏览器或其他客户端程序在请求时提供](../Page/网页浏览器.md "wikilink")[用户名和](../Page/用户名.md "wikilink")[口令形式的身份凭证的一种登录验证方式](../Page/口令.md "wikilink")。

在发送之前是以用户名追加一个冒号然后[串接上口令](../Page/串接.md "wikilink")，并将得出的结果[字符串再用](../Page/字符串.md "wikilink")[Base64算法编码](../Page/Base64.md "wikilink")。例如，提供的用户名是`Aladdin`、口令是`open
sesame`，则拼接后的结果就是`Aladdin:open
sesame`，然后再将其用Base64编码，得到`QWxhZGRpbjpvcGVuIHNlc2FtZQ==`。最终将Base64编码的字符串发送出去，由接收者解码得到一个由冒号分隔的用户名和口令的字符串。

虽然对用户名和口令的Base64算法编码结果很难用肉眼识别解码，但它仍可以极为轻松地被计算机所解码，就像其容易编码一样。编码这一步骤的目的并不是安全与隐私，而是为将用户名和口令中的不兼容的字符转换为均与[HTTP协议兼容的字符集](../Page/HTTP协议.md "wikilink")。

最初，基本认证是定义在HTTP 1.0规范（RFC 1945）中，后续的有关安全的信息可以在HTTP 1.1规范（RFC
2616）和HTTP认证规范（RFC 2617）中找到。

## 优点

基本认证的一个优点是基本上所有流行的网页浏览器都支持基本认证\[1\]。基本认证很少在可公开访问的[互联网](../Page/互联网.md "wikilink")[网站上使用](../Page/网站.md "wikilink")，有时候会在小的私有系统中使用（如[路由器网页管理接口](../Page/路由器.md "wikilink")）。后来的机制[HTTP摘要认证是为替代基本认证而开发的](../Page/HTTP摘要认证.md "wikilink")，允许密钥以相对安全的方式在不安全的通道上传输。

程序员和系统管理员有时会在可信网络环境中使用基本认证，使用[Telnet或其他明文网络协议工具手动地测试Web服务器](../Page/Telnet.md "wikilink")。这是一个麻烦的过程，但是网络上传输的内容是人可读的，以便进行诊断。

## 缺点

虽然基本认证非常容易实现，但该方案建立在以下的假设的基础上，即：客户端和服务器主机之间的连接是安全可信的。特别是，如果没有使用[SSL/TLS这样的传输层安全的协议](../Page/传输层安全.md "wikilink")，那么以[明文传输的密钥和口令很容易被拦截](../Page/明文.md "wikilink")。该方案也同样没有对服务器返回的信息提供保护。

现存的浏览器保存认证信息直到标签页或浏览器被关闭，或者用户清除历史记录。\[2\]HTTP没有为服务器提供一种方法指示客户端丢弃这些被缓存的密钥。这意味着服务器端在用户不關閉瀏覽器的情況下，並没有一种有效的方法来让用户登出。

## 例子

这一个典型的HTTP客户端和HTTP服务器的对话，服务器安装在同一台计算机上（[localhost](../Page/localhost.md "wikilink")），包含以下步骤：

  - 客户端请求一个需要身份认证的页面，但是没有提供用户名和口令。这通常是用户在地址栏输入一个[URL](../Page/URL.md "wikilink")，或是打开了一个指向该页面的[链接](../Page/超链接.md "wikilink")。
  - 服务端响应一个401[应答码](../Page/HTTP状态码.md "wikilink")，并提供一个认证域。
  - 接到应答后，客户端显示该认证域（通常是所访问的计算机或系统的描述）给用户并提示输入用户名和口令。此时用户可以选择确定或取消。
  - 用户输入了用户名和口令后，客户端软件会在原先的请求上增加认证消息头（值是`base64encode(username+":"+password)`），然后重新发送再次尝试。
  - 在本例中，服务器接受了该认证屏幕并返回了页面。如果用户凭据非法或无效，服务器可能再次返回401应答码，客户端可以再次提示用户输入口令。

**注意:**客户端有可能不需要用户交互，在第一次请求中就发送认证消息头。

-----

**客户端请求（没有认证信息）**：

``` http
GET /private/index.html HTTP/1.0
Host: localhost
```

（跟随一个[换行](../Page/换行.md "wikilink")，以[回车（CR）加](../Page/回车符.md "wikilink")[换行（LF）的形式](../Page/换行.md "wikilink")）

**服务端应答**：

``` html4strict
HTTP/1.0 401 Authorization Required
Server: HTTPd/1.0
Date: Sat, 27 Nov 2004 10:18:15 GMT
WWW-Authenticate: Basic realm="Secure Area"
Content-Type: text/html
Content-Length: 311

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
  <HEAD>
    <TITLE>Error</TITLE>
    <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
  </HEAD>
  <BODY><H1>401 Unauthorized.</H1></BODY>
</HTML>
```

**客户端的请求（用户名“"Aladdin”，口令, password “open sesame”）**：

``` http
GET /private/index.html HTTP/1.0
Host: localhost
Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==
```

（跟随一个空行，如上所述）

Authorization消息头的用户名和口令的值可以容易地编码和解码：

  - 用[Perl](../Page/Perl.md "wikilink")：

<!-- end list -->

``` perl
use MIME::Base64;
print encode_base64('Aladdin:open sesame'), "\n";
print decode_base64('QWxhZGRpbjpvcGVuIHNlc2FtZQ=='), "\n";
```

  - 用[PHP](../Page/PHP.md "wikilink")：

<!-- end list -->

``` php
echo base64_encode("Aladdin:open sesame")."\n";
echo base64_decode("QWxhZGRpbjpvcGVuIHNlc2FtZQ==")."\n";
```

  - 用[Python](../Page/Python.md "wikilink")：

<!-- end list -->

``` python
print "Aladdin:open sesame".encode("base64")
print "QWxhZGRpbjpvcGVuIHNlc2FtZQ==".decode("base64")
```

  - 用[Ruby](../Page/Ruby.md "wikilink")：

<!-- end list -->

``` ruby
require 'base64'
puts Base64::encode64("Aladdin:open sesame")
puts Base64::decode64("QWxhZGRpbjpvcGVuIHNlc2FtZQ==")
如果使用Ruby 2以上版本，請改用Base64.strict_encode64
```

  - 用[Bash](../Page/Bash.md "wikilink")：

<!-- end list -->

``` bash
$ echo -n "Aladdin:open sesame" | base64
QWxhZGRpbjpvcGVuIHNlc2FtZQ==
$ echo -n "QWxhZGRpbjpvcGVuIHNlc2FtZQ==" | base64 -d
Aladdin:open sesame
```

  - 用[XQuery](../Page/XQuery.md "wikilink")（eXist-db）：

<!-- end list -->

``` xquery
let $encode :=  util:base64-encode('Aladdin:open sesame')
let $decode := util:base64-decode('QWxhZGRpbjpvcGVuIHNlc2FtZQ==')
```

  - 用[OpenSSL](../Page/OpenSSL.md "wikilink")：

<!-- end list -->

``` bash
$ printf "Aladdin:open sesame" | openssl enc -base64
QWxhZGRpbjpvcGVuIHNlc2FtZQ==
$ echo "QWxhZGRpbjpvcGVuIHNlc2FtZQ==" | openssl enc -base64 -d
Aladdin:open sesame
$
```

  - **服务端的应答**：

<!-- end list -->

``` http
HTTP/1.0 200 OK
Server: HTTPd/1.0
Date: Sat, 27 Nov 2004 10:19:07 GMT
Content-Type: text/html
Content-Length: 10476
```

（跟随一个空行，随后是需凭据页的[HTML文本](../Page/HTML.md "wikilink")）。

## 参考文献和注释

## 参见

  - [HTTP摘要认证](../Page/HTTP摘要认证.md "wikilink")

## 外部链接

  - [RFC2617: HTTP Authentication: Basic and Digest Access
    Authentication](http://tools.ietf.org/html/rfc2617)

[分类:認證方法](../Page/分类:認證方法.md "wikilink")

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")

1.  这里的“所有的流行网页浏览器”包括任何目前市场份额超过0.2%的网页浏览器，参见[网页浏览器比较了解网页浏览器对HTTP的支持](../Page/网页浏览器比较.md "wikilink")
2.  [1](http://www.tolaris.com/2009/09/08/logging-out-of-http-auth-with-firefox/)