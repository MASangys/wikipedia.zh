**ADO.NET**是微軟在[.NET Framework中負責](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")[資料存取](../Page/資料存取.md "wikilink")的類別庫集，它是使用在[COM時代奠基的](https://zh.wikipedia.org/wiki/COM "wikilink")[OLE DB技術以及](../Page/OLE_DB.md "wikilink")[.NET Framework的類別庫和程式語言來發展的](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，它可以讓.NET上的任何程式語言能夠連接並存取[關聯式資料庫與非資料庫型資料來源](https://zh.wikipedia.org/wiki/關聯式資料庫 "wikilink")（例如XML，Excel或是文字檔資料），或是獨立出來作為處理應用程式資料的類別物件，其在.NET Framework中的地位是舉足輕重，許多人將ADO.NET視為ADO的下一個版本，但其實它是一個全新的架構、產品與概念。

ADO.NET类封装在System.Data.dll中，并且与System.Xml.dll中的XML类集成。

## 历史

### 發展緣起

在1990年代初期，微軟已經開發了許多的資料存取方式，像是[ODBC](../Page/ODBC.md "wikilink")架構、和[Microsoft Access資料庫交互使用的](../Page/Microsoft_Access.md "wikilink")[DAO物件](https://zh.wikipedia.org/wiki/Microsoft_Data_Access_Object "wikilink")、可以跨越網路存取資料的[RDO以及讓DAO元件可以存取ODBC資料來源的](https://zh.wikipedia.org/wiki/Remote_Data_Object "wikilink")[ODBCDirect技術等等](https://zh.wikipedia.org/wiki/ODBCDirect "wikilink")，技術雖然多，但是卻又各自為政，而且每個技術的重疊性也很高（像是ODBC有Microsoft Access的驅動程式）；RDO雖然可跨網路，但是ODBC的驅動程式中也有提供跨網路的功能（像是[SQL Server和](https://zh.wikipedia.org/wiki/SQL_Server "wikilink")[Oracle驅動程式](https://zh.wikipedia.org/wiki/Oracle "wikilink")），如此琳琅滿目重疊性又高的技術群，讓企業與開發人員在選擇、學習與應用上產生了很多的困難。

1996年，適逢[COM的出现](https://zh.wikipedia.org/wiki/COM "wikilink")，微軟將資料存取的核心開始改寫為以COM為基础的[OLE DB](../Page/OLE_DB.md "wikilink")，並且在它上面建立一個新的统一的資料存取的高层对象模型－[ADO](../Page/ADO.md "wikilink")。ADO推出後順利的取代了DAO和RDO，成為在[Windows NT 4.0和](../Page/Windows_NT_4.0.md "wikilink")[Windows 2000作業系統上開發資料庫應用程式的首選](../Page/Windows_2000.md "wikilink")。它將[OLE DB的物件模型进一步简化](../Page/OLE_DB.md "wikilink")；由資料庫廠商开发满足[OLE DB接口的資料提供者](../Page/OLE_DB.md "wikilink")（data provider，這個模式在此時奠基），而ADO本身則是與資料來源無關（data source independent）的对象结构，讓它迅速的獲得了使用[ASP](https://zh.wikipedia.org/wiki/ASP "wikilink")、[Visual Basic](../Page/Visual_Basic.md "wikilink")、[COM的開發人員的青睞](https://zh.wikipedia.org/wiki/COM "wikilink")。它能夠順利取代DAO與RDO，要關鍵在于ADO的与数据库服务器端/客户端的特性无关，这使得ADO通用性极好。然而ADO本身的架構仍然有缺陷（尤其是在開發網路應用程式時，最好的例子就是Recordset無法離線），這也是微軟為何不在[.NET Framework中繼續使用ADO的主要原因](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")。

1998年時，微軟提出了一個下一代的應用程式開發框架（Application Framework）的計畫\[1\]，計畫中包含了：

  - **ASP+**：改良與重新設計ASP技術，強化它的Web應用程式發展能力。
  - **Storage+**：發展新的資料庫與物件導向之檔案系統結構（用於SQL Server 8.0（即後來的[SQL Server 2000](https://zh.wikipedia.org/wiki/SQL_Server_2000 "wikilink")）與[NTFS](../Page/NTFS.md "wikilink")），以及發展新一代的資料存取元件，並改良ADO本身的缺陷，讓它更能夠成為應用程式資料存取的核心功能。
  - **COM+**：改良COM和[MTS](https://zh.wikipedia.org/wiki/Microsoft_Transaction_Server "wikilink")，成為企業級應用程式開發的基礎元件。

ADO+即為Storage+的一支。

### ADO.NET的前身：ADO+

1998年起，因為[Web應用程式的竄起](https://zh.wikipedia.org/wiki/Web-based_Application "wikilink")，大大改變了許多應用程式的設計方式，傳統的資料庫連線保存設計法無法適用於此類應用程式，這讓ADO應用程式遇到了很大的瓶頸，也讓微軟開始思考讓資料集（Resultset，在ADO中稱為Recordset）能夠離線化的能力，以及能在用戶端建立一個小型資料庫的概念\[2\]，這個概念就是ADO.NET中離線型資料模型（disconnected data model）的基礎，而在ADO的使用情形來看，資料庫連線以及資源耗用的情形較嚴重（像是Server-side cursor或是Recordset.Open會保持連線狀態），在ADO.NET中也改良了這些物件，構成了能夠減少資料庫連線和資源使用量的功能。[XML](../Page/XML.md "wikilink")的使用也是這個版本的重要發展之一。

2000年，微軟的Microsoft .NET計畫開始成形，許多的微軟產品都冠上.NET的標籤，ADO+也不例外，改名為ADO.NET，並包裝到.NET Framework類別庫中，成為.NET平台中唯一的資料存取元件。

## 架構

ADO.NET由連線資料來源（connected data source）以及離線資料模型（disconnected data model）兩個部份構成\[3\]，這兩個部份是相輔相成的。

### 連線資料來源

若沒辦法連線到資料庫，則無法被稱為資料存取元件。連線資料來源便是用來連接資料庫（或是具有OLE DB資料來源提供者）的物件類別\[4\]，由下列接口構成：

  - **IDbConnection**，負責與資料庫的連線管理，包含連線字串（connection string），連線的開關，資料庫交易的啟始與連線錯誤的處理，所有的ADO.NET資料提供者都要實作此介面。
      - `Open()/Close()`：開啟與關閉資料庫連線。
      - `BeginTransaction()`：啟動資料庫交易，並回傳一個`IDbTransaction`物件，以控制交易的結果。
  - **IDbCommand**，負責執行資料庫指令（在大多數的案例中都是[SQL](../Page/SQL.md "wikilink")指令），並傳回由資料庫中擷取的結果集，或是執行不回傳結果集的資料庫指令。
      - `ExecuteNonQuery()`：執行不回傳結果集的資料庫指令，像是`INSERT`、`UPDATE`與`DELETE`指令，返回值为该命令所影响的行数。 对于其他所有类型的语句，返回值 为 -1。
      - `ExecuteScalar()`：執行指令並回傳第一列第一行中的值（object类型）。当没有数据时，ExcuteScalar方法返回System.DBNull。
      - `ExecuteReader()`：執行指令並回傳IDataReader物件，以讀取資料集中的資料。
      - `BeginExecuteNonQuery`：开始执行异步查询
      - `EndExecuteNonQuery`: 结束执行异步查询
  - **IDataParameter**，負責裝載資料庫指令所需要的參數資料，在使用[參數化查詢](../Page/參數化查詢.md "wikilink")時會經常使用。 对于不同的数据源来说，占位符不同。SQLServer数据源用@parametername格式来命名参数，OleDb以及Odbc数据源均用问号（?）来标识参数位置，而Oracle则以:parmname格式使用命名参数。
  - **IDbTransaction**，負責裝載資料庫交易所需的控制物件，以執行交易的認可（commit）或撤銷（rollback）的工作。
      - `Commit()`：認可資料庫交易。
      - `Rollback()`：撤銷資料庫交易。
  - **IDbDataAdapter**，負責將來自於IDbCommand執行取得的結果集，裝載到離線型資料集（DataSet）或是離線型資料表（DataTable）中。
      - `Fill()`：將資料填入離線型資料物件。
      - `Update()`：將變更過的離線型資料物件中的資料寫回資料庫。
  - **IDataReader**，建立一個只可向前讀取游標（forward-only）的資料讀取器工具，以逐列讀取方式存取資料，`IDbDataAdapter`內部也是由它來讀取資料。
      - `Read()`：第一次调用Read()方法获取第一行数据，并将游标指向下一行数据。当再次调用该方法时候，将读取下一行数据。当检测到不再有数据行时，Read()方法将返回`false`。
  - **IDataRecord**，在`IDataReader`讀取資料後實際裝載資料列的物件，提供方法來讀取資料行中的資料，以及轉換成.NET Framework原生型別的工具。
      - `GetOrdinal()`：取得指定資料行的欄位索引值。
      - `IsDBNull()`：判斷指定欄位的資料是否為[NULL值](https://zh.wikipedia.org/wiki/空值 "wikilink")。

使用連線資料來源需要由開發人員自我管理連線，並且直接操作資料存取的相關細節，但它的優點是速度快，而且可以自訂整個資料存取流程的邏輯。

### ADO.NET資料提供者(Data Provider)

在.NET Framework中，ADO.NET預設提供了四種資料來源：

  - SQL Server：由System.Data.SqlClient提供原生資料來源，是微軟官方建議存取SQL Server時建議使用的資料提供者。以Sql為字首的類別群
  - OLE DB Data Source：由System.Data.OleDb提供支援，可適用於OLE DB Provider for ODBC以外的OLE DB資料提供者。以OleDb為字首的類別群。支持本地事务和分布式事务。 对于分布式事务，默认情况下，用于 OLE DB 的 .NET Framework 数据提供程序会自动登记在事务中，并自动从 Windows 2000 组件服务获取事务详细信息。
  - Oracle：由System.Data.OracleClient提供支援，但使用者的電腦必須安裝Oracle Client 8.1.7或更新版本才行（.NET Framework 1.1開始支援）。以Oracle為字首的類別群。必须同时引用 System.Data和 System.Data.OracleClient。
  - ODBC：補OLE DB Provider for ODBC的支援，由System.Data.Odbc提供支援（.NET Framework 1.1開始支援）。以Odbc為字首的類別群
  - EntityClient实体数据模型(EDM)应用程序的数据访问。使用 System.Data.EntityClient 命名空间。

其他廠商亦為不同的資料庫提供資料來源：

  - [DataDirect Technologies](http://www.datadirect.com/products/net/index.ssp)發行100%列管提供源，支援主流企業數據庫（Oracle, Sybase, DB2, SQL Server, Progress RDBMS）
  - [OpenLink Software](https://archive.is/20040820120501/http://uda.openlinksw.com/ado.net/)給大量的客戶指定數據庫發行提供源，包括到其他資料存取機構的橋接提供源，並可以在視窗下微軟自己或者[Mono](../Page/Mono.md "wikilink")的CLR實做下支援。
  - [MySQL](http://dev.mysql.com/downloads/connector/net/5.1.html)為本身的MySQL Database Server提供了ADO.NET的原生資料提供者。
  - [Oracle](https://web.archive.org/web/20080516201531/http://www.oracle.com/technology/global/cn/tech/windows/odpnet/index.html)自行開發的.NET Data Provider。

对每种Data Provider，ADO.NET要实现下述对象结构：

  - Connection 对象提供与数据源的连接。
  - Command对象使您能够访问用于返回数据、修改数据、运行存储过程以及发送或检索参数信息的数据库命令。
  - DataReader 对象从数据源中提供快速的，只读的数据流。
  - DataAdapter 对象提供连接 DataSet 对象和数据源的桥梁。DataAdapter 使用 Command 对象在数据源中执行 SQL 命令，以便将数据加载到 DataSet 中，并使对 DataSet 中数据的更改与数据源保持一致。
  - Parameter 对象用于参数化查询。

例如，对于SQL Server数据源：

``` C#
strSQL = "SELECT * FROM users WHERE Name = @Name and Password = @Password";
SqlParamter[] paras = new SqlParamter[]{//参数数组
     new SqlParamter("@Name",SqlDBType.Varchar,50)
     new SqlParamter("@Password",SqlDBType.Varchar,50)};
paras[0].value = userName;//绑定用户名
paras[1].value = password;//绑定用户密码
```

  - ConnectionStringBuilder：提供一种用于创建和管理由 Connection 对象使用的连接字符串的内容的简单方法。 所有 ConnectionStringBuilder 对象的基类均为 DbConnectionStringBuilder 类。
  - CommandBuilder ：自动生成 DataAdapter 的命令属性或从存储过程中派生参数信息，并填充 Command 对象的 Parameters 集合。 所有 CommandBuilder 对象的基类均为 DbCommandBuilder 类。

### 離線資料模型

離線資料模型是微軟為了改良ADO在網路應用程式中的缺陷所設計的，同時它也是[COM+中](https://zh.wikipedia.org/wiki/微軟元件服務 "wikilink")，IMDB技術的設計概念的實作品，但它並沒有完整的IMDB功能，像是交易處理（transaction processing），但它仍不失為一個能在離線狀態下處理資料的好幫手，它也可以透過連線資料來源物件，支援將離線資料存回資料庫的能力\[5\]。離線資料模型由下列物件組成：

  - **DataSet**，離線型資料模型的核心之一，可將它當成一個離線型的資料庫，它可以內含許多個DataTable，並且利用關聯與限制方式來設定資料的完整性，它本身也提供了可以和XML交互作業的支援。
      - `ReadXml()/WriteXml()`：以DataSet的結構讀寫XML。
      - `ReadXmlSchema()/WriteXmlSchema()`：以DataSet的結構讀寫[XML Schema](../Page/XML_Schema.md "wikilink")。
      - `GetXml()/GetXmlSchema()`：取得DataSet內容的XML或XML Schema。
      - `Merge()`：合併兩個DataSet。
      - `Load()`：自`IDataReader`載入資料到DataSet。
      - `AcceptChanges()`：將修改過的資料列的修改旗標改為`Unchanged`。
      - `GetChanges()`：將修改過的資料列以DataRow陣列方式傳回。
      - `RejectChanges()`：撤銷所有資料的修改。
  - **DataTable**，離線型資料模型的核心之一，可將它當成一個離線型的資料表，是儲存資料的收納器。
      - `Copy()`：將DataTable複製出一個副本，包含結構與資料。
      - `Merge()`：將兩個DataTable合併。
      - `Select()`：以指定的特殊查詢語法，傳回符合條件的DataRow陣列。
      - `Compute()`：以指定的彙總語法，傳回彙總的結果。
      - `GetErrors()`：傳回有錯誤的DataRow陣列。
      - `HasErrors`：判斷DataTable中的DataRow有沒有含有錯誤的DataRow。
  - **DataRow**，表示表格中的資料列，與資料欄組合成資料儲存的單元。
      - `IsNull()`：判斷指定的欄位是否為NULL值。
      - `ItemArray`：將DataRow中的資料轉換成陣列。
  - **DataColumn**，表示表格中的欄位。
  - **DataView**，展示資料的輔助元件，類似於資料庫中的[檢視表](https://zh.wikipedia.org/wiki/視圖 "wikilink")，並可設定過濾條件與排序條件。
      - `Filter`：設定DataView的過濾條件。
      - `Sort`：設定DataView的排序條件。
      - `ToTable()`：將套用過濾與排序後的內容轉換為DataTable物件。
  - **DataRelation**，可在DataTable之間設定欄位間的關聯。
  - **Constraint**，設定欄位的條件約束，例如`ForeignKeyConstraint`為外部鍵限制，而`UniqueConstraint`則確保了欄位中的值都是唯一的。

DataSet和DataTable除了資料庫的處理以外，也經常被用來管理應用程式中的資料，並且由於它可以儲存在XML中的特性，也讓它可以用來儲存需要保存的應用程式資訊。DataSet中可包含DataRelation对象，用于建构表之间的约束关系。

## 工廠方法

在.NET Framework 1.x的時代，ADO.NET不同的來源有不同的類別搭配（前面已述及），但是若想要在不同的資料來源間搭配，那麼勢必要產生很多的變數來存放不同的資料物件，因此微軟在.NET Framework 2.0中提供了一個`System.Data.Common`命名空間，其中有各種必要物件的共用方法（例如連線是`DbConnection`，命令是`DbCommand`，讀取器是`DbDataReader`，資料配接器是`DbDataAdapter`等），以及`DbProviderFactory`物件，用來總管資料存取的物件。

`DbProviderFactories`則是電腦中所有提供者的總管，開發人員可用`DbProviderFactories.GetFactoryClasses()`取得各個提供者的Invariant Name，再於呼叫`DbProviderFactories.GetFactory()`時傳入指定提供者的Invariant Name即可取得`DbProviderFactory`，再利用下列方法取得共用物件：

  - `DbProviderFactory.CreateConnection()`
  - `DbProviderFactory.CreateCommand()`
  - `DbProviderFactory.CreateParameter()`
  - `DbProviderFactory.CreateDataAdapter()`

<!-- end list -->

``` csharp
// This example assumes a reference to System.Data.Common.
static DataTable GetProviderFactoryClasses()
{
    // Retrieve the installed providers and factories.
    DataTable table = DbProviderFactories.GetFactoryClasses();

    // Display each row and column value.
    foreach（DataRow row in table.Rows）
    {
        foreach(DataColumn column in table.Columns)
        {
            Console.WriteLine(row[column]);
        }
    }
    return table;
}
```

## XML的整合

XML在ADO.NET中扮演了相當重要的地位，DataSet和DataTable都可以轉換成XML或和XML之間交換資料，在DataTable的內部資料的變更記錄，可以被輸出到一個XML的格式，用來識別變更的情形，這個格式稱為DiffGram，而且它可以直接讀入DataTable之中（使用DataTable.ReadXml（）並用XmlReadMode.DiffGram當參數）。一個典型的DiffGram如下：

``` xml
<diffgr:diffgram xmlns:msdata="urn:schemas-microsoft-com:xml-msdata" xmlns:diffgr="urn:schemas-microsoft-com:xml-diffgram-v1">
  <CustomerDataSet>
    <Customers diffgr:id="Customers1" msdata:rowOrder="0" diffgr:hasChanges="modified">
      <CustomerID>ALFKI</CustomerID>
      <CompanyName>New Company</CompanyName>
    </Customers>
    <Customers diffgr:id="Customers2" msdata:rowOrder="1" diffgram:hasErrors="true">
      <CustomerID>ANATR</CustomerID>
      <CompanyName>Ana Trujillo Emparedados y Helados</CompanyName>
    </Customers>
    <Customers diffgr:id="Customers3" msdata:rowOrder="2">
      <CustomerID>ANTON</CustomerID>
      <CompanyName>Antonio Moreno Taquera</CompanyName>
    </Customers>
    <Customers diffgr:id="Customers4" msdata:rowOrder="3">
      <CustomerID>AROUT</CustomerID>
      <CompanyName>Around the Horn</CompanyName>
    </Customers>
  </CustomerDataSet>
  <diffgr:before>
    <Customers diffgr:id="Customers1" msdata:rowOrder="0">
      <CustomerID>ALFKI</CustomerID>
      <CompanyName>Alfreds Futterkiste</CompanyName>
    </Customers>
  </diffgr:before>
  <diffgr:errors>
    <Customers diffgr:id="Customers2" diffgr:Error="An optimistic concurrency violation has occurred for this row."/>
  </diffgr:errors>
</diffgr:diffgram>
```

DataSet與DataTable也支援直接讀入XML Schema建立結構的能力，以及自行依XML的內容推斷（inference）其結構的能力，下列程式碼為由XML推斷結構的程式：

``` csharp
DataSet dataSet = new DataSet();
dataSet.InferXmlSchema（"input_od.xml", new string[] "urn:schemas-microsoft-com:officedata"）;
```

DataSet和DataTable可以使用XmlDataDocument類別和XML DOM整合在一起，XmlDataDocument的角色就像一個橋接介面，並且作為DataSet和DataTable可使用[XPath](../Page/XPath.md "wikilink")與XML DOM方式存取的方法。下列程式碼即為使用XmlDataDocument和資料庫中資料轉換為[XSLT](../Page/XSLT.md "wikilink")輸出的範例：

``` csharp
// Assumes connection is a valid SqlConnection.
connection.Open();

DataSet custDS = new DataSet("CustomerDataSet");

SqlDataAdapter customerAdapter = new SqlDataAdapter(
  "SELECT * FROM Customers", connection);
customerAdapter.Fill(custDS, "Customers");

SqlDataAdapter orderAdapter = new SqlDataAdapter(
  "SELECT * FROM Orders", connection);
orderAdapter.Fill(custDS, "Orders");

connection.Close();

custDS.Relations.Add("CustOrders",
  custDS.Tables["Customers"].Columns["CustomerID"]，
                     custDS.Tables["Orders"].Columns["CustomerID"]).Nested = true;

XmlDataDocument xmlDoc = new XmlDataDocument (custDS);

XslTransform xslTran = new XslTransform();
xslTran.Load（"transform.xsl"）;

XmlTextWriter writer = new XmlTextWriter("xslt_output.html",
  System.Text.Encoding.UTF8);

xslTran.Transform(xmlDoc, null, writer);
writer.Close();
```

在.NET Framework中，DataSet被分為兩類，一種是不會強制使用特別型態的DataSet，稱為Untyped DataSet，使用上較方便，但沒有強制的型別限制，另一種則是Typed DataSet，會強制型別，並且是由自訂的XML Schema所產生，Untyped DataSet則沒有XML Schema，由建立時的結構來決定，Typed DataSet可以用[Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")，或者是SDK工具中的xsd.exe來產生。

``` text
xsd.exe /d /l:CS XSDSchemaFileName.xsd /eld /n:XSDSchema.Namespace
```

產生出來的Typed DataSet會自動將欄位設定成屬性，讓開發人員的存取更方便（這個功能在TableAdapter相當常見）。

``` csharp
CustomerDataSet customers = new CustomerDataSet();
SqlDataAdapter adapter = new SqlDataAdapter(
  "SELECT * FROM dbo.Customers;",
  "Data Source=(local);Integrated " +
  "Security=SSPI;Initial Catalog=Northwind");

adapter.Fill(customers, "Customers");

foreach(CustomerDataSet.CustomersRow customerRow in customers.Customers)
  Console.WriteLine(customerRow.CustomerID);
```

## 指令產生器

ADO.NET中有專門用來產生資料處理指令的指令產生器（Command Builder），它可以利用開發人員所指定的`SELECT`指令，自動產生對應的`INSERT`、`UPDATE`與`DELETE`指令，但一開始它並不會自動產生，而是要靠呼叫方法來取得：

  - `DbCommandBuilder.GetInsertCommand()`
  - `DbCommandBuilder.GetUpdateCommand()`
  - `DbCommandBuilder.GetDeleteCommand()`

最常使用到的地方是和DataAdapter並用時，但它要求傳入的`SELECT`语句所选择的列集合中必須要有[主键或者](https://zh.wikipedia.org/wiki/主键 "wikilink")[唯一键](https://zh.wikipedia.org/wiki/唯一键 "wikilink")\[6\]，否則無法產生，同時自動產生的指令因為判斷條件很多，對效能可能會有些影响。

## Visual Studio的支援

ADO.NET和Visual Studio開發工具幾乎已經是無縫的整合了，開發人員可以利用Visual Studio來建立強型別（strong-typed）的DataSet，到了Visual Studio 2005時更能夠在[Windows Forms應用程式中使用TableAdapter](../Page/Windows_Forms.md "wikilink")（Typed DataSet和DataAdapter整合的產物）來開發應用程式（不會再看到DataAdapter，但使用上差不多）\[7\]。Visual Studio在建立Typed DataSet時有提供視覺化介面的支援，以及資料庫組態精靈（Database Configuration Wizard）來讓開發人員以簡單的設定方式來建立DataSet，部分開發人員也將TableAdapter和ASP.NET應用程式的ObjectDataSource控制項並用，亦得到不錯的效果。

在.NET Framework 3.5中，微軟特別為了DataSet和DataTable建立了[LINQ](https://zh.wikipedia.org/wiki/LINQ "wikilink") Provider（稱為LINQ to DataSet或LINQ to ADO.NET），讓LINQ可以在DataSet或DataTable上使用，可以讓原本在DataSet上的投資（程式碼）得以繼續使用並享有LINQ的便利性。

## ADO.NET和ADO的差異

對於ADO的開發人員來說，最明顯的變化在於以往ADO中的Recordset消失了，並且明確的分開為連線型的DataReader以及離線型的DataSet與DataTable，並且發展支援離線型資料來源的瀏覽工具DataView\[8\]，這樣的改變，讓習慣使用ADO的VB/ASP開發人員會有某種程度的不習慣，同時讓ADO.NET的學習會較ADO有較些許的複雜性，因此有部分新入門或是VB 6.0/ASP開發人員會在學習.NET Framework或是使用VB.NET開發應用程式時，在.NET Framework中使用ADO來連接資料來源。但在.NET Framework應用程式使用ADO的話，.NET Framework會因為要多一層ADO的COM与VB.NET使用的.NET之間的資料轉換，會讓應用程式效能有少部分的損耗\[9\]。

下述示例，用ADO读取一个数据库中的表格，然后转为ADO.Net的数据，最后绑定到[DataGridView控件中去显示](https://zh.wikipedia.org/wiki/DataGridView "wikilink")：

``` vbnet
        Dim cn As ADODB.Connection
        Dim rs As ADODB.Recordset
        cn = New ADODB.Connection
        rs = New ADODB.Recordset
        cn.Provider = "Microsoft.ACE.OLEDB.12.0;"
        cn.ConnectionString = "D:\\budget2016.accdb;"
        cn.Open()

        'check whether the serial num exists in table cutter
        Dim sSQL As String = "SELECT * FROM tPassword"
        rs.CursorLocation = ADODB.CursorLocationEnum.adUseClient
        rs.Open(sSQL, cn, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockReadOnly,_
                 ADODB.CommandTypeEnum.adCmdText)

        Dim da As New System.Data.OleDb.OleDbDataAdapter()
        Dim ds As New DataSet()
        da.Fill(ds, rs, "tPassword")

        'rs.Close()  'Cannot close
        rs.ActiveConnection = Nothing
        cn.Close()
        rs = Nothing
        cn = Nothing

        DataGridView1.DataSource = (ds.Tables("tPassword"))
```

ADO的RecordSet，相当于在客户机或服务器的一个逻辑上的数据表格，使用者可以通过cursor来定位/读写当前行，但不能重新对这些行重新排序，也不能对客户机上的多个RecordSet数据执行跨表的连接（join）查询。ADO.Net针对上述缺点，在客户机上实现了DataTable与DataSet，这是客户机内存中的一套（多个）数据表格，可以对其执行各种单表或多表的查询、修改、删除操作，既可以使用SQL语句，也可以使用LINQ子语言。

ADO与ADO.Net的共同点，在其内部都是使用SQL语句来对后台数据库操作。

内在实现上，ADO是基于COM技术，因此变体类型（Variant）无处不在，这是一种通用、万能类型；而ADO.Net是强类型的，并很好地支持数据库元数据与XML功能。

## ADO.NET的進化

隨著網路應用程式的進化，ADO.NET也隨之做了許多的改變，但不變的是，ADO.NET的基礎提供了強固的發展支援，這些進化的技術都是植基於ADO.NET的核心元件而來。

長久以來，程式設計師和資料庫總是保持著一種微妙的關係，在商用應用程式中，資料庫一定是不可或缺的元件，這讓程式設計師一定要為了連接與存取資料庫而去學習SQL指令，因此在資訊業中有很多人都在研究如何將程式設計模型和資料庫整合在一起，物件關聯對應（Object-Relational Mapping）的技術就是由此而生，像[Hibernate](../Page/Hibernate.md "wikilink")或NHibernate都是這個技術下的產物，而微軟雖然有了ADO.NET這個資料存取的利器，但卻沒有像NHibernate這樣的物件對應工具，因此微軟在.NET Framework 2.0發展時期，就提出了一個ObjectSpace的概念，ObjectSpace可以讓應用程式可以用完全物件化的方法連接與存取資料庫，其技術概念與NHibernate相當類似，然而ObjectSpace專案相當大，在.NET Framework 2.0完成時仍無法全部完成\[10\]，因此微軟將ObjectSpace納入下一版本的.NET Framework中，並且再加上一個設計的工具（Designer），構成了現在的ADO.NET Entity Framework。

Entity Framework利用了抽象化資料結構的方式，將每個資料庫物件都轉換成應用程式物件（entity），而資料欄位都轉換為屬性（property），關聯則轉換為結合屬性（association），讓資料庫的E/R模型完全的轉成物件模型，如此讓程式設計師能用最熟悉的程式語言來呼叫存取。而在抽象化的結構之下，則是高度整合與對應結構的概念層、對應層和儲存層，以及支援Entity Framework的資料提供者（provider），讓資料存取的工作得以順利與完整的進行。

以往在發展像是AJAX應用程式時，伺服端總是需要設計一個HTTP介面埠（end point），通常都會使用Web Service來實作，但是隨著Mashup應用程式的成長，若每次都要為一份（或一組）資料撰寫Web Service或HTTP end point的話，對開發人員也是不小的負擔，而且Web Service只支援XML/SOAP的資料格式，無法相容於Mashup應用程式常用的JSON資料格式，微軟也發現未來的Silverlight應用程式也是會面臨到相同問題。

當時剛好微軟的ADO.NET Entity Framework也正在開發中，它的EDM能力剛好可以提供給WCF資料存取的能力，因此微軟特別以ADO.NET Entity Framework為基礎，開發一個專門提供HTTP端點資料服務的資料供應層，即為WCF Data Services。

## 注释

## 参考文献

## 参见

  - [ActiveX Data Objects](../Page/ADO.md "wikilink")（ADO）
  - [Open Database Connectivity](../Page/ODBC.md "wikilink")（ODBC）
  - [OLE DB](../Page/OLE_DB.md "wikilink")

{{-}}

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:计算机编程](https://zh.wikipedia.org/wiki/Category:计算机编程 "wikilink") [Category:数据管理](https://zh.wikipedia.org/wiki/Category:数据管理 "wikilink") [Category:计算机程序库](https://zh.wikipedia.org/wiki/Category:计算机程序库 "wikilink") [Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink") [Category:数据库API](https://zh.wikipedia.org/wiki/Category:数据库API "wikilink")

1.  [COM+, A Windows 2000 technology showcase](http://www.winsupersite.com/showcase/win2k_complus.asp)
2.  [ADO+](http://www.developerfusion.com/article/56/ado/)
3.  [ADO.NET架構](http://msdn.microsoft.com/zh-tw/library/27y4ybxw.aspx)
4.  [擷取和修改ADO.NET中的資料](http://msdn.microsoft.com/zh-tw/library/ms254937.aspx)
5.  [DataSet、DataTable及DataView（ADO.NET）](http://msdn.microsoft.com/zh-tw/library/ss7fbaez.aspx)
6.  [.NET Framework开发人员指南 - 使用CommandBuilder生成命令（ADO.NET）](http://msdn.microsoft.com/zh-cn/library/tf579hcz.aspx)
7.  [TableAdapter](http://msdn.microsoft.com/zh-tw/library/7zt3ycf2.aspx)
8.  [ADO.NET ─ ADO開發人員指引](http://www.microsoft.com/taiwan/msdn/library/2003/Jul-2003-tw/adonetprogmsdn.htm)
9.  [Revisiting the Use of ADO in .NET Applications](http://msdn.microsoft.com/en-us/library/ms810295.aspx)
10. [A First Look at ObjectSpaces in Visual Studio 2005](http://msdn.microsoft.com/en-us/library/ms971512.aspx)