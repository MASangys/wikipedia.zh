> 本文内容由[DOSBox](https://zh.wikipedia.org/wiki/DOSBox)转换而来。


**DOSBox**是一种[模擬器软件](https://zh.wikipedia.org/wiki/模擬器 "wikilink")，主要是在[IBM PC兼容机下](../Page/IBM_PC兼容机.md "wikilink")，模拟舊時的[操作系统](../Page/操作系统.md "wikilink")：[MS-DOS](../Page/MS-DOS.md "wikilink")，支援许多IBM PC兼容的[显卡和](https://zh.wikipedia.org/wiki/显卡 "wikilink")[声卡](../Page/声卡.md "wikilink")，为原生的[DOS](../Page/DOS.md "wikilink")程序提供执行环境，使这些程序可以正常运行于大多数现代计算机上的不同操作系统。DOSBox特別是为執行早期的[電腦遊戲所设计](https://zh.wikipedia.org/wiki/電腦遊戲 "wikilink")，主要以[C++](../Page/C++.md "wikilink")编写，是以[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")许可发布的[自由软件](../Page/自由软件.md "wikilink")。

DOSBox可以运行那些在现代计算机上不能运行的[MS-DOS](../Page/MS-DOS.md "wikilink")软件，这些软件通常与现在的主流硬件和操作系统有一些不兼容。DOSBox在模拟[MS-DOS](../Page/MS-DOS.md "wikilink")同时，还增加了一些可用特性，包括虚拟磁盘、点对点网络、對模拟畫面截图和录像。有些非官方的DOSBox变体，如DOSBox SVN Daum和DOSBox SVN-lfn提供了更多的功能，比如存档、[长文件名支持等](https://zh.wikipedia.org/wiki/长文件名 "wikilink")\[1\]。有些[遊戲開發商重新發行早期的DOS遊戲時](https://zh.wikipedia.org/wiki/遊戲開發者 "wikilink")，也會使用DOSBox，使其可以在现代计算机上运行。

## 特性

DOSBox是一個[指令列程式](../Page/命令行界面.md "wikilink")，有兩種設定方式，一是直接在指令列下輸入設定參數，或是編輯組態文字檔更改系統設定。為了使用方便，使用者社群也開發出一些圖像化的前端介面\[2\]。

  - DOSBox是一个完整的计算机的模拟，并不只是一个[兼容层](../Page/兼容层.md "wikilink")，如[DOSEMU](https://zh.wikipedia.org/wiki/DOSEMU "wikilink")，也不依赖[386处理器虚拟化能力的Windows与OS](https://zh.wikipedia.org/wiki/386 "wikilink")/2 VDM操作系统，不需要x86中央处理器或者任何DOS版本以运行，并且能运行[实模式与](https://zh.wikipedia.org/wiki/实模式 "wikilink")[保护模式的程序](https://zh.wikipedia.org/wiki/保护模式 "wikilink")。
  - 动态CPU内核：具备i386指令集合的系统，能利用[动态指令转换](https://zh.wikipedia.org/wiki/动态指令转换 "wikilink")。此模式比解译指令的模式要快，但是不完全准确。
  - 图形模拟：除文本模式外，还支持[Hercules](https://zh.wikipedia.org/wiki/Hercules "wikilink")，[CGA](https://zh.wikipedia.org/wiki/CGA "wikilink")，[Tandy](https://zh.wikipedia.org/wiki/Tandy "wikilink")，[EGA](https://zh.wikipedia.org/wiki/EGA "wikilink")，[VGA](https://zh.wikipedia.org/wiki/VGA "wikilink")，[VESA图形模式](https://zh.wikipedia.org/wiki/VESA "wikilink")，与完整的[S3 Trio 64显卡模拟](https://zh.wikipedia.org/wiki/S3_Trio_64 "wikilink")。
  - 音频模拟：支持对[AdLib](../Page/AdLib.md "wikilink")，[Gravis Ultrasound](https://zh.wikipedia.org/wiki/Gravis_Ultrasound "wikilink")，[PC speaker](https://zh.wikipedia.org/wiki/PC_speaker "wikilink")，[Tandy](https://zh.wikipedia.org/wiki/Tandy "wikilink")，[Creative Music System/GameBlaster](../Page/Sound_Blaster.md "wikilink")，[Sound Blaster 1.x/2.0/Pro/16](../Page/Sound_Blaster.md "wikilink")，[MPU-401](https://zh.wikipedia.org/wiki/MPU-401 "wikilink")，与[Disney Sound Source的模拟](https://zh.wikipedia.org/wiki/Disney_Sound_Source "wikilink")。
  - 网络模拟：[调制解调器](../Page/调制解调器.md "wikilink")模拟与[IPX以](https://zh.wikipedia.org/wiki/IPX "wikilink")[TCP/IP和](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")[UDP/IP](https://zh.wikipedia.org/wiki/UDP/IP "wikilink")，允许使用现代网络，玩DOS网络游戏。Win32和Linux下支持直接读写串口。
  - 外壳：包含一个内嵌DOS命令解释器。支持大多安装批处理文件使用的指令，但不支持许多晚期MS-DOS版本的高级指令。

## 问题

DOSBox跟大多的模拟器一样需要比原计算机系统更强大的处理能力，尤其是处理器的运算能力。用户需要根据模拟系统运行的程序需要决定给予必要的计算能力。使用[DOS/4GW等开放源代码的保护模式扩展程序](../Page/DOS扩展器.md "wikilink")[DOS32a](http://dos32a.narechk.net/index_en.html)有时能减小问题。但是，因为该模拟器使用虚拟化方式，保护模式下的DOS程序，包括大多1995年之后的游戏，可能不如在[VMware](../Page/VMware.md "wikilink")或者[Virtual PC运行上有效](https://zh.wikipedia.org/wiki/Virtual_PC "wikilink")。DOSBox与中文系統的配合存在一些问题，早期的5.8版本支持倚天，国桥等DOS中文系統，但之后的版本却出现花屏乱码的情况。

DOSBox似乎不支持在程式運行期間對軟碟映像檔進行替換，這在某些以多個軟碟映像檔形式存在的安裝程序中會構成問題。

## 前端

DOSBox的配置保存为纯文本文档。不熟悉此配置法的用户可以利用图形界面的[前端](https://zh.wikipedia.org/wiki/前端 "wikilink")。前端也有别的好处，例如游戏收集排序功能。

## 参考文献

## 外部链接

  -
  - [官方论坛](http://vogons.zetafleet.com/index.php?c=7)

  - [DOSBox wiki](http://www.dosbox.com/wiki/) – 与FAQ等

  - [DOSBox的新手指南](http://www.abandonia.com/forum/index.php?showtopic=14913)

  - [DBGL](http://home.quicknet.nl/qn/prive/blankendaalr/dbgl/) － 多平台开放源代码DOSBox前端

  - [D.O.G.](https://web.archive.org/web/20070828230029/http://www.freewebs.com/erikgg/) － 视窗操作系统（2000/XP）

  - [DOS32a](http://dos32a.narechk.net/index_en.html) － 开放源代码DOS4GW扩展程序

[Category:SourceForge项目](https://zh.wikipedia.org/wiki/Category:SourceForge项目 "wikilink") [Category:虚拟化软件](https://zh.wikipedia.org/wiki/Category:虚拟化软件 "wikilink") [Category:兼容层](https://zh.wikipedia.org/wiki/Category:兼容层 "wikilink")

1.  "SVN Builds". DOSBox. Retrieved 2012-01-08
2.