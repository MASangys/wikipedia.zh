**ASP.NET Core** 是新一代的 [ASP.NET](../Page/ASP.NET.md "wikilink")，早期稱為
ASP.NET vNext，並且在推出初期命名為 ASP.NET 5，但隨著 [.NET
Core](../Page/.NET_Core.md "wikilink") 的成熟，以及 ASP.NET 5 的命名會使得外界將它視為
ASP.NET 的升級版，但它其實是新一代從頭開始打造的 ASP.NET 核心功能，因此微軟宣佈將它改為與 .NET Core
同步的名稱\[1\]，即 ASP.NET Core。

ASP.NET Core 可運行於 [Windows](../Page/Windows.md "wikilink") 平台以及非 Windows
平台，如 [Mac OSX](../Page/Mac_OSX.md "wikilink") 以及
[Ubuntu](../Page/Ubuntu.md "wikilink") Linux 作業系統，是 Microsoft
第一個具有跨平台能力的 Web 開發框架。

微軟在一開始開發時就將 ASP.NET Core 開源，因此它也是開源專案的一員，由 [.NET
基金會](http://www.dotnetfoundation.org/) (.NET Foundation) 所管理。

## 開發歷程

ASP.NET vNext 最早是在2014年5月被提出\[2\]，當時是以專案代號 K (Project K) 命名，包含工具與執行期平台都以
K 來命名，其名稱為 KRE (K Runtime Environment) 如：

  - KLR (K Language Runtime): Project K 的執行期平台。
  - KVM (K Version Manager): Project K 的版本管理員。
  - KPM (K Package Manager): Project K 的套件管理員，類似於
    [node.js](../Page/node.js.md "wikilink") 的 npm (Node.js Package
    Manager)。
  - K (K Loader): Project K 的程式啟動器。

KRE 在 2014 年度時曾經一度在版本戳記上出現 RC 的字眼，但隨後 ASP.NET Core 開發團隊發出了一份新的
Roadmap，公布後續的版本計畫 \[3\]。

到了 Build 2015 時，微軟將專案 K 重新命名，改稱為 .NET 執行環境 (.NET Execution
Environment)，簡稱 DNX，其工具也開始進行更名:

  - DNVM (.NET Version Manager): DNX 的版本管理員。
  - DNU (.NET Package Manager): DNX 的工具，可支援建造，還原與管理封裝等。
  - DNX (.NET Loader): DNX 的程式啟動器。

後續到了 ASP.NET Core RC1 時，.NET Core 已經發展成熟，並且也具有自己的工具 .NET Core CLI
(dotnet.exe)，此時微軟決定將 DNX 和 .NET Core CLI 合併，並且正式於 ASP.NET Core 1.0.0 RC2
時將 DNX 支援終止，改由 .NET Core CLI 提供基礎的編譯與執行功能。

## 核心功能

ASP.NET Core 核心設計上是採用 Open Web Interface for .NET (OWIN) \[4\]
為概念發展，OWIN 在概念上就強調以程式碼來定義系統功能，並一度在 ASP.NET MVC 5
列入其功能之一\[5\]，後續的 Web API 與 SignalR 也使用了
OWIN，但並沒有引起太多開發人員的重視，其主因還是因為 Visual Studio
簡化了太多元件間參考定義的工作，若是要回歸由原始碼作業，反而會讓開發人員無法適應。但隨著微軟確定將 ASP.NET Core
開發為可跨平台的核心架構時，其專案參考系統也由 Visual Studio 為主的加入參考對話盒轉向到以
project.json (.NET Core / ASP.NET Core 的專案組態檔) 為主，使得開發人員不能再以 GUI
介面來加入元件參考，只能利用編輯 project.json
的方式加入，這時由程式碼加入功能的作法才慢慢的被開發人員所接受，雖然這在
Mac 以及 Linux 環境是再平常不過的事。

### 由程式碼決定功能

ASP.NET Core 廣泛應用了 .NET 的擴充方法 (Extension Method)，將 ASP.NET Core 的功能模組
(ASP.NET Core 的術語是 Middleware) 以擴充方法的方式附掛在 IApplicationBuilder 介面上，以 Use
開頭的方法為命名標準，所有應用程式所需要的功能都必須添加在 Startup 類別內，DNX Runtime 在啟動時會搜尋應用程式內的
Startup 物件，並喚起它內部的特定方法 (如 Configure())，以加入應用程式的功能。

例如下列程式碼：

``` csharp
public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
{
    loggerFactory.AddConsole(Configuration.GetSection("Logging"));
    loggerFactory.AddDebug();

    if (env.IsDevelopment())
    {
        app.UseBrowserLink();
        app.UseDeveloperExceptionPage();
        app.UseDatabaseErrorPage();
    }
    else
    {
        app.UseExceptionHandler("/Home/Error");
    }

    app.UseIISPlatformHandler(options => options.AuthenticationDescriptions.Clear());

    app.UseStaticFiles();

    app.UseIdentity();

    // To configure external authentication please see http://go.microsoft.com/fwlink/?LinkID=532715

    app.UseMvc(routes =>
    {
        routes.MapRoute(
            name: "default",
            template: "{controller=Home}/{action=Index}/{id?}");
    });
}
```

### 內建的相依注入

ASP.NET Core 核心內建了基本的[相依注入](../Page/依賴注入.md "wikilink") (Dependency
Injection) 能力，這意味著 ASP.NET Core 應用程式具有更強的擴充能力，連帶的如 ASP.NET Core MVC
(ASP.NET Core 的 Web 開發框架) 也受惠於 ASP.NET Core 的相依注入功能，可在 Controller
內直接注入介面物件。ASP.NET Core 內提供了兩種相依注入功能，一種是管線式相依注入 (ASP.NET
Core 稱它為 Framework-Provided Services)，另一種是由系統註冊的相依注入，由開發人員利用 ASP.NET
Core 提供的 IServiceCollection 介面內的方法註冊需要的介面與服務，再由程式中取用。

IServiceCollection 支援四種類型的服務相依注入\[6\]：

1.  Transient: 每次要求時都建立，不論是否在同一範圍。
2.  Scoped: 只在一個要求範圍內建立一次，在當下的範圍內等同於 Singleton。
3.  Singleton: 只會提供一個物件的執行個體，但生成是由系統做。
4.  Instance: 在應用程式的生命週期內只會提供一個物件的執行個體，但生成是由開發人員負責。

ASP.NET Core 也不限只能用 ASP.NET Core 本身的相依注入功能，若是有喜歡或慣用的相依注入元件 (如
[Autofac](../Page/Autofac.md "wikilink")、[StructureMap](../Page/StructureMap.md "wikilink")
等)，也可以用它們取代內建的相依注入功能\[7\]。

### 代管 (Hosting) 方式

ASP.NET Core 支援自我代管 (Self-hosting) 以及 Web Server 代管 (Web Server-hosting)
的功能 \[8\]，早期 ASP.NET Core 有延續以 IIS 為主要代管服務的設計 (當時的代號為 Helios)，但是到了
ASP.NET Core Beta 8 時，微軟宣佈將以 Kestrel Server 為主要的代管伺服器 \[9\]，Kestrel
Server 是以  為基礎開發的 Web Server 代管行程 (Hosting Process)，藉由 libuv 的協助，Kestrel
Server 可跨平台，也可適用於 IIS，微軟也為了 IIS 使用 Kestrel Server 而發展了 IIS Platform
Handler，讓 IIS 可直接將 HTTP 的要求直接轉送給 Kestrel Server。

自 ASP.NET Core 1.0.0-rc1 起，代管方式已經回歸以 Kestrel Server 為主，原本的 IIS Platform
Handler 也依 ASP.NET Core 的特性改寫為 ASP.NET Core Module，若要使用 IIS 架設 ASP.NET
Core 應用程式，必須要使用此模組。

## 專案系統

在 ASP.NET Core v1.0 時期，ASP.NET Core 不再使用 .csproj
的專案管理方式，而是改用以目錄為主的專案管理，原本的
Web.config 也不再存在，取而代之的是 project.json，以及作為組態設定的 appsettings.json
檔案，這兩個檔案都是[JSON格式](../Page/JSON.md "wikilink")。雖然在
Visual Studio 的 ASP.NET Core 的專案範本中，Web.config 仍然存在，但它的存在只是為了要在 IIS 中附掛上
HTTP Platform Handler 而已。

隨著 .NET Core v1.1 回歸到 MSBuild 的策略，ASP.NET Core v1.1 起再次回到 .csproj
的專案管理方式，但仍保留以目錄為主的專案管理作法。

### v1.0 時期

#### project.json

ASP.NET Core v1.0 時期由 project.json 主掌專案的執行期的組態設定，包含專案的套件參考 (Package
References)、專案的基本設定、啟動指令、包含或排除指定目錄、以及建造時的相關事件指令等。

下列JSON為 project.json 的範例\[10\]：

``` json
{
  "userSecretsId": "...",

  "dependencies": {
    "Microsoft.NETCore.App": {
      "version": "1.0.0-rc2-3002538",
      "type": "platform"
    },
    "Microsoft.AspNetCore.Authentication.Cookies": "1.0.0-rc2-20828",
    "Microsoft.AspNetCore.Diagnostics": "1.0.0-rc2-20828",
    "Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore": "1.0.0-rc2-20828",
    "Microsoft.AspNetCore.Identity.EntityFrameworkCore": "1.0.0-rc2-20828",
    "Microsoft.AspNetCore.Mvc": "1.0.0-rc2-20828",
    "Microsoft.AspNetCore.Razor.Tools": {
      "version": "1.0.0-preview1-20828",
      "type": "build"
    },
    "Microsoft.AspNetCore.Server.IISIntegration": "1.0.0-rc2-20828",
    "Microsoft.AspNetCore.Server.Kestrel": "1.0.0-rc2-20828",
    "Microsoft.AspNetCore.StaticFiles": "1.0.0-rc2-20828",
    "Microsoft.EntityFrameworkCore.SqlServer": "1.0.0-rc2-20828",
    "Microsoft.EntityFrameworkCore.Tools": {
      "version": "1.0.0-preview1-20828",
      "type": "build"
    },
    "Microsoft.Extensions.Configuration.EnvironmentVariables": "1.0.0-rc2-20828",
    "Microsoft.Extensions.Configuration.Json": "1.0.0-rc2-20828",
    "Microsoft.Extensions.Configuration.UserSecrets": "1.0.0-rc2-20828",
    "Microsoft.Extensions.Logging": "1.0.0-rc2-20828",
    "Microsoft.Extensions.Logging.Console": "1.0.0-rc2-20828",
    "Microsoft.Extensions.Logging.Debug": "1.0.0-rc2-20828",
    "Microsoft.VisualStudio.Web.BrowserLink.Loader": "14.0.0-rc2-20828",
    "Microsoft.VisualStudio.Web.CodeGeneration.Tools": {
      "version": "1.0.0-preview1-20828",
      "type": "build"
    },
    "Microsoft.VisualStudio.Web.CodeGenerators.Mvc": {
      "version": "1.0.0-preview1-20828",
      "type": "build"
    }
  },

  "tools": {
    "Microsoft.AspNetCore.Razor.Tools": {
      "version": "1.0.0-preview1-20828",
      "imports": "portable-net45+win8+dnxcore50"
    },
    "Microsoft.AspNetCore.Server.IISIntegration.Tools": {
      "version": "1.0.0-preview1-20828",
      "imports": "portable-net45+win8+dnxcore50"
    },
    "Microsoft.EntityFrameworkCore.Tools": {
      "version": "1.0.0-preview1-20828",
      "imports": [
        "portable-net45+win8+dnxcore50",
        "portable-net45+win8"
      ]
    },
    "Microsoft.Extensions.SecretManager.Tools": {
      "version": "1.0.0-preview1-20828",
      "imports": "portable-net45+win8+dnxcore50"
    },
    "Microsoft.VisualStudio.Web.CodeGeneration.Tools": {
      "version": "1.0.0-preview1-20828",
      "imports": [
        "portable-net45+win8+dnxcore50",
        "portable-net45+win8"
      ]
    }
  },

  "frameworks": {
    "netcoreapp1.0": {
      "imports": [
        "dotnet5.6",
        "dnxcore50",
        "portable-net45+win8"
      ]
    }
  },

  "buildOptions": {
    "emitEntryPoint": true,
    "preserveCompilationContext": true
  },

  "runtimeOptions": {
    "gcServer": true
  },

  "publishOptions": {
    "include": [
      "wwwroot",
      "Views",
      "appsettings.json",
      "web.config"
    ]
  },

  "scripts": {
    "prepublish": [ "npm install", "bower install", "gulp clean", "gulp min" ],
    "postpublish": [ "dotnet publish-iis --publish-folder %publish:OutputPath% --framework %publish:FullTargetFramework%" ]
  }
}
```

#### appsettings.json

appsettings.json 是用來替代 Web.config 內的 <appSettings /> 與
<connectionStrings /> 兩個開發人員最常用的組態區段，其內容示例如下:

``` json
{
  "Data": {
    "DefaultConnection": {
      "ConnectionString": "Server=(localdb)\\mssqllocaldb;Database=aspnet5-WebApplication1-8479b9ce-7b8f-4402-9616-0843bc642f09;Trusted_Connection=True;MultipleActiveResultSets=true"
    }
  },
  "Logging": {
    "IncludeScopes": false,
    "LogLevel": {
      "Default": "Verbose",
      "System": "Information",
      "Microsoft": "Information"
    }
  }
}
```

不過 appsettings.json 不像 project.json 是由 DNX 自動讀取，appsettings.json
或是後續加入的組態檔都是屬於功能之一，依照 ASP.NET Core
由程式碼決定功能的特性，開發人員需要加入下列程式才能讓
appsettings.json 生效。

``` csharp
public Startup(IHostingEnvironment env)
{
    // Set up configuration providers.
    var builder = new ConfigurationBuilder()
        .AddJsonFile("appsettings.json")
        .AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true);

    Configuration = builder.Build();
}
```

### v1.1 時期

隨著 .NET Core 1.1 回歸 MSBuild 建置系統管理後，ASP.NET Core 1.1 的套件管理也可支援 IDE GUI
的圖形化介面參考管理功能。

ASP.NET Core 1.1 的 Visual Studio 工具也另外加入了 Bower 套件的圖形化介面管理功能。

## 套件相依管理

ASP.NET Core 的套件相依管理 (Package Dependency Management) 由 project.json
負責，project.json 內的 dependencies 區段以及 frameworks 區段負責管理對套件的相依，以及對特定
Framework 版本內組件的相依。

dependencies 內的套件是以 "套件代碼": "版本" 的格式設定，例如 "Microsoft.AspNet.Mvc":
"1.0.0-rc1-final" 表示參考 Microsoft.AspNet.Mvc 套件的 v1.0.0-rc1-final
版本。套件與版本資訊是用所提供，和以往要以加入參考的方式加入對特定組件的相依性有很大的不同，而這也是 .NET
Core/ASP.NET Core 的特色之一，不必再安裝大包的 .NET Framework，只要使用 DNU 的 restore
指令，就能還原所參照的相依套件。

``` json
  "dependencies": {
    "Microsoft.Bcl.Immutable": "1.1.18-beta-*",
    "Microsoft.AspNet.ConfigurationModel": "0.1-alpha-*",
    "Microsoft.AspNet.DependencyInjection": "0.1-alpha-*",
    "Microsoft.AspNet.Logging": "0.1-alpha-*",
    "System.Data.Common": "0.1-alpha-*"
  }
```

frameworks 則是定義了特定系統環境內所相依的特定組件與其版本，在此定義的組件必須事先就安裝在電腦內才能取用，與
dependencies 會還原套件不同。開發人員可以給定一個字串來代表特定環境 (例如dnx45表示 DNX on .NET
4.5、dnxcore5 表示 DNX on .NET Core 5)，然後在裡面指定特定的組件與其版本。

``` json
  "frameworks": {
    "net451": { },
    "dotnet5.4": {
      "dependencies": {
        "Microsoft.CSharp": "4.0.1-beta-23516",
        "System.Collections": "4.0.11-beta-23516",
        "System.Linq": "4.0.1-beta-23516",
        "System.Runtime": "4.0.21-beta-23516",
        "System.Threading": "4.0.11-beta-23516"
      }
    }
  }
```

自 1.0.0-rc2 起，DNX 的功能由 .NET Core CLI 取代，因此還原套件的指令改為 dotnet restore。

## 開發工具與框架

ASP.NET Core 以 .NET Core 的基礎發展，其目前規劃的功能有：

1.  [ASP.NET Core MVC](../Page/ASP.NET_Core_MVC.md "wikilink") : 目前欽定的
    Web 應用程式開發框架。
2.  [ASP.NET Core SignalR](../Page/SignalR.md "wikilink"): 新一代的長時輪詢
    (Long-Time Polling) 訊息通訊基礎建設，計畫在 ASP.NET Core 1.0.0 釋出後才會繼續進行開發。
3.  [Entity Framework
    Core](../Page/Entity_Framework_Core.md "wikilink"): 下一代的 [ADO.NET
    Entity Framework](../Page/ADO.NET_Entity_Framework.md "wikilink")，採用
    .NET Core 並重新設計，為欽定的 ORM 資料存取技術。

ASP.NET Core 的可用開發工具則有：

  - [Visual Studio](../Page/Visual_Studio.md "wikilink")，內建有 ASP.NET
    Core 的專案範本，也能夠使用 IDE 的功能建造與部署應用程式 (例如 Azure Web App 或是 ASP.NET
    Docker Image on Azure 等)。

  - [Visual Studio Code](../Page/Visual_Studio_Code.md "wikilink")，跨平台的
    Visual Studio 編輯器。

  - for ASP.NET，提供給 Mac 與 Linux 等作業系統，可直接產生專案範本的工具。

  - 只要是文字編輯器都可以編修 project.json 與程式碼檔案，但要自行處理建造與部署的細節。

## 版本歷程

| 日期         | 版本                                 |
| ---------- | ---------------------------------- |
| 2014/05/12 | ASP.NET 5 初登場 \[11\]               |
| 2014/07/06 | ASP.NET 5 Alpha2 \[12\]            |
| 2014/08/17 | ASP.NET 5 Alpha3 \[13\]            |
| 2014/10/07 | ASP.NET 5 Alpha4 \[14\]            |
| 2014/11/12 | ASP.NET 5 Beta1 \[15\]             |
| 2015/01/14 | ASP.NET 5 Beta2 \[16\]             |
| 2015/03/13 | ASP.NET 5 Beta3 \[17\]             |
| 2015/05/01 | ASP.NET 5 Beta4 \[18\]             |
| 2015/06/30 | ASP.NET 5 Beta5 \[19\]             |
| 2015/07/27 | ASP.NET 5 Beta6 \[20\]             |
| 2015/09/02 | ASP.NET 5 Beta7 \[21\]             |
| 2015/10/15 | ASP.NET 5 Beta8 \[22\]             |
| 2015/11/19 | ASP.NET 5 RC1 \[23\]               |
| 2016/01/19 | ASP.NET 5 更名為 ASP.NET Core \[24\]  |
| 2016/05/16 | ASP.NET Core 1.0.0 RC2 \[25\]      |
| 2016/06/27 | ASP.NET Core 1.0.0 RTM \[26\]      |
| 2016/09/14 | ASP.NET Core 1.0.1\[27\]           |
| 2016/10/25 | ASP.NET Core 1.1.0 Preview 1\[28\] |
| 2016/11/16 | ASP.NET Core 1.0.0 RTM \[29\]      |
| 2017/03/08 | ASP.NET Core 1.1.1 RTM \[30\]      |
| 2017/05/18 | ASP.NET Core 2.0.0-preview1 \[31\] |
| 2017/08/14 | ASP.NET Core 2.0.0 RTM \[32\]      |

版本歷程

## 參考

[Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink")
[Category:ASP.NET](https://zh.wikipedia.org/wiki/Category:ASP.NET "wikilink")
[Category:MVC](https://zh.wikipedia.org/wiki/Category:MVC "wikilink")

1.  [ASP.NET 5 is dead – Introducing ASP.NET Core 1.0 and .NET
    Core 1.0](https://blogs.msdn.microsoft.com/webdev/2016/01/19/asp-net-5-is-dead-introducing-asp-net-core-1-0-and-net-core-1-0/)
2.  [Introducing ASP.NET
    vNext](http://www.hanselman.com/blog/IntroducingASPNETVNext.aspx)
3.  [ASP.NET Core 1.0 Schedule and
    Roadmap](https://github.com/aspnet/Home/wiki/Roadmap)
4.  [OWIN](http://owin.org/)
5.  [Understanding OWIN Forms authentication in
    MVC 5](https://blogs.msdn.microsoft.com/webdev/2013/07/03/understanding-owin-forms-authentication-in-mvc-5/)
6.  [Dependency Injection in ASP.NET
    vNext](https://blogs.msdn.microsoft.com/webdev/2014/06/17/dependency-injection-in-asp-net-vnext/)
7.  [ASP.NET Core Dependency
    Injection](https://github.com/aspnet/DependencyInjection)
8.  [ASP.NET Core Servers](https://github.com/aspnet/Home/wiki/Servers)
9.  [Announcing Availability of ASP.NET 5
    Beta8](https://blogs.msdn.microsoft.com/webdev/2015/10/15/announcing-availability-of-asp-net-5-beta8/)
10. [Project.json
    file](https://github.com/aspnet/Home/wiki/Project.json-file)
11. [Introducting ASP.NET
    vNext](http://www.hanselman.com/blog/IntroducingASPNETVNext.aspx)
12. [GitHub Release
    History: 1.0.0-alpha2](https://github.com/aspnet/Home/releases/tag/v1.0.0-alpha2)
13. [GitHub Release
    History: 1.0.0-alpha3](https://github.com/aspnet/Home/releases/tag/v1.0.0-alpha3)
14. [GitHub Release
    History: 1.0.0-alpha4](https://github.com/aspnet/Home/releases/tag/v1.0.0-alpha4)
15. [GitHub Release
    History: 1.0.0-beta1](https://github.com/aspnet/Home/releases/tag/v1.0.0-beta1)
16. [GitHub Release
    History: 1.0.0-beta2](https://github.com/aspnet/Home/releases/tag/v1.0.0-beta2)
17. [GitHub Release
    History: 1.0.0-beta3](https://github.com/aspnet/Home/releases/tag/v1.0.0-beta3)
18. [GitHub Release
    History: 1.0.0-beta4](https://github.com/aspnet/Home/releases/tag/v1.0.0-beta4)
19. [ASP.NET 5 Beta5 Now
    Available](https://blogs.msdn.microsoft.com/webdev/2015/06/30/asp-net-5-beta5-now-available/)
20. [Announcing Availability of ASP.NET 5
    beta6](https://blogs.msdn.microsoft.com/webdev/2015/07/27/announcing-availability-of-asp-net-5-beta-6/)
21. [Announcing Availability of ASP.NET 5
    Beta7](https://blogs.msdn.microsoft.com/webdev/2015/09/02/announcing-availability-of-asp-net-5-beta7/)
22. [Announcing Availability of ASP.NET 5
    Beta8](https://blogs.msdn.microsoft.com/webdev/2015/10/15/announcing-availability-of-asp-net-5-beta8/)
23. [GitHub Release
    History: 1.0.0-rc1-final](https://github.com/aspnet/Home/releases/tag/v1.0.0-rc1-final)
24. [ASP.NET 5 is dead – Introducing ASP.NET Core 1.0 and .NET
    Core 1.0](https://blogs.msdn.microsoft.com/webdev/2016/01/19/asp-net-5-is-dead-introducing-asp-net-core-1-0-and-net-core-1-0/)
25. [ASP.NET Core
    RC2](https://github.com/aspnet/Home/releases/tag/1.0.0-rc2-final)
26. [Announcing ASP.NET
    Core 1.0](https://blogs.msdn.microsoft.com/webdev/2016/06/27/announcing-asp-net-core-1-0/)
27. [ASP.NET Core, .NET Core, EF Core 1.0.1
    Updates](https://visualstudiomagazine.com/articles/2016/09/14/asp-net-dotnet-ef-core-1-0-1-updates.aspx)
28. [ASP.NET Core 1.1.0
    Preview 1](https://github.com/aspnet/Home/releases/tag/1.1.0-preview1)
29. [Announcing the Fastest ASP.NET Yet, ASP.NET Core 1.1
    RTM](https://blogs.msdn.microsoft.com/webdev/2016/11/16/announcing-asp-net-core-1-1/)
30. [Announcing ASP.NET
    Core 1.0](https://github.com/aspnet/Home/releases/tag/1.1.1)
31. [Announcing ASP.NET Core 2.0.0
    Preview 1](https://github.com/aspnet/Home/releases/tag/2.0.0-preview1)
32. [Announcing ASP.NET
    Core 2.0](https://blogs.msdn.microsoft.com/webdev/2017/08/14/announcing-asp-net-core-2-0/)