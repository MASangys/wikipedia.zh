**JAXP**（**Java API for [XML](../Page/XML.md "wikilink") Processing**，意为XML处理的Java API）是[Java](../Page/Java.md "wikilink") [XML](../Page/XML.md "wikilink")[程序设计](../Page/程序设计.md "wikilink")的[应用程序接口](../Page/应用程序接口.md "wikilink")之一，它提供解析和验证[XML](../Page/XML.md "wikilink")文档的能力。JAXP是在[Java社区进程下开发的](../Page/JCP.md "wikilink")，包括JSR 5 （JAXP 1.0）和 JSR 63 （JAXP 1.1和1.2）两个规范。

JAXP解析XML的三种基本接口为：

  - [文档对象模型](../Page/文档对象模型.md "wikilink")解析接口或**DOM**接口
  - [XML简单API解析接口或](../Page/SAX.md "wikilink")**SAX**接口
  - [XML流API或](../Page/StAX.md "wikilink")**StAX**接口（是JDK 6的一部分，为JDK 5提供单独的包）

除了解析接口，JAXP还提供了[XSLT](../Page/XSLT.md "wikilink")接口用来对XML文档进行数据和结构的转换。

## DOM接口

DOM接口可能最容易理解。解析器解析整个XML文档并构造出该文档的一个完整的内存表示，使用类对文档对象模型（DOM）级别2核心规范\[1\]中的概念进行建模。

DOM解析器被称作`DocumentBuilder`，因为它构建一个内存中的`Document`表示。是由创建的。`DocumentBuilder`创建的实例，Document是一个包含XML文档中的所有节点的树。结构中的每一个树节点实现接口。树节点有许多不同类型的，表示XML文档中不同的数据类型。最重要的节点类型有：

  - 元素节点，具有许多属性
  - 文本节点，代表文档元素开始和结束标签之间的文字。

节点类型的完整列表，请参见包中的[Javadoc](../Page/Javadoc.md "wikilink")文档。

## SAX接口

SAX解析器被称作，SAXParser是由创建的。与DOM解析器不同，SAX解析器并不创建XML文档的内存表示，因此要更快使用更少的内存。而是，SAX解析器通过调用回调方法将XML文档结构告知客户端，也就是说，通过调用提供给解析器的实例上的方法。

`DefaultHandler`类实现了，，以及等接口。大多数客户端甘心`ContentHandler`接口中定义的方法，当SAX解析器在XML文档中遇到元素时，相应的方法将被调用。接口中最重要的方法有：

  - `startDocument()`和`endDocument()`方法，当XML文档的开始和结束时被调用。
  - `startElement()`和`endElement()`方法，当一个文档元素开始和结束时被调用。
  - `characters()`方法，调用处理XML文档元素的开始标签和结束标签之间的文本数据。

客户端提供一个`DefaultHandler`的子类，实现这些方法，并在方法中对数据进行处理，可能会将数据存入数据库，或写出到流中。

在解析过程中，解析器可能需要访问外部文档。因此可能会使用[XML Catalog将经常使用的XML文档存储在本地的缓存中](https://zh.wikipedia.org/wiki/XML_Catalog "wikilink")。

SAX接口是在2000年5月发布的Java 1.3中引入的。\[2\]

## StAX接口

StAX的设计介于DOM和SAX接口之间，在它的隐喻中，程序的入口点是一个代表文档中一个位置的光标。应用程序可以按需向前移动光标 – 从解析器中“拉”出信息。这与基于事件的API（如SAX）不同，SAX将数据“推”给应用程序，要求应用程序维护事件间的状态，如果应用需要知道在文档中的位置信息。

## XSLT接口

[XSLT](../Page/XSLT.md "wikilink")（可扩展样式表转换语言）允许将XML文档转换为数据其他形式。应用程序使用`javax.xml.transform`包中的接口可以进行XSLT转换。接口最初被称为TrAX （Transformation API for XML），是由许多Java XSLT处理器的开发人员通过非正式协作开发的。

接口的主要特性包括：

  - 工厂类可以使应用动态地选择使用哪一个XSLT处理器。
  - `TransformerFactory`上的方法用来创建对象, 表示样式表的编译后的形式。这是一个线程安全的对象，可以重复使用，顺序或并发，在多个源文档上应用同一个样式表（或用用一个源文档，不同的参数）
  - `Templates`上的方法可以创建，表示样式表的可执行形式。`Transformer`不可以在线程间共享，虽然也是可重用的。`Transformer`提供方法设置样式表参数和序列化选项（例如，输出是否缩进），以及一个实际运行转换的方法。

JAXP定义了和两个抽象接口来表示转换的输入和输出。某种程度上，这是非常规使用Java接口，这是因为并不期待一个处理器会接受任何实现该接口的类，每一个处理器可以选择支持那些`Source`和`Result`的处理。实际上所有JAXP处理器支持三种标准类型的`Source` （`DOMSource`，`SAXSource`，`StreamSource`）以及三种标准类型的`Result` （`DOMResult`，`SAXResult`，`StreamResult`）以及处理器自己的实现。

## 版本

| [J2SE版本](https://zh.wikipedia.org/wiki/Java_SE "wikilink") | 其中的JAX版本 |
| ---------------------------------------------------------- | -------- |
| 1.4                                                        | 1.1      |
| 1.5                                                        | 1.3      |
| 1.6                                                        | 1.4      |

JAXP 1.4.4于2010年9月3日发布。JAXP 1.3已经于2008年2月12日产品终结。\[3\]

## 参见

  - [SAX](../Page/SAX.md "wikilink")
  - [DOM](https://zh.wikipedia.org/wiki/DOM "wikilink")
  - [StAX](../Page/StAX.md "wikilink")
  - [XSLT](../Page/XSLT.md "wikilink")
  - [JAXB](../Page/JAXB.md "wikilink")
  - [Dom4j](https://zh.wikipedia.org/wiki/Dom4j "wikilink")
  - [JDOM](https://zh.wikipedia.org/wiki/JDOM "wikilink")
  - [Saxon](https://zh.wikipedia.org/wiki/Saxon "wikilink")
  - [XALAN](https://zh.wikipedia.org/wiki/XALAN "wikilink")

## 外部链接

  - [JAXP 产品描述](http://jaxp.java.net/)
  - [JSR 63](http://www.jcp.org/en/jsr/detail?id=63) （JAXP 1.1和1.2）
  - [JSR 5](http://www.jcp.org/en/jsr/detail?id=5) （JAXP 1.0）

## 参考文献

<references />

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")

1.  [Document Object Model(DOM) Level 2 Core Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Core-20001113)
2.  Compare the [Java 1.2.1 API index](http://java.sun.com/j2ee/sdk_1.2.1/techdocs/api/index-all.html#_S_) with the [1.3 index](http://java.sun.com/j2ee/sdk_1.3/techdocs/api/index-all.html#_S_). The Java Specification Request (JSR) 5, *XML Parsing Specification*, was finalised on [21 March, 2000](http://jcp.org/en/jsr/detail?id=5).
3.  [1](https://jaxp.dev.java.net/1.3/EndofLife.html)