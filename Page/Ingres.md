{{ Infobox_Software | name = Ingres | screenshot = [<File:Ingres>
logo.png](https://zh.wikipedia.org/wiki/File:Ingres_logo.png "fig:File:Ingres logo.png")
| caption = Ingres 公司标志 | developer = Ingres 公司 |
latest_release_version = Ingres Database 9.2 | latest_release_date =
2008年12月9日 | operating_system = [跨平台](../Page/跨平台.md "wikilink") |
genre = [RDBMS](../Page/关系数据库管理系统.md "wikilink") | license =
[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink") | website =
<http://www.ingres.com/> }}

**Ingres**
是比较早的[数据库系统](../Page/数据库.md "wikilink")，开始于[加利福尼亚大学柏克莱分校的一个研究项目](../Page/加利福尼亚大学柏克莱分校.md "wikilink")，该项目开始于
70 年代早期，在 80
年代早期结束。像柏克莱大学的其他研究项目一样，它的代码使用[BSD许可证](../Page/BSD许可证.md "wikilink")。从
80 年代中期，在Ingres 基础上产生了很多商业数据库软件，包括
[Sybase](../Page/Sybase.md "wikilink")、[Microsoft SQL
Server](../Page/Microsoft_SQL_Server.md "wikilink")、[NonStop
SQL](../Page/NonStop_SQL.md "wikilink")、[Informix](../Page/Informix.md "wikilink")
和许多其他的系统。在 80 年代中期启动的后继项目 **Postgres**，产生了
[PostgreSQL](../Page/PostgreSQL.md "wikilink")、[Illustra](../Page/Illustra.md "wikilink")，无论从任何意义上来说，Ingres
都是历史上最有影响的计算机研究项目之一。

## 历史

### Ingres

1973 年 [IBM](../Page/IBM.md "wikilink") 启动了 [System
R](../Page/System_R.md "wikilink")
项目，项目组发表了一系列关于关系数据库的的文章。两个伯克莱大学的科学家，Michael
Stonebraker 和 Eugene Wong 读了这些文章后非常感兴趣，于是决定自己启动一个关系数据的研究项目。

他们已经为一个地理数据库系统申请到了资金，他们称为
ingres，意思是交互式图形获取系统，他们决定使用这些钱进行这个项目，并在这个项目的基础上进行其他更大的项目。为了得到更多的资助，Stonebraker
去找了 [DARPA](../Page/DARPA.md "wikilink")，在那个时代，计算机方面的研究项目当然是找他们了。但是
DARPA 和 Office of Naval Research 拒绝了他，因为他们已经在别的地方资助了数据库研究项目，Stonebraker
转而向其他部门求助，在他的同事的帮助下，他最终获得了自然科学基金和三个军事机构的支持。

得到资助后，Ingre 在 70 年代中期由几批学生和员工开发完成， Ingres 经历了和 System R
类似的发展，为提高代码的维护性，对 74
年的早期原型进行了比较大的修订，然后在一个小的范围内发布，随着经验的积累和接收到用户的反馈，或者有新的想法，项目成员不停的对原型进行改进，重写，Ingres
在概念上基本上与 Sysytem R 相似，但是基于比较低端的系统，主要是 [UNIX](../Page/UNIX.md "wikilink")
和 DEC。

### 商业化

与 System R 不同，Ingres的代码是可以免费获得的，到 1980 年止，共分发了 1000
份拷贝，不少公司使用这些代码形成了自己的产品线。

[Informix](../Page/Informix.md "wikilink") 是最早的用户之一，并且其员工完全是 Ingres
项目的人员。他们在 1984 发布了基于 Ingres 的第一版产品，到 1997
年已经成了第二大数据库供应商。然而，一系列管理和财会方面的失误在短短两年内毁了公司的信誉，并于
2000 年被 IBM 收购。

Robert Epstein 在伯克立大学项目中的重要的程序员，创建了 Britton-Lee，后来的 Sybase，Sybase 在 80 到
90 年期间是第二号数据库产品，Sybase 于1992年将产品卖给[微软](../Page/微软.md "wikilink")，微软称之为
[MS SQLServer](../Page/MS_SQLServer.md "wikilink")。

Jerry Held 和 Carol Youseffi 迁移到了 Tandem Computers，他们在那里建造了发展成了 NonStop
SQL 的一个系统。NonStop 是在并行计算机上高效运行的 Ingres
的一个修改版本，增加了分布式数据，分布式执行和分布式事务功能（后者非常困难）。首次发行于
1987 年，1989
年的第二版增加了并行运行查询的能力，这个产品也由于是可随着机器中的处理器的数目做几乎线性的伸缩的少数系统之一而非常出名：向现存的
NonStop SQL 服务器增加第二个 CPU 将几乎精确的翻倍它的性能。Tandem 最后被 Compaq 并购并在 2000
年开始重写，而产品现在是 HP 的。

最后 Stonebraker 自己离开了伯克立大学在1982年创建了Ingres 公司，Stonebraker 在这个公司工作到 1991
年，然后公司卖给了 ASK，1994年 ASK/ingres 被
[CA公司](../Page/CA公司.md "wikilink") 收购。

2004 年 CA 在[开源许可下发布了](../Page/开源.md "wikilink") Ingres release 3，并继续开发销售
Ingres。

### Postgres

在返回 Berkeley 之后，Stonebraker 开始了一项后-Ingres
计划来致力于解决关系模型的数据库管理现有实现的局限性。其中主要的是它们不能让用户定义组合更简单域的新域（或者叫"类型"）（参见[关系模型获得对术语](../Page/关系模型.md "wikilink")"域"的解释。）

结果的计划叫做 **Postgres**，以介入对增加完整的类型支持所需要的最小数目的特征为目标。其中包括定义类型的功能，还有完全描述联系的能力
- 联系至今已经广泛使用但仍由用户完全维护。在 Postgres
中数据库"理解"联系，并能以使用*规则*的自然方式在有关联的表中检索信息。详情请参见
[PostgreSQL](../Page/PostgreSQL.md "wikilink") 的文章。

在 1990 年 Stonebraker 再次离开 Berkeley 去商业化 Postgres，使用了名字
**Illustra**。Illustra 后来被 Informix 并购，而 Stonebraker 再次回去搞高等教育了。

## 参见

  - [关系型数据库管理系统对比](../Page/关系型数据库管理系统对比.md "wikilink")

## 外部链接

*文章：*

  - [INGRES
    的设计与实现](http://www.cs.wisc.edu/~nil/764/root/3_p189-stonebraker.pdf)
    Stonebraker 著
  - [数据库系统回顾](https://web.archive.org/web/20051008173435/http://www-it.et.tudelft.nl/~arjen/IN4144/1/retrospection-DB.pdf)
    Stonebraker 著
  - [Ingres 常见问题](http://www.bizyx.com/ingres/faq.htm)

*产品链接*:

  - [大学
    INGRES，版本 8.9](https://web.archive.org/web/20050901122555/http://s2k-ftp.cs.berkeley.edu:8000/ingres/)
  - [CA 公司 Ingres
    r3](https://web.archive.org/web/20050904143819/http://opensource.ca.com/projects/ingres)

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")