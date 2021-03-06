> 本文内容由[GNU GRUB](https://zh.wikipedia.org/wiki/GNU_GRUB)转换而来。


[GNU_GRUB_on_MBR_partitioned_hard_disk_drives.svg](https://zh.wikipedia.org/wiki/File:GNU_GRUB_on_MBR_partitioned_hard_disk_drives.svg "fig:GNU_GRUB_on_MBR_partitioned_hard_disk_drives.svg")分区表的硬盘上\]\] [GNU_GRUB_on_GPT_partitioned_hard_disk_drives.svg](https://zh.wikipedia.org/wiki/File:GNU_GRUB_on_GPT_partitioned_hard_disk_drives.svg "fig:GNU_GRUB_on_GPT_partitioned_hard_disk_drives.svg")分区表的硬盘上\]\] [GNU_GRUB_components.svg](https://zh.wikipedia.org/wiki/File:GNU_GRUB_components.svg "fig:GNU_GRUB_components.svg")（0扇区）。如果可行（出于向后兼容的原因第一个分区起始于63扇区而非1扇区，但这不是强制的），`core.img`被写入介于MBR和第一分区之间的空扇区之中。`/boot/grub`目录可以放在单独的分区中，也可以放在根分区中。\]\]

**GNU GRUB**（简称“GRUB”）是一个来自[GNU项目的](../Page/GNU計劃.md "wikilink")[启动引导程序](https://zh.wikipedia.org/wiki/启动引导程序 "wikilink")。GRUB是[多启动规范的实现](https://zh.wikipedia.org/wiki/多启动规范 "wikilink")，它允许用户可以在计算机内同时拥有多个操作系统，并在计算机启动时选择希望运行的操作系统。GRUB可用于选择操作系统分区上的不同[内核](../Page/内核.md "wikilink")，也可用于向这些内核传递启动参数。

GNU GRUB的前身为**Grand Unified Bootloader**。它主要用于[类Unix系统](../Page/类Unix系统.md "wikilink")；同大多[Linux发行版](../Page/Linux发行版.md "wikilink")一样，[GNU](../Page/GNU.md "wikilink")系统也采用GNU GRUB作为它的启动器。[Solaris](../Page/Solaris.md "wikilink")从10 1/06版开始在x86系统上也采用GNU GRUB作为启动器。

## 特性

GRUB可动态配置；它在启动时加载配置信息，并允许在启动时修改，如选择不同的内核和[initrd](https://zh.wikipedia.org/wiki/initrd "wikilink")。为此目的，GRUB提供了一个简单的类似[Bash](../Page/Bash.md "wikilink")的[命令行界面](../Page/命令行界面.md "wikilink")，它允许用户编写新的启动顺序。

GRUB非常轻便。它支持多种可执行格式；它除了可适用于支持多启动的操作系统外，还通过链式启动功能支持诸如[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[OS/2之类的操作系统](https://zh.wikipedia.org/wiki/OS/2 "wikilink")。GRUB支持大部分的Unix文件系统，也支持Windows适用的[FAT](../Page/FAT.md "wikilink")和[NTFS](../Page/NTFS.md "wikilink")[檔案系统](https://zh.wikipedia.org/wiki/檔案系统 "wikilink")，还支持[LBA模式](https://zh.wikipedia.org/wiki/邏輯區塊定址 "wikilink")。GRUB允许用户查看它支持的文件系统里文件的内容。

GRUB具有多种[用户界面](../Page/用户界面.md "wikilink")。多数Linux发行版利用GRUB对图形界面的支持，提供了定制的带有背景图案的启动菜单，有时也支持滑鼠。GRUB可通過GFX支援更美觀的開機畫面和開機選單。通过对GRUB的文字界面的设定，可以通过[串口实现远程终端启动](https://zh.wikipedia.org/wiki/串口 "wikilink")。

GRUB可以从网络上下载操作系统镜像，因此可以支持无盘系统。GRUB支持在启动操作系统前解压它的镜像。

与其它启动器不同，GRUB可以通过GRUB提示符直接与用户进行交互。载入操作系统前，在GRUB文本模式屏幕下键入c键可以进入GRUB命令列。在没有作業系统或者有作業系统而没有"menu.lst"（或grub.cfg）配置文件的系统上，同样可以进入GRUB提示符。通过类似bash的命令，GRUB提示符允许用户手工启动任何操作系统。把合适的命令记录在"menu.lst"（或grub.cfg）文件里，可以自动启动一个操作系统。

GRUB拥有丰富的终端命令，在命令列下使用这些命令，用户可以查看硬碟分区的细节，修改分区设置，临时重新映射磁盘顺序，从任何用户定义的配置文件启动，以及查看GRUB所支持的文件系统上的其它启动器的配置。因此，即便不知道一台电脑上安装了什么，也可以从外部设备启动一个操作系统。

GRUB采用滚动屏幕选择想要启动的操作系统。通过向"menu.lst"（或grub.cfg）文件中添加相关信息，GRUB可以控制150或者更多的启动选项，在启动时用方向键进行选择。

通过链式启动，一个启动器可以启动另一个启动器。GRUB通过2到3行的命令就可以从[DOS](../Page/DOS.md "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[BSD](../Page/BSD.md "wikilink")和[Solaris](../Page/Solaris.md "wikilink")系统启动。

尽管GRUB为类Unix系统进行了编译和打包，但也有供DOS和Windows使用的变种[GRUB4DOS等](https://zh.wikipedia.org/wiki/GRUB4DOS "wikilink")。GRUB也可以不附带任何操作系统而作为孤立系统安装。从CD上启动时运用GRUB需要1个文件，而从软盘、硬盘和USB设备上启动时需要2个文件。这些文件可以在任何支援GRUB的Linux CD上找到，用户可以很容易的找到它们。

新的GRUB2（GRUB第二版）為GRUB的重寫版本，它是GRUB的大革新。GRUB2對[Linux](../Page/Linux.md "wikilink")系統做了更多的優化，支援更多的功能，如動態的載入模組（而在之前的GRUB中，新增或刪除模組要重新編譯GRUB）等。GRUB2的版本號為0.98或更高；舊的GRUB的版本號則為0.97或更低，也被稱為“GRUB Legacy”或“GRUB1”等。GRUB2的配置、命令等較GRUB Legacy有一定的不同。

## 启动过程

计算机启动后，[BIOS](../Page/BIOS.md "wikilink")将寻找第一个可启动的设备（通常为硬盘），而后从[MBR中载入启动程序](https://zh.wikipedia.org/wiki/MBR "wikilink")，然后把控制交给这段代码。MBR位于硬盘的前512字节内。

### GRUB第一版本

GRUB的步骤1包含在MBR中。由于受MBR的大小限制，步骤一所做的几乎只是装载GRUB的下一步骤（存放在硬盘的其它位置）。步骤1既可以直接装载步骤2，也可以装载步骤1.5：GRUB的步骤1.5包含在MBR后面的30千字节中。步骤1.5载入步骤2。

当步骤2启动后，它将呈现一个界面来让用户选择启动的操作系统。这步通常采用的是图形菜单的形式，如果图形方式不可用或者用户需要更高级的控制，可以使用GRUB的命令行提示，通过它，用户可以手工指定启动参数。GRUB还可以设置超时后自动从某一个内核启动。

### GRUB第二版本

与GRUB第一版相似的是,*boot.img*像步骤1一样在MBR或在启动分区中，但是，它可以从任何[LBA48地址的一个扇区中读取](https://zh.wikipedia.org/wiki/LBA48 "wikilink")，它（*boot.img*）将读取*core.img*（产生于*diskboot.img*）的第一个扇区以用来后面读取*core.img*的剩余部分。*core.img*正常情况下跟步骤1.5储存在同一地方并且有着同样的问题，可是，当他被移动到一个文件系统或一个纯粹的分区时会比在步骤1.5移动或删除引起更少的麻烦。一旦完成读取，*core.img*会读取默认的配置文件和其他需要的模块。

### 当GRUB启动后

一旦选择了启动选项，GRUB把选择的内核载入内存并把控制交给内核。在此步骤中，对于Windows之类不支持多启动标准的操作系统，GRUB也可以通过链式启动把控制传给其它启动器。在这种情况下，其它操作系统的启动程序被GRUB保存了下来；与内核不同，其它操作系统如同直接自MBR启动。类似Windows的启动菜单，也许是另一个启动管理器，它允许在多个不支持多启动的操作系统中做进一步的选择。（在已有Windows的系统上面，或者包含多个Windows版本的系统上安装现代的Linux而不修改原操作系统，即属于这类情况。）

## 安装

GRUB的一个重要的特性是安装它不需依附一个操作系统；但是，这种安装需要一个Linux/Windows副本。由于单独工作，GRUB实质上是一个微型系统，通过链式启动的方式，它可以启动所有安装的主流操作系统。

与[LILO](../Page/LILO.md "wikilink")不同，修改GRUB的配置文件后，不必把GRUB重新安装到MBR或者某个分区中。

在Linux中，“grub-install”命令是用来把GRUB的步骤1安装到MBR或者分区中的。GRUB的配置文件、步骤2以及其它文件必须安装到某个可用的分区中。如果这些文件或者分区不可用，步骤1将把用户留在[命令行界面](../Page/命令行界面.md "wikilink")。

GRUB Legacy的設定檔為`/boot/grub/menu.lst`或`/boot/grub/grub.conf`。GRUB 2的設定檔為`/boot/grub/grub.conf`。

除了硬盘外，GRUB也可安装到[光盘](https://zh.wikipedia.org/wiki/光盘 "wikilink")、[软盘](../Page/软盘.md "wikilink")和[闪存盘](../Page/闪存盘.md "wikilink")等[移动介质中](https://zh.wikipedia.org/wiki/移动介质 "wikilink")，这样就可以啟動一台无法从硬盘启动的系统。

## 参见

  - [Windows Boot Manager](https://zh.wikipedia.org/wiki/Windows_Boot_Manager "wikilink")
  - [NTLDR](../Page/NTLDR.md "wikilink")
  - [LILO](../Page/LILO.md "wikilink")
  - [UEFI](https://zh.wikipedia.org/wiki/UEFI "wikilink")
  - [BIOS](../Page/BIOS.md "wikilink")

## 参考资料

  -
  -
## 外部链接

  - [GNU GRUB首頁](http://www.gnu.org/software/grub/)
  - [GNU GRUB官方手册](http://www.gnu.org/software/grub/manual)
  - [GRUB 2中文指南](http://wiki.ubuntu-tw.org/index.php?title=GRUB_2_%E4%B8%AD%E6%96%87%E6%8C%87%E5%8D%97)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:引导程序](https://zh.wikipedia.org/wiki/Category:引导程序 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")