**JSP标准标签库**（**JSP Standard Tag Library**）是[Java
EE](https://zh.wikipedia.org/wiki/Java_EE "wikilink")[网络应用程序开发平台的组成部分](../Page/网络应用程序.md "wikilink")。它在[JSP规范的基础上](../Page/JSP.md "wikilink")，扩充了一个JSP的[标签库来完成一些通用任务](https://zh.wikipedia.org/wiki/标签库 "wikilink")，比如[XML数据处理](../Page/XML.md "wikilink")、条件执行、[数据库访问](../Page/数据库.md "wikilink")、循环和[国际化](https://zh.wikipedia.org/wiki/国际化 "wikilink")。

JSTL是在[JCP下](../Page/JCP.md "wikilink")，作为**JSR**
52被开发出来的。2006年5月8日发布了JSTL
1.2，接下来是2011年12月7日的JSTL 1.2.1。\[1\]

## 概述

JSTL提供了一个有效的途径，以在[JSP页面中嵌入逻辑](../Page/JSP.md "wikilink")，而不是直接嵌入[Java代码](../Page/Java.md "wikilink")。使用标准标签集，减少了Java代码导致的不连续，从而提高代码的可维护性，并达到[应用软件代码开发与](https://zh.wikipedia.org/wiki/应用软件 "wikilink")[用户界面间的](../Page/用户界面.md "wikilink")[关注点分离](../Page/关注点分离.md "wikilink")。

  - 下面是全部六个JSTL标签库的描述：
      - [核心库](http://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/c/tld-summary.html)，如<c:if>和<c:when>。
      - [格式化库](http://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/fmt/tld-summary.html)，具有国际化功能。
      - [数据库标签库](http://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/sql/tld-summary.html)，包括查询、创建和更新数据库表的标签。
      - [XML库](http://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/x/tld-summary.html)。
      - [函数库](http://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/fn/tld-summary.html)。
      - [TLV](http://docs.oracle.com/javaee/6/api/javax/servlet/jsp/jstl/tlv/package-summary.html)允许JSP页面的XML视图在翻译时验证。JSTL提供的TLV允许标签库作者根据JSP页面中脚本元素的使用和被允许的标签库来执行限制条件。

<!-- end list -->

  - 除JSTL之外，JCP还有如下的JSR来开发标准JSP标签库：
      - [JSR 128](http://www.jcp.org/en/jsr/detail?id=128)：JESI——的JSP标签库（不活跃）
      - [JSR 267](http://www.jcp.org/en/jsr/detail?id=267)：Web服务的JSP标签库。

## 参见

  - [统一表达式语言](../Page/统一表达式语言.md "wikilink")

## 外部链接

  - [JSTL规范](http://java.sun.com/products/jsp/jstl/)
  - [JSTL TLD文档](http://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/)
  - [JSR 52](http://www.jcp.org/en/jsr/detail?id=52)（JSTL 1.0、1.1和1.2）
  - [Jakarta标准标签库1.1](https://web.archive.org/web/20050911044327/http://jakarta.apache.org/taglibs/doc/standard-doc/intro.html)，一个JSTL实现（已废弃）
  - [Apache标准标签库](http://tomcat.apache.org/taglibs/standard/)，一个JSTL规范的实现
  - [JSTL 1.0参考资料](http://www.oio.de/public/java/jstl-reference/index.htm)
  - [JSTL 1.2主页](http://jstl.java.net/)
  - [官方指导：Java
    EE 5指导，第7章，JSTL](http://java.sun.com/javaee/5/docs/tutorial/doc/bnakc.html)\[2\]
  - [JSTL 1.1参考资料](http://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/)
  - [JSF 2.1
    Facelets标签库文档](http://docs.oracle.com/javaee/6/javaserverfaces/2.1/docs/vdldocs/facelets/)\[3\]
  - [JSTL的功能](http://www.javatips.net/blog/2011/10/jstl-functions)
  - [OWASP
    ESAPI标签](https://web.archive.org/web/20131216020401/http://owasp-esapi-java.googlecode.com/svn/trunk_doc/latest/org/owasp/esapi/tags/package-summary.html)（作为JSTL未提供任何网站安全标签）

## 参考资料

[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")
[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")

1.  <http://search.maven.org/#browse%7C707331597>
2.  <http://jstl.java.net/getStarted.html>
3.  [Java EE技术文档](http://docs.oracle.com/javaee/)