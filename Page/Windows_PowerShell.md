**PowerShell**（包括**Windows PowerShell** and **PowerShell Core**）是[微軟公司开发的任务自动化和](https://zh.wikipedia.org/wiki/微軟公司 "wikilink")[組態管理](../Page/組態管理.md "wikilink")框架，由[.NET Framework和](../Page/.NET框架.md "wikilink")[.NET Core是构建的](../Page/.NET_Core.md "wikilink")[命令行界面](../Page/命令行界面.md "wikilink")[殼層](../Page/殼層.md "wikilink")相关脚本语言组成，最初仅Windows组件，后于2016年8月18日[开源并](../Page/开放源代码.md "wikilink")[跨平台支持](https://zh.wikipedia.org/wiki/跨平台 "wikilink")。\[1\]

在PowerShell中，管理任务通常由cmdlets（发音为command-lets）执行，这是执行特定操作的专用.NET[类](../Page/类_\(计算机科学\).md "wikilink")。可以将cmdlet集合至脚本、可执行文件（一般是独立应用程序）中，或通过常规.NET类（或WMI / COM对象）实例化。\[2\]\[3\]通过访问不同数据存储中的数据由PowerShell运行，如[资源管理器或](https://zh.wikipedia.org/wiki/资源管理器 "wikilink")[注册表](../Page/注册表.md "wikilink")。

## 源起與目的

[UNIX](../Page/UNIX.md "wikilink")系統一直有著功能強大的殼程式（[shell](https://zh.wikipedia.org/wiki/殼 "wikilink")），Windows PowerShell的誕生就是要提供功能相當於UNIX系統的命令列殼程式（例如：[sh](../Page/Bourne_shell.md "wikilink")、或[csh](../Page/C_Shell.md "wikilink")），同時也內建腳本語言以及輔助腳本程式的工具。

## 程式特性

  - 一致性的設計讓所有工具和系統資料的使用語法、命名原則都相同。
  - 腳本語言簡單易學，而且能支援現有的腳本程式和命令列工具。
  - 內含129種稱為cmdlet的標準工具，可用來處理常見的系統管理工作。
  - 具備完整的擴充功能，獨立軟體商或開發者都能很容易的自行擴充。
  - 进程间数据传递内容具有强类型特征。

cmdlet是Windows PowerShell的指令，發音唸法為command-let。這相當於[DOS](../Page/DOS.md "wikilink")或其他殼程式的內建指令，指令名稱的格式都是以[連字號](https://zh.wikipedia.org/wiki/連字號 "wikilink")（-）隔開的一對[動詞和](https://zh.wikipedia.org/wiki/動詞 "wikilink")[名詞](../Page/名詞.md "wikilink")，並且通常都是[單數名詞](https://zh.wikipedia.org/wiki/單數_\(語言學\) "wikilink")；例如線上查詢說明的cmdlet指令為get-help，名稱的動詞部分大致有get、set、add、remove等等（字母都不分大小寫）。

Windows PowerShell ISE是Windows PowerShell的主机应用程序。在此程序中，可以在单个Windows GUI中运行命令、编辑与测试脚本。此程序具有多行编辑、Tab补齐、上下文相关帮助、语法着色、选择性执行等功能，而且还支持从右到左的书写顺序等功能。

## 技術基礎

Windows PowerShell是以[.NET Framework技術為基礎](../Page/.NET框架.md "wikilink")，並且與現有的保持回溯相容，因此它的腳本程式不僅能存取.NET CLR，也能使用現有的技術。同時也包含了數種系統管理工具、簡易且一致的語法，提升管理者處理，常見如登錄資料庫、WMI。Exchange Server 2007以及System Center Operations Manager 2007等伺服器軟體都將內建Windows PowerShell。

## 範例

  - 获取所有命令\[4\]：

`PS> Get-Command`

  - 查看Get-Command命令的用法\[5\]：

`PS> Get-Help Get-Command`

  - 停止所有目前執行中的以"p"字元開頭命名的程式：

`PS> get-process p* | stop-process`

  - 停止所有目前執行中的所有使用大於1000MB記憶體的程式：

`PS> get-process | where { $_.WS -gt 1000MB } | stop-process`

  - 計算一個目錄下檔案內的位元組大小：

`PS> get-childitem | measure-object -property length -sum`

  - 等待一個叫做"notepad"的程式執行結束：

`PS> $processToWatch = get-process notepad`
`PS> $processToWatch.WaitForExit()`

  - 將"hello, world\!"字串轉為英文大寫字元，成為"HELLO, WORLD\!"：

`PS> "hello, world!".ToUpper()`

  - 在字串"string"的第1個字元後插入字串"ABC"，成為"sABCtring"：

`PS> "string".Insert(1, "ABC")`

  - 訂閱一個指定的RSS Feed並顯示它最近8個主題：

`PS> $rssUrl = "`<http://blogs.msdn.com/powershell/rss.aspx>`"`
`PS> $blog = [xml](new-object System.Net.WebClient).DownloadString($rssUrl)`
`PS> $blog.rss.channel.item | select title -first 8`

  - 把"$UserProfile"設定成數值"UserProfile"的環境變數：

`PS> $UserProfile = $env:UserProfile`

## 參考文獻

<div class="references-small">

<references>

</references>

</div>

## 擴展閱讀

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
## 外部連結

  - 微软官网

<!-- end list -->

  - [Windows PowerShell](http://technet.microsoft.com/-%7Bzh-cn:zh-cn;zh-tw:zh-tw%7D-/library/bb978526.aspx)：PowerShell简介
  - [Windows PowerShell 3.0 Core Modules](http://technet.microsoft.com/-%7Bzh-cn:zh-cn;zh-tw:zh-tw%7D-/library/hh847741.aspx)：**PowerShell 3.0核心模块及模块中的命令用法**
  - [Windows PowerShell Reference](http://msdn.microsoft.com/-%7Bzh-cn:zh-cn;zh-tw:zh-tw%7D-/library/ms714469.aspx)
  - [使用 Windows PowerShell 撰寫指令碼](http://technet.microsoft.com/-%7Bzh-cn:zh-cn;zh-tw:zh-tw%7D-/scriptcenter/dd742419.aspx)
  - [易學易用的Windows PowerShell](https://technet.microsoft.com/zh-tw/library/dd125460.aspx)
  - [PowerShell源代码](https://github.com/PowerShell/PowerShell)
  - [MSDN视频教程](https://channel9.msdn.com/Series/GetStartedPowerShell3)

<!-- end list -->

  - 其他

<!-- end list -->

  -
  - [維基](../Page/維基.md "wikilink")：[Windows PowerShell Survival Guide](http://social.technet.microsoft.com/wiki/contents/articles/183.windows-powershell-survival-guide-en-us.aspx)

{{-}}

[Category:.NET编程语言](https://zh.wikipedia.org/wiki/Category:.NET编程语言 "wikilink") [Category:動態編程語言](https://zh.wikipedia.org/wiki/Category:動態編程語言 "wikilink") [Category:直譯器](https://zh.wikipedia.org/wiki/Category:直譯器 "wikilink") [Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink") [Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:过程式编程语言](https://zh.wikipedia.org/wiki/Category:过程式编程语言 "wikilink") [Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink") [Category:面向文本的程序设计语言](https://zh.wikipedia.org/wiki/Category:面向文本的程序设计语言 "wikilink") [Category:命令壳层](https://zh.wikipedia.org/wiki/Category:命令壳层 "wikilink") [Category:2006年创建的程序设计语言](https://zh.wikipedia.org/wiki/Category:2006年创建的程序设计语言 "wikilink")

1.
2.
3.
4.
5.