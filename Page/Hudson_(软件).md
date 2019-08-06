**Hudson**是用[Java](../Page/Java.md "wikilink")编写的一个[持续集成](https://zh.wikipedia.org/wiki/持续集成 "wikilink")（CI）工具。它运行在[Servlet容器中](https://zh.wikipedia.org/wiki/Servlet容器 "wikilink")（例如[Apache Tomcat](../Page/Apache_Tomcat.md "wikilink")、[GlassFish](https://zh.wikipedia.org/wiki/GlassFish "wikilink")）。它支持[软件配置管理](../Page/软件配置管理.md "wikilink")（SCM）工具（包括[CVS](https://zh.wikipedia.org/wiki/CVS "wikilink")、[Subversion](../Page/Subversion.md "wikilink")、[Git](../Page/Git.md "wikilink")、、和），可以执行基于[Apache Ant和](../Page/Apache_Ant.md "wikilink")[Apache Maven的项目](../Page/Apache_Maven.md "wikilink")，以及任意的shell脚本和Windows批处理命令。Hudson的主要开发者是川口耕介，开发期间就职于[昇陽電腦](../Page/昇陽電腦.md "wikilink")公司。Hudson是在[MIT许可证下发布的](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")[自由软件](../Page/自由软件.md "wikilink")。

可以通过各种手段触发构建。例如可以通过类似[Cron](../Page/Cron.md "wikilink")的机制调度，可以在其他的构建已经完成时，以及可以通过一个特定的URL进行请求。

Hudson在2008年左右基本取代了和其他开源的构建服务器（Build Server）。\[1\]\[2\]在2008年5月的[JavaOne大会上](https://zh.wikipedia.org/wiki/JavaOne "wikilink")，Hudson成为“Duke选择奖”开发人员解决方案分类的得主。\[3\]

[甲骨文公司](../Page/甲骨文公司.md "wikilink")收购[昇陽電腦](../Page/昇陽電腦.md "wikilink")时，甲骨文公司宣布其有意把Hudson的名字作为商标，并开始以[商业软件开发](https://zh.wikipedia.org/wiki/商业软件 "wikilink")。2011年初，开发社区中的多数人（包括川口耕介）决定以[Jenkins的名义延续该项目](../Page/Jenkins_\(软件\).md "wikilink")。甲骨文公司坚称Hudson仍在继续开发，而Jenkins是其的[分支](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")；但Jenkins的开发者认为Hudson是其的分支。

随后，甲骨文公司对于Hudson项目丧失了兴趣，最终在2012年底将其捐赠给了[Eclipse基金会](../Page/Eclipse基金会.md "wikilink")\[4\]。截至2013年11月，每天提交给了Jenkins的贡献\[5\]要比Hudson的\[6\]多得多。

## 插件

Hudson可通过一个插件架构进行扩展。许多插件已经公开，扩展了Hudson，使其远远超越了纯粹的Java项目的构建工具。 对于大多数的版本控制系统和大的数据库，有与Hudson集成的插件可用。许多构建（build）工具都是通过他们各自的插件提供支持。插件还可以改变Jenkins的外观，或添加新的功能。

构建时可以生成各种格式的测试报告（[JUnit](../Page/JUnit.md "wikilink")是内建支持的，别的格式则需通过插件）。Hudson可以显示报表，生成趋势图，并在图形化界面中呈现它们。

## Hudson——Jenkins的分裂

在2010年11月，就由谁主导Hudson，\[7\]该项目的主要贡献者和甲骨文公司之间展开谈判，尽管在多个方面达成一致，争议集中在对“Hudson”名字本身的控制上。甲骨文公司声明对Hudson的名字拥有权利，并在2010年12月初申请将其注册为商标（在2011年10月25日获得商标权）\[8\]。因此，2011年1月11日，有人提议将项目名称从“Hudson”变更为“Jenkins”。\[9\]2011年1月29日，社区投票以压倒多数批准通过该提案，创建[Jenkins项目](../Page/Jenkins_\(软件\).md "wikilink")。\[10\]2011年2月1日，甲骨文公司表示，继续与社区中的其他人合作，延续Hudson的开发。\[11\]

## 移交给Eclipse基金会

2011年5月3日，[Eclipse基金会](../Page/Eclipse基金会.md "wikilink")与Hudson的主要提交者、甲骨文公司、和其他的社区支持者发出了正式的提议，将Hudson（包括核心代码和存在问题的商标）转交给Eclipse基金会。\[12\]Hudson的创始人川口耕介表示甲骨文公司此举是在考验Jenkins。“当我们与甲骨文公司的谈判找到一个中间地带时，他们说得很清楚，他们不打算放弃对Hudson商标的控制。但这一举动\[13\]表明他们清楚地认识到甲骨文公司无法使Hudson项目跟上Jenkins项目。” \[14\]2012年1月24日，Eclipse宣布把Hudson 3列入Eclipse基金会。\[15\]

## 参见

  - [持续集成软件](https://zh.wikipedia.org/wiki/持续集成#软件 "wikilink")

## 参考文献

## 外部链接

  - [Hudson主页](http://hudson-ci.org/)
  - [介绍Hudson的演示文稿](http://www.methodsandtools.com/tools/tools.php?hudson)
  - [Hudson的自由版权图书](http://www.eclipse.org/hudson/the-hudson-book/book-hudson.pdf)
  - [Hudson的PDF格式文档](http://hudson-ci.org/docs/index.html)
  - [Hudson和持续集成（CI）相关的文章](https://web.archive.org/web/20140711093451/http://adrian.org.ar/tag/hudson/)
  - [创始人川口耕介的文章《七招优化Jenkins/Hudson》](https://web.archive.org/web/20160304043539/http://di388e0fcqllf.cloudfront.net/whitepapers/7WaysToOptimizeJenkins.pdf?Hudsonwiki)

[Category:編譯工具](https://zh.wikipedia.org/wiki/Category:編譯工具 "wikilink") [Category:持续集成](https://zh.wikipedia.org/wiki/Category:持续集成 "wikilink") [Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink") [Category:Java開發工具](https://zh.wikipedia.org/wiki/Category:Java開發工具 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13. 指移交Hudson给Eclipse基金会。
14.
15. <https://web.archive.org/web/20131208004734/http://www.h-online.com/open/news/item/Eclipse-Foundation-announces-Hudson-3-0-1790687.html>