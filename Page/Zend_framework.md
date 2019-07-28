**Zend
Framework**（ZF）是一种[开源的](https://zh.wikipedia.org/wiki/开源 "wikilink"),
[面向对象的WEB应用程序开发](https://zh.wikipedia.org/wiki/面向对象 "wikilink")[框架](https://zh.wikipedia.org/wiki/框架 "wikilink")，在[PHP](../Page/PHP.md "wikilink")7下运行，使用MVC软件架构，授權模式採用[BSD许可证](../Page/BSD许可证.md "wikilink")。\[1\]

## 当前版本

Zend Framework当前版本为3.0系列。

## 历史

Zend Framework的设计构思形成于2005年，由[Ruby on
Rails和](../Page/Ruby_on_Rails.md "wikilink")[Spring
Framework的设计思路发展而来的](../Page/Spring_Framework.md "wikilink")。2005年10月，第一次Zend年会上，Zend公司宣布了ZF的开发计划。\[2\]

2007年7月1日，Zend Framework 1.0发布。\[3\]

2012年9月5日，Zend Framework 2.0正式版发布。\[4\]

2016年6月28日 , Zend Framework 3.0正式發布。\[5\]

## 许可证

Zend
Framework框架得到了[开放源代码促进会](../Page/开放源代码促进会.md "wikilink")（OSI）认可，以及[BSD许可证](../Page/BSD许可证.md "wikilink")，所有原码贡献者必须与[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")签署一份[贡献者许可协议](https://zh.wikipedia.org/wiki/贡献者许可协议 "wikilink")（Contributor
License Agreement，CLA），这一许可证和协议都是为了防止ZF在商业使用方面的知识产权问题。\[6\].

## 发起人和支持者

Zend Framework的发起人是[Zend
Technologies公司的](https://zh.wikipedia.org/wiki/Zend_Technologies "wikilink")[Andi
Gutmans和](https://zh.wikipedia.org/wiki/Andi_Gutmans "wikilink")[Zeev
Suraski](https://zh.wikipedia.org/wiki/Zeev_Suraski "wikilink")，PHP底层的解析引擎的重构者。\[7\]技术合作伙伴则包括[IBM](https://zh.wikipedia.org/wiki/International_Business_Machines "wikilink")\[8\]，[Google](../Page/Google.md "wikilink")\[9\],
[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")\[10\],
[Adobe
Systems](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink")\[11\]，和[StrikeIron](https://zh.wikipedia.org/wiki/StrikeIron "wikilink")\[12\].

## 配置要求

最新版本的Zend Framework要求PHP 5.2.4或是更高版本。Zend Framework 1.7.0前的版本要求PHP
5.1.4或是更高版本。官方提供的ZF手册推荐使用PHP
5.2.3或是更高版本，因为新版本在编译方面有许多重大安全和性能方面的改善和提高。安装PHPUnit3.0或更高版本之后才能以PHP[单元测试](../Page/单元测试.md "wikilink")方式运行，许多组件同样要求PHP扩展。\[13\]

## 特征

Zend Framework特征包括\[14\]

  - 所有组件完全面向对象，符合[E
    STRICT错误报表](https://zh.wikipedia.org/wiki/E_STRICT "wikilink")。
  - [松耦合](../Page/松耦合.md "wikilink")（Use-at-will）设计可以让开发者独立使用组件，每个组件几乎不依赖其他组件。
  - 默认提供了强壮而高效的MVC实现和基于PHP的模板。
  - 經由[PDO](../Page/PHP_Data_Objects.md "wikilink")，支持多种数据库，如[MySQL](../Page/MySQL.md "wikilink")，[Oracle](https://zh.wikipedia.org/wiki/Oracle_Database "wikilink")，[IBM
    DB2](../Page/IBM_DB2.md "wikilink")，[Microsoft SQL
    Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")，[PostgreSQL](../Page/PostgreSQL.md "wikilink")，[SQLite](../Page/SQLite.md "wikilink")和[Informix
    Dynamic
    Server](https://zh.wikipedia.org/wiki/Informix_Dynamic_Server "wikilink")。
  - 支持多种邮件收发系统，如[mbox](https://zh.wikipedia.org/wiki/mbox "wikilink")，[Maildir](https://zh.wikipedia.org/wiki/Maildir "wikilink")，[POP3和](https://zh.wikipedia.org/wiki/POP3 "wikilink")[IMAP4](https://zh.wikipedia.org/wiki/IMAP4 "wikilink")
  - 灵活的缓存机制，支持多种缓存方式，可以将缓存写入[内存或是](https://zh.wikipedia.org/wiki/Random_Access_Memory "wikilink")[文件系统](../Page/文件系统.md "wikilink")。

## 创建Zend Framework应用

创建一个Zend Framework应用程序可以通过zf
tool工具，以命令行的方式来搭建一个典型的应用结构，然后在此基础上进行开发，这种自动化创建应用结构的方法通常也被称为“脚手架”功能。Zend
Framework曾被普遍认为学习曲线较高，上手比较难，但zf tool"脚手架"大大简化了应用的创建和初始配置过程，如果配合上安装好的Zend
Studio环境，使框架可以在短短数分钟之内就可以完成配置运行起来。

## 代码、文件的测试标准

所有贡献的代码，在加入到发行版本之前，都必须先通过ZF公司制订的严格的测试标准。所有代码必须符合ZF代码标准，[单元测试](../Page/单元测试.md "wikilink")达到80%以上的的测试覆盖率。\[15\]

## 争议

和其他大型Web框架类似，Zend
Framework有一个非常庞大的[前端控制器](https://zh.wikipedia.org/wiki/前端控制器 "wikilink")（Front
Controller）。但由于[PHP](../Page/PHP.md "wikilink")运行时环境的特殊性（每次请求都是独立的上下文），这个[前端控制器不得不在每次请求被重新初始化一次](https://zh.wikipedia.org/wiki/前端控制器 "wikilink")。这带来了非常大的性能开销，被认为是Zend
Framework的性能瓶颈所在。同时由于[前端控制器模式和PHP的格格不入](https://zh.wikipedia.org/wiki/前端控制器模式 "wikilink")，许多人甚至认为PHP不适宜使用大型框架。类似的还有Zend_Db获取数据库中表的结构信息，也是每次请求都重复进行的操作。事实上，Zend_Db是可以缓存表结构的（通过Memcached、Apc一类的外部缓存器）。但前端控制器设计的复杂确实不是缓存可以解决的。这并不说明Zend
Framework设计有问题，而是说明并不是所有的项目、应用都适合使用Zend Framework，要靠项目决策者针对自身情况权衡。

## 模仿

Zend Framework本身的结构很大程度的模仿了[Ruby on
Rails](../Page/Ruby_on_Rails.md "wikilink")，但又做了足够的改动使其适应PHP的特点。所以很多PHP框架都或多或少的借鉴、参考了Zend
Framework。由于不满Zend Framework中前端控制器重复初始化带来的不必要开销，甚至有开发者用C/C++
写PHP扩展的方式，重新实现了Zend Framework，使前端控制器只需要全局初始化一次（[Yaf
Framework](http://php.net/manual/zh/book.yaf.php)及[Phalcon
PHP](http://phalconphp.com)）。

## 参看

  - [框架](https://zh.wikipedia.org/wiki/框架 "wikilink")
  - [PHP](../Page/PHP.md "wikilink")
  - [BSD许可证](../Page/BSD许可证.md "wikilink")

## 参考资料

## 外部链接

  - [Official Website](http://framework.zend.com/)
  - [Zend
    Framework中文手册](https://web.archive.org/web/20090605135222/http://framework.zend.com/manual/zh/)
  - [Zend
    Framework的例子（ZfEx）](http://zend-framework-examples.blogspot.com/)
  - [Zend Framework 2.0资料汇总](http://avnpc.com/pages/zf2-summary)

### 指南

  - [Rob Allen's popular
    tutorial](http://akrabat.com/zend-framework-tutorial/)
  - [Lyndon Baptiste's
    tutorial](https://web.archive.org/web/20090707212907/http://www.developertutorials.com/tutorials/php/zend-framwork-tutorial-8-08-13/page1.html)
  - [Official ZF
    Quickstart](https://web.archive.org/web/20090524041919/http://framework.zend.com/docs/quickstart/)
  - [Examples
    notes](https://archive.is/20090426054449/http://www.cybernetica.it/webster/index.php/Zend-Controller-Note/Table/examples/)
  - [Zend
    Framework手册](https://zh.wikipedia.org/wiki/Zend_Framework手册 "wikilink")

[Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink")
[Category:Web_2.0](https://zh.wikipedia.org/wiki/Category:Web_2.0 "wikilink")
[Category:免费开发工具集和函数库](https://zh.wikipedia.org/wiki/Category:免费开发工具集和函数库 "wikilink")
[Category:开源系统](https://zh.wikipedia.org/wiki/Category:开源系统 "wikilink")
[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink")

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
13.
14.
15.