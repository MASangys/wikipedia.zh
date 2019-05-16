**ODBC**（**Open Database
Connectivity**，开放数据库互连）提供了一种标准的[API](../Page/应用程序接口.md "wikilink")（[应用程序编程接口](https://zh.wikipedia.org/wiki/应用程序编程接口 "wikilink")）方法来访问[数据库管理系统](../Page/数据库管理系统.md "wikilink")（DBMS）。这些API利用[SQL来完成其大部分任务](../Page/SQL.md "wikilink")。ODBC本身也提供了对SQL语言的支持，用户可以直接将SQL语句送给ODBC。ODBC的设计者们努力使它具有最大的独立性和开放性：与具体的编程语言无关，与具体的数据库系统无关，与具体的操作系统无关。

## 历史

在ODBC诞生之前，如果要开发[数据库](../Page/数据库.md "wikilink")[应用程序](../Page/应用程序.md "wikilink")，则必须要使用数据库厂商随数据库产品一同发布的一些工具集来访问数据库，或者在程序中使用[嵌入式SQL来访问数据库](../Page/嵌入式SQL.md "wikilink")。当时，对于访问数据库的方法，缺乏一个基于[C语言的统一编程接口](https://zh.wikipedia.org/wiki/C语言 "wikilink")。在这种背景下，微软于1992年发表了**ODBC**。之后，[X/Open组织以及](https://zh.wikipedia.org/wiki/X/Open "wikilink")[ISO标准化组织基于ODBC](https://zh.wikipedia.org/wiki/ISO "wikilink")
3.0的规范，进一步进行了标准化，于1995年发表了[SQL/CLI标准](https://zh.wikipedia.org/wiki/SQL/CLI "wikilink")。该标准已经成为了[SQL标准的一部分](https://zh.wikipedia.org/wiki/SQL标准 "wikilink")。

版本历史：

  - ODBC 1.0：发表于1992年9月
  - ODBC 2.0：发表于1994年
  - ODBC 3.0：发表于1995年
  - ODBC 3.5：发表于1997年
  - ODBC 3.8：發表於2009年，和[Windows
    7一同發表](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")<ref>

</ref>

## 实现

ODBC的运用形态通常是由应用程序经过一个称之为[ODBC管理器的工具](https://zh.wikipedia.org/wiki/ODBC管理器 "wikilink")，创建一个DSN，指明需要调用的ODBC驱动程序，从而访问对应的数据库。对于用户的应用程序而言，ODBC驱动程序是相对不可见的。用户只需要在ODBC管理器中配置相应的数据库的数据源信息，并登录相应的ODBC驱动程序即可。DSN分为三种：

  - 用户DSN
  - 系统DSN
  - 文件DSN

也可以用连接字符串而不需要事先创建DSN，例如

`connstr="DRIVER={SQL SERVER};SERVER=servername;UID=xyz;PWD=xxx"`
`connstr="DRIVER={Microsoft Access Driver};SERVER=D:\abc\defg.mdb"`

各个数据库厂商通常都为自己的数据库实现了ODBC驱动程序。从[Oracle](https://zh.wikipedia.org/wiki/Oracle "wikilink"),[DB2](https://zh.wikipedia.org/wiki/DB2 "wikilink"),[SQL
Server到微软的](https://zh.wikipedia.org/wiki/SQL_Server "wikilink")[Access数据库](https://zh.wikipedia.org/wiki/Access "wikilink")，都实现了面向各自数据库产品的数据驱动程序。

而对于ODBC管理器，目前主要存在以下几种实现：

  - Microsoft ODBC
    微软提供的一个实现，目前在大部分[Windows操作系统上可以找到它](https://zh.wikipedia.org/wiki/Windows "wikilink")。

<!-- end list -->

  - unixODBC

    unixODBC项目为非Windows[操作系统](../Page/操作系统.md "wikilink")（如各版本的[Linux](../Page/Linux.md "wikilink")、[Unix以及](https://zh.wikipedia.org/wiki/Unix "wikilink")[Mac
    OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")）提供的一个实现。unixODBC的实现涵盖了ODBC
    3.0中的所有API规范，并且提供了一个类似于Microsoft
    ODBC那样的[GUI形式的配置界面供用户进行数据源的配置](https://zh.wikipedia.org/wiki/GUI "wikilink")。unixODBC的代码在[GPL协议下公开](https://zh.wikipedia.org/wiki/GPL "wikilink")，目前该项目是由[Easysoft的Nick](https://zh.wikipedia.org/wiki/Easysoft "wikilink")
    Gorham进行管理。unixODBC现在已经是很多Linux发行版的标准安装模式下的一个必要组件。

<!-- end list -->

  - iODBC

    iODBC项目（Independent Open DataBase
    Connectivity）的目标是提供一个平台无关的实现，该项目目前由[Openlink
    Software进行管理](https://zh.wikipedia.org/wiki/Openlink_Software "wikilink")。其代码是在[LGPL协议以及](https://zh.wikipedia.org/wiki/LGPL "wikilink")[BSD协议下发布](../Page/BSD.md "wikilink")。[苹果公司从Mac](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")
    OS X v10.2时代开始，便将iODBC绑定至Mac OS操作系统中。

## 参考文献

## 外部連結

  - [ODBC -- Open Database
    Connectivity概觀](http://support.microsoft.com/kb/110093)

## 参见

  - [ADO](../Page/ADO.md "wikilink")（ActiveX Data Objects）
  - [MDAC](../Page/Microsoft_Data_Access_Components.md "wikilink")（Microsoft
    Data Access Components）
  - [JDBC](../Page/Java数据库连接.md "wikilink")（Java Database Connectivity）

{{-}}

[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")