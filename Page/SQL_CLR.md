[SQL_CLR.png](https://zh.wikipedia.org/wiki/File:SQL_CLR.png "fig:SQL_CLR.png")
**SQL CLR** (SQL Common Language Runtime) 是自 SQL Server 2005
才出現的新功能，它將[.NET
Framework中的](../Page/.NET_Framework.md "wikilink")[CLR服務注入到](../Page/Common_Language_Runtime.md "wikilink")
SQL Server 中，讓 SQL Server 的部份資料庫物件可以使用 .NET Framework
的程式語言開發（目前只支援[VB.NET和](../Page/VB.NET.md "wikilink")[C\#](../Page/C♯.md "wikilink")），包括[預存程序](../Page/存储程序.md "wikilink")、[使用者自訂函數](../Page/使用者自訂函數.md "wikilink")、[觸發程序](../Page/触发器_\(数据库\).md "wikilink")、[使用者自訂型別以及](../Page/使用者自訂型別.md "wikilink")[使用者自訂彙總函數等功能](../Page/使用者自訂彙總函數.md "wikilink")\[1\]。

## 架構

SQL CLR 是利用 .NET Framework 中的 **Hosting（裝載）** 特性所實作的版本，這個功能讓 SQL Server
中可以安裝 .NET Framework 的[組件](../Page/.NET_assembly.md "wikilink")，經由實作
ADO.NET 2.0 中所開放的 `Microsoft.SqlServer.Server`
命名空間中的[.NET中介資料](../Page/.NET_metadata.md "wikilink")，來獲得
SQL Server 資料庫物件的能力：

  - 預存程序：`SqlProcedureAttribute`。
  - 使用者函數：`SqlFunctionAttribute`。
  - 觸發程序：`SqlTriggerAttribute`。
  - 使用者自訂彙總：`SqlUserDefinedAggregate`。
  - 使用者自訂型別：`SqlUserDefinedType`。

SQL CLR 的組件在發展完成後，需要使用 `CREATE ASSEMBLY` 指令將組件安裝到 SQL Server 中，然後使用相對應的
DDL 指令將組件中開放的函數引入資料庫物件中，才能在 SQL 指令中叫用。

``` sql
CREATE ASSEMBLY SQLCLRTest
FROM 'C:\MyDBApp\SQLCLRTest.dll'
WITH PERMISSION_SET = SAFE
```

## 安全性

對於 SQL Server 來說，SQL CLR 組件是一種外部程式碼，所以在 SQL Server 預設的安裝組態中，SQL CLR
是被封鎖不可以使用的，若要使用它，必須要先將它打開\[2\]：

``` sql
EXEC sp_configure 'clr enabled', 1;
```

而對於 SQL CLR 組件本身，SQL Server 也做了三重的防護\[3\]：

  - **SAFE**：只有最少的權限可以執行，不可存取外部資源與外部程式碼。
  - **EXTERNAL_ACCESS**：可以存取外部資源，像是檔案、登錄資料庫、網路資源等。
  - **UNSAFE**：可以無限制的存取外部資源，連 Win32 API 等都可以呼叫。

在大多數的情況來說，使用 SAFE 即可以正常使用組件，除非是要存取外部檔案才使用
EXTERNAL_ACCESS，只有在特殊的情況下（例如要呼叫外部的商業邏輯元件）時，才會啟用
UNSAFE 層次。

## 範例

下列範例為使用 C\# 開發 SQL Server 使用者函數的程式碼：

``` csharp
[Microsoft.SqlServer.Server.SqlFunction]
public static SqlString HashPasswordString(SqlString HashString)
{
    SHA384Managed hashAlgorithm = new SHA384Managed();
    byte[] srcPassword = System.Text.Encoding.ASCII.GetBytes(HashString.Value);
    byte[] destPassword = null;
    string hashedPasswordString = null;

    destPassword = hashAlgorithm.ComputeHash(srcPassword);
    hashedPasswordString = System.Text.Encoding.ASCII.GetString(destPassword);

    hashAlgorithm = null;
    return new SqlString(hashedPasswordString);
}
```

將組件安裝到 SQL Server 的指令碼為：

``` sql
CREATE ASSEMBLY MyAssemblyLibrary FROM 'MySQLCLR.dll' WITH PERMISSION_SET = SAFE
```

將此函數引入 SQL Server 中的 DDL 指令碼為：

``` sql
CREATE FUNCTION dbo.HashPassword
(
   @PasswordString varchar(4000)
)
RETURNS varchar(4000)
EXTERNAL NAME [MyAssemblyLibrary]。[MySQLCLR]。[HashPasswordString]
```

安裝並引入後，即可如一般的 SQL 函數方式使用：

``` sql
SELECT dbo.HashPassword('mypassword') -- 回傳 mypassword 被雜湊後的值。
```

## 參考資料

<div class="references-small">

<references />

</div>

[Category:SQL_Server](https://zh.wikipedia.org/wiki/Category:SQL_Server "wikilink")
[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")
[Category:資料庫](https://zh.wikipedia.org/wiki/Category:資料庫 "wikilink")

1.  [SQL Server CLR
    整合簡介](http://msdn.microsoft.com/zh-tw/library/ms254498.aspx)
2.  \[<http://msdn.microsoft.com/zh-tw/library/ms131048(SQL.90>).aspx
    Database Engine .NET Programming - Enabling CLR Integration\]
3.  \[<http://msdn.microsoft.com/zh-tw/library/ms345106(SQL.90>).aspx
    Database Engine .NET Programming - Creating an Assembly\]