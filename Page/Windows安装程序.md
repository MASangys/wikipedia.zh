[Windows_Setup.jpg](https://zh.wikipedia.org/wiki/File:Windows_Setup.jpg "fig:Windows_Setup.jpg")的过程\]\] **Windows安装程序**是一个为[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[操作系统](../Page/操作系统.md "wikilink")的安装执行两个进程以准备硬盘驱动器的[安装程序](../Page/安裝程式.md "wikilink")。第一个进程：初始化磁碟機；另外一个进程：复制系统文件使得操作系统能够在本地运行（参见：）。

早期版本的Windows需要现有的兼容版本的[DOS](../Page/DOS.md "wikilink")操作系统才能安装。Windows 95/Windows 98零售版/Windows Me零售版需要由DOS[開機片進入DOS](https://zh.wikipedia.org/wiki/開機片 "wikilink")，再執行Windows安裝程式（Windows 98/Me的OEM版安裝光碟支援從光碟機開機）。[Windows NT 3.1至](../Page/Windows_NT_3.1.md "wikilink")[Windows Server 2003的](../Page/Windows_Server_2003.md "wikilink")[Windows NT系列提供基于文本的安装](../Page/Windows_NT.md "wikilink")，在最后的步骤中才提示用户进入GUI向导。而随着Windows NT 6.0的发布（[Vista](../Page/Windows_Vista.md "wikilink")），微软引入了一个完全图形化的安装环境。

## Windows 1.x与Windows 2.x

[Windows 1.x](https://zh.wikipedia.org/wiki/Windows_1.x "wikilink")、[Windows 2.0](../Page/Windows_2.0.md "wikilink")、[Windows 2.1x的安装过程需要已安装兼容版本的](../Page/Windows_2.1x.md "wikilink")[MS-DOS](../Page/MS-DOS.md "wikilink")。用户必须在安装中指定所有的硬件，例如鼠标和打印机。在安装完成之后，Windows必须以手动在[命令提示符中输入](https://zh.wikipedia.org/wiki/命令提示符 "wikilink")“[WIN.COM](https://zh.wikipedia.org/wiki/WIN.COM "wikilink")”的方式启动，或是在[AUTOEXEC.BAT](../Page/AUTOEXEC.BAT.md "wikilink")的末尾添加WIN.COM来自动启动。

## Windows 3.x

[Windows 3.0](https://zh.wikipedia.org/wiki/Windows_3.0 "wikilink")、[Windows 3.1x和](https://zh.wikipedia.org/wiki/Windows_3.1x "wikilink")[Windows 3.2同样需要已安装兼容版本的](https://zh.wikipedia.org/wiki/Windows_3.2 "wikilink")[MS-DOS](../Page/MS-DOS.md "wikilink")。3.x的安装程序尝试去独立检测网卡、鼠标和其他硬件，但仍依赖于用户去指定检测不到的硬件。在安装之后，Windows必须以手动在命令提示符中输入“WIN.COM”的方式启动，或是在AUTOEXEC.BAT的末尾添加WIN.COM来自动启动。\[1\]

## Windows 9x

[Windows 95](../Page/Windows_95.md "wikilink")、[Windows 98与](../Page/Windows_98.md "wikilink")[Windows Me安裝程式需要MS](../Page/Windows_Me.md "wikilink")-DOS，但作業系統無需在MS-DOS下手動執行，Windows 95/Windows 98零售版本帶有DOS開機片，Windows 98/Me OEM版本的安裝光碟可從光碟機直接開機。但OEM版Windows 98/Me的安裝光碟會啟動一個DOS環境，然後啟動安裝程式。安装的第一阶段将硬盘分区格式化为用于Windows的[FAT文件系统](https://zh.wikipedia.org/wiki/FAT文件系统 "wikilink")，然后运行[scandisk](../Page/Microsoft_ScanDisk.md "wikilink")。如果磁盘完整并有足够空间的话，安装程序将会复制文件到安装文件夹（常为C:\\WINDOWS）。第一阶段与Windows 3.x的界面相似，一旦此阶段完成，计算机将会重启并从硬盘继续安装程序，但仍需要安装媒介继续复制文件和驱动程序。若為OEM版Windows 98/Me，在这个时候用户需要提供一份[产品密钥](https://zh.wikipedia.org/wiki/产品密钥 "wikilink")，若為零售版Windows 98/Me，則是在第一階段提供產品金鑰。

所有版本的Windows 9x安装程序在第二阶段均不能识别光盘驱动器，但由于Windows 98已将复制文件这一操作改在第三阶段（即第二次重启之后）进行，故不存在找不到安装源的现象，在第一阶段便已将安装源文件全部复制到硬盘的Windows Me亦同，然而需要在第二阶段进行复制文件这一操作的Windows 95却通常会出现找不到安装源的现象，除非事先在MS-DOS环境下加载光驱的实模式驱动程序（如OAKCDROM.SYS）。

## Windows NT

### Windows Vista之前

在[Windows NT 3.1所引入的安装流程直到](../Page/Windows_NT_3.1.md "wikilink")[Windows Vista的释出之前一直保持未变](../Page/Windows_Vista.md "wikilink")。一般的过程是：

  - 如果用户插入了安装媒介并启动进程，安装程序将会载入各种各样的硬件和文件系统驱动程序。
      - 如果需要第三方驱动检测SCSI或RAID系统，安装程序将会暂停并请求软盘上的驱动程序。参见[F6磁盘](../Page/F6磁盘.md "wikilink")。
      - 如果用户从MS-DOS或先前版本的Windows下启动安装进程（winnt.exe或winnt32.exe），安装程序将会缓存本地安装源，之后将重启计算机并从硬盘启动进行上述操作。
  - 如果用户选择使用文本界面，将会提供三个选项：1) 安装Windows；2) 修复现有的安装； 3) 退出安装。\[2\]
  - 如果用户选择安装Windows，安装程序将会给用户提供一份许可协议，且用户必须接受否则安装程序将无法继续。在Windows 2000之前，用户在同意之前需要先拉到许可协议的最底部。
  - 用户必须创建或选择一个分区，然后是格式化文件系统（[NTFS](../Page/NTFS.md "wikilink")或[FAT](https://zh.wikipedia.org/wiki/File_Allocation_Table "wikilink")）。如果这些文件系统中的任何一个已经存在，并且没有安装任何版本Windows在磁盘上，可以使当前文件系统保持不变。
  - 检查硬盘是否有错误和空间需求，若通过了检查，将会开始安装Windows。
  - 在文本界面的安装结束之后，计算机重启并从硬盘启动图形界面的安装程序，提示用户重新插入安装媒介、输入产品密钥然后继续复制文件与驱动程序。

除了Windows XP家庭版以外的Windows NT到[Windows Server 2003的所有版本都提示用户输入管理员账户](../Page/Windows_Server_2003.md "wikilink")（Administrator）的密码。

在[Windows 2000](../Page/Windows_2000.md "wikilink")、[Windows XP以及Windows](../Page/Windows_XP.md "wikilink") Server 2003上，包含了用于修复受损安装的[恢复控制台](https://zh.wikipedia.org/wiki/復原主控台 "wikilink")。它使得用户去修复磁盘和引导记录错误，复制缺少的或出错的文件到目标文件夹。

### Windows Vista之后

[Windows Vista](../Page/Windows_Vista.md "wikilink") 之后的操作系统都使用[Windows预先安装环境](https://zh.wikipedia.org/wiki/Windows_Preinstallation_Environment "wikilink")（Windows PE）作为安装环境。Windows预先安装环境从一开始就提供了支持鼠标的[图形用户界面](../Page/图形用户界面.md "wikilink")，而不是像先前的版本中需要基于文本的安装流程。[F6磁盘](../Page/F6磁盘.md "wikilink")的概念演进为在无需软盘的情况下为提供对计算机的支持，支持从[CD-ROM](../Page/CD-ROM.md "wikilink")和[U盘中载入驱动程序](../Page/闪存盘.md "wikilink")。不再支持将Windows安装到[FAT分区](https://zh.wikipedia.org/wiki/File_Allocation_Table "wikilink")，Windows必须被安装到[NTFS](../Page/NTFS.md "wikilink")分区。\[3\]除了Windows Server外預設禁用Administrator使用者，安裝時需要新增一個使用者。

### Windows 8/8.1/10

从[Windows 8开始引进了全新的第二世代安装程序](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")——升级助手，用于替代更新安装的Windows安装程序。其被设计为与先前的安装方法更加简单与快速，它分析系统的硬件和软件对Windows 8的兼容性，允许用户购买、下载并安装操作系统，并从先前的Windows安装中迁移文件和设置。\[4\]\[5\]安装媒介中启动时仍使用Windows安装程序。\[6\]

## 参考文献

[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink") [Category:安装软件](https://zh.wikipedia.org/wiki/Category:安装软件 "wikilink")

1.  <http://support.microsoft.com/kb/82731>

2.  <http://support.microsoft.com/kb/103939>

3.  <http://support.microsoft.com/kb/926069>

4.

5.

6.