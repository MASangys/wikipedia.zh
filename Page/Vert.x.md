**Eclipse Vert.x**
是一个[事件驱动的](../Page/事件驅動程式設計.md "wikilink")[应用程序框架](https://zh.wikipedia.org/wiki/Application_framework "wikilink")，其支持多种编程语言，并运行于Java虚拟机中。<ref>

<div>

[Wait, vert.x – JVM Polyglot Alternative to
Node.js](http://www.infoq.com/news/2012/05/vertx)，Dio
Synodinos，2012-05-04，InfoQ

</div>

</ref><ref>

<div>

[Vert.x – an asynchronous, event-driven Java web
framework](http://www.h-online.com/developer/features/Vert-x-an-asynchronous-event-driven-Java-web-framework-1615383.html)，Eberhard
Wolff，2012-06-20，hDeveloper

</div>

</ref>

在其他编程语言中，与其类似的有[Node.js](../Page/Node.js.md "wikilink")（适用于[JavaScript](../Page/JavaScript.md "wikilink")）、[Twisted](https://zh.wikipedia.org/wiki/Twisted_\(software\) "wikilink")（适用于[Python](../Page/Python.md "wikilink")）、[Perl
Object
Environment](https://zh.wikipedia.org/wiki/Perl_Object_Environment "wikilink")（适用于[Perl](../Page/Perl.md "wikilink")）、[libevent](https://zh.wikipedia.org/wiki/libevent "wikilink")（适用于[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")）、reactPHP（适用于[PHP](../Page/PHP.md "wikilink")）、amphp（适用于PHP）及[EventMachine](https://zh.wikipedia.org/wiki/EventMachine "wikilink")（适用于[Ruby](../Page/Ruby.md "wikilink")）。

自2.1.4版本始，Vert.x以[Java](../Page/Java.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[Groovy](../Page/Groovy.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Scala](../Page/Scala.md "wikilink")、[Clojure及](https://zh.wikipedia.org/wiki/Clojure "wikilink")[Ceylon编程语言公开其API](https://zh.wikipedia.org/wiki/Ceylon_\(programming_language\) "wikilink")。

自3.6.0版本始，Vert.x以[Java](../Page/Java.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[Groovy](../Page/Groovy.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Scala](../Page/Scala.md "wikilink")、[Kotlin及](../Page/Kotlin.md "wikilink")[Ceylon编程语言公开其API](https://zh.wikipedia.org/wiki/Ceylon_\(programming_language\) "wikilink")。

## 历史

2011年，在[VMware工作的](../Page/VMware.md "wikilink") Tim Fox 开始开发Vert.x。

Tim Fox
最初将项目命名为“Node.x”，该名称由[Node.js的命名衍生而来](../Page/Node.js.md "wikilink")，其中“x”表示新项目支持多种编程语言，而非仅支持JavaScript。该项目后来改名为“Vert.x”以避免潜在的法律问题，因为“Node”是
Joyent Inc. 拥有的商标<ref>

<div>

<https://groups.google.com/d/msg/vertx/lxZGADtT6dQ/a0qzaQpzfroJ>

</div>

</ref>。新名称替换了node一词，所使用的vertex一词在数学中同样意为节点。

2012年12月，VMware向已离职的 Tim Fox 发送法律文件，以期从Vert.x社区<ref>

<div>

["VMware's dealings with Vert.x founder should serve as a
warning."](https://www.theregister.co.uk/2013/01/14/opensource_ownership/)

</div>

</ref><ref>

<div>

["Who controls Vert.x: Red Hat, VMware, or
neither?"](http://www.infoworld.com/d/open-source-software/who-controls-vertx-red-hat-vmware-or-neither-210549)

</div>

</ref>获得Vert.x商标、域名、博客、GitHub帐户及Google Group的控制权。

与其他各方讨论后，2013年1月，VMware同意将项目和相关IP转移到[Eclipse基金会这一中立的法律实体中](https://zh.wikipedia.org/wiki/Eclipse基金会 "wikilink")，以使Vert.x社区获得最大收益。
<ref>

<div>

["Vert.x Joining Eclipse
Foundation"](http://www.infoq.com/news/2013/01/vertx-eclipse/)

</div>

</ref>

2013年8月，Core Vert.x
项目完成了向Eclipse基金会的迁移。Vert.x技术栈中的其他项目并未迁移至Eclipse，但因Eclipse基金会的默认而继续使用“Vert.x”商标。

2014年5月，Vert.x在JAX创新奖中荣获“最具创新性的Java技术”奖。 <ref>

<div>

[“Vert.x赢得JAX创新奖”](http://jax.de/awards2014/)

</div>

</ref>

2016年1月12日，Tim Fox辞去了Vert.x项目的领导职务。<ref>

<div>

<https://groups.google.com/forum/?fromgroups#!topic/vertx/yluLHXa5CRU>

</div>

</ref>长期贡献者Julien Viet取代了他的位置。

## 架构

Vert.x使用底层I/O库[Netty](https://zh.wikipedia.org/wiki/Netty_\(software\) "wikilink")
。 <ref>

<div>

[vert.x – JVM Polyglot Alternative to
Node.js](http://www.infoq.com/news/2012/05/vertx)，Dio
Synodinos，2012-05-04，InfoQ

</div>

</ref>

Vert.x拥有以下特性：

  - 支持多种编程语言。应用程序组件能够以Java、JavaScript、Groovy、Ruby、Scala、Kotlin和Ceylon编写。
  - 简单的并发模型。所有代码都是单线程的，免除了多线程编程的麻烦。
  - 简单的异步编程模型，用于编写真正可扩展的非阻塞应用程序。
  - 跨越客户端和服务器端的分布式事件总线。事件总线甚至可以渗透到浏览器中的JavaScript中，从而可以创建所谓的实时Web应用程序。
  - 角色模型和公共存储库，用于重用并共享组件。

## 示例

下列Java代码会实现一个输出“Hello from Vert.x”的服务器：

``` java
import io.vertx.core.AbstractVerticle;

public class Server extends AbstractVerticle {
  public void start() {
    vertx.createHttpServer().requestHandler(req -> {
      req.response()
        .putHeader("content-type", "text/plain")
        .end("Hello from Vert.x!");
    }).listen(8080);
  }
}
```

同一服务器的[JavaScript版本如下](../Page/JavaScript.md "wikilink")：

``` javascript
vertx.createHttpServer()
  .requestHandler(function (req) {
    req.response()
      .putHeader("content-type", "text/plain")
      .end("Hello from Vert.x!");
}).listen(8080);
```

上述两种代码均可使得Web服务器以高度可扩展的方式提供内容。

## 参考

<references group="" responsive="">

</references>

## 外部链接

  -
[Category:Java虚拟机](https://zh.wikipedia.org/wiki/Category:Java虚拟机 "wikilink")
[Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")
[Category:事件_(计算机)](https://zh.wikipedia.org/wiki/Category:事件_\(计算机\) "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:使用过时图像语法的页面](https://zh.wikipedia.org/wiki/Category:使用过时图像语法的页面 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")