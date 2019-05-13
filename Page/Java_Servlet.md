[JSPLife.svg](https://zh.wikipedia.org/wiki/File:JSPLife.svg "fig:JSPLife.svg")
**Servlet**（Server Applet），全称**Java
Servlet**，未有中文译文。是用[Java编写的](../Page/Java.md "wikilink")[服务器端](../Page/服务器.md "wikilink")[程序](../Page/程序.md "wikilink")。其主要功能在于交互式地浏览和修改数据，生成动态[Web内容](../Page/Web.md "wikilink")。狭义的Servlet是指Java语言实现的一个[接口](../Page/接口.md "wikilink")，广义的Servlet是指任何实现了这个Servlet接口的[類別](../Page/类_\(计算机科学\).md "wikilink")，一般情况下，人们将Servlet理解为后者。

Servlet运行于支持Java的[应用服务器中](../Page/应用服务器.md "wikilink")。从实现上讲，Servlet可以响应任何类型的请求，但绝大多数情况下Servlet只用来扩展基于[HTTP](../Page/HTTP.md "wikilink")[协议的](../Page/协议.md "wikilink")[Web服务器](../Page/Web服务器.md "wikilink")。

最早支持Servlet标准的是JavaSoft的Java Web
Server。此后，一些其它的基于Java的Web服务器开始支持标准的Servlet。

## 历史

| Servlet API 版本 | 发布日期                                                                          | 平台                   | 重要变化                                                                                                  |
| -------------- | ----------------------------------------------------------------------------- | -------------------- | ----------------------------------------------------------------------------------------------------- |
| Servlet 4.0    | [2017年9月](https://jcp.org/en/jsr/detail?id=369)                               | Java EE 8            | [HTTP/2](../Page/HTTP/2.md "wikilink")                                                                |
| Servlet 3.1    | [2013年5月](http://jcp.org/en/jsr/detail?id=340)                                | Java EE 7            | Non-blocking I/O, HTTP protocol upgrade mechanism ([WebSocket](../Page/WebSocket.md "wikilink"))\[1\] |
| Servlet 3.0    | [2009年12月](http://www.javaworld.com/javaworld/jw-02-2009/jw-02-servlet3.html) | Java EE 6, Java SE 6 | Pluggability, Ease of development, Async Servlet, Security, File Uploading                            |
| Servlet 2.5    | [2005年9月](http://www.javaworld.com/javaworld/jw-01-2006/jw-0102-servlet.html) | Java EE 5, Java SE 5 | Requires Java SE 5, supports annotation                                                               |
| Servlet 2.4    | [2003年11月](http://www.javaworld.com/jw-03-2003/jw-0328-servlet.html)          | J2EE 1.4, J2SE 1.3   | web.xml uses XML Schema                                                                               |
| Servlet 2.3    | [2001年8月](http://www.javaworld.com/jw-01-2001/jw-0126-servletapi.html)        | J2EE 1.3, J2SE 1.2   | Addition of `Filter`                                                                                  |
| Servlet 2.2    | [1999年8月](http://www.javaworld.com/jw-10-1999/jw-10-servletapi.html)          | J2EE 1.2, J2SE 1.2   | Becomes part of J2EE, introduced independent web applications in .war files                           |
| Servlet 2.1    | [1998年11月](http://www.javaworld.com/jw-12-1998/jw-12-servletapi.html)         | Unspecified          | First official specification, added `RequestDispatcher`, `ServletContext`                             |
| Servlet 2.0    |                                                                               | JDK 1.1              | Part of Java Servlet Development Kit 2.0                                                              |
| Servlet 1.0    | 1997年6月                                                                       |                      |                                                                                                       |

Servlet API 历史

## 工作模式

  - 客户端发送请求至服务器
  - 服务器启动并调用Servlet，Servlet根据客户端请求生成响应内容并将其传给服务器
  - 服务器将响应返回客户端
  - 其他

## 通用Servlet

一般來說，通用Servlet由javax.servlet.GenericServlet實作Servlet介面。程序设计人员可以通过使用或[继承这个类来实现通用Servlet应用](../Page/继承_\(计算机科学\).md "wikilink")。

### HttpServlet

javax.servlet.http.HttpServlet实现了专门用于响应[HTTP请求的Servlet](../Page/HTTP.md "wikilink")，提供了响应对应HTTP标准请求的doGet()、doPost()等方法。

## 生命周期

当servlet被部署在应用服务器中（应用服务器中用于管理Java组件的部分被抽象成为[容器](../Page/容器_\(计算机科学\).md "wikilink")）以后，由容器控制servlet的生命周期。除非特殊指定，否则在容器启动的时候，servlet是不会被加载的，servlet只会在第一次请求的时候被加载和实例化。servlet一旦被加载，一般不会从容器中删除，直至应用服务器关闭或重新启动。但当容器做記憶體回收动作时，servlet有可能被删除。也正是因为这个原因，第一次访问servlet所用的时间要大大多于以后访问所用的时间。

servlet在服务器的运行生命周期为，在第一次请求（或其实体被内存垃圾回收后再被访问）时被加载并执行一次初始化方法，跟着执行正式运行方法，之后会被常驻并每次被请求时直接执行正式运行方法，直到服务器关闭或被清理时执行一次销毁方法后实体销毁。

## 与JSP的关系

Java服务器页面（[JSP](../Page/JSP.md "wikilink")）是HttpServlet的扩展。由于HttpServlet大多是用来响应HTTP请求，并返回Web页面（例如[HTML](../Page/HTML.md "wikilink")、[XML](../Page/XML.md "wikilink")），所以不可避免地，在编写servlet时会涉及大量的HTML内容，这给servlet的书写效率和可读性带来很大障碍，JSP便是在这个基础上产生的。其功能是使用HTML的书写格式，在适当的地方加入Java代码片段，将程序员从复杂的HTML中解放出来，更专注于servlet本身的内容。

JSP在首次被访问的时候被应用服务器转换为servlet，在以后的运行中，容器直接调用这个servlet，而不再访问JSP页面。JSP的实质仍然是servlet。

## 参见

  - [Java](../Page/Java.md "wikilink")、[JSP](../Page/JSP.md "wikilink")、[J2EE](../Page/J2EE.md "wikilink")
  - [Struts](../Page/Struts.md "wikilink")
  - [HTTP](../Page/HTTP.md "wikilink")

## 参考文献

## 外部链接

  - [JSR 369](https://www.jcp.org/en/jsr/detail?id=369) - Java servlet
    4.0 documentation
  - [JSR 340](https://www.jcp.org/en/jsr/detail?id=340) - Java servlet
    3.1 documentation
  - [JSR 315](https://www.jcp.org/en/jsr/detail?id=315) - Java servlet
    3.0 documentation
  - [JSR 154](https://www.jcp.org/en/jsr/detail?id=154) - Java servlet
    2.4 documentation
  - [JSR 53](https://www.jcp.org/en/jsr/detail?id=53) - Java servlet 2.3
    documentation

{{-}}

[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")
[Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink")
[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")

1.  [What's new in Servlet 3.1? - Java EE 7 moving
    forward](https://blogs.oracle.com/arungupta/entry/what_s_new_in_servlet)