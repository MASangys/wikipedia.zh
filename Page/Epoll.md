**`epoll`**是[Linux核心的可擴展I](../Page/Linux.md "wikilink")/O事件通知機制\[1\]。於Linux
2.5.44首度登場，它設計目的旨在取代既有[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")
[`select(2)`與](../Page/Select_\(Unix\).md "wikilink")`poll(2)`[系統函式](https://zh.wikipedia.org/wiki/系统调用 "wikilink")，讓需要大量操作[檔案描述子的程式得以發揮更優異的性能](https://zh.wikipedia.org/wiki/檔案描述子 "wikilink")（舉例來說：舊有的系統函式所花費的時間複雜度為O(n)，`epoll`的時間複雜度O(log
n)）。`epoll`與[FreeBSD的](../Page/FreeBSD.md "wikilink")[`kqueue`類似](https://zh.wikipedia.org/wiki/Kqueue "wikilink")，底層都是由可組態的作業系統核心物件建構而成，並以檔案描述符(file
descriptor)的形式呈現於[使用者空間](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")。

## 程式介面

``` c
int epoll_create(int size);
```

建立`epoll`物件並回傳其描述子。

``` c
int epoll_ctl(int epfd, int op, int fd, struct epoll_event *event);
```

將要交由核心管控的檔案描述子加入epoll物件並設定觸發條件。

``` c
int epoll_wait(int epfd, struct epoll_event *events, int maxevents, int timeout);
```

等待已註冊之事件被觸發或計時終了。

## 觸發模式

`epoll`提供edge-triggered及level-triggered模式。在edge-trigger模式中，`epoll_wait`僅會在新的事件首次被加入`epoll`
物件時返回；於level-triggered模式下，`epoll_wait`在事件狀態未變更前將不斷被觸發。

舉例來說，倘若有一個已經於`epoll`註冊之[管線接獲資料](https://zh.wikipedia.org/wiki/Anonymous_pipe "wikilink")，`epoll_wait`將返回，並發出資料讀取的信號。現假設緩衝區的資料僅有部份被讀取並處理，在level-triggered模式下，任何對`epoll_wait`之呼叫都將即刻返回，直到緩衝區中的資料全部被讀取；然而，在edge-triggered的情境下，`epoll_wait`僅會於再次接收到新資料(亦即，新資料被寫入管線)時返回。

## 相關條目

  - [kqueue](https://zh.wikipedia.org/wiki/kqueue "wikilink")
  - [libevent](https://zh.wikipedia.org/wiki/libevent "wikilink")
  - [I/O Completion Ports](../Page/IOCP.md "wikilink")

## 參考資料

## 外部連結

  - [How to use epoll? A complete example in
    C](https://web.archive.org/web/20111116155750/https://banu.com/blog/2/how-to-use-epoll-a-complete-example-in-c/)
  - [ET or
    LT](http://www.cppentry.com/bencandy.php?fid-56-id-1083-page-1.htm/)
  - [epoll
    patch](http://www.xmailserver.org/linux-patches/nio-improve.html)

[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")
[Category:输入/输出](https://zh.wikipedia.org/wiki/Category:输入/输出 "wikilink")
[Category:排程](https://zh.wikipedia.org/wiki/Category:排程 "wikilink")

1.