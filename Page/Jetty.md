**Jetty**是一个纯粹的基于[Java](../Page/Java.md "wikilink")的[网页服务器和](https://zh.wikipedia.org/wiki/网页服务器 "wikilink")[Java Servlet](../Page/Java_Servlet.md "wikilink")[容器](https://zh.wikipedia.org/wiki/Web容器 "wikilink")。尽管网页服务器通常用来为人们呈现文档，但是Jetty通常在较大的软件框架中用于计算机与计算机之间的通信。Jetty作为[Eclipse基金会](../Page/Eclipse基金会.md "wikilink")的一部分，是一个[自由和](../Page/自由软件.md "wikilink")[开源项目](../Page/开放源代码.md "wikilink")。该网页服务器被用在[Apache ActiveMQ](../Page/Apache_ActiveMQ.md "wikilink")\[1\]、\[2\]、\[3\]、[Apache Maven](../Page/Apache_Maven.md "wikilink")、[Apache Spark](../Page/Apache_Spark.md "wikilink")、[Google App Engine](https://zh.wikipedia.org/wiki/Google_App_Engine "wikilink")\[4\]、[Eclipse](../Page/Eclipse.md "wikilink")\[5\]、[FUSE](../Page/FUSE.md "wikilink")\[6\]、[Twitter's Streaming API](https://zh.wikipedia.org/wiki/HOSEbird "wikilink")\[7\]、\[8\]等产品上。Jetty也是[Lift](../Page/Lift_\(Web應用框架\).md "wikilink")、[Eucalyptus](https://zh.wikipedia.org/wiki/Eucalyptus "wikilink")、、[Hadoop](https://zh.wikipedia.org/wiki/Hadoop "wikilink")、[I2P](../Page/I2P.md "wikilink")等开源项目的服务器。\[9\] Jetty支持最新的Java Servlet API（带[JSP](../Page/JSP.md "wikilink")的支持），支持[SPDY](../Page/SPDY.md "wikilink")和[WebSocket](../Page/WebSocket.md "wikilink")协议。

## 历史

Jetty最初是由软件工程师Greg Wilkins在[悉尼](../Page/悉尼.md "wikilink")的郊区开发的，原本是Mort Bay Server（莫特湾服务器）的一个HTTP服务器组件\[10\]\[11\]。

Jetty原名IssueTracker，而后更名为MBServler（Mort Bay SERVLet servER，Mort Bay Server的Servlet服务器），最终更名为Jetty。\[12\]

Jetty于1995年开始开发，版本1.x和2.x由MortBay托管。从2000年到2005年，Jetty版本3.x、4.x和5.x由sourceforge.net托管。2005年，整个Jetty项目转移到了codehaus.org。\[13\]。2009年，Jetty的核心部件已被转移到Eclipse.org，Codehaus.org继续提供Jetty版本7.x和8.x（不包含9.x）的集成、扩展和打包。\[14\]\[15\]2016年，Jetty的代码主仓库已经迁移到了[Github](https://github.com/eclipse/jetty.project)\[16\]，但是其仍然处于[Eclipse IP Process](https://www.eclipse.org/projects/dev_process/ip-process-in-cartoons.php)政策下开发。

| 版本    | 寄存于                           | Java版本    | 协议                                                                                                                       | Servlet版本     | JSP版本 | 状态                          |
| ----- | ----------------------------- | --------- | ------------------------------------------------------------------------------------------------------------------------ | ------------- | ----- | --------------------------- |
| 9.4.x | Eclipse\[17\]                 | 1.8       | HTTP/1.1, [HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink"), [WebSocket](../Page/WebSocket.md "wikilink") JSR356 | 3.1           | 2.3   | 稳定（自2016年12月12日）            |
| 9.3.x | Eclipse\[18\]                 | 1.8       | HTTP/1.1, [HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink"), [WebSocket](../Page/WebSocket.md "wikilink") JSR356 | 3.1           | 2.3   | 稳定（自2015年2月25日）\[19\]\[20\] |
| 9.2.x | Eclipse\[21\]                 | 1.7       | HTTP/1.1, [WebSocket](../Page/WebSocket.md "wikilink") JSR356, [SPDY](../Page/SPDY.md "wikilink")                        | 3.1           | 2.3   | 稳定（自2014年4月16日）\[22\]       |
| 9.1.x | Eclipse\[23\]                 | 1.7       | HTTP/1.1, [WebSocket](../Page/WebSocket.md "wikilink") JSR356, [SPDY](../Page/SPDY.md "wikilink")                        | 3.1           | 2.3   | 稳定（自2013年11月18日）\[24\]      |
| 9.0.x | Eclipse\[25\]                 | 1.7       | HTTP/1.1, [WebSocket](../Page/WebSocket.md "wikilink"), [SPDY](../Page/SPDY.md "wikilink")                               | 3.0（跟踪3.1版草案） | 2.2   | 稳定（自2013年3月8日）\[26\]        |
| 8.x   | Eclipse,\[27\] Codehaus\[28\] | 1.6       | HTTP/1.1, [WebSocket](../Page/WebSocket.md "wikilink"), [SPDY](../Page/SPDY.md "wikilink")                               | 3.0           | 2.1   | 产品生命周期结束                    |
| 7.x   | Eclipse,\[29\] Codehaus\[30\] | 1.5, J2ME | HTTP/1.1, [WebSocket](../Page/WebSocket.md "wikilink"), [SPDY](../Page/SPDY.md "wikilink")                               | 2.5           | 2.1   | 产品生命周期结束                    |
| 6.x   | Codehaus\[31\]                | 1.4–1.5   | HTTP/1.1                                                                                                                 | 2.5           | 2.0   | 已剔除\[32\]                   |
| 5.x   | Sourceforge                   | 1.2–1.5   | HTTP/1.1                                                                                                                 | 2.4           | 2.0   | 不推荐                         |
| 4.x   | Sourceforge                   | 1.2, J2ME | HTTP/1.1                                                                                                                 | 2.3           | 1.2   | 古老的                         |
| 3.x   | Sourceforge                   | 1.2       | HTTP/1.1 RFC2068                                                                                                         | 2.2           | 1.1   | 化石态                         |
| 2.x   | Mortbay                       | 1.1       | HTTP/1.0 RFC1945                                                                                                         | 2.1           | 1.0   | 传奇态                         |
| 1.x   | Mortbay                       | 1.0       | HTTP/1.0 RFC1945                                                                                                         |               |       | 神话态                         |

## 应用

Jetty在[嵌入式的Java应用程序中提供](../Page/嵌入式系统.md "wikilink")[Web服务](../Page/Web服务.md "wikilink")，其已经是[Eclipse IDE中的一个组成部分](../Page/Eclipse.md "wikilink")。它支持、JASPI、JMX、[JNDI](https://zh.wikipedia.org/wiki/JNDI "wikilink")、[OSGi](../Page/OSGi.md "wikilink")、[WebSocket](../Page/WebSocket.md "wikilink")和其他的Java技术。\[33\]

[Apache Hadoop是Jetty应用在框架中的典型范例](https://zh.wikipedia.org/wiki/Hadoop "wikilink")。 Hadoop在几个模块中使用Jetty作为Web服务器，其针对了不同的用途：

  - NameNode和JobTracker使用Jetty呈现管理页面。\[34\]
  - TaskTracker使用Jetty接收来自JobTracker的[映射](../Page/关联数组.md "wikilink")（Map），减少并洗牌（Shuffle）操作。\[35\]

Hadoop 0.23版后，TaskTracker的洗牌操作已从Jetty替换为[Netty](../Page/Netty.md "wikilink")。\[36\]

## 参见

  - [應用程式伺服器](https://zh.wikipedia.org/wiki/應用程式伺服器 "wikilink")
  - [Java EE](https://zh.wikipedia.org/wiki/Java_EE "wikilink")
  - [Java Servlet](../Page/Java_Servlet.md "wikilink")
  - [JavaServer Pages](https://zh.wikipedia.org/wiki/JavaServer_Pages "wikilink")

## 参考文献

## 外部链接

  - [Jetty主页](http://www.eclipse.org/jetty/)
  - [Jetty文档](http://www.eclipse.org/jetty/documentation/current/)
  - [Jetty开发者博客](https://web.archive.org/web/20130929233014/http://webtide.intalio.com/)
  - [Jetty Hosting](http://jelastic.com/jetty-hosting)

[Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink") [Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.

10. 莫特湾（Mort Bay）是巴尔曼（Balmain）的一部分。

11.

12.
13.

14. [About Jetty](http://docs.codehaus.org/display/JETTY/About+Jetty) , Located on Codehaus.

15. [About Jetty](http://www.eclipse.org/jetty/about.php) , Located on Eclipse.

16.

17.
18.
19.

20.

21.
22.

23.
24.

25.
26.

27.
28.
29.
30.
31.
32.

33.
34.

35.
36.