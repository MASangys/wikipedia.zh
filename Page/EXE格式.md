**EXE**是在[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")、[MS-DOS](../Page/MS-DOS.md "wikilink")和[Windows系统中通用的](https://zh.wikipedia.org/wiki/Windows "wikilink")[可执行文件的](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")[扩展名](https://zh.wikipedia.org/wiki/扩展名 "wikilink")。

## 檔案格式

EXE 包括以下几种主要的[文件格式](../Page/檔案格式.md "wikilink")：

  - [DOS](../Page/DOS.md "wikilink")可执行文件：最简单的可执行文件格式，可以在DOS和Windows中运行。它通过在文件头添加[ASCII](../Page/ASCII.md "wikilink")字符串“MZ”（16进制中表示为4D5A）来标识。“MZ”是MS-DOS开发者之一的[馬克·茨柏克沃斯基](../Page/馬克·茨柏克沃斯基.md "wikilink")（Mark Zbikowski）的姓名首字母缩写。
  - [16位元新可执行文件](https://zh.wikipedia.org/wiki/16位元 "wikilink")：通过在文件头添加ASCII字符串“NE”来标识。它只能运行在Windows和OS/2系统，而不能在DOS下运行。
  - 16/[32位元](../Page/32位元.md "wikilink")混合式线性可执行文件：通过在文件头添加ASCII字符串“LE”来标识。它仅用来在Windows 3.x和Windows 9x中替代VxD驱动。
  - 32位元线性可执行文件：通过在文件头添加ASCII字符串“LX”来标识。运行在[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink") 2.0以及更高版本中，也可用于某些DOS扩展。
  - 32位元可执行文件：这是最复杂也是目前最流行的可执行文件格式，通过在文件头添加ASCII字符串“PE”来标识。它主要运行于[Windows 95和](../Page/Windows_95.md "wikilink")[Windows NT以及更高版本的Windows中](../Page/Windows_NT.md "wikilink")，也可在[BeOS](../Page/BeOS.md "wikilink") R3中运行。在文件头部可见字符串“PE..L”（hex code: 504500004C）。
  - [64位元](../Page/64位元.md "wikilink")可执行文件：与前一种类似，但使用支持64位元的[中央处理器](../Page/中央处理器.md "wikilink")。因此它仅能在64位元的Windows系统中运行，譬如[Windows XP](../Page/Windows_XP.md "wikilink") 64-Bit Edition和[Windows Server 2003](../Page/Windows_Server_2003.md "wikilink") 64-Bit Edition。在文件头部可见字符串“PE..d†”（hex code: 504500006486）。

## DOS EXE 開頭格式說明

  - 00-01h：MZ标志，MS-DOS开发者之一的[馬克·茨柏克沃斯基](../Page/馬克·茨柏克沃斯基.md "wikilink")（Mark Zbikowski）的姓名首字母缩写。
  - 02-03h：EXE文件最后一个块没有全用完只用了N个[字节](../Page/字节.md "wikilink")，即文件长度除以512的余数。
  - 04-05h：EXE文件使用的[块的数量](../Page/块_\(数据存储\).md "wikilink")（每块512个字节），文件长度除以512的[商](https://zh.wikipedia.org/wiki/商數 "wikilink")
  - 06-07h：[重定向项目的个数](https://zh.wikipedia.org/wiki/重定向 "wikilink")。
  - 08-09h：该处数据指出了EXE头部大小，一般来说，EXE头部之后紧跟着程序数据。
  - 0A-0Bh：该处数据指出了运行该程序所需的最小[内存](https://zh.wikipedia.org/wiki/内存 "wikilink")，如果小于这个内存，程序将不会被加载执行。
  - 0C-0Dh：该处数据指出了运行该程序所需的最大内存，一般为FFFFh。
  - 0E-0Fh：堆栈段在装入模块中的偏移，如：00E5h
  - 10-11h：SP初始值，如：0080h。即SS:SP=00E5:0080。
  - 14-15h：IP初始值。
  - 16-17h：CS在装入模块中的偏移。
  - 18-19h：指出了第一个重定向项目在文件中的偏移，
  - 1A-1Bh：覆盖号（程序驻留为零）。
  - 1C：重定位表，起点由偏移18-19h给出，项数由06-07h标明。

## 外部链接

  - [Dependency Walker](http://dependencywalker.com/)
  - [MZ EXE header format](http://www.delorie.com/djgpp/doc/exe/)

[Category:DOS技术](https://zh.wikipedia.org/wiki/Category:DOS技术 "wikilink") [Category:可执行文件格式](https://zh.wikipedia.org/wiki/Category:可执行文件格式 "wikilink") [Category:扩展名](https://zh.wikipedia.org/wiki/Category:扩展名 "wikilink") [Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")