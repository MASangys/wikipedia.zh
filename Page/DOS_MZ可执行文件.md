> 本文内容由[DOS MZ可执行文件](https://zh.wikipedia.org/wiki/DOS_MZ可执行文件)转换而来。


**DOS MZ可执行文件**（）格式是[DOS](../Page/DOS.md "wikilink")中的.EXE[可执行文件格式](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。

该文件在[文件头部用](../Page/魔術數字_\(程式設計\).md "wikilink")[ASCII](../Page/ASCII.md "wikilink")字符串“MZ”（[十六进制](../Page/十六进制.md "wikilink")：4D 5A）标识。“MZ”是MS-DOS开发者之一的[马克·茨柏克沃斯基](https://zh.wikipedia.org/wiki/马克·茨柏克沃斯基 "wikilink")（Mark Zbikowski）的姓名首字母缩写。\[1\]

DOS MZ可执行文件比[COM可执行文件格式更晚出现](https://zh.wikipedia.org/wiki/COM格式 "wikilink")，并与其有一定差别。DOS可执行文件头部包含了[重定位信息](https://zh.wikipedia.org/wiki/重定位 "wikilink")，使得多个段能被载入到任意内存地址中，并且支持大于64KB的可执行文件；然而该格式仍然要求相对低的内存限制。这些限制后来通过使用DOS扩展器得以绕过。

DOS EXE程序的执行环境可以在其[程序段前缀中找到](https://zh.wikipedia.org/wiki/程序段前缀 "wikilink")。

## 兼容性

MZ DOS可执行文件可在DOS和基于[Windows 9x的操作系统中运行](../Page/Windows_9x.md "wikilink")。基于[Windows NT的](../Page/Windows_NT.md "wikilink")32位系统也可以使用内置的[DOS虚拟机运行](https://zh.wikipedia.org/wiki/DOS虚拟机 "wikilink")（尽管一些图形模式是不支持的）。64位版本的Windows无法执行它们。替代方法是运行这些模拟器程序，例如[DOSBox](../Page/DOSBox.md "wikilink")、[DOSEMU和](https://zh.wikipedia.org/wiki/DOSEMU "wikilink")[Wine](../Page/Wine.md "wikilink")。

MZ DOS可执行文件可由链接器生成，如Digital Mars Optlink、[微软链接器](https://zh.wikipedia.org/wiki/微软链接器 "wikilink")、[VALX或](https://zh.wikipedia.org/wiki/VALX "wikilink")[Open Watcom的WLINK](https://zh.wikipedia.org/wiki/Watcom_C/C++编译器 "wikilink")。另外[FASM可以直接创建它们](https://zh.wikipedia.org/wiki/FASM "wikilink")。

## 参见

  - [DOS](../Page/DOS.md "wikilink")
  - [DOS 扩展器](https://zh.wikipedia.org/wiki/DOS_扩展器 "wikilink")
  - [Comparison of executable file formats](https://zh.wikipedia.org/wiki/Comparison_of_executable_file_formats "wikilink")
  - [MS-DOS API](../Page/MS-DOS_API.md "wikilink")

## 参考资料

## 外部链接

  - \[<http://www.delorie.com/djgpp/doc/exe/>| MZ DOS可执行文件格式\]

[Category:可执行文件格式](https://zh.wikipedia.org/wiki/Category:可执行文件格式 "wikilink")

1.  [Inside Windows: An In-Depth Look into the Win32 Portable Executable File Format - MSDN Magazine, February 2002](http://msdn.microsoft.com/en-us/magazine/cc301805.aspx).