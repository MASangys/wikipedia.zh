**Tomcat**是由Apache软件基金会属下[Jakarta项目开发的](../Page/Jakarta项目.md "wikilink")[Servlet容器](../Page/Servlet.md "wikilink")，按照[Sun
Microsystems提供的技术规范](../Page/Sun_Microsystems.md "wikilink")，实现了对[Servlet和](../Page/Servlet.md "wikilink")[JavaServer
Page](../Page/JavaServer_Page.md "wikilink")（[JSP](../Page/JSP.md "wikilink")）的支持，并提供了作为Web服务器的一些特有功能，如Tomcat管理和控制平台、安全域管理和Tomcat阀等。由于Tomcat本身也内含了[HTTP](../Page/HTTP.md "wikilink")[服务器](../Page/服务器.md "wikilink")，因此也可以视作单独的[Web服务器](../Page/Web服务器.md "wikilink")。但是，不能将Tomcat和[Apache
HTTP服务器混淆](../Page/Apache_HTTP服务器.md "wikilink")，[Apache
HTTP服务器是用C语言实现的HTTP](../Page/Apache_HTTP服务器.md "wikilink")[Web服务器](../Page/Web服务器.md "wikilink")；这两个HTTP
web server不是捆绑在一起的。Apache Tomcat包含了配置管理工具，也可以通过编辑XML格式的配置文件来进行配置。

## 环境

Tomcat提供了一个Jasper[编译器用以将JSP编译成对应的Servlet](../Page/编译器.md "wikilink")。

Tomcat的Servlet引擎通常与[Apache或者其他Web服务器一起工作](../Page/Apache.md "wikilink")。除了用于开发过程中的调试以及那些对速度和事务处理只有很小要求的用户，很少会将Tomcat单独作为Web服务器。但随着版本的更新，正有越来越多的用户将其单独作为Web服务器用以那些对速度和可靠性有较高要求的环境中。

## 开發状况

和其他Apache软件基金会旗下的项目一样，Tomcat是由该基金会的会员和其他志愿者开发与维护的，并且是一个被置于[Apache协议之下的](../Page/Apache协议.md "wikilink")[开源软件](../Page/开源软件.md "wikilink")。用户可以根据该协议免费获得其源代码及可执行文件。最初被发布出来的版本是Tomcat
3.0.x。

## 产品特性

### Tomcat 3.x

  - 符合Servlet 2.2和JSP 1.1规范
  - Servlet更新
  - 基础的HTTP功能

### Tomcat 4.x

  - 符合Servlet 2.3和JSP 1.2规范
  - Servlet容器被重新设计，并被命名为*Catalina*
  - JSP引擎被重新设计，并被命名为*Jasper*
  - 新的Coyote连接器
  - 支持[JMX](../Page/JMX.md "wikilink")，使用JSP和基于[Struts的管理系统](../Page/Struts.md "wikilink")

### Tomcat 5.x

  - 符合Servlet 2.4和JSP 2.0规范
  - 精简的[垃圾收集系统](../Page/垃圾收集_\(计算机\).md "wikilink")
  - 更快的JSP解析和改进过的[标签库处理](../Page/标签库.md "wikilink")
  - [Windows和](../Page/Windows.md "wikilink")[Unix的本地操作系统整合](../Page/Unix.md "wikilink")，可以将Tomcat注册为系统服务
  - [重构过的](../Page/重构.md "wikilink")[应用程序发布环境](../Page/应用程序.md "wikilink")

### Tomcat 6.x

  - 符合Servlet 2.5和JSP 2.1规范
  - 支持[统一表达式语言](../Page/统一表达式语言.md "wikilink")2.1
  - 设计运行在Java SE 5.0及以后版本上
  - 通过CometProcessor接口实现了对Comet的支持
  - 不同于过去版本，未集成管理员（admin）控制台

### Tomcat 7.x

  - 支持Servlet 3.0

### Tomcat 8.x

最新版的tomcat

## 版本历史

<table>
<caption>Apache Tomcat 版本历史</caption>
<thead>
<tr class="header">
<th><p>产品线</p></th>
<th><p>稳定日期</p></th>
<th><p>简介</p></th>
<th><p>最新版本</p></th>
<th><p>最新发布日期</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>1999</p></td>
<td><p>首发版本。合并了Sun捐赠的Java Web Server代码和ASF，并实现了<a href="../Page/Java_Servlet.md" title="wikilink">Servlet 2.2和</a><a href="../Page/JavaServer_Pages.md" title="wikilink">JSP 1.1规范</a>。</p></td>
<td><p>3.3.2</p></td>
<td><p>2004-03-09</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2002-09-06[1]</p></td>
<td><p>实现了<a href="../Page/Java_Servlet.md" title="wikilink">Servlet 2.3和</a><a href="../Page/JavaServer_Pages.md" title="wikilink">JSP 1.2规范</a>。</p></td>
<td><p>4.1.40</p></td>
<td><p>2009-06-25</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2003-12-03</p></td>
<td><p>实现了<a href="../Page/Java_Servlet.md" title="wikilink">Servlet 2.4</a>、<a href="../Page/JavaServer_Pages.md" title="wikilink">JSP 2.0以及</a><a href="../Page/EL_1.1.md" title="wikilink">EL 1.1规范</a>。</p></td>
<td><p>5.0.30</p></td>
<td><p>2004-08-30</p></td>
</tr>
<tr class="even">
<td><p>[2]</p></td>
<td><p>2004-11-10[3]</p></td>
<td><p>专为J2SE 5.0设计。包含在了Eclipse JDT中，并运行Tomcat在没有安装完整<a href="../Page/JDK.md" title="wikilink">JDK的情况下运行</a>。</p></td>
<td><p>5.5.36</p></td>
<td><p>2012-10-10</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2007-02-28[4]</p></td>
<td><p>实现了<a href="../Page/Java_Servlet.md" title="wikilink">Servlet 2.5</a>、<a href="../Page/JavaServer_Pages.md" title="wikilink">JSP 2.1以及</a><a href="../Page/EL_2.1.md" title="wikilink">EL 2.1规范</a>。</p></td>
<td><p>6.0.53</p></td>
<td><p>2017-04-07</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2011-01-14[5]</p></td>
<td><p>实现了<a href="../Page/Java_Servlet.md" title="wikilink">Servlet 3.0</a>、<a href="../Page/JavaServer_Pages.md" title="wikilink">JSP 2.2以及</a><a href="../Page/EL_2.2.md" title="wikilink">EL 2.2规范</a>。</p></td>
<td><p>7.0.92</p></td>
<td><p>2018-11-15</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2014-06-25[6]</p></td>
<td><p>实现了<a href="../Page/Java_Servlet.md" title="wikilink">Servlet 3.1</a>、<a href="../Page/JavaServer_Pages.md" title="wikilink">JSP 2.3</a>、<a href="../Page/EL_3.0.md" title="wikilink">EL 3.0</a>[7]以及<a href="../Page/WebSocket.md" title="wikilink">WebSocket规范</a>。</p></td>
<td><p>8.0.53</p></td>
<td><p>2018-07-05</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016-06-13</p></td>
<td><p>添加对<a href="../Page/HTTP/2.md" title="wikilink">HTTP/2</a>、<a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a> for 、TLS虚拟主机和JASPIC 1.1的支持。Created from Tomcat 9, following delays to Java EE 8.</p></td>
<td><p>8.5.38</p></td>
<td><p>2019-02-08</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018-01-18</p></td>
<td><p>实现了<a href="../Page/Java_Servlet.md" title="wikilink">Servlet 4.0</a>、<a href="../Page/JavaServer_Pages.md" title="wikilink">JSP 2.4 (TBD)</a>、<a href="../Page/EL_3.1_(TBD).md" title="wikilink">EL 3.1 (TBD)</a>[8]规范。</p></td>
<td><p>9.0.14</p></td>
<td><p>2018-12-12</p></td>
</tr>
<tr class="even">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 参考文献

## 外部链接

  - [Apache Tomcat官方网站（英文）](http://tomcat.apache.org)
  - [Tomcat项目的Wiki（英文）](http://wiki.apache.org/tomcat/FrontPage)
  - [Apache
    Tomcat官網鏡像站mirror.tw](https://web.archive.org/web/20090519004946/http://www.mirror.tw/pub/apache/tomcat/)
  - [Apache
    Tomcat官網台灣下載](https://web.archive.org/web/20090417163702/http://ftp.mirror.tw/pub/apache/tomcat/)

## 参见

  - [Apache软件基金会](../Page/Apache软件基金会.md "wikilink")
  - [Apache](../Page/Apache.md "wikilink")

{{-}}

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")
[Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink")
[Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")
[Category:用Java编程的网络服务器软件](https://zh.wikipedia.org/wiki/Category:用Java编程的网络服务器软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.  <http://tomcat.apache.org/whichversion.html>
8.  <https://tomcat.apache.org/whichversion.html>