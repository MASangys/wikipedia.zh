**libevent**是一個[异步](../Page/异步.md "wikilink")[事件處理](../Page/事件.md "wikilink")[軟體](../Page/軟體.md "wikilink")[函式庫](../Page/函式庫.md "wikilink")，以[BSD許可證发布](../Page/BSD許可證.md "wikilink")。

libevent提供了一組[應用程序編程接口](../Page/應用程序編程接口.md "wikilink")（API），讓程式設計師可以設定某些事件發生時所執行的[函式](../Page/函式.md "wikilink")，也就是說，libevent可以用來取代[網路](../Page/網路.md "wikilink")[伺服器所使用的](../Page/伺服器.md "wikilink")[事件循环檢查框架](../Page/事件循环.md "wikilink")。

由於可以省去對網路的處理，且擁有不錯的效能，有些軟體使用libevent作為網路底層的函式庫，如：[memcached](../Page/memcached.md "wikilink")、[Tor](../Page/Tor.md "wikilink")。

## 支持级别

目前libevent支持以下的方式判斷IO事件：

  - **poll(2)**
  - **select(2)**

<!-- end list -->

  -
    幾乎所有的[Unix平台都有提供的函式](../Page/Unix.md "wikilink")。

<!-- end list -->

  - **/dev/pool**

<!-- end list -->

  -
    以[Solaris平台為主](../Page/Solaris.md "wikilink")。

<!-- end list -->

  - **kqueue(2)**

<!-- end list -->

  -
    以[BSD平台為主](../Page/BSD.md "wikilink")。

<!-- end list -->

  - **epoll(2)**

<!-- end list -->

  -
    以[Linux平台為主](../Page/Linux.md "wikilink")。

## 主要版本

  - libevent 0.1（2000年11月4日）：第一個公開版本。
  - libevent 1.0（2004年12月5日），支持多[线程](../Page/线程.md "wikilink")。
  - libevent 1.1（2005年5月14日）。
  - libevent
    1.2（2006年10月15日）：支援[DNS](../Page/DNS.md "wikilink")[用戶端查詢函式](../Page/用戶端.md "wikilink")、支援[HTTP用戶端及](../Page/HTTP.md "wikilink")[伺服器端函式](../Page/伺服器.md "wikilink")。
  - libevent 1.3（2007年2月15日）：支援DNS伺服器端函式。
  - libevent
    1.4（2008年4月7日）：新的RPC子系統。將內部[資料結構由](../Page/資料結構.md "wikilink")[pull改為](../Page/pull.md "wikilink")[push](../Page/push.md "wikilink")（Heap）以增加效率。
  - libevent 2.0（2009年11月19日）。

## 外部連結

  - ，libevent的官方網站。

  - [The C10K
    problem](https://www.webcitation.org/6ICibHuyd?url=http://www.kegel.com/c10k.html)，討論連線數破萬時會遇到的瓶頸。

  - [Libevent 2.0 book](http://www.wangafu.net/~nickm/libevent-book/),
    libevent 2.0参考书籍

  - [liboop - another asynchronous event notification
    library](http://liboop.ofb.net/)，另一个异步事件库

  - [A benchmark by the libev author comparing libevent with libev, a
    similar
    library](http://libev.schmorp.de/bench.html)，libevent与一个类似的库libev之间比较的基准测试程序

[Category:事件_(计算机)](https://zh.wikipedia.org/wiki/Category:事件_\(计算机\) "wikilink")
[Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")
[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")