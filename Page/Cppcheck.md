> 本文内容由[Cppcheck](https://zh.wikipedia.org/wiki/Cppcheck)转换而来。


**Cppcheck**是一种用于[C和](https://zh.wikipedia.org/wiki/C语言 "wikilink")[C ++](../Page/C++.md "wikilink") [编程语言](../Page/编程语言.md "wikilink")的[静态代码分析工具](../Page/靜態程序分析.md "wikilink")。 它是一个多功能工具，可以检查非标准代码。 \[1\] 创始人和首席开发人员是DanielMarjamäki。

Cppcheck是[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")下的[免费软件](../Page/自由软件.md "wikilink") 。

## 特征

Cppcheck支持编译器本身可能无法涵盖的各种静态检查。 这些检查是可以在源代码级别执行静态分析检查。 该程序面向严格的静态分析检查，而不是[启发式检查](../Page/启发法.md "wikilink")。

支持的一些检查包括：

  - [自动变量](../Page/自动变量.md "wikilink")检查
  - [检查阵列溢出的](../Page/边界检查.md "wikilink")[边界](../Page/边界检查.md "wikilink")
  - [类检查](../Page/类_\(计算机科学\).md "wikilink")（例如，未使用的函数，变量初始化和内存复制）
  - 根据[Open Group](https://zh.wikipedia.org/wiki/國際開放標準組織 "wikilink") \[2\]使用[已弃用](../Page/已弃用.md "wikilink")或已取代的函数
  - 异常安全检查，例如内存分配和析构函数检查的使用
  - [内存泄漏](../Page/内存泄漏.md "wikilink") ，例如由于丢失范围而没有重新分配
  - 资源泄漏 ，例如由于忘记关闭文件句柄
  - [标准模板库](../Page/标准模板库.md "wikilink")函数和[习语的使用无效](../Page/熟语.md "wikilink")
  - 杂项风格和性能错误

与许多分析程序一样，有许多不寻常的编程习惯用例在特定目标情况下可以接受，或者在程序员的源代码校正范围之外。 2009年3月进行的一项研究确定了Cppcheck发现误报的几个区域，但未指明所检查的程序版本。 \[3\] Cppcheck已被确定用于诸如[CERNs](../Page/歐洲核子研究組織.md "wikilink") 4DSOFT元分析软件包， \[4\]也用于高能粒子探测器读出设备中的代码验证， \[5\]也用于射电望远镜的系统监测软件\[6\]以及大型误差分析等系统中。项目，如[OpenOffice.org](../Page/OpenOffice.org.md "wikilink") \[7\]和[Debian](../Page/Debian.md "wikilink")档案。 \[8\]

## 发展

该项目正在积极开发\[9\]并在不同的发行版中积极维护。 \[10\] \[11\] 它在许多流行的项目\[12\]找到了有效的错误，例如[Linux内核](../Page/Linux内核.md "wikilink")和[MPlayer](../Page/MPlayer.md "wikilink") 。 \[13\]

## 插件

存在以下[IDE的插件](../Page/集成开发环境.md "wikilink")\[14\]

  - [克里昂](../Page/JetBrains.md "wikilink") \[15\]
  - [Code :: Blocks](../Page/Code::Blocks.md "wikilink") - 集成。
  - CodeLite - 集成。
  - [Eclipse](../Page/Eclipse.md "wikilink") \[16\]
  - [Emacs](../Page/Emacs.md "wikilink") \[17\]
  - [gedit](https://zh.wikipedia.org/wiki/gedit "wikilink") \[18\]
  - [哈德森](../Page/Hudson_\(软件\).md "wikilink") \[19\]
  - [詹金斯](../Page/Jenkins_\(软件\).md "wikilink") \[20\]
  - [凯特](../Page/Kate.md "wikilink") \[21\]
  - [KDevelop](../Page/KDevelop.md "wikilink") \[22\]
  - [Qt Creator](../Page/Qt_Creator.md "wikilink") \[23\]
  - [崇高文本](../Page/Sublime_Text.md "wikilink") \[24\]
  - [Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink") \[25\] \[26\] \[27\]
  - 亚斯卡 \[28\]

<!-- end list -->

  - 静态代码分析工具列表

## 参考

## 外部链接

  -
[Category:静态代码分析工具](https://zh.wikipedia.org/wiki/Category:静态代码分析工具 "wikilink") [Category:使用GPL许可证的软件](https://zh.wikipedia.org/wiki/Category:使用GPL许可证的软件 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")

1.
2.  <http://www.opengroup.org/onlinepubs/9699919799/xrat/V4_xsh_chap03.html>
3.
4.
5.
6.
7.
8.
9.  [Cppcheck on Github](https://github.com/danmar/cppcheck/)
10. [Cppcheck on Debian's Package Tracking System](http://packages.qa.debian.org/c/cppcheck.html)
11. [FreeBSD port](http://svnweb.freebsd.org/ports/head/devel/cppcheck/distinfo)
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.  Get an Edge in Editing}}
22.
23.
24.
25.
26.
27.
28.