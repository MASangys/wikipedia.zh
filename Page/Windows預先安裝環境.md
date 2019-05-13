**Windows预先安装环境**（），简称或，是[Microsoft
Windows的輕量版本](../Page/Microsoft_Windows.md "wikilink")，主要提供[個人電腦開發商](../Page/個人電腦.md "wikilink")（主要為[OEM廠商](../Page/代工生产.md "wikilink")）、[工作站](../Page/工作站.md "wikilink")、[伺服器打造客製化的](../Page/伺服器.md "wikilink")[作業系統環境](../Page/作業系統.md "wikilink")，或系統離線時進行[故障排除來使用](../Page/排错.md "wikilink")，以取代格式較舊的[MS-DOS](../Page/MS-DOS.md "wikilink")。其可理解为Windows的[Live
CD或子系統](../Page/Live_CD.md "wikilink")，系統核心採用32位元/64位元。由於不大，因此便於儲存在[光盘](../Page/光碟.md "wikilink")、[隨身碟等各種可攜式](../Page/隨身碟.md "wikilink")[儲存裝置](../Page/儲存裝置.md "wikilink")。

Windows
PE最初是設計給個人電腦開發商使用，以便於電腦生產時將Windows入內，但目前也以[捆包的方式提供給一般的](../Page/軟體開發套件.md "wikilink")[軟體開發者使用](../Page/軟體開發.md "wikilink")，目前從[Windows
XP以及之後的Windows公開版本都有支援](../Page/Windows_XP.md "wikilink")。

## WinPE特點

  - WinPE是簡化版的[Microsoft
    Windows](../Page/Microsoft_Windows.md "wikilink")，放在一片可直接啟動的[CD或](../Page/CD.md "wikilink")[DVD光碟或者隨身碟](../Page/DVD.md "wikilink")，以載入到記憶體的方式執行。特點是啟動時出現此版本Windows
    PE简化自之原版本的啟動畫面，以及出現簡單的圖形介面（[GUI](../Page/GUI.md "wikilink")），亦能執行[Internet
    Explorer](../Page/Internet_Explorer.md "wikilink")。相比完整的Windows，Windows
    PE功能有限，主要用於系統維護。
  - WinPE支援[網路](../Page/網路.md "wikilink")，但只附帶以下工具：[命令提示字元](../Page/命令提示字元.md "wikilink")、[記事本和一些維護工具](../Page/記事本.md "wikilink")。
  - WinPE初衷只是方便企業製造自訂的[Microsoft
    Windows](../Page/Microsoft_Windows.md "wikilink")，因此市面上並沒有出售（但允许无偿外发）。
  - 在[微軟的批准下](../Page/微軟.md "wikilink")，其他[軟體公司可附上自己的軟體於WinPE](../Page/軟體.md "wikilink")，令啟動電腦時候執行有關的程式。這些軟體通常是系統維護，在電腦不能正常運作的情況下，可運用有關的系統維護軟體修復電腦。維護軟體包括[Symantec](../Page/Symantec.md "wikilink")[Norton
    Ghost等等](../Page/Norton_Ghost.md "wikilink")。
  - [Windows Vista](../Page/Windows_Vista.md "wikilink"),[Windows
    7](../Page/Windows_7.md "wikilink"),[Windows
    8](../Page/Windows_8.md "wikilink"),[Windows
    10的安裝程式](../Page/Windows_10.md "wikilink")，亦是基於WinPE。在「Windows
    安裝」界面上按下Shift+F10，可開啟「命令提示字元」。
  - WinPE
    大多被[OEM廠商所使用](../Page/OEM.md "wikilink")，舉例來說就像剛買回來的品牌套裝電腦，不需要完全從頭安裝作業系統，而是從完成安裝開始。[OEM廠商可以自定系統安裝完成後](../Page/OEM.md "wikilink")，執行安裝驅動程式的動作、修改『的電腦』中的[OEM商標](../Page/OEM.md "wikilink")、安裝輔助程式…。簡單來說WinPE的作用是使用在大量的電腦安裝（同規格之電腦），以達到快速且一致性的安裝。
  - 因为和电脑中的系统没有关联，可以任意添加/修改/复制系统文件，甚至可以格式化电脑中系统所在的磁盘。这种得天独厚的优势使得PE可以深入操作系统文件。

## WinPE的各种衍生产品

### Windows恢复环境（WinRE）

从Windows
Vista开始，微软开发了新的Windows恢复环境（WinRE）来取代之前XP时代的故障恢复控制台。WinRE是WinPE的一种衍生产品。默认情况下，在系统多次正常启动失败后，引导程序就会放弃正常启动操作系统、转而去启动WinRE，然后用户就可以利用WinRE执行系统还原、从之前的备份镜像恢复等操作，也可以使用命令提示符来备份文件、运行其他工具软件。不少OEM厂商也会对WinRE进行二次开发，利用WinRE给用户提供“一键恢复”等功能。

WinRE的功能在Windows 8中得到了很大的增强，引入了一键初始化系统（又名重置系统、恢复出厂、Push-Button
Reset等）功能，可以帮助用户一键完成系统重装工作，同时用户又可以选择是否保留文档、桌面等个人文件。如果用户选择了保留个人文件，重装完成后，旧操作系统文件被转移至Windows.old中，用户可以选择使用磁盘清理工具将其删除。除了选择保留个人文件，用户也可以选择彻底擦除数据（还可以进一步选择是只擦除系统所在的分区，还是擦除整个硬盘）。

### 诊断与恢复工具包（DaRT）

Winternals公司曾经利用WinPE开发出了很受系统管理员欢迎的ERD
Commander系列启动光盘，包含锁匠（Locksmith，可以强制清除管理员密码）、系统文件修复、补丁卸载、崩溃分析器等工具。在Winternals公司被微软收购后，微软就在它的基础上推出了诊断与恢复工具包（DaRT）。系统管理员可以使用微软桌面优化包（MDOP）定制、生成DaRT镜像，然后在需要执行维护、修复操作的机器上启动DaRT环境。

### 修改版WinPE

Windows部署工具（ADK）可以生成WinPE镜像，但是这种WinPE的功能十分有限，开机后只有一个命令提示符窗口。对于不太熟悉技术的绝大多数普通个人用户来说，这种WinPE的功能局限太大、易用性也太差。

因为微软对WinPE、WinRE的功能刪減行为很严厉，尤其是移除了Explorer（负责显示桌面环境中任务栏、图标、开始菜单等元素，同时也负责管理文件资源的程序）、WoW64支持等比较基本的系统功能，坊间一直有技术爱好者在论坛、博客等处进行探讨、研究，试图破解功能限制、把被移除的功能重新补回。

其中，不少熟悉修改、破解技术的爱好者发佈了补回Explorer、捆绑各种工具软件（如DiskGenius、NTPWEdit等）的修改版WinPE映像，受到了不少计算机爱好者和维修技工的欢迎，使这类WinPE广为流传。不过，这些修改版WinPE也大都存在版权问题。

后来，这类修改版WinPE又衍生出了涉及灰色产业的“商业PE”，用户在使用这种WinPE重装系统时，其中暗藏的后门就会在新装好的系统內安裝流氓软件甚至是木马病毒。然后，在用户日常使用系统的过程中，这些被安裝的流氓软件/木马病毒就可以给一些广告统计平台回傳统计数据，進而對於此WinPE的作者带来推广收入；或者成為被作者惡意操纵、用做[DDoS攻击的](../Page/DDoS.md "wikilink")“殭屍電腦”。

## WinPE 版本

|         |                                                                               |
| ------- | ----------------------------------------------------------------------------- |
| **版本号** | **介绍**                                                                        |
| 1.0     | 基於最初的Microsoft Windows XP Professional                                        |
| 1.1     | 基於Microsoft Windows XP Professional 含Service Pack 1（SP1）                      |
| 1.2     | 基於Microsoft Windows Server 2003                                               |
| 1.5     | 基於Microsoft Windows XP Professional 含Service Pack 2（SP2）                      |
| 1.6     | 基於Microsoft Windows Server 2003 含Service Pack 1（SP1）                          |
| 2.0     | 基於Microsoft Windows Vista                                                     |
| 2.1     | 基于Microsoft Windows Vista 和Microsoft Windows Server 2008 含Service Pack 1（SP1） |
| 2.2     | 基于Microsoft Windows Vista 和Microsoft Windows Server 2008 含Service Pack 2（SP2） |
| 3.0     | 基于Microsoft Windows 7                                                         |
| 3.1     | 基于Microsoft Windows 7 SP1                                                     |
| 4.0     | 基于Microsoft Windows 8                                                         |
| 5.0     | 基于Microsoft Windows 8.1                                                       |
| 5.1     | 基于Microsoft Windows 8.1 含 Update                                              |
| 6.0     | 基于Microsoft Windows 10                                                        |

## 外部連結

  - \[<http://technet.microsoft.com/en-us/library/dd744322(WS.10>).aspx
    Windows PE Technical Reference\]
  - \[<http://technet.microsoft.com/en-us/library/dd799303(WS.10>).aspx
    Create a Bootable Windows PE CD-ROM\]
  - [Windows Automated Installation Kit for Windows 7 (contains Windows
    PE 3.0)](http://www.microsoft.com/downloads/details.aspx?familyid=696DD665-9F76-4177-A811-39C26D3B3B34&displaylang=en)
  - [Windows Preinstallation Enviroment Technical
    Overview](https://web.archive.org/web/20130227181035/http://download.microsoft.com/download/d/6/d/d6d8c772-2588-4ea4-9187-98bec8cd2e49/technical_overview_sul_beneficio_winpe_ing.pdf)

[Category:微软软件](https://zh.wikipedia.org/wiki/Category:微软软件 "wikilink")
[Category:系统软件](https://zh.wikipedia.org/wiki/Category:系统软件 "wikilink")
[Category:Windows_NT](https://zh.wikipedia.org/wiki/Category:Windows_NT "wikilink")