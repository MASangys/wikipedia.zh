**Windows Installer**是在[Windows
2000時提出](../Page/Windows_2000.md "wikilink")，作為[微軟](../Page/微軟.md "wikilink")[作業系統中的](../Page/作業系統.md "wikilink")[安裝程式開發標準的作業系統服務](../Page/安裝程式.md "wikilink")。它可以支援安裝程式所需要的許多功能，並且可以支援交易式安裝（Committable
Installation），當安裝程式發現錯誤或問題時，可以將安裝程序中所做的任何修改（包含複製檔案、修改組態等）全部回溯為未變更的狀態。

目前Windows Installer最新[版本為](../Page/軟體版本號.md "wikilink")5.0版。

## 組成

Windows Installer的安裝程式由Windows Installer Service、Installer
Database、Installation Bootstrapper與需要安裝的檔案所組成。

  - **Windows Installer Service**：與作業系統一起安裝，由Windows
    Installer安裝程式的Installation Bootstrapper啟動，負責載入Installer
    Database，以及Windows
    Installer安裝程式執行期間的交易式安裝功能，以確保安裝程式對系統的修改，不是成功就是失敗（不做任何變更）。
  - **Installer
    Database**：由安裝程式工具所製作，裡面含有安裝程式的指令，流程（精靈畫面所需的資料），資料，組態設定等，為
    Windows Installer 的安裝資料來源，有時候檔案也會被壓縮在Installer Database中。
  - **Installation Bootstrapper**：啟動Windows
    Installer以執行安裝程式的起始用程式，通常以setup.exe命名。

## 可轉散布元件

利用Windows Installer開發安裝程式的軟體廠商，可以在軟體包裝中附上Windows Installer
的可轉散布套件（Redistribute Package），以確保使用者的電腦可以更新Windows
Installer的模組版本，讓安裝程式得以順利執行。

Windows Installer 目前是屬於Platform SDK的一部份。

## 版本歷史

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>用於[1]</p></th>
<th><p>也可用於</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.0</p></td>
<td><p><a href="../Page/Microsoft_Office_2000.md" title="wikilink">Office 2000</a></p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p>1.1</p></td>
<td><p><a href="../Page/Windows_2000.md" title="wikilink">Windows 2000</a> RTM, SP1, SP2</p></td>
<td><p><a href="../Page/Windows_95.md" title="wikilink">Windows 95</a>/<a href="../Page/Windows_98.md" title="wikilink">98</a><br />
<a href="../Page/Windows_NT_4.0.md" title="wikilink">Windows NT 4.0</a> SP6</p></td>
</tr>
<tr class="odd">
<td><p>1.2</p></td>
<td><p><a href="../Page/Windows_Me.md" title="wikilink">Windows Me</a></p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p>2.0</p></td>
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a> RTM, SP1<br />
Windows 2000 SP3<br />
<a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a> RTM</p></td>
<td><p>Windows 95/98/Me<br />
Windows NT 4.0 SP6<br />
Windows 2000 RTM, SP1, SP2</p></td>
</tr>
<tr class="odd">
<td><p>3.0</p></td>
<td><p>Windows XP SP2</p></td>
<td><p>Windows 2000 SP3/SP4<br />
Windows XP RTM/SP1<br />
Windows Server 2003 RTM</p></td>
</tr>
<tr class="even">
<td><p>3.1</p></td>
<td><p>Windows Server 2003 SP1<br />
Windows XP Professional x64 Edition<br />
Windows XP SP3</p></td>
<td><p>Windows 2000 SP3, SP4<br />
Windows XP RTM, SP1, SP2<br />
Windows Server 2003 RTM</p></td>
</tr>
<tr class="odd">
<td><p>4.0</p></td>
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a> RTM, SP1<br />
<a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a> RTM</p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p>4.5[2]</p></td>
<td><p>Windows Vista SP2<br />
Windows Server 2008 SP2</p></td>
<td><p>Windows XP SP2, SP3<br />
Windows Server 2003 SP1, SP2<br />
Windows Vista RTM, SP1<br />
Windows Server 2008[3]</p></td>
</tr>
<tr class="odd">
<td><p>5.0</p></td>
<td><p><a href="../Page/Windows_7.md" title="wikilink">Windows 7</a> RTM<br />
<a href="../Page/Windows_Server_2008_R2.md" title="wikilink">Windows Server 2008 R2</a> RTM<br />
<a href="../Page/Windows_8.md" title="wikilink">Windows 8</a> RTM <a href="../Page/Windows_10.md" title="wikilink">Winodws 10</a><br />
</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

Windows Installer 5.0會與Windows Server 2008 R2及Windows 7一起發佈\[4\]

要知道自己的電腦使用哪個版本的Windows Installer,輸入`msiexec /?` 到Windows 運行對話框或命令提示符中。

## 工具

<table>
<thead>
<tr class="header">
<th><p>工具名稱</p></th>
<th><p>出版商</p></th>
<th><p>概述</p></th>
<th><p>授權</p></th>
<th><p>網站</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Install_Time.md" title="wikilink">Install Time</a></p></td>
<td><p>Savage Fly Corp.</p></td>
<td><p>A full featured commercial installer and packaging tool for Windows Installe installations. Can create, validate and edit .msi packages.</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Advanced_Installer.md" title="wikilink">Advanced Installer</a></p></td>
<td><p>Caphyon Ltd.</p></td>
<td><p>An installer that features one freeware edition and four commercial editions. Can create, validate and edit .msi packages.</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/InstallAware.md" title="wikilink">InstallAware</a></p></td>
<td><p>InstallAware Software</p></td>
<td><p>A commercial setup creator that comes in four commercial editions</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/InstallShield.md" title="wikilink">InstallShield</a></p></td>
<td><p><a href="../Page/Flexera_Software.md" title="wikilink">Flexera Software</a></p></td>
<td><p>InstallShield is a software tool for creating installers or software packages primarily used for installing software for Microsoft Windows desktop and server platforms.</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/InstEdit.md" title="wikilink">InstEdit</a></p></td>
<td><p><a href="../Page/Google_Code.md" title="wikilink">Google Code</a></p></td>
<td><p>InstEd is a free .msi editor. Paid version with more features available also.</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/IsWiX.md" title="wikilink">IsWiX</a></p></td>
<td><p><a href="../Page/CodePlex.md" title="wikilink">CodePlex</a></p></td>
<td><p>Industrial Strength Windows Installer XML (IsWiX) is a document editor based on the Fireworks Application Framework. IsWiX enables non-setup developers to collaborate with setup developers using WiX projects.</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Microsoft_Visual_Studio.md" title="wikilink">Microsoft Visual Studio</a></p></td>
<td><p><a href="../Page/Microsoft.md" title="wikilink">Microsoft</a></p></td>
<td><p>Microsoft Visual Studio is capable of building Windows Installer Deployment projects that can create installer packages.[5]</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/MSI_Studio.md" title="wikilink">MSI Studio</a></p></td>
<td><p><a href="../Page/ScriptLogic.md" title="wikilink">ScriptLogic</a></p></td>
<td><p>An .msi editor aim towards system administrators who wish to repackage installation packages or optimize the installation for their own environment/needs.</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/WiX.md" title="wikilink">WiX</a></p></td>
<td><p><a href="../Page/CodePlex.md" title="wikilink">CodePlex</a></p></td>
<td><p>WiX (Windows Installer XML) is a <a href="../Page/free_and_open-source.md" title="wikilink">free and open-source</a> set of tools that helps build a Windows Installer packages from an <a href="../Page/XML.md" title="wikilink">XML</a> document. It can be either used from command-line or integrated into Microsoft Visual Studio. <a href="../Page/SharpDevelop.md" title="wikilink">SharpDevelop</a>, a free and open-source alternative to Visual Studio has adopted WiX.[6]</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/7-Zip.md" title="wikilink">7-Zip</a></p></td>
<td><p><a href="../Page/SourceForge.md" title="wikilink">SourceForge</a></p></td>
<td><p>7-Zip is an <a href="../Page/open_source.md" title="wikilink">open source</a> <a href="../Page/file_archiver.md" title="wikilink">file archiver</a> utility, and can extract the contents of MSI files.[7]</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 參考文獻

<div class="references-small">

<references />

</div>

[Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink")
[Category:安裝軟體](https://zh.wikipedia.org/wiki/Category:安裝軟體 "wikilink")

1.  \[<http://msdn.microsoft.com/en-us/library/aa371185(VS.85>).aspx
    Released Versions of Windows Installer\]
2.  \[<http://msdn.microsoft.com/en-us/library/bb736325(VS.85>).aspx
    What's New in Windows Installer 4.5\]
3.  \[<http://msdn.microsoft.com/en-us/library/aa371185(VS.85>).aspx\]
4.  \[<http://msdn.microsoft.com/en-us/library/aa371185(VS.85>).aspx\]
5.
6.
7.