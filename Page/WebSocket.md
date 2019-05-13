**WebSocket**是一种在单个[TCP连接上进行](../Page/传输控制协议.md "wikilink")[全双工通信的协议](../Page/全双工.md "wikilink")。WebSocket通訊協定於2011年被[IETF定為標準RFC](../Page/Internet_Engineering_Task_Force.md "wikilink")
6455，并由RFC7936补充规范。WebSocket
[API也被](../Page/Application_programming_interface.md "wikilink")[W3C定為標準](../Page/World_Wide_Web_Consortium.md "wikilink")。

WebSocket使得客户端和服务器之间的数据交换变得更加简单，允许服务端主动向客户端推送数据。在WebSocket
API中，浏览器和服务器只需要完成一次握手，两者之间就直接可以建立持久性的连接，并进行双向数据传输。

## 背景

现在，很多网站为了实现[推送技术](../Page/推送技术.md "wikilink")，所用的技术都是[轮询](../Page/轮询.md "wikilink")。轮询是在特定的的时间间隔（如每1秒），由浏览器对服务器发出HTTP请求，然后由服务器返回最新的数据给客户端的浏览器。这种传统的模式带来很明显的缺点，即浏览器需要不断的向服务器发出请求，然而HTTP请求可能包含较长的[头部](../Page/HTTP头字段列表.md "wikilink")，其中真正有效的数据可能只是很小的一部分，显然这样会浪费很多的带宽等资源。

而比较新的技术去做轮询的效果是[Comet](../Page/Comet_\(web技术\).md "wikilink")。这种技术虽然可以双向通信，但依然需要反复发出请求。而且在Comet中，普遍采用的[长链接](../Page/HTTP持久链接.md "wikilink")，也会消耗服务器资源。

在这种情况下，[HTML5定义了WebSocket协议](../Page/HTML5.md "wikilink")，能更好的节省服务器资源和带宽，并且能够更实时地进行通讯。

Websocket使用ws或wss的[统一资源标志符](../Page/统一资源标志符.md "wikilink")，类似于[HTTPS](../Page/HTTPS.md "wikilink")，其中wss表示在[TLS之上的Websocket](../Page/TLS.md "wikilink")。如：

    ws://example.com/wsapi
    wss://secure.example.com/wsapi

Websocket使用和 HTTP 相同的 TCP
[端口](../Page/TCP/UDP端口列表.md "wikilink")，可以绕过大多数防火墙的限制。默认情况下，Websocket协议使用80端口；运行在TLS之上时，默认使用443端口。

## 优点

  - 较少的控制开销。在连接建立后，服务器和客户端之间交换数据时，用于协议控制的数据包头部相对较小。在不包含扩展的情况下，对于服务器到客户端的内容，此头部大小只有2至10[字节](../Page/字节.md "wikilink")（和数据包长度有关）；对于客户端到服务器的内容，此头部还需要加上额外的4字节的[掩码](../Page/掩码.md "wikilink")。相对于HTTP请求每次都要携带完整的头部，此项开销显著减少了。

<!-- end list -->

  - 更强的实时性。由于协议是全双工的，所以服务器可以随时主动给客户端下发数据。相对于HTTP请求需要等待客户端发起请求服务端才能响应，延迟明显更少；即使是和Comet等类似的[长轮询比较](../Page/长轮询.md "wikilink")，其也能在短时间内更多次地传递数据。

<!-- end list -->

  - 保持连接状态。与HTTP不同的是，Websocket需要先建立连接，这就使得其成为一种有状态的协议，之后通信时可以省略部分状态信息。而HTTP请求可能需要在每个请求都携带状态信息（如身份认证等）。

<!-- end list -->

  - 更好的二进制支持。Websocket定义了[二进制帧](../Page/二进制.md "wikilink")，相对HTTP，可以更轻松地处理二进制内容。

<!-- end list -->

  - 可以支持扩展。Websocket定义了扩展，用户可以扩展协议、实现部分自定义的子协议。如部分浏览器支持[压缩等](../Page/数据压缩.md "wikilink")。

<!-- end list -->

  - 更好的压缩效果。相对于[HTTP压缩](../Page/HTTP压缩.md "wikilink")，Websocket在适当的扩展支持下，可以沿用之前内容的[上下文](../Page/上下文.md "wikilink")，在传递类似的数据时，可以显著地提高压缩率。\[1\]

## 握手协议

WebSocket 是独立的、建立在 TCP 上的协议。

Websocket 通过 [HTTP](../Page/HTTP.md "wikilink")/1.1
协议的101[状态码进行握手](../Page/HTTP状态码.md "wikilink")。

为了建立Websocket连接，需要通过浏览器发出请求，之后服务器进行回应，这个过程通常称为“[握手](../Page/握手_\(技术\).md "wikilink")”（handshaking）。

### 例子

一个典型的Websocket握手请求如下：

客户端请求

    GET / HTTP/1.1
    Upgrade: websocket
    Connection: Upgrade
    Host: example.com
    Origin: http://example.com
    Sec-WebSocket-Key: sN9cRrP/n9NdMgdcy2VJFQ==
    Sec-WebSocket-Version: 13

服务器回应

    HTTP/1.1 101 Switching Protocols
    Upgrade: websocket
    Connection: Upgrade
    Sec-WebSocket-Accept: fFBooB7FAkLlXgRSz0BT3v4hq5s=
    Sec-WebSocket-Location: ws://example.com/

### 字段说明

  - Connection必须设置Upgrade，表示客户端希望连接升级。
  - Upgrade字段必须设置Websocket，表示希望升级到Websocket协议。
  - Sec-WebSocket-Key是随机的字符串，服务器端会用这些数据来构造出一个SHA-1的信息摘要。把“Sec-WebSocket-Key”加上一个特殊字符串“258EAFA5-E914-47DA-95CA-C5AB0DC85B11”，然后计算[SHA-1摘要](../Page/SHA-1.md "wikilink")，之后进行[BASE-64编码](../Page/BASE-64.md "wikilink")，将结果做为“Sec-WebSocket-Accept”头的值，返回给客户端。如此操作，可以尽量避免普通HTTP请求被误认为Websocket协议。
  - Sec-WebSocket-Version
    表示支持的Websocket版本。RFC6455要求使用的版本是13，之前草案的版本均应当弃用。
  - Origin字段是可选的，通常用来表示在浏览器中发起此Websocket连接所在的页面，类似于[Referer](../Page/HTTP来源地址.md "wikilink")。但是，与Referer不同的是，Origin只包含了协议和主机名称。
  - 其他一些定义在HTTP协议中的字段，如[Cookie等](../Page/Cookie.md "wikilink")，也可以在Websocket中使用。

## 浏览器

实现websocket的协议，浏览器扮演着一个很重要的角色。所有最新的浏览器支持最新规范（RFC
6455）的WebSocket协议。一个详细的测试报告\[2\]列出了这些浏览器支持的Websocket版本。

<table>
<caption>浏览器支持现状</caption>
<thead>
<tr class="header">
<th><p>协议</p></th>
<th><p>发布日期</p></th>
<th><p>IE</p></th>
<th><p>Firefox[3]（个人电脑）</p></th>
<th><p>Firefox (Android)</p></th>
<th><p>Chrome（个人电脑，手机）</p></th>
<th><p>Safari（Mac, iOS）</p></th>
<th><p>Opera（个人电脑，手机）</p></th>
<th><p>Android浏览器</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="http://tools.ietf.org/html/draft-hixie-thewebsocketprotocol-75">hixie-75</a></p></td>
<td><p>2010年2月4日</p></td>
<td></td>
<td></td>
<td></td>
<td><p>4</p></td>
<td><p>5.0.0</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://tools.ietf.org/html/draft-hixie-thewebsocketprotocol-76">hixie-76</a><br />
<a href="http://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-00">hybi-00</a></p></td>
<td><p>2010年5月10日，<br />
2010年5月23日</p></td>
<td></td>
<td><p>4.0（已禁用）</p></td>
<td></td>
<td><p>6</p></td>
<td><p>5.0.1</p></td>
<td><p>11.00（已禁用）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>7 <a href="http://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-07">hybi-07</a></p></td>
<td><p>2011年4月22日</p></td>
<td></td>
<td><p>6[4]<sup>1</sup></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>8 <a href="http://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-10">hybi-10</a></p></td>
<td><p>2011年7月11日</p></td>
<td></td>
<td><p>7[5]<sup>1</sup></p></td>
<td><p>7</p></td>
<td><p>14[6]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>13 RFC 6455</p></td>
<td><p>2011年12月</p></td>
<td><p>10[7]</p></td>
<td><p>11</p></td>
<td><p>11</p></td>
<td><p>16[8]</p></td>
<td><p>6</p></td>
<td><p>12.10[9]</p></td>
<td><p>4.4[10]</p></td>
</tr>
</tbody>
</table>

<sup>1</sup>基于Gecko
6–10版本的浏览器的WebSocket对象为“mozwebsocket”，\[11\]需要添加额外的代码。

## 服务器

在服务器方面，网上都有不同对websocket支持的服务器：

  - php - <http://code.google.com/p/phpwebsocket/>
  - jetty - <http://jetty.codehaus.org/jetty/（版本7开始支持websocket>）
  - netty - <http://www.jboss.org/netty>
  - ruby - <http://github.com/gimite/web-socket-ruby>
  - Kaazing -
    <https://web.archive.org/web/20100923224709/http://www.kaazing.org/confluence/display/KAAZING/Home>
  - Tomcat -
    [<http://tomcat.apache.org/（7.0.27支持websocket，建议用tomcat8，7.0.27中的接口已经过时>）](http://tomcat.apache.org/)
  - WebLogic -
    <http://www.oracle.com/us/products/middleware/cloud-app-foundation/weblogic/overview/index.html（12.1.2開始支持>）
  - node.js - <https://github.com/Worlize/WebSocket-Node>
  - node.js - <http://socket.io>
  - nginx - <http://nginx.com/>
  - mojolicious - <http://mojolicio.us/>
  - python - <https://github.com/abourget/gevent-socketio>
  - Django - <https://github.com/stephenmcd/django-socketio>
  - erlang - <https://github.com/ninenines/cowboy.git>

## 参考资料

<references />

[Category:網路術語](https://zh.wikipedia.org/wiki/Category:網路術語 "wikilink")
[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink")
[Category:Web_2.0](https://zh.wikipedia.org/wiki/Category:Web_2.0 "wikilink")
[Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")

1.  <https://tools.ietf.org/html/rfc7692>
2.
3.
4.
5.  [WebSockets - upgrade to
    ietf-07](https://bugzilla.mozilla.org/show_bug.cgi?id=640003#c91)\>
6.
7.
8.
9.
10.
11.