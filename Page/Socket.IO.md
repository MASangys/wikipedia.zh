'''Socket.IO ''' 是一个面向实时 [web
应用的](https://zh.wikipedia.org/wiki/web_应用 "wikilink")
[JavaScript](../Page/JavaScript.md "wikilink")
库。它使得服务器和客户端之间实时双向的通信成为可能。他有两个部分：在[浏览器中运行的](https://zh.wikipedia.org/wiki/浏览器 "wikilink")[客户端库](https://zh.wikipedia.org/wiki/客户端 "wikilink")，和一个面向[Node.js的服务端库](../Page/Node.js.md "wikilink")。两者有着几乎一样的[API](https://zh.wikipedia.org/wiki/API "wikilink")。像Node.js一样，它也是[事件驱动的](https://zh.wikipedia.org/wiki/事件驱动程序设计 "wikilink").

Socket.IO
主要使用[WebSocket协议](../Page/WebSocket.md "wikilink")。但是如果需要的话，Socket.io可以回退到几种其它方法，例如[Adobe
Flash](../Page/Adobe_Flash.md "wikilink")
Sockets，[JSONP拉取](../Page/JSONP.md "wikilink")，或是[传统的AJAX拉取](https://zh.wikipedia.org/wiki/Comet_\(web技术\) "wikilink")，\[1\]并且在同时提供完全相同的接口。尽管它可以被用作WebSocket的[包装库](https://zh.wikipedia.org/wiki/wrapper_library "wikilink")，它还是提供了许多其它功能，比如广播至多个套接字，存储与不同客户有关的数据，和[异步IO操作](https://zh.wikipedia.org/wiki/asynchronous_I/O "wikilink")。

可以使用[npm](https://zh.wikipedia.org/wiki/Node包管理器 "wikilink")（node
软件包）工具来安装。\[2\]

## 优势

Socket.IO 会自动选择合适双向通信协议，仅仅需要程序员对套接字的概念有所了解。

## 劣势

Socket.io并不是一个基本的、独立的、能够回退到其它实时协议的WebSocket库，它实际上是一个依赖于其它实时传输协议的自定义实时传输协议的实现。该协议的协商部分使得支持标准WebSocket的客户端不能直接连接到Socket.io服务器，并且支持Socket.io的客户端也不能与非Socket.io框架的WebSocket或Comet服务器通信。因而，Socket.io要求客户端与服务器端均须使用该框架。

## 外部連結

  -
  -
## 參考

<references />

[Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink")
[Category:用JavaScript編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用JavaScript編程的自由軟體 "wikilink")

1.  <http://socket.io/#browser-support>
2.  <https://npmjs.org/package/socket.io>