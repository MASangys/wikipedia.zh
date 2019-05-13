**AUTOEXEC.BAT**，又常被稱為**開機執行檔**，是[個人電腦上的一個系統指令檔](../Page/個人電腦.md "wikilink")，始源於[MS-DOS](../Page/MS-DOS.md "wikilink")。AUTOEXEC.BAT
的名稱來自英文字「AUTOmatic」和「EXECution」的結合，即「自動執行」之意；副檔名「BAT」則解釋了它是一個[批次檔](../Page/批次檔.md "wikilink")。

AUTOEXEC.BAT 內記載的指令於相對的作業系統啟動時自動執行。

## 作業系統

AUTOEXEC.BAT 在所有基於 [MS-DOS](../Page/MS-DOS.md "wikilink")
-{zh-hans:运行;zh-tw:執行}-的[作業系統中皆適用](../Page/作業系統.md "wikilink")：

  - [MS-DOS](../Page/MS-DOS.md "wikilink")
  - [Windows 3.x](../Page/Windows_3.x.md "wikilink")
  - [Windows 95](../Page/Windows_95.md "wikilink")
  - [Windows 98](../Page/Windows_98.md "wikilink")
  - [Windows ME](../Page/Windows_ME.md "wikilink")

## 應用

作為一個批次檔，電腦使用者可於 AUTOEXEC.BAT 內輸入任何適用於 MS-DOS
內的指令，以使該檔案內的指令於每次作業系統啟動時自動執行。AUTOEXEC.BAT
的執行次序僅次於 [CONFIG.SYS](../Page/CONFIG.SYS.md "wikilink")
之後。在視窗作業系統下，這兩個檔案皆於[圖形使用者介面](../Page/圖形使用者介面.md "wikilink")（GUI）啟動之前執行的。

AUTOEXEC.BAT
最常見的實際應用是設定作業系統的[環境參數](../Page/環境參數.md "wikilink")，例如載入鍵盤、滑鼠等[驅動程式](../Page/驅動程式.md "wikilink")、磁碟檢查工具或病毒掃瞄程式。部分[電腦病毒亦會更改](../Page/電腦病毒.md "wikilink")
AUTOEXEC.BAT，以使其在開機後自動-{zh-hans:运行;zh-tw:執行}-。

AUTOEXEC.BAT
通常位於[開機磁碟中的](../Page/開機磁碟.md "wikilink")[根目錄](../Page/根目錄.md "wikilink")。

## 範例

在早期 MS-DOS 中，AUTOEXEC.BAT 的預設設定比較簡單。

``` dos
 @ECHO OFF
 PROMPT $p$g
```

## NT 系統

由於 [Windows NT](../Page/Windows_NT.md "wikilink") 及其後版本 [Windows
2000](../Page/Windows_2000.md "wikilink")、[Windows Server
2003](../Page/Windows_Server_2003.md "wikilink") 及 [Windows
XP](../Page/Windows_XP.md "wikilink") 等都不是一個基於
[MS-DOS](../Page/MS-DOS.md "wikilink") 環境下執行的作業系統，這些作業系統啟動時都不會執行
AUTOEXEC.BAT
內的指令。然而，在這些作業系統下啟動[命令提示-{zh-hans:符;zh-tw:字元}-時](../Page/Cmd.exe.md "wikilink")，將會自動執行批次檔
AUTOEXEC.NT 內的指令。AUTOEXEC.NT 位於作業系統檔案夾內的 system32
子-{zh-hans:文件;zh-tw:資料}-夾。

[Category:磁盘操作系统](https://zh.wikipedia.org/wiki/Category:磁盘操作系统 "wikilink")
[Category:配置文件](https://zh.wikipedia.org/wiki/Category:配置文件 "wikilink")