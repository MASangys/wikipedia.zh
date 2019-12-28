**PowerShell**（包括**Windows PowerShell**和**PowerShell Core**）是[微軟公司开发的任务自动化和](https://zh.wikipedia.org/wiki/微軟公司 "wikilink")[組態管理](../Page/組態管理.md "wikilink")框架，由[.NET Framework和](../Page/.NET框架.md "wikilink")[.NET Core是构建的](../Page/.NET_Core.md "wikilink")[命令行界面](../Page/命令行界面.md "wikilink")[殼層](../Page/殼層.md "wikilink")相关脚本语言组成，最初仅Windows组件，后于2016年8月18日[开源并](../Page/开放源代码.md "wikilink")[跨平台支持](https://zh.wikipedia.org/wiki/跨平台 "wikilink")。\[1\]

在PowerShell中，管理任务通常由cmdlets（发音为command-lets）执行，这是执行特定操作的专用.NET[类](../Page/类_\(计算机科学\).md "wikilink")。可以将cmdlet集合至脚本、可执行文件（一般是独立应用程序）中，或通过常规.NET类（或WMI / COM对象）实例化。\[2\]\[3\]通过访问不同数据存储中的数据由PowerShell运行，如[资源管理器或](https://zh.wikipedia.org/wiki/资源管理器 "wikilink")[注册表](../Page/注册表.md "wikilink")。

## 源起與目的

[UNIX](../Page/UNIX.md "wikilink")系統一直有著功能強大的殼程式（[shell](../Page/殼層.md "wikilink")），Windows PowerShell的誕生就是要提供功能相當於UNIX系統的命令列殼程式（例如：[sh](../Page/Bourne_shell.md "wikilink")、或[csh](../Page/C_Shell.md "wikilink")），同時也內建腳本語言以及輔助腳本程式的工具。

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

  - 停止所有目前執行中的以"p"字元開頭命名的程式：

<!-- end list -->

``` powershell
get-process p* | stop-process
```

  - 停止所有目前執行中的所有使用大於1000MB記憶體的程式：

<!-- end list -->

``` powershell
get-process | where { $_.WS -gt 1000MB } | stop-process
```

  - 計算一個目錄下檔案內的位元組大小：

<!-- end list -->

``` powershell
get-childitem | measure-object -property length -sum
```

  - 將"hello, world\!"字串轉為英文大寫字元，成為"HELLO, WORLD\!"：

<!-- end list -->

``` powershell
"hello, world!".ToUpper()
```

  - 訂閱一個指定的RSS Feed並顯示它最近8個主題：

<!-- end list -->

``` powershell
$rssUrl = "http://blogs.msdn.com/powershell/rss.aspx"
$blog = [xml](new-object System.Net.WebClient).DownloadString($rssUrl)
$blog.rss.channel.item | select title -first 8
```

### 與命令提示符等的比較

<table>
<caption>電力殼命令行與其他命令行解釋器的內部和外部命令的比較</caption>
<thead>
<tr class="header">
<th><p>電力殼（命令行）</p></th>
<th><p>電力殼（別名）</p></th>
<th><p><a href="../Page/命令提示字元.md" title="wikilink">命令提示字元</a></p></th>
<th><p><a href="../Page/Unix_shell.md" title="wikilink">Unix shell</a></p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Get-ChildItem</p></td>
<td><p>gci, dir, ls</p></td>
<td><p><a href="../Page/Dir_(命令).md" title="wikilink">dir</a></p></td>
<td><p><a href="../Page/Ls.md" title="wikilink">ls</a></p></td>
<td><p>列出當前或給定文件夾中的所有文件和文件夾</p></td>
</tr>
<tr class="even">
<td><p>Test-Connection</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/ping" title="wikilink">ping</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/ping" title="wikilink">ping</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/ping" title="wikilink">ping</a></p></td>
<td><p>從當前計算機向指定計算機發送<a href="../Page/Ping.md" title="wikilink">互聯網控制消息協議回顯請求</a>，或指示另一台計算機這樣做</p></td>
</tr>
<tr class="odd">
<td><p>Get-Content</p></td>
<td><p>gc, type, cat</p></td>
<td><p>{{tsl|en|TYPE (DOS command)</p></td>
<td><p>type}}</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Cat_(Unix)" title="wikilink">cat</a></p></td>
</tr>
<tr class="even">
<td><p>Get-Command</p></td>
<td><p>gcm</p></td>
<td><p>{{tsl|en|help (command)</p></td>
<td><p>help}}</p></td>
<td><p>{{tsl|en|type (Unix)</p></td>
</tr>
<tr class="odd">
<td><p>Get-Help</p></td>
<td><p>help, man</p></td>
<td><p>{{tsl|en|help (command)</p></td>
<td><p>help}}</p></td>
<td><p>{{tsl|en|apropos (Unix)</p></td>
</tr>
<tr class="even">
<td><p>Clear-Host</p></td>
<td><p>cls, clear</p></td>
<td><p>{{tsl|en|cls (computing)</p></td>
<td><p>cls}}</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Clear_(Unix)" title="wikilink">clear</a></p></td>
</tr>
<tr class="odd">
<td><p>Copy-Item</p></td>
<td><p>cpi, copy, cp</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Copy_(命令)" title="wikilink">copy</a>, , </p></td>
<td><p><a href="../Page/Cp_(Unix).md" title="wikilink">cp</a></p></td>
<td><p>將文件和文件夾複製到另一個位置</p></td>
</tr>
<tr class="even">
<td><p>Move-Item</p></td>
<td><p>mi, move, mv</p></td>
<td><p>{{tsl|en|move (command)</p></td>
<td><p>move}}</p></td>
<td><p><a href="../Page/Mv_(Unix).md" title="wikilink">Mv (Unix)</a></p></td>
</tr>
<tr class="odd">
<td><p>Remove-Item</p></td>
<td><p>ri, del, erase, rmdir, rd, rm</p></td>
<td><p>{{tsl|en|del (command)</p></td>
<td><p>del}}, {{tsl|en|del (command)</p></td>
<td><p>erase}}, <a href="https://zh.wikipedia.org/wiki/Rmdir" title="wikilink">rmdir</a>, <a href="https://zh.wikipedia.org/wiki/Rmdir" title="wikilink">rd</a></p></td>
</tr>
<tr class="even">
<td><p>Rename-Item</p></td>
<td><p>rni, ren, mv</p></td>
<td><p>{{tsl|en|ren (command)</p></td>
<td><p>ren}}, <a href="https://zh.wikipedia.org/wiki/:en:ren_(command)" title="wikilink">rename</a></p></td>
<td><p><a href="../Page/Mv_(Unix).md" title="wikilink">mv</a></p></td>
</tr>
<tr class="odd">
<td><p>Get-Location</p></td>
<td><p>gl, cd, pwd</p></td>
<td><p><a href="../Page/Cd_(命令).md" title="wikilink">cd</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Pwd" title="wikilink">pwd</a></p></td>
<td><p>顯示工作路徑（當前文件夾）</p></td>
</tr>
<tr class="even">
<td><p>Pop-Location</p></td>
<td><p>popd</p></td>
<td><p>{{tsl|en|pushd and popd</p></td>
<td><p>popd}}</p></td>
<td><p>popd</p></td>
</tr>
<tr class="odd">
<td><p>Push-Location</p></td>
<td><p>pushd</p></td>
<td><p>{{tsl|en|pushd and popd</p></td>
<td><p>pushd}}</p></td>
<td><p>pushd</p></td>
</tr>
<tr class="even">
<td><p>Set-Location</p></td>
<td><p>sl, cd, chdir</p></td>
<td><p><a href="../Page/Cd_(命令).md" title="wikilink">cd</a>, <a href="../Page/Cd_(命令).md" title="wikilink">chdir</a></p></td>
<td><p>cd</p></td>
<td><p>改變工作路徑</p></td>
</tr>
<tr class="odd">
<td><p>Tee-Object</p></td>
<td><p>tee</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Tee" title="wikilink">tee</a></p></td>
<td><p>將輸入管道傳輸到文件或變量，並沿管道傳遞輸入</p></td>
</tr>
<tr class="even">
<td><p>Write-Output</p></td>
<td><p>echo, write</p></td>
<td><p><a href="../Page/Echo_(命令).md" title="wikilink">echo</a></p></td>
<td><p>echo</p></td>
<td><p>將字符串或其他對像打印到<a href="../Page/標準串流.md" title="wikilink">標準串流</a></p></td>
</tr>
<tr class="odd">
<td><p>Get-Process</p></td>
<td><p>gps, ps</p></td>
<td><p>tlist, </p></td>
<td><p><a href="../Page/Ps_(Unix).md" title="wikilink">ps</a></p></td>
<td><p>列出所有正在運行的進程</p></td>
</tr>
<tr class="even">
<td><p>Stop-Process</p></td>
<td><p>spps, kill</p></td>
<td><p>{{tsl|en|kill (command)</p></td>
<td><p>kill}}, <a href="../Page/Kill_(命令).md" title="wikilink">taskkill</a></p></td>
<td><p>kill</p></td>
</tr>
<tr class="odd">
<td><p>Select-String</p></td>
<td><p>sls</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Find" title="wikilink">find</a>, <a href="../Page/Grep.md" title="wikilink">grep</a></p></td>
<td><p>打印與圖案匹配的線</p></td>
</tr>
<tr class="even">
<td><p>Set-Variable</p></td>
<td><p>sv, set</p></td>
<td><p>{{tsl|en|Environment variable#DOS</p></td>
<td><p>set}}</p></td>
<td><p>env, export, set, setenv</p></td>
</tr>
<tr class="odd">
<td><p>Invoke-WebRequest</p></td>
<td><p>iwr, <s>curl, wget</s></p></td>
<td><p><a href="../Page/CURL.md" title="wikilink">curl</a></p></td>
<td><p><a href="../Page/Wget.md" title="wikilink">wget</a>, curl</p></td>
<td><p>從因特網上的網頁獲取內容</p></td>
</tr>
</tbody>
</table>

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