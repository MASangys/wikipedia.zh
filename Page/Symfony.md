**Symfony**是一款基于[MVC](../Page/MVC.md "wikilink")架构的[PHP](../Page/PHP.md "wikilink")[框架](https://zh.wikipedia.org/wiki/框架 "wikilink")。它是一款免费软件，在[MIT
License许可下发行](https://zh.wikipedia.org/wiki/MIT_License "wikilink")。2005年10月18日，其官方网站symfony-project.com对外开放。2011年Symfony2正式发布，随即启用全新的官方网站symfony.com。\[1\]

## 目标

Symfony致力于减少重复代码的编写，以加速Web应用的开发和维护。它需要以下软件的支持：安装过PHP5的[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")，[Mac
OS或](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")[Microsoft
Windows等操作系统作为WEB应用服务](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。Symfony与许多[关系型数据库整合的也非常好](https://zh.wikipedia.org/wiki/关系型数据库 "wikilink")，成本也较小。\[2\]

Symfony致力于在企业背景下创建健壮的应用，同时也给予了开发者强大的配置功能：从文件结构到外部目录，几乎所有的东西都可以自定义。Symfony也捆绑了一些诸如测试、调试、文档生成等额外的工具来满足企业的开发过程。

## 技术

Symfony使用了大量的[设计模式](https://zh.wikipedia.org/wiki/设计模式 "wikilink")，比如[MVC](../Page/MVC.md "wikilink")模式，它分离了业务逻辑层和表示层，降低了耦合性，使程序更易于维护。
Symfony使用了以下一些PHP开源项目的部分功能。

  - [Propel
    (PHP)](https://zh.wikipedia.org/wiki/Propel_\(PHP\) "wikilink")：用作[对象关系映射](../Page/对象关系映射.md "wikilink")（ORM）
  - [Doctrine
    (PHP)](https://zh.wikipedia.org/wiki/Doctrine_\(PHP\) "wikilink")：用作[对象关系映射](../Page/对象关系映射.md "wikilink")（ORM）
  - [Creole](https://zh.wikipedia.org/wiki/Creole "wikilink")：用作数据库抽象层
  - [Prado](https://zh.wikipedia.org/wiki/Prado "wikilink")：用作国际化支持
  - [Spyc](https://zh.wikipedia.org/wiki/Spyc "wikilink")：用作解析[YAML](../Page/YAML.md "wikilink")
  - [Pake](https://zh.wikipedia.org/wiki/Pake "wikilink")：用作命令行工具
  - [Twig](https://zh.wikipedia.org/wiki/Twig "wikilink")：用作模板引擎

Symfony也使用了一些开源的[Javascript库](https://zh.wikipedia.org/wiki/Javascript "wikilink")。

  - [Prototype](https://zh.wikipedia.org/wiki/Prototype_javascript "wikilink")：用作javascript框架（v
    1.0和1.1）
  - [script.aculo.us](https://zh.wikipedia.org/wiki/script.aculo.us "wikilink")：用作视觉特效（v
    1.0 and 1.1）
  - [Dynarch.com](https://zh.wikipedia.org/wiki/Dynarch.com "wikilink")，用作[DHTML日历](https://zh.wikipedia.org/wiki/DHTML "wikilink")（v
    1.0 and 1.1）
  - [TinyMCE](../Page/TinyMCE.md "wikilink")，用作[富文本编辑器](https://zh.wikipedia.org/wiki/富文本 "wikilink")（v
    1.0）
  - [FCKeditor](https://zh.wikipedia.org/wiki/FCKeditor "wikilink")，用作[富文本编辑器](https://zh.wikipedia.org/wiki/富文本 "wikilink")

在symfony1.2中默认状态没有包含任何JavaScript框架，开发者必须手动选择并添加JavaScript框架。

## 赞助

Sensio是Symfony的赞助商，它是一家法国Web代理商。\[3\]起先Symfony使用Sensio
Framework作为该项目的名字\[4\]，因此代码中所有的类名前都加上了"sf"前缀，当它决定以[开源形式发布时](https://zh.wikipedia.org/wiki/开源 "wikilink")，便以Symfony作为名称（Symfony的英文缩写也是sf）。\[5\]

## 应用

一款开源的Q\&A服务[Askeet就是使用Symfony开发的](https://zh.wikipedia.org/wiki/Askeet "wikilink")。[许多其他应用](https://www.webcitation.org/65WVc4PWK?url=http://trac.symfony-project.org/wiki/ApplicationsDevelopedWithSymfony)，包括拥有2000万用户的[Yahoo
Bookmarks](http://webarchive.loc.gov/all/20071219221751/http://beta.bookmarks.yahoo.com/)，也是使用Symfony开发的。

## 发布

| 颜色 | 含义       |
| -- | -------- |
| 红  | 旧版本，不被支持 |
| 黄  | 旧版本，尚支持  |
| 绿  | 当前版本     |
| 蓝  | 未来版本     |

| 版本  | 发布日期     | 支持年限 | PHP版本       | 结束维护     | 备注                                  |
| --- | -------- | ---- | ----------- | -------- | ----------------------------------- |
| 1.0 | 2007年1月  | 1年   | \>= 5.0     | 2010年1月  |                                     |
| 1.1 | 2008年6月  | 1年   | \>= 5.1     | 2009年6月  |                                     |
| 1.2 | 2008年12月 | 1年   | \>= 5.2     | 2009年11月 |                                     |
| 1.3 | 2009年11月 | 1年   | \>= 5.2.4   | 2010年11月 |                                     |
| 1.4 | 2009年11月 | 3年   | \>= 5.2.4   | 2012年11月 | LTS 1.4版与1.3版完全相同，但1.4不支持1.3中被废弃的功能 |
| 2.0 | 2011年7月  | 26个月 | \>= 5.3.2   | 2013年3月  | 最后的2.0.x版本是Symfony 2.0.25           |
| 2.1 | 2012年9月  | 8个月  | \>= 5.3.3   | 2013年1月  | 更多稳定的API部分组件                        |
| 2.2 | 2013年3月  | 8个月  | \>= 5.3.3   | 2013年11月 | 新增多个功能                              |
| 2.3 | 2013年1月  | 3年   | \>= 5.3.3   | 2016年5月  |                                     |
| 2.4 | 2013年11月 | 8个月  | \>= 5.3.3   | 2014年7月  | 第一个实现向下兼容的2.0分支版本发布                 |
| 2.5 | 2014年5月  | 8个月  | \>= 5.3.3   | 2015年1月  |                                     |
| 2.6 | 2014年11月 | 8个月  | \>= 5.3.3   | 2015年7月  |                                     |
| 2.7 | 2015年5月  | 3年   | \>= 5.3.9   | 2018年5月  | [長期支援](../Page/長期支援.md "wikilink")  |
| 2.8 | 2015年11月 | 3年   | \>= 5.3.9   | 2018年11月 | 長期支援                                |
| 3.0 | 2015年11月 | 8个月  | \>= 5.5.9   | 2016年7月  |                                     |
| 3.1 | 2016年5月  | 8个月  | \>= 5.5.9   | 2017年1月  |                                     |
| 3.2 | 2016年11月 | 8个月  | \>= 5.5.9   | 2017年7月  |                                     |
| 3.3 | 2017年6月  | 8个月  | \>= 5.5.9   | 2018年1月  |                                     |
| 3.4 | 2017年11月 | 3年   | \>= 5.5.9   | 2020年11月 | 長期支援                                |
| 4.0 | 2017年11月 | 8个月  | \>= 7.1.3   | 2018年7月  | 不再支持HHVM                            |
| 4.1 | 2018年5月  | 8个月  | \>= 7.1.3   | 2019年1月  |                                     |
| 4.2 | 2018年11月 | 8个月  | \>= 7.1.3   | 2019年7月  |                                     |
| 4.3 | 2019年5月  | 8个月  | \>= 7.\*.\* | 2020年1月  |                                     |

## 参考资料

## 扩展阅读

  - Potencier, Fabien and Zaninotto, Fran?ois.（2007）. *The Definitive
    Guide to Symfony.*
    [Apress](https://zh.wikipedia.org/wiki/Apress "wikilink")。ISBN
    1-59059-786-9.

## 外部链接

  - [New Website for Symfony2](http://symfony.com/)

  - [Symfony Project Homepage](http://www.symfony-project.org)

  - [Symfony Blog (not official)](http://www.symfony-framework.com)

  - [Symfonians.net - A Community of Projects Using the Symfony
    Framework](http://symfonians.net/)

  - [SymfonyLab.com - Symfony tips and tricks, free
    plugins](http://symfonylab.com/)

  -
[Category:PHP编程语言](https://zh.wikipedia.org/wiki/Category:PHP编程语言 "wikilink")
[Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink")

1.  [symfony Web PHP Framework ? Blog ? Two years of
    symfony](http://www.symfony-project.org/blog/2007/10/18/two-years-of-symfony)
2.  [symfony Web PHP Framework ?
    About](http://www.symfony-project.org/about)
3.  [Learn symfony: a Beginner's
    Tutorial](http://www.sitepoint.com/print/symfony-beginners-tutorial)
4.  [symfony framework forum: General discussion =\> New symfony tagline
    brainstorming](http://www.symfony-project.org/forum/index.php/mv/msg/906/3674/#msg_3674)

5.  [Comments by Sensio
    Owner](http://www.symfony-project.org/forum/index.php?t=msg&&th=906&goto=3674#msg_3674)