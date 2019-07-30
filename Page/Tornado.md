**Tornado**全称**Tornado Web Server**，是一个用[Python](../Page/Python.md "wikilink")语言写成的[Web服务器兼](https://zh.wikipedia.org/wiki/Web服务器 "wikilink")[Web应用框架](../Page/Web应用框架.md "wikilink")，由FriendFeed公司在自己的网站[FriendFeed](../Page/FriendFeed.md "wikilink")中使用，被[Facebook](../Page/Facebook.md "wikilink")收购以后框架以[开源软件](../Page/开源软件.md "wikilink")形式开放给大众。

## 特点

  - 作为Web框架，是一个轻量级的Web框架，类似于另一个Python web 框架Web.py，其拥有异步非阻塞IO的处理方式。
  - 作为Web服务器，Tornado有较为出色的抗负载能力，官方用[nginx反向代理的方式部署Tornado和其它Python](https://zh.wikipedia.org/wiki/nginx "wikilink") web应用框架进行对比，结果最大浏览量超过第二名近40%。\[1\]

## 性能

Tornado有着优异的性能。它试图解决[C10k问题](https://zh.wikipedia.org/wiki/C10k问题 "wikilink")，即处理大于或等于一万的并发，下表是和一些其他Web框架与服务器的对比:

| 服务                                                            | 部署                                                                    | 请求/每秒 |
| ------------------------------------------------------------- | --------------------------------------------------------------------- | ----- |
| Tornado                                                       | [nginx](https://zh.wikipedia.org/wiki/nginx "wikilink"), 4进程          | 8213  |
| Tornado                                                       | 1个单线程进程                                                               | 3353  |
| [Django](../Page/Django.md "wikilink")                        | Apache/[mod_wsgi](https://zh.wikipedia.org/wiki/mod_wsgi "wikilink") | 2223  |
| web.py                                                        | Apache/mod_wsgi                                                      | 2066  |
| [CherryPy](https://zh.wikipedia.org/wiki/CherryPy "wikilink") | 独立                                                                    | 785   |

处理器为 AMD Opteron, 主频2.4GHz, 4核\[2\]

## 参见

  - [Facebook](../Page/Facebook.md "wikilink")
  - [FriendFeed](../Page/FriendFeed.md "wikilink")
  - [Python](../Page/Python.md "wikilink")

## 外部链接

  - [Tornado 主页](http://www.tornadoweb.org/)
  - [Tornado 中国镜像站点](http://www.tornadoweb.cn/)
  - [GitHub Project Page](https://www.webcitation.org/66mePajXS?url=https://github.com/facebook/tornado/wiki)
  - [Tornado Google Group](http://groups.google.com/group/python-tornado)

## 参考资料

[Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink") [Category:網頁伺服器](https://zh.wikipedia.org/wiki/Category:網頁伺服器 "wikilink") [Category:网站开发](https://zh.wikipedia.org/wiki/Category:网站开发 "wikilink") [Category:Python](https://zh.wikipedia.org/wiki/Category:Python "wikilink") [Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink")

1.
2.