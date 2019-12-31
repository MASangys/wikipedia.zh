> 本文内容由[Entity Framework Core](https://zh.wikipedia.org/wiki/Entity_Framework_Core)转换而来。


**Entity Framework Core** 是微軟新一代的物件關聯對應 (ORM) 框架，以 [.NET Core](../Page/.NET_Core.md "wikilink") 實作，不過它是歸屬於 [ASP.NET Core](../Page/ASP.NET_Core.md "wikilink") 專案的一部份，在 ASP.NET Core 開始開發時就被列入標準功能，與現行的 [Entity Framework](../Page/Entity_Framework.md "wikilink") 一樣，是微軟官方建議使用的資料存取功能，但 [.NET Core](../Page/.NET_Core.md "wikilink") 成功移植 [ADO.NET](../Page/ADO.NET.md "wikilink") 基礎類別庫 System.Data 之後，開發人員仍能使用 ADO.NET 作為資料存取的解決方案。

## 核心功能

Entity Framework Core 基本上以 ORM 架構為主，延續 Entity Framework 的作法發展，但 Entity Framework Core 不再支援 Database First 與 Model First 模式，而僅支援 Code First 模式，亦即使用程式碼來處理 Model 以及資料庫綱要對應的工作。

Entity Framework Core 1.0.0 目前支援下列功能 \[1\]：

  - 資料庫塑模 (Modeling)：使用 POCO 方式建立 Model 與其關聯性、影子狀態 (Shadow State) 屬性維護、唯一性限制與索引、內建轉換、模型驗證、鍵值自動產生與關聯-表格對應等。
  - 變更追踪 (Change Tracking)：快照式變更追踪、存取已追踪的狀態與附加已解除附加的資料項目或物件結構 (graph)。
  - 儲存功能 (Save Changes)：基本資料儲存功能、樂觀式鎖定、非同步變更儲存、交易能力與批次處理。
  - 查詢 (Query)：基本 [LINQ](https://zh.wikipedia.org/wiki/LINQ "wikilink") 的支援、混合式主從架構評估、關閉追踪功能、早期載入、非同步查詢、基本 BCL 函式的轉換與 SQL 指令的執行。
  - 資料庫綱要管理 (Database Schema Management)：資料庫建立與刪除的 API 支援、資料庫錯誤頁面 (由 ASP.NET Core 提供) 與關聯性資料庫移轉等。

目前正在實作中的有：

  - 資料庫塑模 (Modeling)：資料標記 (Entity Framework 時代的 Data Annotations) 與 TPH 繼承模式。
  - 分工的品質 (Cross-cutting quality)：文件、Intellisense 文件與 API 檢閱。
  - 效能 (Performance)：額外的效能覆蓋與效能增進。
  - 查詢 (Query)：對關聯屬性的查詢轉換。
  - 資料庫的反向工程 (類似於 EF 的 Database First)。
  - 穩定化對 Mac 與 Linux 的功能。
  - 新的資料提供者。

在 1.0.0 內計畫的功能有：

  - 設計時期脈絡 (context) 的發現與載入。
  - 部署能力。
  - 串聯式刪除。
  - 記錄功能。

## 資料提供者

Entity Framework Core 支援下列資料提供者 \[2\]：

1.  [SQL Server](https://zh.wikipedia.org/wiki/SQL_Server "wikilink")

2.  [SQLite](../Page/SQLite.md "wikilink")

3.  In-Memory (記憶體內資料庫)，可供不需要存取到關聯性資料庫的測試工作。

4.  [PostgreSQL](../Page/PostgreSQL.md "wikilink")

5.
6.  IBM 資料庫伺服器

7.  [MySQL](../Page/MySQL.md "wikilink")

## 開發方式

Entity Framework Core 的開發方式與原有 [Entity Framework](../Page/Entity_Framework.md "wikilink") 不同的是，Entity Framework Core 不再支援以 UI 為主的資料庫組態 (這是為了要適應 Linux 與 Mac 的開發環境)，且不論是何種模式 (Database First / Code First)，都是以程式碼為主的環境對應，不再有 EDMX (Entity Framework Metadata) 存在，為達成這個目標，Entity Framework 提供了 Scaffold-Database 指令 (於 Package Management Console 中執行)，允許開發人員由資料庫來產生 Model 的程式碼。

``` powershell
Scaffold-DbContext "'Server=(localdb)\mssqllocaldb;Database=Blogging;Trusted_Connection=True;''" Microsoft.EntityFrameworkCore.SqlServer
```

原本 Entity Framework 現有的資料模型同步指令 Add-Migration 與 Update-Database 在 Entity Framework Core 仍然支援，包含前述的 Scaffold-Database 指令，都被包裝在 Microsoft.EntityFrameworkCore.Tools 套件內，可以由 Package Management Console 中執行 Install-Package 安裝它，或是直接編輯 project.json 將它加入相依套件，然後再於 project.json 中加入工具的相關設定：

``` json numberLines
  "tools": {
    "Microsoft.EntityFrameworkCore.Tools": {
      "version": "1.0.0-preview1-final",
      "imports": [
        "portable-net45+win8+dnxcore50",
        "portable-net45+win8"
      ]
    }
```

若是使用 Scaffold-Database 指令探測資料庫時，除了 Model 會自動產生外，也會一併產生 DbContext 類別的衍生程式，作為連結資料庫的入口，若是由新資料庫，或是未使用 Scaffold-Database 指令的話，就要自行撰寫這個類別。

``` c# numberLines
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace EFGetStarted.AspNetCore.ExistingDb.Models
{
    public partial class BloggingContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Blog>(entity =>
            {
                entity.Property(e => e.Url).IsRequired();
            });

            modelBuilder.Entity<Post>(entity =>
            {
                entity.HasOne(d => d.Blog)
                    .WithMany(p => p.Post)
                    .HasForeignKey(d => d.BlogId);
            });
        }

        public virtual DbSet<Blog> Blog { get; set; }
        public virtual DbSet<Post> Post { get; set; }
    }
}
```

就可以使用 DbContext 來操作資料庫了，之後的部份就和 Entity Framework 差異不大。

若是 ASP.NET Core，則需再到 ASP.NET Core 的起始類別 (例如 Startup.cs)，將 Entity Framework Core 的 DbContext 加到 Dependency Injection 裡面。

``` c# numberLines
public void ConfigureServices(IServiceCollection services)
{
    var connection = @"Server=(localdb)\mssqllocaldb;Database=Blogging;Trusted_Connection=True;";
    services.AddDbContext<BloggingContext>(options => options.UseSqlServer(connection));
    // ...
}
```

之後就可以由 Controller 取得這個 DbContext 進行資料存取的動作了，例如：

``` c# numberLines
using EFGetStarted.AspNetCore.ExistingDb.Models;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace EFGetStarted.AspNetCore.ExistingDb.Controllers
{
    public class BlogsController : Controller
    {
        private BloggingContext _context;

        public BlogsController(BloggingContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            return View(_context.Blog.ToList());
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Blog blog)
        {
            if (ModelState.IsValid)
            {
                _context.Blog.Add(blog);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(blog);
        }

    }
}
```

## 參考

[Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink") [Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink") [Category:ADO.NET](https://zh.wikipedia.org/wiki/Category:ADO.NET "wikilink")

1.  [Roadmap](https://github.com/aspnet/EntityFramework/wiki/Roadmap)
2.  [Database Providers](https://docs.efproject.net/en/latest/providers/index.html)