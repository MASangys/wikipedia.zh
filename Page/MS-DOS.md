**微軟磁碟作業系統**，**MS-DOS**，的縮寫，一個由美国[微软公司發展的](../Page/微软.md "wikilink")[作業系統](../Page/作業系統.md "wikilink")，運行在[Intel](../Page/Intel.md "wikilink")
[x86](../Page/x86.md "wikilink")[個人電腦上](../Page/個人電腦.md "wikilink")。它是[DOS作業系統家族中最著名的一個](../Page/DOS.md "wikilink")，在[Windows
95以前](../Page/Windows_95.md "wikilink")，[DOS是](../Page/DOS.md "wikilink")[IBM
PC及](../Page/IBM_PC.md "wikilink")[兼容机中的最基本配备](../Page/IBM_PC兼容机.md "wikilink")，而MS-DOS则是[个人电脑中最普遍使用的DOS操作系统](../Page/个人电脑.md "wikilink")。

## 概觀

[MS-DOS_Deutsch.png](https://zh.wikipedia.org/wiki/File:MS-DOS_Deutsch.png "fig:MS-DOS_Deutsch.png")
最基本的MS-DOS系统，由一个基于[主引导记录](../Page/主引导记录.md "wikilink")（[硬盘才有MBR](../Page/硬盘.md "wikilink")，[软盘沒有MBR](../Page/软盘.md "wikilink")，[啟動磁區位於第](../Page/啟動磁區.md "wikilink")0軌的磁區中，內容上與硬碟的MBR略有不同）的BOOT引导程序和三个文件模块组成。这三个模块是：输入输出模块（[IO.SYS](../Page/IO.SYS.md "wikilink")）、文件管理模块（[MSDOS.SYS](../Page/MSDOS.SYS.md "wikilink")）及命令解释模块（COMMAND.COM），不过在MS-DOS
7.0中，MSDOS.SYS被改为启动配置文件，而IO.SYS增加了MSDOS.SYS的功能。除此之外，[微软还在零售的MS](../Page/微软.md "wikilink")-DOS系统包中加入了若干标准的外部程序（即[外部命令](../Page/外部命令.md "wikilink")），这才与[内部命令](../Page/内部命令.md "wikilink")（即由COMMAND.COM解释执行的命令）一同构建起一个在磁盘操作时代相对完备的人机交互环境。有关MS-DOS的各种命令，请参见[MS-DOS命令列表](../Page/MS-DOS命令列表.md "wikilink")。

MS-DOS使用者可透过编辑兩个位于开机磁碟根目錄的系统档案來达到调控系統组态之目的，它们分別是CONFIG.SYS及AUTOEXEC.BAT，IO.SYS会檢视CONFIG.SYS以載入指定的硬体[驱动程式](../Page/驱动程式.md "wikilink")，而COMMAND.COM则自动執行AUTOEXEC.BAT所載的[批次指令](../Page/批次作業.md "wikilink")。

MS-DOS一般使用[命令行界面来接受用户的指令](../Page/命令行界面.md "wikilink")，不过在后期的MS-DOS版本中，DOS程序也可以通过调用相应的DOS中断来进入[图形模式](../Page/GUI.md "wikilink")，即DOS下的图形界面程序。

早先版本的MS-DOS為[FAT12與](../Page/檔案配置表.md "wikilink")[FAT16](../Page/檔案配置表.md "wikilink")，事實上也因為MS-DOS的流行，造成日後磁碟格式受到檔案配置表影響相當巨大。从MS-DOS
7.0开始，尤其是MS-DOS
7.10版本则已全面支持[FAT32](../Page/檔案配置表.md "wikilink")、[长文件名和大](../Page/长文件名.md "wikilink")[硬盘等](../Page/硬盘.md "wikilink")。

## 由來

1980年，的一名24岁的程序员花费了四个月时间编写出了 [86-DOS](../Page/86-DOS.md "wikilink")
操作系统。1981年7月，[微软以五萬](../Page/微软.md "wikilink")[美元的代價向西雅图公司购得本產品的全部版权](../Page/美元.md "wikilink")，并将它更名为
MS-DOS。随后，[IBM](../Page/IBM.md "wikilink")
发布了第一台个人计算机，当时采用的操作系统是西雅图電腦产品公司的
86-DOS 1.14，但微软很快改进了 MS-DOS，并使它成功地成为 [IBM
PC](../Page/IBM_PC.md "wikilink") 采用的操作系统。并于1981年8月12日，正式发布 MS-DOS 1.0 和
PC-DOS 1.0。

西雅图電腦产品公司后来曾将微软告上[法庭](../Page/法庭.md "wikilink")，指控微软在购买 86-DOS 版权时，并未透露
IBM 是其客户。微软在1986年向西雅图计算机产品公司又支付了100万美元，了结了双方之间的纠纷。

2014年3月25日，微軟首次正式對外公開早期 MS-DOS 的原始碼。\[1\]

## 简史

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>MS-DOS 1.0</p></td>
<td><p>微软買下<a href="../Page/86-DOS.md" title="wikilink">86-DOS</a>（QDOS）版權，1981年7月，成為IBM PC上第一个作业系统。同時微软有為IBM PC開發專用版本<a href="../Page/PC-DOS.md" title="wikilink">PC-DOS</a>，但與泛用版本MS-DOS相比，除了系統檔名以及部份針對IBM機器設計的核心，外部命令與公用程式之外，其餘程式碼其實差異不大。</p></td>
</tr>
<tr class="even">
<td><p>noWrap|MS-DOS 1.25</p></td>
<td><p>1982年6月，支援双面软盘並开始修改错误<br />
不仅IBM，许多<a href="../Page/OEM.md" title="wikilink">OEM也广泛使用</a></p></td>
</tr>
<tr class="odd">
<td><p>MS-DOS 2.0</p></td>
<td><p>1983年3月，加入UNIX式的树狀档案系统与及硬盘支援，以低階的觀點視之，這是第一次的DOS重大改版。這個版本除了相容於CP/M的FCB檔案系統之外，正式採用了檔案配置表格式，並大量使用具有UNIX特徵的Handle式檔案操作方式。</p></td>
</tr>
<tr class="even">
<td><p>MS-DOS 2.11</p></td>
<td><p>1984年3月，为主要的OEM版本，修正了2.01版的错误，增加了對非英語語言及其文件格式的國際性支援</p></td>
</tr>
<tr class="odd">
<td><p>MS-DOS 2.25</p></td>
<td><p>1985年10月，支援额外擴充的字元组（日文与韓文），还修正了舊版的错误</p></td>
</tr>
<tr class="even">
<td><p>MS-DOS 3.0</p></td>
<td><p>1984年8月，引入PC/AT，它能支援1.2MB的软盘，並加入较高容量的硬盘</p></td>
</tr>
<tr class="odd">
<td><p>MS-DOS 3.1</p></td>
<td><p>1984年11月，加入对微软網路支援</p></td>
</tr>
<tr class="even">
<td><p>MS-DOS 3.2</p></td>
<td><p>1986年1月，加入了3.5吋软盘的強化支援，並開始可以透過<a href="../Page/驅動程式.md" title="wikilink">驅動程式使用硬體EMS</a>。臺灣的<a href="../Page/宏碁電腦.md" title="wikilink">宏碁電腦在</a><a href="../Page/資策會.md" title="wikilink">資策會與公會的支持下</a>，與微软在MS-DOS 3.2的基礎上開發了符合<a href="../Page/財團法人中文數位化技術推廣基金會.md" title="wikilink">財團法人中文數位化技術推廣基金會標準的全中文DOS</a>：MS-DOS 3.21，並配合當時第一代的松下<a href="../Page/漢音輸入法.md" title="wikilink">漢音輸入法搭載於當時宏碁的機器上</a>，漢音輸入法是臺灣最早的智慧中文輸入法，現在則是MacOS中內建預設的中文輸入法之一。由於中文內碼採用<a href="../Page/公會碼.md" title="wikilink">公會碼</a>，與主流的<a href="../Page/大五碼.md" title="wikilink">大五碼並不相容</a>，以致MS-DOS 3.21版本臺灣銷量並不好。但MS-DOS 3.21的技術受到廣泛的使用，中文系統獨立成為【宏碁中文工作室】軟體，CMEX規格則成為業界中文系統標準，並在後來主要的系統廠商如<a href="../Page/倚天中文系統.md" title="wikilink">倚天中文系統</a>、<a href="../Page/微軟.md" title="wikilink">微軟的</a><a href="../Page/Windows.md" title="wikilink">Windows中文版下被採用</a>，而其內部使用的GW-BASIC後來更成為後來MS-DOS的標準軟體。</p></td>
</tr>
<tr class="odd">
<td><p>MS-DOS 3.3</p></td>
<td><p>1987年8月，修正部份內部錯誤、增加了許多關於檔案處理的外部命令、開始支援<a href="../Page/軟碟.md" title="wikilink">軟碟之後</a>，MS-DOS 3.3成為當時最穩定、暢銷的版本，可以說是MS-DOS第二次的重大改版，一年後發行的4.0甚至還不如3.3普及。內部的BASIC直譯器在3.x之後逐漸由BASICA改為增強繪圖能力的GW-BASIC。此際<a href="../Page/倚天公司.md" title="wikilink">倚天公司在前幾版本的BASICA基礎上開發了支援中文繪圖模式的ETBASIC</a>，幾乎成為當時<a href="../Page/臺灣.md" title="wikilink">臺灣學習BASIC語言的標準配備</a>。外部命令部分最重要的則是增加了XCOPY與APPEND，增強了早就該有的檔案管理能力。</p></td>
</tr>
<tr class="even">
<td><p>MS-DOS 4.0</p></td>
<td><p>1988年6月，主要基于IBM的代码库，而不是微软自己的代码库。加入了最大2GB容量硬碟機支援，引入EMM（軟體模擬EMS）以及新規格<a href="../Page/XMS.md" title="wikilink">XMS記憶體技術</a>，令MS-DOS作業系統可以使用1MB以上的記憶體。開始有DOSSHELL的使用。DOSSHELL可以被視為MS-DOS的<a href="../Page/GUI.md" title="wikilink">GUI界面</a>，並有切換程式作業的能力。</p></td>
</tr>
<tr class="odd">
<td><p>MS-DOS 4.01</p></td>
<td><p>1988年12月，對於舊版所存在的一系列错误進行修正</p></td>
</tr>
<tr class="even">
<td><p>MS-DOS 5.0</p></td>
<td><p>1991年6月，第三次重大改版，可能也是MS-DOS史上最重要的改版。這個版本繼承4.0對於記憶體管理的改進，是EMM規格最為穩定、普及的版本，也加入了許多記憶體管理的程式，如EMM386、MEM等等，為的就是與Windows作業環境好好搭配，連帶也使得MS-DOS記憶體管理成為當時許多軟體亟欲配合增強的方向，如何設定MS-DOS記憶體配置成為熱門話題。BASIC直譯器改為QuickBASIC的簡易版本QBASIC，內建文字編輯器則由原來的行編輯EDLIN改為全螢幕編輯的EDIT（其實只是對QBASIC.EXE多下一道參數而已）。減少外部命令對於版本的需求，而在千呼萬喚中，終於加入DOSKEY、UNDELETE、Quick Format、UNFORMAT等能力。另一個值得一提的是，這個版本的CONFIG.SYS允許多重選項，方便使用者於開機時切換不同的開機組態設定，以滿足不同應用程式的需求，特別是當時一些極度耗費記憶體的遊戲、常駐程式以及常用的中文系統等...。</p></td>
</tr>
<tr class="odd">
<td><p>MS-DOS 6.0</p></td>
<td><p>1993年3月，加入了許多花俏的外部命令。系統檢測程式MSD被加入。DoubleSpace壓縮磁碟技術開始被使用，亦開始附上微軟自家的解毒軟體VSAFE以及MSAV。網路方面開始加入對LL5傳輸線的支援。對於磁碟，開始加入磁區整理軟體DEFRAG以及磁碟快取程式SMARTDRV。檔案管理方面，以豪華的MSBACKUP取代了命令行方式的BACKUP，另外，終於加入了DELTREE與MOVE公用程式。開始正式支援<a href="../Page/光碟機.md" title="wikilink">光碟機</a>。記憶體管理方面則加入了功能較豐富的MEMMAKER組態最佳化程式。</p></td>
</tr>
<tr class="even">
<td><p>MS-DOS 6.2</p></td>
<td><p>1993年11月，修正DoubleSpace之bug。</p></td>
</tr>
<tr class="odd">
<td><p>MS-DOS 6.21</p></td>
<td><p>1994年2月，移除DoubleSpace。</p></td>
</tr>
<tr class="even">
<td><p>MS-DOS 6.22</p></td>
<td><p>1994年6月，最後一個銷售版本，磁碟壓縮器改版為DriveSpace重新登場。國喬（KC）取得微軟與IBM授權，搭配國喬中文系統發表自己的DOS 7.0。</p></td>
</tr>
<tr class="odd">
<td><p>MS-DOS 7.0</p></td>
<td><p>1995年8月，Windows 95所带的版本，支持长文件名。</p></td>
</tr>
<tr class="even">
<td><p>MS-DOS 7.1</p></td>
<td><p>1996年8月，Windows 95 OSR2、<a href="../Page/Windows_98.md" title="wikilink">Windows 98</a>、Windows 98SE所帶，加入对大硬盘和<a href="../Page/檔案配置表.md" title="wikilink">FAT32分区的支持等</a>。</p></td>
</tr>
</tbody>
</table>

## 参见

  - [PC-DOS](../Page/PC-DOS.md "wikilink")
  - [MS-DOS命令列表](../Page/MS-DOS命令列表.md "wikilink")

## 参考文献

## 外部連結

  - [github.com/microsoft/ms-dos － MS-DOS
    開源原始碼](https://github.com/microsoft/ms-dos)
  - [目前的授權協定政策 － MS-DOS 與
    Windows](https://web.archive.org/web/20121024151449/http://support.microsoft.com/kb/79747)
  - [DOSBox － 多平台 DOS
    模擬器](http://dosbox.sourceforge.net/news.php?show_news=1)
  - [Archive.Org － MS-DOS
    模擬器](https://archive.org/details/softwarelibrary_msdos_games)

[Category:1981年软件](https://zh.wikipedia.org/wiki/Category:1981年软件 "wikilink")
[Category:磁盘操作系统](https://zh.wikipedia.org/wiki/Category:磁盘操作系统 "wikilink")
[Category:微軟操作系统](https://zh.wikipedia.org/wiki/Category:微軟操作系统 "wikilink")
[Category:已停止開發的作業系統](https://zh.wikipedia.org/wiki/Category:已停止開發的作業系統 "wikilink")

1.