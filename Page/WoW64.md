**WoW64**（**W**indows 32-bit **o**n **W**indows **64**-bit）是[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[操作系统的一个子系统](../Page/操作系统.md "wikilink")，它提供在所有Windows
[64位系统上运行](https://zh.wikipedia.org/wiki/64位 "wikilink")[32位元](../Page/32位元.md "wikilink")[应用程序的能力](../Page/应用程序.md "wikilink")——这包括[Windows
XP Professional x64
Edition](../Page/Windows_XP_Professional_x64_Edition.md "wikilink")、[IA-64和](https://zh.wikipedia.org/wiki/IA-64 "wikilink")[Windows
Server 2003的](../Page/Windows_Server_2003.md "wikilink")64位版本，以及[Windows
Vista](../Page/Windows_Vista.md "wikilink")、[Windows Server
2008](../Page/Windows_Server_2008.md "wikilink")、[Windows
7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")、[Windows
8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")、[Windows Server
2012](../Page/Windows_Server_2012.md "wikilink")、[Windows
8.1和](../Page/Windows_8.1.md "wikilink")[Windows
10的](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")64位版本。在[Windows
Server 2008 R2](../Page/Windows_Server_2008_R2.md "wikilink") Server
Core中它成为了可选组件，并在[Nano
Server中不再提供](../Page/Windows_Server_2016.md "wikilink")。WoW64旨在解决32位与64位Windows中的许多差异，特别是涉及到Windows本身的结构变化。

## 转换-{zh:库;zh-hans:库;zh-hant:函式庫;}-

WoW64[子系统由一个轻量级](https://zh.wikipedia.org/wiki/系统 "wikilink")[兼容层组成](../Page/兼容层.md "wikilink")，其在所有64位Windows版本上有类似的接口。它的目的是创建一个32位环境，为未修改的32位Windows应用程序在64位系统上运行提供一个必需的接口。在技术上，WoW64使用三个[-{zh:动态链接库;zh-hans:动态链接库;zh-hant:動態連結函式庫;}-](../Page/动态链接库.md "wikilink")（DLL）实现：

1.  `Wow64.dll`，通往[Windows
    NT内核的核心接口](../Page/Windows_NT体系结构.md "wikilink")，它转换32位与64位调用，包括[指针和](../Page/指標_\(電腦科學\).md "wikilink")[调用栈操作](https://zh.wikipedia.org/wiki/调用栈 "wikilink")。
2.  `Wow64win.dll`，为32位应用程序提供适当的入口点。
3.  `Wow64cpu.dll`，负责解决进程从32位切换到64位模式。

## 架构

尽管表面上看它在所有64位Windows版本上都表现相同，但WoW64的实现取决于目标[处理器架构](../Page/微架構.md "wikilink")。举例来说，面向[Intel](../Page/英特尔.md "wikilink")
[Itanium
2处理器](../Page/安腾.md "wikilink")（即[IA-64架构](https://zh.wikipedia.org/wiki/IA-64 "wikilink")）开发的64位Windows版本，会使用`Wow64win.dll`在Itanium 2的独有[指令集中设置x](../Page/指令集架構.md "wikilink")86指令的仿真。这种仿真会比
`Wow64win.dll`的函数在[x86-64架构](https://zh.wikipedia.org/wiki/x86-64 "wikilink")（也称“Intel
64”或“AMD64”）上的计算代价更昂贵，因为当有必要执行32位[线程时](../Page/线程.md "wikilink")，处理器硬件必须从64位模式切换到兼容模式，然后再切换回64位模式。

## 注册表和文件系统

WoW64子系统也处理其他运行32位应用程序所必需的关键问题。它参与32位应用程序与Windows组件的互动，例如[注册表](../Page/注册表.md "wikilink")，64位与32位应用程序会使用不同的键。举例来说，HKEY_LOCAL_MACHINE\\Software\\Wow6432Node
是 HKEY_LOCAL_MACHINE\\Software
的32位环境版本，并且32位应用程序不会感觉到这种重定向。有些注册表键是等效从64位映射到32位，还有些则是内容镜像，这取决于Windows的版本。

操作系统使用[`%SystemRoot%`](../Page/环境变量.md "wikilink")`\system32`目录放置其64位函数库和可执行文件。这样做的原因是考虑到向后兼容性，许多旧款程序采用[硬编码使用该路径](../Page/寫死.md "wikilink")。当执行32位应用程序时，WoW64会将32位透明重定向到
`%SystemRoot%\SysWoW64`，那里放着32位函数库和可执行文件。32位应用程序不会知道自己在64位操作系统上运行。32位应用程序可以访问`%SystemRoot%\System32`
通过伪目录`%SystemRoot%\sysnative`。

你会看到有两个Program Files目录可见，里面分别放着32位和64位应用程序。存储32位文件的目录名为 Program Files
(x86) 以区分两者，而64位目录使用原有的 Program Files 为名，不附加任何限定名称。

## 应用程序兼容性

只包含32位内核模式[驱动程序](../Page/驱动程序.md "wikilink")，或者插入组件到仅64位实现的组件进程（例如Windows
Explorer）的内存空间的32位应用程序不能在64位平台上执行。32位服务程序是支持的。SysWOW64文件夹位于操作系统所在分区的Windows文件夹，其包含许多支持32位应用程序的程序（例如cmd.exe、odbcad32.exe，为32位应用程序注册[ODBC连接等](../Page/ODBC.md "wikilink")）。面向MS-DOS和Windows早期版本的16位应用程序通常不兼容64位版本的Windows
Vista、7和8，但可以通过[Windows Virtual
PC或](../Page/Windows_Virtual_PC.md "wikilink")[DOSBox运行在](../Page/DOSBox.md "wikilink")16位或32位的Windows操作系统上。32位版本的Windows
XP、Vista、7和8在另一方面通常也可以几乎无问题地运行16位应用程序。16位应用程序不能直接运行在x64版本的Windows上，因为CPU在x64模式下运行时不支持VM86。

[Internet
Explorer实现了](../Page/Internet_Explorer.md "wikilink")32位与64位两个应用程序版本，因为互联网上有许多32位[ActiveX组件](../Page/ActiveX.md "wikilink")，而它们不可能在64位版本上运行。Internet
Explorer的32位版本被定为默认版本，并且64位版本不能被设置为默认浏览器。<span class="cx-segment" data-segmentid="111"></span>

WoW64
64位版本中透明层的一个[程序错误](https://zh.wikipedia.org/wiki/Bug "wikilink")\[1\]\[2\]导致所有依赖[Windows
API函数GetThreadContext的](../Page/Windows_API.md "wikilink")32位应用程序不兼容。此类应用包括应用程序调试器、调用堆栈跟踪器（例如<span class="cx-segment" data-segmentid="115"></span>[IDE显示调用堆栈](../Page/集成开发环境.md "wikilink")）和使用[垃圾收集](../Page/垃圾回收_\(計算機科學\).md "wikilink")（GC）引擎的应用程序。受影响最广泛的一个GC引擎是[Boehm
GC](../Page/貝姆垃圾收集器.md "wikilink")\[3\]，它被同样流行的[Mono作为默认的垃圾收集引擎](../Page/Mono.md "wikilink")。虽然Mono截至2010年10月有一种新的、可选的GC（称作SGen-GC），但它与Boehm
GC执行堆栈扫描的方式相同，因此它也不兼容WoW64。截至2010年11月15日，微软没有提供修复计划或变通解决方案。

## 性能

据微软介绍，运行在WOW64下的32位软件与在32位Windows上的执行性能相近，但可能增加少许[线程和其他开销](../Page/线程.md "wikilink")\[4\]。

一个32位应用程序在64位系统上可以完全使用4GB[虚拟内存](../Page/虚拟内存.md "wikilink")，而在32位系统上，部分可寻址内存无法使用，因为那会被[内核和内存映射的外部设备](../Page/内核.md "wikilink")（如[显卡](https://zh.wikipedia.org/wiki/显卡 "wikilink")）使用。

## 参见

  - [Windows on Windows](../Page/Windows_on_Windows.md "wikilink")

  - [使用者帳戶控制也有一个机制](../Page/使用者帳戶控制.md "wikilink")，将旧款程序写入到特定区域的文件处理到新位置。无管理员权限的进程将文件写入到system32将被重定向到一个虚拟存储目录。

  -
## 参考资料

## 外部链接

  - \[<http://msdn.microsoft.com/en-us/library/aa384249(VS.85>).aspx
    关于在64位Windows上运行32位应用的MSDN页面\]
  - [WOW64文件夹、变量、值和参考资料的综合资料](http://csi-windows.com/blog/all/73-windows-64-bit/379-what-is-wow64-windows-64-bit)

[Category:Windows_NT](https://zh.wikipedia.org/wiki/Category:Windows_NT "wikilink")
[Category:兼容层](https://zh.wikipedia.org/wiki/Category:兼容层 "wikilink")

1.
2.
3.
4.