JAXB（Java Architecture for XML
Binding简称JAXB）允许[Java开发人员将Java](../Page/Java.md "wikilink")[类映射为](../Page/类_\(计算机科学\).md "wikilink")[XML表示方式](../Page/XML.md "wikilink")。JAXB提供两种主要特性：将一个Java[对象](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")[序列化为XML](../Page/序列化.md "wikilink")，以及反向操作，将XML解析成Java对象。换句话说，JAXB允许以XML格式存储和读取数据，而不需要程序的类结构实现特定的读取XML和保存XML的代码。

当规格复杂且经常变化时JAXB特别有用。在这种情况下，经常修改[XML模式定义以与Java定义保持一致很花费时间并且容易产生错误](https://zh.wikipedia.org/wiki/XML模式 "wikilink")。

JAXB是[Java
EE平台的](https://zh.wikipedia.org/wiki/Java_EE "wikilink")[API之一](../Page/应用程序接口.md "wikilink")，同时是[Java
Web服务开发包](https://zh.wikipedia.org/wiki/Java_Web服务开发包 "wikilink")（[JWSDP](https://zh.wikipedia.org/wiki/:en:Java_Web_Services_Development_Pack "wikilink")）的一部分。JAXB也是[Web服务互操作性技术](https://zh.wikipedia.org/wiki/Web服务互操作性技术 "wikilink")（[WSIT](https://zh.wikipedia.org/wiki/:en:Web_Services_Interoperability_Technology "wikilink")）的基础之一.
JAXB是J2SE1.6的一部分。

JAXB 1.0是在[Java社群过程中作为JSR](../Page/JCP.md "wikilink") 31开发出来的。JAXB
2.0是作为JSR 222开发的。这两个版本的参考实现可以从java.net下载。

## 使用

“xjc”工具可以用来将[XML模式或其他类型模式文件](https://zh.wikipedia.org/wiki/XML模式 "wikilink")（Java
1.6试验性地支持[RELAX
NG](https://zh.wikipedia.org/wiki/RELAX_NG "wikilink")，[DTD以及](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")[WSDL](../Page/WSDL.md "wikilink")）转换为Java类。Java类使用javax.xml.bind.annotation包下的[Java标注](https://zh.wikipedia.org/wiki/Java标注 "wikilink")，例如@XmlRootElement和@XmlElement。XML列表序列表示为java.util.List类型的属性，通过JAXBContext可以创建Marshallers（将Java对象转换成XML）和Unmarshallers（将XML解析为Java对象）。

此外，JAXB包括了一个“schemagen”工具，能够执行“xjc”的反向操作，通过一组标注的Java类创建一个XML模式。

## 缺省的数据类型绑定

下面的表格列出了JAXB中XML数据类型和Java数据类型的映射。

| XML Schema类型        | Java数据类型                                |
| ------------------- | --------------------------------------- |
| xsd:string          | java.lang.String                        |
| xsd:positiveInteger | java.math.BigInteger                    |
| xsd:int             | int                                     |
| xsd:long            | long                                    |
| xsd:short           | short                                   |
| xsd:decimal         | java.math.BigDecimal                    |
| xsd:float           | float                                   |
| xsd:double          | double                                  |
| xsd:boolean         | boolean                                 |
| xsd:byte            | byte                                    |
| xsd:QName           | javax.xml.namespace.QName               |
| xsd:dateTime        | javax.xml.datatype.XMLGregorianCalendar |
| xsd:base64Binary    | byte\[\]                                |
| xsd:hexBinary       | byte\[\]                                |
| xsd:unsignedInt     | long                                    |
| xsd:unsignedShort   | int                                     |
| xsd:unsignedByte    | short                                   |
| xsd:time            | javax.xml.datatype.XMLGregorianCalendar |
| xsd:date            | javax.xml.datatype.XMLGregorianCalendar |
| xsd:g               | javax.xml.datatype.XMLGregorianCalendar |
| xsd:anySimpleType   | java.lang.Object                        |
| xsd:anySimpleType   | java.lang.String                        |
| xsd:duration        | javax.xml.datatype.Duration             |
| xsd:NOTATION        | javax.xml.namespace.QName               |
|                     |                                         |

## 参见

  - [XML数据绑定](https://zh.wikipedia.org/wiki/XML数据绑定 "wikilink")
  - [XMLBeans](https://zh.wikipedia.org/wiki/XMLBeans "wikilink")–与**JAXB**类似的技术，来自[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")
  - [TopLink軟體](https://zh.wikipedia.org/wiki/TopLink軟體 "wikilink")–对象到关系和对象到[XML的映射产品](../Page/XML.md "wikilink")，来自[Oracle公司](https://zh.wikipedia.org/wiki/Oracle "wikilink")，支持JAXB
    1.0

## 外部链接

  - [JAXB主页](https://jaxb.dev.java.net/)，位于[GlassFish项目](https://zh.wikipedia.org/wiki/GlassFish "wikilink")。
  - [JAXB前主页](http://java.sun.com/xml/jaxb/index.jsp)
  - [JSR 222](http://www.jcp.org/en/jsr/detail?id=222)（JAXB 2.0）
  - [JSR 31](http://www.jcp.org/en/jsr/detail?id=31)（JAXB 1.0）
  - [JAXB教程](https://jaxb.dev.java.net/tutorial/)，作者是Wolfgang Laun
  - [JaxMe](https://web.archive.org/web/20100723202011/http://ws.apache.org/jaxme/)
    –
    [Apache软件基金会的JAXB的](../Page/Apache软件基金会.md "wikilink")[开源实现](https://zh.wikipedia.org/wiki/开源 "wikilink")
  - [EclipseLink MOXy](http://www.eclipse.org/eclipselink/) –
    [Eclipse基金会JAXB和对象XML映射服务的](../Page/Eclipse基金会.md "wikilink")[开源实现](https://zh.wikipedia.org/wiki/开源 "wikilink")
  - [Java
    EE 5教程中的JAXB章节](http://java.sun.com/javaee/5/docs/tutorial/doc/?wp405761&JAXB.html#wp100322)
  - [用JAXB2从对象模型生成XML文档](http://www.devx.com/Java/Article/34069)
  - [JAXB 2.0](https://archive.is/20121206043742/http://blogs.techrepublic.com.com/programming-and-development/?p=498)

[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")