> 本文内容由[Windows 3.x](https://zh.wikipedia.org/wiki/Windows_3.x)转换而来。


**Windows 3.x家族**是[微软](../Page/微软.md "wikilink")于1990年到1994年间所發行的[Windows系列操作平台](https://zh.wikipedia.org/wiki/Windows "wikilink")。其中的3.0版是第一个在世界上获得成功的Windows版本。使得微软的[操作系统](../Page/操作系统.md "wikilink")可以和[苹果电脑公司的](https://zh.wikipedia.org/wiki/苹果电脑 "wikilink")[麦金塔电脑以及在](https://zh.wikipedia.org/wiki/麦金塔电脑 "wikilink")[圖形使用者界面的](https://zh.wikipedia.org/wiki/圖形使用者界面 "wikilink")[Commodore的](../Page/康懋达国际.md "wikilink")[Amiga](../Page/Amiga.md "wikilink")竞争。

Windows 3.x需從[MS-DOS](../Page/MS-DOS.md "wikilink")操作系统執行。MS-DOS的文件管理程序被基于图标的程序管理程序（Manager）以及基于列表的文件管理程序（Winfile）取代，由此简化了程序的启动。[控制面板](../Page/控制面板.md "wikilink")作为系统设置的中心，包括了诸如界面颜色主题的有限控制功能。一些捆绑的应用程序也包括在Windows内，例如“-{zh-cn:写字板;zh-tw:小作家}-”、“计算器”等。

## 版本

### Windows 3.0

Windows 3.0版发行于1990年5月22日，并包含了显著改进的用户界面以及技术改进，以更好地利用英特尔[80286和](https://zh.wikipedia.org/wiki/80286 "wikilink")[80386处理器的内存管理功能](https://zh.wikipedia.org/wiki/80386 "wikilink")。为[MS-DOS](../Page/MS-DOS.md "wikilink")编写的文本模式程序可以在窗口中运行，使得程序可以在[多任务基础上可以使用](https://zh.wikipedia.org/wiki/多任务 "wikilink")。虽然这个版本只是为家庭用户设计的，很多游戏和娱乐程序仍然要求[DOS](../Page/DOS.md "wikilink")存取，Windows 3.0是最後一版支援英特尔[8088及](../Page/Intel_8088.md "wikilink")[8086處理器的Windows操作系统](https://zh.wikipedia.org/wiki/8086 "wikilink")。[任务管理器](../Page/任务管理器.md "wikilink")和图标都起源于Windows 3.0。

Windows 3.0保留了其前身便附带的许多简单的应用程序，如文本编辑器记事本、文字处理程序写字板、改进的绘画程序画图和计算器。录制器首次引入Windows 3.0，它可以记录宏或按键和鼠标移动的序列，然后将这些宏作为快捷键分配给按键，以便快速执行复杂的功能。此外，Windows 3.0还加入了[纸牌游戏](../Page/纸牌_\(电子游戏\).md "wikilink")。

Windows图标和图形在EGA和VGA模式下支持全部16种颜色，而Windows2.x只有非常有限的调色板用于彩色菜单，其余部分仍未黑白。此外，Windows 3.0首次支持256色SVGA模式。

Windows3.0包括保护/增强模式，该模式允许Windows应用程序比DOS应用程序更轻松地使用更多内存。它可以在任何实模式、标准模式或386增强模式下运行，并与从8086、8088到80286和80386的任何英特尔处理器兼容。\[1\]Windows3.0会尝试自动检测在哪种模式下运行，但用户可以分别使用开关`/r`（实模式）、`/s`（标准286保护模式）和`/3`（386增强保护模式）强制在特定模式下运行。\[2\]由于Windows3.0（和更高版本的Windows3.1）在16位的286保护模式下运行，而不是在32位保护模式下运行，因此它们默认使用64 KB分段内存模型。但是，在32位的CPU上，程序员可以访问更大的内存指针，因此可以将程序段扩展到所需的任何大小（由于分段描述符为24位，最大限制为16MB）。由于当时的Windows API函数是16位的，无法使用32位指针，因此尽管代码中可能包含32位指令，但仍然有必要像DOS一样将部分执行操作系统调用的程序代码放在64KB分段中\[3\]。AMI Pro是第一个需要386的Windows应用程序。正因为如此，Windows3.0总共只能访问16MB的RAM，即使是在386或更高的CPU上也是如此，而这些CPU理论上可以使用最多4 GB的内存容量。

尽管386增强模式内核是Windows/386保护模式内核的增强版本，但Windows3.0是第一个在保护模式下运行Windows程序的版本。

Windows3.0是第一个由PC兼容制造商预装在硬盘上的版本。此前，在发行其所属PC时会附带Windows 1.0或更高版本的软盘，而在Windows 3.0开发初期，Zenith就承诺将会预先安装Windows 3.0。事实上，由于Zenith在教育市场上与苹果的直接竞争，Zenith部门一直在努力推动微软开发图形用户界面。然而，Zenith个人电脑只能运行专有OEM版本的Windows，因为它们使用的是1024字节扇区的硬盘，而不是普通的512字节，并且不能使用标准的磁盘交换文件应用程序。

Windows 3.0不能像以前的版本那样作为运行时版本使用。由于Windows的市场渗透率较低，Windows 2.x的有限使用版本通常与其他应用程序（如）捆绑在一起。

Windows 3.0的标准零售和OEM发行版主要使用高密度的1.2MB和1.44MB软盘进行销售，此外还提供了720KB的版本，而360KB的版本可以从微软订购。完整安装后的Windows 3.0占用近5MB的硬盘空间。

#### Windows 3.0a

1990年12月，Microsoft发布了Windows 3.0a。此版本包含改进的功能，可移动大于64KB的数据（原始版本一次只能操作一个内存分段）。它还通过减少与网络，打印和低内存状况相关的“不可恢复的应用程序错误（UAE）”来提高稳定性。\[4\] 该版本在“帮助/关于Windows系统”对话框中显示为“Windows 3.00a”。

#### Windows 3.0 with Multimedia Extensions

微软于1991年10月发布了基于Windows3.0a的Windows 3.0 with Multimedia Extensions 1.0。该版本支持多种声卡（包括[创新科技](../Page/创新科技.md "wikilink")的[Sound Blaster Pro声卡](../Page/Sound_Blaster.md "wikilink")）以及[CD-ROM](../Page/CD-ROM.md "wikilink")驱动器。此版本主要发布给OEM分销商，主要是CD-ROM驱动器和声卡制造商，一些PC也预装了该版本。该版本增加了对音频输入和输出的基本[多媒体](../Page/多媒体.md "wikilink")支持，以及新的应用程序（媒体播放器、CD音频播放器）、更先进的帮助格式、屏幕保护程序和新的时钟。这些新功能随后集成到Windows 3.1x中。微软还开发了声卡规范来补充这些扩展。在Windows3.0实时模式下无法访问这些新功能。

MME API是第一个通用和标准化的Windows音频API。直到Windows XP为止，波形声音事件在Windows中播放，而MIDI I/O则使用使用MME。在多媒体/声音和音频控制面板小程序中列出的设备表示的是声卡驱动程序的MME API。

MME缺少声道功能，因此一次只能渲染一个音频流。从Windows 2000开始，MME支持在多个应用程序之间共享音频设备进行回放，最多支持两个录音通道、16位音频位深度和高达44.1 kHz的[采样率](../Page/采样率.md "wikilink")，所有音频均混音并采样至44.1 kHz。

### Windows 3.1

1992年4月6日，作为Windows 3.0的继任者Windows 3.1发行。随后的版本在1992至1993年间发布，直到1995年开始被[Windows 95取代](../Page/Windows_95.md "wikilink")。在Windows 3.1的生命周期中，Windows 3.1对仍然基于MS-DOS的平台引入了多个增强功能，包括改进系统稳定性并扩展对多媒体、[TrueType](../Page/TrueType.md "wikilink")字体和工作组联网的支持。

为增加系统稳定性，Windows 3.1取消了对实模式的支持，至少需要[286](../Page/Intel_80286.md "wikilink") PC和1MB内存才能运行。某些旧的功能被移除，例如[CGA图形支持](https://zh.wikipedia.org/wiki/彩色图形适配器 "wikilink")（尽管Windows 3.0的CGA驱动程序仍然可以在3.1上运行），以及与实模式Windows 2.x应用程序的兼容性。

Windows 3.1添加了对TrueType字体的支持，为Windows应用程序提供了可伸缩的字体，而不必求助于第三方字体技术，如[Adobe Type Manager](https://zh.wikipedia.org/wiki/Adobe_Type_Manager "wikilink")。Windows 3.1包括了三种带有常规、粗体、斜体和粗斜体版本的字体（[Arial](../Page/Arial.md "wikilink")、[Courier New和](https://zh.wikipedia.org/wiki/Courier#Courier_New "wikilink")[Times New Roman](../Page/Times_New_Roman.md "wikilink")）以及可伸缩符号集合（）。Truetype字体可以取决于所调用的应用程序进行任意大小的伸缩以及旋转。\[5\]

在386增强模式中，如果DOS应用程序支持鼠标，则窗口化DOS应用程序可以让用户使用Windows鼠标指针操作程序中的菜单和其他对象。少数DOS应用程序（如[Microsoft Word的最新版本](../Page/Microsoft_Word.md "wikilink")）可以访问Windows剪贴板。Windows自身附带的驱动程序不能直接与DOS应用程序一起工作，并且鼠标等硬件需要在启动Windows之前加载DOS驱动程序。

Windows 3.1中的图标除了具有更详细的外观外还能够拖拽。假设文件与能够处理打印任务的应用程序（如文字处理器）相关联，则可以将文件拖拽到打印管理器图标上，该文件会由当前打印机打印。或者可以将文件拖拽出文件管理器并放到应用程序图标或窗口上进行处理。\[6\]

与Windows 3.0的最大内存限制为16MB不同，Windows 3.1在386增强模式下理论上可以访问最大4GB的内存，而实际上限是256MB。但是，任何单个进程都不能使用超过16MB的内存。与Windows 3.0相比，文件管理器有了显著改进。Windows 3.0 with Multimedia Extensions中附带的多媒体扩展在Windows 3.1中得到了增强，并且对所有Windows 3.1用户都可用。\[7\]

Windows 3.1可通过720KB、1.2MB和1.44MB软盘发行媒介获得。它也是第一个以CD-ROM形式分发的Windows版本（尽管在Windows for Workroups 3.11中更为常见），它通常随MS-DOS 6.22一并提供在一张CD上。完整安装后的Windows 3.1占用大约10MB和15MB的硬盘空间。

Windows 3.1中通过的（仅限386增强模式）通过使用32位保护模式驱动程序而非16位BIOS功能（需要Windows暂时退出保护模式）提高了系统性能。而Windows 3.1还引入了用于存储系统和应用程序的设置信息的[注册表](../Page/注册表.md "wikilink")。

Windows 3.1是第一个可以通过[Command.com启动Windows程序的版本](https://zh.wikipedia.org/wiki/Command.com "wikilink")。

#### Windows 3.1 for Central and Eastern Europe

Windows 3.1 for Central and Eastern Europe是微软专门为[中欧和东欧地区发布的Windows](https://zh.wikipedia.org/wiki/中欧 "wikilink") 3.1版本，该版本允许使用[西里尔字母](../Page/西里尔字母.md "wikilink")，并使用带有中欧和[东欧](../Page/东欧.md "wikilink")语言特征的变音符号的字体。微软引入了自己的[代码页](../Page/代码页.md "wikilink")（[Windows-1250](https://zh.wikipedia.org/wiki/Windows-1252 "wikilink")），并支持其违反许多国家/地区的ISO标准的使用（例如，官方的波兰语代码页为ISO-8859-2，微软忽略了该代码页，但当代[Internet Explorer版本支持该代码页](../Page/Internet_Explorer.md "wikilink") ）。微软同样还发布了支持[日语](../Page/日语.md "wikilink")的Windows 3.1J，在日本市场上市的第一年（1993年）就发行了146万副本。\[8\]

#### Modular Windows

Modular Windows是在Tandy视频信息系统（Tandy Video Information System）上运行的Windows 3.1的特殊版本。微软的目标是将Modular Windows作为各种设备（特别是用于连接电视的设备）的[嵌入式操作系统](https://zh.wikipedia.org/wiki/嵌入式操作系统 "wikilink")，特别是那些设计用于连接电视的设备。然而，VIS是唯一已知的实际使用此Windows版本的产品。据称微软在VIS发布后不久就创建了一个新的且不兼容的Modular Windows版本(“1.1”)。目前尚无专用于Modular Windows 1.1的产品。

### Windows 3.11

Windows 3.11于1993年11月8日发布。与Windows 3.1相比，该版本并没有添加太多功能改进，主要包含的是对Windows 3.1的错误修复。但正因为这些修复，Windows 3.11被认为是Windows3.1的一个重大改进，对该操作系统的流行起到了推动作用。微软用Windows 3.11取代了Windows 3.1的所有零售版，并向目前拥有Windows 3.1的所有用户提供免费升级。\[9\]。

### Windows 3.2

Windows 3.2是微软专为[中国大陆](../Page/中国大陆.md "wikilink")市场开发的视窗版本，仅提供简体中文版\[10\]。1993年11月22日，微软为中国市场发布了Windows 3.1的简体中文版本。一年后，微软发布了更新，将其标识为Windows 3.2。因此，Windows 3.2是Windows 3.1中文版的更新版本。相比Windows 3.1，该版本在图标和界面中文化程度上更加成熟，并且它新加入了[智能ABC和](https://zh.wikipedia.org/wiki/智能ABC "wikilink")[郑码](../Page/郑码.md "wikilink")两种输入法用于录入汉字。这个版本是当年中国大陆的学校、企事业机关普遍使用的版本，中国大陆的软件开发商也纷纷基于此平台开发出第一代Windows软件，例如[WPS Office 1.0和](../Page/WPS_Office.md "wikilink")[科利华电脑家庭教师](https://zh.wikipedia.org/wiki/科利华电脑家庭教师 "wikilink")。

Windows 3.2通常由计算机制造商出售，带有十磁盘版本的MS-DOS，该版本在基本输出和某些翻译的实用程序中也具有简体中文字符。

## Windows for Workgroups

Windows for Workgroups是Windows 3.1x的一个扩展，允许用户无需集中式身份验证服务器即可共享其资源并请求其他资源。它通过[NetBIOS](../Page/NetBIOS.md "wikilink")使用[SMB协议](../Page/伺服器訊息區塊.md "wikilink")。

### Windows for Workgroups 3.1

Windows for Workgroups 3.1于1992年10月发布（最初代号为Winball，以后称为Sparta），具有本机网络支持。它通过基于NetBIOS的NBF或IPX网络传输协议提供了SMB文件共享支持，并引入了[傷心小棧](../Page/傷心小棧.md "wikilink")[紙牌游戏和VSHARE](../Page/卡片遊戲.md "wikilink").386（SHARE.EXE的[VxD](../Page/VxD.md "wikilink")版本）（终止和驻留程序）。

### Windows for Workgroups 3.11

Windows for Workgroups 3.11于1993年8月11日公布，并于1993年11月发布（最初代号为Snowball）。它支持32位文件访问，完整的32位网络重定向器以及在它们之间共享的VCACHE.386文件缓存。 WFW 3.11放弃了标准模式支持，并且需要386机器才能运行。

Windows 3.x需要[Winsock](../Page/Winsock.md "wikilink")程序包才能支持[TCP/IP网络](https://zh.wikipedia.org/wiki/TCP/IP协议族 "wikilink")。此前Windows 3.x用户通常使用第三方程序包，但在1994年8月，微软发布了一个附加程序包（代号为Wolverine），该程序包在Windows中为Workgroups 3.11提供了TCP/IP支持。 Wolverine是一个32位堆栈（可通过WinSock Thunk从16位Windows应用程序访问），使其具有优于大多数可用的第三方TCP/IP Windows[堆栈](../Page/堆栈.md "wikilink")的性能。但是，它仅与Windows for Workgroups 3.11兼容，并且缺少对[拨号的支持](https://zh.wikipedia.org/wiki/拨号连接 "wikilink")。 Wolverine堆栈是TCP/IP堆栈的早期版本，后来随[Windows 95一起提供](../Page/Windows_95.md "wikilink")，并且为16到32位兼容性层提供了早期测试平台，这对于Windows 95的成功至关重要。

由于改进的功能和更高的稳定性，在1994年发布MS-DOS 6.22之后，WFW 3.11很大程度上取代了Windows 3.1，用于在新的个人电脑上进行安装。

## 争议

Windows 3.x的Beta测试版本的安装程序使用一段称为AARD的特殊代码，检测当前运行的DOS是[MS-DOS](../Page/MS-DOS.md "wikilink")还是其他的DOS操作系统（如[DR-DOS](../Page/DR-DOS.md "wikilink")）。AARD代码代码在MS-DOS和[PC-DOS](../Page/PC-DOS.md "wikilink")上成功运行数个功能测试，但在竞争对手的操作系统上会出现技术支持警告消息。如果系统不是MS-DOS，安装程序将失败。DR-DOS的开发者[數位研究公司在Windows](https://zh.wikipedia.org/wiki/數位研究公司 "wikilink") 3.x的Beta测试版本发布的几周后发布了一个补丁，屏蔽AARD代码以允许安装程序继续安装。而微软在Windows 3.1的最终版本中禁用了这段警告消息，但未将AARD代码删除。当Caldera从[Novell](../Page/Novell.md "wikilink")手中购买到DR-DOS时，他们就AARD代码对微软提起诉讼，但后来达成和解。\[11\]\[12\]

## 影响

1995年8月发布的 [Windows 95](../Page/Windows_95.md "wikilink") 取代了Windows 3.x。微软在2008年11月1日正式取消了对所有16位版本的Windows的支持。

在个人电脑世界中被淘汰后的Windows 3.1以及Windows for Workgroup 3.11作为[嵌入式操作系统找到利基市场](https://zh.wikipedia.org/wiki/嵌入式操作系统 "wikilink")。截至2008年11月，[维珍航空和](https://zh.wikipedia.org/wiki/维珍航空 "wikilink")[澳洲航空](../Page/澳洲航空.md "wikilink")都将其用于远程喷气式飞机上的某些机上娱乐系统。而在零售现金收银机中，Windows 3.1和Windows for Workgroup 3.11仍然作为嵌入式操作系统继续使用。\[13\]此外，Windows 3.1还用作[DOSBox](../Page/DOSBox.md "wikilink")中的辅助应用程序，以便在64位Windows上模拟[Win16游戏](../Page/Windows_API.md "wikilink")。

2008年7月9日，微软宣布自2008年11月1日起，所有[OEM分销商将不再提供用于嵌入式设备渠道的Windows](https://zh.wikipedia.org/wiki/原始设备制造商 "wikilink") for Workgroup 3.11。\[14\]

2013年7月14日，[Linux内核](../Page/Linux内核.md "wikilink")版本3.11被正式命名为“Linux For Workgroups”，出于对Windows for Workgroup 3.11的玩笑式的引用。\[15\]

## 参照

  - [Microsoft Windows的历史](../Page/Microsoft_Windows的历史.md "wikilink")
  - [操作系统](../Page/操作系统.md "wikilink")
  - [操作系统列表](../Page/操作系统列表.md "wikilink")
  - [微軟操作系统列表](https://zh.wikipedia.org/wiki/微軟操作系统列表 "wikilink")
  - [微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")

## 腳注

[Category:磁盘操作系统](https://zh.wikipedia.org/wiki/Category:磁盘操作系统 "wikilink") [Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink") [Category:已停止開發的作業系統](https://zh.wikipedia.org/wiki/Category:已停止開發的作業系統 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10. [中文 (简体的) 3.2 升级的 Microsoft Windows 可用](https://support.microsoft.com/zh-cn/kb/129451)
11.
12.
13.
14.
15.