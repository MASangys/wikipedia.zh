**Microsoft SQL Server Express**是[微软](../Page/微软.md "wikilink")公司所開發的[关系数据库](../Page/关系数据库.md "wikilink")產品[SQL Server的免費下載版本](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")，可自由下載、分發（需經註冊）及使用。這個版本的設計是專門為[嵌入式系统](../Page/嵌入式系统.md "wikilink")或較小型的程式而設計。本產品可遡源至過往隨同SQL Server 2000軟件分發的[Microsoft Database Engine (MSDE)](https://zh.wikipedia.org/wiki/MSDE "wikilink")，用以讓程式開發者在其測試其程式時建立一個系統需求較低的測試環境。自SQL Server 2005開始，本產品改用現時的名稱。

它繼承了多數的SQL Server功能與特性，像是[Transact-SQL](../Page/Transact-SQL.md "wikilink")、[SQL CLR等](../Page/SQL_CLR.md "wikilink")，相當適合使用在小型的網站，或者是小型的桌面型應用程式，它也可以和 SQL Server 整合，作為（Replication）的訂閱端。

## 功能与限制

SQL Server Express提供了付費的完整版本的多項功能\[1\]，然而其技術限制使之無法適用於大規模的部署。這兩個版本的差異在於：

  - 資料庫的大小限制：对SQL Server 2008 R2 Express、SQL Server 2012 Express、SQL Server 2014 Express、SQL Server 2016 Express单个資料庫的大小限制最大為 10 GB\[2\]；而在較早期的SQL Server 2005 Express 和SQL Server 2008 Express 上，单个資料庫的大小限制最大為4 GB。即使如此，亦已比最初MSDE版本的2 GB要多。而且這個大小的限制只有在資料檔案上，交易記錄檔則不受此限。
  - 沒有 [SQL Agent服务](https://zh.wikipedia.org/wiki/SQL_Agent "wikilink")\[3\]\[4\]：若要做排程服務必須自己寫程式。
  - 硬體方面的人為限制：
      - 允許在多核心的電腦上使用，但只會使用一個CPU核心來運算\[5\]。這在具有多核心CPU的電腦上會造成浪費。MSDE 最高可以支援二顆 CPU核心。
      - 可使用的記憶體量最高只有 1GB。而全功能标准版至少使用4GB内存。

[MSDE有一个并发工作负债监控器并限制在少量用户并发访问](https://zh.wikipedia.org/wiki/MSDE "wikilink")，SQL Server Express没有这个并发限制\[6\]。

SQL Server Express包括了几个数据库管理的图形用户界面工具：

  - [SQL Server Management Studio](../Page/SQL_Server_Management_Studio.md "wikilink") - since 2012 SP1;\[7\] before that, only a stripped-down version called *SQL Server Management Studio Express* is provided
  - [SQL Server Configuration Manager](https://zh.wikipedia.org/wiki/SQL_Server_Configuration_Manager "wikilink")
  - [SQL Server Surface Area Configuration tool](https://zh.wikipedia.org/wiki/SQL_Server_Surface_Area_Configuration_tool "wikilink")
  - SQL Server [Business Intelligence Development Studio](https://zh.wikipedia.org/wiki/Business_Intelligence_Development_Studio "wikilink")

MSDE 沒有管理介面

SQL Server Express不包括全功能标准版的几个工具：

  -
  -
  -
SQL Server Express的各版本是可以远程连接的，但需要用户做一定的配置。

## 過往版本

<table>
<caption>Microsoft SQL Server Express Version History</caption>
<thead>
<tr class="header">
<th><p>版本號碼</p></th>
<th><p>發行日期</p></th>
<th><p>主流支援完結日期</p></th>
<th><p>延伸支援完結日期</p></th>
<th><p>支援作業系統</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>SQL Server 2005 Express Edition</p></td>
<td><p>2005-11-07[8]</p></td>
<td><p>2011-04-12[9]</p></td>
<td><p>2016-04-12[10]</p></td>
<td><p>Windows 2000 Service Pack 4, Windows XP Service Pack 2, Windows Server 2003 Service Pack, Windows 7 Service Pack 1 (only SQL Server 2005 Express Edition SP4)[11]</p></td>
</tr>
<tr class="even">
<td><p>SQL Server 2008 Express</p></td>
<td><p>2009-02-08[12]</p></td>
<td><p>2014-07-08[13]</p></td>
<td><p>2019-07-09[14]</p></td>
<td><p>Windows XP Service Pack 2, Windows XP Service Pack 3, Windows Vista, Windows Vista Service Pack 1, Windows Server 2003 Service Pack 2, Windows Server 2008[15]</p></td>
</tr>
<tr class="odd">
<td><p>SQL Server 2008 R2 Express</p></td>
<td><p>2010-04-16[16]</p></td>
<td><p>2014-07-08[17]</p></td>
<td><p>2019-07-09[18]</p></td>
<td><p>Windows XP, Windows Vista, Windows 7, Windows 8, Windows Server 2003, Windows Server 2008, Windows Server 2008 R2, Windows Server 2012, Windows Server 2012 R2[19]</p></td>
</tr>
<tr class="even">
<td><p>SQL Server 2012 Express</p></td>
<td><p>2012-05-14[20]</p></td>
<td><p>2017-07-11[21]</p></td>
<td><p>2022-07-12[22]</p></td>
<td><p>Windows Vista Service Pack 2, Windows 7, Windows 7 Service Pack 1, Windows 8, Windows 8.1, Windows Server 2008,[23] Windows Server 2008 R2, Windows Server 2008 R2 SP1, Windows Server 2012, Windows Server 2012 R2[24]</p></td>
</tr>
<tr class="odd">
<td><p>SQL Server 2014 Express</p></td>
<td><p>2014-04-01[25]</p></td>
<td><p>2019-07-09[26]</p></td>
<td><p>2024-07-09[27]</p></td>
<td><p>Windows 7 Service Pack 1, Windows 8, Windows 8.1, Windows 10, Windows Server 2008 SP2,[28] Windows Server 2008 R2 SP1, Windows Server 2012, Windows Server 2012 R2[29]</p></td>
</tr>
<tr class="even">
<td><p>SQL Server 2016 Express</p></td>
<td><p>2016-06-01[30]</p></td>
<td><p>2021-07-13[31]</p></td>
<td><p>2026-07-14[32]</p></td>
<td><p>Windows 8, Windows 8.1, Windows 10, Windows Server 2012, Windows Server 2012 R2, Windows Server 2016</p></td>
</tr>
<tr class="odd">
<td><p>SQL Server 2017 Express</p></td>
<td><p>2017-09-29[33]</p></td>
<td><p>2022-10-11[34]</p></td>
<td><p>2027-10-12[35]</p></td>
<td><p>Windows 8, Windows 8.1, Windows 10, Windows Server 2012, Windows Server 2012 R2, Windows Server 2016*,<br />
Red Hat Enterprise Linux 7.3 or 7.4, SUSE Enterprise Linux Server v12 SP2, Ubuntu 16.04LTS,<br />
Docker Engine 1.8+ (on Windows, Mac, or Linux)</p></td>
</tr>
</tbody>
</table>

  - 並不包括 Windows Server 2016 "Essentials" Edition

### 安裝版本

至於在SQL Server Express 2017，這個產品的下載有三款安裝版本：

  - 標準的SQL Server Express 2017
  - 高級版本（with Advanced Services）：包括有[Reporting services及全文檢索](../Page/SQL_Server_Reporting_Services.md "wikilink")（在舊版本均包括在標準安裝版本內）
  - 連同LocalDB：比標準版本更輕便的數據庫。

## 資料庫管理工具

  - [Navicat for SQL Server](http://www.navicat.com/cht/download/navicat-for-sqlserver) 是一套付費軟體，專為 Microsoft SQL Server 設計的強大資料庫管理及開發工具。它可以用於任何版本的 SQL Server 資料庫（包括SQL Server Express\[36\]），並支援大部份 SQL Server 的功能，包括觸發器、索引、檢視等。

## 工具

  - SQL Server Management Studio Express，可用來管理 SQL Server Express 實體。
  - SQL Server Reporting Service Express，簡易版的 SQL Server Reporting Service。
  - SQL Server Configuration Manager，可用來管理 SQL Server Express 的連線組態與服務。
  - Business Intelligence Development Studio Express，可用來開發 Reporting Service Express 的報表。

## 编程接口

以ADO.Net为例：

``` C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Connection
{
    class Program
    {
        static void Main(string[] args)
        {
            //构造连接字符串
            SqlConnectionStringBuilder connStr = new SqlConnectionStringBuilder();
            connStr.DataSource = @".\SQLEXPRESS";
            connStr.InitialCatalog = "master";
            connStr.IntegratedSecurity = true;

            SqlConnection conn = new SqlConnection();//创建连接对象
            conn.ConnectionString = connStr.ConnectionString;//设置连接字符串

            conn.Open();//打开连接

            if(conn.State == ConnectionState.Open)
            {
                Console.WriteLine("Database is linked.");
                Console.WriteLine("\nDataSource:{0}",conn.DataSource);
                Console.WriteLine("Database:{0}",conn.Database);
                Console.WriteLine("ConnectionTimeOut:{0}",conn.ConnectionTimeout);
            }

            conn.Close();//关闭连接
            conn.Dispose();//释放资源

            if(conn.State == ConnectionState.Closed)
            {
                Console.WriteLine("\nDatabase is closed.");
            }

            Console.Read();
        }
    }
}
```

## 參考資料

## 參看

  - [SQL Server Management Studio](../Page/SQL_Server_Management_Studio.md "wikilink")（SSMS）

## 外部連結

  - [Microsoft SQL Server Express downloads](https://www.microsoft.com/en-us/search/DownloadsDrillInResults.aspx?q=sql+server+express&cateorder=1_5_2_3_11&site=)
  - [Microsoft SQL Server Express documentation](https://msdn.microsoft.com/library/bb545450.aspx)
  - [SQL Server 2012 Comparison of features by edition](http://msdn.microsoft.com/en-us/library/cc645993%28v=SQL.110%29.aspx)
  - [SQL Server Express WebLog](http://blogs.msdn.com/sqlexpress/)
  - [MSDN上的支援群組](https://social.msdn.microsoft.com/Forums/en-US/home?forum=sqlexpress)
  - [Hardware and Software Requirements for Installing SQL Server 2012](https://msdn.microsoft.com/en-us/library/ms143506%28v=sql.110%29.aspx)
  - \[<https://msdn.microsoft.com/en-us/library/ms143506(v=sql.120>).aspx Hardware and Software Requirements for Installing SQL Server 2014\]

[Category:微軟伺服器技術](https://zh.wikipedia.org/wiki/Category:微軟伺服器技術 "wikilink") [Category:微软数据库软件](https://zh.wikipedia.org/wiki/Category:微软数据库软件 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.

10.
11.

12.

13.

14.
15.

16.

17.

18.
19.

20.

21.

22.
23.

24.

25.

26.

27.
28.

29.

30.

31.

32.
33.

34.

35.
36.