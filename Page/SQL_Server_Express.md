**Microsoft SQL Server
Express**是[微软公司所開發的](../Page/微软.md "wikilink")[关系数据库產品](../Page/关系数据库.md "wikilink")[SQL
Server的免費下載版本](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")，可自由下載、分發（需經註冊）及使用。這個版本的設計是專門為[嵌入式系统或較小型的程式而設計](../Page/嵌入式系统.md "wikilink")。本產品可遡源至過往隨同SQL
Server 2000軟件分發的[Microsoft Database Engine
(MSDE)](https://zh.wikipedia.org/wiki/MSDE "wikilink")，用以讓程式開發者在其測試其程式時建立一個系統需求較低的測試環境。自SQL
Server 2005開始，本產品改用現時的名稱。

它繼承了多數的SQL
Server功能與特性，像是[Transact-SQL](../Page/Transact-SQL.md "wikilink")、[SQL
CLR等](../Page/SQL_CLR.md "wikilink")，相當適合使用在小型的網站，或者是小型的桌面型應用程式，它也可以和
SQL Server 整合，作為（Replication）的訂閱端。

## 功能与限制

SQL Server Express提供了付費的完整版本的多項功能\[1\]，然而其技術限制使之無法適用於大規模的部署。這兩個版本的差異在於：

  - 資料庫的大小限制：对SQL Server 2008 R2 Express、SQL Server 2012 Express、SQL
    Server 2014 Express、SQL Server 2016 Express单个資料庫的大小限制最大為
    10 GB\[2\]；而在較早期的SQL Server 2005 Express 和SQL Server 2008
    Express
    上，单个資料庫的大小限制最大為4 GB。即使如此，亦已比最初MSDE版本的2 GB要多。而且這個大小的限制只有在資料檔案上，交易記錄檔則不受此限。
  - 沒有 [SQL
    Agent服务](https://zh.wikipedia.org/wiki/SQL_Agent "wikilink")\[3\]\[4\]：若要做排程服務必須自己寫程式。
  - 硬體方面的人為限制：
      - 允許在多核心的電腦上使用，但只會使用一個CPU核心來運算\[5\]。這在具有多核心CPU的電腦上會造成浪費。MSDE
        最高可以支援二顆 CPU核心。
      - 可使用的記憶體量最高只有 1GB。而全功能标准版至少使用4GB内存。

[MSDE有一个并发工作负债监控器并限制在少量用户并发访问](https://zh.wikipedia.org/wiki/MSDE "wikilink")，SQL
Server Express没有这个并发限制\[6\]。

SQL Server Express包括了几个数据库管理的图形用户界面工具：

  - [SQL Server Management
    Studio](../Page/SQL_Server_Management_Studio.md "wikilink") - since
    2012 SP1;\[7\] before that, only a stripped-down version called *SQL
    Server Management Studio Express* is provided
  - [SQL Server Configuration
    Manager](https://zh.wikipedia.org/wiki/SQL_Server_Configuration_Manager "wikilink")
  - [SQL Server Surface Area Configuration
    tool](https://zh.wikipedia.org/wiki/SQL_Server_Surface_Area_Configuration_tool "wikilink")
  - SQL Server [Business Intelligence Development
    Studio](https://zh.wikipedia.org/wiki/Business_Intelligence_Development_Studio "wikilink")

MSDE 沒有管理介面

SQL Server Express不包括全功能标准版的几个工具：

  -
  -
  -
SQL Server Express的各版本是可以远程连接的，但需要用户做一定的配置。

## 授權範圍(來自MicroSoft) 注意 它不是完全免費的

軟體係授權使用，而非出售賣斷。本合約僅提供貴用戶使用軟體的部分權利。Microsoft
保留所有其他權利。除非相關法律賦予貴用戶超出本合約限制的其他權利，否則貴用戶僅得在本合約明示許可之範圍內使用軟體。因此，貴用戶必須遵守只允許以特定方式使用軟體的科技保護措施。[貴用戶不得](https://zh.wikipedia.org/wiki/貴用戶不得 "wikilink")

1.  在未取得 Microsoft 事先書面同意前，將軟體之基準測試結果揭露予第三人；
2.  規避軟體中所包含的科技保護措施；
3.  對軟體進行還原工程、解編或反向組譯，但相關法律明文允許或禁止此種限制者，不在此限。
4.  為軟體製作的拷貝數量超過本合約所明定之數量，或相關法律所許可之數量。
5.  將軟體發布給其他人進行複製；
6.  出租、租賃或出借軟體；

貴用戶**得使用軟體提供商業軟體主機服務**，但必須遵守下列條款： (引用自SQL Server Express 2017安裝軟體授權條款)
i. 　貴用戶承擔全部責任。如果　貴用戶將軟體用於商業主機服務用途，則　貴用戶最終使用者的所有軟體使用，　貴用戶須負全部法律責任。 ii.
賠償。若因下列因素而使 Microsoft 遭他人提出索賠要求，　貴用戶應對 Microsoft
負法律責任及賠償責任：(1)　貴用戶未能正確安裝軟體；(2)
因　貴用戶而造成之軟體病毒感染；(3)　貴用戶違反本合約之條款；(4) 使用者
(或任何對使用者提供服務之第三方) 未經授權而進行之安裝、使用、存取、複製、重製、散布本軟體任何部分的行為。
iii.
不得用於高風險用途。此軟體不具有容錯功能，亦不保證完全不含錯誤，或可在無中斷的狀況下運作。就任何應用或使用情境而言，若軟體發生故障可能會導致死亡、重大人身傷害、嚴重實體或環境損害
(以下合稱「高風險用途」)，　貴用戶即不得授權將軟體使用於此等用途或情境。高風險用途的範例包含但不限於：飛行器或其他模式之人為大眾運輸、核能或化學設施、維生系統、植入式醫療設備、汽車或武器系統之控制。高風險用途並不包括發生故障時不致造成個人傷亡或嚴重實體或環境傷害的使用行為；例如將軟體用於管理目的、儲存組態資料、工程及/或組態工具，或者是其他非控制性的應用狀況。此等非控制性的應用，可以與執行控制事項的應用相互通訊，但不得直接或間接負責進行控制功能。若因最終使用者將軟體使用於與高風險用途相關的應用，而使
Microsoft 遭第三方提出索賠要求時，　貴用戶應賠償 Microsoft 的損失並使之免遭損害。 iv. 遵守授權要件。　貴用戶必須
(1) 告知擁有軟體存取權的個人，此軟體是由 Microsoft 所授權，同時 (2)
對擁有軟體存取權的這些個人，以程度至少相當於本合約條款規定的軟體保護條款加以約束。　貴用戶應採取商業上合理的努力，預防任何未經授權的軟體散布、複製、使用或盜版行為。

## 版本

<table>
<caption>Microsoft SQL Server Express Version History</caption>
<thead>
<tr class="header">
<th><p>Version</p></th>
<th><p>Release date</p></th>
<th><p>Mainstream Support End Date</p></th>
<th><p>Extended Support End Date</p></th>
<th><p>Supported Operating Systems</p></th>
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

  - Does not include Windows Server 2016 "Essentials" Edition

## 資料庫管理工具

  - [Navicat for SQL
    Server](http://www.navicat.com/cht/download/navicat-for-sqlserver)
    是一套專為 Microsoft SQL Server 設計的強大資料庫管理及開發工具。它可以用於任何版本的 SQL Server
    資料庫，並支援大部份 SQL Server 的功能，包括觸發器、索引、檢視等。

## 工具

  - SQL Server Management Studio Express，可用來管理 SQL Server Express 實體。
  - SQL Server Reporting Service Express，簡易版的 SQL Server Reporting
    Service。
  - SQL Server Configuration Manager，可用來管理 SQL Server Express 的連線組態與服務。
  - Business Intelligence Development Studio Express，可用來開發 Reporting
    Service Express 的報表。

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

## 外部連結

  - [Microsoft SQL Server Express
    downloads](https://www.microsoft.com/en-us/search/DownloadsDrillInResults.aspx?q=sql+server+express&cateorder=1_5_2_3_11&site=)
  - [Microsoft SQL Server Express
    documentation](https://msdn.microsoft.com/library/bb545450.aspx)
  - [SQL Server 2012 Comparison of features by
    edition](http://msdn.microsoft.com/en-us/library/cc645993%28v=SQL.110%29.aspx)
  - [SQL Server Express WebLog](http://blogs.msdn.com/sqlexpress/)
  - [Hardware and Software Requirements for Installing SQL
    Server 2012](https://msdn.microsoft.com/en-us/library/ms143506%28v=sql.110%29.aspx)
  - \[<https://msdn.microsoft.com/en-us/library/ms143506(v=sql.120>).aspx
    Hardware and Software Requirements for Installing SQL Server 2014\]

[Category:微軟伺服器技術](https://zh.wikipedia.org/wiki/Category:微軟伺服器技術 "wikilink")
[Category:微软数据库软件](https://zh.wikipedia.org/wiki/Category:微软数据库软件 "wikilink")

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