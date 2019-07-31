**ASP.NET MVC Framework**是微軟在[ASP.NET](../Page/ASP.NET.md "wikilink")中所添加的一組類別庫，這組類別庫可以使用[Model-View-Controller的](../Page/MVC.md "wikilink")[設計模式來開發ASP](https://zh.wikipedia.org/wiki/软件设计模式 "wikilink").NET的應用程式。它與現有的ASP.NET應用程式並沒有衝突，所以兩者是可以並行的。ASP.NET MVC Framework被包裝在System.Web.Mvc.dll中，並利用[ASP.NET Routing來支援動作流以及](https://zh.wikipedia.org/wiki/ASP.NET_Routing "wikilink")[URL Rewriting的能力](https://zh.wikipedia.org/wiki/URL_Rewriting "wikilink")，讓它可以更貼近Web的發展以及Web 2.0的特性。對於多數有[ASP開發經驗的開發人員來說看起來比較不陌生](https://zh.wikipedia.org/wiki/ASP "wikilink")，但對於沒有接觸過像ASP、[PHP](../Page/PHP.md "wikilink")、[JSP](../Page/JSP.md "wikilink")、[Perl](../Page/Perl.md "wikilink")這些Web開發工具的開發人員來說，相對的不容易入門。ASP.NET MVC 的第一個版本於2009年3月17日釋出RTM版本，最新的ASP.NET MVC 5.2則是於2014年12月24日正式發行。

微軟於 ASP.NET Core 中提出下一代的 MVC 框架，稱為 [ASP.NET Core MVC](../Page/ASP.NET_Core_MVC.md "wikilink")。

## 原理

ASP.NET MVC是遵循[軟體模式的Model](https://zh.wikipedia.org/wiki/軟體 "wikilink")-View-Controller來發展，其中Model指的是資料或是业务邏輯元件，View是呈現給使用者看的[資訊](https://zh.wikipedia.org/wiki/資訊 "wikilink")，而Controller則是接取來自使用者的指令與資料，並將Model與View做整合的[控制器](https://zh.wikipedia.org/wiki/控制器 "wikilink")，當[伺服器接到對ASP](https://zh.wikipedia.org/wiki/伺服器 "wikilink").NET MVC[應用程式的要求時](https://zh.wikipedia.org/wiki/應用程式 "wikilink")，伺服器（IIS）會先使用UrlRoutingModule(ASP.NET Routing的 [HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink") 模組)，由它來解析是否有包含ASP.NET MVC應用程式的URL，若有，則會產生一個**MvcRouteHandler**物件，這個物件會裝載執行的必要資訊，並且會呼叫包含在[URL中的Controller的Execute方法來執行工作](https://zh.wikipedia.org/wiki/URL "wikilink")\[1\]。

**Controller**物件是基於`IController`介面的規則所定義，提供針對HTTP要求做回應的一個執行工具，在ASP.NET MVC中已實作一個預設的類別 Controller，提供了必要的基礎功能，另外也發展了一個 Controller 工廠，稱為 [Controller Factory](https://zh.wikipedia.org/wiki/Controller_Factory "wikilink")，以`IControllerFactory`介面定義，亦提供了**DefaultControllerFactory**，開發人員可以利用基本的類別以及利用它們來衍生自己的 Controller 或 Controller Factory 來實作自己的控制器邏輯功能。

**Model**物件則是為ASP.NET MVC提供資料，不過它沒有基礎類別，而是使用.NET Framework一般性的資料結構或是現在的[ADO.NET](../Page/ADO.NET.md "wikilink")資料物件，像是List、Dictionary、DataTable、DataReader與DataSet等等，當然也可以是自己開發的商業物件，這些資料會透過ASP.NET MVC的**ModelBinder**工具類別來與Controller整合，ModelBinder本身是支援泛型(Generic)的，因為各種型別的資料它都可以使用。在ASP.NET MVC中提供了一個**DefaultModelBinder**物件，可支援大多數的.NET Framework資料型別，以及[陣列和已實作像是IList](https://zh.wikipedia.org/wiki/陣列 "wikilink")、IDictionary以及ICollection等介面的物件\[2\]。

Model會在Controller執行動作時，作為一個ActionResult物件方式傳回給MvcHandler物件，而這個物件即會指定要顯示的View物件，像是下列程式碼所示：

``` csharp numberLines
using System.Linq;
using System.Web.Mvc;
using System.Web;
using System;

    // GET: /Person/
    public ActionResult Index()
    {
        return View(people);
    }

    // GET: /Person/Details/5
    public ActionResult Details(Person person)
    {
        return View(person);
    }

    // GET: /Person/Create
    public ActionResult Create()
    {
        return View();
    }

    // POST: /Person/Create
    [AcceptVerbs(HttpVerbs.Post)]
    public ActionResult Create(Person person)
    {
        if (!ModelState.IsValid)
        {
            return View("Create", person);
        }

        people.Add(person);

        return RedirectToAction("Index");
    }
```



``` vb numberLines
Public Class HomeController
    Inherits System.Web.Mvc.Controller

    'GET: /Person/
    Function Index() As ActionResult
        Return View(people)
    End Function

    'GET: /Person/Details/5
    Function Details(Person person) As ActionResult
        Return View(person)
    End Function

    'GET: /Person/Create
    Function Create() As ActionResult
        Return View()
    End Function

    'POST: /Person/Create
    <AcceptVerbs(HttpVerbs.Post)>
    Function Contact() As ActionResult
        If ModelState.IsValid Then
            Return View("Create", person)
        Else
            people.Add(person)
            Return RedirectToAction("Index")
        End If
    End Function

End Class
```

**View**物件以`IView`與`IViewDataContainer`等介面為主，並且以ASP.NET的各式前端介面為主要輸出工具，基於MVC的View彈性化設計考量，以往在ASP.NET Web Form的程式碼與[HTML](../Page/HTML.md "wikilink")分離模式將不再存在，而是將程式碼與HTML混合的方式設計，讓開發人員可以更精確的對View進行控制，而目前 ASP.NET MVC 支援的 View 有下列幾種\[3\]：

  - .aspx網頁，由**ViewPage**來支援。
  - .ascx使用者控制項，由**ViewUserControl**來支援。
  - .master主版頁面，由**ViewMasterPage**來支援。

每個 View 物件都會內含一個泛型的參數，用來裝載要呈現的資料(即Model)，然後使用類似下面的方式來呈現資料：

``` asp numberLines
<%@ Master Language="C#" Inherits="System.Web.Mvc.ViewMasterPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html >
<head runat="server">
    <title><asp:ContentPlaceHolder ID="TitleContent" runat="server" /></title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div class="page">

        <div id="header">
            <div id="title">
                <h1>My MVC Application</h1>
            </div>

            <div id="logindisplay">
                <% Html.RenderPartial("LogOnUserControl"); %>
            </div>

            <div id="menucontainer">

                <ul id="menu">
                    <li><%= Html.ActionLink("Home", "Index", "Home")%></li>
                    <li><%= Html.ActionLink("About", "About", "Home")%></li>
                </ul>

            </div>
        </div>

        <div id="main">
            <asp:ContentPlaceHolder ID="MainContent" runat="server" />

            <div id="footer">
            </div>
        </div>
    </div>
</body>
</html>
```

## 技術

在ASP.NET MVC架構中，除了Controller、Model與View三個主要部份以外，還包含了許多技術以讓這三層得以整合並交互運作。

### Controller

Controller在ASP.NET MVC應用程式中是負責中控的角色，也是來自用戶端HTTP要求的處理核心，因此有許多處理與轉向HTTP要求的輔助技術在Controller層次都會使用到。

#### ASP.NET 路由技術

用來過濾用戶端要求的URL，並藉由定義好的路由表(route table)將要求導向至正確的MVC Controller，並呼叫Controller中的Execute方法執行，而Execute方法會將HTTP動作以及實際執行的指令交給正確的函式來執行。而通常一個MVC應用程式的URL都會是類似這樣的URL格式：

    http://127.0.0.1/ControllerName/ActionName/ActionParameters

而MvcRouteHandler會拆解URL，找出目標的Controller，並且將ActionName以及ActionParameters傳給Controller中負責的函式（以ActionName來指定）。例如下列的URL會傳遞給BlogController的GetList方法：

    http://127.0.0.1/Blog/GetList

#### 動作與方法直接整合

ASP.NET MVC利用了中介資料的技術，直接將方法對應到指定的 HTTP 動詞 (GET/POST/PUT/DELETE/HEAD等)，MvcHandler會判斷要求的類別，並將它交給URL中指定的方法來處理。目前MVC Framework可用下列的方式指定（均包含在 HttpVerbs 列舉型別中）：

  - `HttpVerbs.Get`
  - `HttpVerbs.Post`
  - `HttpVerbs.Delete`
  - `HttpVerbs.Put`
  - `HttpVerbs.Head`

#### 將資料模型與展示層直接包裝

`ViewPage`、`ViewMasterPage`、`ViewUserControl`等展示物件都支援泛型物件，可以直接裝載Model資料傳遞至前端輸出，可簡化處理Model與View之間整合的動作，只要一個參數就可以將資料傳給View：

``` csharp
public ActionResult GetList()
{
    return View(BlogDataModel);
}
```



``` vb
    Function GetList() As ActionResult
        Return View(BlogDataModel)
    End Function
```

### Model

在 ASP.NET MVC 中，Model 相對不設限，可以使用內建的資料結構以及自訂的資料類別，也可以是一個商業物件，因此 Model 的彈性相當大，除了前述的資料結構外，微軟新發展的一些資料存取方式也可以應用在 Model 中，像是[ADO.NET Entity Framework與](https://zh.wikipedia.org/wiki/ADO.NET_Entity_Framework "wikilink")[LINQ](https://zh.wikipedia.org/wiki/LINQ "wikilink") to SQL等技術。

另外，MVC在伺服端資料驗證中，提供了`ViewDataDictionary`類別，這個類別中有一個**ModelState**屬性，內含了`ModelStateDictionary`類別，開發人員可以利用這個類別來控制資料驗證的結果，而View中輸出驗證訊息的部份會和此類別有關聯，例如下列的程式：

``` csharp
[AcceptVerbs(HttpVerbs.Post)]
public ActionResult Create(Person person)
{
    if (person.Name.Trim().Length == 0)
    {
        ModelState.AddModelError("Name", "Name is required.");
    }
    if (person.Age < 1 || person.Age > 200)
    {
        ModelState.AddModelError("Age", "Age must be within range 1 to 200.");
    }
    if ((person.Zipcode.Trim().Length > 0) && (!Regex.IsMatch(person.Zipcode, @"^\d{5}$|^\d{5}-\d{4}$")))
    {
        ModelState.AddModelError("Zipcode", "Zipcode is invalid.");
    }
    if (!Regex.IsMatch(person.Phone, @"((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"))
    {
        ModelState.AddModelError("Phone", "Phone number is invalid.");
    }
    if (!Regex.IsMatch(person.Email, @"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"))
    {
        ModelState.AddModelError("Email", "Email format is invalid.");
    }
    if (!ModelState.IsValid)
    {
        return View("Create", person);
    }

    people.Add(person);

    return RedirectToAction("Index");
}
```

在 ASP.NET MVC 2.0 中，新增了一個可以直接讓 MVC Framework 針對資料欄位進行驗證控制的模型，稱為 Model Validation，它融合了在 .NET Framework 3.5 SP1 發表的 [ASP.NET Dynamic Data Framework](https://zh.wikipedia.org/wiki/ASP.NET_Dynamic_Data_Framework "wikilink") 中 Data Annotations (資料記號) 的特性，讓開發人員可以只利用標記的方式來執行驗證，或是利用自訂的程式碼來擴充資料記號的驗證行為。

``` csharp
using System.ComponentModel.DataAnnotations;
namespace MvcDA {
    [MetadataType(typeof(ProductMD))]
    public partial class Product {
        public class ProductMD {
            [StringLength(50),Required]
            public object Name { get; set; }
            [StringLength(15)]
            public object Color { get; set; }
            [Range(0, 9999)]
            public object Weight { get; set; }
          //  public object NoSuchProperty { get; set; }
        }
    }
}
```

### View

由於View是直接呈現給使用者，因此與使用者互動的部份都要由此層處理，包含資料的輸出以及以用戶端操作為主的回應（例如指令碼）等。

#### HTML 工具類別

HTML工具類別在View中是很重要的輸出工具，它內建了輔助產生HTML標籤的工具方法，多數的HTML語法都可以利用它來產生，包含像連結(<a>)、表單(

<form>

)以及表單控制項等等。HTML工具是以`HtmlHelper`類別為核心，並配合System.Web.Mvc.Html命名空間的方法，以延伸方法(Extension Method)的方式，讓產生HTML的程式就有如呼叫方法般簡單\[4\]：

``` asp
<h2>Index</h2>

<table>
    <tr>
        <th></th>
        <th>
            Id
        </th>
        <th>
            Name
        </th>
    </tr>

<% foreach (var person in Model) { %>

    <tr>
        <td>
            <%= Html.ActionLink("Details", "Details", person )%>
        </td>
        <td>
            <%= Html.Encode(person.Id) %>
        </td>
        <td>
            <%= Html.Encode(person.Name) %>
        </td>
    </tr>

<% } %>

</table>

<p>
    <%= Html.ActionLink("Create New", "Create") %>
</p>
```

#### 資料驗證

View的HTML工具可以配合Model處理資料驗證的結果，在ASP.NET中常用的ValidationSummary在這裡也支援，而且MVC的架構讓驗證資訊的輸出也更加彈性\[5\]：

``` asp
<h2>Create</h2>

<%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>

<% using (Html.BeginForm()) {%>

    <fieldset>
        <legend>Fields</legend>
        <p>
            <label for="Name">Name:</label>
            <%= Html.TextBox("Name") %> Required
            <%= Html.ValidationMessage("Name", "*") %>
        </p>
        <p>
            <label for="Age">Age:</label>
            <%= Html.TextBox("Age") %> Required
            <%= Html.ValidationMessage("Age", "*") %>
        </p>
        <p>
            <label for="Street">Street:</label>
            <%= Html.TextBox("Street") %>
            <%= Html.ValidationMessage("Street", "*") %>
        </p>
        <p>
            <label for="City">City:</label>
            <%= Html.TextBox("City") %>
            <%= Html.ValidationMessage("City", "*") %>
        </p>
        <p>
            <label for="State">State:</label>
            <%= Html.TextBox("State") %>
            <%= Html.ValidationMessage("State", "*") %>
        </p>
        <p>
            <label for="Zipcode">Zipcode:</label>
            <%= Html.TextBox("Zipcode") %>
            <%= Html.ValidationMessage("Zipcode", "*") %>
        </p>
        <p>
            <label for="Phone">Phone:</label>
            <%= Html.TextBox("Phone") %> Required
            <%= Html.ValidationMessage("Phone", "*") %>
        </p>
        <p>
            <label for="Email">Email:</label>
            <%= Html.TextBox("Email") %> Required
            <%= Html.ValidationMessage("Email", "*") %>
        </p>
        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>

<% } %>

<div>
    <%=Html.ActionLink("Back to List", "Index") %>
</div>
```

#### 不同類型的輸出

每一個Controller中負責回應的方法，都會回傳一個ActionResult物件的資訊，ActionResult是一個執行結果物件的封裝體，當MvcHandler執行完指令接到ActionResult時，就會依照它的內容來輸出資料。目前MVC Framework支援的ActionResult有下列幾種：

  - `ViewResult`物件，這個物件內裝載了`IView`介面的資訊，以及`IViewEngine`的資訊，實際產生輸出資料的會是 IViewEngine，以及其指示的 View 物件。
  - `PartialViewResult`物件，與`ViewResult`相似，但它回傳的是"部份展示"，即使用者控制項的View。
  - `ContentResult`物件，裝載由使用者自訂的 Content-Type 以及資料。
  - `EmptyResult`物件，表示不回傳任何東西。
  - `HttpUnauthorizedReuslt`物件，表示動作沒有被授權（即 HTTP 401）的錯誤訊息。
  - `JavaScriptResult`物件，表示回傳的是[JavaScript](../Page/JavaScript.md "wikilink")指令碼。
  - `JsonResult`物件，表示回傳的是[JSON](../Page/JSON.md "wikilink")資料。
  - `FileResult`物件，表示回傳的是一個檔案資料。
  - `RedirectResult`物件，表示回傳的是一個重導向 (HTTP Redirect) 指令。
  - `RedirectToRouteResult`物件，與 RedirectResult 類似，但是它是重導向給一個 Route 的路徑。

透過多類型的ActionResult，開發人員可以自由決定要回傳的資料的類型與格式。

## 應用

目前微軟有一個Oxite專案，是使用ASP.NET MVC Framework所開發的部落格引擎，而這個專案已經被微軟的部份應用平台所採用，像是MIX Online、PDC 2009、MIX Video等官方網站都採用它來開發\[6\]。另外，stackoverflow.com以及codeplex.com這兩個網站也是採用ASP.NET MVC Framework。

## 版本歷程

| Date       | Version                           | Notes                                     |
| ---------- | --------------------------------- | ----------------------------------------- |
| 2007-12-10 | ASP.NET MVC Framework             | 以CTP方式釋出                                  |
| 2008-03-05 | ASP.NET MVC Preview 2             | 已釋出                                       |
| 2008-05-01 | ASP.NET MVC Preview 3             | 已釋出                                       |
| 2008-07-16 | ASP.NET MVC Preview 4             | 已釋出\[7\]                                  |
| 2008-08-28 | ASP.NET MVC Preview 5             | 已釋出\[8\]                                  |
| 2008-10-16 | ASP.NET MVC Beta                  | 已釋出\[9\]                                  |
| 2009-01-27 | ASP.NET MVC RC                    | 已釋出\[10\]                                 |
| 2009-03-03 | ASP.NET MVC RC 2                  | 已釋出\[11\]                                 |
| 2009-03-17 | ASP.NET MVC 1.0                   | 已釋出\[12\]                                 |
| 2009-07-31 | ASP.NET MVC 2.0 Preview 1         | 已釋出\[13\]                                 |
| 2009-11-17 | ASP.NET MVC 2.0 Beta              | 已釋出\[14\]                                 |
| 2010-03-11 | ASP.NET MVC 2.0 RTM               | 已釋出\[15\]                                 |
| 2010-10-06 | ASP.NET MVC 3.0 Beta              | 持續更新中\[16\]                               |
| 2010-11-08 | ASP.NET MVC 3.0 RC                | 已釋出\[17\]                                 |
| 2011-01-13 | ASP.NET MVC 3.0 RTM               | 已釋出\[18\]                                 |
| 2011-09-20 | ASP.NET MVC 4.0 Developer Preview | 已釋出\[19\]                                 |
| 2012-02-15 | ASP.NET MVC 4.0 Beta              | 隨著Microsoft .NET Framework 4.5 RC釋出\[20\] |
| 2012-05-31 | ASP.NET MVC 4.0 RC                | \[21\]                                    |
| 2012-08-15 | ASP.NET MVC 4.0                   | \[22\]                                    |
| 2013-10-17 | ASP.NET MVC 5.0                   | \[23\]                                    |
| 2014-01-17 | ASP.NET MVC 5.1                   | \[24\]                                    |
| 2014-12-25 | ASP.NET MVC 5.2                   | \[25\]                                    |
|            |                                   |                                           |

Release History

## 授權

ASP.NET MVC Framework雖然是ASP.NET的一部份，不過它的原始碼是透過Microsoft Public License (MS-PL)的授權模式公開，因此在MS-PL授權的範圍內，任何人是可以去檢視與修改它的原始碼的。\[26\]

## ASP.NET MVC Razor Engine

微軟在2010年7月2日由Scott Guthrie發表新的MVC繪製引擎 (Render Engine)：Razor Engine\[27\]，它已內建於 ASP.NET MVC 3.0 中發布，它具有下列功能：

1.  更輕量化且直覺的語法，減少在 View 中輸出資料時使用的語法，讓 View 的指令更加簡潔，例如使用 "@" + 變數名稱 的方式，就可以輸出程式中的變數，不必再用 \<% %\> 來設定。如果程式有多行，可以使用 @{ } 的方式來設定。
2.  容易學習。
3.  可相容於現在的程式語言 (ex: C\#)。
4.  透過 Visual Studio，可享有 Intellisense 能力。
5.  可混用 HTML 與程式語言指令。
6.  可用各種不同的文字編輯器編輯。
7.  具有單元測試的能力。

## 參考資料

<references />

## 外部網站

  - [ASP.NET MVC 官方網站](http://www.asp.net/mvc)
  - [MSDN ASP.NET Virtual Labs](http://msdn.microsoft.com/en-us/aa740364.aspx)
  - [ASP.NET MVC Documentations](http://msdn.microsoft.com/en-us/library/dd394709.aspx)

### View engines

  - [MvcContrib](http://mvccontrib.codeplex.com/)
  - [StringTemplate View Engine](http://code.google.com/p/string-template-view-engine-mvc/)
  - [Spark](http://dev.dejardin.org/home)
  - [NDjango](http://ndjango.org/index.php?title=NDjango_Home)
  - [Naked Objects MVC](http://en.wikipedia.org/wiki/Naked_Objects_MVC)
  - [Razor](http://weblogs.asp.net/scottgu/archive/2010/07/02/introducing-razor.aspx)（預計ASP.NET MVC 3.0導入）

[Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink") [Category:ASP.NET](https://zh.wikipedia.org/wiki/Category:ASP.NET "wikilink") [Category:MVC](https://zh.wikipedia.org/wiki/Category:MVC "wikilink")

1.  [Controllers and Action Methods in MVC Applications](http://msdn.microsoft.com/en-us/library/dd410269.aspx)
2.  [Models and Model Binders in MVC Application](http://msdn.microsoft.com/en-us/library/dd410405.aspx)
3.  [Views and UI Rendering in MVC Applications](http://msdn.microsoft.com/en-us/library/dd410123.aspx)
4.  [Models and Model Binders in MVC Applications](http://msdn.microsoft.com/en-us/library/dd410405.aspx)
5.  [Validating Model Data in an MVC Application](http://msdn.microsoft.com/en-us/library/dd410404.aspx)
6.  [Oxite Refers](http://www.codeplex.com/oxite/Wiki/View.aspx?title=oxitesites&referringTitle=Home)
7.  ASP.NET MVC Preview 4 Released - Shiju Varghese's Blog . Retrieved from <http://weblogs.asp.net/shijuvarghese/archive/2008/07/16/asp-net-mvc-preview-4-released.aspx>
8.  ASP.NET MVC CodePlex Preview 5 Release Notes. Retrieved from <http://www.codeplex.com/Release/ProjectReleases.aspx?ProjectName=aspnet&ReleaseId=16775>.
9.  <http://go.microsoft.com/fwlink/?LinkID=129910&clcid=0x409>
10. <http://go.microsoft.com/fwlink/?LinkID=141184&clcid=0x409>
11. <http://go.microsoft.com/fwlink/?LinkId=144443>
12. <http://go.microsoft.com/fwlink/?LinkId=144444>
13. <http://go.microsoft.com/fwlink/?LinkID=154409>
14. <http://aspnet.codeplex.com/Release/ProjectReleases.aspx?ReleaseId=36054>
15. <http://weblogs.asp.net/scottgu/archive/2010/03/11/asp-net-mvc-2-released.aspx>
16. <http://aspnet.codeplex.com/releases/view/54306>
17.
18. <http://www.asp.net/mvc/mvc3>
19. <http://aspnet.codeplex.com/wikipage?title=ASP.NET%20MVC%204%20RoadMap>
20. <http://www.asp.net/whitepapers/mvc4-release-notes>
21. <http://www.asp.net/mvc/mvc4>
22. <http://www.asp.net/mvc/mvc4>
23. <http://www.nuget.org/packages/Microsoft.AspNet.Mvc/5.0.0>
24. <http://www.nuget.org/packages/Microsoft.AspNet.Mvc/5.1.0>
25. <http://www.nuget.org/packages/Microsoft.AspNet.Mvc/5.2.0>
26. [ASP.NET MVC 1.0 on ScottGu blog](http://weblogs.asp.net/scottgu/archive/2009/04/01/asp-net-mvc-1-0.aspx)
27. [Introducing “Razor” – a new view engine for ASP.NET](http://weblogs.asp.net/scottgu/archive/2010/07/02/introducing-razor.aspx)