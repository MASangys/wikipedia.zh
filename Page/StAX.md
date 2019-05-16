**XML流API**（**Streaming API for
XML**，缩写StAX）是用于读写[XML文档的](../Page/XML.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")，起源于[Java社群](../Page/Java.md "wikilink")，[JSR](https://zh.wikipedia.org/wiki/JSR "wikilink")
173定义了这个API。

传统上来说，XML的API无外乎是以下两种：

  - 基于树的API- 整个文档以树的形式被读入内存，可以被调用程序随机访问。
  - 基于事件的API - 应用注册接收事件，当原XML文档遇到事体时就会产生这些事件。

两者皆有优点，前者（例如[DOM](../Page/文档对象模型.md "wikilink")）允许对文档进行随机访问，而后者（例如[SAX](../Page/SAX.md "wikilink")）需要较小的内存开销，并却通常更快。

这两个方法可以认为是正好相反。基于树的API允许无限制的，随机的访问和操纵，而基于事件的API是一次性地遍历源文档。

StAX被设计为这两者的一个折中。在StAX中，程序的切入点是表示XML文档中一个位置的光标。应用程序在需要时向前移动光标，从解析器拉出信息。与基于事件的API（如SAX）将“数据推送”给应用程序不同的是，SAX需要应用程序维持时间间的状态，以保持文档内的位置信息。

## 起源

StAX起源于一些“拉”XML的API，最著名的是XMLPULL, 其作者（Stefan Haustein和Aleksander
Ominski）与[BEA
Systems](https://zh.wikipedia.org/wiki/BEA_Systems "wikilink"),
[甲骨文公司](../Page/甲骨文公司.md "wikilink"),
[Sun](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink"),
[Breeze Factor](http://www.breezefactor.com/)及[James
Clark合作编写了这个规范](https://zh.wikipedia.org/wiki/James_Clark_\(XML_expert\) "wikilink")。

## 例子

从JSR-173 Specification• Final, V1.0中摘取的例子（以合理使用方式使用）

引用:

  -
    下面的Java API显示了以光标方式读取XML的主要方法。

<!-- end list -->

``` java
// Java
public interface XMLStreamReader {
  public int next() throws XMLStreamException;
  public boolean hasNext() throws XMLStreamException;
  public String getText();
  public String getLocalName();
  public String getNamespaceURI();
  // ...其他方法隐去
}
```

  -
    写入的API与读取API的元素开始和元素结束相对应。

<!-- end list -->

``` java
// Java
public interface XMLStreamWriter {
  public void writeStartElement(String localName) throws XMLStreamException;
  public void writeEndElement() throws XMLStreamException;
  public void writeCharacters(String text) throws XMLStreamException;
  // ...其他方法隐去
}
```

  -
    5.3.1 XMLStreamReader
    本例子说明初始化一个输入工厂，创建阅读器，并迭代XML文档中的元素。

<!-- end list -->

``` java
XMLInputFactory f = XMLInputFactory.newInstance();
XMLStreamReader r = f.createXMLStreamReader(... );
while (r.hasNext()) {
    r.next();
}
```

## 实现

  - [Sun Java Streaming XML Parser](https://sjsxp.dev.java.net)
    开源。作为J2SE 6的一部分发布
  - JSR-173的参考实现[1](https://web.archive.org/web/20100724040030/http://stax.codehaus.org/)
  - [Woodstox](https://zh.wikipedia.org/wiki/Woodstox "wikilink")[2](https://web.archive.org/web/20150525234136/http://woodstox.codehaus.org/)，开源StAX实现（以[LGPL或](../Page/GNU宽通用公共许可证.md "wikilink")[Apache许可证发布](../Page/Apache许可证.md "wikilink")）
  - [Aalto](https://zh.wikipedia.org/wiki/Aalto "wikilink")[3](https://web.archive.org/web/20100422200438/http://wiki.fasterxml.com/AaltoHome)，超高性能的解析器（[GPL或商业许可证](../Page/GNU通用公共许可证.md "wikilink")）
  - [libxml2](https://zh.wikipedia.org/wiki/libxml2 "wikilink")[4](http://xmlsoft.org/html/libxml-xmlwriter.html)，XML的C解析器和工具（MIT許可證）
  - [Expat](https://zh.wikipedia.org/wiki/Expat_\(XML\) "wikilink")[5](http://expat.sourceforge.net/)，用C写的XML解析器函数库

## 参见

  - [文档对象模型](../Page/文档对象模型.md "wikilink")，基于树的XML的API
  - [JDOM](https://zh.wikipedia.org/wiki/JDOM "wikilink")
  - [Dom4j](https://zh.wikipedia.org/wiki/Dom4j "wikilink")
  - [SAX](../Page/SAX.md "wikilink")，基于事件的XML的API。
  - [JAXB](../Page/JAXB.md "wikilink")，基于XML解析器（通常是StAX）将XML数据绑定到Java对象上。
  - [Apache
    Axiom](https://zh.wikipedia.org/wiki/Apache_Axiom "wikilink")，基于StAX的轻量级的XML对象模型，支持滞后构建。
  - [XMLPull API](https://zh.wikipedia.org/wiki/XMLPull_API "wikilink")
  - [kXML](https://zh.wikipedia.org/wiki/kXML "wikilink") 使用XMLPull
    API的[J2ME上的XML解析器](https://zh.wikipedia.org/wiki/J2ME "wikilink")

## 外部链接

  - [JSR 173 规范](http://jcp.org/en/jsr/detail?id=173)
  - [StAX介绍](http://www.xml.com/pub/a/2003/09/17/stax.html) XML.com,
    Harold, Elliotte Rusty
  - [StAX教程](https://web.archive.org/web/20071212145813/http://www.vogella.de/articles/JavaXML/article.html)
  - [XMLPull模式](http://www.extreme.indiana.edu/~aslom/xmlpull/patterns.html)关于XML
    Pull（以及StAX）的设计模式，Aleksander Slominski.
  - [XMLPull.org](http://www.xmlpull.org/)
  - [StAX和Sax的比较](http://www.devx.com/Java/Article/30298/0)
  - [StAX-Utils](https://web.archive.org/web/20070813023718/https://stax-utils.dev.java.net/)提供工具类，便于开发者将StAX集成到现有的XML处理应用中。

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")