**快速通用网关接口**（**Fast** **C**ommon **G**ateway
**I**nterface／**FastCGI**）是一种让交互程序与Web服务器通信的协议。FastCGI是早期[通用网关接口](../Page/通用网关接口.md "wikilink")（CGI）的增強版本。

FastCGI致力於減少[網頁伺服器與](../Page/網頁伺服器.md "wikilink")[CGI](../Page/通用网关接口.md "wikilink")[程式之間互動的開銷](../Page/计算机程序.md "wikilink")，從而使[伺服器可以同時處理更多的網頁請求](https://zh.wikipedia.org/wiki/伺服器 "wikilink")。

## 歷史

CGI使外部程式與Web伺服器之間交互成為可能。CGI程式運行在獨立的進程中，並對每個Web請求建立一個進程，這種方法非常容易實現，但效率很差，難以擴展。面對大量請求，進程的大量建立和消亡使操作系統性能大大下降。此外，由於地址空間無法共享，也限制了資源重用。

## 實現

与为每个请求创建一个新的进程不同，FastCGI使用持续的进程来处理一连串的请求。这些进程由FastCGI服务器管理，而不是web服务器。
当进来一个请求时，web服务器把[环境变量和这个页面请求通过一个](../Page/环境变量.md "wikilink")[socket比如FastCGI进程与web服务器](https://zh.wikipedia.org/wiki/socket "wikilink")（都位于本地）或者一个[TCP](../Page/传输控制协议.md "wikilink")
connection（FastCGI进程在远端的[server
farm](https://zh.wikipedia.org/wiki/server_farm "wikilink")）传递给FastCGI进程。

## \-{zh:实现;zh-hans:实现;zh-hant:實作;}-FastCGI的網頁伺服器

  - [Apache HTTP Server](../Page/Apache_HTTP_Server.md "wikilink")
    *(部分)*

      - 通過mod_fcgid模塊實現。這個模塊曾屬於第三方，但是在2009年被授予[ASF](https://zh.wikipedia.org/wiki/Apache_Software_Foundation "wikilink")，成為[Apache的一個子項目](../Page/Apache_HTTP_Server.md "wikilink")。
      - 一個較早的第三方模塊mod_fastcgi 也還在用。

  - [Cherokee HTTP Server](../Page/Cherokee_\(Web服务器\).md "wikilink")

  -   - 支持FastCGI的負載平衡
      - 支持[chrooted](https://zh.wikipedia.org/wiki/chroot "wikilink")
        FastCGI [伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")

  - [Lighttpd](../Page/Lighttpd.md "wikilink")

  - [Nginx](../Page/Nginx.md "wikilink")

  - [LiteSpeed Web
    Server](https://zh.wikipedia.org/wiki/LiteSpeed_Web_Server "wikilink")

  - [Microsoft
    IIS](https://zh.wikipedia.org/wiki/Microsoft_IIS "wikilink")

## 参见

  - [CGI](../Page/通用网关接口.md "wikilink")

## 外部链接

## 参照

[Category:網頁技術](https://zh.wikipedia.org/wiki/Category:網頁技術 "wikilink")
[Category:全球資訊網](https://zh.wikipedia.org/wiki/Category:全球資訊網 "wikilink")