**tmpfs**是[類Unix系統上暫存檔儲存空間的常見名稱](https://zh.wikipedia.org/wiki/類Unix系統 "wikilink")，通常以掛載檔案系統方式實現，並將資料儲存在[揮發性記憶體而非永久儲存裝置中](../Page/揮發性記憶體.md "wikilink")。和[RAM
disk的概念近似](../Page/RAM_disk.md "wikilink")，但後者會呈現出具有完整檔案系統的虛擬磁碟。

## 詞語定義

所有在tmpfs上儲存的資料在理論上都是暫時借放的，那也表示說，檔案不會建立在硬碟上面。一旦重新開機，所有在tmpfs裡面的資料都會消失不見。理論上，記憶體使用量會隨著tmpfs的使用而時有增長或消減。目前有許多Unix的發行版都有啟用tmpfs，預設是把它以[共享記憶體的方式用在系統的](https://zh.wikipedia.org/wiki/共享記憶體 "wikilink")/tmp目錄底下。這個特徵在`Unix`上面會表現像是：

`Filesystem            Size  Used Avail Use% Mounted on`
`tmpfs                 256M  688K  256M   1%  /tmp`

## 應用實例

### SunOS / Solaris

[SunOS是](../Page/SunOS.md "wikilink")[Solaris上一世代的作業系統](../Page/Solaris.md "wikilink")，裡頭實作了tmpfs的部份功能\[1\]最初在SunOS
4.1上實作，在1990三月釋出。\[2\] 1994年十一月，Solaris
2.1裡頭`/tmp`採用tmpfs的應用，並被納入預設的檔案系統之一。

### Linux

tmpfs在[Linux
kernel從](https://zh.wikipedia.org/wiki/Linux_kernel "wikilink")2.4之後的版本都有支援。\[3\]
tmpfs（之前比較為人所知的名稱是"shmfs"）和Linux的[ramdisk裝置定位有所不同](https://zh.wikipedia.org/wiki/ramdisk "wikilink")。Ramdisk是固定劃分一塊記憶體出來使用，且允許比較不常用的頁面可以移動到置換空間去。

[RAMFS相較之下](../Page/Sysfs.md "wikilink")，不會利用[虛擬記憶體的部份](https://zh.wikipedia.org/wiki/虛擬記憶體 "wikilink")（這個特點有利也有弊）。另外，在[MFS還有其它ramfs的舊版本](https://zh.wikipedia.org/wiki/Memory_File_System "wikilink")，都不會動態的調整大小，只能一直佔用一個固定的大小。

tmpfs的用法，舉例來說是像："`mount -t tmpfs -o size=1G,nr_inodes=10k,mode=0700
tmpfs /space`" 這樣就會使用1
[GiB的置換空間](https://zh.wikipedia.org/wiki/GiB "wikilink")，裡頭有10240
inodes且規定是在`/space`目錄底下存取。這個檔案系統的大小是可以隨時調整的，像是再追加一個指令如：`mount -o
remount,size=2G /space`"。

要註記一點，如果／tmp有安全上的顧慮的話，最好追加[sticky
bit上來](https://zh.wikipedia.org/wiki/sticky_bit "wikilink")。\[4\]，就是權限應該被設作"mode=1777"，而不是"mode=0777或"mode=777"

如果要是开机启用tmpfs那就是在fstab里面加个参数：

`tmpfs /media/ramdisk tmpfs size=2G,defaults,noatime,mode=1777 0 0`

其中2G是固定大小。

### BSD

從2005年九月10號之後tmpfs也正式被收錄到[NetBSD的原始碼裡頭](../Page/NetBSD.md "wikilink")\[5\]，同時在4.0之後的版本啟用了這個功能。
[FreeBSD也已經收錄了NetBSD的這項功能](../Page/FreeBSD.md "wikilink")，在7.0之後的版本也跟著啟用。

### 微軟Windows

[視窗作業系統也有一個類似tmpfs的方式來處理](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，就是"temporary
files"。在系統的低記憶體底下，檔案會以FILE_ATTRIBUTE_TEMPORARY和FILE_FLAG_DELETE_ON_CLOSE（「暫存檔案」與「關閉時刪除該檔」的旗標）標記在記憶體裡面。這種方式的處理相當類似tmpfs，除了這些檔案會被寫入到特定的低記憶體位置而不是置換空間去。這個技術也常用在伺服器傳送檔案的時候，把檔案傳送到客戶端之前先丟到一個緩衝的暫存上面。

## 參考資料

  - [Documentation/filesystems/tmpfs.txt](http://lxr.linux.no/source/Documentation/filesystems/tmpfs.txt)
    documentation in Linux source tree
  - [tmpfs
    (7FS)](https://web.archive.org/web/20090616005843/http://docs.sun.com/app/docs/doc/817-3947/6mjgnrler?l=en&a=view)
    Solaris 10 man page
  - [mount_tmpfs
    (8)](http://netbsd.gw.com/cgi-bin/man-cgi?mount_tmpfs+8+NetBSD-current)
    NetBSD man page

[Category:特殊目的文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的文件系统 "wikilink")
[Category:Linux内核支持的特殊目的文件系统](https://zh.wikipedia.org/wiki/Category:Linux内核支持的特殊目的文件系统 "wikilink")
[Category:1987年面世](https://zh.wikipedia.org/wiki/Category:1987年面世 "wikilink")

1.
2.
3.   說明Linux的應用方式的文章
4.  常見一個 /tmp底下典型的安全漏洞
5.