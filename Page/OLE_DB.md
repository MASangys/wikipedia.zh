**OLE DB**（*Object Linking and Embedding,
Database*，对象链接嵌入数据库，有时亦写作**OLEDB**或**OLE-DB**）是[微软为以统一方式访问不同类型的数据存储设计的一种](../Page/微软.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")，是一组用[组件对象模型（COM）实现的接口](../Page/组件对象模型.md "wikilink")，而与[对象连接与嵌入（OLE）无关](../Page/对象连接与嵌入.md "wikilink")。它被设计成为[ODBC的一种高级替代者和继承者](../Page/ODBC.md "wikilink")，把它的功能扩展到支持更多种类的非关系型数据库，例如可能不支持[SQL的](../Page/SQL.md "wikilink")[对象数据库和电子表格](../Page/对象数据库.md "wikilink")（如[Excel](../Page/Excel.md "wikilink")）。

OLE
DB用一组抽象概念（包括数据源、会话、命令和行集）将数据的存储从需要访问数据的应用中分离出来。这是因为不同的应用需要访问不同数据类型和数据源，但是并不需要了解具体如何使用特定技术的方法访问这些数据。OLE
DB在概念上分为了*消费者*和*提供者*。消费者是那些需要访问数据的应用程序，提供者是实现了那些接口并将数据提供给消费者的软件组件。**OLE
DB是[微软数据访问组件（MDAC）的一部分](../Page/微软数据访问组件.md "wikilink")**。[MDAC是一组微软技术](../Page/MDAC.md "wikilink")，以框架的方式相互作用，为程序员开发访问几乎任何数据存储提供了一个统一并全面的方法。OLE
DB的提供者可以用于提供像[文本文件和电子表格一样简单的数据存储的访问](../Page/文本文件.md "wikilink")，也可以提供像[Oracle](../Page/甲骨文公司.md "wikilink")、[SQL
Server和](../Page/Microsoft_SQL_Server.md "wikilink")[Sybase
ASE一样复杂的数据库的访问](../Page/Adaptive_Server_Enterprise.md "wikilink")。OLE
DB同样可以提供对层次类型的数据存储（如电子邮件系统）的访问。

另一方面，由于不同的数据存储技术可能具有不同的能力，OLE DB提供者不需要实现OLE DB中每一个接口。通过使用COM对象实现可用的能力 -
OLE
DB提供者将把数据存储技术的功能映射到特定的COM接口上。当某种接口提供的能力在所使用的数据库技术中不适用时，微软称该接口的可用性为"provider-specific"。同时，提供者也可以扩大数据存储的能力
- 这些能力在微软的用语中被称为*services*。

## 常見的OLE DB Provider

  - [SQL Server](../Page/SQL_Server.md "wikilink") OLE DB Provider，以SQL
    Server為主的OLE DB資料提供者。
  - [Microsoft Jet](../Page/Microsoft_Jet_Database_Engine.md "wikilink")
    OLE DB Provider，以Access, Excel, dBase等檔案型資料庫為主的OLE DB資料提供者。
  - OLE DB Provider for Internet Publishing，支援WebDAV（Web Distributed
    Authoring and Versioning）發布的OLE DB資料提供者。
  - OLE DB Provider for ODBC，呼叫ODBC的OLE DB資料提供者。
  - OLE DB Provider for Oracle Client，呼叫Oracle資料庫的OLE
    DB資料提供者，通常由Oracle原廠提供。
  - OLE DB Provider for Indexing Services，支援Microsoft Indexing
    Service索引庫的OLE DB資料提供者。
  - OLE DB Provider for Active Directory Services，支援[Active
    Directory目錄資料存取的OLE](../Page/Active_Directory.md "wikilink")
    DB資料提供者。
  - Microsoft OLE DB Persistence Provider，將資料集（Recordset）寫入檔案或由檔案讀取的OLE
    DB資料提供者。

## OLE DB Provider工具提供者

  - Microsoft Data Shaping Service for OLE DB，由指定的OLE DB資料來源組成階層化資料集的工具。
  - Microsoft OLE DB Remoting Provider：可呼叫在遠端電腦中的OLE DB資料來源的工具。
  - Microsoft Cursor Service for OLE DB：在OLE DB來源中提供游標巡覽服務的工具。

## OLE DB产品提供者

  - [Microsoft](http://msdn.microsoft.com/data/)随MDAC和[JET工具包推出了一些OLE](../Page/Jet_Database_Engine.md "wikilink")
    DB提供者
  - [Simba技术公司](http://www.simba.com/)推出了SimbaProvider，一个软件开发套件（SDK），用于建造自定义OLE提供者，通过OLAP访问多维数据库和星形数据库。
  - [OpenLink
    Software](http://uda.openlinksw.com/oledb/)为许多[SQL数据库管理系统推出OLE](../Page/SQL.md "wikilink")
    DB提供者，也提供了OLE DB到ODBC和JDBC的桥接。
  - [SQLSummit.com: OLE DB提供者目录](http://www.sqlsummit.com/oledbVen.htm)
  - [支持Interbase和Firebird的OLE
    DB提供者（支持14种数据库类型，有免费和高级两种版本）](http://www.ibprovider.com/)

## OLE DB的连接串的示例

对[SQL Server](../Page/SQL_Server.md "wikilink")：

`connstr="PROVIDER=SQLOLEDB;DATA SOURCE=servername;UID=xyz;PWD=xxx;DATABASE=dbname"`

对[Microsoft Access](../Page/Microsoft_Access.md "wikilink"):

`connstr="PROVIDER=MICROSOFT.JET.OLEDB.4.0;DATA SOURCE=d:\abc\defg.mdb"`

{{-}}

[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")