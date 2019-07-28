{{ infobox software | logo = | developer =
[IBM](../Page/IBM.md "wikilink") | released = | frequently updated = yes
| programming language =
[C](https://zh.wikipedia.org/wiki/C语言 "wikilink"),
[C++](../Page/C++.md "wikilink") | operating system =
[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | language =
英语 | genre =
[关系数据库管理系统](https://zh.wikipedia.org/wiki/关系数据库管理系统 "wikilink")
| license = proprietary
[EULA](https://zh.wikipedia.org/wiki/EULA "wikilink") | website = }}
**IBM
DB2**企業伺服器版本，是[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[IBM](../Page/IBM.md "wikilink")公司發展的一套[关系型数据库管理系统](https://zh.wikipedia.org/wiki/關聯式資料庫管理系統 "wikilink")。它主要的執行環境為[UNIX](../Page/UNIX.md "wikilink")（包括IBM自家的[AIX](https://zh.wikipedia.org/wiki/AIX "wikilink")）、[Linux](../Page/Linux.md "wikilink")、（舊稱）、，以及[Windows伺服器版本](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。DB2也提供性能強大的各稱IBM
InfoSphere Warehouse版本。和DB2同級的还有另外一个关系型数据库管理系统：，它在2001年被IBM收购。

## 历史

DB2拥有悠久的历史并且被很多人认为是最早使用[SQL](../Page/SQL.md "wikilink")（同样最早被IBM开发）的数据库产品。

DB2这个名字最早被用于[数据库管理系统](../Page/数据库管理系统.md "wikilink")（,
DBMS）是在1983年当IBM发布基于MVS大型机平台的DB2产品时。此前，一个叫做SQL/DS的同类产品被应用于VM大型机。更早期的38系统平台同样也包含一个关系型数据库管理系统。关系型系统，或者我们称为System
R，是一个在70年代开发的检索原型。DB2可以追溯至70年代初，当时在IBM工作的[埃德加·科德](../Page/埃德加·科德.md "wikilink")(E.F.Codd)博士描述了关系型数据库理论并在1970年6月发表数据处理模型。为了应用这个模型Codd需要一种被他称为Alpha的关系型数据库的语言。那个时候IBM并不相信Codd想法的潜力，只是把这个项目的实施交给了一个并不在Codd监管之下的程序小组，而这个小组违背了Codd的关系型模型中的一些基础理论；这个项目的实施结果就是Structured
English
QUEry语言（SEQUEL）。当IBM公布其第一个关系型数据库产品时，他们希望同样能有一款可用于商业用途的子语言，因此IBM重新开发了SEQUEL并且命名其为SQL以区别于SEQUEL。SQL，与流行的看法相反，并不是“依靠允许深层分支打破了面向结构的语言的基本规则”（Allen
G. Taylor, 2004）的Structured Query Language的缩写。这可以引导读者去思考SQL的真正含义。

非常有意思的是，当Informix收购了IIIustra并通过引进他们的Universal
Server使他们的数据库引擎成为object-SQL数据库管理系统后，[Oracle和IBM跟随着扩展了他们数据库引擎能力从而也能处理关系型对象](https://zh.wikipedia.org/wiki/Oracle "wikilink")。更进一步的是，在2001年，IBM购买了并在第二年将Informix技术整合在DB2产品组中。今天，DB2可以被技术性地认为是一个object-[SQL](../Page/SQL.md "wikilink")[数据库管理系统](../Page/数据库管理系统.md "wikilink")。

在很多年里，DB2作为一个全功能的数据库管理系统，被IBM大型机所专用。此后IBM将DB2带向了其它平台，包括OS/2、UNIX以及Windows服务器，然后是Linux（包括Linux
on zSeries）和PDAs。这一转变主要发生在90年代。DB2大型机版本的结构灵感部分来源于IBM DL/1和IBM
IMS，这两者最初都是层次型数据库然后转变为网络型（CODASYL）数据库。DB2也被嵌入在了用于IBM
System i（i系列，以前的AS/400）的i5/OS操作系统中，并且也有可用于z/VSE和z/VM的版本。

DB2 LUW([Linux](../Page/Linux.md "wikilink"),
[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink"),
[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink"))的一个较早的代码版本是OS/2一个扩展版本组件Database
Manager的一部分。IBM多次扩展了Database
Manager的功能，包括在局域网内允许远程共享访问的分配式数据库功能。最终IBM宣布在Database
Manager的代码中存在不可克服的复杂度问题，并且作出了困难的决定，在其多伦多实验室完全重写了这个软件。新版本的Database
Manager被称为DB2，如同其在大型机上的前身一样，同样被运行在OS/2和RS/6000平台上，并分别被称为DB2/2和DB2/6000。基于不同代码的其它版本的DB2也遵循同样的命名规则被叫做DB2/400（应用于AS/400），DB2/VSE（应用于
DOS/VSE环境）和 DB2/VM（应用于VM操作系统）。IBM的律师终止了这种简便的命名方式并决定所有的产品都要被命名为“产品 for
平台”（例如，DB2 for OS/390）。接下来的新一代基于大型机和服务器的产品被命名为DB2 Universal
Database（DB2
UDB），但是这给DBMS的版本区分带来了很大的混淆（大型机版本或者服务器版本），出于这一点考虑，DB2大型机版本和服务器版本使用完全不同的语言开发（大型机版本使用PL/S，服务器版本使用C++），但是两者共享非常相似的功能并使用相同的SQL优化的构架：Starburst
Optimizer。

多年来DB2跟随更新并促进了大量的硬件更新，特别是在IBM System z上的比如Parallel Sysplex数据共享特性。事实上，DB2
UDB Version 8 for z/OS现在只能在64位系统上运行而不能运行在较早的处理器上，DB2 for
z/OS保留了一些与众不同的软件特性为一些尖端客户服务。虽然最终的软硬件升级都归结于IBM大型机，但在一定程度上这种扩展也发生在其它的平台上，IBM的软件工程师们总和对应的硬件工程师们一起协同合作。

在90年代中期，IBM发布了一组最初应用在[AIX上的被称为DB](https://zh.wikipedia.org/wiki/AIX "wikilink")2
Parallel Edition的实现。此版本通过提供无分享架构（shared nothing
architecture）而允许软件更强的可伸缩性。在这个构架中一个单独的大型数据库被分割跨接在多个IBM服务器上并通过高速链接来通讯。这个DB2版本最终被接入所有的Linux、UNIX以及Windows(LUW)平台并被重新命名为DB2
UDB Enterprise Server Edition(ESE)。IBM现在将这款产品称为Database Partitioning
Feature(DPF)并把它作为DB2旗舰企业级产品的附加功能售卖。

2006年年中，IBM宣布应用在分布式平台以及z/OS上的DB2 9代码名称为“Viper”。DB2 9 for z/OS
于2007年年初被公布。IBM声明这个全新的DB2将是第一款“天然”存储XML的关系型数据库。其它的改进包括在分布式平台上OLTP相关的升级，z/OS
商业智能（Business intelligence）／数据仓库（data
warehousing）相关升级，更多的自我校正和自我管理特性，附加的64位机的开发（专为在z/OS上的虚拟存储而开发），在z/OS上存储过程（stored
procedure）性能的提高，并且继续提高在z/OS和分布式平台之间的SQL词表的收敛。

基于分布式平台的DB2 9在2006年7月28日全球售卖，DB2 9
Express的价格自4，874美元／处理器或者165美元／用户（至少5个用户）起，包括一年的技术支持。基于z/OS的DB2价格从大约4，450／月起，包括技术支持。

## 版本

DB2有众多的版本，或者是许可证。为了弱化“版本”的概念增强可选择性，IBM允许客户不购买他们不需要的特性。示例版本包括Express、Workgroup和Enterprise版本。基于Linux/UNIX/Windows的最复杂的版本是DB2
Data Warehouse Enterprise Edition，缩写为DB2
DWE。这个版本的偏重于混合工作负荷（[线上交易处理和](https://zh.wikipedia.org/wiki/线上交易处理 "wikilink")[数据仓库](https://zh.wikipedia.org/wiki/数据仓库 "wikilink")）和[商业智能](../Page/商业智能.md "wikilink")的实现。DB2
DWE包括一些商务智能的特性例如[ETL](https://zh.wikipedia.org/wiki/ETL "wikilink")、[数据发掘](https://zh.wikipedia.org/wiki/数据发掘 "wikilink")、[OLAP加速以及in](https://zh.wikipedia.org/wiki/OLAP "wikilink")-line
analytics。

基于z/OS的DB2有着自己的许可证系列。自Version
8开始，IBM使基于z/OS的DB2和其它平台的DB2更为接近。（例如以前在SQL词表中存在很显著的差异。）基于z/OS的DB2有一些专有特性——引人注意的多级安全模式（Multi-level
Security，MLS）、巨大的表容量以及硬件辅助压缩——这些特性取决于特殊的运行环境以及客户的需要。基于z/OS的DB2总是以领导OLTP性能和能力而闻名，并且它支持重要商务操作的可靠性和有效性同样广为人知。但是现在z/OS版本开始同样具备了商业智能特性，例如物化查询表（materialized
query tables, MQTs）和星型架构（star schema）。Oracle的CEO Larry Ellison评价DB2 for
z/OS为他所尊重和钦佩的一个数据库竞争对手。

2006年1月30日，IBM发布了一个DB2免费版本DB2 Express-C。这是对最近公布的Oracle免费版本10g以及微软免费版本SQL
Server的回应。和Oracle以及微软的免费版本不同，Express-C，它不限制用户数量以及数据库的大小。DB2 Express-C
8.2版本和9.1版本对运行服务器的硬件有所限制，而DB2 Express-C
9.5却可以在Windows以及Linux的任何大小的机器上运行，只是数据库引擎最多只能使用2个CPU内核和2GB的内存。2007年IBM提供了一个为期一年的服务支持产品叫做Fixed
Term License(FTL)，对每一台服务器只要你每年付3000美元，将会得到Express-C一年的电话技术支持。购买FTL后DB2
Express-C引擎可以被允许用于高达4核的CPU以及4GB的内存。没有购买FTL的DB2
Express-C用户也可以在免费公开论坛上得到IBM技术人员和其他DB2用户的技术支持和帮助。

## 竞争对手

自80年代中期开始，数据库管理软件市场就被Oracle所占据。2004年5月3日，IBM数据库开发和销售的高层人员，Janet
Perna，宣布他们的主要竞争对手为Oracle的高级事务处理（advanced transaction
handling）以及Teradata的[决策支持系统](../Page/决策支持系统.md "wikilink")（decision
support
systems）（例如[数据仓库](https://zh.wikipedia.org/wiki/数据仓库 "wikilink")）。但是，在较小的市场中也有其他的竞争者，包括[Microsoft
SQL
Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")（只能被应用于Microsoft
Windows），[開源軟體产品例如](https://zh.wikipedia.org/wiki/開源軟體 "wikilink")[Firebird](../Page/Firebird_\(数据库\).md "wikilink")、[PostgreSQL](../Page/PostgreSQL.md "wikilink")和[MySQL](../Page/MySQL.md "wikilink")，以及针对特殊用户群的产品如[Sybase](../Page/Sybase.md "wikilink")和[MaxDB](../Page/MaxDB.md "wikilink")。

在数据库管理软件竞争市场，数据库可以成兆兆字节的增长，IBM的数据库分区特性（Database Partitioning Feature,
DPF）通常被用来和Oracle的Real Application
Clusters（RAC）对比，RAC是一个共享硬盘的实现，作为[Oracle
Parallel
Server](https://zh.wikipedia.org/wiki/Oracle_Parallel_Server "wikilink")（OPS）较早地为人所知。虽然DB2在价格上没有明显的优势，但DB2
for z/OS似乎少有直接的竞争对手，值得注意的是，Oracle正在吸引客户到其Linux on
zSeries产品上。CA-Datacom和Software
AG的ADABAS也在基于z/OS的关系型数据库上进行竞争，而且也有一些其它的针对特殊用户的产品占有一定的市场（如Model
204、SUPRA
SQL、NOMAD等）。Oracle拥有可用于z/OS的31位RDBMS。非关系型数据库竞争产品包括IMS、CA-IDMS等。

在Transaction Processing Performance Council的网站上，IBM和DB2常常居于TPC-C and
TPC-H行业水准的首位。 2006年[IBM](../Page/IBM.md "wikilink")通过发布一系列整合了DB2
Warehouse Edition和IBM system p (AIX)或者IBM system x
(Linux)服务器的预架构软硬件系统的产品线来应对在日渐显现的数据仓库应用上的竞争。这个"warehouse
appliance-like"系统系列产品被命名为IBM Balanced Configuration
Unit，缩写为BCU，此系列产品瞄准以Netezza和DATAllegro为代表的仓库应用市场，但是它使用了DB2全功能特征并借此区别于单一面向数据仓库的RDBMS。

## 技术資訊

从命令行方式到图形用户界面都可以使用DB2。命令行界面要求对产品知识的更多了解同样也更容易编写脚本并自动执行。图形界面是一个多平台的Java客户端，它包含了多种针对新手用户的向导服务。DB2同时支持SQL和XQuery。DB2本地执行XML数据存储，在这里XML数据以XML（不是关系型数据或者CLOB数据）格式存储以更快地通过使用XQuery进行存取。

DB2拥有基于.NET CLI, Java, Python, Perl, PHP, Ruby, C++, C, REXX, PL/I,
COBOL, RPG, FORTRAN的APIs，以及很多其它的程序语言。DB2同样支持整合于Eclipse和Visual Studio
.NET[整合开发环境之中](../Page/集成开发环境.md "wikilink")。

## 错误处理

DB2计算机程序一个重要的特征就是错误处理。SQL communications
area（SQLCA）结构曾一度被专门用于DB2程序在每个SQL语句被执行后向应用程序返回错误信息。在SQLCA
block中常见错误诊断被体现在SQLCODE中。

SQL返回代码的值对应为：

  - 0表示成功执行
  - 正值表示成功执行但是有一个或多个警告。例如+100表示没有行被发现。
  - 负值表示出现错误。例如－911表示锁超时（或[死锁](../Page/死锁.md "wikilink")），并触发撤消程序。

DB2后来的版本增强了SQL语句执行的功能性和复杂性。多个错误或警告可以通过执行SQL语句被返回；它可以启动一个数据库触发器和其它SQL语句。替代最初的SQLCA，错误信息现在被连续不断的GET
DIAGNOSTICS语句执行所检索。

察看更多的常见SQLCODEs列表。

## 培训及认证

目前，[IBM](../Page/IBM.md "wikilink")提供多种培训和认证，在其官方网站上都有提供。

## 用户组

IDUG是International DB2 Users Group的缩写，这是一个独立的、非盈利的使用IBM
关系型数据库管理系统（RDBMS）DB2的IT专业人才联盟。IDUG提供培训、技术资源、点网络工作的机会、在线资源以及其它项目来使DB2用户提高他们使用DB2的能力以达到自己的工作目标。

## 相關條目

  - [数据记录](https://zh.wikipedia.org/wiki/数据记录 "wikilink")
  - [DB2杂志](https://zh.wikipedia.org/wiki/DB2杂志 "wikilink")
  - [Geneva ERS](https://zh.wikipedia.org/wiki/Geneva_ERS "wikilink")
  - [MS技术](https://zh.wikipedia.org/wiki/MS技术 "wikilink") 提供嵌入DB2的技术
  - [MST Viewer](https://zh.wikipedia.org/wiki/MST_Viewer "wikilink")
    DB2和AFP支持的相关文档
  - [SQL/DS](https://zh.wikipedia.org/wiki/SQL/DS "wikilink")

## 相关信息

  - [IBM信息管理软件技术资源](http://www.ibm.com/developerworks/db2)
    1.  [IBM press
        release](http://www-03.ibm.com/press/us/en/pressrelease/19781.wss)
        June 8, 2006
    2.  ["In Larry's Own
        Words"](http://www.eweek.com/prestitial.php?type=rest&url=http%3A%2F%2Fwww.eweek.com%2Fc%2Fa%2FDatabase%2FIn-Larrys-Own-Words%2F&ref=http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FIBM_DB2)，October,
        2003
    3.  [SUPRA 4GL](https://web.archive.org/web/20080311185938/http://www.supra4gl.com/)
    4.  ["TPC-C"](http://www.tpc.org/tpcc/default.asp). Transaction
        Processing Performance Council (June 2007). 2008-10-05修正更新。
    5.  ["TPC-H"](http://www.tpc.org/tpch/default.asp). Transaction
        Processing Performance Council (11 September 2008).
        2008-10-05修正更新。
    6.  [Ambuj Goyal](http://www.research.ibm.com/people/a/ambuj/)

## 外部链接

  - [IBM Database Magazine](http://www.ibmdatabasemag.com/)
  - [IBM DB2 9
    Demo](http://ibmvancouv1.download.akamai.com.edgesuite.net/2006/june/viper/customer_narrated.html)
  - [IBM DB2
    Express-C](http://www.ibm.com/db2/express/download.html?S_TACT=wikicn&S_CMP=ECDDWW01)
    - 免费下载版本
  - [DB2 Express-C 快 速 入
    门](http://www.ibm.com/developerworks/wikis/display/DB2/FREE+Book-+Getting+Started+with+DB2+Express-C)
  - [IBM DB2 Podcast
    Series](https://web.archive.org/web/20090124011113/http://www-01.ibm.com/software/data/db2/podcast/)
  - [IBM DB2 Support Forums](http://ibmmainframes.com/)
  - [IBM DB2 Training and
    Certification](http://www-01.ibm.com/software/data/education/)
  - [DB2 Technical information and blog
    portal](http://www.db2portal.com/)
  - [DB2
    Tutorial](https://web.archive.org/web/20090123174731/http://db2examples.googlepages.com/)
  - [DB2usa - Links to DB2 for z/OS documents available on the
    web](https://web.archive.org/web/20071122013129/http://db2usa2.free.fr/eliendb2.htm)
  - [IDUG, the International DB2 Users
    Group](https://web.archive.org/web/20081212022337/http://www.idug.org/wps/portal/idug)
  - [MS Technology's DB2
    Technologies](http://www.ms-technology.com/document-management/index.html)

[Category:数据库管理系统](https://zh.wikipedia.org/wiki/Category:数据库管理系统 "wikilink")
[Category:IBM](https://zh.wikipedia.org/wiki/Category:IBM "wikilink")