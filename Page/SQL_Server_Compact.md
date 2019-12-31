> 本文内容由[SQL Server Compact](https://zh.wikipedia.org/wiki/SQL_Server_Compact)转换而来。


**Microsoft SQL Server Compact** (**SQL CE**)是微软公司的运行于移动或桌面平台的紧凑型[关系数据库](../Page/关系数据库.md "wikilink")。在引入到桌面平台前，早期称作*SQL Server for Windows CE*与*SQL Server Mobile Edition*。

包括32位与64位版。\[1\] SQL CE targets occasionally connected applications and applications with an embedded database.\[2\]免费下载与使用。\[3\] 没有[ODBC驱动支持](https://zh.wikipedia.org/wiki/Open_Database_Connectivity "wikilink")。只能使用[OLE DB编程API接口](../Page/OLE_DB.md "wikilink")。

最高版本是2011年发布的SQL Server Compact 4.0.\[4\]微软将支持到2021年7月。\[5\]\[6\]

2013年2月，微软宣布SQL Server Compact Edition已经过时了。\[7\]

## 概述

SQL Server Compact与其他[Microsoft SQL Server版本共享了很多API接口](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")。\[8\] 有[ADO.NET](../Page/ADO.NET.md "wikilink") provider，\[9\] 支持[LINQ与](https://zh.wikipedia.org/wiki/Language_Integrated_Query "wikilink")[Entity Framework](https://zh.wikipedia.org/wiki/ADO.NET_Entity_Framework "wikilink")。尚不支持。\[10\]与其他[Microsoft SQL Server版本不同](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")，SQL CE与应用程序运行在同一个进程中。\[11\] 占用磁盘不超过2 [MB](https://zh.wikipedia.org/wiki/Megabyte "wikilink")，内存约为5 MB.\[12\] SQL CE被优化为所有应用程序共享同一内存池。\[13\]Windows 8的 [Windows Store app不能使用SQL](https://zh.wikipedia.org/wiki/Windows_Store_app "wikilink") Server Compact。\[14\]

**版本历史**

| 官方名字                               | 通用名        |
| ---------------------------------- | ---------- |
| SQL Server 2000 Windows CE Edition | SQL CE 1.0 |
| SQL Server 2000 Windows CE Edition | SQL CE 1.1 |
| SQL Server 2000 Windows CE Edition | SQL CE 2.0 |
| SQL Server 2005 Mobile Edition     | SQL CE 3.0 |
| SQL Server 2005 Compact Edition    | SQL CE 3.1 |
| SQL Server Compact 3.5             | SQL CE 3.5 |
| SQL Server Compact 4.0             | SQL CE 4.0 |

## 文件格式

SQL CE数据库存于一个单独的***.sdf***文件("Sqlce Database File") ，\[15\]，最大为4 [GB](https://zh.wikipedia.org/wiki/Gigabyte "wikilink")。\[16\] *.sdf*文件可用128位加密。\[17\] SQL CE runtime负责调控多用户同步访问一个*.sdf*文件。*.sdf*文件可直接复制到部署目标系统上，也可以通过[ClickOnce](../Page/ClickOnce.md "wikilink")部署。SQL CE runtime支持**DataDirectories**。\[18\]

[Visual Studio可以处理SQL](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink") Server CE 数据库文件。\[19\]

## 参见

  - [SQLite](../Page/SQLite.md "wikilink")
  - [SQL Server Express](../Page/SQL_Server_Express.md "wikilink")
  - [MSDE](https://zh.wikipedia.org/wiki/MSDE "wikilink")

## 参考文献

## 外部链接

  - [SQL Server Compact 3.5](http://www.microsoft.com/sqlserver/2008/en/us/compact.aspx)
  - [SQL Server Compact Release Versions](http://blogs.msdn.com/sqlservercompact/archive/2008/02/08/sql-server-compact-release-versions.aspx)
  - [Microsoft's Embedded Database - SQL Server Compact - Team Blog](http://blogs.msdn.com/b/sqlservercompact)

[Category:Microsoft_software](https://zh.wikipedia.org/wiki/Category:Microsoft_software "wikilink") [Category:Windows_Mobile](https://zh.wikipedia.org/wiki/Category:Windows_Mobile "wikilink")

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
16.
17.
18.
19.