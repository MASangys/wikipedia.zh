**WinDbg**是[Microsoft Windows上的多用途](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[调试器](../Page/调试工具.md "wikilink")，可从微软网站上免费下载安装使用。可用于调试[用户态下的](https://zh.wikipedia.org/wiki/用户态 "wikilink")[应用程序](../Page/应用程序.md "wikilink")、[驱动程序](../Page/驱动程序.md "wikilink")，以及[核心态下的](https://zh.wikipedia.org/wiki/核心态 "wikilink")[操作系统](../Page/操作系统.md "wikilink")自身。该软件是[GUI界面](https://zh.wikipedia.org/wiki/GUI "wikilink")，但与更为著名但功能稍弱的几乎完全不同。

WinDbg看调试核心态或用户态下的[内存卸载文件](https://zh.wikipedia.org/wiki/核心文件 "wikilink")。

WinDbg能从服务器自动装载匹配的文件，如。调试符号文件在[源代码](../Page/源代码.md "wikilink")文件与[二进制可执行程序之间建立对应](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。Microsoft的公开的符号服务器提供了Windows 2000以后各版本操作系统及服务包的绝大部分符号。

WinDbg较新版本作为免费的[Debugging Tools for Windows套件的组成部分被发行](https://zh.wikipedia.org/wiki/Debugging_Tools_for_Windows "wikilink")，在WinDbg与[命令行调试器](https://zh.wikipedia.org/wiki/命令行 "wikilink")[前端如](https://zh.wikipedia.org/wiki/前端和后端 "wikilink")[KD](https://zh.wikipedia.org/wiki/KD_\(debugger\) "wikilink")，[CDB](https://zh.wikipedia.org/wiki/Microsoft_Console_Debugger "wikilink")，[NTSD之间共享了同一个调试器](https://zh.wikipedia.org/wiki/NTSD_\(debugger\) "wikilink")[后端](https://zh.wikipedia.org/wiki/前端和后端 "wikilink")。

## 调试器扩展命令

WinDbg可以装入[DLL扩展以增强调试器的命令](https://zh.wikipedia.org/wiki/DLL "wikilink")。扩展命令总是以**\!**为前缀。

例如，用于调试[Common Language Runtime](https://zh.wikipedia.org/wiki/Common_Language_Runtime "wikilink")。SOS扩展用于调试[.NET代码](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")。Psscor2与Psscor4是SOS的超集。Psscor2是微软公司内部用于对.NET Framework versions 2到3.5做产品支持服务的工具。\[1\]Microsoft直到2010年才公开发布了Psscor2\[2\]，但在此数年前微软就已经公布了该扩展的命令。\[3\]Psscor4支持.NET Framework versions 4。

## 与虚拟机配合

WinDbg可以调试运行于[VMware](../Page/VMware.md "wikilink")、[VPC](../Page/Windows_Virtual_PC.md "wikilink")、[Parallels等虚拟机上的](https://zh.wikipedia.org/wiki/Parallels "wikilink")[Microsoft Windows内核](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。

## 下载

WinDbg与[Debugging Tools for Windows套件](https://zh.wikipedia.org/wiki/Debugging_Tools_for_Windows "wikilink")，可以作为[Windows Driver Kit (WDK)或](https://zh.wikipedia.org/wiki/驱动程序开发工具包 "wikilink")[Microsoft Windows SDK的组成部分下载安装](../Page/Microsoft_Windows_SDK.md "wikilink")。也可以单独（standalone）下载安装，这只需要在安装WDK或SDK时，只选上Debugging Tools for Windows，清空其它安装选项即可。

## 参考文献

## 外部链接

  - 起步：[Install Instructions](http://blogs.msdn.com/johan/archive/2007/01/11/how-to-install-windbg-and-get-your-first-memory-dump.aspx)，[Part 1](http://blogs.msdn.com/johan/archive/2007/11/13/getting-started-with-windbg-part-i.aspx), [Part 2](http://blogs.msdn.com/johan/archive/2007/11/26/getting-started-with-windbg-part-ii.aspx)
  - [Debugging Tools for Windows](https://web.archive.org/web/20110217084226/http://www.microsoft.com/whdc/devtools/debugging/default.mspx) - information and free downloads
  - [WinDbg. From A to Z\!](http://windbg.info/doc/2-windbg-a-z.html) - Theory and examples, 111 slides
  - [Common WinDbg Commands (Thematically Grouped)](http://windbg.info/doc/1-common-cmds.html)
  - [Tutorial on solving system crashes using WinDbg](https://web.archive.org/web/20071012015505/http://www.networkworld.com/news/2005/041105-windows-crash.html)
  - [Symbols loading in WinDbg](https://web.archive.org/web/20110818233504/http://www.windowstipspage.com/2011/02/symbol-server-path-windbg-debugging.html)
  - [Windows Debuggers: Part 1: A WinDbg Tutorial](http://www.codeproject.com/KB/debug/windbg_part1.aspx)
  - [KD extension for fast VMWare and VirtualBox debugging](http://virtualkd.sysprogs.org/)
  - [SOS Debugging Extension (SOS.dll)](http://msdn.microsoft.com/en-us/library/bb190764.aspx)
  - [psscor4 (.NET 4.0)](http://www.microsoft.com/en-us/download/details.aspx?id=21255) or [psscor2 (.NET 2.0-3.5)](https://web.archive.org/web/20130603092306/http://www.microsoft.com/en-us/download/details.aspx?id=1073) Replacement for SOS with a superset of commands
  - [1](http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=36a2630f-5d56-43b5-b996-7633f2ec14ff) WinDBG v6.12.2.633 available via Windows Driver Kit Version 7.1.0
  - [Extension for python scripting (pykd)](http://pykd.codeplex.com)

[Category:除錯器](https://zh.wikipedia.org/wiki/Category:除錯器 "wikilink")

1.
2.
3.