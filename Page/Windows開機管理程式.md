**開機管理程式**（）是從[Windows
Vista開始引進的新一代開機管理程式](../Page/Windows_Vista.md "wikilink")，用以取代[`NTLDR`](../Page/NTLDR.md "wikilink")。當電腦執行完[POST後](../Page/加电自检.md "wikilink")，傳統型[BIOS會根據](../Page/BIOS.md "wikilink")[啟動磁區尋找開機硬碟中標記](../Page/啟動磁區.md "wikilink")"啟動"分割區下的`BOOTMGR`檔案；若是[UEFI則是ESP分割區中的](../Page/UEFI.md "wikilink")`Bootmgfw.efi`檔案（即UEFI中的「Windows
Boot Manager」開機裝置）或`bootx64.efi`檔案，接著Windows Boot
Manager會讀取開機組態資料庫（，）下的啟動資料，接著根據其中的資料載入與預設或使用者所選擇的[作業系統](../Page/作業系統.md "wikilink")。如果選擇啟動Windows
NT 5.x系列作業系統（Windows 2000/XP/2003），則BOOTMGR會先啟動NTLDR檔案，再由NTLDR啟動Windows
NT 5.x。

## 開機組態資料庫（）

開機組態資料庫是一個儲存啟動組態且獨立於硬體的[資料庫](../Page/資料庫.md "wikilink")。它替代了由舊版使用的[`NTLDR`](../Page/NTLDR.md "wikilink")之開機組態檔案[`boot.ini`](../Page/boot.ini.md "wikilink")。

開機組態資料庫的檔案結構是與登錄資料庫完全相同的。
\[1\]在使用了[統一可延伸韌體介面](../Page/統一可延伸韌體介面.md "wikilink")（）開機方式的電腦上，這個檔案儲存在[EFI系统分割區](../Page/EFI系统分割區.md "wikilink")（ESP）；在使用Legacy
BIOS開機方式的電腦上，有可能儲存在系统分割區下的"`\Boot"目錄下的bcd檔案中`，如果是[Windows
7與後續版本](../Page/Windows_7.md "wikilink")，也有可能儲存在一個隱藏的開機分割區（200MB左右）中（尤其是在沒有任何磁碟分割的硬碟中安裝Windows
7/8/10的情況下）。

目前內建用於管理組態資料庫的公用程式為"`bcdedit.exe`"\[2\]；若要快速設定系統分割區或是修復錯誤的開機選項則使用"`bcdboot.exe`"\[3\]公用程式；其他用於管理的工具還有[EasyBCD](../Page/EasyBCD.md "wikilink")、[Bootice或是](../Page/Bootice.md "wikilink")[WMI等工具修改](../Page/WMI.md "wikilink")。

開機組態資料庫包含開機管理程式的選單及控制管理程式的行為，就像包含所使用`boot.ini`。這些選單的內容是：

  - 透過呼叫`winload.exe`或`winload.efi`启动的選項。
  - 透過呼叫`winresume.exe`或`winresume.efi`使從休眠中啟動的選項。
  - 透過呼叫`NTLDR`来启动先前版本的選項。
  - 載入和執行一個[分割區啟動紀錄的選項](../Page/分割區啟動紀錄.md "wikilink")。

開機組態資料庫允許第三方應用的整合，所以任何人都可以加入自己的診斷和修復選項工具。

##

### winload.exe

開機管理程式透過呼叫`winload.exe`程式（在[UEFI系統下則是](../Page/UEFI.md "wikilink")`winload.efi`程式），作業系统的[啟動程式来載入作業系統的核心](../Page/啟動程式.md "wikilink")（[`ntoskrnl.exe`](../Page/ntoskrnl.exe.md "wikilink")）和基本系統應用程式。`winload.exe`是用來替代先前中[NTLDR程式](../Page/NTLDR.md "wikilink")。

### winrsume.exe

当电脑从休眠模式恢复至正常模式时，`bootmgr`則调用`winresume.exe`。并使用与以往有别的启动模式和页面（Windows 7
系统则显示「恢复Windows」）以快速恢复系统先前並的工作进度。在UEFI系统中，應用程序套件名为`winresume.exe`或`winresume.efi`，通常位于`\windows\system32\boot`
。

## 进阶启动

從[Windows
Vista](../Page/Windows_Vista.md "wikilink")[作业系统開始](../Page/作业系统.md "wikilink")，[微软公司引進的新一代開機管理程式](../Page/微软.md "wikilink")，其内部囊括了众多[进阶工具](../Page/进阶.md "wikilink")，以便用以[除错和解决](../Page/除错.md "wikilink")[系统无法正常启动问题](../Page/系统.md "wikilink")\[4\]。

從[Windows 8開始](../Page/Windows_8.md "wikilink")，由於Windows預設採用快速啟動（Fast
Startup）技術，進階啟動選項預設被隱藏。

### 工具

  - 修復您的電腦（繁體）/修復計算機（簡體）

啟動[Windows RE](../Page/Windows_RE.md "wikilink")，顯示所有進階修復工具。

  - 安全模式

以[安全模式啟動系統](../Page/安全模式.md "wikilink")，並加载系统必需组件和驱动程序。

  - 安全模式 (含網路功能)

以安全模式啟動系統，並加載存取網際網路或網路上其他電腦所需的網路驅動程式和服務。

  - 安全模式 (含命令提示字元)

以安全模式啟動系統，並運行於以往有別的[命令提示字元](../Page/命令提示字元.md "wikilink")。

  - 啟用開機記錄。

对系統进行测试并记录相关日志，日志文件名称为`ntbtlog.txt`

  - 啟用低解析度視訊 (640×480)

使用當前的[視訊驅動程式及](../Page/視訊.md "wikilink")[低解析度和低重新](../Page/低解析度.md "wikilink")[整理頻率來啟動系統](../Page/整理頻率.md "wikilink")。

  - 上次的正確設定(進階)

使用上次正常[登錄和](../Page/登錄.md "wikilink")[驅動程式設定來啟動系統](../Page/驅動程式.md "wikilink")。

  - 目錄服務還原模式

啟動執行Active Directory的Windows網域控制站，以便還原目錄服務。

  - 偵錯模式

以進階疑難排解模式來啟動系統。

  - 停用系統失敗時自動重新啟動

禁止系統在遇到錯誤（包括[藍屏當機](../Page/藍屏當機.md "wikilink")）時自動[重啓動作](../Page/重啓.md "wikilink")。

  - 停用驅動程式強制簽章。

允許用户使用並安裝具有不受信任或無簽章的[驅動程式](../Page/驅動程式.md "wikilink")。

  - 正常啟動 Windows

以正常模式啟動系統。

## 引用

## 参见

  -
[Category:Windows_NT](https://zh.wikipedia.org/wiki/Category:Windows_NT "wikilink")
[Category:引导](https://zh.wikipedia.org/wiki/Category:引导 "wikilink")
[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")
[Category:引导程序](https://zh.wikipedia.org/wiki/Category:引导程序 "wikilink")

1.
2.  \[<https://technet.microsoft.com/zh-tw/library/cc709667(v=ws.10>).aspx
    BCDedit 命令列選項\]
3.  \[<https://technet.microsoft.com/zh-tw/library/dd744347(v=ws.10>).aspx
    BCDboot 命令列選項\]
4.