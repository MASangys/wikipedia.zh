[微软公司的](https://zh.wikipedia.org/wiki/微软公司 "wikilink")**ADO**（）是一个用于访问数据源的[COM组件](https://zh.wikipedia.org/wiki/COM "wikilink")，作为高层的编程界面层。ADO是在[OLE DB之上](../Page/OLE_DB.md "wikilink")，包含了很多层次化的COM对象与集合（Collections，也是一类对象，在其里面包含了其他层级对象）。允许开发人员编写访问数据的代码而不用关心数据源是如何实现与访问驱动的，而只用关心到数据库的连接。访问[数据库](../Page/数据库.md "wikilink")的时候，关于[SQL](../Page/SQL.md "wikilink")的知识不是必要的，但是特定数据库支持的SQL命令仍可以通过ADO中的命令对象（Command）来执行。

## 版本

ADO被设计来替代微软早期的数据访问对象层（包括[RDO](https://zh.wikipedia.org/wiki/RDO "wikilink")（Remote Data Objects）和[DAO](https://zh.wikipedia.org/wiki/DAO "wikilink")（Data Access Objects））。ADO在1996年8月与[OLE DB一起被发布](../Page/OLE_DB.md "wikilink")。

ADO文件通常保存在C:\\Program Files (x86)\\Common Files\\System\\ado\\目录下。

  - Microsoft Office 2000中发布了ActiveX Data Objects 2.1 Library（MSADO21.TLB）。
  - Microsoft Office 2002中发布了ActiveX Data Objects 2.5 Library（MSADO25.TLB）。引入了Record对象、Stream对象、 URL绑定；并支持识别URL模式的[OLE DB provider](../Page/OLE_DB.md "wikilink")。
      - Microsoft ADO Extensions 2.5 for DDL and Security Library（MSADOX.DLL）包含了下述object与collection：Catalog、Column、Group、Index、Key、Procedure、Property、Table、User object and Users collection、View。
      - Microsoft Jet and Replication Objects 2.5 Library（MSJRO.DLL）包括了Filter object与collection，JetEngine object，Replica object。\[1\]
  - ActiveX Data Objects 2.6 Library（MSADO26.TLB）引入了CubDef.GetSchemaObject方法、Command流、Dialect属性、Command.Execute方法、Field statusvalues、NamedParameters属性、Resultsets in streams、Single row resultset。
  - ActiveX Data Objects 2.7 Library（MSADO27.TLB）支持64位CPU
  - ActiveX Data Objects 2.8 Library（MSADO28.TLB）于2003年8月随Windows Server 2003操作系统发布，作为[Microsoft Data Access Components](../Page/Microsoft_Data_Access_Components.md "wikilink") (MDAC) 2.8的组成部分。未引进任何新特性，但做了很多安全方面的补丁。
  - ADO 6.0(MSADO60.TLB) 包含在 Windows Vista中，作为Windows Data Access Components (Windows DAC) 6.0的组成部分。功能上ADO 6.0等价于ADO 2.8.
  - ADO 6.1(MSADO15.dll) ：2011年10月发布。文件名使用了15这个老号。因为[Windows 7 SP1的ADO](https://zh.wikipedia.org/wiki/Windows_7版本列表 "wikilink") [GUID改变了](https://zh.wikipedia.org/wiki/GUID "wikilink")，导致在此操作系统编译的使用了ADO的软件可以在Windows 7 SP1上运行，但却无法在Windows 7 Release版或Windows Vista或[Windows XP上运行](../Page/Windows_XP.md "wikilink")。\[2\]

2003年后在新的编程框架[.NET Framework中](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，微软提供了一个面向Internet的版本的ADO，称为[ADO.NET](../Page/ADO.NET.md "wikilink")，其对象模型和ADO差别很大，基本上需要重新彻底学习。

<table style="width:85%;">
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 40%" />
<col style="width: 15%" />
<col style="width: 10%" />
</colgroup>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>发布日期</p></th>
<th><p>包括</p></th>
<th><p>特性</p></th>
<th><p>安全问题</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.0</p></td>
<td><p>1996年8月</p></td>
<td><ul>
<li>ADC – IIS 3.0</li>
<li>OLE DB 1.1 SDK (OLE DB 1.1 and ADO 1.0)—<a href="https://zh.wikipedia.org/wiki/Visual_Studio" title="wikilink">Visual Studio</a></li>
<li><a href="https://zh.wikipedia.org/wiki/Visual_Interdev" title="wikilink">Visual Interdev</a> 1.0 and with <a href="../Page/Active_Server_Pages.md" title="wikilink">Active Server Pages</a> (随IIS 3.0发布)</li>
</ul></td>
<td><ul>
<li>ODBC 3.0</li>
<li>OLE DB 1.1</li>
<li>ADO 1.0</li>
<li>ADC 1.0</li>
<li>ODBC drivers for Access/Jet, SQL Server ，Oracle databases</li>
</ul></td>
<td><p>No bulletin发布</p></td>
</tr>
<tr class="even">
<td><p>1.5</p></td>
<td><p>1997年9月</p></td>
<td><ul>
<li>Microsoft Internet Explorer 4.0</li>
<li>Internet Client SDK 4.0</li>
</ul></td>
<td><ul>
<li>ODBC 3.5</li>
<li>OLE DB 1.5</li>
<li>ADO 1.5</li>
<li>RDS 1.5 (取代ADC 1.0)</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.0</p></td>
<td><p>1998年7月1日</p></td>
<td><ul>
<li><a href="https://zh.wikipedia.org/wiki/Visual_Studio_98" title="wikilink">Visual Studio 98</a></li>
<li>Data Access 2.0 SDK</li>
</ul></td>
<td><ul>
<li>ODBC 3.5 SDK</li>
<li>OLE DB 1.5 SDK</li>
<li>OLE DB for OLAP Specification</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.1</p></td>
<td><p>1998年7月11日</p></td>
<td><ul>
<li>SQL Server 7.0</li>
<li>SQL Server 6.5 SP5</li>
</ul></td>
<td><ul>
<li>ADO 2.1</li>
<li>RDS 2.1</li>
<li>OLE DB 2.1</li>
<li>OLE DB Provider for ODBC, SQL Server and Oracle</li>
<li>JRO 2.1</li>
<li>ODBC driver</li>
<li>Jet driver</li>
<li>RDO</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.5</p></td>
<td><p>2000年2月17日</p></td>
<td><ul>
<li>Windows 2000</li>
</ul></td>
<td><ul>
<li>ADO 2.5</li>
<li>ADO MD 2.5</li>
<li>ADOX 2.5</li>
<li>RDS 2.5</li>
<li>OLE DB 2.5</li>
<li>OLE DB Provider for the ODBC driver for:
<ul>
<li>SQL</li>
<li>Server</li>
<li>Site Server Search</li>
<li>Internet Publishing</li>
<li>Jet 4.0 (Access 2000)</li>
<li>Oracle</li>
<li>Indexing Services (Index Server)</li>
<li>Microsoft Data Shaping Services</li>
<li>OLAP Services</li>
<li>DTS Packages</li>
<li>Microsoft Directory Services</li>
<li>Server DTS Flat File</li>
<li>OLE DB Simple Provider</li>
</ul></li>
<li>JRO 2.5</li>
<li>ODBC 3.51</li>
<li>an ODBC driver for
<ul>
<li>Microsoft Access</li>
<li>SQL Server</li>
<li>Microsoft Excel</li>
<li>Text</li>
<li>Visual FoxPro</li>
<li>FoxPro VFP</li>
<li>dBase</li>
<li>dBase VFP</li>
<li>Paradox</li>
<li>Oracle</li>
</ul></li>
<li>Jet drivers for:
<ul>
<li>Excel</li>
<li>Microsoft Exchange</li>
<li>Access</li>
<li>text files</li>
<li>Lotus 1-2-3</li>
<li>Paradox</li>
<li>xBase</li>
</ul></li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.6</p></td>
<td><p>2000年9月</p></td>
<td><ul>
<li>SQL Server 2000</li>
</ul></td>
<td><p>Not included (manually installed):</p>
<ul>
<li>Microsoft Jet</li>
<li>Microsoft Jet OLE DB Provider</li>
<li>ODBC Desktop Database Drivers</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.7</p></td>
<td><p>2001年10月</p></td>
<td><ul>
<li>Windows XP</li>
</ul></td>
<td><ul>
<li>支持64位系统</li>
</ul></td>
<td><ul>
<li></li>
<li></li>
<li></li>
<li></li>
</ul></td>
</tr>
<tr class="even">
<td><p>2.8</p></td>
<td><p>2003年8月</p></td>
<td><ul>
<li>Windows Server 2003</li>
</ul></td>
<td><p>bug修复</p></td>
<td><ul>
<li></li>
<li></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>2.8 SP1</p></td>
<td><p>2005年5月</p></td>
<td><ul>
<li>SQL Server 2000 SP4</li>
<li>Windows XP SP2</li>
</ul></td>
<td><p>bug修复</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.8 SP2</p></td>
<td><p>2005年3月</p></td>
<td><ul>
<li>Windows Server 2003 SP1</li>
<li>兼容支持MSJRO</li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>9.0</p></td>
<td><p>从未发布</p></td>
<td><ul>
<li>Visual Studio 2005 Beta 1</li>
<li>SQL Server 2005 Beta 1 [3]</li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Windows DAC 6.0</p></td>
<td><p>2006年11月</p></td>
<td><ul>
<li><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a></li>
</ul></td>
<td><ul>
<li>仅改变了版本号</li>
<li>难以兼容MSJRO</li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p>ADO 6.1</p></td>
<td><p>2011年10月</p></td>
<td><ul>
<li><a href="https://zh.wikipedia.org/wiki/Windows_7_SP1" title="wikilink">Windows 7 SP1</a></li>
</ul></td>
<td><ul>
<li>适用于此后版本操作系统</li>
</ul></td>
<td></td>
</tr>
</tbody>
</table>

## 架構

ADO包含12个对象：

  - 连接（Connection），代表到数据存储的一个通过[OLE DB的连接](../Page/OLE_DB.md "wikilink")。该对象的open方法以一个连接字符串作为参数，建立一个数据连接。连接字符串例子：`"Provider='SQLOLEDB';Data Source='TheSqlServerName'; Initial Catalog='Northwind';Integrated Security='SSPI';"`
  - 命令（Command），一个SQL语句可以直接发给OLE DB provider，通过CommandText属性。发送参数化查询或者存储过程通过Parameter对象或者Parameters集合。执行一个查询并返回结果作为数据集对象通过Execute方法。
  - 记录集（Recordset），代表数据记录的结果。包含了Fields与Properties两个集合。修改了其中的数据后，调用Update或UpdateBatch方法把改变后的数据提交给数据源。通过AddNew与Update、UpdateBatch方法，可以向数据源增加一条新的记录。通过Delete与Update方法，可以删除数据源的一条记录。CancelUpdate方法用于在Update失败时（如数据库的约束不能满足）显式强制地取消Update操作。修改数据源时有三种方法：
      - Immediate立即：调用Update方法会把数据立即修改到数据源中。记录集需要采用乐观锁（adLockOptimistic）或者悲观锁（adLockPessimistic）预先锁定。前者是在修改数据源时对记录加锁并检查是否保持了数据完整性；后者是在打开记录集时即把这部分数据上锁。
      - Batch批方式：使用批量乐观锁adLockBatchOptimistic，每次调用Update方法时仅在临时缓冲区中修改数据。最终调用UpdateBatch把修改数据写入数据源。在此之前，可以用UpdateCancel放弃在临时缓冲区中的修改。
      - Transaction事务：如果OLE DB provider支持事务操作，可以通过BeginTrans与CommitTrans方法来开始与提交事务。RollbackTrans用于取消事务，把数据库卷回到事务开始状态。
  - 记录（Record），代表数据库的一条记录。包含了Field集合。
  - 流（Stream），代表数据的顺序集合。主要用于RecordSet对象，用于读写字节流。常用于把recordset保存为XML格式，向OLE DB provider发送命令文本（替代CommandText对象）或者包含二进制或文本内容。
  - 错误（Error），代表数据库访问中OLE DB提供的错误
  - 字段（Field），代表一个数据库字段
  - 参数（Parameter），代表一个参数，用于SQL或存储过程。
  - 属性（Property），保存对象的信息
  - ImmediateThe recordset is locked using the adLockOptimistic or adLockPessimistic lock.
  - Batch：recordset使用adLockBatchOptimistic上锁。每次Update操作在一个临时buffer中修改数据。当UpdateBatch调用时数据才真正修改回数据库。调用UpdateCancel放弃临时buffer中数据。
  - Transaction：如果OLE DB允许事务操作，则BeginTrans、CommitTrans、RollbackTrans可调用

ADO包含4个collection：

  - Fields：包含了Field对象。
  - Properties：包含了Property对象。
  - Parameters：包含了Parameter对象。
  - Errors：被包含在一个Connection对象中。当ADO操作产生一个错误，Errors被清空，然后provider产生的错误作为Error对象保存到这个Errors集合中。

## 使用

ADO组件的使用需要利用支持COM的高级语言，例如[ASP中的](https://zh.wikipedia.org/wiki/ASP "wikilink")[VBScript](../Page/VBScript.md "wikilink")或者[Visual Basic](../Page/Visual_Basic.md "wikilink")，甚至微软的竞争对手[Borland](../Page/Borland.md "wikilink")的产品[Delphi](../Page/Delphi.md "wikilink")，，现在也支持使用ADO来访问数据库。

使用ADO存取資料的一些基本步驟：

1.  创建連接物件去連結資料庫（Create a connection object to connect to the database.）
2.  创建记录集物件來取得資料（Create a recordset object in order to receive data in.）
3.  打开連接（Open the connection）
4.  在记录集中完成SQL語法的描述（Populate the recordset by opening it and passing the desired table name or SQL statement as a parameter to *open* function.）
5.  对获取的数据进行搜索／处理操作。
6.  確定改變資料（Commit the changes you made to the data (if any) by using *Update* or *UpdateBatch* methods.）
7.  關閉记录集（Close the recordset）
8.  關閉連接（Close the connection）

## ASP範例

下列的ASP範例使用ADO於"Phonebook"表中選取"Name"欄位，其中"PhoneNumber"等於"555-5555"。

``` asp
dim myconnection, myrecordset, name
set myconnection = server.createobject("ADODB.Connection")
set myrecordset = server.createobject("ADODB.Recordset")

myconnection.open mydatasource
myrecordset.open "Phonebook", myconnection
myrecordset.find "PhoneNumber = '555-5555'"
name = myrecordset.fields.item("Name")
myrecordset.close

set myrecordset = nothing
set myconnection = nothing
```

這相當於下列的ASP code，以plain SQL取代Recordset object：

``` asp
dim myconnection, myrecordset, name
set myconnection = server.createobject("ADODB.connection")
myconnection.open mydatasource
set myrecordset = myconnection.execute("SELECT Name FROM Phonebook WHERE PhoneNumber = '555-5555'")
name = myrecordset(0)
```

## C语言例子

``` cpp
  AfxOleInit();//COM库的初始化
#import   "c:\program files\common files\system\ado\msado15.dll "   no_namespace   rename( "EOF ", "adoEOF ") //系统生成msado15.tlh,ado15.tli两个头文件来定义ADO库
  _ConnectionPtr   m_pConnection; //指向Connection对象的指针
  HRESULT   hr;
  hr   =   m_pConnection.CreateInstance( "ADODB.Connection ");///创建Connection对象
  if(SUCCEEDED(hr))
  {   //连接数据库：
      hr   =   m_pConnection-> Open( "Provider=Microsoft.Jet.OLEDB.4.0;Data   Source=test.mdb ", " ", " ",adModeUnknown); //未设置第二个参数UserID、第三个参数Password
  }
      //上面一句中连接字串中的Provider是针对ACCESS2000环境的，对于ACCESS97,需要改为:Provider=Microsoft.Jet.OLEDB.3.51;
       /*第四个参数Options可以取值为:
       adModeUnknown:缺省。当前的许可权未设置
        adModeRead:只读
        adModeWrite:只写
        adModeReadWrite:可以读写
        adModeShareDenyRead:阻止其它Connection对象以读权限打开连接
        adModeShareDenyWrite:阻止其它Connection对象以写权限打开连接
        adModeShareExclusive:阻止其它Connection对象打开连接
        adModeShareDenyNone:允许其它程序或对象以任何权限建立连接 */
```

## ADOX

ADO包含的对象能够创建、维护、删除给定数据源的记录。但是，创建与管理数据库及其所包含的对象，ADO就力有不逮了。为此，**ADOX**，即Microsoft ADO Ext. for DDL and Security，提供了这方面的功能，主要包括Data Definition Language(DDL)对象及安全管理。此外，[Jet数据库引擎的许多功能都是ADO与ADOX不具备的](https://zh.wikipedia.org/wiki/Microsoft_Jet_Database_Engine "wikilink")；**JRO**，即Microsoft Jet and Replication Objects 2.5 Library提供了这方面的补充功能。

| 功能                                                                | [DAO](https://zh.wikipedia.org/wiki/DAO "wikilink") | ADO | ADOX | JRO(MDB's Only) |
| ----------------------------------------------------------------- | --------------------------------------------------- | --- | ---- | --------------- |
| Create Recordsets                                                 | ✔                                                   | ✔   |      |                 |
| Edit Startup properties                                           | ✔                                                   | ✔   |      |                 |
| Support ANSI92 SQL                                                |                                                     | ✔   | ✔    |                 |
| Create Tables                                                     | ✔                                                   |     | ✔    |                 |
| Create New Database                                               | ✔                                                   |     | ✔    |                 |
| Edit Existing Table properties                                    | ✔                                                   |     | ✔    |                 |
| Create table relationships                                        | ✔                                                   |     | ✔    |                 |
| Edit security settings                                            | ✔                                                   |     | ✔    |                 |
| Support for Compression attribute for column data                 |                                                     |     | ✔    |                 |
| Edit stored, basic SQL queries or views                           | ✔                                                   |     | ✔    |                 |
| Create permanent queries that are accessible only through code.   |                                                     |     | ✔    |                 |
| Create queries accessible through database container/UI and code. | ✔                                                   |     |      |                 |
| Compact/Encode database                                           | ✔                                                   |     |      | ✔               |
| Refresh Cache                                                     | ✔                                                   |     |      | ✔               |
| Make Database Replicable                                          | ✔                                                   |     |      | ✔               |
| Make Database Replicas                                            | ✔                                                   |     |      | ✔               |
| Synchronize Replicas                                              | ✔                                                   |     |      | ✔               |
| Edit Database properties                                          | ✔                                                   |     |      |                 |
| Create custom database properties                                 | ✔                                                   |     |      |                 |
| Edit table column properties                                      | ✔                                                   |     |      |                 |

## 参考文献

## 外部链接

  - [微软ADO开发信息首页](https://web.archive.org/web/20050205070407/http://msdn.microsoft.com/library/en-us/ado270/htm/whats_new_ado.asp)

## 參見

  - [ADO.NET](../Page/ADO.NET.md "wikilink")

{{-}}

ㄍ

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")

1.  [MSDN KB283115: List of references that you must set when you work with Access 2002](https://support.microsoft.com/en-us/kb/283115)
2.  Microsoft Knowledge Base 2640696: An ADO-based application that is compiled in Windows 7 SP1 or Windows Server 2008 R2 SP1 does not run in earlier versions of Windows
3.  [Chapter 11 Changes](http://staff.develop.com/bobb/sql2005book/changes11.htm) , supplementary material to "A First Look at SQL Server 2005 for Developers" by Bob Beauchemin, Niels Berglund, and Dan Sullivan.