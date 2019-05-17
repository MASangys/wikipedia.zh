\-{T|zh:RAM disk;zh-hans:RAM盘;zh-hant:RAM disk;zh-cn:RAM盘;zh-tw:RAM
disk;zh-hk:RAM碟;zh-sg:RAM disk;zh-mo:RAM碟;}- -{H|zh:RAM
disk;zh-hans:RAM盘;zh-hant:RAM disk;zh-cn:RAM盘;zh-tw:RAM
disk;zh-hk:RAM碟;zh-sg:RAM disk;zh-mo:RAM碟;}- **RAM
disk**是通过使用软件将[RAM模拟当做](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")[硬盘来使用的一种技术](../Page/硬盘.md "wikilink")。

相对于传统的硬盘文件访问来说，这种技术可以极大的提高在其上进行的文件访问的速度。但是RAM的易失性也意味着当关闭电源后的数据将会丢失。某些时候这不是问题，比如说对于一个加密文档的明文来说。但是在大多数情况下，传递到RAM
disk上的数据都是其他在别处有永久性存贮文件的一个拷贝，当系统重启后可以重新建立。

## 实现

软件的RAM
disk使用一般的RAM的一部分来模拟一个硬盘。通常都可以使用由操作系统[内核支持的机制来实现](../Page/内核.md "wikilink")，但是通过[用户空间](https://zh.wikipedia.org/wiki/user_space "wikilink")（相对于“[内核空间](https://zh.wikipedia.org/wiki/内核空间 "wikilink")”）的应用程序进程来进行这种的模拟也是有可能的。\[1\]
因为存贮在RAM disk中文件一般都是临时性的，所以也就不需要使用电池备份，或者UPS等设备。

某些RAM
disk使用压缩的文件系统例如：[cramfs](https://zh.wikipedia.org/wiki/cramfs "wikilink")。这是因为一般的RAM
disk都容量一般都较小， 且RAM的价格比硬盘要高，所以这样做是很合理的。

## 作为Web缓存

可以使用RAM
disk来做为[Web缓存](https://zh.wikipedia.org/wiki/Web_caches "wikilink")，这样可以提高加载页面的速度。\[2\]

由于RAM disk的易失性，还带来了安全性上的好处。\[3\]

## 历史

世界上第一个在微机上商用的的RAM disk软件是1980年代由[Microcosm
Ltd公司开发的](https://zh.wikipedia.org/wiki/Microcosm_Ltd "wikilink")[Silicon
Disk
System](https://zh.wikipedia.org/wiki/Silicon_Disk_System "wikilink")，首先是在[CP/M操作系统上](https://zh.wikipedia.org/wiki/CP/M "wikilink")，后来在[MS-DOS上](../Page/MS-DOS.md "wikilink")。由于[Commodore
hardware的内存地址的限制](https://zh.wikipedia.org/wiki/Commodore_Business_Machines "wikilink")，RAM
disk在[Commodore
64和](https://zh.wikipedia.org/wiki/Commodore_64 "wikilink")[Commodore
128操作系统上很流行](https://zh.wikipedia.org/wiki/Commodore_128 "wikilink")。[AmigaOS自身就是RAM](../Page/AmigaOS.md "wikilink")
disk的能力。

[Microsoft于](https://zh.wikipedia.org/wiki/Microsoft "wikilink")1983年在[MS-DOS](../Page/MS-DOS.md "wikilink")（版本2.0）上加入了RAM
disk的功能。[Apple
Computer于](https://zh.wikipedia.org/wiki/Apple_Computer "wikilink")1991年在[Apple
Computer上也加入了这个特性](https://zh.wikipedia.org/wiki/Apple_Computer "wikilink")。另外，许多的[Unix与](https://zh.wikipedia.org/wiki/Unix "wikilink")[Unix-like系统也提供某种程度上的RAM](https://zh.wikipedia.org/wiki/Unix-like "wikilink")
disk功能。尤其是在[Linux上](../Page/Linux.md "wikilink")，在安装於某些高性能，低资源設備的情况下。

## 相關軟體

  - [Buffalo
    Ramdisk](https://zh.wikipedia.org/wiki/Buffalo_Ramdisk "wikilink")：能設置關機保全數據存回實體硬碟／儲存器；不支持
    Windows 8+。
  - [SoftPerfect RAM
    Disk](https://zh.wikipedia.org/wiki/SoftPerfect_RAM_Disk "wikilink")
    3.4.6：足夠完善的功能，效能比 Buffalo Ramdisk
    稍高且讀寫表現更穩定；擁有優秀的系統向上支持及全位元(x86/x64)
    capabilities 性，支持運行於 Windows 8、Windows 8.1、Windows 10／Enterprise
    Technical Review 2015 中通過測試。

## 参考

<references />

## 外部链接

  - 示例代码去创建ramdisk[驱动程序在](https://zh.wikipedia.org/wiki/driver "wikilink")[Win32](http://www.codeguru.com/cpp/w-p/system/devicedriverdevelopment/article.php/c5789/)和[classic
    macOS](http://developer.apple.com/samplecode/RAMDisk/)
  - [Unix 魚殼脚本 For
    macOS](https://www.facebook.com/notes/%E9%B0%B0%E9%AE%87%E9%AF%A0/speeddisk/931820436887432)和[命令行](http://mac.wikia.com/wiki/RAM_disk#Creating_a_RAM_disk)去创建一个Ramdisk在[macOS](http://zh.apple.wikia.com/wiki/Ram_Disk)上

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink")

1.  [AppDisk for the classic Mac
    OS](https://web.archive.org/web/20011108190812/http://homepage.mac.com/mavsftwre/shareware02.html)是用户空间的ramdisk实用工具在目前市场中的一个例子。
2.  [Using a RAM disk for browsing the web on
    Macs](http://www.macosxhints.com/article.php?story=20040827132909881)
3.  [Using a RAM disk to improve security in
    firefox](http://www.ghacks.net/2007/12/14/use-a-ramdisk-to-increase-firefox-security/)