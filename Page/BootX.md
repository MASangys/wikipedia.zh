**BootX**是一款由[苹果公司为其](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[麥金塔电脑设计研发的基于](../Page/麥金塔.md "wikilink")[软件的](../Page/软件.md "wikilink")[啟動程式](../Page/啟動程式.md "wikilink")。BootX通过先载入所有所需的[驱动程序](../Page/驱动程序.md "wikilink")，再启动[PowerPC架构麦金塔](../Page/PowerPC.md "wikilink")（[Mac
OS X
10.2及更高版本](../Page/Mac_OS_X_v10.2.md "wikilink")）[内核的方式启动](../Page/内核.md "wikilink")[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")。\[1\]\[2\]

通过使用BootROM（一块包含的[唯讀記憶體](../Page/唯讀記憶體.md "wikilink")[芯片](../Page/集成电路.md "wikilink")），相兼容的麦金塔电脑将在[启动时显示灰色的](https://zh.wikipedia.org/wiki/引导程序 "wikilink")[苹果图标](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")。\[3\]

此程序以[苹果公共源代码许可证作为](../Page/苹果公共源代码许可证.md "wikilink")[Darwin](../Page/Darwin_\(操作系统\).md "wikilink")[操作系统的一部分发布](../Page/操作系统.md "wikilink")。\[4\]

苹果公司使用`boot.efi`取代了BootX，同时还在上安装了[統一可延伸韌體介面](../Page/統一可延伸韌體介面.md "wikilink")[唯读内存](https://zh.wikipedia.org/wiki/唯读内存 "wikilink")。\[5\]

## 历史

于1983年至1998年发布的旧麦金塔电脑使用的是最基本的[啟動程式](../Page/啟動程式.md "wikilink")；其启动程序的[代码仅仅存储于一块最大为](https://zh.wikipedia.org/wiki/计算机代码 "wikilink")4[MB的ROM](https://zh.wikipedia.org/wiki/百萬位元組 "wikilink")[芯片上](../Page/集成电路.md "wikilink")。\[6\]这颗芯片被人熟知为（又名），其与现如今需要大小足够的[硬盘来存储操作系统的设计截然不同](../Page/硬盘.md "wikilink")。此设计直至1998年才退出市场。\[7\]

随着[iMac系列的发布](../Page/IMac.md "wikilink")，引导程序固件（BootROM）得到了更新。\[8\]其固件大小减小到了
1 MB，剩余部分被移动至macOS[硬盘](../Page/硬盘.md "wikilink")中的`Mac OS
ROM`文件。\[9\]此固件使用了标准的完整实现（包含在BootROM内），命名为。\[10\]

2001年，随着[Mac OS X 10.0的发布](../Page/Mac_OS_X_v10.0.md "wikilink")，`Mac OS
ROM`也被`BootX`引导程序文件取代。\[11\]2002年，随着[Mac OS X
10.2的发布](../Page/Mac_OS_X_v10.2.md "wikilink")，“”也被灰色的苹果图标取而代之。\[12\]2006年，苹果公司发布，同时使用几乎完全相同的[統一可延伸韌體介面ROM](../Page/統一可延伸韌體介面.md "wikilink")（虽然其依然名为BootROM）和`boot.efi`文件代替BootX登上了历史舞台。\[13\]\[14\]

[File:Oldworldboot.gif|旧世界固件引导图标](File:Oldworldboot.gif%7C旧世界固件引导图标)
[File:NewworldbootOS9.png|新世界固件引导图标](File:NewworldbootOS9.png%7C新世界固件引导图标)

## 特性

为了使自家的引导程序吸引大批操作系统开发者，苹果在引导过程中添加了诸多功能以增添其灵活性，如[TFTP的](../Page/小型文件传输协议.md "wikilink")[网络引导功能](../Page/网络引导.md "wikilink")、[Mach-O和](../Page/Mach-O.md "wikilink")[ELF格式](../Page/可執行與可鏈接格式.md "wikilink")[内核的载入功能](../Page/内核.md "wikilink")。BootX同时也可从[HFS](../Page/分层文件系统.md "wikilink")、[HFS+](../Page/HFS+.md "wikilink")、[UFS和](../Page/Unix文件系统.md "wikilink")[ext2](../Page/Ext2.md "wikilink")引导。\[15\]通过按下特定组合键，用户可操控启动流程（如同时按下可开启详细引导及[單用戶模式](https://zh.wikipedia.org/wiki/單用戶模式 "wikilink")；按下可开启文本或[命令行界面以进行恢复](../Page/命令行界面.md "wikilink")）。\[16\]此固件也可通过OpenFirmware界面设置密码以保护部分功能。\[17\]

## 引导流程

[MacOSXVerboseMode.gif](https://zh.wikipedia.org/wiki/File:MacOSXVerboseMode.gif "fig:MacOSXVerboseMode.gif")
在PowerPC架构的麦金塔电脑上首先需激活BootROM，执行[加电自检后开始](https://zh.wikipedia.org/wiki/加电自检 "wikilink")[引导流程](https://zh.wikipedia.org/wiki/引导程序 "wikilink")。\[18\]若自检通过，电脑将播放启动音效，随后将控制权转交给OpenFirmware。OpenFirmware收到控制权后开始检查存储于中的设置，并根据信息构建设备树上的设备列表。\[19\]

上述流程完成后，BootX将接管启动进程，开始配置键盘和显示器、保留内存并检查用户是否按下特定组合键。\[20\]随后，BootX将显示灰色苹果图标、旋转等待光标、载入并开启内核及部分[扩展](https://zh.wikipedia.org/wiki/可載入核心模組 "wikilink")。\[21\]

## 参考文献

## 外部链接

  - osxbook.com上的[Mac OS X](http://www.osxbook.com)

[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")
[Category:引导程序](https://zh.wikipedia.org/wiki/Category:引导程序 "wikilink")

1.
2.

3.

4.
5.
6.

7.
8.

9.

10.

11.
12.

13.
14.

15.

16.

17.

18.
19.
20.
21.