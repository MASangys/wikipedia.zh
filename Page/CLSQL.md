**CLSQL**是一个[Common
Lisp语言的](../Page/Common_Lisp.md "wikilink")[SQL数据库接口](../Page/SQL.md "wikilink")，用于让Common
Lisp和数据库进行通信。这个项目由Kevin M. Rosenberg在2001年发起，以支持在多个Common
Lisp的实现上通过使用UFFI这个库，进行SQL数据库的存取操作。CLSQL最初的代码大部分来自于Pierre
R. Mai所开发的MaiSQL库。在2003年的时候，onShore
Development公司抛弃了UncommonSQL这个库，随即在2004年的四月份，Marcus
Pearce将UncommanSQL库移植到了CLSQL上。UncommonSQL库为CLSQL提供了和LispWorks公司的CommonSQL库兼容的[API](https://zh.wikipedia.org/wiki/API "wikilink")。

## 简介

CLSQL为编程语言操作数据库提供了两个不同的接口，一个是函数形式的接口，另一个是面向对象的接口。函数形式的接口除了提供诸如SELECT和UPDATE这样的面向SQL操作的函数以外，还提供了特殊的语法以帮助在Lisp代码中内嵌SQL语言的表达式。面向对象的接口则能够将CLOS中的对象映射到数据库的表中对应的元组上，并且包括了用于存储新的对象、查询对象和移除对象等操作的函数。大部分的应用程序都会同时使用这两种风格的接口。

## 外部链接

  - [LispWorks提供的CommonSQL的在线入门教程](http://www.lispworks.com/documentation/sql-tutorial/index.html)

[Category:SQL](https://zh.wikipedia.org/wiki/Category:SQL "wikilink")
[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")