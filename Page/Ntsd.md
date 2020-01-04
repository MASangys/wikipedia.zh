> 本文内容由[Ntsd](https://zh.wikipedia.org/wiki/Ntsd)转换而来。


**ntsd.exe**（**NT Symbolic Debugger**，NT符号调试器）是一个功能强大的进程调试工具，是[WDK的组件之一](https://zh.wikipedia.org/wiki/WDK "wikilink")，并曾内置于[Windows操作系统中](https://zh.wikipedia.org/wiki/Windows操作系统 "wikilink")，包括[Windows 2000](../Page/Windows_2000.md "wikilink")/[XP](../Page/Windows_XP.md "wikilink")/[2003](https://zh.wikipedia.org/wiki/Windows_2003 "wikilink")。微软的另一款调试工具CDB（Microsoft Console Debugger，微软控制台调试器）与其功能相同，但区别在于CDB会直接在当前命令提示符窗口中运行，而ntsd会在单独的命令行窗口中启动。\[1\]

在很多情况下，人们用ntsd来结束病毒进程。一般而言，它可以结束除了System、SMSS.EXE和[CSRSS.EXE这三个进程与部分杀毒软件进程](https://zh.wikipedia.org/wiki/CSRSS.EXE "wikilink")\[2\]外的几乎所有进程。

## 常见用法

首先，ntsd需要管理员权限运行。

  - 结束相应pid的进程

命令行如下： `ntsd -c q–p XXX` （其中XXX代表进程pid，可以在任务管理器中查看）

  - 结束相应进程名的进程

命令行如下： `ntsd -c q -pn XXX.exe` （其中XXX.exe代表要结束的进程，而且“.exe”不可省略）

## 注解

## 参考资料

1.
## 外部链接

  - [CDB/NTSD官方文档](https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/debugging-using-cdb-and-ntsd)
  - [微软官方文档对调试器的介绍](https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/debuggers-in-the-debugging-tools-for-windows-package)

[Category:除錯器](https://zh.wikipedia.org/wiki/Category:除錯器 "wikilink") [Category:Windows软件](https://zh.wikipedia.org/wiki/Category:Windows软件 "wikilink")

1.
2.  部分杀毒软件进程拥有内核态的保护机制，而ntsd仅仅基于用户态，故无法将其结束。