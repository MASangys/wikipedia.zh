**[SQL](../Page/SQL.md "wikilink")编程语言的语法**是由ISO/IEC 9075标准中的[ISO/IEC SC 32委员会所定义和维护的](https://zh.wikipedia.org/wiki/ISO/IEC_JTC_1/SC_32 "wikilink")。尽管存在标准，不过SQL代码仍然无法在不进行修改的前提下在不同的数据库系统中直接移植。

## 语言元素

[SQL_ANATOMY_wiki.svg](https://zh.wikipedia.org/wiki/File:SQL_ANATOMY_wiki.svg "fig:SQL_ANATOMY_wiki.svg")

SQL语言分成了几种要素，包括：

  - 子句，是语句和查询的组成成分。（在某些情况下，这些都是可选的。）\[1\]
  - 表达式，可以产生任何[标量值](../Page/变量_\(程序设计\).md "wikilink")，或由和的[数据库表](https://zh.wikipedia.org/wiki/数据库表 "wikilink")
  - 谓词，给需要评估的SQL[三值逻辑](../Page/三值逻辑.md "wikilink")（3VL）（true/false/unknown）或[布尔](../Page/逻辑代数.md "wikilink")[真值指定条件](https://zh.wikipedia.org/wiki/真值 "wikilink")，并限制语句和查询的效果，或改变程序流程。
  - 查询，基于特定条件检索数据。这是*SQL*的一个重要组成部分。
  - 语句，可以持久地影响纲要和数据，也可以控制[数据库事务](../Page/数据库事务.md "wikilink")、程序流程、连接、会话或诊断。
      - SQL语句也包括[分號](../Page/分號.md "wikilink")（";"）语句终结符。尽管并不是每个平台都必需，但它是作为SQL语法的标准部分定义的。
  - [无意义的空白在SQL语句和查询中一般会被忽略](https://zh.wikipedia.org/wiki/空白 "wikilink")，更容易格式化SQL代码便于阅读。

## 运算符

<table>
<thead>
<tr class="header">
<th><p>运算子</p></th>
<th><p>描述</p></th>
<th><p>例子</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>等于</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>不等于（许多数据库管理系统除了支持以外还支持）</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>大于</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>小于</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>大于等于</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>小于等于</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>在一个范围内</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>字符模式匹配</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>等于多个可能的值之一</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><em>或</em> </p></td>
<td><p>与空值（数据缺失）比较</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>等于值或均为空值（数据缺失）</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>用于在查看结果时更改字段名称</p></td>
<td></td>
</tr>
</tbody>
</table>

有人也提议实现其他运算子，例如（寻找那些不比任何其他记录“糟糕”的记录）。

### 条件（CASE）表达式

SQL在标准中引入了`CASE/WHEN/THEN/ELSE/END`语句。通常情况下所称的“搜索CASE语句”例子如下：

``` sql
CASE WHEN n > 0
          THEN '正'
     WHEN n < 0
          THEN '负'
     ELSE '零'
END
```

SQL按照`WHEN`条件在源代码中出现的顺序进行判断。如果源代码中没有指定`ELSE`表达式，SQL默认为`ELSE NULL`。SQL标准中还有一种“简单CASE语句”，类似C语言的switch：

``` sql
CASE n WHEN 1
            THEN 'one'
       WHEN 2
            THEN 'two'
       ELSE 'I cannot count that high'
END
```

该语法是隐式相等条件。通常情况下，遇到[与空值比较的情况会发出警告](https://zh.wikipedia.org/wiki/空值_\(SQL\) "wikilink")。

对于[Oracle数据库](../Page/Oracle数据库.md "wikilink")的SQL语法，还可以用`DECODE`函数简化：

``` oracle11
SELECT DECODE(n, 1, 'one',
                 2, 'two',
                    'i cannot count that high')
FROM   some_table;
```

最后一个值是可选的，若无指定，默认为`NULL`。另外，与“简单CASE”不同的是，Oracle的`DECODE`会认为两个`NULL`之间相等。\[2\]

## 查询

SQL中最常见的操作是查询，它是通过陈述性[`SELECT`](../Page/查询_\(SQL\).md "wikilink")语句执行的。`SELECT`从一个或多个[表或表达式中检索数据](https://zh.wikipedia.org/wiki/数据库表 "wikilink")。标准的`SELECT`不会对数据库有持久影响。`SELECT`的一些非标准的实现可以有持久影响，如一些数据库中有`SELECT INTO`语法。\[3\]

查询允许用户描述所需的数据，将、以及执行用以产生它选取的结果的物理操作交给[数据库](../Page/数据库.md "wikilink")管理系统（DBMS）负责。

查询包含一系列含有最终结果的字段, 紧跟`SELECT`关键词。星号（"`*`"）也可以用来指定查询应当返回查询表所有字段。`SELECT`是最复杂的SQL语句，可选的关键词和子句包括：

  - [`FROM`](https://zh.wikipedia.org/wiki/From_\(SQL\) "wikilink")子句指定了选择的数据表。`FROM`子句也可以包含[`JOIN`](https://zh.wikipedia.org/wiki/连接_\(SQL\) "wikilink") 二层子句来为数据表的连接设置规则。
  - [`WHERE`](https://zh.wikipedia.org/wiki/Where_\(SQL\) "wikilink")子句后接一个比较谓词以限制返回的行。`WHERE`子句仅保留返回结果里使得比较谓词的值为True的行。
  - [`GROUP``   ``BY`](https://zh.wikipedia.org/wiki/Group_by_\(SQL\) "wikilink")子句用于将若干含有相同值的行合并。 `GROUP BY`通常与SQL聚合函数连用，或者用于清除数据重复的行。`GROUP BY`子句要用在`WHERE`子句之后。
  - [`HAVING`](https://zh.wikipedia.org/wiki/Having_\(SQL\) "wikilink")子句后接一个谓词来过滤从`GROUP BY`子句中获得的结果，由于其作用于`GROUP BY`子句之上，所以聚合函数也可以放到其谓词中。
  - [`ORDER``   ``BY`](https://zh.wikipedia.org/wiki/Order_by_\(SQL\) "wikilink")子句指明将哪个字段用作排序关键字，以及排序顺序(升序/降序)，如果无此子句，那么返回结果的顺序不能保证有序。

下面是一个返回昂贵的书籍列表的`SELECT`查询的例子。查询会从 *Book* 表中检索所有 *price* 的值大于 100.00 的行。结果按 *title* 升序排列。*选择列表*中的星号（\*）表明*Book*表中所有字段都包含在结果集中。

``` sql
SELECT *
 FROM  Book
 WHERE price > 100.00
 ORDER BY title;
```

下面的例子演示了通过返回与每本书相关联的书籍和作者来多表查询、分组和聚集。

``` sql
SELECT Book.title AS Title,
       count(*) AS Authors
 FROM  Book
 JOIN  Book_author
   ON  Book.isbn = Book_author.isbn
 GROUP BY Book.title;
```

输出可能类似于下面的例子：

`Title                  Authors`
`---------------------- -------`
`SQL Examples and Guide 4`
`The Joy of SQL         1`
`An Introduction to SQL 2`
`Pitfalls of SQL        1`

在*isbn*是两个表中唯一通用的列名，且名为*title*的列仅存在于*Books*表中的前提下，上述查询可以用以下形式重写：

``` sql
SELECT title,
       count(*) AS Authors
 FROM  Book
 NATURAL JOIN Book_author
 GROUP BY title;
```

然而，许多厂商或者不支持这种方法，或者需要某些列命名约定来实现自然联接。

SQL包含有用于计算存储值的值的运算符和函数。SQL允许在*选择列表*中使用表达式来投影数据，如下例所示，它返回成本超过100.00的书籍列表，另外一列*sales_tax*包含以*price*的6％计算的销售税数据。

``` sql
SELECT isbn,
       title,
       price,
       price * 0.06 AS sales_tax
 FROM  Book
 WHERE price > 100.00
 ORDER BY title;
```

### 子查询

查询可以嵌套，以便一个查询的结果可以通过关系运算符或聚合函数在另一个查询中使用。嵌套查询也称为*子查询*。虽然连接和其他表操作在许多情况下提供了计算上优越（即更快）的替代方案，但是子查询的使用引入了在执行中会很有用或很必要的等级。在下例中，聚合函数`AVG`接收子查询的结果作为输入：

``` sql
SELECT isbn,
       title,
       price
 FROM  Book
 WHERE price < (SELECT AVG(price) FROM Book)
 ORDER BY title;
```

子查询可以使用外部查询的值，在这种情况下，它被称为。

自1999年以来，SQL标准允许称为的命名子查询（在IBM DB2版本2中实现之后命名和设计; Oracle把它叫做）。CTE还可以通过自身引用来[递归](../Page/递归.md "wikilink")；允许树或图遍历，以及更一般的[不动点](../Page/不动点.md "wikilink")计算。

### 派生表

*派生表*是在FROM子句中引用SQL子查询的用法。基本上，派生表是可以从中选择或连接到的子查询。派生表功能允许用户将子查询引用为表。派生表也称为*内联视图*或*子选择*。

在下例中，SQL语句涉及从初始“Book”表到派生表“sales”的连接。此派生表使用ISBN捕获关联的图书销售信息以加入“Book”表。因此，派生表提供的结果集包含附加列（销售的商品数量和销售图书的公司）：

``` sql
SELECT b.isbn, b.title, b.price, sales.items_sold, sales.company_nm
FROM Book b
  JOIN (SELECT SUM(Items_Sold) Items_Sold, Company_Nm, ISBN
        FROM Book_Sales
        GROUP BY Company_Nm, ISBN) sales
  ON sales.isbn = b.isbn
```

### 空值与三值逻辑

SQL中引入了[空值的概念](https://zh.wikipedia.org/wiki/空值_\(SQL\) "wikilink")，用来处理关系模型中缺少信息的情况。`NULL`一词表示空白值，是SQL中的保留词。如果Null进行比较，例如在WHERE子句中使用“=”判断相等，那么会返回未知值，而SELECT语句只会返回WHERE子句条件为真（TRUE）的结果，不会返回条件为假（FALSE）或未知的结果。

“真”、“假”以及与空值直接比较时所得到的“未知”共同组成了SQL的[three-valued logic](../Page/三值逻辑.md "wikilink")。SQL所用的真值表与Kleene和Lukasiewicz三值逻辑的共同部分对应 (which differ in their definition of implication, however SQL defines no such operation).\[4\]

<table>
<tbody>
<tr class="odd">
<td><table>
<thead>
<tr class="header">
<th><p>p AND q</p></th>
<th><p>p</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>真</p></td>
<td><p>假</p></td>
</tr>
<tr class="even">
<td><p>q</p></td>
<td><p>真</p></td>
</tr>
<tr class="odd">
<td><p>假</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>未知</p></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><table>
<thead>
<tr class="header">
<th><p>p OR q</p></th>
<th><p>p</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>真</p></td>
<td><p>假</p></td>
</tr>
<tr class="even">
<td><p>q</p></td>
<td><p>真</p></td>
</tr>
<tr class="odd">
<td><p>假</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>未知</p></td>
<td></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

<table>
<tbody>
<tr class="odd">
<td><table>
<thead>
<tr class="header">
<th><p>p = q</p></th>
<th><p>p</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>真</p></td>
<td><p>假</p></td>
</tr>
<tr class="even">
<td><p>q</p></td>
<td><p>真</p></td>
</tr>
<tr class="odd">
<td><p>假</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>未知</p></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><table>
<thead>
<tr class="header">
<th><p>q</p></th>
<th><p>NOT q</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>真</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>假</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>未知</p></td>
<td></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

然而，由于在直接比较之外的处理，在SQL中对Null的语义解释存在争议。如上表所示，SQL中的两个NULL之间的直接等式比较（例如`NULL = NULL`）返回真值“未知”。这符合Null不具有值（并不是任何数据域的成员）的解释，而是缺失信息的占位符或“标记”。但是，在`UNION`和`INTERSECT`操作符的SQL规范中，两个空值不相等的原则在实际上标识了null。\[5\] 因此，与涉及NULL的显式比较（例如上述`WHERE`子句中的那些）的操作不同，SQL中的这些集合运算可能产生表示不确定信息的结果。In Codd's 1979 proposal (which was basically adopted by SQL92) this semantic inconsistency is rationalized by arguing that removal of duplicates in set operations happens "at a lower level of detail than equality testing in the evaluation of retrieval operations."\[6\] 然而，计算机科学教授Ron van der Meyden认为“SQL标准的不一致意味着不可能将任何直观的逻辑语义归结为SQL中的null处理。”\[7\]

另外，由于直接与空值比较会返回未知，因此SQL又提供了两个用于测试空值的语句：`IS NULL`和`IS NOT NULL`，前者用于判断是否为空，后者相反\[8\]。 SQL不明确支持[全称量化](../Page/全称量化.md "wikilink")，必须将其定义为否定[存在量化](../Page/存在量化.md "wikilink")。\[9\]\[10\]\[11\] 还有“<行值表达式> IS DISTINCT FROM <行值表达式>”插入比较运算符，除非两个操作数相等或两者都为NULL，否则返回TRUE。同样，`IS NOT DISTINCT FROM`定义为“NOT (<行值表达式> IS DISTINCT FROM <行值表达式>)”。[SQL:1999还引入了](https://zh.wikipedia.org/wiki/SQL:1999 "wikilink")`BOOLEAN`类型变量，根据标准也可以是未知值。实践中一些数据库系统（例如[PostgreSQL](../Page/PostgreSQL.md "wikilink")）会把 implement the BOOLEAN Unknown as a BOOLEAN NULL.

## 数据操作

[資料操縱語言](../Page/資料操縱語言.md "wikilink")（DML）是SQL用于添加、更新和删除数据的子集：

  - [`INSERT`](https://zh.wikipedia.org/wiki/插入_\(SQL\) "wikilink")添加行（正式名称为[元组](../Page/多元组.md "wikilink")）到一个现有的表，例如：

<!-- end list -->

``` sql
INSERT INTO example
 (field1, field2, field3)
 VALUES
 ('test', 'N', NULL);
```

  - [`UPDATE`](../Page/Update.md "wikilink")修改现有的表中一些行，例如：

<!-- end list -->

``` sql
UPDATE example
 SET field1 = 'updated value'
 WHERE field2 = 'N';
```

  - [`DELETE`](../Page/删除_\(SQL\).md "wikilink")从表中删除现有的行，如：

<!-- end list -->

``` sql
DELETE FROM example
 WHERE field2 = 'N';
```

  - [`MERGE`](https://zh.wikipedia.org/wiki/Merge_\(SQL\) "wikilink")用来合并多个表的数据。它结合了`INSERT`和`UPDATE`元素。它是在SQL:2003标准中定义的；在那之前，一些数据库也以不同的语法提供了相似的功能，又是叫做“”。

<!-- end list -->

``` sql
 MERGE INTO table_name USING table_reference ON (condition)
 WHEN MATCHED THEN
 UPDATE SET column1 = value1 [, column2 = value2 ...]
 WHEN NOT MATCHED THEN
 INSERT (column1 [, column2 ...]) VALUES (value1 [, value2 ...])
```

## 事务控制

如果数据库系统支持事务，那么可用以下语句：

  - `START TRANSACTION`（或`BEGIN WORK`、`BEGIN TRANSACTION`，取决于具体数据库系统的规定）表示[数据库事务](../Page/数据库事务.md "wikilink")开始。
  - `SAVE TRANSACTION`（或`SAVEPOINT`）命令会记录事务本身的状态，即保存点。

<!-- end list -->

``` sql
CREATE TABLE tbl_1(id int);
 INSERT INTO tbl_1(id) VALUES(1);
 INSERT INTO tbl_1(id) VALUES(2);
COMMIT;
 UPDATE tbl_1 SET id=200 WHERE id=1;
SAVEPOINT id_1upd;
 UPDATE tbl_1 SET id=1000 WHERE id=2;
ROLLBACK to id_1upd;
 SELECT id from tbl_1;
```

  - [`COMMIT`](https://zh.wikipedia.org/wiki/Commit_\(SQL\) "wikilink")会令事务过程中进行数据修改正式生效。
  - [`ROLLBACK`](https://zh.wikipedia.org/wiki/Rollback_\(SQL\) "wikilink")会放弃上次`COMMIT`或`ROLLBACK`之后的修改，使数据恢复到前一状态。不过一旦`COMMIT`语句结束，事务所产生的修改将无法回退。

`COMMIT`和`ROLLBACK`会中止当前事务并释放锁。In the absence of a START TRANSACTION or similar statement, the semantics of SQL are implementation-dependent.

下面例子展示了把一个账户的金额转移到另一个账户上面的过程。只要表示减少和增加的两个UPDATE语句中有一个失败，整个事务就会回退，更改也不会保存到数据库中。

``` sql
START TRANSACTION;
 UPDATE Account SET amount=amount-200 WHERE account_number=1234;
 UPDATE Account SET amount=amount+200 WHERE account_number=2345;

IF ERRORS=0 COMMIT;
IF ERRORS<>0 ROLLBACK;
```

## 数据定义

[資料定義語言](../Page/資料定義語言.md "wikilink")（DDL）管理表和索引结构。DDL的最基本是`CREATE`、`ALTER`、`RENAME`、`DROP`和`TRUNCATE`语句：

  - [`CREATE`](https://zh.wikipedia.org/wiki/資料定義語言#CREATE "wikilink")在数据库中创建一个对象（例如一张表），举例来说：

<!-- end list -->

``` sql
CREATE TABLE example(
 column1 INTEGER,
 column2 VARCHAR(50),
 column3 DATE NOT NULL,
 PRIMARY KEY (column1, column2)
);
```

  - [`ALTER`](https://zh.wikipedia.org/wiki/資料定義語言#ALTER "wikilink")以不同方式修改现有对象的结构，例如向现有的表或约束添加字段：

<!-- end list -->

``` sql
ALTER TABLE example ADD column4 NUMBER(3) NOT NULL;
```

  - [`TRUNCATE`](https://zh.wikipedia.org/wiki/Truncate "wikilink")以一种非常快速的方式删除表中的所有数据，删除表内的数据而不是表本身。这通常意味着后续的COMMIT操作, 即，它不能被回滚（与DELETE不同，数据不会为之后回滚而写入日志）。

<!-- end list -->

``` sql
TRUNCATE TABLE example;
```

  - [`DROP`](https://zh.wikipedia.org/wiki/資料定義語言#DROP "wikilink")删除数据库中的对象，通常无法挽回的，即，它不能被回滚，如：

<!-- end list -->

``` sql
DROP TABLE example;
```

## 数据类型

一张表中的每个字段都要定义该字段的类型。ANSI SQL包括下列数据类型：\[12\]\[13\]

### 字符串

  - `CHARACTER(`<var>`n`</var>`)`或`CHAR(`<var>`n`</var>`)`：宽度为<var>n</var>的定长字符串。如果内容长度不足，则以空格填充；
  - `CHARACTER VARYING(`<var>`n`</var>`)`或`VARCHAR(`<var>`n`</var>`)`：最长为<var>n</var>个字符的可变宽度字符串；
  - `NATIONAL CHARACTER(`<var>`n`</var>`)`或`NCHAR(`<var>`n`</var>`)`：支持国际字符集的固定宽度字符串；
  - `NATIONAL CHARACTER VARYING(`<var>`n`</var>`)`或`NVARCHAR(`<var>`n`</var>`)`：可变宽度的`NCHAR`字符串；

### Bit类型

Bit是一种存储0或1的整数类型，一个Bit值需要一个字节。

  - `BIT(`<var>`n`</var>`)`：<var>n</var>比特Bit类型
  - `BIT VARYING(`<var>`n`</var>`)`：最大长度为<var>n</var>的Bit类型

### 数值

  - 整数：包括`SMALLINT`、`INTEGER`和`BIGINT`，可表示的数据范围从小到大。
  - 小数：包括`FLOAT`, `REAL`和`DOUBLE PRECISION`，可表示的数据范围从小到大。
  - 定点数：包括`NUMERIC(长度, 精度)` or `DECIMAL(长度, 精度)`。

定点数类型包含两个要素：长度、精度。长度表示数字的最大个数，包括小数点左面和右面的数字。精度是非负整数，精度为零意味着数值只能是整数。以123.45为例，它的长度为5，精度为2。

SQL提供了除去小数部分、只保留整数部分的函数，叫做`TRUNC`（Informix、DB2、PostgreSQL、Oracle和MySQL）或`ROUND`（Informix、SQLite、Sybase、Oracle、PostgreSQL和Microsoft SQL Server）\[14\]

### 日期与时间

  - `DATE`：日期值（例如 `2011-05-03`）
  - `TIME`：时间值（例如 `15:51:36`）。时间值的粒度通常是100纳秒。
  - `TIME WITH TIME ZONE`或`TIMETZ`：与`TIME`相同，但包含时区信息。
  - `TIMESTAMP`：[时间戳](https://zh.wikipedia.org/wiki/时间戳 "wikilink")，同时包含日期和时间（例如 `2011-05-03 15:51:36`）。
  - `TIMESTAMP WITH TIME ZONE`或`TIMESTAMPTZ`：与`TIMESTAMP`相同，但包含时区信息。
  - `INTERVAL`

SQL提供了多个在日期时间类型和字符串类型之间互相转换的函数，例如`TO_DATE`、`TO_TIME`、`TO_TIMESTAMP`等。可以通过`NOW`函数来获取数据库服务器的时间。

## 数据控制

[資料控制語言](../Page/資料控制語言.md "wikilink") (Data Control Language, DCL) 授权的用户访问和操作的数据。 它的两个主要的语句是：

  - `GRANT` 授权的一个或多个用户执行在一个对象上的一个操作或者一组操作。
  - `REVOKE` 消除了授权，其可以是默认的授权。

例如:

``` sql
GRANT SELECT, UPDATE
 ON example
 TO some_user, another_user;

REVOKE SELECT, UPDATE
 ON example
 FROM some_user, another_user;
```

## 参考文献

{{-}}

[Category:SQL](https://zh.wikipedia.org/wiki/Category:SQL "wikilink") [Category:程序设计语言语法](https://zh.wikipedia.org/wiki/Category:程序设计语言语法 "wikilink")

1.  ANSI/ISO/IEC International Standard (IS). Database Language SQL—Part 2: Foundation (SQL/Foundation). 1999.

2.

3.  {{ cite book | chapter = Transact-SQL Reference | title = SQL Server Language Reference | series = SQL Server 2005 Books Online | publisher = Microsoft | date = 2007-09-15 | url = <http://msdn.microsoft.com/en-us/library/ms188029.aspx> | accessdate = 2007-06-17 }}

4.

5.
6.
7.  Ron van der Meyden, "[Logical approaches to incomplete information: a survey](http://books.google.com/books?id=gF0b85IuqQwC&pg=PA344)" in Chomicki, Jan; Saake, Gunter (Eds.) *Logics for Databases and Information Systems*, Kluwer Academic Publishers ISBN 978-0-7923-8129-7, p. 344; [PS preprint](http://www.cse.unsw.edu.au/~meyden/research/indef-review.ps) (note: page numbering differs in preprint from the published version)

8.  {{ cite book | last =ISO/IEC | title =ISO/IEC 9075-2:2003, "SQL/Foundation" | publisher =ISO/IEC | nopp =true }}

9.  M. Negri, G. Pelagatti, L. Sbattella (1989) *[Semantics and problems of universal quantification in SQL](http://portal.acm.org/citation.cfm?id=63224.68822&coll=GUIDE&dl=GUIDE)*.

10. Fratarcangeli, Claudio (1991). *Technique for universal quantification in SQL*. Retrieved from [ACM.org.](http://portal.acm.org/citation.cfm?id=126482.126484&coll=GUIDE&dl=GUIDE&CFID=5934371&CFTOKEN=55309005)

11. Kawash, Jalal (2004) *Complex quantification in Structured Query Language (SQL): a tutorial using relational calculus* - Journal of Computers in Mathematics and Science Teaching ISSN 0731-9258 Volume 23, Issue 2, 2004 AACE Norfolk, Virginia. Retrieved from \[<http://www.thefreelibrary.com/Complex+quantification+in+Structured+Query+Language+(SQL):+a+tutorial>...-a0119901477 Thefreelibrary.com\].

12. {{ cite journal | url = <http://www.contrib.andrew.cmu.edu/~shadow/sql/sql1992.txt> | title = Information Technology: Database Language SQL | publisher = CMU }} (proposed revised text of DIS 9075).

13. [C. J. Date](https://zh.wikipedia.org/wiki/C._J._Date "wikilink") with [Hugh Darwen](https://zh.wikipedia.org/wiki/Hugh_Darwen "wikilink"): *A Guide to the SQL standard : a users guide to the standard database language SQL, 4th ed.*, Addison Wesley, USA 1997,

14. Arie Jones, Ryan K. Stephens, Ronald R. Plew, Alex Kriegel, Robert F. Garrett (2005), *SQL Functions Programmer's Reference*. Wiley, 127 pages.