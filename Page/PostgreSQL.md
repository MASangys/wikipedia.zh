**PostgreSQL**是[自由的](../Page/自由软件.md "wikilink")[对象-关系型数据库服务器](https://zh.wikipedia.org/wiki/对象-关系型数据库 "wikilink")（[数据库管理系统](../Page/数据库管理系统.md "wikilink")），在灵活的[BSD许可证下发行](../Page/BSD许可证.md "wikilink")。它在其他开放源代码数据库系统（比如[MySQL和](../Page/MySQL.md "wikilink")[Firebird](../Page/Firebird_\(数据库\).md "wikilink")），和[专有系统](../Page/专有软件.md "wikilink")（比如[Oracle](../Page/甲骨文公司.md "wikilink")、[Sybase](../Page/Sybase.md "wikilink")、IBM的[DB2和](https://zh.wikipedia.org/wiki/DB2 "wikilink")[Microsoft
SQL
Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")）之外，为用户提供了又一种选择。

PostgreSQL這個單字的拼法讓有些人覺得很難唸，特别是那些把[SQL唸作](../Page/SQL.md "wikilink")"sequel"的人。PostgreSQL开发者把它唸作"post-gress-Q-L"。（[Audio
sample](http://www.postgresql.org/files/postgresql.mp3)，5.6k
MP3）。它也经常被简略唸为"postgres"。

## 历史

PostgreSQL经历了长时间的演变。该项目最初开始于在[加利福尼亚大学伯克利分校的](https://zh.wikipedia.org/wiki/UC_Berkeley "wikilink")[Ingres计划](../Page/Ingres.md "wikilink")。这个计划的领导者[迈克尔·斯通布雷克在](../Page/迈克尔·斯通布雷克.md "wikilink")1982年离开[加利福尼亚大学伯克利分校去推进Ingres的商业化](../Page/加利福尼亞大學柏克萊分校.md "wikilink")，但最后还是返回了学术界。在1985年返回伯克利之后，[斯通布雷克开始了post](../Page/迈克尔·斯通布雷克.md "wikilink")-Ingres计划，致力于解决在1980年代早期所出现一些数据库系统存在的问题。Postgres和Ingres的代码库开始（并保持）完全分离。

新项目**Postgres**的目的是通过增加最少的功能来完全支持所需要的类型。这些功能包括类型定义和完整描述数据关系的能力。完整描述数据关系的能力之前虽广为使用但却需要由用户来维护。Postgres的数据库能够"理解"关系，并可以使用一定的规则以自然方式在相关的表中检索信息。

从1986年开始，该项目组发表了一些描述这一系统基本原理的论文，并在1988年实现并运行了一个Demo版本。项目组在1989年六月向少数用户发行了版本1.0，随后在1990年6月发行了带有全新规则系统的版本2.0。1991年的版本3.0再次重写了规则系统，并增加了对多个存储管理器的支持与改进的查询引擎。Postgres在1993年开始拥有大量用户，这些用户提供了大量的功能与优化建议。但是在发行了作为细节修正的版本4.0之后，Postgres计划就终止了。

尽管Postgres计划正式的终止了，[BSD许可证](../Page/BSD许可证.md "wikilink")（Postgres遵守BSD许可证发行）却使开发者们得以获取源代码并进一步开发系统。1994年，两个[加利福尼亚大学伯克利分校的研究生](https://zh.wikipedia.org/wiki/UC_Berkeley "wikilink")
Andrew Yu和Jolly Chen
增加了一个[SQL语言解释器来替代早先的基于Ingres的](../Page/SQL.md "wikilink")[QUEL系统](https://zh.wikipedia.org/wiki/QUEL "wikilink")，建立了Postgres95。代码随后被发布到互联网上供全世界使用。Postgres95在1996年被重命名为PostgreSQL以便突出该数据库全新的[SQL查询语言](../Page/SQL.md "wikilink")。

PostgreSQL首次发行即选择6.0作为其版本号，由来自世界各地的数据库开发者和志愿者们，通过[互联网进行软件的维护](https://zh.wikipedia.org/wiki/Internet "wikilink")。在2005年1月19日，PostgreSQL发行了版本8.0。自版本8.0之后，PostgreSQL得以借助原生方式运行于Windows系统之下。

尽管许可证允许PostgreSQL被用于商业用途，PostgreSQL却并没有像Ingres那样快速的被商业化。在2005年1月，PostgreSQL才收到了它来自数据库厂商的第一份援助。[Pervasive
Software](https://zh.wikipedia.org/wiki/Pervasive_Software "wikilink")（[1](http://www.pervasivepostgres.com)）宣布了对PostgreSQL的商业支持和社区参与。

但其实在此之前，就已经有一些公司开始对PostgreSQL伸出援手。2000年，前[Red
Hat投資者籌組了一間名為](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")[Great
Bridge的公司來商業化PostgreSQL](https://zh.wikipedia.org/wiki/Great_Bridge "wikilink")，与其他商用資料庫廠商展开競爭。[Great
Bridge資助了好幾位PostgreSQL開發者](https://zh.wikipedia.org/wiki/Great_Bridge "wikilink")，並且貢獻了許多資源給社区。然而到了2001年末，[Great
Bridge却終止了營運](https://zh.wikipedia.org/wiki/Great_Bridge "wikilink")，一部分原因在于PostgreSQL在被商业化后，其市場狀況并不理想。

2001年，[Command Prompt,
Inc.发布了](https://zh.wikipedia.org/wiki/Command_Prompt,_Inc. "wikilink")[Mammoth
PostgreSQL](https://zh.wikipedia.org/wiki/Mammoth_PostgreSQL "wikilink")，这是最老牌的PostgreSQL商業软件。他們通过對開發者的贊助，和开发[PL/Perl](https://zh.wikipedia.org/wiki/PL/Perl "wikilink")、[PL/php等PostgreSQL在各语言中的实现](https://zh.wikipedia.org/wiki/PL/php "wikilink")，以及維護[PostgreSQL
Build
Farm等方式來支援PostgreSQL社群](https://zh.wikipedia.org/wiki/PostgreSQL_Build_Farm "wikilink")。

2005年1月，PostgreSQL接到了來自另一間数据库廠商[Pervasive
Software的支持](https://zh.wikipedia.org/wiki/Pervasive_Software "wikilink")，该公司以常見於[Novell
NetWare平台的](../Page/Novell_NetWare.md "wikilink")[Btrieve產品而聞名](https://zh.wikipedia.org/wiki/Btrieve "wikilink")。他們宣布了進行商業支援和對社群的參與。但在他們成功商业化PostgreSQL一段時間後的2006年7月，[Pervasive
Software離開了PostgreSQL的支援市場](https://zh.wikipedia.org/wiki/Pervasive_Software "wikilink")。

在2005年中，兩間其他的公司宣佈商業化PostgreSQL，分別進入不同的[利基市場](https://zh.wikipedia.org/wiki/利基市場 "wikilink")。[EnterpriseDB宣布將專注於讓使用](https://zh.wikipedia.org/wiki/EnterpriseDB "wikilink")[Oracle的應用程式能更容易的在PostgreSQL上運行](https://zh.wikipedia.org/wiki/Oracle "wikilink")。[Greenplum則專注貢獻在](https://zh.wikipedia.org/wiki/Greenplum "wikilink")[資料倉儲和](../Page/資料倉儲.md "wikilink")[商業智慧的應用程式](https://zh.wikipedia.org/wiki/商業智慧 "wikilink")，尤其以[BizGres專案著稱](https://zh.wikipedia.org/wiki/BizGres "wikilink")。

2005年10月，[昇陽的軟體部門執行副總裁](https://zh.wikipedia.org/wiki/昇陽 "wikilink")[John
Loiacono談論到](https://zh.wikipedia.org/wiki/John_Loiacono "wikilink")："我們不會去[OEM微軟的產品](https://zh.wikipedia.org/wiki/OEM "wikilink")，我們正關注-{zh-hans:
着;
zh-hant:著;}-PostgreSQL"，儘管當時並沒有任何規格釋出。到了2005年11月，昇陽宣布將支援PostgreSQL。2006年6月，[Solaris
10包含PostgreSQL一起發佈](https://zh.wikipedia.org/wiki/Solaris_10 "wikilink")。

至於PostgreSQL專案本身，他繼續着每年一個主要版本發佈，以及次要的除錯版本發佈，这些发布全都遵守BSD授權。

## 描述

如果很粗略地观察PostgreSQL，会觉得这个数据库系统和其它数据库很类似。因为PostgreSQL使用SQL语言来在执行资料的查询。这些资料通过**外键**联系在一起，以一系列表格的形式存在。PostgreSQL相对于竞争者的主要优势为**可编程性**：对于使用数据库资料的实际应用，PostgreSQL让开发与使用变得更简单。

SQL数据在"[平面表格](https://zh.wikipedia.org/wiki/平面表格 "wikilink")"中存储简单的数据类型，需要用户使用查询把有关的信息收集在一起。这与应用和用户利用数据自身的方式相对立：典型的使用带有丰富数据类型的高级语言，在其中所有有关的数据作为它自己的一个完整单元来操作。典型的称呼为*记录*或*对象*（依据各自语言）。

转换来自SQL世界的信息到面向对象编程世界体现得很困难，因为两者有非常不同的数据组织的模型。工业界把这个问题称为：从一个模型映射到另一个要花费项目开发者40%的时间。一些映射解决方案，典型的称为[对象关系映射](../Page/对象关系映射.md "wikilink")，致力于这个问题，但是它们花费很多并有自身的问题，导致糟糕的性能或强制所有的数据访问通过映射所支持的一种语言来进行。

PostgreSQL可以直接在数据库中解决很多这类问题。PostgreSQL允许用户定义基于正规的SQL类型的新类型，允许数据库自身理解复杂数据。例如，你可以定义一个`address`来组合一些事物如街道编号、城市和国度的字符串。从这一点上你可以轻易的建立把保存地址的所需要的所有字段包含在一个单一行列中的表。

PostgreSQL还允许类型包括继承，这是在[面向对象编程中的主要概念](https://zh.wikipedia.org/wiki/面向对象编程 "wikilink")。例如，你可以定义`post_code`类型，并接着基于它建立`us_zip_code`和`canadian_postal_code`。在数据库中的address就可以采用`us_address`或者`canadian_address`形式，而特定的规则可以在各自情况下验证数据。在PostgreSQL的早期版本中，实现新类型需要写C扩展并把它们编译到数据库服务器中；在版本7.4中，通过`CREATE
DOMAIN`建立和使用定制类型变得很容易了。

数据库自身的编程可以从使用[函数上获得巨大的利益](../Page/子程序.md "wikilink")。多数SQL系统允许用户写*存储过程*，它是其他SQL语句可以调用的一块SQL代码。但是SQL自身仍旧不适合作为编程语言，而且SQL用户在构造复杂逻辑时要经历巨大的困难。更糟糕的是，SQL自身不支持很多的编程语言中最基本的操作，比如[分支和](https://zh.wikipedia.org/wiki/分支_\(计算机科学\) "wikilink")[循环](https://zh.wikipedia.org/wiki/循环 "wikilink")。每个厂商都转而写它们自己对SQL语言的扩展来增加这些特征，而这种扩展不是必须跨越数据库[平台操作](../Page/系统平台.md "wikilink")。

在PostgreSQL中程序员可以用一组可观的支持语言中任何一种来写这种逻辑。

  - 类似于Oracle的过程语言[PL/SQL的叫做](https://zh.wikipedia.org/wiki/PL/SQL "wikilink")[PL/PgSQL](http://www.postgresql.org/docs/9.3/static/plpgsql.html)的内置语言，在处理查询密集的过程时提供了独特的优势。
  - 流行脚本语言比如[Perl](../Page/Perl.md "wikilink")，[Python](../Page/Python.md "wikilink")，[Tcl](../Page/Tcl.md "wikilink")，和[Ruby的包装器](../Page/Ruby.md "wikilink")，允许利用它们在字符串处理和连接到广阔的外部函数库的力量。
  - 需要把复杂逻辑编译到机器代码所能提供的高性能的过程可以利用[C或](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++](../Page/C++.md "wikilink")。
  - 在更加[深奥的方面](https://zh.wikipedia.org/wiki/Esoteric "wikilink")，[R统计语言的处理器允许数据库查询利用它的一组丰富的统计函数](https://zh.wikipedia.org/wiki/R語言 "wikilink")。

程序员可以把代码作为函数插入服务器中，它是使代码类似于存储过程的一个小包装器。以这种方式SQL代码可以调用（比如）C代码或反之。

  - 性能增进，因为数据库引擎在一个时间一个地方调用所有的逻辑，减少了在客户和服务器之间的来回往返的次数。
  - 可靠性增进，因为数据验证代码集中到一个地方，就在服务器上，而不用依赖在多个客户应用中的同步逻辑，它们甚至可能以多种编程语言写成。
  - 通过向服务器增加有用的抽象，客户代码可以变得更短小和简单。

这些优势合起来可以证实PostgreSQL从编程角度是最高级的数据库系统。使用PostgreSQL可以显著的减少很多项目的整体编程时间，这种优势随着项目复杂而增长。

## 特征

### 函数

通过函数，可以在数据库服务器端执行指令程序。尽管这样的指令程序可以使用基本的SQL语句写成，但是由于其缺乏[流程控制等功能](https://zh.wikipedia.org/wiki/流程控制 "wikilink")，所以在PostgreSQL中引入了使用其它程序语言编写函数的能力，包括：

  - 一个内置的名为[PL/pgSQL](http://www.postgresql.org/docs/9.3/static/plpgsql.html)的过程语言，类似于Oracle的[PL/SQL](https://zh.wikipedia.org/wiki/PL/SQL "wikilink")；
  - 包括[PL/Perl](http://www.postgresql.org/docs/9.3/interactive/plperl.html)，[PL/PHP](https://web.archive.org/web/20070528193514/http://www.commandprompt.com/community/plphp)，[PL/Python](http://www.postgresql.org/docs/current/interactive/plpython.html)，[PL/Ruby](http://raa.ruby-lang.org/project/pl-ruby)，[PL/sh](https://web.archive.org/web/20090111030435/http://plsh.projects.postgresql.org/)，[PL/Tcl](http://www.postgresql.org/docs/current/interactive/pltcl.html)与[PL/Scheme](https://web.archive.org/web/20070712205419/http://plscheme.projects.postgresql.org/)在内的脚本语言；
  - 编译语言：[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")，[C++](../Page/C++.md "wikilink")，或Java（通过[PL/Java](https://web.archive.org/web/20070831132714/http://pljava.projects.postgresql.org/)）。
  - R统计语言（[PL/R](http://www.joeconway.com/plr/)）。

以上部分的语言，甚至可以在触发器内执行。PostgreSQL支持行返回函数：它们的输出是一系列行类型数据的集合，可以在查询中当作表来使用。函数也可以被定义成以创建者或者调用者的身份运行。在某些场合，或者其他的数据库产品中，函数也会被称为“[存储过程](https://zh.wikipedia.org/wiki/存储过程 "wikilink")”，但技术上这两者并未有太大分别。

### 索引

在PostgreSQL中，用户可以自定义[索引方法](https://zh.wikipedia.org/wiki/索引 "wikilink")，或使用内置的[B树](../Page/B树.md "wikilink")，[哈希表与](../Page/哈希表.md "wikilink")[GiST索引](https://zh.wikipedia.org/wiki/GiST "wikilink")。PostgreSQL的索引功能同时也具有以下功能：

  - 反向索引检索：无须额外的索引就能实现类似` ORDER BY  `*`field`*`  DESC `的操作。
  - **[表达式索引](https://zh.wikipedia.org/wiki/表达式索引 "wikilink")**：可以建立基于表达式值而非数值或列的索引。
  - **[部分索引](https://zh.wikipedia.org/wiki/部分索引 "wikilink")**：仅索引表的部分，可以通过在`CREATE
    INDEX`语句口添加`WHERE`从句以创建更小的索引。
  - **[位图索引扫描](https://zh.wikipedia.org/wiki/Bitmap_index "wikilink")**：从8.1版开始支持此功能。该功能将读取多个索引，生成表示它们之间符合查询标准的[多元组](../Page/多元组.md "wikilink")[交集的位图](../Page/交集.md "wikilink")。这样解决了混合索引的问题。在一个具有20列的表中，理论上能创建20\!
    个索引，在实际应用中並不实用。使用位图索引扫描后，在每次查询时，它将能把约束条件中所涉及列各自的索引进行任意的排列组合。

### 触发器

触发器是由SQL语句查询所触发的事件。如：一个INSERT语句可能触发一个检查数据完整性的触发器。触发器通常由INSERT或UPDATE语句触发。

在PostgreSQL中，可在数据表上设置[触发器](https://zh.wikipedia.org/wiki/触发器_\(数据库\) "wikilink")，但无法在视图中设置(对视图的UPDATE或者INSERT操作可以使用规则（RULE）定义）。多个触发器可依据字母顺序依次执行。此外，除了使用内嵌的PL/PgSQL语言之外，触发器的函数也可以用PL/Perl，PL/Python等语言编写。

### 多版本并发控制

PostgreSQL使用[多版本并发控制](../Page/多版本并发控制.md "wikilink")（MVCC，Multiversion
concurrency
control）系统进行[并发控制](../Page/并发控制.md "wikilink")，该系统向每个用户提供了一个数据库的“快照”，用户在事务内所作的每个修改，对于其他的用户都不可见，直到该事务成功提交。这从很大程度上减少了对读取锁的依赖，同时保证了数据库高效地符合[ACID原则](../Page/ACID.md "wikilink")。

### 规则

规则（RULE）允许一个查询能被重写，通常用来实现对视图（VIEW）的操作，如插入（INSERT）、更新（UPDATE）、删除（DELETE）。

### 数据类型

PostgreSQL内置丰富的数据类型，包括：

  - [任意精度的数值](https://zh.wikipedia.org/wiki/任意精度 "wikilink")
  - 无限制长度文本
  - 几何图元
  - [IP地址与](../Page/IP地址.md "wikilink")[IPv6地址](../Page/IPv6.md "wikilink")
  - [无类域间路由地址块](https://zh.wikipedia.org/wiki/无类域间路由 "wikilink")，[MAC地址](../Page/MAC地址.md "wikilink")
  - 数组
  - [JSON数据](../Page/JSON.md "wikilink")
  - 枚举类型
  - [XML数据](../Page/XML.md "wikilink") (需要在PostgreSQL源码编译时指定
    "--with-libxml"选项)

此外，用户可以创建自定义数据类型，通常通过PostgreSQL的[GiST机制](https://zh.wikipedia.org/wiki/GiST "wikilink")，它们也能被很好得索引，比如[PostGIS](../Page/PostGIS.md "wikilink")[地理信息系统的数据类型](../Page/地理信息系统.md "wikilink")。

### 用户定义对象

用户可以为数据库内几乎所有的对象定义新的类型，包括：

  - 索引
  - 操作符（可[重载现有操作符](https://zh.wikipedia.org/wiki/重载 "wikilink")。）
  - [聚合函数](https://zh.wikipedia.org/wiki/聚合函数 "wikilink")
  - [数据域](https://zh.wikipedia.org/wiki/数据域 "wikilink")
  - 数据类型转换
  - 会话（编码转换）

### 继承

数据表的结构及属性可从一个“父”表中继承，数据将在两者间共享。对子表中数据的插入或者删除也将在父表中-{zh-hans:体现;
zh-tw:呈現}-，同样，对父表作出的修改，比如-{zh-hans:添加;
zh-tw:新增}-列等操作也会导致子表产生相应的-{zh-hans:改动;
zh-tw:變更}-。该功能尚未完全实现，实际上，表的约束尚不能继承。比如，在一张外联参考了父表id字段的表中，插入一条具有子表中某条记录id数据的记录会导致失败，因为PostgreSQL在对父表的外键约束检查中不会检查子表的内容。

### 其他功能

  - [关系完整性](https://zh.wikipedia.org/wiki/关系完整性 "wikilink")[约束](https://zh.wikipedia.org/wiki/约束 "wikilink")：包括[外键](https://zh.wikipedia.org/wiki/外键 "wikilink")，列约束与行检查
  - [视图](../Page/视图.md "wikilink")
  - 内、外（全、左、右）[连接](https://zh.wikipedia.org/wiki/连接_\(SQL\) "wikilink")
  - [子查询](https://zh.wikipedia.org/wiki/子查询 "wikilink")
  - [事务处理](../Page/数据库事务.md "wikilink")
  - 支持大部分[SQL:2003标准的主要特征](https://zh.wikipedia.org/wiki/SQL:2003 "wikilink")[2](http://developer.postgresql.org/pgdocs/postgres/features.html)
    [以及不支持部分](http://developer.postgresql.org/pgdocs/postgres/unsupported-features-sql-standard.html)[未来版本的支持情况](http://developer.postgresql.org/pgdocs/postgres/features-sql-standard.html)，可至[已有版本手册](http://www.postgresql.org/docs/manuals/)中查询。
  - [SSL加密连接](https://zh.wikipedia.org/wiki/SSL "wikilink")
  - 二进制／文本大对象的存储
  - 在线备份
  - [数据域](https://zh.wikipedia.org/wiki/数据域 "wikilink")
  - [表分区](https://zh.wikipedia.org/wiki/表分区 "wikilink")
  - [表空间](../Page/表空间.md "wikilink")
  - [保存点](https://zh.wikipedia.org/wiki/保存点 "wikilink")
  - [时刻点恢复](https://zh.wikipedia.org/wiki/时刻点恢复 "wikilink")
  - [二阶段提交](../Page/二阶段提交.md "wikilink")
  - TOAST（**T**he **O**versized-**A**ttribute **S**torage
    **T**echnique，超大属性存储技术）用以透明地将超大表属性（如大MIME附件或XML消息）压缩后存储至独立的区域
  - [正则表达式](../Page/正则表达式.md "wikilink")[3](http://www.oreillynet.com/pub/a/databases/2006/02/02/postgresq_regexes.html)

### 資料庫管理及開發工具

  - [phpPgAdmin](http://phppgadmin.sourceforge.net/doku.php)基于php语言写的用于管理PostgreSQL数据库的程序
  - [PgAdmin](http://www.pgadmin.org)另外一个用于管理PostgreSQL数据库的软件

### 扩展

  - 地理数据对象：[PostGIS](../Page/PostGIS.md "wikilink") GPL
  - [全文检索](https://zh.wikipedia.org/wiki/全文检索 "wikilink")：通过[Tsearch2](http://www.sai.msu.su/~megera/postgres/gist/tsearch/V2/)或[OpenFTS](https://zh.wikipedia.org/wiki/OpenFTS "wikilink")，将在8.3版本中内嵌Tsearch2。GPL
  - 多种异步主／从复制方案，包括[Slony-I](http://www.slony.info)（BSD授权），[Mammoth
    Replicator](https://web.archive.org/web/20051029021705/http://www.commandprompt.com/products/mammothreplicator)
  - XML/XSLT支持[contrib软件包中的XPath扩展](https://web.archive.org/web/20070528041103/http://www.throwingbeans.org/postgresql_and_xml.html)GPL

## 知名客户

  - [.org域名库](../Page/.org.md "wikilink")[4](http://www.computerworld.com.au/index.php?id=760310963)
  - The [American Chemical
    Society](https://zh.wikipedia.org/wiki/American_Chemical_Society "wikilink")
  - Chicagocrime.org
    [5](http://www.holovaty.com/blog/archive/2006/04/07/0927)
  - [Skype](../Page/Skype.md "wikilink")
  - [Penny
    Arcade](https://zh.wikipedia.org/wiki/Penny_Arcade_\(webcomic\) "wikilink")
  - [IMDB](https://zh.wikipedia.org/wiki/IMDB "wikilink")
  - [Sony Online](https://zh.wikipedia.org/wiki/Sony_Online "wikilink")
    [6](http://www.computerworld.com/databasetopics/data/software/story/0,10801,109722,00.html)
  - [美國勞工部](../Page/美國勞工部.md "wikilink")
  - Wisconsin Circuit Court Access with 6 \* 180GB DBs replicated in
    real time
  - [OpenACS](https://zh.wikipedia.org/wiki/OpenACS "wikilink") and
    [.LRN](https://zh.wikipedia.org/wiki/.LRN "wikilink")
  - [Evergreen](../Page/Evergreen_\(軟件\).md "wikilink")－一個開放原始碼（[GNU通用公共許可證](https://zh.wikipedia.org/wiki/GNU通用公共許可證 "wikilink")）的集成圖書館系統
  - [GNU Health](../Page/GNU_Health.md "wikilink")
    [7](https://en.wikibooks.org/wiki/GNU_Health/Installation)

## 版本

PostgreSQL - Red Hat Edition\[1\]是由[Red
Hat製作](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")-{zh-hans:
的; zh-hant:
之;}-[分支版本](https://zh.wikipedia.org/wiki/分支 "wikilink")，又稱Red
Hat Database。

## 参见

  - [关系数据库管理系统](https://zh.wikipedia.org/wiki/关系数据库管理系统 "wikilink")
      - [关系型数据库管理系统列表](https://zh.wikipedia.org/wiki/关系型数据库管理系统列表 "wikilink")
      - [关系型数据库管理系统对比](https://zh.wikipedia.org/wiki/关系型数据库管理系统对比 "wikilink")
  - [对象数据库管理系统](../Page/对象数据库.md "wikilink")
      - [对象数据库管理系统列表](https://zh.wikipedia.org/wiki/对象数据库管理系统列表 "wikilink")
      - [对象数据库管理系统对比](https://zh.wikipedia.org/wiki/对象数据库管理系统对比 "wikilink")

## 参考文献

## 外部链接

  - [PostgreSQL國際官方網站](http://www.postgresql.org/)
  - [PostgreSQL國際正體中文社群](https://web.archive.org/web/20070302201745/http://postgresql.oss.tw/)
  - [PostgreSQL简体中文社群](https://web.archive.org/web/20170519052825/http://pgsqldb.org/)
  - [PostgreSQL :：國際中文社群網誌：:](http://postgresql-chinese.blogspot.com/)
  - [PostgreSQL文档](http://www.postgresql.org/docs/)
  - [SourceForge上PostgreSQL的相关项目](https://web.archive.org/web/20081218133506/http://sourceforge.net/softwaremap/trove_list.php?form_cat=525)
  - [PgFoundry-PostgreSQL相关项目网站](http://www.pgfoundry.org/)
  - [Open Source Database
    Network](https://web.archive.org/web/20090830161040/http://www.osdb.org/databases/)
  - [Database
    Journal的PostgreSQL专栏](http://www.databasejournal.com/features/postgresql/)
  - [PostgreSQL中文推廣教學平台 - Mammoth](http://postgresql.wisdomfish.org/)

{{-}}

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")

1.  [PostgreSQL - Red Hat Edition Project](http://sourceware.org/rhdb/)