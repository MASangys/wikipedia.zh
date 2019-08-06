**Apache Velocity**是一个基于[Java](../Page/Java.md "wikilink")的[模板引擎](https://zh.wikipedia.org/wiki/模板引擎 "wikilink")，它提供了一个模板语言去引用由Java代码定义的[对象](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")。Velocity是[Apache基金会旗下的一个](https://zh.wikipedia.org/wiki/Apache基金会 "wikilink")[开源软件项目](https://zh.wikipedia.org/wiki/开源 "wikilink")，旨在确保[Web应用程序在表示层和业务逻辑层之间的隔离](https://zh.wikipedia.org/wiki/Web应用程序 "wikilink")（即[MVC](../Page/MVC.md "wikilink")设计模式）。

## 用途

下面是一些利用Velocity的常见应用类型：

  - [Web应用程序](https://zh.wikipedia.org/wiki/Web应用程序 "wikilink")：[网页设计](../Page/网页设计.md "wikilink")者创建[HTML](../Page/HTML.md "wikilink")页面，并为动态信息预留占位符。页面再由VelocityViewServlet或任何支持Velocity的框架处理。
  - [源代码](../Page/源代码.md "wikilink")生成：Velocity可基于模板生成Java、[SQL](../Page/SQL.md "wikilink")或[PostScript](../Page/PostScript.md "wikilink")源代码。大量的[开源和商业](https://zh.wikipedia.org/wiki/开源 "wikilink")[软件包的开发就是这样利用Velocity](https://zh.wikipedia.org/wiki/软件包 "wikilink")。\[1\]
  - [电子邮件](../Page/电子邮件.md "wikilink")自动生成：许多应用程序为了账户注册、[密码提醒或自动寄送报表之需自动生成电子邮件](https://zh.wikipedia.org/wiki/密码 "wikilink")。利用Velocity，电子邮件模板可以存储在一个[文本文件](../Page/文本文件.md "wikilink")，而不是直接嵌入到电子邮件生成器的Java代码中。
  - [XML](../Page/XML.md "wikilink")转化：Velocity提供一个[Ant任务](../Page/Apache_Ant.md "wikilink")——Anakia。Anakia读取XML文件，利用Velocity模板转换成所需的文档格式。常见的应用是将某种格式的文档转换成的一个带样式的HTML文档。

## 代码示例

如下的Web模板：

``` html4strict
## Velocity Hello World
<html>
    <body>
       #set( $foo = "Velocity" )
       ## followed by
       Hello $foo World!
    </body>
</html>
```

经过Velocity处理后会生成如下的HTML代码：

``` html4strict
<html>
    <body>
     Hello Velocity World!
    </body>
</html>
```

## 参见

  -
  - [FreeMarker](../Page/FreeMarker.md "wikilink")

  - [JavaServer Pages](https://zh.wikipedia.org/wiki/JavaServer_Pages "wikilink")

  - [Thymeleaf](../Page/Thymeleaf.md "wikilink")

## 参考文献

  -
  -
## 外部链接

  - [Apache Velocity](http://velocity.apache.org/)
  - [Velocity维基](http://wiki.apache.org/velocity/)
  - [基于Java的模板引擎比较](http://www.javaworld.com/javaworld/jw-11-2007/jw-11-java-template-engines.html)

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink") [Category:網頁模板引擎](https://zh.wikipedia.org/wiki/Category:網頁模板引擎 "wikilink") [Category:Java函式庫](https://zh.wikipedia.org/wiki/Category:Java函式庫 "wikilink")

1.