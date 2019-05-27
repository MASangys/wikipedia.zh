{{ Infobox Software | name = Okapi框架 | logo = | screenshot = | caption =
Okapi Rainbow主窗口 | founder = | developer = | status = 活跃 | latest
release version = M23 | latest release date =  | latest preview version
= | latest preview date = | operating system =
[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | programming
language = [Java](../Page/Java.md "wikilink") | genre = | license =
[LGPL](../Page/GNU宽通用公共许可证.md "wikilink") | website =
<http://www.opentag.com/okapi/wiki/> }} **Okapi
Framework**是跨平台和开源的组件和应用程序的集合，它为文档、软件的本地化和翻译提供广泛的支持。

## 结构

Okapi框架围绕下面的几个部分进行组织：

  - **接口规格** —
    框架中的组件和应用程序通过多个公用的API集（接口）进行通信。其中一些接口定义为高级规格。这些接口的实现允许您无缝地加入新组件到整体的框架中。例如：所有的过滤器使用相同的API解析输入文件，所以您可以使用任何可用的过滤器编写实用工具。

<!-- end list -->

  - **格式规格** —
    保存和交换数据是本地化过程中重要的一环。对众多格式尽可能使用开放的标准可以增加互操作性。在可行时，Okapi框架则利用现有的标准，例如[XLIFF](../Page/XLIFF.md "wikilink")、[SRX](https://zh.wikipedia.org/wiki/SRX_Segmentation_Rules_eXchage_LISA_OSCAR_XML_based_Standard "wikilink")、[TMX等](https://zh.wikipedia.org/wiki/Translation_Memory_eXchange "wikilink")。

<!-- end list -->

  - **组件** —
    Okapi框架还包含了不断增长的组件集，它们实现了不同的接口规格。一些是可以在编写高级组件时使用的基础和低级部分，而其他的则可以直接在脚本或应用程序中使用的插件。

<!-- end list -->

  - **应用程序** —
    最后，框架还提供了最终用户可以直接使用的应用程序。这些工具利用了Okapi组件并为您编写自己的组件提供了现成的平台。

## 组件

有两种主要类型的组件：

  - **过滤器** — 实现了多种过滤器组件，包括用于：HTML, OpenOffice.org、Microsoft
    Office文件、Java属性文件、.NET ResX文件、Table-type 文件（例如CSV）、[Gettext
    PO文件](../Page/Gettext.md "wikilink")、[XLIFF](../Page/XLIFF.md "wikilink")、[TMX](https://zh.wikipedia.org/wiki/Translation_Memory_eXchange "wikilink")、[Qt
    TS文件](../Page/Qt.md "wikilink")、[基于正则表达式的格式](../Page/正则表达式.md "wikilink")、[XML格式](../Page/XML.md "wikilink")（包括[Internationalization
    Tag
    Set的支持](https://zh.wikipedia.org/wiki/Internationalization_Tag_Set "wikilink")）等。

<!-- end list -->

  - **实用程序** —
    实现了多种实用程序，包括：文本提取和合并工具、RTF到文本的转换器、[编码转换](../Page/字符编码.md "wikilink")、换行符转换、[术语提取](https://zh.wikipedia.org/wiki/术语提取 "wikilink")、翻译比较、质量检查、[偽翻譯以及文本重写等](../Page/偽翻譯.md "wikilink")。

## 应用程序

使用了框架的一些应用程序有：

  - **Rainbow** — 提供了可用来运行任何Okapi实用程序的简易用户界面的程序。

<!-- end list -->

  - **Tikal** — 允许您在DOS提示符或批处理文件中执行任何Okapi实用程序的命令行工具。

<!-- end list -->

  - **Ratel** — 用来创建和修改SRX格式的分段规则的应用程序。

<!-- end list -->

  - **CheckMate** — 对已译文档进行质量检查的应用程序。

## 许可

在Okapi框架项目中的所有部分都是基于[LGPL协议](../Page/GNU宽通用公共许可证.md "wikilink")。

## 外部链接

  - [Okapi Framework home page](http://www.opentag.com/okapi/wiki)
  - [Downloads](http://code.google.com/p/okapi/downloads/list)
  - [Screen
    shots](http://www.opentag.com/okapi/wiki/index.php?title=Screenshots)
  - [Okapi Tools users group](http://groups.yahoo.com/group/okapitools/)

[Category:软件本地化工具](https://zh.wikipedia.org/wiki/Category:软件本地化工具 "wikilink")