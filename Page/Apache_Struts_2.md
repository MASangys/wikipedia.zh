**Apache Struts 2**是一个用于开发[Java EE](https://zh.wikipedia.org/wiki/Java_EE "wikilink")[網路應用程式的](https://zh.wikipedia.org/wiki/網路應用程式 "wikilink")[開放原始碼網頁應用程式架構](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。它利用并延伸了[Java Servlet](../Page/Java_Servlet.md "wikilink") [API](../Page/应用程序接口.md "wikilink")，鼓励开发者采用[MVC](../Page/MVC.md "wikilink")架构。

缘起于[Apache Struts的](https://zh.wikipedia.org/wiki/Apache_Struts "wikilink")框架，旨在提供相对于Struts框架的增强和改进，同时保留与Struts框架类似的结构。2005年12月，WebWork宣布WebWork 2.2以Apache Struts 2的名义合并至Struts。2007年2月第一个全发布（full release）版本释出。\[1\]

## 开发目标

Struts1设计的第一目标就是使[MVC](../Page/MVC.md "wikilink")模式应用于web程序设计。在过去10年，Struts在更好的web应用方面所做的工作是值得肯定的。在某些方面，Struts社区注意到这一框架的局限性，所以这个活跃的社区通过对MVC运行模式的重新理解并同时引入一些新的建筑学方面的设计理念后，新的Struts2框架结构更清晰，使用更灵活方便。

这一新的结构包含应用逻辑的横切面拦截器，基于注释的配置以减少和去除XML形式的配置文件，功能强大的表达式语言，支持可更改、可重用UI组件的基于微MVC的标签库。Struts2有两方面的技术优势，一是所有的Struts2应用程序都是基于client/server HTTP交换协议，The Java Servlet API揭示了Java Servlet只是Java API的一个很小子集，这样我们可以在业务逻辑部分使用功能强大的Java语言进行程序设计。

Struts 2提供了对MVC的一个清晰的实现，这一实现包含了很多参与对所以请求进行处理的关键组件，如：拦截器、OGNL表达式语言、堆栈。

## 漏洞处理手法

Struts2开发组常被指漏洞修复手法不妥，要么修复后仍有可利用，要么无法修复并长期闲置。

其中包括一个由标记为S2-003的漏洞报告引发了一连串的远程执行问题，官方多次修复仍没能完全解决，甚至是报告提交者多次提交其绕过方案警醒开发组注意。\[2\]

2013年7月发布了2.3.15.1发布版，但在修复事项中公开了一段远程执行漏洞的示例代码，被黑客圈内利用，导致了中国大陆大量使用Struts2的网站被入侵。\[3\]

## 参见

  - [Web应用框架的对比](https://zh.wikipedia.org/wiki/Web应用框架的对比 "wikilink")

## 参考文献

## 外部链接

  -
  - [Struts 2插件登记处](http://cwiki.apache.org/S2PLUGINS/home.html)

  - [Struts2 jQuery插件](http://code.google.com/p/struts2-jquery/)

  - [Struts2指南](http://struts2tutorial.sourceforge.net/)

  - [在JBoss上进行Struts开发的教程](http://www.mastertheboss.com/web-interfaces/190-jboss-struts-tutorial.html)

  - [如何在没有容器的情况下进行Struts 2 Actions测试](https://web.archive.org/web/20140201204655/http://digitalsanctum.com/2010/01/25/how-to-test-struts-2-actions-without-a-container/)（参考：[Web容器](https://zh.wikipedia.org/wiki/Web容器 "wikilink")）

  - [Struts 2示例](http://www.javatips.net/blog/2013/07/struts-2-example/)

  - [Struts 2校验示例](http://www.javatips.net/blog/2013/07/struts-2-validation-example/)

  - [Apache Struts漏洞](http://www.cvedetails.com/vulnerability-list/vendor_id-45/product_id-6117/Apache-Struts.html)

  - [Struts 2.0校验](http://www.javabeat.net/2007/05/struts-2-0-introduction-and-validations-using-annotations/)

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink") [Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink") [Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink") [Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink")

1.
2.
3.