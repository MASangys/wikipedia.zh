**Apache
Wicket**，通常称为**Wicket**，是一种轻量级的基于组件的[Java](../Page/Java.md "wikilink")
[Web应用框架](../Page/Web应用框架.md "wikilink")，其概念类似于[JavaServer
Faces和](../Page/JavaServer_Faces.md "wikilink")[Tapestry](https://zh.wikipedia.org/wiki/Tapestry "wikilink")。它最初由乔纳森·洛克在2004年4月编写。2005年6月发布1.0版。2007年6月，它成功成为[Apache顶级项目](../Page/Apache软件基金会.md "wikilink")。\[1\]

## 基本原理

传统的[MVC框架依据整个](../Page/MVC.md "wikilink")[请求和整个网页来工作](../Page/超文本传输协议.md "wikilink")。在每个请求周期内，输入请求被映射到一个*控制器*对象的一个方法上，然后*控制器*产生全部的输出响应，通常是从一个*模型*拉出数据，并填入一个由特殊的[模板标记写成的](https://zh.wikipedia.org/wiki/网页模板 "wikilink")*视图*。这种方式保证了应用的[控制流简单清晰](https://zh.wikipedia.org/wiki/控制流 "wikilink")，但会导致控制器的代码很难被[复用](../Page/代码复用.md "wikilink")。

与此相反，Wicket尽量模仿[有状态的](https://zh.wikipedia.org/wiki/有状态 "wikilink")[GUI框架](https://zh.wikipedia.org/wiki/GUI "wikilink")，如[Swing](../Page/Swing_\(Java\).md "wikilink").
Wicket应用像一棵*组件*的树，其使用监听器来响应基于链接和表单的[HTTP请求](https://zh.wikipedia.org/wiki/HTTP "wikilink")，并使用类似Swing组件的方式来响应鼠标和键盘事件。Wicket被归类为一个基于组件的框架。

## 设计

Wicket使用简单的[XHTML作为模板](../Page/XHTML.md "wikilink")（其强制将展示和进行明确的分离，并允许使用传统的[所见即所得设计工具来编辑模板](https://zh.wikipedia.org/wiki/所见即所得 "wikilink")\[2\]）。每个组件对应于XHTML中一个命名的元素，并负责在最后的输出中渲染该元素。*网页*仅仅是顶级的组件容器，并匹配一个XHTML模板。使用一个特殊标签，一组独立的组件可以抽象成一个单独的组件——*面板*，然后面板就可以作为一个整体，在该网页，其它网页，甚至其它面板重复使用。

每个组件由它自己的模型支持，由模型来表现组件的状态。该框架并没有说明组件如何与它们的模型交互，它被视为[黑箱](https://zh.wikipedia.org/wiki/黑箱 "wikilink")，并会在请求间自动[序列化和](../Page/序列化.md "wikilink")[持久化](../Page/对象数据库.md "wikilink")。更加复杂的模型，甚至可以做成*可拆分*的，并提供在每一个请求周期的开始和结束来安排自己的存储和恢复。Wicket并没有特定的对象持久化或[ORM层](https://zh.wikipedia.org/wiki/ORM "wikilink")，所以应用通常结合[Hibernate对象](../Page/Hibernate.md "wikilink")、[EJB或](../Page/EJB.md "wikilink")作为模型使用。

在Wicket中，所有服务器端状态都是自动管理的。永远不要直接使用HttpSession或类似的对象来存储状态，而要让状态关联到组件上。每个服务器端页面组件拥有一个有状态组件的内嵌层级，在那里每个组件的模型最终是一个POJO。

Wicket一切从简。Wicket没有配置文件需要学习。Wicket是一个对组件结构有一致方法的简单类库。

## 举例

一个[Hello World](../Page/Hello_World.md "wikilink") Wicket应用有四个文件：

  - HelloWorld.html
    XHTML模板。

<!-- end list -->

``` xml
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html ns="http://www.w3.org/1999/xhtml"
        xmlns:wicket="http://wicket.apache.org/dtds.data/wicket-xhtml1.3-strict.dtd"
        xml:lang="en" lang="en">
<body>
    <span wicket:id="message" id="message">消息放在这里</span>
</body>
</html>
```

  - HelloWorld.java
    将与模板关联的页面组件。而它又结合一个子组件（该标签组件名为“message”）。

<!-- end list -->

``` java
package org.wikipedia.wicket;

import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.basic.Label;

public class HelloWorld extends WebPage {
    /**
     * Constructor
     */
    public HelloWorld() {
        add(new Label("message", "Hello World!"));
    }
}
```

  - HelloWorldApplication.java
    应用主类，它将首页的请求导向HelloWorld页面组件。

<!-- end list -->

``` java
package org.wikipedia.wicket;

import org.apache.wicket.protocol.http.WebApplication;

public class HelloWorldApplication extends WebApplication {
    /**
     * Constructor.
     */
    public HelloWorldApplication() {
    }

    /**
     * @see org.apache.wicket.Application#getHomePage()
     */
    public Class getHomePage() {
        return HelloWorld.class;
    }
}
```

  - web.xml
    该[servlet应用的](https://zh.wikipedia.org/wiki/servlet "wikilink")[部署描述符](../Page/部署描述符.md "wikilink")，它安装Wicket作为默认的servlet处理程序，并安排HelloWorldApplication在启动时实例化。

<!-- end list -->

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         ns="http://java.sun.com/xml/ns/javaee"
         xmlns:web="http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
         xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
                             http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
         id="WebApp_ID" version="2.5">
    <display-name>Wicket Example</display-name>
    <filter>
        <filter-name>HelloWorldApplication</filter-name>
        <filter-class>org.apache.wicket.protocol.http.WicketFilter</filter-class>
        <init-param>
            <param-name>applicationClassName</param-name>
            <param-value>org.wikipedia.wicket.HelloWorldApplication</param-value>
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>HelloWorldApplication</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>
</web-app>
```

## 组件

  - 基本组件，如表单、链接、循环等等为内置。参见http://www.wicket-library.com/wicket-examples/compref/
  - 更多的，参见https://cwiki.apache.org/confluence/display/WICKET/Index

## 版本

| 版本号    | 日期         | 说明                                                                                                                                                 |
| ------ | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1.3.7  | 2009-07-30 | \[3\]                                                                                                                                              |
| 1.4    | 2009-07-30 | “……我们开始告别Java 1.4，并要求使用Java 5作为最低JDK版本。通过使用Java 5作为所需的最低平台，我们能够利用Java 5来提高我们API的类型安全性。”\[4\]                                                       |
| 1.4.1  | 2009-08-21 | \[5\]                                                                                                                                              |
| 1.4.9  | 2010-05-24 | “……超过十五处修复和改进”\[6\]                                                                                                                                |
| 1.4.10 | 2010-08-11 | “……超过三十处修复和改进。”\[7\]                                                                                                                               |
| 1.4.16 | 2011-02-25 | “这主要是一个在1.4.x（稳定）分支上发布的小修正。”\[8\]                                                                                                                  |
| 1.4.17 | 2011-04-02 | “这主要是一个在1.4.x（稳定）分支上发布的小修正。”\[9\]                                                                                                                  |
| 1.4.18 | 2011-08-09 | “这主要是一个在1.4.x（稳定）分支上发布的小修正。”\[10\]                                                                                                                 |
| 1.4.19 | 2011-10-19 | “这主要是一个在1.4.x（稳定）分支上发布的小修正。”\[11\]                                                                                                                 |
| 1.5.0  | 2011-09-07 | “Apache Wicket 1.5已经开发了两年了，相比以前的版本，它带来了许多改进。”\[12\]                                                                                                |
| 1.5.1  | 2011-09-29 | “……超过40处修复和15处改进。”\[13\]                                                                                                                           |
| 1.5.2  | 2011-10-24 | “……超过25处修复和5处改进。”\[14\]                                                                                                                            |
| 1.5.3  | 2011-11-14 | “……超过40处修复和改进。”\[15\]                                                                                                                              |
| 1.6    | 2012-09-05 | 开始集成jQuery，完全基于AJAX请求来控制，改进在浏览器的事件注册，支持大数据集、客户端JavaScript库的依赖管理，实验性地支持websocket                                                                    |
| 1.6.3  | 2013-01-02 | jQuery 1.8.2；修正IE7和IE8中的JavaScript错误。                                                                                                              |
| 1.6.4  | 2013-01-14 | [jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink") 1.8.3、[Bootstrap](../Page/Bootstrap.md "wikilink") 2.2.2、JSR 303 BeanValidation支持，层级反馈面板 |

## 参见

  - [Vaadin](https://zh.wikipedia.org/wiki/Vaadin "wikilink")

  - [Tapestry](https://zh.wikipedia.org/wiki/Tapestry "wikilink")

  -
  - [ZK](../Page/ZK.md "wikilink")

  - [RichFaces](https://zh.wikipedia.org/wiki/RichFaces "wikilink")

  - [Echo (架构)](https://zh.wikipedia.org/wiki/Echo_\(架构\) "wikilink")

## 参考文献

  -
  -
  -
  - {{en}

  -
### 注释

## 外部链接

### 介绍文章

  - [IBM
    Wicket：一个用于构建及测试动态网页的简化框架](http://www.ibm.com/developerworks/web/library/wa-aj-wicket/?S_TACT=105AGY82&S_CMP=GENSITE)
  - [Wicket框架一瞥](http://ensode.net/wicket_first_look.html)
  - [关于Wicket 1.0的服务器端讨论](http://www.theserverside.com/news/thread.tss?thread_id=34725)
  - [服务器端讨论](http://www.theserverside.com/news/thread.tss?thread_id=28162)
  - [Javalobby采访Martijn
    Dashorst（项目主席）](http://www.javalobby.org/java/forums/t105230.html)
  - [Martijn
    Dashorst讲Wicket](https://web.archive.org/web/20111002080831/http://www.viddler.com/explore/oredev/videos/61/)

### 博客

  - [Wicket在运转](http://wicketinaction.com)
  - [Martijn Dashorst](http://martijndashorst.com)
  - [布鲁诺·博尔赫斯](https://web.archive.org/web/20090909161213/http://blog.brunoborges.com.br/)
  - [神秘的程序员](http://mysticcoders.com)

### 文档

  - [Wicket的可重用组件和模式](http://wicketstuff.org)
  - [有现场演示及组件库的网站](https://web.archive.org/web/20100620082228/http://wicketstuff.org/wicket14/)
  - [操作指南的Wiki、手册及更多](http://cwiki.apache.org/WICKET)
  - [在现实世界使用Wicket的众多例子](https://web.archive.org/web/20090803103522/http://wicketbyexample.com/)
  - [一个免费且全面的Wicket用户指南](https://code.google.com/p/wicket-guide/)

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink")
[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")
[Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.