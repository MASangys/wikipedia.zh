**DiskImageMounter**是一个从[10.3开始用来处理](../Page/Mac_OS_X_v10.3.md "wikilink")[Mac
OS
X中的](../Page/Mac_OS_X.md "wikilink")[磁盘映像的实用工具](../Page/磁盘映像.md "wikilink")。和[BOMArchiveHelper一样](../Page/BOMArchiveHelper.md "wikilink")，[双击它之后并不会出现](../Page/双击.md "wikilink")[GUI](../Page/图形用户界面.md "wikilink");
事实上，这样完全没有任何意义。它只能在`/System/Library/CoreServices/DiskImageMounter.app`中被找到。DiskImageMounter通过发起一个[守护进程来处理磁盘映像或者或联系一个当前正在运行的后台程序并将其安装到磁盘中](../Page/守护进程.md "wikilink")。这个程序所能显示的唯一一个GUI是一个有[progress
bar的窗口并列出一些选项](../Page/progress_bar.md "wikilink")(取消或跳过认证)，当它不能列出映像时会显示一个错误报告。

## 支持的映像格式

  - [Apple Disk Image](../Page/Apple_Disk_Image.md "wikilink")
    ([.dmg](../Page/.dmg.md "wikilink"), com.apple.disk-image)
  - [UDIF](../Page/Universal_Disk_Image_Format.md "wikilink") disk
    images (.udif, com.apple.disk-image-udif); UDIF segment (.devs,
    .dmgpart, com.apple.disk-image-udif-segment
  - NDIF disk image (.ndif, .img, com.apple.disk-image-ndif); NDIF disk
    image segment (.imgpart, com.apple.disk-image-ndif-segment)
  - [self mounting image](../Page/self_mounting_image.md "wikilink")
    (.smi, com.apple.disk-image-smi)
  - DVD/CD-R master image
    (.[toast](../Page/Toast_\(software\).md "wikilink"), .dvdr, .cdr,
    com.apple.disk-image-cdr, com.roxio.disk-image-toast)
  - disk image segment (dmgpart)
  - [Disk Copy](../Page/Disk_Copy.md "wikilink") 4.2 disk image (.dc42,
    .diskcopy42, com.apple.disk-image-dc42)
  - [DART](../Page/DART.md "wikilink") disk image (.dart,
    com.apple.disk-image-dart)
  - [raw disk image](../Page/raw_disk_image.md "wikilink")
    ([OSTypes](../Page/OSType.md "wikilink"): devr, hdrv, DDim,
    com.apple.disk-image-raw)
  - [PC drive container](../Page/PC_drive_container.md "wikilink")
    ([OSTypes](../Page/OSType.md "wikilink"): OPCD,
    com.apple.disk-image-pc)
  - [ISO image](../Page/ISO_image.md "wikilink") (.iso,
    public.iso-image)
  - [sparse disk image](../Page/sparse_disk_image.md "wikilink")
    (.sparseimage, com.apple.disk-image-sparse, .sparebundle)

## 参见

  - [Disk Copy](../Page/Disk_Copy.md "wikilink"), this program's
    predecessor.

[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")
[Category:虛擬光碟軟體](https://zh.wikipedia.org/wiki/Category:虛擬光碟軟體 "wikilink")