> 本文内容由[HTTP压缩](https://zh.wikipedia.org/wiki/HTTP压缩)转换而来。


**HTTP压缩**是一种内置到[网页服务器和](../Page/網頁伺服器.md "wikilink")[网页客户端中以改进传输速度和带宽利用率的方式](../Page/网页浏览器.md "wikilink")。\[1\]

[HTTP数据在从服务器发送前就已](../Page/超文本传输协议.md "wikilink")[压缩](../Page/数据压缩.md "wikilink")：兼容的浏览器将在下载所需的格式前宣告支持何种方法给服务器；不支持压缩方法的浏览器将下载未经压缩的数据。最常见的压缩方案包括[gzip和](https://zh.wikipedia.org/wiki/gzip "wikilink")[Deflate](../Page/DEFLATE.md "wikilink")，但可用方案的完整列表由[IANA维护](../Page/互联网号码分配局.md "wikilink")。\[2\]此外，第三方可能开发新的方法并纳入到其自身的产品，例如Google的面向HTTP共享字典压缩（SDCH）方案就实现在[Google Chrome浏览器和使用在Google的服务器上](../Page/Google_Chrome.md "wikilink")。

在HTTP中有两种不同的方式可以完成压缩。在较低层级，Transfer-Encoding头可以指示HTTP消息的有效载荷被压缩。在较高层级，Content-Encoding头可以指示一个被转码、缓存或引用的资源已压缩。使用Content-Encoding的压缩比Transfer-Encoding有更广泛的支持，并且某些浏览器不宣告Transfer-Encoding压缩以避免触发服务器的缺陷。\[3\]

## 压缩方案协商

在大多数情况中（不包括SDCH），协商使用两个步骤完成，这描述在RFC 2616：

1\. [网页客户端在](../Page/网页浏览器.md "wikilink")[HTTP请求的头部通告其支持的压缩方案为一个标记列表](../Page/超文本传输协议.md "wikilink")（tokens）。对于Content-Encoding，这个列表称作Accept-Encoding；对于Transfer-Encoding，该字段被称为TE。

``` http
GET /encrypted-area HTTP/1.1
Host: www.example.com
Accept-Encoding: gzip, deflate
```

2\. 如果服务器支持一种或多种压缩方案，输出的数据可能用一种或多种双方支持的方法压缩。如果是这种情况，服务器将在HTTP响应中添加一个Content-Encoding或Transfer-Encoding字段表明使用的方案，用逗号分隔。

``` http
HTTP/1.1 200 OK
Date: Tue, 27 Feb 2018 06:03:16 GMT
Server: Apache/1.3.3.7 (Unix)  (Red-Hat/Linux)
Last-Modified: Wed, 08 Jan 2003 23:11:55 GMT
Accept-Ranges: bytes
Content-Length: 438
Connection: close
Content-Type: text/html; charset=UTF-8
Content-Encoding: gzip
```

[网页服务器本身没有义务使用任何压缩方法](../Page/網頁伺服器.md "wikilink")——这取决于网页服务器的内部设置，并可能依赖于网站的内部架构。

在SDCH的情况下，完成一份字典协商也是必须的，其中可能涉及额外的步骤，比如从外部服务器下载一个合适的字典。

## Content-Encoding标记

服务器和客户端的标记（token）的官方列表由IANA维护，\[4\]它包括：

  - compress – UNIX的“compress”程序的方法（历史性，不推荐大多数应用使用，应该使用gzip或deflate）
  - deflate – 基于[deflate算法](../Page/DEFLATE.md "wikilink")（定义于RFC 1951）的压缩，使用zlib数据格式（RFC 1950）封装
  - exi – W3C高效XML交换
  - [gzip](https://zh.wikipedia.org/wiki/gzip "wikilink") – GNU zip格式（定义于RFC 1952）。此方法截至2011年3月，是应用程序支持最广泛的方法。\[5\]
  - identity – 不转换内容。这是内容编码的默认值。
  - [pack200-gzip](https://zh.wikipedia.org/wiki/Pack200 "wikilink") – 传输Java存档文件的网络传输格式\[6\]

除此之外，一些非官方或非标准化的标记也已被一些服务器或客户端使用：

  - br – [Brotli](../Page/Brotli.md "wikilink")，一种新的开源压缩算法，专为HTTP内容的编码而设计，已在[Mozilla Firefox 44中实现](https://zh.wikipedia.org/wiki/Mozilla_Firefox_44 "wikilink")，并且[Chromium](../Page/Chromium.md "wikilink")正准备实施。
  - [bzip2](https://zh.wikipedia.org/wiki/bzip2 "wikilink") – 基于自由格式bzip2的压缩，被[lighttpd](https://zh.wikipedia.org/wiki/lighttpd "wikilink")\[7\]
  - [lzma](../Page/LZMA.md "wikilink") – 基于原始LZMA的压缩，在Opera 20中可用，elinks使用一个编译时选项也可启用\[8\]
  - peerdist\[9\] – [Microsoft对等端内容缓存和检索](../Page/微软.md "wikilink")
  - sdch\[10\]\[11\] – [Google](../Page/Google.md "wikilink")的面向HTTP共享字典压缩，基于VCDIFF（RFC 3284）；在最近的[Google Chrome](../Page/Google_Chrome.md "wikilink")、Chromium和Android版本中原生支持，并被Google的网站支持。
  - xpress - [Windows商店](https://zh.wikipedia.org/wiki/Windows商店 "wikilink")（Windows 8及之后版本）的应用程序更新时使用的微软压缩协议。可选使用一个霍夫曼编码的基于LZ77的压缩。\[12\]
  - [xz](https://zh.wikipedia.org/wiki/xz "wikilink") - 基于LZMA2的内容压缩，Firefox可使用非官方补丁支持；\[13\]mget自从2013年12月31日已完整实现。\[14\]

## 支持HTTP压缩的服务器

  - [SAP NetWeaver](../Page/NetWeaver.md "wikilink")
  - [Microsoft IIS](../Page/網際網路資訊服務.md "wikilink")：内置或使用第三方模块
  - [Apache HTTP Server](../Page/Apache_HTTP_Server.md "wikilink")，通过**[mod_deflate](http://httpd.apache.org/docs/2.2/mod/mod_deflate.html)**（正如其名，只支持gzip\[15\]<sup>\[*[<span title="The material near this tag may rely on a self-published source. (November 2015)">self-published source?</span>](https://zh.wikipedia.org/wiki/Wikipedia:可供查證 "wikilink")*\]</sup>\[16\]）
  - Hiawatha HTTP server：服务器预先压缩文件\[17\]
  - [Cherokee HTTP server](../Page/Cherokee_\(Web服务器\).md "wikilink")，即时完成gzip和deflate压缩
  - Oracle iPlanet Web Server
  - Zeus Web Server
  - [lighttpd](https://zh.wikipedia.org/wiki/lighttpd "wikilink")，通过**mod_compress**和较新的**mod_deflate**（1.5.x）
  - [nginx](https://zh.wikipedia.org/wiki/nginx "wikilink") – 内置
  - 基于[Tornado](../Page/Tornado.md "wikilink")的应用程序，如果“compress_response”在应用设置中设置为True（对4.0之前的版本，设置“gzip”为True）
  - [Jetty Server](../Page/Jetty.md "wikilink") – 内置到默认的静态内容服务并在servlet过滤器配置中可用
  - GeoServer
  - [Apache Tomcat](../Page/Apache_Tomcat.md "wikilink")
  - IBM Websphere
  - AOLserver
  - [Ruby](../Page/Ruby.md "wikilink") Rack，通过**Rack::Deflater**中间件
  - [Varnish](../Page/Varnish_cache.md "wikilink") – 内置。也可配合ESI

HTTP中的压缩也可以使用服务器脚本语言（例如[PHP](../Page/PHP.md "wikilink")；或者编程语言，例如[Java](../Page/Java.md "wikilink")）来实现。

## 阻碍使用HTTP压缩的问题

2009年Google工程师Arvind Jain和Jason Glasgow的文章指出，每天有超过99[人年的时间由于用户没有接收到已压缩内容而增加的页面加载时间而浪费](https://zh.wikipedia.org/wiki/人年 "wikilink")\[18\]。这可能发生于：[反病毒软件检查连接导致内容变为未压缩](https://zh.wikipedia.org/wiki/反病毒软件 "wikilink")；使用[代理服务器](../Page/代理服务器.md "wikilink")（网页服务器为保兼容性而放弃压缩）；服务器配置不当；浏览器遇到问题而停止使用压缩。Internet Explorer 6在使用代理服务器时会回退到使用HTTP 1.0（没有压缩、流水线等特性）——这是企业环境中的常见配置——这也是主流浏览器最常遇到的，回落到未压缩HTTP的情况。\[19\]

另一个大规模部署HTTP压缩遇到的问题是，**deflate**编码的定义：HTTP 1.1将**deflate**编码定义为将deflate压缩（RFC 1951）的数据放入一个[zlib格式的数据流](https://zh.wikipedia.org/wiki/zlib "wikilink")（RFC 1950），而微软服务器和客户端产品历来将它实现为“原样”（"raw"）数据流，\[20\]这使其部署是不可靠的。\[21\]\[22\]出于此原因，部分软件（包括[Apache HTTP Server](../Page/Apache_HTTP_Server.md "wikilink")）只实现**gzip**编码。

## 安全问题

2012年，一种对数据压缩不利的普遍性攻击被公布，它被称为CRIME。CRIME攻击可能对大量协议产生效果，包括但不限于TLS以及应用层协议（例如SPDY或HTTP）。只有针对TLS和SPDY的攻击被论证，并且在浏览器和服务器中得到了大幅缓解。CRIME利用的HTTP压缩没有得到全面的缓解，即使CRIME的作者已经警告说，该漏洞的影响范围可能比SPDY和TLS的压缩更广泛。

2013年，涉及HTTP压缩的CRIME攻击新实例被发布，这被称为BREACH。BREACH攻击可以在30秒内从TLS加密的网页流量中提取登录令牌、电子邮件地址或其他敏感信息（时间取决于要提取的字节数），这也可能使攻击者诱骗受害者访问恶意的网站链接。\[23\]TLS和SSL的所有版本都受到了BREACH的影响，无论使用何种加密算法或密码本。\[24\] 不同于以往的CRIME实例，那些都可以通过关闭TLS压缩或SPDY头压缩缓解攻击；BREACH利用的HTTP压缩基本上不能关闭，因为几乎所有网页服务器都依赖它提高与用户的数据传输速度。\[25\]

## 参考文献

## 外部链接

  - RFC 2616: Hypertext Transfer Protocol – HTTP/1.1
  - [HTTP Content-Coding Values](http://www.iana.org/assignments/http-parameters) by Internet Assigned Numbers Authority
  - [Compression with lighttpd](http://redmine.lighttpd.net/projects/lighttpd/wiki/Docs:Modcompress)
  - [Coding Horror: HTTP Compression on IIS 6.0](http://www.codinghorror.com/blog/2004/08/http-compression-and-iis-6-0.html)
  - [15 Seconds: Web Site Compression](https://web.archive.org/web/20110716033901/http://www.15seconds.com/Issue/020314.htm)<span contenteditable="false"> at the </span>Wayback Machine  <span contenteditable="false">（2011年7月16日存档）</span>
  - [HTTP Compression](http://www.http-compression.com/): resource page by the founder of VIGOS AG, Constantin Rack
  - [Using HTTP Compression](http://www.serverwatch.com/tutorials/article.php/3514866) by Martin Brown of Server Watch
  - [Using HTTP Compression in PHP](http://www.devshed.com/c/a/PHP/Using-HTTP-Compression-in-PHP-Make-Your-Web-Pages-Load-Faster/)
  - [Dynamic and static HTTP compression with Apache httpd](https://web.archive.org/web/20120430023716/https://banu.com/blog/38/dynamic-and-static-http-compression-with-apache-httpd/)
  - [Browser HTTP Compression Test](http://david.fullrecall.com/browser-http-compression-test)
  - [Check HTTP compression](http://99webtools.com/http_compression.php)
  - [Check Gzip Compression Online](https://wtools.io/check-gzip-online)

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink") [Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink") [Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink")

1.
2.  RFC 2616, Section 3.5: "The Internet Assigned Numbers Authority (IANA) acts as a registry for content-coding value tokens."
3.  ['RFC2616 "Transfer-Encoding: gzip, chunked" not handled properly'](http://code.google.com/p/chromium/issues/detail?id=94730), [Chromium](../Page/Chromium.md "wikilink") Issue 94730
4.
5.
6.
7.
8.  [elinks LZMA decompression](http://elinks.or.cz/documentation/html/manual.html-chunked/ch01s07.html#CONFIG-LZMA)
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
24.
25.