**Jet Data Access Objects**是[微软](../Page/微软.md "wikilink")的一项过时的数据库编程访问界面。DAO是基于[Microsoft Jet Database Engine之上的一套面向对象的体系](../Page/Microsoft_Jet_Database_Engine.md "wikilink")，可以访问[Microsoft Access或](../Page/Microsoft_Access.md "wikilink")[dBase等桌面文件型数据库](https://zh.wikipedia.org/wiki/dBase "wikilink")，或者[ODBC](../Page/ODBC.md "wikilink")。1996年发布的建于[OLE DB之上的](../Page/OLE_DB.md "wikilink")[ADO](../Page/ADO.md "wikilink")，取代了DAO的地位。

## 历史

DAO 1.0于1992年11月发布。配套于[Visual Basic](../Page/Visual_Basic.md "wikilink") 2.0, Visual Basic 3.0, Microsoft Access 1.1。

DAO 2.0, 与Microsoft Access 2.0一起发布。

DAO 2.5, 与Visual Basic 4.0一起发布，仅有16位版本。

DAO 3.0, 配套于Visual Basic 4.0, Microsoft Access 95, Microsoft Excel 95, [Visual C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink") 4.0。

DAO 3.5，配套于Microsoft Access 97, Visual Basic 6.0。DAO 3.5能够绕过[Microsoft Jet Database Engine](../Page/Microsoft_Jet_Database_Engine.md "wikilink")，直接访问[ODBC](../Page/ODBC.md "wikilink")数据源，诸如[Microsoft SQL Server等企业型数据库](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")。这是通过ODBCDirect database engine实现的。

DAO 3.6是微软发布的最后一版，与Microsoft Access 2000一起发布。Microsoft称不会有[64位版本的DAO](https://zh.wikipedia.org/wiki/64位 "wikilink")。\[1\][Microsoft Access](../Page/Microsoft_Access.md "wikilink") 2013仅支持DAO 3.6。

## 对象体系架构

对于Jet database engine object,包含了一些对象：

  - workspace对象，包含了
  - groups-and-users对象
  - database对象，包含了：
      - 对象containers
      - 查询定义(QueryDef)对象
      - Recordset对象
      - relation对象，表示了数据库的列之间的关系
      - 表定义(TableDef)对象，由field与indexe构成
      - error对象

把DAO代码转换为ADO，应掌握二者之间的对象的对应关系：

| DAO           | ADO(ADODB)                          | 注释                                                                |
| ------------- | ----------------------------------- | ----------------------------------------------------------------- |
| DBEngine      | None                                |                                                                   |
| Database      | Connection                          |                                                                   |
| Recordset     | Recordset                           |                                                                   |
| Dynaset-Type  | Keyset                              | Retrieves a set of pointers to the records in the recordset       |
| Snapshot-Type | Static                              | Both retrieve full records but a Static recordset can be updated. |
| Table-Type    | Keyset with adCmdTableDirect Option |                                                                   |
| Field         | Field                               | When referred to in a recordset                                   |

## 参见

  - [Microsoft Data Access Components](../Page/Microsoft_Data_Access_Components.md "wikilink")
  - [ADO](../Page/ADO.md "wikilink")
  - [RDO](https://zh.wikipedia.org/wiki/RDO "wikilink")

## 参考文献

[DAO object model diagram with links to class reference pages](http://codevba.com/msaccess/dao_objectmodeldiagram.xhtml)

[Category:微软API](https://zh.wikipedia.org/wiki/Category:微软API "wikilink")

1.  [Data Access Technologies Road Map](http://msdn2.microsoft.com/en-us/library/ms810810.aspx#mdac%20technologies%20road%20map%20old_topic9)