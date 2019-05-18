**SYSLINUX**專案是一個輕量級的[IBM
PC兼容機](https://zh.wikipedia.org/wiki/IBM_PC兼容機 "wikilink")[主開機紀錄](https://zh.wikipedia.org/wiki/主開機紀錄 "wikilink")[啟動程式套裝](../Page/啟動程式.md "wikilink")，讓[電腦可以使用](https://zh.wikipedia.org/wiki/電腦 "wikilink")[Linux內核開機](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")。其主要開發者為，並包含了幾個獨立的系統，其中最知名的是**ISOLINUX**。

## 列表

  - 原始的SYSLINUX，用來從[FAT和](../Page/FAT.md "wikilink")[NTFS檔案系統開機](../Page/NTFS.md "wikilink")（如軟碟和USB裝置）。
  - ISOLINUX\[1\] ，用來從[CD-ROM](../Page/CD-ROM.md "wikilink") [ISO
    9660檔案系統開機](../Page/ISO_9660.md "wikilink")。
  - PXELINUX\[2\]
    ，用來從裝設了[預啟動執行環境的網路伺服器開機](https://zh.wikipedia.org/wiki/預啟動執行環境 "wikilink")。
  - EXTLINUX\[3\]
    ，用來從[Linux的](../Page/Linux.md "wikilink")[ext2](https://zh.wikipedia.org/wiki/ext2 "wikilink")／[ext3](https://zh.wikipedia.org/wiki/ext3 "wikilink")／[ext4或](https://zh.wikipedia.org/wiki/ext4 "wikilink")[Btrfs檔案系統開機](../Page/Btrfs.md "wikilink")。
  - MEMDISK\[4\]
    ，用來從上述啟動較舊的作業系統（如[MS-DOS](../Page/MS-DOS.md "wikilink")）。
  - 兩個獨立的選單系統。
  - 額外的模組開發環境。

## 使用

### SYSLINUX和ISOLINUX

SYSLINUX通常不是拿來啟動完整的Linux作業系統，因為Linux作業系統不會安裝在FAT檔案系統上。相對地，它常用來從軟碟、[Live
USB上開機或進行救援](https://zh.wikipedia.org/wiki/Live_USB "wikilink")，或是用來引導其他輕量級的引導系統。ISOLINUX一般使用在Linux作業系統的[Live
CD及安裝光碟上](../Page/Live_CD.md "wikilink")。

從CD-ROM開機時則稍微複雜了一點。[El
Torito可開機光碟規格允許以兩種不同的模式開機](../Page/El_Torito.md "wikilink")：

  - 軟碟模擬模式:啟動資訊儲存在一個[FAT格式軟碟的映像檔裡](../Page/FAT.md "wikilink")，此處是使用CD啟動，但被辨識為一個虛擬軟碟機。此模式使用SYSLINUX。
    非模擬模式:啟動資訊直接儲存在CD裡（而不是軟碟映像檔）。這個模式使用ISOLINUX。

有時候，這樣的選擇是有用的，因為ISOLINUX面對[BIOS的](../Page/BIOS.md "wikilink")[程式錯誤時相當脆弱](https://zh.wikipedia.org/wiki/程式錯誤 "wikilink")，因為這個原因，開機時使用SYSLINUX可能較為便利。此影響較大的是1999年以前製造的電腦，而現代的電腦使用非模擬模式通常是個比較可靠的選擇。

利用SYSLINUX創造[Live
USB的例子越來越多](https://zh.wikipedia.org/wiki/Live_USB "wikilink")，例如[Slax](../Page/Slax.md "wikilink")。

較新版的ISOLINUX允許使用者創造一個被稱為「hybrid
ISO」的映像檔，可以放置於光碟或是硬碟的主開機記錄，讓使用者可以使用CD／DVD或是USB裝置開機\[5\]。

### PXELINUX

PXELINUX通常使用在與[預啟動執行環境相容](https://zh.wikipedia.org/wiki/預啟動執行環境 "wikilink")[唯讀記憶體的網路卡上](../Page/唯讀記憶體.md "wikilink")。預啟動執行環境使用[DHCP或](https://zh.wikipedia.org/wiki/DHCP "wikilink")[BOOTP來使用基本的](https://zh.wikipedia.org/wiki/BOOTP "wikilink")[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP协议 "wikilink")
網路，並透過[TFTP下載](https://zh.wikipedia.org/wiki/小型文件傳輸協議 "wikilink")[啟動程式](../Page/啟動程式.md "wikilink")。該啟動程式根據從TFTP伺服器下載的指令載入並設定[核心](https://zh.wikipedia.org/wiki/核心 "wikilink")。

通常來說，PXELINUX用於從中央伺服器啟動Linux，或是啟動[無盤系統](https://zh.wikipedia.org/wiki/無盤系統 "wikilink")。

### EXTLINUX

EXTLINUX通常是作為一個通用的啟動程式，如同[LILO或是](../Page/LILO.md "wikilink")[GRUB](../Page/GNU_GRUB.md "wikilink")。
從SYSLINUX 4開始，EXTLINUX被合併至SYSLINUX裡。\[6\]

## COMBOOT

SYSLINUX可以使用以[C語言或](https://zh.wikipedia.org/wiki/C語言 "wikilink")[組合語言寫成的COMBOOT模組來擴充功能](https://zh.wikipedia.org/wiki/組合語言 "wikilink")。32位元的模組通常使用`.c32`為副檔名。從SYSLINUX第五版開始，16位元的`.com`模組不再被支援\[7\]。

### 硬體偵測工具（HDT）

3.74版釋出後，SYSLINUX專案主持了[Hardware Detection Tool
(HDT)](https://web.archive.org/web/20140517132454/http://hdt-project.org/)專案。\[8\]
這個工具是一個SYSLINUX的com32模組，可以顯示任何x86相容系統的底層資訊。其提供了一個命令列介面以及半圖形選單模式供使用者瀏覽。
HDT是以一個com32檔的方式提供，一個可從2.88 MB軟碟啟動的映像檔。 HDT也在[SourceForge
project](http://hdt.sourceforge.net/)上登錄。

## 參見

  - [启动管理程序比较](../Page/启动管理程序比较.md "wikilink")

## 参考文献

## 外部連結

  - [SYSLINUX官方網站](http://www.syslinux.org/)

  - [下載頁](http://www.kernel.org/pub/linux/utils/boot/syslinux/)

  - [Git庫](http://git.kernel.org/cgit/boot/syslinux/syslinux.git)

  -
  - [Joseph's Site -
    PXELinux](https://web.archive.org/web/20090529105626/http://www.josephn.net/scrapbook?entry=pxelinux_stuff)-解釋如何使其運作

  - [Syslinux's dedicated com32/hdt
    directory](https://archive.is/20130105163019/http://git.zytor.com/?p=syslinux/syslinux.git;a=tree;f=com32/hdt;h=12bbe6f8b0427231c9b5330c5a46f8203837677d;hb=refs/heads/master)

[Category:Linux軟體](https://zh.wikipedia.org/wiki/Category:Linux軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.