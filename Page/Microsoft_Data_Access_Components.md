**Microsoft Data Access Components**（**MDAC**）是微軟專門為[資料存取](../Page/資料存取.md "wikilink")功能而發展的應用程式開發介面，做為微軟的統一化資料存取（Universal Data Access; UDA）解決方案的核心組成，最初的版本在1996年8月發表。目前其組成元件有[ODBC](../Page/ODBC.md "wikilink")，[OLE DB以及](../Page/OLE_DB.md "wikilink")[ADO](../Page/ADO.md "wikilink")，其中[ADO](../Page/ADO.md "wikilink")是在[Visual Basic上唯一的資料存取管道](../Page/Visual_Basic.md "wikilink")，而OLE DB則是基於[COM之上](https://zh.wikipedia.org/wiki/COM "wikilink")，供C/C++存取與提供資料的介面，ODBC則是統一化的資料存取API。

## 体系架构

MDAC体系架构可视作三层：

1.  编程界面层：包括[ADO](../Page/ADO.md "wikilink")与[ADO.NET](../Page/ADO.NET.md "wikilink")
2.  数据库访问层，由数据库制造商开发，如：Oracle或Microsoft的OLE DB、.NET managed providers、ODBC drivers
3.  数据库自身。

开发者还能直接写程序访问OLE DB或ODBC。

## 組成元件

MDAC中包含了下列的元件：

### SQL Server用戶端網路函式庫

SQL Server Network Client Library（在SQL Server 2005時由SQL Native Client取代）是要連接SQL Server所必要的用戶端函式庫，提供必要的資料流轉譯的支援，並作為OLE DB Provider for SQL Server, ODBC SQL Server Driver, SQL Server .NET Provider等資料提供者的底層通訊函式庫。

### ADO

為以[COM為基礎所開發的資料存取元件](https://zh.wikipedia.org/wiki/COM "wikilink")，供高階程式語言使用，像是[腳本語言](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")（Scripting Language）或是[Visual Basic](../Page/Visual_Basic.md "wikilink")，目前已被[Microsoft Windows平台上的開發人員廣為採用](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，它向上提供數個物件類別供應用程式呼叫，向下則是呼叫OLE DB所提供的介面，因此資料庫必須要有OLE DB Provider，才可以由ADO呼叫，這個機制在[.NET Framework中的](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")[ADO.NET](../Page/ADO.NET.md "wikilink")中也持續採用。

### OLE DB

OLE DB是作為由資料來源中撈取資料並接受來自ADO的指令來提供資料的介面，此介面是由COM規格所開發，同時也可以直接由C/C++來存取。

### ODBC

ODBC（Open Database Connectivity）是由SQL Access Group，X/Open（目前為The Open Group的一部份）以及ISO/EIC所提出的Call Level Interface（CLI，呼叫層次介面）介面規格\[1\]，由微軟開發出第一份ODBC的實作，每一個資料庫都可以實作出連結自家資料來源的ODBC驅動程式（Driver），而應用程式開發人員能夠利用ODBC所開放的API呼叫，經由ODBC Driver來進入資料庫進行存取以及處理工作。

### Jet資料庫工具

微軟特別為Microsoft Jet的資料庫提供了兩個重要的元件：

  - **ADOX**：可由開發人員經由封裝在ADOX中的DDL和DCL能力來對[Microsoft Access資料庫執行資料庫物件的修改以及權限上的控制](../Page/Microsoft_Access.md "wikilink")。
  - **JRO**：可由開發人員經由封裝在JRO中的物件，對Microsoft Access資料庫執行複製，修補與壓縮等工作。

### 曾內含在MDAC中的元件

  - **Embedded SQL/C（ESQL/C）**：在C語言中內嵌SQL，送到資料庫中執行，ESQL/C在SQL Server 7.0起終止。
  - **RDO（Remote Data Object）**：為提供網路資料存取所開發的元件，當時ADO尚未成熟，目前已由ADO取代。
  - **DAO（Data Access Object）**：為早期Microsoft Access的官方API，但目前已由ADO取代，其DDL功能也由ADOX所取代。
  - **DB-Library**：為C語言直接存取SQL Server的專屬低階介面，在SQL Server 2005起終止支援。

## 版本列表

微軟提供了兩個方法來檢查電腦中所安裝的MDAC版本為何，其中一個方法是使用ADO.NET [Component Checker](https://web.archive.org/web/20050923094302/http://download.microsoft.com/download/8/4/7/8479c13c-aacd-4b79-bc1b-d64c683191a7/cc_pkg.exe)程式，它可以檢查每個MDAC所安裝的DLL版本；另一個方法是檢查登錄資料庫機碼：`HKEY_LOCAL_MACHINE\Software\Microsoft\DataAccess\FullInstallVer`

<table style="width:85%;">
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 40%" />
<col style="width: 15%" />
<col style="width: 10%" />
</colgroup>
<thead>
<tr class="header">
<th><p><strong>版本</strong></p></th>
<th><p><strong>釋出日期</strong></p></th>
<th><p><strong>散布方法</strong></p></th>
<th><p><strong>功能</strong></p></th>
<th><p><strong>安全漏洞</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.0</p></td>
<td><p>1996/8</p></td>
<td><ul>
<li>ADC – IIS 3.0</li>
<li>OLE DB 1.1 SDK（OLE DB 1.1 and ADO 1.0） - Visual Studio</li>
<li>所有的元件都包含在Visual Interdev 1.0與ASP 1.0（released in IIS 3.0）</li>
</ul></td>
<td><ul>
<li>ODBC 3.0</li>
<li>OLE DB 1.1</li>
<li>ADO 1.0</li>
<li>ADC 1.0</li>
<li>Access/Jet, SQL Server與Oracle databases的ODBC Driver</li>
</ul></td>
<td><p>無</p></td>
</tr>
<tr class="even">
<td><p>1.5</p></td>
<td><p>1997/9-1998/3</p></td>
<td><ul>
<li>Microsoft Internet Explorer 4.0</li>
<li>Internet Client SDK 4.0（from CD issued at Microsoft PDC）</li>
<li>ODBC 3.5</li>
<li>OLE DB 1.5</li>
<li>ADO 1.5</li>
<li>RDS 1.5（superseded ADC 1.0）</li>
</ul></td>
<td><ul>
<li></li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.5a</p></td>
<td><p>1997/9-1998/3</p></td>
<td><ul>
<li>Microsoft網站</li>
</ul></td>
<td><p>服務釋出版（Service Release）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.5b</p></td>
<td><p>1997/9-1998/3</p></td>
<td><ul>
<li><a href="../Page/Windows_NT_4.0.md" title="wikilink">Windows NT 4.0</a> Option Pack</li>
<li><a href="../Page/Microsoft_Office.md" title="wikilink">Microsoft Office</a> 97</li>
</ul></td>
<td><p>服務釋出版（Service Release）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.5c</p></td>
<td><p>1997/9-1998/3</p></td>
<td><ul>
<li>Microsoft網站</li>
</ul></td>
<td><ul>
<li>修補ADO使用執行緒與ODBC連線池的問題。</li>
<li>隨MDAC/ADO執行期函式庫散布。</li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.0</p></td>
<td><p>1998/7/1</p></td>
<td><ul>
<li>Visual Studio 98</li>
<li>Data Access 2.0 SDK</li>
<li>ODBC 3.5 SDK</li>
<li>OLE DB 1.5 SDK</li>
<li>OLE DB for OLAP規格</li>
</ul></td>
<td><ul>
<li></li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.0SP1</p></td>
<td><p>1998/7/1</p></td>
<td><ul>
<li>Windows NT 4.0 SP4</li>
</ul></td>
<td><p>Windows NT 4.0的Y2K修正</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.0SP2</p></td>
<td><p>1998/7/1</p></td>
<td><ul>
<li>Microsoft網站</li>
</ul></td>
<td><p>所有平台的Y2K修正</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.1</p></td>
<td><p>1998/7/11</p></td>
<td><ul>
<li>SQL Server 7.0</li>
<li>SQL Server 6.5 SP5</li>
</ul></td>
<td><ul>
<li>ADO 2.1</li>
<li>RDS 2.1</li>
<li>OLE DB 2.1</li>
<li>OLE DB Provider for ODBC, SQL Server and Oracle</li>
<li>JRO 2.1</li>
<li>ODBC driver</li>
<li>Jet driver</li>
<li>RDO</li>
</ul></td>
<td><ul>
<li></li>
</ul></td>
</tr>
<tr class="even">
<td><p>2.1 SP1</p></td>
<td><p>1999/3/15</p></td>
<td><ul>
<li>Internet Explorer 5.0</li>
<li>Windows 98 Second Edition</li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.1 SP1a (GA)</p></td>
<td><p>1999/4/1</p></td>
<td><ul>
<li>Office 2000</li>
<li>BackOffice 4.5</li>
<li>Visual Studio 98 SP3</li>
<li>Internet Explorer 5.0a（最小安裝）</li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.1 SP2</p></td>
<td><p>1999/7</p></td>
<td><ul>
<li><span class=plainlinksneverexpand>Microsoft網站</span></li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.5</p></td>
<td><p>2000/2/17</p></td>
<td><ul>
<li>Windows 2000</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft website</a></span></li>
</ul></td>
<td><ul>
<li>ADO 2.5</li>
<li>ADO MD 2.5</li>
<li>ADOX 2.5</li>
<li>RDS 2.5</li>
<li>OLE DB 2.5</li>
<li>下列軟體的OLE DB Provider for the ODBC driver:
<ul>
<li>SQL</li>
<li>Server</li>
<li>Site Server Search</li>
<li>Internet Publishing</li>
<li>Jet 4.0（Access 2000）</li>
<li>Oracle</li>
<li>Indexing Services (Index Server)</li>
<li>Microsoft Data Shaping Services</li>
<li>OLAP Services</li>
<li>DTS Packages</li>
<li>Microsoft Directory Services</li>
<li>Server DTS Flat File</li>
<li>OLE DB Simple Provider</li>
</ul></li>
<li>JRO 2.5</li>
<li>ODBC 3.51</li>
<li>ODBC驅動程式
<ul>
<li>Microsoft Access</li>
<li>SQL Server</li>
<li>Microsoft Excel</li>
<li>Text</li>
<li>Visual FoxPro</li>
<li>FoxPro VFP</li>
<li>dBase</li>
<li>dBase VFP</li>
<li>Paradox</li>
<li>Oracle</li>
</ul></li>
<li>Jet驅動程式：
<ul>
<li>Excel</li>
<li>Microsoft Exchange</li>
<li>Access</li>
<li>text files</li>
<li>Lotus 1-2-3</li>
<li>Paradox</li>
<li>xBase</li>
</ul></li>
</ul></td>
<td><ul>
<li></li>
</ul></td>
</tr>
<tr class="even">
<td><p>2.5 SP1</p></td>
<td><p>2000/7</p></td>
<td><ul>
<li>Windows 2000 SP1</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft網站</a></span></li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.5 SP2</p></td>
<td><p>2000/4</p></td>
<td><ul>
<li>Windows 2000 SP2</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft網站</a></span></li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.5 SPS3</p></td>
<td><p>2003/12</p></td>
<td><ul>
<li>Windows 2000 SP3</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft網站</a></span></li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.6</p></td>
<td><p>2000/9</p></td>
<td><ul>
<li>SQL Server 2000</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft網站</a></span></li>
</ul></td>
<td><p>不包含（手動安裝）:</p>
<ul>
<li>Microsoft Jet</li>
<li>Microsoft Jet OLE DB Provider</li>
<li>ODBC Desktop Database Drivers</li>
</ul></td>
<td><ul>
<li></li>
</ul></td>
</tr>
<tr class="even">
<td><p>2.6 SP1</p></td>
<td><p>2001/5</p></td>
<td><ul>
<li>SQL Server 2000 SP1</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft網站</a></span></li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.6 SP2</p></td>
<td><p>2002/5</p></td>
<td><ul>
<li>SQL Server 2000 SP2</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft網站</a></span></li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.7</p></td>
<td><p>2001/10|</p>
<ul>
<li>Windows XP</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft網站</a></span></li>
</ul></td>
<td><ul>
<li>支援64位元作業系統</li>
<li>移除對Banyan Vines的支援</li>
</ul></td>
<td><ul>
<li></li>
<li></li>
<li></li>
<li></li>
</ul></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.8</p></td>
<td><p>2003/8</p></td>
<td><ul>
<li>Windows Server 2003</li>
<li><span class=plainlinksneverexpand><a href="https://web.archive.org/web/20081015155326/http://msdn.microsoft.com/data/downloads/updates/default.aspx#MDACDownloads">Microsoft網站</a></span></li>
</ul></td>
<td><p>修補臭蟲與安全問題：</p></td>
<td><ul>
<li></li>
<li></li>
</ul></td>
</tr>
<tr class="even">
<td><p>2.8 SP1</p></td>
<td><p>2005/5</p></td>
<td><ul>
<li>SQL Server 2000 SP4</li>
<li>Windows XP SP2</li>
<li><span class=plainlinksneverexpand> Microsoft網站</span></li>
</ul></td>
<td><p>Fixed bugs</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2.8 SP2</p></td>
<td><p>2005/3</p></td>
<td><ul>
<li>Windows Server 2003 SP1</li>
</ul></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>9.0</p></td>
<td><p>由此時開始，MDAC隨作業系統散布。</p></td>
<td><ul>
<li>Visual Studio 2005 Beta 1，但在稍後移除。</li>
<li>SQL Server 2005 Beta 1，但在稍後移除。[1]</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Windows DAC 6.0（與Vista所使用的MDAC版本不同）</p></td>
<td><p>2006/11</p></td>
<td><ul>
<li><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a></li>
<li>版本號碼與Windows同步，不再提供可轉散布套件。</li>
<li><span class=plainlinksneverexpand></span></li>
</ul></td>
<td><p>沒有新功能，由Windows Vista使用。</p></td>
<td></td>
</tr>
</tbody>
</table>

## 參考資料

[Category:資料庫](https://zh.wikipedia.org/wiki/Category:資料庫 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")

1.  [Chapter 11 Changes](http://staff.develop.com/bobb/sql2005book/changes11.htm) , supplementary material to "A First Look at SQL Server 2005 for Developers" by Bob Beauchemin, Niels Berglund, and Dan Sullivan.