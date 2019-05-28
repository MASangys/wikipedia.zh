**NTFS-3G**是一個由[Tuxera公司開發並維護的](../Page/Tuxera.md "wikilink")[自由軟體項目](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，採用[GNU通用公共許可證釋出](https://zh.wikipedia.org/wiki/GNU通用公共許可證 "wikilink")，旨在為非微軟[Windows
NT系的](../Page/Windows_NT.md "wikilink")[作業系統提供安全快速](https://zh.wikipedia.org/wiki/作業系統 "wikilink")、具備讀寫功能的[NTFS檔案系統](../Page/NTFS.md "wikilink")[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")。

NTFS-3G最初由資深Linux驅動程式開發者Szabolcs
Szakacsits（）於2006年發起並主導，2007年初公佈了第一個穩定版本ntfs-3g-2007.02.21，原始碼託管於[SourceForge](../Page/SourceForge.md "wikilink")。隨後NTFS-3G團隊成立了[Tuxera
Inc.](../Page/Tuxera.md "wikilink")，負責NTFS-3G的進一步發展、商業推廣以及爲專案提供開發資金。目前Tuxera公司還推出了NTFS-3G的商用版本Tuxera
NTFS及NTFS for Mac，後兩者除了NTFS-3G的原始碼以外還有一些非Tuxera開發的用以加強存取效能的專有元件。\[1\]

## 主要特性

[Linux核心裡所包含的NTFS驱动程序](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")（在一些發行版上則是作爲單獨的內核模組）在內核空間上執行，僅提供讀取操作（包括列出檔案清單、開啓、複製檔案），而缺少寫入操作（包括建立檔案，對檔案的修改、更名、移動和刪除）的支援。

而NTFS-3G則是藉助[使用者空間檔案系統](https://zh.wikipedia.org/wiki/使用者空間檔案系統 "wikilink")（**F**ilesystem
in
**Use**rspace，FUSE）框架完成[掛載](https://zh.wikipedia.org/wiki/掛載 "wikilink")，以此支援對NTFS分割的大部分寫入操作。

目前實現的特性有：

  - 在NTFS分割上建立任意大小的檔案
  - 在NTFS分割上對檔案進行更名、移動、刪除、修改
  - 支援[UTF-8字元集](../Page/UTF-8.md "wikilink")
  - 支援[存取控制串列和](https://zh.wikipedia.org/wiki/存取控制串列 "wikilink")[權限的修改](https://zh.wikipedia.org/wiki/文件系统权限 "wikilink")\[2\]
  - 支援[NTFS硬連結和](https://zh.wikipedia.org/wiki/NTFS#硬链接 "wikilink")[符号链接](../Page/NTFS符号链接.md "wikilink")
  - 支援[NTFS透明壓縮](https://zh.wikipedia.org/wiki/NTFS#文件压缩 "wikilink")：對經過NTFS透明壓縮的檔案進行讀取、更名、移動、新增、刪除、修改\[3\]
  - 對NTFS[日誌的基本支援](../Page/日志文件系统.md "wikilink")，除了基本的檔案寫入操作記錄以外，還可完成對NTFS卷[檔案系統層面上的修復操作](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")
  - 對NTFS加密檔案的重命名、複製、移動、刪除操作等不涉及檔案加密/解密過程的存取操作。

對於[NTFS加密](../Page/加密文件系统.md "wikilink")，目前爲止加密檔案的建立、對已有檔案進行加密等涉及檔案加密/解密的存取操作仍未實現支援。\[4\]

自ntfs-3g-2009.2.1起，NTFS-3G已經可以預設對含不完整日誌的NTFS卷進行恢復及掛接，需要時可通過「norecover」參數禁用這個設定。\[5\]

## 支援的作業系統

最初NTFS-3G是Linux-NTFS專案的分支，第一個穩定版本也只運行於[Linux上](../Page/Linux.md "wikilink")。後來先後被移植至[FreeBSD](../Page/FreeBSD.md "wikilink")、[NetBSD](../Page/NetBSD.md "wikilink")、[OpenSolaris](../Page/Solaris.md "wikilink")、[BeOS](../Page/BeOS.md "wikilink")、[QNX](../Page/QNX.md "wikilink")、[Nucleus](../Page/Nucleus_RTOS.md "wikilink")、[VxWorks](../Page/VxWorks.md "wikilink")、[Haiku](../Page/Haiku.md "wikilink")、、[Minix](https://zh.wikipedia.org/wiki/MINIX_3 "wikilink")、[Mac
OS
X/macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")（除10.13外\[6\]）、[OpenBSD](../Page/OpenBSD.md "wikilink")、[Android等](../Page/Android.md "wikilink")\[7\]\[8\]\[9\]\[10\]，甚至[WinCE等微軟尚未有NTFS支援的微軟作業系統也有移植支援](https://zh.wikipedia.org/wiki/Windows_CE "wikilink")。

不過，由於NTFS-3G需要依賴FUSE框架運行，像是macOS等類UNIX作業系統並沒有內建FUSE，需要先安裝FUSE框架方能安裝NTFS-3G並使用（像是macOS需要安裝FUSE
for macOS等FUSE框架。而NTFS-3G的商用版本Tuxera NTFS for
Mac則是附帶了MacFUSE作爲FUSE框架）。\[11\]

Android對NTFS的支援，理論上以基於Linux核心載入NTFS-3G驅動的方式實現，但[AOSP並沒有整合任何的NTFS驅動程式](https://zh.wikipedia.org/wiki/AOSP "wikilink")，而且也不是所有的Android裝置廠商原廠就會用此種支援方式，甚至缺乏對NTFS的支援（如[小米系列手機](../Page/小米手机.md "wikilink")，原廠預載的[MIUI缺少一些檔案系統的驅動程式](../Page/MIUI.md "wikilink")，包括NTFS\[12\]），不過在一些[客製韌體上](../Page/客制Android韌體列表.md "wikilink")，絕大多數通過移植NTFS-3G驅動程式至Linux核心來實現對NTFS的支援。\[13\]此外，一些裝置可以通過[獲取root權限並安裝具備NTFS驅動程式供作業系統核心載入的](../Page/Root_\(Android\).md "wikilink")[App](https://zh.wikipedia.org/wiki/App "wikilink")，實現對NTFS分割的掛載（如[SD卡](../Page/SD卡.md "wikilink")、通過[USB
OTG掛載的](https://zh.wikipedia.org/wiki/USB_OTG "wikilink")[移动硬盘](../Page/移动硬盘.md "wikilink")）。

## 效能

2007年与2008年的两个評測顯示，NTFS-3G的驅動程式效能已能與其它一些使用FUSE的檔案系統相比，但較依賴[CPU的效能](https://zh.wikipedia.org/wiki/CPU "wikilink")，表示NTFS-3G尚未完成對效能的[最佳化](https://zh.wikipedia.org/wiki/最佳化 "wikilink")。\[14\]\[15\]

Tuxera官方的使用手冊及NTFS-3G[手册页上也提到](../Page/手册页.md "wikilink")，NTFS-3G當前的開發焦點仍集中在可靠性和實作欠缺的[POSIX功能性](https://zh.wikipedia.org/wiki/POSIX "wikilink")，存取效能並不是優先考量的，至少需要效能較好的CPU方能取得較好的存取效能。\[16\]在一些較老的系統或需要低功耗的[嵌入式裝置上](https://zh.wikipedia.org/wiki/嵌入式裝置 "wikilink")，高CPU使用量會極大地限制NTFS-3G的存取效能（尤其是寫入效能），\[17\][OpenWRT](https://zh.wikipedia.org/wiki/OpenWRT "wikilink")/[LEDE的官方說明文檔中也告知對效能較爲注意的使用者儘量避免使用NTFS檔案系統](../Page/LEDE.md "wikilink")。\[18\]

## 延伸專案

是一套[類Unix系統下的工具集](https://zh.wikipedia.org/wiki/類UNIX "wikilink")，用於對NTFS卷進行建立、修改、刪除等多種操作。最初[復刻自NTFS](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")-3G。2011年4月，ntfsprogs合併至NTFS-3G專案，並持續維護至今。

## 發展過程

  - 自2006年10月31日起，NTFS-3G獨立成專案，不再是Linux-NTFS專案的一部分。
  - 於2007年2月21日，Szabolcs
    Szakacsits宣布「第一個開放原始碼、完全自由、穩定的讀寫NTFS的驅動程式，NTFS-3G
    1.0釋出」。
  - 自ntfs-3g-2009.1.1版起已經對UTF-8[字元集實現完整支援](https://zh.wikipedia.org/wiki/字元集 "wikilink")
  - 2009年10月5日，Tuxera釋出NTFS-3G for Mac，並推出了含專有元件的商用版Tuxera NTFS。\[19\]
  - 自ntfs-3g-2009.11.14版開始支援新增透明壓縮的檔案、對透明壓縮檔案的更名。
  - 自ntfs-3g-2010.8.8版開始可對已有經過透明壓縮的檔案的修改操作。
  - 2011年4月12日，宣佈ntfsprogs專案合併至NTFS-3G。

## 類似軟體

  - Tuxera NTFS及NTFS for Mac —— NTFS-3G的商用版，內含一些對存取效能有提升的專有元件
  - Paragon NTFS —— 專有軟體，開發的一套運行於作業系統核心空間的NTFS檔案系統驅動程式
  - NTFS4DOS ——
    專有免費軟體，運行於[MS-DOS上的NTFS檔案系統驅動程式](../Page/MS-DOS.md "wikilink")

## 參考資料

## 外部連結

  - [NTFS-3G官方原始碼及預編譯二進位檔下載](https://www.tuxera.com/community/open-source-ntfs-3g/)
  - [SourceForge專案頁面](https://sourceforge.net/projects/ntfs-3g/)
  - [NTFS-3G for Mac OS X
    ("Catacombae")](https://sourceforge.net/projects/catacombae/files/NTFS-3G%20for%20Mac%20OS%20X/)
  - [Writing on NTFS volumes on Mac OS X through NTFS-3G and OS X FUSE
    for free (works with Lion & Mountain
    Lion)](http://i.vishalagarwal.com/post/30387627819/ntfs-write-on-lion-or-mountain-lion)
  - [Why are there no true cross-platform
    filesystems?](https://yulian.kuncheff.com/why-are-there-no-true-cross-platform-filesystems/)

[Category:SourceForge專案](https://zh.wikipedia.org/wiki/Category:SourceForge專案 "wikilink")
[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")
[Category:使用者空間檔案系統](https://zh.wikipedia.org/wiki/Category:使用者空間檔案系統 "wikilink")

1.

2.  [NTFS-3G: NTFS Driver with Ownership and
    permissions](http://perso.orange.fr/b.andre/security.html)

3.  [Data Compression -
    Tuxera](https://www.tuxera.com/community/ntfs-3g-advanced/data-compression/)

4.  [NTFS-3G FAQ](https://www.tuxera.com/community/ntfs-3g-faq/)

5.  [NTFS-3G 2009.2.1
    changelog](http://article.gmane.org/gmane.comp.file-systems.ntfs-3g.devel/678)

6.
7.
8.

9.

10. [NTFS-3G for Mac OS X
    ("Catacombae")](https://sourceforge.net/projects/catacombae/files/NTFS-3G%20for%20Mac%20OS%20X/)

11.

12.

13.

14.

15.

16. [Performance at
    Tuxera](https://www.tuxera.com/products/tuxera-ntfs-commercial/performance/)

17.

18.

19. [NTFS-3G for Mac OS X is now Tuxera NTFS for
    Mac](http://macntfs-3g.blogspot.com/2009/10/tuxera-ntfs-for-mac.html)