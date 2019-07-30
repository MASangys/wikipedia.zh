**TYPO3**是一个以[PHP](../Page/PHP.md "wikilink")编写、采用[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")的[自由](../Page/自由软件.md "wikilink")、[开源的](https://zh.wikipedia.org/wiki/开源 "wikilink")[内容管理系统](../Page/内容管理系统.md "wikilink")。它可在众多操作系统（[Linux](../Page/Linux.md "wikilink")、[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[macOS和](https://zh.wikipedia.org/wiki/macOS "wikilink")[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")）和多种[网页服务器上](https://zh.wikipedia.org/wiki/网页服务器 "wikilink")（诸如[Apache和](../Page/Apache_HTTP_Server.md "wikilink")[IIS](../Page/網際網路資訊服務.md "wikilink")）。

## 历史

TYPO3最早由丹麦人Kasper Skårhøj开发，现今有两个开发组进行维护。版本4.x组长为Oliver Hader，版本5.x组长为Robert Lemke。

TYPO3的扩展插件数量超过4500个。这些插件绝大多数是由第三方开发者制作的，大部分免费。

## 特点

TYPO3有网页前台和后台，前台用于展示给浏览者，网页作者和网站管理员通过后台管理内容。网页使用PHP 5.2或更新版本和任意支持TYPO3 DBAL的关系型数据库（MySQL, Oracle, PostgreSQL等）。硬件要求为当前主流CPU，至少256 MB的内存。后台可以通过JavaScript显示在任何当前主流的浏览器上。

## 设计

系统使用一种叫做TypoScript的特殊配置语言。TypoScript可用于从数据库中抓取信息，处理数据，生成网页内容。一般的TypoScript包含模板引擎（如automaketemplate或TemplaVoila），这些模板引擎会基于HTML模板创建输出HTML页。

TYPO3定义多种数据类型。标准类型包括：文本，图像，带图像的文本，html，表，视频，链表等。这些类型可以通过插件进行扩展。最基本的类型称为“页”。每个可以展示给用户的元素属于某个特定的页。页可以在嵌套结构中无限制继承。TYPO3中有许多特殊的“页”，例如快捷页（浏览此页时会导向另一个页），加载页（允许在加载点上加载“页树”的一部分）。

TYPO3中几乎一切都可以扩展和插件化。例如，TYPO3可以通过安装扩展使用各种用户认证方法（RSA，OpenID）。

## 示例

基本表达式为：

`[objectpath].[attribute]  [operator]  [value]`

运算符包括:

  - \= 赋值
  - \< 复制对象
  - \=\< 插入引用
  - \> 删除对象

示例:

`page.10 = TEXT`
`page.10.value = Hello, world!`

特别指出，TypoScript是配置脚本而不是编程语言，即所有内容都是声明性质的。下列代码在TYPO3中不会触发任何动作，但在编程语言中，它们会创建或删除条目:

`page.10 = TEXT`
`page.10.value = Hello, world!`
`page.10 >`

此示例中TypoScript对象"page.10"被创建并被立即删除。当TYPO3解析TypoScript时, 它会在实际执行创建对象"page.10"命令前删除掉对象声明。

## 另见

  - [內容管理](https://zh.wikipedia.org/wiki/內容管理 "wikilink")

  - [内容管理系统](../Page/内容管理系统.md "wikilink")

  - [内容管理系统列表](../Page/内容管理系统列表.md "wikilink")

  -
  - 使用TYPO3的[TCPDF](../Page/TCPDF.md "wikilink")库，用于生成PDF文档

## 参考资料

## 扩展阅读

  - Rene Fritz, Daniel Hinderink, Werner Altmann – *TYPO3: Enterprise Content Management* (Paperback) – ISBN 1-904811-41-8
  - Michael Peacock – *Building Websites with TYPO3* (Paperback) – ISBN 1-84719-111-8
  - Dan Osipov - *TYPO3 4.3 Multimedia Cookbook* (Paperback) - ISBN 978-1-84719-848-8
  - Dmitry Dulepov – *TYPO3 Extension Development* (Paperback) – ISBN 978-1-84719-212-7

## 外部链接

  -
  -
  - [TYPO3 Forge - Git Repositories, SVN Repositories, Bugtracker, Documentation and Wiki for the TYPO3 Core and Extensions](https://forge.typo3.org)

  - [TYPO3 Wiki](https://wiki.typo3.org)

  - [TYPO3 References Blog](https://web.archive.org/web/20170318122433/https://www.t3blog.com/)

  - [TYPO3 Videos for Editors](https://web.archive.org/web/20091124033102/http://typo3.org/documentation/videos/) (Series of 22 TYPO3 video tutorials to version 4.2) - supplemented by a [TYPO3 test website](http://www.typo3-test.org/#c134)

[Category:網誌軟體](https://zh.wikipedia.org/wiki/Category:網誌軟體 "wikilink") [Category:内容管理系统](https://zh.wikipedia.org/wiki/Category:内容管理系统 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink") [Category:自由内容管理系统](https://zh.wikipedia.org/wiki/Category:自由内容管理系统 "wikilink") [Category:用PHP编程的自由软件](https://zh.wikipedia.org/wiki/Category:用PHP编程的自由软件 "wikilink")