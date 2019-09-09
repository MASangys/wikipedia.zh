**Web服务器-{zh-cn:网关;zh-tw:閘道}-接口**（**Python Web Server Gateway Interface**，缩写为WSGI）是为[Python](../Page/Python.md "wikilink")语言定义的[Web服务器和](../Page/網頁伺服器.md "wikilink")[Web应用程序或](../Page/网络应用程序.md "wikilink")[框架之间的一种简单而通用的](../Page/Web应用框架.md "wikilink")[接口](../Page/介面_\(程式設計\).md "wikilink")。自从WSGI被开发出来以后，许多其它语言中也出现了类似接口。

## 发展背景

以前，如何选择合适的Web应用程序框架成为困扰Python初学者的一个问题，这是因为，一般而言，Web应用框架的选择将限制可用的[Web服务器的选择](https://zh.wikipedia.org/wiki/Web服务器 "wikilink")，反之亦然。那时的Python应用程序通常是为[CGI](../Page/通用网关接口.md "wikilink")，[FastCGI](../Page/FastCGI.md "wikilink")，[mod_python中的一个而设计](https://zh.wikipedia.org/wiki/mod_python "wikilink")，甚至是为特定Web服务器的自定义的API接口而设计的。

WSGI\[1\] （有时发音作'wiz-gee'）是作为Web服务器与Web应用程序或应用框架之间的一种低级别的[接口](../Page/介面_\(程式設計\).md "wikilink")，以提升可移植Web应用开发的共同点。WSGI是基于现存的[CGI标准而设计的](../Page/通用网关接口.md "wikilink")。

## 规范概览

WSGI區分為兩個部份：一為「[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")」或「-{zh-cn:网关;zh-tw:閘道}-」，另一為「應用程序」或「應用框架」。在處理一個WSGI請求時，伺服器會為應用程序提供環境資訊及一個回呼函數（Callback Function）。當應用程序完成處理請求後，透過前述的回呼函數，將結果回傳給伺服器。

所谓的 *WSGI -{zh-cn:[中间件](../Page/中间件.md "wikilink");zh-tw:[中介軟體](https://zh.wikipedia.org/wiki/中介軟體 "wikilink")}-*同时实现了API的两方，因此可以在WSGI服务器和WSGI应用之间起调解作用：从Web服务器的角度来说，-{zh-cn:中间件;zh-tw:中介軟體}-扮演应用程序，而从应用程序的角度来说，-{zh-cn:中间件;zh-tw:中介軟體}-扮演服务器。“-{zh-cn:中间件;zh-tw:中介軟體}-”组件可以执行以下功能：

  - 重写[环境变量](../Page/环境变量.md "wikilink")后，根据目标[URL](../Page/统一资源定位符.md "wikilink")，将请求消息路由到不同的应用对象。
  - 允许在一个[进程中同时运行多个应用程序或应用框架](../Page/行程.md "wikilink")。
  - [负载均衡](../Page/负载均衡.md "wikilink")和远程处理，通过在[网络上转发请求和响应消息](../Page/计算机网络.md "wikilink")。
  - 进行内容后处理，例如应用[XSLT](../Page/XSLT.md "wikilink")样式表。

## 示例程序

用[Python](../Page/Python.md "wikilink")语言写的一个符合WSGI的“[Hello World](../Page/Hello_World.md "wikilink")”应用程序如下所示：

``` python
def app(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    yield "Hello world!\n"
```

其中

  - 第一行定义了一个名为 app 的 callable，接受两个参数，environ 和 start_response，environ 是一个字典包含了 CGI 中的环境变量。
  - 第二行调用了start_response，状态指定为“200 OK”，消息头指定为内容类型是“text/plain”。start_response 也是一个 callable，接受两个必须的参数，status（HTTP 状态）和 response_headers（响应消息的头）。
  - 第三行将响应消息的消息体返回。

## 调用一个应用程序的示例

调用一个程序并获取它的应答消息的例子如下所示：

``` python
def call_application(app, environ):
    body = []
    status_headers = [None, None]
    def start_response(status, headers):
        status_headers[:] = [status, headers]
        return body.append
    app_iter = app(environ, start_response)
    try:
        for item in app_iter:
            body.append(item)
    finally:
        if hasattr(app_iter, 'close'):
            app_iter.close()
    return status_headers[0], status_headers[1], ''.join(body)

status, headers, body = call_application(app, {...environ...})
```

## WSGI兼容的应用和框架

支持WSGI的[Web应用框架](../Page/Web应用框架.md "wikilink")有很多：

  - [BlueBream](https://zh.wikipedia.org/wiki/BlueBream "wikilink")
  - bobo\[2\]
  - Bottle\[3\]
  - [CherryPy](https://zh.wikipedia.org/wiki/CherryPy "wikilink")
  - [Django](../Page/Django.md "wikilink")\[4\]
  - [Flask](../Page/Flask.md "wikilink")
  - [Google App Engine](../Page/Google_App_Engine.md "wikilink")'s webapp2
  - [Gunicorn](http://gunicorn.org/)
  - prestans\[5\]
  - [Pylons](https://zh.wikipedia.org/wiki/Pylons_project "wikilink")
  - [Pyramid](https://zh.wikipedia.org/wiki/Pyramid_\(web_framework\) "wikilink")
  - restlite\[6\]
  - [Tornado](https://zh.wikipedia.org/wiki/Tornado_\(web_server\) "wikilink")
  - [Trac](../Page/Trac.md "wikilink")
  - [TurboGears](../Page/TurboGears.md "wikilink")
  - [Uliweb](../Page/Uliweb.md "wikilink")\[7\]
  - [web.py](https://zh.wikipedia.org/wiki/web.py "wikilink")\[8\]
  - [web2py](https://zh.wikipedia.org/wiki/web2py "wikilink")
  - weblayer\[9\]
  - Werkzeug\[10\]

## 影响

  - 2003年： 原初的Python版本 \[11\]
  - 2007年： [Rack](https://zh.wikipedia.org/wiki/Rack "wikilink")，[Ruby](../Page/Ruby.md "wikilink")版本 \[12\]
  - 2008年： Lua [WSAPI](https://zh.wikipedia.org/wiki/WSAPI "wikilink")，[Lua](../Page/Lua.md "wikilink")版本 \[13\]
  - 2009年： [JSGI](https://zh.wikipedia.org/wiki/JSGI "wikilink")，[JavaScript](../Page/JavaScript.md "wikilink")版本 \[14\]
  - 2009年： [PSGI](https://zh.wikipedia.org/wiki/PSGI "wikilink")，[Perl](../Page/Perl.md "wikilink")版本 \[15\]
  - 2010年： [Hack](https://zh.wikipedia.org/wiki/Hack "wikilink")，[Haskell](../Page/Haskell.md "wikilink")版本 \[16\]

## 注释

## 参考文献

## 外部連結

  - [PEP 333 -- Python Web Server Gateway Interface v1.0](http://www.python.org/dev/peps/pep-0333/)
  - [PEP 3333 -- Python Web Server Gateway Interface v1.0.1](http://www.python.org/dev/peps/pep-3333/)
  - [WSGI metaframework](https://web.archive.org/web/20060202222753/http://pythonpaste.org/)
  - [关于WSGI的Wiki网站](http://wsgi.org/)
  - [WSGI教程](http://webpython.codepoint.net/wsgi)
  - [Hoxide · 2006-03-03 · WSGI简介](https://archive.is/20060422184652/http://cvs.woodpecker.org.cn/svn/woodpecker/pureprolog/trunk/essay/wsgiinto/wsgi_into.html)
  - [啄木鸟关于wsgi的介绍](http://wiki.woodpecker.org.cn/moin/WSGI)

{{-}}

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:Python](https://zh.wikipedia.org/wiki/Category:Python "wikilink")

1.  [PEP 3333](http://www.python.org/dev/peps/pep-3333/), Python Web Server Gateway Interface v1.0
2.
3.
4.
5.
6.
7.
8.
9.
10.
11. [1](http://www.python.org/dev/peps/pep-0333/) WSGI
12.  Rack接口
13. [2](http://keplerproject.github.com/wsapi/index.html) WSAPI接口
14. [3](http://wiki.commonjs.org/wiki/JSGI) JSGI接口
15. [4](http://search.cpan.org/~miyagawa/PSGI/PSGI.pod) PSGI接口
16. [5](http://hackage.haskell.org/package/hack) Hack接口