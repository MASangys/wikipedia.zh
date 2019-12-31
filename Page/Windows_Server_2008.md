> 本文内容由[Windows Server 2008](https://zh.wikipedia.org/wiki/Windows_Server_2008)转换而来。


**Windows Server 2008**是微軟的一个[服务器](../Page/服务器.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")，繼承[Windows Server 2003](../Page/Windows_Server_2003.md "wikilink")\[1\]\[2\]。Windows Server 2008在進行開發及測試時的代號為**Windows Server "Longhorn"**。

Windows Server 2008是一套和[Windows Vista](../Page/Windows_Vista.md "wikilink")（代號為*Longhorn*）相对应的服务器操作系统，兩者擁有很多相同功能。與[Windows 2000的Professional版和Server版一樣](../Page/Windows_2000.md "wikilink")，兩者在開發時共用大多數的程式碼，連[Service Pack皆可共用](https://zh.wikipedia.org/wiki/Service_Pack "wikilink")；Vista和Server 2008、XP和Server 2003間存在相似的關係。（XP和Server 2003的代號分別為*Whistler*及*Whistler Server*）

## 開發歷程

Windows Server 2008的測試版本Server Longhorn Beta 1於2005年7月27日發佈、Beta 2版本則於2006年5月23日公佈，2007年4月發佈了功能發展齊備的Beta 3版本。Release Candidate 0（下稱RC）在2007年9月24日\[3\] 公佈。RC 1发布在2007年12月25日。，這是推出市面前最後的一個測試版本。\[4\] 正式版2008年2月27日发布，版本号为6.0 (Build 6001)。在Windows Server 2008發佈時，即已包含了SP1。2009年5月14日发布集成SP2的版本。

2009年9月28日发布[Windows Server 2008 R2](../Page/Windows_Server_2008_R2.md "wikilink")。该系统为全新开发，和Windows Server 2008仅是名称相像而不像[Windows Server 2003 R2那样仅仅是在](../Page/Windows_Server_2003_R2.md "wikilink")[Windows Server 2003的基础上附加一些功能](../Page/Windows_Server_2003.md "wikilink")，且仅有64位版本。

## 版本及售價

大多数的Windows Server 2008都同时拥有64bit和32bit两个版本，[Windows Server 2008 for Itanium-based Systems支持](https://zh.wikipedia.org/wiki/Windows_Server_2008_for_Itanium-based_Systems "wikilink")[IA-64处理器](https://zh.wikipedia.org/wiki/IA-64 "wikilink")，IA-64版本被设计用来处理高工作量的工作，比如数据操作或者处理企业核心业务流程。但是[IA-64版本没有对](https://zh.wikipedia.org/wiki/IA-64 "wikilink")[文件服务器或者](https://zh.wikipedia.org/wiki/文件服务器 "wikilink")[多媒体服务器进行优化](https://zh.wikipedia.org/wiki/多媒体服务器 "wikilink")。微软宣称Windows Server 2008是该公司最后一个支持32bit的服务器操作系统，從Windows Server 2008 R2起只支援64位元。下面是Windows Server 2008版本的列表，及微軟公佈的參考售價。同時也延续了[Windows Server 2003的版本命名方式](../Page/Windows_Server_2003.md "wikilink")。

  - Windows Server 2008 Standard Edition（x86 and x64）标准版（999美元，含5个客户端访问许可）
  - Windows Server 2008 Enterprise Edition（x86 and x64）企业版（3999美元，含25个客户端访问许可）
  - Windows Server 2008 Datacenter Edition（x86 and x64）数据中心版（2999美元/每一处理器）
  - Windows HPC Server 2008
  - Windows Web Server 2008 (x86 and x64)网络服务器版（469美元）
  - Windows Storage Server 2008 (x86 and x64)存储中心版
  - Windows Small Business Server 2008 (Codenamed "Cougar") (x64) for small businesses
  - Windows Essential Business Server 2008 (Codenamed "Centro") (x64) for medium-sized businesses
  - Windows Server 2008 for Itanium-based Systems（2999美元/每一处理器）

其中標準版、企業版及資料中心版若選購不含[Hyper-V的版本時](https://zh.wikipedia.org/wiki/Hyper-V "wikilink")，則各減少28美元。

## 功能

Windows Server 2008的核心編碼與Windows Vista一樣， 因此它包含有許多同樣的改進。當中最引人注意的地方是它嶄新的安裝模式：它在安裝時允許伺服器的管理員選擇安裝整個伺服器軟件，又或是只安裝「伺服器核心」（Server Core）。

「伺服器核心」是一種回復到從前的安裝方式，沒有使用者圖形介面，所有的設定與維護全都是由指令碼控制，或者是利用Microsoft Management Console作遠端連線操作。"伺服器核心"同時也不會內建[.NET Framework](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，[Internet Explorer及其他許多跟核心伺服器不相干的功能](../Page/Internet_Explorer.md "wikilink")。一個「伺服器核心」主機可以以四個身分來控制[網域控制者](https://zh.wikipedia.org/wiki/網域控制者 "wikilink")、[DNS伺服器](https://zh.wikipedia.org/wiki/DNS伺服器 "wikilink")、[DHCP伺服器及檔案伺服器](https://zh.wikipedia.org/wiki/DHCP伺服器 "wikilink")。

  - [Active Directory網域控制站新增唯讀操作模式](../Page/Active_Directory.md "wikilink")（RODC, Read-only Domain Controller）。
  - [政策式網路作業](https://zh.wikipedia.org/wiki/政策式網路作業 "wikilink")（Policy-based networking），改良了的管理界面及增強了的用戶協調功能
  - [Internet Information Services 7](https://zh.wikipedia.org/wiki/Internet_Information_Services "wikilink")，內建支援[PHP](../Page/PHP.md "wikilink")網頁程式。
  - 改良的即時更新方式，更新時不需要動到"核心程式"，因此也不需要重新開機。
  - 完全[組件化的作業系統](https://zh.wikipedia.org/wiki/組件化 "wikilink")。
  - [WIM](https://zh.wikipedia.org/wiki/WIM "wikilink")，圖像為主的安裝模式及工具使用
  - 控制角色為主的管理工具「伺服器管理員」（Server Manager），結合了Windows Server 2003裡的「管理你的伺服器」（Manage Your Server）及「安全設定精靈」（Security Cofiguration Wizard）。
  - 一個升級的終端機服務組件，支援[遠端桌面協定](../Page/遠端桌面協定.md "wikilink")（Remote Desktop Protoco 6.0），最讓人值得注意的改進是可以利用遠端桌面連線來共享一個程式，而不像以前共享整個桌面（此即Terminal Service中的RemoteApp新功能）。
  - 在[x86-64系統上](https://zh.wikipedia.org/wiki/x86-64 "wikilink")，可由[可擴展韌體介面](https://zh.wikipedia.org/wiki/可擴展韌體介面 "wikilink")（EFI, Extensible Firmware Interface）開機
  - [Windows SharePoint Services 3.0](https://zh.wikipedia.org/wiki/Windows_SharePoint_Services "wikilink")
  - [DirectX 10](../Page/DirectX.md "wikilink")（透過Platform Update更新，DirectX 11被引入，但[桌面視窗管理員](../Page/桌面視窗管理員.md "wikilink")並未更新採用Direct3D 10.1功能）
  - [exFAT](https://zh.wikipedia.org/wiki/exFAT "wikilink")
  - [Windows PowerShell](../Page/Windows_PowerShell.md "wikilink")
  - [Hyper-V](https://zh.wikipedia.org/wiki/Hyper-V "wikilink")，一個虛擬系統的程式（處理器需支援INTEL VT/AMD的虛擬技術才能使用），但此功能-{只}-能在x64平台的Windows Server 2008上使用。
  - 可靠性監視器（Reliability Monitor）\[5\]

## 已知问题

  - 2007年3月15日，[不支持扫描仪和摄像机](http://support.microsoft.com/kb/927833/)
  - 2008年5月20日，[RPC安全漏洞可导致内存泄漏](http://support.microsoft.com/kb/949887/)
  - 2008年10月23日，[RPC安全漏洞可导致远程代码执行](http://www.microsoft.com/china/technet/security/bulletin/ms08-067.mspx)
  - 2008年12月9日，[EventLog服务可导致计算机无响应](http://support.microsoft.com/kb/952664/)
  - 2009年4月3日，[网络共享、自动播放可传播病毒](http://support.microsoft.com/kb/962007/)
  - 2009年5月14日，[在多处理器系统上休眠失败](http://support.microsoft.com/kb/954429/)
  - 2009年6月15日，[RPC安全漏洞可导致权限提升](http://support.microsoft.com/kb/970238/)
  - 2010年1月27日，[IE安全漏洞可导致远程代码执行](http://support.microsoft.com/kb/979352/)
  - 2010年2月9日，[IE安全漏洞可导致远程代码执行](http://www.microsoft.com/china/technet/security/bulletin/ms10-002.mspx)
  - 2011年6月20日，[Windows NT 4 server轉移到Windows 2008 server R2 (Migration)](http://www.hkitblog.com/?p=5257)

## 系统需求

Windows Server 2008的系统需求：\[6\]

<div align="center">

<table>
<thead>
<tr class="header">
<th></th>
<th><p>最低配置</p></th>
<th><p>建议配置</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>处理器</p></td>
<td><p>1 <a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">GHz</a>（<a href="https://zh.wikipedia.org/wiki/x86" title="wikilink">x86</a>）or 1.4 <a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">GHz</a>（<a href="https://zh.wikipedia.org/wiki/x86-64" title="wikilink">x64</a>）</p></td>
<td><p>2 GHz或者更快</p></td>
</tr>
<tr class="even">
<td><p>内存</p></td>
<td><p>512 <a href="https://zh.wikipedia.org/wiki/Megabyte" title="wikilink">MB</a> <a href="https://zh.wikipedia.org/wiki/隨機存取記憶體" title="wikilink">RAM</a></p></td>
<td><p>2 GB RAM或者更多</p>
<ul>
<li>最大内存（32-bit）: 4GB RAM（标准版）或64GB RAM（企业版和数据中心版）</li>
<li>最大内存（64-bit）: 32GB RAM（标准版）或2TB RAM（企业版，数据中心版和Itanium-Based版）</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>显示卡和显示器</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Super_VGA" title="wikilink">Super VGA</a> (800 x 600)</p></td>
<td><p>Super VGA（800 x 600）或者更高分辨率</p></td>
</tr>
<tr class="even">
<td><p>磁盘可用空间</p></td>
<td><p>10 <a href="https://zh.wikipedia.org/wiki/gigabyte" title="wikilink">GB</a></p></td>
<td><p>40 GB或者更多</p></td>
</tr>
<tr class="odd">
<td><p>驱动器</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/DVD-ROM" title="wikilink">DVD-ROM</a></p></td>
<td><p>DVD-ROM或者更快</p></td>
</tr>
<tr class="even">
<td><p>其它设备</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/键盘" title="wikilink">键盘和</a><a href="../Page/鼠标.md" title="wikilink">鼠标</a></p></td>
<td><p>键盘 和 鼠标</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

</div>

## 推廣

微軟公司為推廣Windows Server 2008，特地設立了多個架設了不同版本Windows Server 2008的虛擬實驗室，讓有興趣的管理員申請每段90分鐘的時段來測試伺服器的功能\[7\]。

## 參見

  - [Windows Vista](../Page/Windows_Vista.md "wikilink")
  - [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
  - [作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")
  - [作業系統列表](https://zh.wikipedia.org/wiki/作業系統列表 "wikilink")
  - [微軟作業系統列表](../Page/微軟作業系統列表.md "wikilink")
  - [微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")

## 參考

## 外部連結

### 微軟網頁

  - 微軟Windows Server 2008官方網頁 [USA](https://web.archive.org/web/20070518144343/http://www.microsoft.com/windowsserver2008/default.mspx) - [Taiwan](https://web.archive.org/web/20080505055024/http://www.microsoft.com/taiwan/windowsserver2008/default.aspx) - [China](http://www.microsoft.com/china/windowsserver2008/default.mspx)
  - [New Networking Features in Windows Server "Longhorn" and Windows Vista](https://web.archive.org/web/20060619072230/http://www.microsoft.com/technet/itsolutions/network/evaluate/new_network.mspx)—lengthy article from Microsoft Technet covering new networking features in detail

### 其它

  - [ZDnet UK article](http://news.zdnet.co.uk/software/windows/0,39020396,39117458,00.htm)
  - [News.com](https://archive.is/20121206005709/http://news.com.com/2100-7343_3-5211424.html)
  - [computerperformance.co.uk](http://www.computerperformance.co.uk/Longhorn/longhorn_home.htm)
  - [VistaBase Longhorn Server section](http://www.vistabase.co.uk/welcome.php?subcats/longhornserver/index)
  - [winsupersite.com Preview](https://web.archive.org/web/20060504234119/http://winsupersite.com/showcase/longhorn_server_preview_1.asp)
  - [winsupersite.com Preview 2](https://web.archive.org/web/20060614200831/http://www.winsupersite.com/reviews/longhorn_server_preview2_01.asp)
  - [CoreConfigurator](https://web.archive.org/web/20080420103155/http://blogs.microsoft.co.il/files/folders/guyt/entry68860.aspx)……Basic GUI configuration utility for Windows Server Core 2008

[Category:Windows_Server_2008](https://zh.wikipedia.org/wiki/Category:Windows_Server_2008 "wikilink")

1.  ——據微軟伺服器及工具高級副主席Bob Muglia所表示，微軟將繼續以出版年份決定其伺服器產品的名稱。而"Longhorn"則估計將於2007年底或2008年初公佈。
2.
3.
4.
5.  [導讀 - Using Reliability Monitor for Troubleshooting](http://blogs.technet.com/jliao/archive/2008/04/06/using-reliability-monitor-for-troubleshooting.aspx)
6.
7.  [Windows Server 2008虛擬實驗室](http://technet.microsoft.com/en-us/virtuallabs/bb467605)