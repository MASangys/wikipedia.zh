在[计算机领域中](https://zh.wikipedia.org/wiki/计算机 "wikilink")，**`title`**[命令是更改图形版](../Page/命令_\(计算机\).md "wikilink")[终端模拟器窗口标题的命令](https://zh.wikipedia.org/wiki/终端模拟器 "wikilink")，存在于各种[命令行解释器](../Page/命令行界面.md "wikilink")（[殼層](../Page/殼層.md "wikilink")）中，例如[Windows命令提示字元](../Page/命令提示字元.md "wikilink")、[Windows
Embedded](https://zh.wikipedia.org/wiki/Windows_Embedded "wikilink")
CE的命令处理器壳层\[1\]，以及软件\[2\]。该命令在和中被用于更改当前[驱动器的光盘标题](https://zh.wikipedia.org/wiki/碟盤存儲 "wikilink")。\[3\]

在Windows命令提示符中，它是一个[`cmd.exe`](../Page/命令提示字元.md "wikilink")的[殼層內建指令](https://zh.wikipedia.org/wiki/殼層內建指令 "wikilink")。\[4\]默认的窗口标题定义在[环境变量](../Page/环境变量.md "wikilink")。\[5\]不过，自从[Win32控制台的标题可以在程序的](https://zh.wikipedia.org/wiki/Win32控制台 "wikilink")[快捷方式中定义](https://zh.wikipedia.org/wiki/快捷方式 "wikilink")，该标题通常被设置为“命令提示符”。此命令在[Windows
2000及之后版本中可用](../Page/Windows_2000.md "wikilink")。\[6\]

尽管[OS/2命令壳层与Windows命令提示符密切相关](https://zh.wikipedia.org/wiki/OS/2 "wikilink")，但`title`在`cmd.exe`的OS/2版本中不可用。OS/2壳层窗口的默认标题是“OS/2
窗口”，可以使用[`start`](https://zh.wikipedia.org/wiki/start "wikilink")命令更改。

在[Mac OS
X的](https://zh.wikipedia.org/wiki/OS_X "wikilink")[终端中](https://zh.wikipedia.org/wiki/终端_\(OS_X\) "wikilink")，此命令不可用。而为[`echo`](../Page/Echo_\(命令\).md "wikilink")命令使用特殊的[转义序列可以做到同样目的](https://zh.wikipedia.org/wiki/转义序列 "wikilink")。\[7\]

在[GNU
GRUB命令处理器中](../Page/GNU_GRUB.md "wikilink")，`title`是几个菜单命令之一，用来开始一个新的[引导项](../Page/啟動程式.md "wikilink")。\[8\]

## 语法

`title 字符串`

参数：

  - **`字符串`** 用于指定“命令提示符”窗口的标题。

## 例子

下列[批次檔先将](../Page/批次檔.md "wikilink")“命令提示符”窗口的标题更改为“正在更新文件”，然后执行命令。在命令执行完成后，使用[`echo`](../Page/Echo_\(命令\).md "wikilink")命令显示“文件更新完成”，并将“命令提示符”窗口更改回“命令提示符”。

``` dos
@echo off
title Updating files
copy \\server\share\*.txt c:\documents\*.txt
echo Files updated
title Command Prompt
```

## 参见

  - [Win32控制台](https://zh.wikipedia.org/wiki/Win32控制台 "wikilink")

  -
## 参考资料

## 进一步阅读

  -
## 外部链接

  - [Microsoft TechNet
    Title文章](https://technet.microsoft.com/library/cc732308.aspx)

[Category:Windows小作品](https://zh.wikipedia.org/wiki/Category:Windows小作品 "wikilink")
[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")
[Category:Windows命令](https://zh.wikipedia.org/wiki/Category:Windows命令 "wikilink")

1.  <https://msdn.microsoft.com/en-us/library/ee499398(v=winembedded.60>).aspx
2.  <http://jpsoft.com/help/title.htm>
3.  [Acorn DFS manual](http://8bs.com/manuals.htm)
4.  [Microsoft TechNet Title
    article](http://technet.microsoft.com/en-us/library/bb491017.aspx)
5.  <http://www.ss64.com/nt/title.html>
6.  <http://www.computerhope.com/titlehlp.htm>
7.  <http://alvinalexander.com/blog/post/mac-os-x/change-title-bar-of-mac-os-x-terminal-window>
8.  <http://www.linuxselfhelp.com/gnu/grub/html_chapter/grub_12.html#SEC45>