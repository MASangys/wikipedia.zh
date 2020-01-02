> 本文内容由[Entity Framework](https://zh.wikipedia.org/wiki/Entity_Framework)转换而来。


</ref> | latest preview version = | latest preview date =  | status = | programming language = [C\#](https://zh.wikipedia.org/wiki/C_Sharp_\(programming_language\) "wikilink") | operating system = | platform = [.NET Framework](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink") | size = | language = | language count = | language footnote = | genre = [物件關聯對應](https://zh.wikipedia.org/wiki/對象關係映射 "wikilink") (O/R Mapping) | license = [Apache License](https://zh.wikipedia.org/wiki/Apache_License "wikilink") | alexa = | website =  | standard = | AsOf = | logo_size = | logo_alt = }} **Entity Framework** (又稱ADO.NET Entity Framework) 是微軟以 ADO.NET 為基礎所發展出來的**[物件關聯對應](https://zh.wikipedia.org/wiki/對象關係映射 "wikilink") (O/R Mapping)** 解決方案，早期被稱為 ObjectSpace，現已經包含在 Visual Studio 2008 Service Pack 1 以及 .NET Framework 3.5 Service Pack 1 中發表。

ADO.NET Entity Framework 以 Entity Data Model (EDM) 為主，將資料邏輯層切分為三塊，分別為 Conceptual Schema, Mapping Schema 與 Storage Schema 三層，其上還有 Entity Client，Object Context 以及 [LINQ](https://zh.wikipedia.org/wiki/LINQ "wikilink") 可以使用。

## 背景

長久以來，程式設計師和資料庫總是保持著一種微妙的關係，在商用應用程式中，資料庫一定是不可或缺的元件，這讓程式設計師一定要為了連接與存取資料庫而去學習 [SQL](../Page/SQL.md "wikilink") 指令，因此在資訊業中有很多人都在研究如何將程式設計模型和資料庫整合在一起，[物件關聯對應](https://zh.wikipedia.org/wiki/對象關係映射 "wikilink") (Object-Relational Mapping) 的技術就是由此而生，像[Hibernate](../Page/Hibernate.md "wikilink")或[NHibernate](../Page/NHibernate.md "wikilink")都是這個技術下的產物，而微軟雖然有了[ADO.NET](../Page/ADO.NET.md "wikilink")這個資料存取的利器，但卻沒有像NHibernate這樣的物件對應工具，因此微軟在.NET Framework 2.0發展時期，就提出了一個ObjectSpace的概念，ObjectSpace可以讓應用程式可以用完全物件化的方法連接與存取資料庫，其技術概念與NHibernate相當類似，然而ObjectSpace工程相當大，在.NET Framework 2.0完成時仍無法全部完成，因此微軟將ObjectSpace納入下一版本的.NET Framework中，並且再加上一個設計的工具（Designer），構成了現在的 ADO.NET Entity Framework。

Entity Framework 利用了**抽象化**資料結構的方式，將每個資料庫物件都轉換成**應用程式物件** (entity)，而資料欄位都轉換為**屬性** (property)，關聯則轉換為**結合屬性** (association)，讓資料庫的 E/R 模型完全的轉成物件模型，如此讓程式設計師能用最熟悉的程式語言來呼叫存取。而在抽象化的結構之下，則是高度整合與對應結構的概念層、對應層和儲存層，以及支援 Entity Framework 的資料提供者 (provider)，讓資料存取的工作得以順利與完整的進行。

  - 概念層：負責向上的物件與屬性顯露與存取。
  - 對應層：將上方的概念層和底下的儲存層的資料結構對應在一起。
  - 儲存層：依不同資料庫與資料結構，而顯露出實體的資料結構體，和 Provider 一起，負責實際對資料庫的存取和 SQL 的產生。

## 架構

[ADO_NET_Entity_Framework_Architecture.png](https://zh.wikipedia.org/wiki/File:ADO_NET_Entity_Framework_Architecture.png "fig:ADO_NET_Entity_Framework_Architecture.png")

### 概念層結構

概念層結構定義了物件模型 (Object Model)，讓上層的應用程式碼可以如物件導向的方式般存取資料，概念層結構是由 CSDL (Conceptual Schema Definition Language) 所撰寫\[1\]。

一份概念層結構定義如下所示：

``` xml
<?xml version="1.0" encoding="utf-8"?>
<Schema Namespace="Employees" Alias="Self" ns="http://schemas.microsoft.com/ado/2006/04/edm">
  <EntityContainer Name="EmployeesContext">
    <EntitySet Name="Employees" EntityType="Employees.Employees" />
  </EntityContainer>
  <EntityType Name="Employees">
    <Key>
      <PropertyRef Name="EmployeeId" />
    </Key>
    <Property Name="EmployeeId" Type="Guid" Nullable="false" />
    <Property Name="LastName" Type="String" Nullable="false" />
    <Property Name="FirstName" Type="String" Nullable="false" />
    <Property Name="Email" Type="String" Nullable="false" />
  </EntityType>
</Schema>
```

### 對應層結構

對應層結構負責將上層的概念層結構以及下層的儲存體結構中的成員結合在一起，以確認資料的來源與流向。對應層結構是由 MSL (Mapping Specification Language) 所撰寫\[2\]。

一份對應層結構定義如下所示：

``` xml
<?xml version="1.0" encoding="utf-8"?>
<Mapping Space="C-S" ns="urn:schemas-microsoft-com:windows:storage:mapping:CS">

  <EntityContainerMapping StorageEntityContainer="dbo" CdmEntityContainer="EmployeesContext">
    <EntitySetMapping Name="Employees" StoreEntitySet="Employees" TypeName="Employees.Employees">

      <ScalarProperty Name="EmployeeId" ColumnName="EmployeeId" />
      <ScalarProperty Name="LastName" ColumnName="LastName" />
      <ScalarProperty Name="FirstName" ColumnName="FirstName" />
      <ScalarProperty Name="Email" ColumnName="Email" />

    </EntitySetMapping>
  </EntityContainerMapping>
</Mapping>
```

### 儲存層結構

儲存層結構是負責與[資料庫管理系統](https://zh.wikipedia.org/wiki/資料庫管理系統 "wikilink")（[DBMS](https://zh.wikipedia.org/wiki/DBMS "wikilink")）中的資料表做實體對應 (Physical Mapping)，讓資料可以輸入正確的資料來源中，或者由正確的資料來源取出。它是由 SSDL (Storage Schema Definition Language) 所撰寫\[3\]。

一份儲存層結構定義如下所示：

``` xml
<?xml version="1.0" encoding="utf-8"?>
<Schema Namespace="Employees.Store" Alias="Self"
    Provider="System.Data.SqlClient"
    ProviderManifestToken="2005"
    ns="http://schemas.microsoft.com/ado/2006/04/edm/ssdl">
  <EntityContainer Name="dbo">
    <EntitySet Name="Employees" EntityType="Employees.Store.Employees" />
  </EntityContainer>
  <EntityType Name="Employees">
    <Key>
      <PropertyRef Name="EmployeeId" />
    </Key>
    <Property Name="EmployeeId" Type="uniqueidentifier" Nullable="false" />
    <Property Name="LastName" Type="nvarchar" Nullable="false" MaxLength="50" />
    <Property Name="FirstName" Type="nvarchar" Nullable="false" />
    <Property Name="Email" Type="nvarchar" Nullable="false" />
  </EntityType>
</Schema>
```

## 查詢物件

ADO.NET 實體資料模型工具會產生從 ObjectContext (代表概念模型中所定義的實體容器) 衍生而來的類別。 ObjectContext 類別支援針對將實體當成物件傳回之概念模型進行查詢，也支援建立、更新和刪除實體物件。 Entity Framework 支援針對概念模型進行物件查詢。 這些查詢可以使用 Entity SQL 、Language-Integrated Query (LINQ) 和物件查詢產生器方法來撰寫。\[4\]

### Entity SQL

Entity Client 是 ADO.NET Entity Framework 中的原生用戶端 (Native Client)，它的物件模型和 ADO.NET 的其他用戶端非常相似，一樣有 Connection, Command, DataReader 等物件，但最大的差異就是，它有自己的 SQL 指令 (Entity SQL)，可以用 SQL 的方式存取 EDM，簡單的說，就是把 EDM 當成一個實體資料庫。

``` csharp
// Initialize the EntityConnectionStringBuilder.
EntityConnectionStringBuilder entityBuilder = new EntityConnectionStringBuilder();

// Set the provider name.
entityBuilder.Provider = providerName;

// Set the provider-specific connection string.
entityBuilder.ProviderConnectionString = providerString;

// Set the Metadata location.
entityBuilder.Metadata =  @"res://*/AdventureWorksModel.csdl|
                            res://*/AdventureWorksModel.ssdl|
                            res://*/AdventureWorksModel.msl";

Console.WriteLine(entityBuilder.ToString());

using (EntityConnection conn = new EntityConnection(entityBuilder.ToString()))
{
    conn.Open();
    Console.WriteLine("Just testing the connection.");
    conn.Close();
}
```

### LINQ to Entities

實作 IEnumerable<T> 泛型介面或 IQueryable<T> 泛型介面的資料來源可以透過 LINQ 進行查詢。 實作泛型 IQueryable<T> 介面之泛型 ObjectQuery<T> 類別的執行個體會當做 LINQ to Entities 查詢的資料來源。 ObjectQuery<T> 泛型類別表示傳回零個或多個具型別物件之集合的查詢。 使用 C\# 的 var 關鍵字 (在 Visual Basic 中為 Dim)，您也可以讓編譯器推斷實體類型。\[5\]

``` csharp
using (AdventureWorksEntities AWEntities = new AdventureWorksEntities())
{
    ObjectQuery<Product> products = AWEntities.Products;

    // LINQ Query syntax:
    IOrderedQueryable<Product> query =
        from product in products
        orderby product.Name, product.ListPrice descending
        select product;

    // LINQ Method syntax:
    IOrderedQueryable<Product> query = products
        .OrderBy(product => product.Name)
        .ThenByDescending(product => product.ListPrice);
}
```

### 查詢產生器方法

ObjectQuery 類別支援對概念模型進行 LINQ to Entities 和 Entity SQL 查詢。 ObjectQuery 也會實作一組查詢產生器方法，這些方法可用來循序建構與 Entity SQL 相等的查詢命令。由於 ObjectQuery 會實作 IQueryable 和 IEnumerable，所以將 ObjectQuery 所實作的查詢產生器方法結合 LINQ 特定的標準查詢運算子方法 (如 First 或 Count) 是可行的。 LINQ 運算子並不會傳回 ObjectQuery，與查詢產生器方法不同。\[6\]

``` csharp
// Get the contacts with the specified name.
ObjectQuery<Contact> contactQuery = context.Contact
    .Where("it.LastName = @ln AND it.FirstName = @fn",
    new ObjectParameter("ln", lastName),
    new ObjectParameter("fn", firstName));
```

## 開發工具

[ADONET_EntityDesigner.png](https://zh.wikipedia.org/wiki/File:ADONET_EntityDesigner.png "fig:ADONET_EntityDesigner.png")

目前 ADO.NET Entity Framework 的開發，在 [Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink") 2008 中有充分的支援，在安裝 Visual Studio 2008 Service Pack 1 後，檔案範本中即會出現 ADO.NET 實體資料模型 (ADO.NET Entity Data Model) 可讓開發人員利用 Entity Model Designer 來設計 EDM，EDM 亦可由Windows記事本等文字編輯器所編輯。

## 衍生服務

微軟特別針對了網路上各種不同的應用程式（例如 [AJAX](../Page/AJAX.md "wikilink")，[Silverlight](https://zh.wikipedia.org/wiki/Silverlight "wikilink")，[Mashup](https://zh.wikipedia.org/wiki/Mashup "wikilink") 應用程式）開發了一個基於 ADO.NET Entity Framework 之上的服務，稱為 [ADO.NET Data Services](https://zh.wikipedia.org/wiki/ADO.NET_Data_Services "wikilink")（專案代號為 **Astoria**），並與 ADO.NET Entity Framework 一起包裝在 .NET Framework 3.5 Service Pack 1 中發表。

## 支援廠商

目前已有數個資料庫廠商或元件開發商宣布要支援 ADO.NET Entity Framework\[7\]:

  - Mircosoft,支持MsSQL.
  - Core Lab，支援Oracle、MySQL、PostgreSQL 與 SQLite 資料庫。
  - IBM，實作 [DB2](../Page/IBM_DB2.md "wikilink") 使用的 LINQ Provider。
  - MySQL，發展 MySQL Server 所用的 Provider。
  - Npqsql，發展 PostgreSQL 所用的 Provider。
  - OpenLink Software，發展支援多種資料庫所用的 Provider。
  - Phoenix Software International，發展支援 SQLite 資料庫的 Provider。
  - Sybase，將支援 Anywhere 資料庫。
  - VistaDB Software，將支援 VistaDB 資料庫。
  - DataDirect Technologies，發展支援多種資料庫所用的 Provider。
  - Firebird，支援 Firebird 資料庫。

## 參考資料

<div class="references-small">

<references />

</div>

## 外部連結

  - [MSDN Library : ADO.NET Entity Framework](http://msdn.microsoft.com/en-us/library/bb399572.aspx)

  - [讀寫 ADO.NET Entity Framework](http://www.microsoft.com/taiwan/msdn/columns/jhu_ming_jhong/ADO.NET_Entity_Framework_Entity_Operation.htm)

  - [整合 ADO.NET Entity Framework 到應用程式中](http://www.microsoft.com/taiwan/msdn/columns/jhu_ming_jhong/ADO.NET_Entity_Framework_Integration_with_exist_applications.htm)

  - [首次接觸 ADO.NET Entity Framework](http://www.microsoft.com/taiwan/msdn/columns/jhu_ming_jhong/ADO.NET_Entity_Framework_A_First_look.htm)

  - [ADO.NET Entity Framework 概觀](http://www.microsoft.com/taiwan/msdn/columns/jhu_ming_jhong/ADO.NET_Entity_Framework_Overview.htm)

  - [Recent ADO.NET Entity Framework provider news - Demos and downloads](https://web.archive.org/web/20081224110354/http://blogs.msdn.com/adonet/archive/2008/05/06/recent-ado-net-entity-framework-provider-news-demos-and-downloads.aspx)

[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")

1.  [Schemas and Mappings Specification: CSDL](http://msdn.microsoft.com/en-us/library/bb399292.aspx)
2.  [Schemas and Mappings Specification: MSL](http://msdn.microsoft.com/en-us/library/bb399202.aspx)
3.  [Schemas and Mappings Specification: SSDL](http://msdn.microsoft.com/en-us/library/bb399559.aspx)
4.  \[<http://msdn.microsoft.com/zh-tw/library/bb399760(v=vs.100>).aspx 處理實體資料\]
5.  \[<http://msdn.microsoft.com/zh-tw/library/bb399367(v=vs.110>).aspx LINQ to Entities 中的查詢\]
6.  \[<http://msdn.microsoft.com/zh-tw/library/bb896238(v=vs.100>).aspx 查詢產生器方法 (Entity Framework)\]
7.  [Microsoft Simplifies Data-Centric Development in Heterogeneous IT Environments](http://www.microsoft.com/presspass/press/2007/dec07/12-06EntityBeta3PR.mspx)