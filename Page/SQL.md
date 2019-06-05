**SQL**（\[1\]或\[2\]，**结构化查询语言**\[3\]\[4\]\[5\]\[6\]）是一种[特定目的程式语言](https://zh.wikipedia.org/wiki/特定目的程式语言 "wikilink")，用于管理[关系数据库管理系统](https://zh.wikipedia.org/wiki/关系数据库管理系统 "wikilink")（RDBMS），或在[关系流数据管理系统](https://zh.wikipedia.org/wiki/关系流数据管理系统 "wikilink")（RDSMS）中进行流处理。

SQL基于[关系代数和](https://zh.wikipedia.org/wiki/关系代数_\(数据库\) "wikilink")[元组关系演算](../Page/元组关系演算.md "wikilink")，包括一个[数据定义语言和](https://zh.wikipedia.org/wiki/数据定义语言 "wikilink")[数据操纵语言](https://zh.wikipedia.org/wiki/数据操纵语言 "wikilink")。SQL的范围包括数据插入、查询、更新和删除，[数据库模式创建和修改](../Page/Schema_\(数据库\).md "wikilink")，以及数据访问控制。尽管SQL经常被描述为，而且很大程度上是一种[声明式编程](https://zh.wikipedia.org/wiki/声明式编程 "wikilink")（[4GL](https://zh.wikipedia.org/wiki/第四代程式语言 "wikilink")），但是其也含有[过程式编程的元素](https://zh.wikipedia.org/wiki/过程式编程 "wikilink")。

SQL是对[埃德加·科德的](../Page/埃德加·科德.md "wikilink")[关系模型的第一个商业化语言实现](../Page/关系模型.md "wikilink")，这一模型在其1970年的一篇具有影响力的论文《一个对于大型共享型数据库的关系模型》\[7\]中被描述。尽管SQL并非完全按照[科德的关系模型设计](../Page/科德十二定律.md "wikilink")，但其依然成为最为广泛运用的数据库语言。
\[8\]\[9\]

SQL在1986年成为[美国国家标准学会](https://zh.wikipedia.org/wiki/美国国家标准学会 "wikilink")（ANSI）的一项[标准](../Page/标准.md "wikilink")，在1987年成为[国际标准化组织](https://zh.wikipedia.org/wiki/国际标准化组织 "wikilink")（ISO）标准\[10\]</ref>。此后，这一标准经过了一系列的增订，加入了大量新特性。虽然有这一标准的存在，但大部分的SQL代码在不同的数据库系统中并不具有完全的跨平台性。

## 歷史

在1970年代初，由[IBM公司San](../Page/IBM.md "wikilink")
Jose,California研究實驗室的[埃德加·科德發表將資料組成表格的應用原則](../Page/埃德加·科德.md "wikilink")（Codd's
Relational Algebra）。1974年，同一實驗室的D.D.Chamberlin和R.F. Boyce對Codd's
Relational Algebra在研制关系数据库管理系统System R中，研制出一套規範語言-SEQUEL（Structured
English Query Language），並在1976年11月的IBM Journal of
R\&D上公布新版本的SQL（叫SEQUEL/2）。1980年改名為SQL。

1979年ORACLE公司首先提供商用的SQL，[IBM公司在DB2和SQL](../Page/IBM_DB2.md "wikilink")/DS数据库系统中也实现了SQL。

1986年10月，美国ANSI采用SQL作为关系数据库管理系统的标准语言（ANSI X3.
135-1986），后为国际标准化组织（ISO）采纳为国际标准。

1989年，美国ANSI采纳在ANSI X3.135-1989报告中定义的关系数据库管理系统的SQL标准语言，称为ANSI SQL
89，该标准替代ANSI X3.135-1986版本。该标准为下列组织所采纳：

  - 国际标准化组织（ISO），为ISO 9075-1989报告“Database Language SQL With Integrity
    Enhancement”
  - 美国联邦政府，发布在The Federal Information Processing Standard
    Publication(FIPS PUB)127

目前，所有主要的关系数据库管理系统支持某些形式的SQL，大部分数据库至少遵守ANSI SQL89标准。

ANSI SQL92标准在交叉连接（cross
join）和内部连接之上，新增加了外部连接，并支持在FROM子句中写连接表达式。支持集合的并运算、交运算。支持[Case
(SQL)表达式](https://zh.wikipedia.org/wiki/Case_\(SQL\) "wikilink")。支持CHECK约束。创建临时表。支持cursor。支持[事务隔离](https://zh.wikipedia.org/wiki/事务隔离 "wikilink")。

## 语法

[SQL_ANATOMY_wiki.svg](https://zh.wikipedia.org/wiki/File:SQL_ANATOMY_wiki.svg "fig:SQL_ANATOMY_wiki.svg")

SQL语言分成了几种要素，包括：

  - 子句，是语句和查询的组成成分。（在某些情况下，这些都是可选的。）\[11\]
  - 表达式，可以产生任何[标量值](../Page/变量_\(程序设计\).md "wikilink")，或由和的[数据库表](https://zh.wikipedia.org/wiki/数据库表 "wikilink")
  - 谓词，给需要评估的SQL[三值逻辑（3VL）](../Page/三值逻辑.md "wikilink")（true/false/unknown）或[布尔](../Page/逻辑代数.md "wikilink")[真值指定条件](https://zh.wikipedia.org/wiki/真值 "wikilink")，并限制语句和查询的效果，或改变程序流程。
  - 查询，基于特定条件检索数据。这是*SQL*的一个重要组成部分。
  - 语句，可以持久地影响纲要和数据，也可以控制[数据库事务](../Page/数据库事务.md "wikilink")、程序流程、连接、会话或诊断。
      - SQL语句也包括[分號](../Page/分號.md "wikilink")（";"）语句终结符。尽管并不是每个平台都必需，但它是作为SQL语法的标准部分定义的。
  - [无意义的空白在SQL语句和查询中一般会被忽略](https://zh.wikipedia.org/wiki/空白 "wikilink")，更容易格式化SQL代码便于阅读。

## 语言特点

SQL是高级的[非過程化編程語言](https://zh.wikipedia.org/wiki/非過程化編程 "wikilink")，它允许用户在高层数据结构上工作。它不要求用户指定对数据的存放方法，也不需要用户了解其具体的数据存放方式。而它的界面，能使具有底层结构完全不同的数据库系统和不同数据库之间，使用相同的SQL作为数据的输入与管理。它以记录项目〔records〕的合集（set）〔项集，record
set〕作为操纵对象，所有SQL语句接受项集作为输入，回送出的项集作为输出，这种项集特性允许一条SQL语句的输出作为另一条SQL语句的输入，所以SQL语句可以嵌套，这使它拥有极大的灵活性和强大的功能。在多数情况下，在其他編程語言中需要用一大段程序才可实践的一个单独事件，而其在SQL上只需要一个语句就可以被表达出来。这也意味着用SQL可以写出非常复杂的语句，在不特別考慮效能下。

SQL同時也是数据库[文件格式的](https://zh.wikipedia.org/wiki/文件格式 "wikilink")[扩展名](https://zh.wikipedia.org/wiki/扩展名 "wikilink")。

SQL包含四个部分：

  - [資料定義語言](../Page/資料定義語言.md "wikilink")
  - [資料操縱語言](../Page/資料操縱語言.md "wikilink")
  - [資料控制語言](../Page/資料控制語言.md "wikilink")
  - [事务控制語言](https://zh.wikipedia.org/wiki/事务控制語言 "wikilink")

### SQL函数

| 函数       | 描述                                                                  |
| -------- | ------------------------------------------------------------------- |
| AVG      | 平均值                                                                 |
| COUNT    | 计数（不含Null）                                                          |
| FIRST    | 第一个记录的值                                                             |
| MAX      | 最大值                                                                 |
| MIN      | 最小值                                                                 |
| STDEV    | 样本标准差                                                               |
| STDEVP   | 总体标准差                                                               |
| SUM      | 求和                                                                  |
| VAR      | 样本方差                                                                |
| VARP     | 总体方差                                                                |
| UCASE    | 转化为全大写字母                                                            |
| LCASE    | 转化为全小写字母                                                            |
| MID      | 取中值                                                                 |
| LEN      | 计算字符串长度                                                             |
| INSTR    | 获得子字符串在母字符串的起始位置                                                    |
| LEFT     | 取字符串左边子串                                                            |
| RIGHT    | 取字符串右边子串                                                            |
| ROUND    | 数值四舍五入取整                                                            |
| MOD      | \-{zh-hans:取余; zh-hant:取餘; zh-cn:取余; zh-tw:取餘; zh-hk:取餘; zh-sg:取余}- |
| NOW      | 获得当前时间的值                                                            |
| FORMAT   | 字符串格式化                                                              |
| DATEDIFF | 获得两个时间的差值                                                           |

## 標準化

各种数据库的SQL方言通常不可移植，特别是在日期时间语法、字符串连接、`NULL`、比较的大小写敏感方面。只有[PostgreSQL与](../Page/PostgreSQL.md "wikilink")[Mimer
SQL努力遵从标准](https://zh.wikipedia.org/wiki/Mimer_SQL "wikilink")。Oracle数据库的`DATE`行为如同`DATETIME`，缺少`TIME`
type)。

SQL在1986年被ANSI标准化，1987年被ISO标准化。由维护。标准名称通常为如下模式： *ISO/IEC 9075-n:yyyy
Part n: title*。

<table>
<thead>
<tr class="header">
<th><p>年份</p></th>
<th><p>名字</p></th>
<th><p>别名</p></th>
<th><p>注释</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1986</p></td>
<td><p>SQL-86</p></td>
<td><p>SQL-87</p></td>
<td><p>ANSI首次标准化</p></td>
</tr>
<tr class="even">
<td><p>1989</p></td>
<td><p>SQL-89</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/聯邦資料處理標準" title="wikilink">FIPS</a> 127-1</p></td>
<td><p>小修改，增加了integrity constraint</p></td>
</tr>
<tr class="odd">
<td><p>1992</p></td>
<td></td>
<td><p>SQL2, FIPS 127-2</p></td>
<td><p>大修改，成为现代SQL的基础</p></td>
</tr>
<tr class="even">
<td><p>1999</p></td>
<td></td>
<td><p>SQL3</p></td>
<td><p>增加了正则表达式匹配、递归查询（传递闭包）、数据库触发器、过程式与控制流语句、非标量类型(arrays)、面向对象特性。在Java中嵌入SQL(<a href="https://zh.wikipedia.org/wiki/SQL/OLB" title="wikilink">SQL/OLB</a>)及其逆(<a href="https://zh.wikipedia.org/wiki/SQL/JRT" title="wikilink">SQL/JRT</a>)</p></td>
</tr>
<tr class="odd">
<td><p>2003</p></td>
<td></td>
<td></td>
<td><p>增加<a href="../Page/XML.md" title="wikilink">XML相关特性</a>(<a href="https://zh.wikipedia.org/wiki/SQL/XML" title="wikilink">SQL/XML</a>)、<em>window functions</em>、标准化sequences、自动产生值的列。对SQL:1999的新特性重新描述其内涵。</p></td>
</tr>
<tr class="even">
<td><p>2006</p></td>
<td></td>
<td></td>
<td><p>导入/导出XML数据与SQL数据库。<a href="https://zh.wikipedia.org/wiki/XQuery" title="wikilink">XQuery</a></p></td>
</tr>
<tr class="odd">
<td><p>2008</p></td>
<td></td>
<td></td>
<td><p>在cursor之外的ORDER BY语句。INSTEAD OF触发器。TRUNCATE语句。FETCH子句</p></td>
</tr>
<tr class="even">
<td><p>2011</p></td>
<td></td>
<td></td>
<td><p>增加时态数据(PERIOD FOR)。增强了<em>window functions</em>与FETCH子句</p></td>
</tr>
<tr class="odd">
<td><p>2016</p></td>
<td></td>
<td></td>
<td><p>增加行模式匹配、多态表函数、JSON。</p></td>
</tr>
</tbody>
</table>

SQL标准包含9部分：

  - ISO/IEC 9075-1:2016 Part 1: *Framework* (SQL/Framework). 提供逻辑概念
  - ISO/IEC 9075-2:2016 Part 2: *Foundation* (SQL/Foundation).
    包含语言的主要内容，强制与可选特性。
  - ISO/IEC 9075-3:2016 Part 3: *Call-Level Interface*
    ([SQL/CLI](https://zh.wikipedia.org/wiki/SQL/CLI "wikilink")).
    定义了接口成分(structures, procedures, variable bindings)
    用于编写能执行SQL的应用程序的语言：Ada, C/C++, COBOL, Fortran, MUMPS,
    Pascal，PL/I.
    对于Java语言见标准第10部分。[ODBC是一个著名的SQL](../Page/ODBC.md "wikilink")/CLI的超集。这部分标准主要包含强制的特性。
  - ISO/IEC 9075-4:2016 Part 4: *Persistent stored modules*
    ([SQL/PSM](https://zh.wikipedia.org/wiki/SQL/PSM "wikilink"))。SQL的过程式扩展，包括控制流、条件处理、语句条件signals与resignals、cursors、本地变量、表达式赋值到变量与参数。此外，SQL/PSM形式化声明与维护了持续性（persistent）数据库语言例程（例如存储过程）。这部分标准主要包含可选的特性。
  - [Part-6](http://standards.iso.org/ittf/PubliclyAvailableStandards/c067367_ISO_IEC_TR_19075-6_2017.zip):
    *Support for JavaScript Object Notation (JSON)*.
    2017年首次集成JSON数据类型到SQL标准。
  - ISO/IEC 9075-9:2016 Part 9: *Management of External Data*
    ([SQL/MED](https://zh.wikipedia.org/wiki/SQL/MED "wikilink")).
    这部分标准主要包含可选的特性。
  - ISO/IEC 9075-10:2016 Part 10: *Object language bindings*
    ([SQL/OLB](https://zh.wikipedia.org/wiki/SQL/OLB "wikilink"))。定义了[SQLJ](https://zh.wikipedia.org/wiki/SQLJ "wikilink")，SQL嵌入到Java，保证了SQLJ应用程序二进制可移植。这部分标准主要包含可选的特性。
  - ISO/IEC 9075-11:2016 Part 11: *Information and definition schemas*
    ([SQL/Schemata](https://zh.wikipedia.org/wiki/SQL/Schemata "wikilink")).
    定义了Information Schema与Definition
    Schema，提供了常用工具集使得SQL数据库与对象自描述。这些工具包括SQL
    object identifier、structure与integrity
    constraints、security与authorization specifications,
    features与packages。这部分标准主要包含强制与可选的特性。
  - ISO/IEC 9075-13:2016 Part 13: *SQL Routines and types using the Java
    TM programming language*
    ([SQL/JRT](https://zh.wikipedia.org/wiki/SQL/JRT "wikilink")).
    SQL应用程序调用静态方法作为子程序的能力('Java-in-the-database')；Java类作为SQL结构化用户定义类型。这部分标准主要包含可选的特性。
  - ISO/IEC 9075-14:2016 Part 14: *XML-Related Specifications*
    ([SQL/XML](https://zh.wikipedia.org/wiki/SQL/XML "wikilink")).
    这部分标准主要包含可选的特性。

*ISO/IEC 9075*被*ISO/IEC 13249: SQL Multimedia and Application Packages*
(SQL/MM)补充。后者定义了基于SQL的音视频、空间数据的界面与包。包括：

  - ISO/IEC 13249-1:2016 Part 1: *Framework*
  - ISO/IEC 13249-2:2003 Part 2: *Full-Text*
  - ISO/IEC 13249-3:2016 Part 3: *Spatial*
  - ISO/IEC 13249-5:2003 Part 5: *Still image*
  - ISO/IEC 13249-6:2006 Part 6: *Data mining*
  - ISO/IEC 13249-7:2013 Part 7: *History*
  - ISO/IEC 13249-8:xxxx Part 8: *Metadata Registry Access*
    *[MRA](https://web.archive.org/web/20180612143206/https://www.iso.org/standard/73181.html)*
    (work in progress)

## 以SQL為基礎的其他延伸語言

  - [Transact-SQL](../Page/Transact-SQL.md "wikilink")

<!-- end list -->

  -
    微軟[MS
    SQL-Server](https://zh.wikipedia.org/wiki/MS_SQL-Server "wikilink")，以及系列資料庫所用的SQL

<!-- end list -->

  - [PL-SQL](../Page/PL-SQL.md "wikilink")

<!-- end list -->

  -
    [Oracle](https://zh.wikipedia.org/wiki/Oracle "wikilink")
    [資料庫所使用的SQL](https://zh.wikipedia.org/wiki/Oracle資料庫 "wikilink")

## 安全問題

由於SQL指令在部份進階使用時，語法會依照特定條件來變換，而且若是表格中的欄位過多時，許多開發人員都會習慣以字串組立的方式建立SQL指令，而且又使用系統管理員級的帳戶連到資料庫，因此讓駭客有機會利用SQL的組立方式進行攻擊，像是在指令中添加部份刺探性或破壞性的指令（例如`DROP
TABLE`、`DROP DATABASE`或是`DELETE * FROM
myTable`等具破壞性的指令），讓資料庫的資料或實體伺服器被破壞，導致服務中斷或是系統癱瘓等後果，或是以邏輯的漏洞，在密碼欄寫入特殊字串(例如'
or
'1'='1)，讓該字串形成的邏輯判斷永遠為真，或直接取得非查詢條件的資料，而不需要知道密碼，以達成非法登入系統的目的，此種攻擊手法稱為**SQL注入**（SQL
injection）。

目前實務上較有效的防禦方法，就是全面改用[參數化查詢](../Page/參數化查詢.md "wikilink")。

## 参考文献

## 外部連結

  - [Comparison of different SQL
    implementations](http://troels.arvin.dk/db/rdbms/)

## 参见

  - [关系数据库](../Page/关系数据库.md "wikilink")
  - [语言集成查询](../Page/语言集成查询.md "wikilink")

{{-}}

[Category:SQL](https://zh.wikipedia.org/wiki/Category:SQL "wikilink")
[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")
[Category:數據查詢語言](https://zh.wikipedia.org/wiki/Category:數據查詢語言 "wikilink")
[Category:宣告式編程語言](https://zh.wikipedia.org/wiki/Category:宣告式編程語言 "wikilink")
[Category:ISO标准化编程语言](https://zh.wikipedia.org/wiki/Category:ISO标准化编程语言 "wikilink")

1.  {{ cite book |last= Beaulieu | first = Alan |title=Learning SQL
    |editor=Mary E Treseler |publisher=O'Reilly |location=Sebastapol,
    CA, USA |date=April 2009 |edition= 2nd | isbn = 978-0-596-52083-0}}

2.  {{ cite web | title=SQL, n. | website=Oxford English Dictionary |
    publisher=Oxford University Press | accessdate=2014-11-27 |
    url=<http://www.oed.com/view/Entry/260112?redirectedFrom=SQL#eid> }}

3.

4.  From Oxford Dictionaries: "Definition of SQL - abbreviation,
    Structured Query Language, an international standard for database
    manipulation."

5.

6.  From Microsoft: "Structured Query Language, invented at IBM in the
    1970s. It is more commonly known by its acronym, SQL .."

7.  {{ cite journal | last = Codd | first = Edgar F | title = A
    Relational Model of Data for Large Shared Data Banks | journal =
    Communications of the ACM | volume = 13 | issue = 6 | pages = 377–87
    | publisher = Association for Computing Machinery | date = June 1970
    | url = <http://www.acm.org/classics/nov95/toc.html> | accessdate =
    2007-06-09 | doi = 10.1145/362384.362685 | deadurl = yes |
    archiveurl =
    <https://web.archive.org/web/20070612235326/http://www.acm.org/classics/nov95/toc.html>
    | archivedate = 2007-06-12 }}

8.

9.

10.
11. ANSI/ISO/IEC International Standard (IS). Database Language SQL—Part
    2: Foundation (SQL/Foundation). 1999.