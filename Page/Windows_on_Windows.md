**Windows on
Windows**，常指**16位WOW**\[1\]、**WOWEXEC**\[2\]或[简称](../Page/首字母縮略字.md "wikilink")**WOW**\[3\]。它是一个[Microsoft
Windows
NT](https://zh.wikipedia.org/wiki/Microsoft_Windows_NT "wikilink")[操作系统家族中](../Page/操作系统.md "wikilink")[32位版本的](../Page/32位元.md "wikilink")[兼容层](../Page/兼容层.md "wikilink")，目的是扩展以为运行为[Windows
3.x编写的](../Page/Windows_3.x.md "wikilink")[旧式](https://zh.wikipedia.org/wiki/遗留代码 "wikilink")[Win16应用程序提供有限支持](https://zh.wikipedia.org/wiki/Win16 "wikilink")。[64位系统上的](../Page/64位元.md "wikilink")“WOW”通常指在64位Windows上支持32位应用程序的[WOW64](../Page/WoW64.md "wikilink")。

## 背景

许多[16位Windows](https://zh.wikipedia.org/wiki/16位元 "wikilink")（Win16）旧式应用程序可以无需更改运行在较新的[32位Windows版本](../Page/32位元.md "wikilink")。原因是设计者允许应用程序开发者在行业从Windows
3.1x过渡到[Windows
95及更新版本期间纠正他们的应用程序](../Page/Windows_95.md "wikilink")，在所有客户使用的应用程序被妥善解决前，不限制客户升级到新版本的操作系统。

[Windows
9x系列的操作系统的根基采用](../Page/Windows_9x.md "wikilink")[DOS](../Page/DOS.md "wikilink")，
本质上采用16/32位混合的系统，底层的操作系统不完全是32位，因此原生运行Win16应用程序不需要特殊的仿真。而基于[Windows
NT的操作系统与Windows](../Page/Windows_NT.md "wikilink")
9x的结构有很大不同，需要一个更复杂的解决方案。为了使16位应用程序能未经修改地运行在基于NT的32位Windows系统上（少许运行时限制），有两个独立策略被采用：形实替换（thunking）和垫片（shimming）。

### 形实替换

操作系统的WOWEXEC子系统会形实替换（）旧的16位API到较新的32位环境，以提供16位[指针](../Page/指標_\(電腦科學\).md "wikilink")、内存模型和[地址空间的支持](https://zh.wikipedia.org/wiki/定址空間 "wikilink")。

所有16位应用程序默认使用共享内存空间运行在一个中。但它们也可以被配置为使用单独的内存空间运行，这种设置下每个16位进程都有自己的专用的虚拟机。单独的内存空间可以增加应用程序稳定性，防止16位应用程序互相干扰，但也增加16位[IPC和使用更多内存](../Page/行程間通訊.md "wikilink")。

Win16子系统在32位版本的[Windows NT](../Page/Windows_NT.md "wikilink"),
[2000](../Page/Windows_2000.md "wikilink"),
[XP](../Page/Windows_XP.md "wikilink"), [Server
2003](../Page/Windows_Server_2003.md "wikilink"),
[Vista](../Page/Windows_Vista.md "wikilink"), [Server
2008](../Page/Windows_Server_2008.md "wikilink"),
[7和](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[8中可用](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。64位版本的Windows中也有它，但不包括WoW
Win16支持的子系统，因此无法运行Win16应用程序，也没有提供NTVDM模拟器。[DOS和](../Page/DOS.md "wikilink")16位Windows应用程序因此不能运行在64位版本的Windows上，除非使用第三方模拟软件（例如[DOSBox](../Page/DOSBox.md "wikilink")）或[虚拟机软件运行任何](../Page/虛擬機器.md "wikilink")32位Windows、[Windows
XP Mode或DOS本身](../Page/Windows_Virtual_PC.md "wikilink")。

[Windows
NT系统中的WOWEXEC](../Page/Windows_NT.md "wikilink").EXE进程用于辅助Windows-on-Windows。\[4\]\[5\]此外Windows-on-Windows还模拟了[Windows
95和](../Page/Windows_95.md "wikilink")[Windows
98内核](../Page/Windows_98.md "wikilink")，WIN.COM文件模拟了一个[Windows
3.x内核中的](../Page/Windows_3.x.md "wikilink")，在Windows
NT上运行16位基于DOS的Windows应用程序。

### 垫片

应用程序的兼容性问题，不仅有[长文件名](https://zh.wikipedia.org/wiki/长文件名 "wikilink")、多用户和[最小特权概念的问题](../Page/最小权限原则.md "wikilink")，其他部分也可能导致某些应用程序无法正常运作，例如错误地在[NTFS安全情况下认为对整个文件系统有写入权限](../Page/NTFS.md "wikilink")。

在Windows
95操作系统设计时，一项关键要求就是文件系统要保持对[8.3文件名的向后兼容](https://zh.wikipedia.org/wiki/8.3 "wikilink")，以允许旧款应用程序继续在平台上正常运行。因而Windows
95和之后的操作系统在[文件分配表](../Page/FAT.md "wikilink")（FAT）中支持一个兼容性模式，同时存储长文件名和短文件名。

另外，试图直接访问硬件的旧款应用程序在[用户模式中不能这样做](../Page/分级保护域.md "wikilink")。如果DOS和Windows
9x的系统配置文件在Windows
NT为基础的内核中不存在，旧款应用程序也可能失败。因此0字节的[AUTOEXEC.BAT和](../Page/AUTOEXEC.BAT.md "wikilink")SYS文件在后续的、不使用它们的操作系统上继续存在。

在之后的Windows版本中，有相当多的[垫片以拦截和修改旧款应用程序的](https://zh.wikipedia.org/wiki/垫片_\(计算机\) "wikilink")[API调用](../Page/应用程序接口.md "wikilink")。\[6\]这些修复在不断更新，以解决仍在流行的旧款应用程序的问题。\[7\]

## 参见

  - [Wine](../Page/Wine.md "wikilink")

## 参考资料

## 外部链接

  - [Windows
    NT子系统](https://web.archive.org/web/20071225171236/http://www.microsoft.com/technet/archive/winntas/training/ntarchitectoview/ntarc_5.mspx?mfr=true)
  - [什么是NTVDM和WOW?](http://kb.iu.edu/data/acxn.html)
  - [监测16位Windows应用程序](https://web.archive.org/web/20071225171241/http://www.microsoft.com/technet/prodtechnol/windows2000serv/reskit/prork/preb_mon_ewvl.mspx?mfr=true)
  - [优化Windows 7如何运行16位和MS-DOS的程序](http://technet.microsoft.com/en-us/magazine/ff756590.aspx)

[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.
2.
3.
4.
5.
6.
7.