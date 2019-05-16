**libevent**是一個[异步](https://zh.wikipedia.org/wiki/异步 "wikilink")[事件處理](https://zh.wikipedia.org/wiki/事件 "wikilink")[軟體](https://zh.wikipedia.org/wiki/軟體 "wikilink")[函式庫](../Page/函式庫.md "wikilink")，以[BSD許可證发布](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")。

libevent提供了一組[應用程序編程接口](https://zh.wikipedia.org/wiki/應用程序編程接口 "wikilink")（API），讓程式設計師可以設定某些事件發生時所執行的[函式](https://zh.wikipedia.org/wiki/函式 "wikilink")，也就是說，libevent可以用來取代[網路](https://zh.wikipedia.org/wiki/網路 "wikilink")[伺服器所使用的](https://zh.wikipedia.org/wiki/伺服器 "wikilink")[事件循环檢查框架](https://zh.wikipedia.org/wiki/事件循环 "wikilink")。

由於可以省去對網路的處理，且擁有不錯的效能，有些軟體使用libevent作為網路底層的函式庫，如：[memcached](https://zh.wikipedia.org/wiki/memcached "wikilink")、[Tor](../Page/Tor.md "wikilink")。

## 支持级别

目前libevent支持以下的方式判斷IO事件：

  - **poll(2)**
  - **select(2)**

<!-- end list -->

  -
    幾乎所有的[Unix平台都有提供的函式](https://zh.wikipedia.org/wiki/Unix "wikilink")。

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
    1.2（2006年10月15日）：支援[DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")[用戶端查詢函式](https://zh.wikipedia.org/wiki/用戶端 "wikilink")、支援[HTTP用戶端及](https://zh.wikipedia.org/wiki/HTTP "wikilink")[伺服器端函式](https://zh.wikipedia.org/wiki/伺服器 "wikilink")。
  - libevent 1.3（2007年2月15日）：支援DNS伺服器端函式。
  - libevent
    1.4（2008年4月7日）：新的RPC子系統。將內部[資料結構由](https://zh.wikipedia.org/wiki/資料結構 "wikilink")[pull改為](https://zh.wikipedia.org/wiki/pull "wikilink")[push](https://zh.wikipedia.org/wiki/push "wikilink")（Heap）以增加效率。
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