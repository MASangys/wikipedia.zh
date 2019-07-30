**JAX-RS: Java API for RESTful Web Services**是一个[Java](../Page/Java.md "wikilink")编程语言的[应用程序介面](https://zh.wikipedia.org/wiki/应用程序介面 "wikilink"),支持按照 [表象化状态转变](https://zh.wikipedia.org/wiki/REST "wikilink") (REST)架构风格创建[Web服务](../Page/Web服务.md "wikilink")\[1\]. JAX-RS使用了[Java SE 5引入的](https://zh.wikipedia.org/wiki/Java_SE "wikilink")[Java 标注来简化Web服务客户端和服务端的开发和部署](https://zh.wikipedia.org/wiki/Java_标注 "wikilink")。

## 规范内容

JAX-RS提供了一些标注将一个资源类，一个[POJOJava类](https://zh.wikipedia.org/wiki/POJO "wikilink")，封装为Web资源。标注包括：

  - @Path，标注资源类或方法的相对路径
  - @GET，@PUT，@POST，@DELETE，标注方法是用的HTTP请求的类型
  - @Produces，标注返回的MIME媒体类型
  - @Consumes，标注可接受请求的[MIME媒体类型](https://zh.wikipedia.org/wiki/MIME "wikilink")
  - @PathParam，@QueryParam，@HeaderParam，@CookieParam，@MatrixParam，@FormParam,分别标注方法的参数来自于HTTP请求的不同位置，例如@PathParam来自于URL的路径，@QueryParam来自于URL的查询参数，@HeaderParam来自于HTTP请求的头信息，@CookieParam来自于HTTP请求的Cookie。

## JAX-RS的实现

JAX-RS的实现包括\[2\]：

  - [Apache CXF](../Page/Apache_CXF.md "wikilink")，开源的[Web服务](../Page/Web服务.md "wikilink")框架。
  - [Jersey](https://zh.wikipedia.org/wiki/Jersey "wikilink")， 由[Sun提供的JAX](https://zh.wikipedia.org/wiki/Sun "wikilink")-RS的参考实现。
  - [RESTEasy](https://zh.wikipedia.org/wiki/RESTEasy "wikilink")，[JBoss的实现](https://zh.wikipedia.org/wiki/JBoss "wikilink")。
  - [Restlet](https://zh.wikipedia.org/wiki/Restlet "wikilink")，由Jerome Louvel和Dave Pawson开发，是最早的REST框架，先于JAX-RS出现。
  - [Apache Wink](https://zh.wikipedia.org/wiki/Apache_Wink "wikilink")，一个[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")孵化器中的项目，其服务模块实现JAX-RS规范

### Jersey

根据 Java EE 6 教程第1卷：''Jersey是由Sun开发的产品级质量的JSR 311: JAX-RS: The Java API for RESTful Web Services的参考实现。Jersey实现了JSR-311中对标注的支持，这使得开发人员使用Java开发RESTfulWeb服务更加容易。除此以外，Jersey还增加了JSR以外的附加特性\[3\]。

## 注释

## 参考文献

  - Hadley, Marc and Paul Sandoz, eds. (September 17, 2009). *[JAX-RS: Java API for RESTful WebServices](http://jcp.org/en/jsr/detail?id=311)* (version 1.1), Sun Microsystems, Inc.

## 外部链接

  - [JAX-RS规范](http://jcp.org/en/jsr/detail?id=311)
  - [Jersey - 开源JAX-RS参考实现](https://web.archive.org/web/20131031170255/https://jersey.java.net/)
  - [JSR 311项目](https://jsr311.java.net/)
  - *[RESTful Java with JAX-RS](http://books.google.com/books?id=_jQtCL5_vAcC&lpg=PP1&ots=cJdr7eTV1X&dq=jax-rs&pg=PP1#v=onepage&q=&f=false)* by Bill Burke on Google Books
  - [使用 JAX-RS 简化 REST 应用开发](http://www.ibm.com/developerworks/cn/java/j-lo-jaxrs/)
  - [用 Java 技术创建 RESTful Web 服务--JAX-RS：一种更为简单、可移植性更好的替代方式](http://www.ibm.com/developerworks/cn/web/wa-jaxrs/index.html)
  - [Java EE 6 Web Services：JAX-RS 1.1提供了基于注解的REST支持](http://www.infoq.com/cn/news/2010/02/javaee6-rest)

## 参见

[分类:Java](https://zh.wikipedia.org/wiki/分类:Java "wikilink") [分类:应用程序接口](https://zh.wikipedia.org/wiki/分类:应用程序接口 "wikilink")

1.  Hadley, p. 1.
2.  Mark Little，[比较各JAX-RS实现](http://www.infoq.com/cn/news/2008/10/jaxrs-comparison)
3.  [Building RESTful Web Services with JAX-RS and Jersey](http://java.sun.com/javaee/6/docs/tutorial/doc/giepu.html)