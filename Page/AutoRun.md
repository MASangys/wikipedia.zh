> 本文内容由[AutoRun](https://zh.wikipedia.org/wiki/AutoRun)转换而来。


[AutoRun.png](https://zh.wikipedia.org/wiki/File:AutoRun.png "fig:AutoRun.png") 上「自動播放」的畫面\]\] AutoRun和AutoPlay是[微軟視窗系統的元件](https://zh.wikipedia.org/wiki/微軟視窗 "wikilink")，其內容標示着系統在搜尋到裝置時可採取的行動。

AutoRun在[Windows 95時首度露面](../Page/Windows_95.md "wikilink")，目的是幫助使用者正確執行光碟上製作者想要執行的檔案，另外AutoRun也能透過雙擊**我的電腦**內的裝置圖示啟動AutoRun。但後來隨身碟病毒橫行，微軟釋出更新關閉非光碟機的AutoRun。

在[Windows XP之後](../Page/Windows_XP.md "wikilink")，微軟讓使用者方便選擇相關應用程式，製作出如圖形化介面方式讓使用者選擇如何處理裝置中的檔案。

請注意**AutoPlay**不等同於**AutoRun**。

## AutoRun.inf的範例

``` ini
[autorun]
open=setup.exe
icon=setup.exe,0
label=My install CD
```

意思就是在我的電腦雙擊光盤盤符時會執行**setup.exe**，而顯示圖示為**setup.exe**中第0个图标（即第1个图标），標籤是**My install CD**。

## Windows的裝置頪型

微軟視窗系統中所定義的裝置類型：\[1\]

| 裝置類型             | 描述                |
| ---------------- | ----------------- |
| DRIVE_UNKNOWN   | 無法辨識的裝置           |
| DRIVE_REMOVABLE | 可卸除式裝置 (磁片、USB裝置) |
| DRIVE_FIXED     | 無法移除的裝置 (硬碟)      |
| DRIVE_REMOTE    | 網路裝置 (網路上的芳鄰)     |
| DRIVE_CDROM     | 光碟裝置              |
| DRIVE_RAMDISK   | RAMDisk           |

## AutoRun.inf的預設啟用

  - 插入裝置時啟動。
  - 雙擊我的電腦裝置時啟動。
  - 對我的電腦裝置點選右鍵選單中 "AutoRun" 項目時啟動。
  - 其他(如點擊根目錄資料夾)則不會啟動。

### Windows XP 以前

  - 所有裝置都會依照 Autorun.inf 啟動。

### Windows XP SP0 到 SP2

  - **DRIVE_CDROM** 會先執行 autorun.inf ，若不存在則執行 AutoPlay。
  - **DRIVE_REMOVABLE** 執行 AutoPlay。另外由于一些问题，在我的電腦雙擊裝置或右鍵裝置則會啟動 autorun.inf\[2\]。
  - 其他裝置都會依照 Autorun.inf 啟動。

### Windows XP SP2 到 SP3

  - **DRIVE_CDROM** 會先執行 autorun.inf ，若不存在則執行 AutoPlay。
  - **DRIVE_REMOVABLE** 和 **DRIVE_FIXED** 執行 AutoPlay，但 AutoPlay 預設選項(即AutoPlay第一個選項)是由 autorun.inf 所定義。另外由于一些问题，在我的電腦雙擊裝置或右鍵裝置則會啟動 autorun.inf\[3\]。
  - 其他裝置都會依照 Autorun.inf 啟動。

### Windows Vista

  - 在所有类型的驱动器中，AutoRun.inf不再自动默默地运行。所有的卷都是通过AutoPlay来处理：默认情况下，会弹出相应的对话框给用户。

### Windows 7

  - **DRIVE_CDROM** 會先執行 autorun.inf ，若不存在則執行 AutoPlay。
  - 其他僅執行 AutoPlay ，而且 AutoRun.inf 並不會影響 AutoPlay 預設選項。
  - 即使修改 NoDriveTypeAutoRun 值也無效。

在2011年2月8日发布的安全公告KB967940中,微软对Windows自动运行功能进行了最新升级，限定Windows XP、Windows Server 2003、Vista和Windows Server 2008平台上的自动运行功能仅支持CD和DVD媒体。当用户使用包含autorun.inf文件的USB设备、网络共享或其它非CD/DVD媒体时，系统不会执行自动运行。安装此次更新后，当插入USB设备时，用户不会收到程序安装的提示对话框，用户需要手动打开文件夹找到安装文件，然后双击安装软件。不过，在连接至计算机时，有些USB的固件会让系统将其识别为CD，那么本次针对AutoRun的升级就对它们无效了。

win7中自动运行/自动播放功能唯一得以保留的地方是在光盘载体上。

## AutoRun.inf的問題

著名的 kavo 隨身碟病毒就是使用 autorun.inf 散播病毒，一旦電腦中了病毒之後就會對所有磁碟持續寫入 autorun.inf ，讓使用者在別台電腦使用裝置時也會中相關的病毒。

隨著病毒的更新，其手法也日新月異，如圖示使用跟資料夾一樣的圖示讓使用者難以分辨真假，進而造成安全性的威脅\[4\]。

## 防止病毒利用 AutoRun

有鑑於網路上充斥著莫名其妙的解決方法，微軟在2009年8月25日釋出[KB971029](http://support.microsoft.com/?kbid=971029)，關閉autorun.inf的影響，使相關功能變得跟Windows 7一樣，在2011年2月微軟正式放入在Microsoft Update中。

Windows 7以上的使用者即使在裝置中有病毒也不用擔心相關問題，除非手動執行它。

## AutoPlay的關閉

若不滿意 AutoPlay 的功能可以使用下列方式關閉，但不會影響 AutoRun 功能，若要關閉 AutoRun 請遵循上方的指示。

若是 Windows XP 以前的用戶請先修復 [KB967715](http://support.microsoft.com/kb/967715)，Windows Vista 用戶請修復 [KB950582](http://support.microsoft.com/kb/950582)，接下來請安裝[Microsoft Fix it 50471](http://go.microsoft.com/?linkid=9741395)\[5\]即可關閉。若要取消關閉，請安裝[Microsoft Fix it 50475](http://go.microsoft.com/?linkid=9743275)。

## 相關機碼值

  - NoDriveTypeAutoRun

<!-- end list -->

  -
    這是控制 AutoRun 的啟用與否，其位置在於 HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\Explorer\\ ，可依表對想開啟或關閉的裝置控制。注意 HKLM 的優先權比 HKCU 來的大。這個動作也會影響 AutoPlay。

<!-- end list -->

  - NoDriveAutoRun

<!-- end list -->

  -
    這是控制 AutoRun 針對不同磁碟代號的啟用與否，其位置在於 HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\Explorer\\ ，可依表對想開啟或關閉的裝置控制。注意 HKLM 的優先權比 HKCU 來的大。

## 在其它操作系统上的作用

在[GNOME](../Page/GNOME.md "wikilink")的[Nautilus中](https://zh.wikipedia.org/wiki/Nautilus "wikilink")，autorun.inf中的icon项可以被识别。只要其指向一个正确的ico文件（Windows图标文件），Nautilus就可以将已挂载文件系统的图标替换成此图标。

## 引用資料

[Category:系统软件](https://zh.wikipedia.org/wiki/Category:系统软件 "wikilink")

1.  [GetDriveType Function](http://msdn.microsoft.com/en-us/library/aa364939.aspx), 微軟MSDN資料庫
2.  [如何在 Windows 中更正「停用自動執行登錄機碼」增強功能](http://support.microsoft.com/kb/967715)
3.
4.  [<File:Conficker> worm AutoPlay Vista.png](http://en.wikipedia.org/wiki/File:Conficker_worm_AutoPlay_Vista.png)
5.  [如何在 Windows 中更正「停用自動執行登錄機碼」增強功能](http://support.microsoft.com/kb/967715)，如何在 Windows 7 和其他作業系統中停用或啟用所有自動執行功能