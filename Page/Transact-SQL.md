> 本文内容由[Transact-SQL](https://zh.wikipedia.org/wiki/Transact-SQL)转换而来。


**Transact-SQL**（又稱T-SQL），是在[Microsoft SQL Server和](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")[Sybase SQL Server上的ANSI](https://zh.wikipedia.org/wiki/Sybase_SQL_Server "wikilink") [SQL](../Page/SQL.md "wikilink")實作，與[Oracle的](https://zh.wikipedia.org/wiki/Oracle "wikilink")[PL/SQL性質相近](https://zh.wikipedia.org/wiki/PL/SQL "wikilink")（不只是實作ANSI SQL，也為自身資料庫系統的特性提供實作支援），目前在Microsoft SQL Server\[1\]和Sybase Adaptive Server\[2\]中仍然被使用為核心的查詢語言。

Transact-SQL是具有批次與區塊特性的SQL指令集合，資料庫開發人員可以利用它來撰寫資料部份的商業邏輯（Data-based Business Logic），以強制限制前端應用程式對資料的控制能力。同時，它也是資料庫物件的主要開發語言。

## 語言結構

Transact-SQL以ANSI SQL為主要組成，目前Microsoft實作的Transact-SQL可支援到ANSI [SQL-92標準](https://zh.wikipedia.org/wiki/SQL-92 "wikilink")。

### ANSI SQL基礎語法支援

**DDL**

DDL（Data Definition Language）是對於資料庫物件的控制語法，對資料庫物件（如資料表，預存程序，函數或自訂型別等）的新增，修改和刪除都使用此語法。

  - CREATE（建立資料庫物件）
  - ALTER（修改資料庫物件）
  - DROP（刪除資料庫物件）

**DML**

DML（Data Manipulation Language）是一般開發人員俗稱的[CRUD](https://zh.wikipedia.org/wiki/CRUD "wikilink")（Create/Retrieve/Update/Delete）功能，意指資料的新增／擷取／修改／刪除四個功能。

  - SELECT（R）
  - INSERT（C）
  - UPDATE（U）
  - DELETE（D）

**DCL**

DCL（Data Control Language）是由資料庫所提供的保安功能，對於資料庫與資料庫物件的存取原則與權限，都由DCL定義之。

  - GRANT（賦與權限）
  - REVOKE（撤消權限）

### 批次

Transact-SQL可以使用分號";"來分割不同的SQL指令。例如：

``` sql
INSERT INTO myTable (myText) VALUES (@myText); SELECT @@IDENTITY
```

### 控制流語法

Transact-SQL可支援下列的控制流程語法（control-flow）：

1.  BEGIN ... END，標示SQL指令區塊，使用BEGIN ... END包裝的指令會被視為同一個指令區塊。
2.  IF ... ELSE的條件式，並可支援巢狀式的IF判斷式，若IF或ELSE中的指令包含兩個以上，則必須要使用BEGIN ... END來標示區塊，否則會發生語法檢查錯誤。
3.  WHILE迴圈，這也是Transact-SQL中唯一支援的迴圈，迴圈中的指令要用BEGIN...END包裝。
4.  RETURN，可強制終止區塊的執行。
5.  WAITFOR，可強制讓陳述式等待指定時間後才繼續執行。
6.  GOTO，可導向執行指令到指定的位置。

### 自訂變數

在Transact-SQL中，可以利用DECLARE來宣告變數，用SET來設定變數值，用SELECT @var = column的方式，由一個陳述式的回傳值中來取得變數值。

``` sql
DECLARE @v int -- declare a variable
SET @v = 50 -- set variable directly.
SELECT @v = SUM(Qty) FROM SaleItemRecords WHERE SaleID = 53928 -- set variable from a result of statement
```

### 錯誤處理

Transact-SQL可以在區塊中使用下列方式來處理或引發錯誤：

1.  RAISERROR，擲出自訂的錯誤狀況。
2.  TRY ... CATCH，使用結構化的方式來處理錯誤（只有Microsoft SQL Server實作的Transact-SQL支援）。
3.  PRINT，可以印出變數值。

## 開發與管理工具

Transact-SQL通常會使用由SQL Server或Adaptive Server提供的查詢工具，像是：

  - SQL Server Query Analyzer（SQL Server 2000, 7.0, 6.5）
  - SQL Server Management Studio（SQL Server 2008（也可用Visual Studio）, 2005）
  - osql.exe，SQL Server 2000, 7.0的命令列SQL工具。
  - sqlcmd.exe，SQL Server 2005的命令列SQL工具

## 參考資料

<div class="references-small">

<references />

</div>

{{-}}

[Category:SQL](https://zh.wikipedia.org/wiki/Category:SQL "wikilink") [Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink") [Category:Sybase](https://zh.wikipedia.org/wiki/Category:Sybase "wikilink")

1.  [Transact-SQL Reference](http://msdn.microsoft.com/zh-tw/library/bb510741.aspx)
2.  [Sybase Transact-SQL User's Guide](http://infocenter.sybase.com/help/index.jsp?topic=/com.sybase.help.ase_15.0.sqlug/html/sqlug/title.htm)