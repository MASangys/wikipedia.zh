**DiskImageMounter**是一个从[10.3开始用来处理](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.3 "wikilink")[Mac
OS
X中的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[磁盘映像](../Page/磁盘映像.md "wikilink")的实用工具。和[BOMArchiveHelper一样](https://zh.wikipedia.org/wiki/BOMArchiveHelper "wikilink")，[双击它之后并不会出现](https://zh.wikipedia.org/wiki/双击 "wikilink")[GUI](../Page/图形用户界面.md "wikilink");
事实上，这样完全没有任何意义。它只能在`/System/Library/CoreServices/DiskImageMounter.app`中被找到。DiskImageMounter通过发起一个[守护进程](../Page/守护进程.md "wikilink")来处理磁盘映像或者或联系一个当前正在运行的后台程序并将其安装到磁盘中。这个程序所能显示的唯一一个GUI是一个有[progress
bar的窗口并列出一些选项](https://zh.wikipedia.org/wiki/progress_bar "wikilink")(取消或跳过认证)，当它不能列出映像时会显示一个错误报告。

## 支持的映像格式

  - [Apple Disk
    Image](https://zh.wikipedia.org/wiki/Apple_Disk_Image "wikilink")
    ([.dmg](https://zh.wikipedia.org/wiki/.dmg "wikilink"),
    com.apple.disk-image)
  - [UDIF](https://zh.wikipedia.org/wiki/Universal_Disk_Image_Format "wikilink")
    disk images (.udif, com.apple.disk-image-udif); UDIF segment (.devs,
    .dmgpart, com.apple.disk-image-udif-segment
  - NDIF disk image (.ndif, .img, com.apple.disk-image-ndif); NDIF disk
    image segment (.imgpart, com.apple.disk-image-ndif-segment)
  - [self mounting
    image](https://zh.wikipedia.org/wiki/self_mounting_image "wikilink")
    (.smi, com.apple.disk-image-smi)
  - DVD/CD-R master image
    (.[toast](https://zh.wikipedia.org/wiki/Toast_\(software\) "wikilink"),
    .dvdr, .cdr, com.apple.disk-image-cdr, com.roxio.disk-image-toast)
  - disk image segment (dmgpart)
  - [Disk Copy](https://zh.wikipedia.org/wiki/Disk_Copy "wikilink") 4.2
    disk image (.dc42, .diskcopy42, com.apple.disk-image-dc42)
  - [DART](https://zh.wikipedia.org/wiki/DART "wikilink") disk image
    (.dart, com.apple.disk-image-dart)
  - [raw disk
    image](https://zh.wikipedia.org/wiki/raw_disk_image "wikilink")
    ([OSTypes](https://zh.wikipedia.org/wiki/OSType "wikilink"): devr,
    hdrv, DDim, com.apple.disk-image-raw)
  - [PC drive
    container](https://zh.wikipedia.org/wiki/PC_drive_container "wikilink")
    ([OSTypes](https://zh.wikipedia.org/wiki/OSType "wikilink"): OPCD,
    com.apple.disk-image-pc)
  - [ISO image](https://zh.wikipedia.org/wiki/ISO_image "wikilink")
    (.iso, public.iso-image)
  - [sparse disk
    image](https://zh.wikipedia.org/wiki/sparse_disk_image "wikilink")
    (.sparseimage, com.apple.disk-image-sparse, .sparebundle)

## 参见

  - [Disk Copy](https://zh.wikipedia.org/wiki/Disk_Copy "wikilink"),
    this program's predecessor.

[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")
[Category:虛擬光碟軟體](https://zh.wikipedia.org/wiki/Category:虛擬光碟軟體 "wikilink")