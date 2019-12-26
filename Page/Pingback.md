****是[網誌](../Page/網誌.md "wikilink")中用来通知其他网志系统文章被引用情况的一种手段，它出现完全是为了解决Trackback的诸多问题。Pingback可以译作“自动引用通知”，因为Pingback的使用是完全自动的\[1\]。3G博客网將其翻译为“广播”，是指计算机系统向外部发出引用信息，但也有人認為會與日常生活中的[廣播混淆](https://zh.wikipedia.org/wiki/廣播 "wikilink")。

當其他人連結至Web作者的網頁時，Web作者獲取通知的方法。這個方法使得Web作者可以追蹤什麼人連結至他的文章。有一些網誌軟體，如[WordPress](../Page/WordPress.md "wikilink")，具有當一篇文章出版的時候，自動pingback這篇文章中所有的連結的功能。

造字：ping-back：ping的回溯。

Ping網路上用來測試其他電腦是否存在的工具，取名字是聲納系統的聲音。

1.  Alice寫了一篇文章A
2.  Bob看了以後寫了一篇文章B評論A，文章B中有一個LinkA 指向A。（一般來說，B有連結至A，A並不知情）
3.  如何讓A自動知道有人連結到他？可以靠Bob寄信給Alice，或是B所在的伺服器ServerB的程式，自動剖析B上面的連結LinkA，自動通知LinkA所指的A所在的伺服器ServerA
4.  ServerA 自動在A的後面的引用清單加上B

Pingback与Trackback的主要区别在于\[2\]：

1.  Pingback使用XML-RPC协议，而trackback使用HTTP POST协议
2.  Pingback支持自动察觉，博客系统自动发现文章中的链接，并尝试使用Pingback方式通知这些链接；而Trackback必须手工输入所有链接
3.  Pingback发送的文章摘要是链接附近的文章内容，而Trackback则完全需要手工输入摘要

## 參考文獻

## 外部連結

  - [WordPress的Pingback和TrackBack机制及其优化](http://www.jeriffcheng.com/pingback-and-trackback-of-wordpress.html)

[Category:网志](https://zh.wikipedia.org/wiki/Category:网志 "wikilink") [Category:网络技术](https://zh.wikipedia.org/wiki/Category:网络技术 "wikilink")

1.
2.