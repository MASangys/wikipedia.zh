**HTTP头字段**（）是指在[超文本传输协议](../Page/超文本传输协议.md "wikilink")（HTTP）的请求和响应消息中的消息头部分。它们定义了一个超文本传输协议事务中的操作参数。HTTP头部字段可以自己根据需要定义，因此可能在
Web 服务器和浏览器上发现非标准的头字段。

## 基本格式

协议头的字段，是在请求（request）或响应（response）行（一条消息的第一行内容）之后传输的。协议头的字段是以明文的[字符串格式传输](../Page/字符串.md "wikilink")，是以冒号分隔的键名与键值对，以回车(CR)加换行(LF)符号序列结尾。协议头部分的结尾以一个空白字段标识，结果就是，也就是传输两个连续的CR+LF。在历史上，很长的行曾经可能以多个短行的形式传输；在下一行的开头，输出一个空格(SP)或者一个水平制表符(HT)，表示它是一个后续行。在如今，这种换行形式已经被废弃\[1\]。

## 类型

HTTP 头字段根据实际用途被分为以下 4 种类型：

  - 通用头字段()
  - 请求头字段()
  - 响应头字段()
  - 实体头字段()

## 字段名

在 RFC 7230、RFC 7231、RFC 7232、RFC 7233、RFC 7234 和 RFC 7235
中，对一组核心字段进行了标准化。有一份对于这些字段的官方的登记册，以及
一系列的补充规范
，由互联网号码分配局（IANA）维护。各个应用程序也可以自行定义额外的字段名字及相应的值。[头字段的永久登记表](http://www.iana.org/assignments/message-headers/message-headers.xml#perm-headers)和[临时登记表](http://www.iana.org/assignments/message-headers/message-headers.xml#prov-headers)目前由[IANA维护](../Page/IANA.md "wikilink")。其他的字段名称和允许的值可以由各应用程序定义。

按照惯例，非标准的协议头字段是在字段名称前加上`X-`\[2\]前缀来标识。但这一惯例已在2012年6月被废弃，因为按照这种惯例，非标准字段变成标准字段时会引起很多不方便之处。\[3\]以前曾经有的使用`Downgraded-`的限制也在2013年3月被解除。\[4\]。

## 字段值

某些字段中可以包含注释内容（例如User-Agent、Server和Via字段中)，这些注释内容可由应用程序忽略\[5\]。

很多字段的值中可以包含带有权重的[质量](../Page/质量.md "wikilink")（quality，常被简称为Q）的键值对，指定的“重量”会在[内容协商的过程中使用](../Page/内容协商.md "wikilink")\[6\]。

## 大小限制

标准中没有对每个协议头字段的名称和值的大小设置任何限制，也没有限制字段的个数。然而，出于实际场景及安全性的考虑，大部分的服务器、客户端和代理软件都会实施一些限制。例如，[Apache](../Page/Apache.md "wikilink")
2.3服务器在默认情况下限制每个字段的大小不得超过8190字节，同时，单个请求中最多有100个头字段\[7\]。

## 请求字段

| 协议头字段名                                                                                                                       | 说明                                                                                                                                       | 示例                                                                                 | 状态       |
| ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | -------- |
| Accept                                                                                                                       | 能够接受的回应内容类型（Content-Types）。参见[内容协商](../Page/内容协商.md "wikilink")。                                                                         | `Accept: text/plain`                                                               | 常设       |
| Accept-Charset                                                                                                               | 能够接受的字符集                                                                                                                                 | `Accept-Charset: utf-8`                                                            | 常设       |
| Accept-Encoding                                                                                                              | 能够接受的编码方式列表。参考[HTTP压缩](../Page/HTTP压缩.md "wikilink")。                                                                                    | `Accept-Encoding: gzip, deflate`                                                   | 常设       |
| Accept-Language                                                                                                              | 能够接受的回应内容的自然语言列表。参考 [内容协商](../Page/内容协商.md "wikilink") 。                                                                                 | `Accept-Language: en-US`                                                           | 常设       |
| Accept-Datetime                                                                                                              | 能够接受的按照时间来表示的版本                                                                                                                          | `Accept-Datetime: Thu, 31 May 2007 20:35:00 GMT`                                   | 临时       |
| Authorization                                                                                                                | 用于超文本传输协议的认证的认证信息                                                                                                                        | `Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==`                                | 常设       |
| [Cache-Control](../Page/网页快照.md "wikilink")                                                                                  | 用来指定在这次的请求/响应链中的所有缓存机制 都必须 遵守的指令                                                                                                         | `Cache-Control: no-cache`                                                          | 常设       |
| Connection                                                                                                                   | 该浏览器想要优先使用的连接类型 \[8\]                                                                                                                    | `Connection: keep-alive` `Connection: Upgrade`                                     | 常设       |
| Cookie                                                                                                                       | 之前由服务器通过 Set- Cookie （下文详述）发送的一个 超文本传输协议Cookie                                                                                           | `Cookie: $Version=1; Skin=new;`                                                    | 常设: 标准   |
| Content-Length                                                                                                               | 以 八位字节数组 （8位的字节）表示的请求体的长度                                                                                                                | `Content-Length: 348`                                                              | 常设       |
| Content-MD5                                                                                                                  | 请求体的内容的二进制 MD5 散列值，以 Base64 编码的结果                                                                                                        | `Content-MD5: Q2hlY2sgSW50ZWdyaXR5IQ==`                                            | 过时的\[9\] |
| Content-Type                                                                                                                 | 请求体的 多媒体类型 （用于POST和PUT请求中）                                                                                                               | `Content-Type: application/x-www-form-urlencoded`                                  | 常设       |
| Date                                                                                                                         | 发送该消息的日期和时间(按照 RFC 7231 中定义的"超文本传输协议日期"格式来发送)                                                                                            | `Date: Tue, 15 Nov 1994 08:12:31 GMT`                                              | 常设       |
| Expect                                                                                                                       | 表明客户端要求服务器做出特定的行为                                                                                                                        | `Expect: 100-continue`                                                             | 常设       |
| From                                                                                                                         | 发起此请求的用户的邮件地址                                                                                                                            | `From: user@example.com`                                                           | 常设       |
| Host                                                                                                                         | 服务器的域名(用于虚拟主机 )，以及服务器所监听的[传输控制协议端口号](../Page/传输控制协议.md "wikilink")。如果所请求的端口是对应的服务的标准端口，则端口号可被省略。 \[10\] 自超文件传输协议版本1.1（HTTP/1.1）开始便是必需字段。 | `Host: en.wikipedia.org:80` `Host: en.wikipedia.org`                               | 常设       |
| If-Match                                                                                                                     | 仅当客户端提供的实体与服务器上对应的实体相匹配时，才进行对应的操作。主要作用时，用作像 PUT 这样的方法中，仅当从用户上次更新某个资源以来，该资源未被修改的情况下，才更新该资源。                                               | `If-Match: "737060cd8c284d8af7ad3082f209582d"`                                     | 常设       |
| If-Modified-Since                                                                                                            | 允许在对应的内容未被修改的情况下返回304未修改（ 304 Not Modified ）                                                                                             | `If-Modified-Since: Sat, 29 Oct 1994 19:43:31 GMT`                                 | 常设       |
| If-None-Match                                                                                                                | 允许在对应的内容未被修改的情况下返回304未修改（ 304 Not Modified ），参考 超文本传输协议 的[实体标记](../Page/HTTP_ETag.md "wikilink")                                         | `If-None-Match: "737060cd8c284d8af7ad3082f209582d"`                                | 常设       |
| If-Range                                                                                                                     | 如果该实体未被修改过，则向我发送我所缺少的那一个或多个部分；否则，发送整个新的实体                                                                                                | `If-Range: "737060cd8c284d8af7ad3082f209582d"`                                     | 常设       |
| If-Unmodified-Since                                                                                                          | 仅当该实体自某个特定时间已来未被修改的情况下，才发送回应。                                                                                                            | `If-Unmodified-Since: Sat, 29 Oct 1994 19:43:31 GMT`                               | 常设       |
| Max-Forwards                                                                                                                 | 限制该消息可被代理及网关转发的次数。                                                                                                                       | `Max-Forwards: 10`                                                                 | 常设       |
| Origin                                                                                                                       | 发起一个针对 跨来源资源共享 的请求（要求服务器在回应中加入一个‘访问控制-允许来源’（'Access-Control-Allow-Origin'）字段）。                                                           | `Origin: http://www.example-social-network.com`                                    | 常设: 标准   |
| Pragma                                                                                                                       | 与具体的实现相关，这些字段可能在请求/回应链中的任何时候产生多种效果。                                                                                                      | `Pragma: no-cache`                                                                 | 常设但不常用   |
| Proxy-Authorization                                                                                                          | 用来向代理进行认证的认证信息。                                                                                                                          | `Proxy-Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==`                          | 常设       |
| <span id="Range" contenteditable="false"></span> Range                                                                       | 仅请求某个实体的一部分。字节偏移以0开始。参见[字节服务](../Page/字节服务.md "wikilink")。                                                                               | `Range: bytes=500-999`                                                             | 常设       |
| [Referer](../Page/HTTP參照位址.md "wikilink")<span contenteditable="false"> </span>\[*[sic](../Page/sic.md "wikilink")*\] \[11\] | 表示浏览器所访问的前一个页面，正是那个页面上的某个链接将浏览器带到了当前所请求的这个页面。                                                                                            | `Referer: http://en.wikipedia.org/wiki/Main_Page`                                  | 常设       |
| TE                                                                                                                           | 浏览器预期接受的传输编码方式：可使用回应协议头 Transfer-Encoding 字段中的值；另外还可用"trailers"（与"分块 "传输方式相关）这个值来表明浏览器希望在最后一个尺寸为0的块之后还接收到一些额外的字段。                        | ` TE: trailers,  `[`deflate`](../Page/DEFLATE.md "wikilink")                       | 常设       |
| User-Agent                                                                                                                   | 浏览器的[浏览器身份标识字符串](../Page/用户代理.md "wikilink")                                                                                             | `User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:12.0) Gecko/20100101 Firefox/21.0` | 常设       |
| Upgrade                                                                                                                      | 要求服务器升级到另一个协议。                                                                                                                           | `Upgrade: HTTP/2.0, SHTTP/1.3, IRC/6.9, RTA/x11`                                   | 常设       |
| Via                                                                                                                          | 向服务器告知，这个请求是由哪些代理发出的。                                                                                                                    | `Via: 1.0 fred, 1.1 example.com (Apache/1.1)`                                      | 常设       |
| Warning                                                                                                                      | 一个一般性的警告，告知，在实体内容体中可能存在错误。                                                                                                               | `Warning: 199 Miscellaneous warning`                                               | 常设       |

### 常见的非标准请求字段

| 字段名                                                            | 说明                                                                                                                                                                                                                                                       | 示例                                                                                         |
| -------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| X-Requested-With                                               | 主要用于标识 Ajax 及可扩展标记语言 请求。大部分的JavaScript框架会发送这个字段，且将其值设置为 XMLHttpRequest                                                                                                                                                                                   | `X-Requested-With: XMLHttpRequest`                                                         |
| [DNT](../Page/请勿追踪.md "wikilink")\[12\]                        | 请求某个网页应用程序停止跟踪某个用户。在火狐浏览器中，相当于X-Do-Not-Track协议头字段（自 Firefox/4.0 Beta 11 版开始支持）。[Safari](../Page/Safari.md "wikilink") 和 [Internet Explorer](../Page/Internet_Explorer.md "wikilink") 9 也支持这个字段。2011年3月7日，草案提交IETF。\[13\] 万维网协会 的跟踪保护工作组正在就此制作一项规范。\[14\] | `DNT: 1 (DNT启用)` `DNT: 0 (DNT被禁用)`                                                         |
| [X-Forwarded-For](../Page/X-Forwarded-For.md "wikilink")\[15\] | 一个事实标准 ，用于标识某个通过超文本传输协议代理或负载均衡连接到某个网页服务器的客户端的原始互联网地址                                                                                                                                                                                                     | `X-Forwarded-For: client1, proxy1, proxy2` `X-Forwarded-For: 129.78.138.66, 129.78.64.103` |
| X-Forwarded-Host\[16\]                                         | 一个事实标准 ，用于识别客户端原本发出的 `Host` 请求头部\[17\]。                                                                                                                                                                                                                  | `X-Forwarded-Host: en.wikipedia.org:80` `X-Forwarded-Host: en.wikipedia.org`               |
| X-Forwarded-Proto\[18\]                                        | 一个事实标准，用于标识某个超文本传输协议请求最初所使用的协议。\[19\]                                                                                                                                                                                                                    | `X-Forwarded-Proto: https`                                                                 |
| Front-End-Https\[20\]                                          | 被微软的服务器和负载均衡器所使用的非标准头部字段。                                                                                                                                                                                                                                | `Front-End-Https: on`                                                                      |
| X-Http-Method-Override\[21\]                                   | 请求某个网页应用程序使用该协议头字段中指定的方法（一般是PUT或DELETE）来覆盖掉在请求中所指定的方法（一般是POST）。当某个浏览器或防火墙阻止直接发送PUT 或DELETE 方法时（注意，这可能是因为软件中的某个漏洞，因而需要修复，也可能是因为某个配置选项就是如此要求的，因而不应当设法绕过），可使用这种方式。                                                                                          | `X-HTTP-Method-Override: DELETE`                                                           |
| X-ATT-DeviceId\[22\]                                           | 使服务器更容易解读AT\&T设备User-Agent字段中常见的设备型号、固件信息。                                                                                                                                                                                                               | `X-Att-Deviceid: GT-P7320/P7320XXLPG`                                                      |
| X-Wap-Profile\[23\]                                            | 链接到互联网上的一个XML文件，其完整、仔细地描述了正在连接的设备。右侧以为AT\&T Samsung Galaxy S2提供的XML文件为例。                                                                                                                                                                                 | ` x-wap-profile:  `<http://wap.samsungmobile.com/uaprof/SGH-I777.xml>                      |
| Proxy-Connection\[24\]                                         | 该字段源于早期超文本传输协议版本实现中的错误。与标准的连接（Connection）字段的功能完全相同。                                                                                                                                                                                                      | `Proxy-Connection: keep-alive`                                                             |
| X-Csrf-Token\[25\]                                             | 用于防止 [跨站请求伪造](../Page/跨站请求伪造.md "wikilink")。 辅助用的头部有 `X-CSRFToken`\[26\] 或 `X-XSRF-TOKEN`\[27\]                                                                                                                                                          | `X-Csrf-Token: i8XNjC4b8KVok4uw5RftR38Wgp2BFwql`                                           |

## 回应字段

<table>
<thead>
<tr class="header">
<th><p>字段名</p></th>
<th><p>说明</p></th>
<th><p>例子</p></th>
<th><p>状态</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Access-Control-Allow-Origin</p></td>
<td><p>指定哪些网站可参与到跨来源资源共享过程中</p></td>
<td><p><code>Access-Control-Allow-Origin: *</code></p></td>
<td><p>临时</p></td>
</tr>
<tr class="even">
<td><p>Accept-Patch[28]</p></td>
<td><p>指定服务器支持的文件格式类型。</p></td>
<td><p><code>Accept-Patch: text/example;charset=utf-8</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Accept-Ranges</p></td>
<td><p>这个服务器支持哪些种类的部分内容范围</p></td>
<td><p><code>Accept-Ranges: bytes</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Age</p></td>
<td><p>这个对象在代理缓存中存在的时间，以秒为单位</p></td>
<td><p><code>Age: 12</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Allow</p></td>
<td><p>对于特定资源有效的动作。针对HTTP/405这一错误代码而使用</p></td>
<td><p><code>Allow: GET, HEAD</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/网页快照.md" title="wikilink">Cache-Control</a></p></td>
<td><p>向从服务器直到客户端在内的所有缓存机制告知，它们是否可以缓存这个对象。其单位为秒</p></td>
<td><p><code>Cache-Control: max-age=3600</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Connection</p></td>
<td><p>针对该连接所预期的选项 [29]</p></td>
<td><p><code>Connection: close</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Content-Disposition[30]</p></td>
<td><p>一个可以让客户端下载文件并建议文件名的头部。文件名需要用双引号包裹。</p></td>
<td><p><code>Content-Disposition: attachment; filename="fname.ext"</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Content-Encoding</p></td>
<td><p>在数据上使用的编码类型。参考 超文本传输协议压缩 。</p></td>
<td><p><code>Content-Encoding: gzip</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Content-Language</p></td>
<td><p>内容所使用的语言 [31]</p></td>
<td><p><code>Content-Language: da</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Content-Length</p></td>
<td><p>回应消息体的长度，以 字节 （8位为一字节）为单位</p></td>
<td><p><code>Content-Length: 348</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Content-Location</p></td>
<td><p>所返回的数据的一个候选位置</p></td>
<td><p><code>Content-Location: /index.htm</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Content-MD5</p></td>
<td><p>回应内容的二进制 MD5 散列，以 Base64 方式编码</p></td>
<td><p><code>Content-MD5: Q2hlY2sgSW50ZWdyaXR5IQ==</code></p></td>
<td><p>过时的[32]</p></td>
</tr>
<tr class="even">
<td><p>Content-Range</p></td>
<td><p>这条部分消息是属于某条完整消息的哪个部分</p></td>
<td><p><code>Content-Range: bytes 21010-47021/47022</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Content-Type</p></td>
<td><p>当前内容的<a href="../Page/MIME.md" title="wikilink">MIME类型</a></p></td>
<td><p><code>Content-Type: text/html; charset=utf-8</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Date</p></td>
<td><p>此条消息被发送时的日期和时间(按照 RFC 7231 中定义的“超文本传输协议日期”格式来表示)</p></td>
<td><p><code>Date: Tue, 15 Nov 1994 08:12:31 GMT</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/HTTP_ETag.md" title="wikilink">ETag</a></p></td>
<td><p>对于某个资源的某个特定版本的一个标识符，通常是一个 消息散列</p></td>
<td><p><code>ETag: "737060cd8c284d8af7ad3082f209582d"</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Expires</p></td>
<td><p>指定一个日期/时间，超过该时间则认为此回应已经过期</p></td>
<td><p><code>Expires: Thu, 01 Dec 1994 16:00:00 GMT</code></p></td>
<td><p>常设: 标准</p></td>
</tr>
<tr class="odd">
<td><p>Last-Modified</p></td>
<td><p>所请求的对象的最后修改日期(按照 RFC 7231 中定义的“超文本传输协议日期”格式来表示)</p></td>
<td><p><code>Last-Modified: Tue, 15 Nov 1994 12:45:26 GMT</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Link</p></td>
<td><p>用来表达与另一个资源之间的类型关系，此处所说的类型关系是在 RFC 5988 中定义的</p></td>
<td><p><code>Link: </code></feed><code>; rel="alternate"</code>[33]</p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/HTTP_Location.md" title="wikilink">Location</a></p></td>
<td><p>用来 进行重定向，或者在创建了某个新资源时使用。</p></td>
<td><p><code>Location: http://www.w3.org/pub/WWW/People.html</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>P3P</p></td>
<td><p>用于支持设置<a href="../Page/P3P.md" title="wikilink">P3P策略</a>，标准格式为“<code>P3P:CP="your_compact_policy"</code>”。然而P3P规范并不成功，[34]大部分现代浏览器没有完整实现该功能，而大量网站也将该值设为假值，从而足以用来欺骗浏览器的P3P插件功能并授权给第三方Cookies。</p></td>
<td><p><code>P3P: CP="This is not a P3P policy!</code><code>See http://www.google.com/support/accounts/bin/answer.py?hl=en&amp;answer=151657 for more info."</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Pragma</p></td>
<td><p>与具体的实现相关，这些字段可能在请求/回应链中的任何时候产生多种效果。</p></td>
<td><p><code>Pragma: no-cache</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Proxy-Authenticate</p></td>
<td><p>要求在访问代理时提供身份认证信息。</p></td>
<td><p><code>Proxy-Authenticate: Basic</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/HTTP公钥固定.md" title="wikilink">Public-Key-Pins</a>[35]</p></td>
<td><p>用于缓解<a href="../Page/中间人攻击.md" title="wikilink">中间人攻击</a>，声明网站认证使用的<a href="../Page/传输层安全协议.md" title="wikilink">传输层安全协议证书的散列值</a></p></td>
<td><p><code>Public-Key-Pins: max-age=2592000; pin-sha256="E9CZ9INDbd+2eRQozYqqbQ2yXLVKB9+xcprMF+44U1g=";</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Refresh</p></td>
<td><p>用于设定可定时的重定向跳转。右边例子设定了5秒后跳转至“<code>http://www.w3.org/pub/WWW/People.html</code>”。</p></td>
<td><p><code>Refresh: 5; url=http://www.w3.org/pub/WWW/People.html</code></p></td>
<td><p>专利并非标准 Netscape实现的扩展，但大部分网页浏览器也支持。</p></td>
</tr>
<tr class="odd">
<td><p>Retry-After</p></td>
<td><p>如果某个实体临时不可用，则，此协议头用来告知客户端日后重试。其值可以是一个特定的时间段(以秒为单位)或一个超文本传输协议日期。 [36]</p></td>
<td><ul>
<li>Example 1: <code>Retry-After: 120</code></li>
<li>Example 2: <code>Retry-After: Fri, 07 Nov 2014 23:59:59 GMT</code></li>
</ul></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Server</p></td>
<td><p>服务器的名字</p></td>
<td><p><code>Server: Apache/2.4.1 (Unix)</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Set-Cookie</p></td>
<td><p><a href="../Page/Cookie.md" title="wikilink">HTTP cookie</a></p></td>
<td><p><code>Set-Cookie: UserID=JohnDoe; Max-Age=3600; Version=1</code></p></td>
<td><p>常设: 标准</p></td>
</tr>
<tr class="even">
<td><p>Status</p></td>
<td><p>通用网关接口 协议头字段，用来说明当前这个超文本传输协议回应的 状态 。普通的超文本传输协议回应，会使用单独的“状态行”（"Status-Line"）作为替代，这一点是在 RFC 7230 中定义的。 [37]</p></td>
<td><p><code>Status: 200 OK</code></p></td>
<td><p>Not listed as a <a href="http://www.iana.org/assignments/message-headers/message-headers.xml">registered field name</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/HTTP严格传输安全.md" title="wikilink">Strict-Transport-Security</a></p></td>
<td><p>HTTP 严格传输安全这一头部告知客户端缓存这一强制 HTTPS 策略的时间，以及这一策略是否适用于其子域名。</p></td>
<td><p><code>Strict-Transport-Security: max-age=16070400; includeSubDomains</code></p></td>
<td><p>常设: 标准</p></td>
</tr>
<tr class="even">
<td><p>Trailer</p></td>
<td><p>这个头部数值指示了在这一系列头部信息由由<a href="../Page/分块传输编码.md" title="wikilink">分块传输编码编码</a>。</p></td>
<td><p><code>Trailer: Max-Forwards</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Transfer-Encoding</p></td>
<td><p>用来将实体安全地传输给用户的编码形式。当前定义的方法包括：分块（chunked）、compress、deflate、gzip和identity。</p></td>
<td><p><code>Transfer-Encoding: chunked</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Upgrade</p></td>
<td><p>要求客户端升级到另一个协议。</p></td>
<td><p><code>Upgrade: HTTP/2.0, SHTTP/1.3, IRC/6.9, RTA/x11</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Vary</p></td>
<td><p>告知下游的代理服务器，应当如何对未来的请求协议头进行匹配，以决定是否可使用已缓存的回应内容而不是重新从原始服务器请求新的内容。</p></td>
<td><p><code>Vary: *</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>Via</p></td>
<td><p>告知代理服务器的客户端，当前回应是通过什么途径发送的。</p></td>
<td><p><code>Via: 1.0 fred, 1.1 example.com (Apache/1.1)</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>Warning</p></td>
<td><p>一般性的警告，告知在实体内容体中可能存在错误。</p></td>
<td><p><code>Warning: 199 Miscellaneous warning</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="even">
<td><p>WWW-Authenticate</p></td>
<td><p>表明在请求获取这个实体时应当使用的认证模式。</p></td>
<td><p><code>WWW-Authenticate: Basic</code></p></td>
<td><p>常设</p></td>
</tr>
<tr class="odd">
<td><p>X-Frame-Options[38]</p></td>
<td><p><a href="../Page/点击劫持.md" title="wikilink">点击劫持保护</a>：</p>
<ul>
<li><code>deny</code>：该页面不允许在 frame 中展示，即使是同域名内。</li>
<li><code>sameorigin</code>：该页面允许同域名内在 frame 中展示。</li>
<li><code>allow-from </code><em><code>uri</code></em>：该页面允许在指定uri的 frame 中展示。</li>
<li><code>allowall</code>：允许任意位置的frame显示，非标准值。</li>
</ul></td>
<td><p><code>X-Frame-Options: deny</code></p></td>
<td><p>过时的[39]</p></td>
</tr>
</tbody>
</table>

### 常见的非标准回应字段

<table>
<thead>
<tr class="header">
<th><p>字段名</p></th>
<th><p>说明</p></th>
<th><p>示例</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>X-XSS-Protection[40]</p></td>
<td><p>跨站脚本攻击 （XSS）过滤器</p></td>
<td><p><code>X-XSS-Protection: 1; mode=block</code></p></td>
</tr>
<tr class="even">
<td><p><span class="nowrap" contenteditable="false">Content-Security-Policy</span>, <span class="nowrap" contenteditable="false"><em>X-Content-Security-Policy</em></span><span class="nowrap" contenteditable="false"></span>, <span class="nowrap" contenteditable="false"><em>X-WebKit-CSP</em></span><span class="nowrap" contenteditable="false"></span>[41]</p></td>
<td><p>内容安全策略定义。</p></td>
<td><p><code>X-WebKit-CSP: default-src 'self'</code></p></td>
</tr>
<tr class="odd">
<td><p>X-Content-Type-Options[42]</p></td>
<td><p>唯一允许的数值为"nosniff"，防止 <a href="../Page/Internet_Explorer.md" title="wikilink">Internet Explorer</a> 对文件进行MIME类型嗅探。这也对 <a href="../Page/Google_Chrome.md" title="wikilink">Google Chrome</a> 下载扩展时适用。[43]</p></td>
<td><p><code>X-Content-Type-Options: nosniff</code></p></td>
</tr>
<tr class="even">
<td><p>X-Powered-By[44]</p></td>
<td><p>表明用于支持当前网页应用程序的技术（例如：PHP）（版本号细节通常放置在 X-Runtime 或 X-Version 中）</p></td>
<td><p><code>X-Powered-By: PHP/5.4.0</code></p></td>
</tr>
<tr class="odd">
<td><p>X-UA-Compatible[45]</p></td>
<td><p>推荐指定的渲染引擎（通常是向后兼容模式）来显示内容。也用于激活 Internet Explorer 中的 <a href="../Page/Google_Chrome_Frame.md" title="wikilink">Chrome Frame</a>。</p></td>
<td><p><code>X-UA-Compatible: IE=EmulateIE7</code><br />
<code>X-UA-Compatible: IE=edge</code><br />
<code>X-UA-Compatible: Chrome=1</code></p></td>
</tr>
<tr class="even">
<td><p>X-Content-Duration[46]</p></td>
<td><p>指出音视频的长度，单位为秒。只受Gecko内核浏览器支持。</p></td>
<td><p><code>X-Content-Duration: 42.666</code></p></td>
</tr>
</tbody>
</table>

## 参见

  - [cookie](../Page/cookie.md "wikilink")

## 参考文献

## 外部链接

  - [Headers: Permanent Message Header Field
    Names](http://www.iana.org/assignments/message-headers/message-headers.xml#perm-headers%7CMessage)
  - RFC 6638: 废除给非标准参数加上前缀 X-
  - RFC 7230: Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and
    Routing
  - RFC 7231: Hypertext Transfer Protocol (HTTP/1.1): Semantics and
    Content
  - RFC 7232: Hypertext Transfer Protocol (HTTP/1.1): Conditional
    Requests
  - RFC 7233: Hypertext Transfer Protocol (HTTP/1.1): Range Requests
  - RFC 7234: Hypertext Transfer Protocol (HTTP/1.1): Caching
  - RFC 7235: Hypertext Transfer Protocol (HTTP/1.1): Authentication
  - RFC 2965: IETF HTTP State Management Mechanism RFC
  - [HTTP/1.1 headers from a web server point of
    view](http://www.and.org/texts/server-http)
  - [HTTP Request Header
    Viewer](https://web.archive.org/web/20151101110820/http://myhttp.info/)
  - [HTTP Response Header Viewer](http://viewdns.info/httpheaders/) -
    Retrieves the HTTP response headers of any domain.
  - [Internet Explorer and Custom HTTP Headers - EricLaw's IEInternals -
    Site Home - MSDN
    Blogs](http://blogs.msdn.com/b/ieinternals/archive/2009/06/30/internet-explorer-custom-http-headers.aspx)
  - [crwlr.net - HTTP Header index](http://crwlr.net/)
  - [HTTP Header with
    Privacyinfo](https://web.archive.org/web/20121122100219/http://www.privacyinfo.org/http-headers)
    - Display your HTTP request and response headers

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")

1.  <cite class="citation web" contenteditable="false">["Hypertext
    Transfer Protocol (HTTP/1.1): Message Syntax and
    Routing"](../Page/rfc:7230#section-3.2.4.md "wikilink").
    ietf.org<span class="reference-accessdate">. </span></cite>
2.
3.
4.
5.
6.
7.  <cite class="citation web" contenteditable="false">["core - Apache
    HTTP
    Server"](https://web.archive.org/web/20120509104709/https://httpd.apache.org/docs/2.3/mod/core.html#limitrequestfieldsize).
    </cite>
8.  <cite class="citation web" contenteditable="false">["Hypertext
    Transfer Protocol (HTTP/1.1): Message Syntax and
    Routing"](../Page/rfc:7230#section-6.1.md "wikilink"). </cite>
9.  <cite class="citation web" contenteditable="false">["Hypertext
    Transfer Protocol (HTTP/1.1): Semantics and
    Content"](../Page/rfc:7231#appendix-B.md "wikilink")<span class="reference-accessdate">.
    </span></cite>
10. <cite class="citation web" contenteditable="false">["Hypertext
    Transfer Protocol (HTTP/1.1): Message Syntax and
    Routing"](../Page/rfc:7230#section-5.4.md "wikilink"). </cite>
11. “引导者”（“referrer”）这个单词，在RFC
    中被拼错了，因此在大部分的软件实现中也拼错了，以至于，错误的拼法成为了标准的用法，还被当成了正确的术语。
12. <cite class="citation web" contenteditable="false">["Try out the "Do
    Not Track" HTTP
    header"](http://blog.sidstamm.com/2011/01/try-out-do-not-track-http-header.html)<span class="reference-accessdate">.
    </span></cite>
13. IETF [Do Not Track: A Universal Third-Party Web Tracking Opt
    Out](http://tools.ietf.org/html/draft-mayer-do-not-track-00) March
    7, 2011
14. W3C [Tracking Preference Expression
    (DNT)](http://www.w3.org/2011/tracking-protection/drafts/tracking-dnt.html),
    January 26, 2012
15. <cite class="citation web" contenteditable="false">Amos Jeffries
    (2010-07-02). </cite>
16. <cite class="citation web" contenteditable="false">The Apache
    Software Foundation. ["mod_proxy - Apache HTTP Server
    Version 2.2"](http://httpd.apache.org/docs/2.2/mod/mod_proxy.html#x-headers)<span class="reference-accessdate">.
    </span></cite>
17. 因为反向代理往往修改这个头部
18. <cite class="citation web" contenteditable="false">Dave Steinberg
    (2007-04-10). </cite>
19. 在反向代理(负载均衡)上，即使最初发往该反向代理的请求类型是安全的超文本传输协议（HTTPS），该反向代理也仍然可能会使用超文本传输协议（HTTP）来与网页服务器通信。谷歌客户端在与谷歌服务器通信时会使用该协议头的一个替代形式（X-ProxyUser-Ip）。
20. <cite class="citation web" contenteditable="false">\[<http://technet.microsoft.com/en-us/library/aa997519(v=exchg.65>).aspx
    "Helping to Secure Communication: Client to Front-End Server"\].
    2006-07-27<span class="reference-accessdate">. </span></cite>
21. <cite class="citation web" contenteditable="false">["OpenSocial Core
    API Server
    Specification 2.5.1"](http://opensocial.github.io/spec/2.5.1/Core-API-Server.xml#rfc.section.2.1.1.1)<span class="reference-accessdate">.
    </span></cite>
22. <cite class="citation web" contenteditable="false">["ATT Device
    ID"](http://developer.att.com/developer/forward.jsp?passedItemId=5300270)<span class="reference-accessdate">.
    </span></cite>
23. <cite class="citation web" contenteditable="false">["WAP
    Profile"](http://www.developershome.com/wap/detection/detection.asp?page=profileHeader)<span class="reference-accessdate">.
    </span></cite>
24. <cite class="citation web" contenteditable="false">["The
    Proxy-Connection: header is a mistake in how some web browsers use
    HTTP."](http://homepage.ntlworld.com/jonathan.deboynepollard/FGA/web-proxy-connection-header.html)
    </cite>
25. <cite class="citation web" contenteditable="false">["SAP Cross-Site
    Request Forgery
    Protection"](https://help.sap.com/saphelp_nw74/helpdata/en/b3/5c22518bc72214e10000000a44176d/content.htm).
    </cite>
26. <cite class="citation web" contenteditable="false">["Django Cross
    Site Request Forgery
    protection"](https://docs.djangoproject.com/en/1.7/ref/contrib/csrf/).
    </cite>
27. <cite class="citation web" contenteditable="false">["Angular Cross
    Site Request Forgery (XSRF)
    Protection"](https://docs.angularjs.org/api/ng/service/$http#cross-site-request-forgery-xsrf-protection).
    </cite>。
28. <cite class="citation web" contenteditable="false">["RFC
    5789"](../Page/rfc:5789#section-3.1.md "wikilink")<span class="reference-accessdate">.
    </span></cite>
29. <cite class="citation web" contenteditable="false">["Hypertext
    Transfer Protocol (HTTP/1.1): Message Syntax and
    Routing"](../Page/rfc:7230#section-6.1.md "wikilink"). </cite>
30. <cite class="citation web" contenteditable="false">["RFC
    6266"](../Page/rfc:6266.md "wikilink")<span class="reference-accessdate">.
    </span></cite>
31. [<https://tools.ietf.org/html/rfc7231#section-3.1.3.2>](../Page/rfc:7231#section-3.1.3.2.md "wikilink")<span>[<font size="1"><font color="black">(</font><u><font color="#CC0000">123cha</font></u><font color="black">)</font></font>](http://www.123cha.com/ip/?q=)</span>
32. <cite class="citation web" contenteditable="false">["Hypertext
    Transfer Protocol (HTTP/1.1): Semantics and
    Content"](../Page/rfc:7231#appendix-B.md "wikilink")<span class="reference-accessdate">.
    </span></cite>
33. [Indicate the canonical version of a URL by responding with the Link
    rel="canonical" HTTP
    header](http://support.google.com/webmasters/bin/answer.py?hl=en&answer=139394)
    Retrieved: 2012-02-09
34. W3C [P3P Work Suspended](http://www.w3.org/P3P)
35. <cite class="citation web" contenteditable="false">["Public Key
    Pinning Extension for
    HTTP"](http://www.rfc-editor.org/rfc/rfc7469.txt). </cite>
36. <cite class="citation web" contenteditable="false">["Hypertext
    Transfer Protocol (HTTP/1.1): Semantics and
    Content"](../Page/rfc:7231#section-7.1.3.md "wikilink")<span class="reference-accessdate">.
    </span></cite>
37. <cite class="citation web" contenteditable="false">["Hypertext
    Transfer Protocol (HTTP/1.1): Message Syntax and
    Routing"](../Page/rfc:7230#section-3.1.2.md "wikilink")<span class="reference-accessdate">.
    </span></cite>
38. <cite class="citation web" contenteditable="false">["HTTP Header
    Field X-Frame-Options"](../Page/rfc:7034.md "wikilink"). </cite>
39. <cite class="citation web" contenteditable="false">["Content
    Security Policy
    Level 2"](http://www.w3.org/TR/CSP11/#frame-ancestors-and-frame-options)<span class="reference-accessdate">.
    </span></cite>
40. <cite class="citation web" contenteditable="false">Eric Lawrence
    (2008-07-02). </cite>
41. <cite class="citation web" contenteditable="false">["Content
    Security Policy"](http://www.w3.org/TR/CSP/). </cite>
42. <cite class="citation web" contenteditable="false">Eric Lawrence
    (2008-09-03). </cite>
43. <cite class="citation web" contenteditable="false">["Hosting -
    Google Chrome Extensions - Google
    Code"](http://code.google.com/chrome/extensions/hosting.html)<span class="reference-accessdate">.
    </span></cite>
44. <cite class="citation web" contenteditable="false">["Why does
    ASP.](http://stackoverflow.com/questions/1288338/why-does-asp-net-framework-add-the-x-powered-byasp-net-http-header-in-response)</cite>
45. <cite class="citation web" contenteditable="false">["Defining
    Document Compatibility: Specifying Document Compatibility
    Modes"](http://msdn.microsoft.com/en-us/library/ie/cc288325%28v=vs.85%29.aspx#SetMode).
    2011-04-01<span class="reference-accessdate">. </span></cite>
46. <cite class="citation web" contenteditable="false">["Configuring
    servers for Ogg
    media"](https://developer.mozilla.org/en-US/docs/Web/HTTP/Configuring_servers_for_Ogg_media#Serve_X-Content-Duration_headers).
    2014-05-26<span class="reference-accessdate">. </span></cite>