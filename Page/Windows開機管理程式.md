**開機管理程式**（）是從[Windows Vista開始引進的新一代開機管理程式](../Page/Windows_Vista.md "wikilink")，用以取代[`NTLDR`](../Page/NTLDR.md "wikilink")。當電腦執行完[POST後](https://zh.wikipedia.org/wiki/加电自检 "wikilink")，傳統型[BIOS](../Page/BIOS.md "wikilink")會根據[啟動磁區尋找開機硬碟中標記](https://zh.wikipedia.org/wiki/啟動磁區 "wikilink")"啟動"分割區下的`BOOTMGR`檔案；[UEFI則是ESP分割區中的](https://zh.wikipedia.org/wiki/UEFI "wikilink")`Bootmgfw.efi`檔案（即UEFI中的「Windows Boot Manager」開機裝置，檔案名系「Boot Manager Firmware」的缩写）或`bootx64.efi`檔案，接著Windows Boot Manager會讀取開機組態資料庫（，）下的啟動資料，接著根據其中的資料載入與預設或使用者所選擇的[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。如果選擇啟動Windows NT 5.x系列作業系統（Windows 2000/XP/2003），則BOOTMGR會先啟動NTLDR檔案，再由NTLDR啟動Windows NT 5.x。

## 開機組態資料庫（）

開機組態資料庫是一個儲存啟動組態且獨立於硬體的[資料庫](https://zh.wikipedia.org/wiki/資料庫 "wikilink")。它替代了由舊版使用的[`NTLDR`](../Page/NTLDR.md "wikilink")之開機組態檔案[`boot.ini`](https://zh.wikipedia.org/wiki/boot.ini "wikilink")。

開機組態資料庫的檔案結構是與登錄資料庫完全相同的。 \[1\]在使用了[統一可延伸韌體介面](../Page/統一可延伸韌體介面.md "wikilink")（）開機方式的電腦上，BCD檔案儲存在[EFI系统分區](https://zh.wikipedia.org/wiki/EFI系统分區 "wikilink")（ESP）；在使用Legacy BIOS開機方式的電腦上，有可能儲存在系统分割區下的"`\Boot"目錄下的bcd檔案中`，如果是[Windows 7與後續版本](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")，也有可能儲存在一個隱藏的開機分割區（200MB左右）中（尤其是在沒有任何磁碟分割的硬碟中安裝Windows 7/8/10的情況下）。

內建於Windows，用於設定BCD的公用程式為"`bcdedit.exe`"\[2\]；若要快速設定系統分割區或是修復錯誤的開機選項則使用"`bcdboot.exe`"\[3\]公用程式；其他用於管理的工具還有[EasyBCD](https://zh.wikipedia.org/wiki/EasyBCD "wikilink")、[Visual BCD](https://zh.wikipedia.org/wiki/Visual_BCD "wikilink")、[Bootice或是](https://zh.wikipedia.org/wiki/Bootice "wikilink")[WMI等工具修改](https://zh.wikipedia.org/wiki/WMI "wikilink")。

開機組態資料庫包含開機管理程式的選單及控制管理程式的行為，就像包含所使用`boot.ini`。這些選單的內容是：

  - 透過呼叫`winload.exe`或`winload.efi`启动的選項。
  - 透過呼叫`winresume.exe`或`winresume.efi`使從休眠中啟動的選項。
  - 透過呼叫`NTLDR`来启动先前版本的選項。
  - 載入和執行一個[分割區啟動紀錄的選項](https://zh.wikipedia.org/wiki/分割區啟動紀錄 "wikilink")。

##

### winload.exe

開機管理程式透過呼叫`winload.exe`程式（在[UEFI系統下則是](https://zh.wikipedia.org/wiki/UEFI "wikilink")`winload.efi`程式），作業系统的[啟動程式](../Page/啟動程式.md "wikilink")来載入作業系統的核心（[`ntoskrnl.exe`](https://zh.wikipedia.org/wiki/ntoskrnl.exe "wikilink")）和基本系統應用程式。`winload.exe`是用來替代先前中[NTLDR](../Page/NTLDR.md "wikilink")程式。

### winrsume.exe

当电脑从休眠模式恢复至正常模式时，`bootmgr`則调用`winresume.exe`。并使用与以往有别的启动模式和页面（Windows 7 系统则显示「正在恢复Windows」）以快速恢复系统先前並的工作进度。在UEFI系统中，應用程序套件名为`winresume.efi`，通常位于`\windows\system32` 。

## 进阶启动

從[Windows Vista](../Page/Windows_Vista.md "wikilink")[作业系统開始](https://zh.wikipedia.org/wiki/作业系统 "wikilink")，[微软](../Page/微软.md "wikilink")公司引進的新一代開機管理程式，其内部囊括了众多[进阶工具](https://zh.wikipedia.org/wiki/进阶 "wikilink")，以便用以[除错和解决](https://zh.wikipedia.org/wiki/除错 "wikilink")[系统无法正常启动问题](https://zh.wikipedia.org/wiki/系统 "wikilink")\[4\]。

從[Windows 8開始](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")，由於Windows預設採用快速啟動（Fast Startup）技術，進階啟動選項預設被隱藏（但用户仍然可以手动开启進階啟動選項，效果和Windows 7完全相同）。

### 工具

  - 修復您的電腦（繁體）/修復計算機（簡體）

啟動進階復原選項([Windows 8或更新則出現選擇選項](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")），顯示所有進階修復工具。

  - 安全模式

以[安全模式](../Page/安全模式.md "wikilink")啟動系統，並加载系统必需组件和驱动程序。

  - 安全模式 (含網路功能)

以安全模式啟動系統，並加載存取網際網路或網路上其他電腦所需的網路驅動程式和服務。

  - 安全模式 (含命令提示字元)

以安全模式啟動系統，並運行於以往有別的[命令提示字元](../Page/命令提示字元.md "wikilink")。

  - 啟用開機記錄。

对系統进行测试并记录相关日志，日志文件名称为`ntbtlog.txt`

  - 啟用低解析度視訊 (640×480)

使用當前的[視訊驅動程式及](https://zh.wikipedia.org/wiki/視訊 "wikilink")[低解析度和低重新](https://zh.wikipedia.org/wiki/低解析度 "wikilink")[整理頻率來啟動系統](https://zh.wikipedia.org/wiki/整理頻率 "wikilink")。

  - 上次的正確設定(進階)

使用上次正常[登錄和](https://zh.wikipedia.org/wiki/登錄 "wikilink")[驅動程式設定來啟動系統](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")。

  - 目錄服務還原模式

啟動執行Active Directory的Windows網域控制站，以便還原目錄服務。

  - 偵錯模式

以進階疑難排解模式來啟動系統。

  - 停用系統失敗時自動重新啟動

禁止系統在遇到錯誤（包括[藍屏當機](https://zh.wikipedia.org/wiki/藍屏當機 "wikilink")）時自動[重啓動作](https://zh.wikipedia.org/wiki/重啓 "wikilink")。

  - 停用驅動程式強制簽章。

允許用户使用並安裝具有不受信任或無簽章的[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")。

  - 正常啟動 Windows

以正常模式啟動系統。

## 注释

{{-}}

## 引用

## 参见

  -
[Category:Windows_NT](https://zh.wikipedia.org/wiki/Category:Windows_NT "wikilink") [Category:引导](https://zh.wikipedia.org/wiki/Category:引导 "wikilink") [Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink") [Category:引导程序](https://zh.wikipedia.org/wiki/Category:引导程序 "wikilink")

1.
2.  \[<https://technet.microsoft.com/zh-tw/library/cc709667(v=ws.10>).aspx BCDedit 命令列選項\]
3.  \[<https://technet.microsoft.com/zh-tw/library/dd744347(v=ws.10>).aspx BCDboot 命令列選項\]
4.