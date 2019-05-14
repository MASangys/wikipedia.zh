在[软件工程中](../Page/软件工程.md "wikilink")，**WAR文件**（Web应用程序归档，\[1\]）是一种[JAR文件](https://zh.wikipedia.org/wiki/JAR文件 "wikilink")，其中包含用来分发的[JSP](../Page/JSP.md "wikilink")、[Java
Servlet](../Page/Java_Servlet.md "wikilink")、[Java类](../Page/Java.md "wikilink")、[XML文件](../Page/XML.md "wikilink")、标签库、静态网页（[HTML和相关文件](../Page/HTML.md "wikilink")），以及构成[Web应用程序的其他资源](https://zh.wikipedia.org/wiki/Web应用程序 "wikilink")。

## 内容和结构

一个WAR文件可能会以与[JAR文件相同的方式进行](https://zh.wikipedia.org/wiki/JAR文件 "wikilink")[数字签名](https://zh.wikipedia.org/wiki/数字签名 "wikilink")，以便他人确定哪些源代码来自哪一个JAR文件。

而WAR文件也有其特殊的文件和目录。如果Web应用程序使用的[servlet](../Page/Java_Servlet.md "wikilink")，则Servlet[容器会使用web](https://zh.wikipedia.org/wiki/Web容器 "wikilink").xml文件，以确定某个[URL请求将被路由到哪个Servlet上](https://zh.wikipedia.org/wiki/URL "wikilink")。web.xml还用于定义Servlet中可以引用的上下文变量，以及部署器所需配置的环境依赖关系。例如，一个依赖于邮件会话、用于发送电子邮件的程序，而Servlet容器负责提供这项服务。这就需要在web.xml进行一些配置。

## 优缺点

WAR文件有如下优点：

  - 易于部署和测试
  - 已部署的应用程序，其版本很容易辨别
  - 所有的Java EE容器都支持.WAR文件

使用WAR文件进行Web部署的一个缺点是，即便是细微的修改，也不能在程序运行时进行。任何修改都需要重新生成和部署整个WAR文件。

## 示例

下面的示例web.xml文件，演示了一个Servlet是怎样被声明和被关联的。

``` xml
 <?xml version="1.0" encoding="UTF-8"?>
 <!DOCTYPE web-app
     PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.2//EN"
     "http://java.sun.com/j2ee/dtds/web-app_2_2.dtd">

 <web-app>
     <servlet>
         <servlet-name>HelloServlet</servlet-name>
         <servlet-class>mypackage.HelloServlet</servlet-class>
     </servlet>

     <servlet-mapping>
         <servlet-name>HelloServlet</servlet-name>
         <url-pattern>/HelloServlet</url-pattern>
     </servlet-mapping>

     <resource-ref>
         <description>
             资源引用到一个可被用于发送电子邮件的javax.mail.Session的实例工厂。
         </description>
         <res-ref-name>mail/Session</res-ref-name>
         <res-type>javax.mail.Session</res-type>
         <res-auth>Container</res-auth>
     </resource-ref>
 </web-app>

```

## 参见

相关的文件格式有：

  -
  - [JAR](https://zh.wikipedia.org/wiki/JAR "wikilink")

  - [EXE格式](../Page/EXE格式.md "wikilink")

## 参考文献

## 外部链接

  - [Oracle Java
    EE 7指南：打包Web文档](https://web.archive.org/web/20140421001433/http://docs.oracle.com/javaee/7/tutorial/doc/packaging003.htm)
  - [Oracle Java
    EE 6指南：Web模块](http://docs.oracle.com/javaee/6/tutorial/doc/bnadx.html)
  - [Oracle Java
    EE 5指南：Web模块](http://docs.oracle.com/javaee/5/tutorial/doc/bnadx.html)
  - [太阳计算机系统：Servlet 2.5 WAR文件的XML
    Schema](http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd)
  - [太阳计算机系统：Servlet 2.4 WAR文件的XML
    Schema](http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd)
  - [JSR 154：Java Servlet 2.4规范](http://jcp.org/en/jsr/detail?id=154)

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink")
[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")

1.