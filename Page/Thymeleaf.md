**Thymeleaf**是一个[Java](../Page/Java.md "wikilink")
[XML](../Page/XML.md "wikilink") / [XHTML](../Page/XHTML.md "wikilink")
/ [HTML5](../Page/HTML5.md "wikilink") 模板引擎
，可以在Web（基于[servlet](../Page/Java_Servlet.md "wikilink")
）和非Web环境中工作。
它更适合在基于[MVC的Web应用程序的视图层提供XHTML](../Page/MVC.md "wikilink")
/ HTML5，但它甚至可以在脱机环境中处理任何XML文件。 它提供完整的[Spring
Framework](../Page/Spring_Framework.md "wikilink")。

在Web应用程序中，Thymeleaf旨在成为[JavaServer Pages](../Page/JSP.md "wikilink")
（JSP）的完全替代品，并实现*自然模板*的概念：模板文件可以直接在浏览器中打开，并且仍然可以正确显示为网页。

Thymeleaf是 [开源软件](../Page/开源软件.md "wikilink")、许可下
[Apache许可证2.0](../Page/Apache许可证.md "wikilink").

## 功能

从该项目的网站：\[1\]

  - 用于[XML](../Page/XML.md "wikilink") ，
    [XHTML和](../Page/XHTML.md "wikilink")[HTML5的](../Page/HTML5.md "wikilink")
    Java 模板引擎 。
  - 适用于Web和非Web（离线）环境。
    没有硬依赖[Servlet](../Page/Java_Servlet.md "wikilink") API。
  - 基于称为*方言的*模块化特征集。
      - 方言特征（例如：评估，迭代等）通过将它们链接到模板的标签和/或属性来应用。
      - 开箱即用的两种方言：Standard和SpringStandard（适用于[Spring
        MVC应用程序](../Page/Spring_Framework.md "wikilink")，与标准语法相同）。
      - 开发人员可以扩展和创建自定义方言。
  - 几种模板模式：
      - **[XML](../Page/XML.md "wikilink")**
        ：验证[DTD与否](https://zh.wikipedia.org/wiki/文档类型定义 "wikilink")。
      - **[XHTML](../Page/XHTML.md "wikilink") 1.0和1.1**
        ：是否针对标准[DTD进行验证](https://zh.wikipedia.org/wiki/文档类型定义 "wikilink")。
      - **[HTML5](../Page/HTML5.md "wikilink")** ：XML格式的代码和基于遗留的HTML5。
        传统的非XML代码将自动清理并转换为[XML格式](../Page/XML.md "wikilink")。
  - 完整（和可扩展）的**国际化**支持。
  - 可配置的高性能**解析模板缓存** ，可将输入/输出降至最低。
  - 自动DOCTYPE转换 -
    从模板[DTD到结果DTD](https://zh.wikipedia.org/wiki/文档类型定义 "wikilink")-用于（可选）验证模板和结果代码。
  - 极易扩展：如果需要，可以用作模板引擎框架。
  - 完整的文档，包括几个示例应用

## Thymeleaf的例子

下面的例子产生一个HTML5表的行为每个项目的一个 *列表<产品>* 变量 *所有产品*.

``` html5
<table>
  <thead>
    <tr>
      <th th:text="#{msgs.headers.name}">Name</th>
      <th th:text="#{msgs.headers.price}">Price</th>
    </tr>
  </thead>
  <tbody>
    <tr th:each="prod : ${allProducts}">
      <td th:text="${prod.name}">Oranges</td>
      <td th:text="${#numbers.formatDecimal(prod.price,1,2)}">0.99</td>
    </tr>
  </tbody>
</table>
```

这段代码包括：

  - 国际化表现形式： *<span style="color:#708090; font-family:monospace;">
    \#{...}rh</span>*
  - 变量/模型的属性评估表: *<span style="color:#708090; font-family:monospace;">
    ${的。</span><span style="color:#708090; font-family:monospace;">中。中。
    } </span>*
  - 实用功能： *<span style="color:#708090; font-family:monospace;">
    \#数字。formatDecimal(中。</span><span style="color:#708090; font-family:monospace;">中。中。
    ) </span>*

此外，这个片段(X)HTML代码可以被完全显示通过浏览器作为一个原型，没有正在进行处理：它是一个 *自然的模板*中。

## 参見

  - 模板引擎（网络）
  - [JavaServer Pages](../Page/JSP.md "wikilink")
  - [Spring框架](../Page/Spring_Framework.md "wikilink")
  - [FreeMarker](../Page/FreeMarker.md "wikilink")
  - [Apache Velocity](../Page/Apache_Velocity.md "wikilink")
  - 模板属性语言

## 参考文献

<references group="" responsive="">

</references>

## 外部鏈接

  - [Thymeleaf](http://www.thymeleaf.org)

[Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink")
[Category:Java函式庫](https://zh.wikipedia.org/wiki/Category:Java函式庫 "wikilink")
[Category:網頁模板引擎](https://zh.wikipedia.org/wiki/Category:網頁模板引擎 "wikilink")
[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.