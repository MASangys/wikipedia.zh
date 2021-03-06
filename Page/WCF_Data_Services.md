> 本文内容由[WCF Data Services](https://zh.wikipedia.org/wiki/WCF_Data_Services)转换而来。


[ADO_NET_DSF.png](https://zh.wikipedia.org/wiki/File:ADO_NET_DSF.png "fig:ADO_NET_DSF.png") **WCF Data Services**，舊稱**ADO.NET Data Services Framework**（代號**Astoria**，以下簡稱**WCF DS**）是基於 [ADO.NET Entity Framework](https://zh.wikipedia.org/wiki/ADO.NET_Entity_Framework "wikilink") 上的一個簡單**資料供應服務** (Data Provisioning Services)，也是微軟的 [REST](https://zh.wikipedia.org/wiki/REST "wikilink") (Representational state transfer) 的解決方案之一。特別為 [AJAX](../Page/AJAX.md "wikilink")，[Silverlight以及](https://zh.wikipedia.org/wiki/Silverlight "wikilink")[Mashup應用程式提供資料服務所設計](https://zh.wikipedia.org/wiki/Mashup "wikilink")。

目前 ADO.NET DSF 已經內含於 .NET Framework 3.5 Service Pack 1 中。

## 發展背景

以往在發展像是 AJAX 應用程式時，伺服端總是需要設計一個 HTTP 介面端口 (end point)，通常都會使用 [Web Service](https://zh.wikipedia.org/wiki/Web_Service "wikilink") 來實作，但是隨著 [Mashup](https://zh.wikipedia.org/wiki/Mashup "wikilink") 應用程式的成長，若每次都要為一份（或一組）資料撰寫 Web Service 或 HTTP end point 的話，對開發人員也是不小的負擔，而且 Web Service 只支援 XML/SOAP 的資料格式，無法相容於 Mashup 應用程式常用的 [JSON](../Page/JSON.md "wikilink") 資料格式，微軟也發現未來的 Silverlight 應用程式也是會面臨到相同問題。

當時剛好微軟的 [ADO.NET Entity Framework](https://zh.wikipedia.org/wiki/ADO.NET_Entity_Framework "wikilink") 也正在開發中，它的 EDM 能力剛好可以提供給 [WCF](https://zh.wikipedia.org/wiki/WCF "wikilink") 資料存取的能力，因此微軟特別以 ADO.NET Entity Framework 為基礎，開發一個專門提供 HTTP 端點資料服務的資料供應層，即為 WCF DS。

## 架構

WCF DS 由 [Entity Framework](https://zh.wikipedia.org/wiki/ADO.NET_Entity_Framework "wikilink") 中的 Entity Data Model (EDM) 為基底，Data Services Framework 的角色就是做為 EDM 的 HTTP 出入口，開發人員可以利用 HTTP 動詞來存取 Data Services Framework，某種程度來說，WCF DS 是由 EDM + WCF 而成的一種資料供應服務，它可以被放在 WCF HTTP 通道，ASP.NET 以及 IIS 中。

WCF DS 的資料來源，可以是 ADO.NET Entity Framework，但如果是來自於其他的資料來源，則可以利用為該資料來源所實作的 [LINQ](https://zh.wikipedia.org/wiki/LINQ "wikilink") Provider（有實作 IQueryable<T> 介面的元件，若要支援更新則必須要再實作 IUpdatable 介面）來做為資料來源亦可。

WCF DS 除了可以將 Entity 公開到 HTTP 通道中，也可以由開發人員自行發展具商業邏輯的自訂函數來回傳資料，以及利用查詢的解譯器 (Query Interceptor) 來將查詢 Entity 的資料做過濾後再回傳。

## 存取方法

WCF DS 開放 EDM 在 HTTP 通道中，因此存取方法都要使用 HTTP 方式，GET/POST/PUT/DELETE 都可以使用，而且每個動詞所代表的意義都不同。

  - GET：查詢資料。
  - PUT：更新資料，必須要和 GET 並用，由 GET 抓下資料修改後，用 PUT 更新。
  - POST：新增資料。
  - DELETE：刪除資料。

除了使用 HTTP 動詞以外，WCF DS 另提供了 .NET Client Library 讓 .NET Framework 應用程式可以存取，它也提供了讓 LINQ 可以存取到 WCF DS 的能力（即 LINQ to WCF DS）。

下列為使用 LINQ to WCF DS 的範例：

``` csharp
using System;
using System.Data.Services.Client;
using System.Linq;
using NorthwindModel;

namespace TestApplication
{
    class Program
    {
        static void Main(string[] args)
        {
            NorthwindEntities ctx = new NorthwindEntities(new Uri("http://localhost:1365/Northwind.svc"));

            var q = from c in ctx.Customers
                    where c.City == "London"
                    orderby c.CompanyName
                    select c;

            foreach (var cust in q)
            {
                Console.WriteLine(cust.CompanyName);
            }
        }
    }
}
```

若是使用[Silverlight](https://zh.wikipedia.org/wiki/Silverlight "wikilink") 2.0開發，則可以使用 .NET Client Library for Silverlight 2.0 來簡化設計，如下：

``` csharp
NorthwindEntities db = new NorthwindEntities(new Uri("http://localhost/NorthwindDataServices.svc/"));

var query = from c in db.Employees
            select c;

AsyncCallback ac = asyncResult =>
    {
        var queryResult = (query as DataServiceQuery<NorthwindModel.Employees>).EndExecute(asyncResult);

        foreach (var result in queryResult)
        {
            TextBlock item = new TextBlock();
            item.Tag = result.EmployeeID;
            item.Text = result.FirstName + " " + result.LastName;
            this.lstEmployeeList.Items.Add(item);
        }
    };

(query as DataServiceQuery<NorthwindModel.Employees>).BeginExecute(ac, null);
```

## 資料格式

在 WCF DS 中，可支援 [JSON](../Page/JSON.md "wikilink") (JavaScript Object Notation) 以及 [ATOM](https://zh.wikipedia.org/wiki/ATOM "wikilink") 兩種資料格式，因此可適用於多數的 [Mashup](https://zh.wikipedia.org/wiki/Mashup "wikilink") 或 [AJAX](../Page/AJAX.md "wikilink") 應用程式。

## 參考資料

<div class="references-small">

  - [MSDN Library: ADO.NET Data Services Framework](http://msdn.microsoft.com/en-us/library/cc668792.aspx)

</div>

[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")