**Mach-O**为**[Mach](../Page/Mach.md "wikilink")** [**O**bject文件格式的](https://zh.wikipedia.org/wiki/目标文件 "wikilink")[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")，它是一种用于[可执行文件](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")，[目标代码](../Page/目标代码.md "wikilink")，[动态库](https://zh.wikipedia.org/wiki/函式库 "wikilink")，[内核转储的文件格式](https://zh.wikipedia.org/wiki/核心文件 "wikilink")。作为[a.out格式的替代](https://zh.wikipedia.org/wiki/a.out "wikilink")，Mach-O提供了更强的扩展性，并提升了[符号表](../Page/符号表.md "wikilink")中信息的访问速度。

Mach-O曾经为大部分基于[Mach](../Page/Mach.md "wikilink")核心的操作系统所使用。[NeXTSTEP](../Page/NeXTSTEP.md "wikilink")，[Darwin和](https://zh.wikipedia.org/wiki/Apple_Darwin "wikilink")[Mac OS X等系统使用这种格式作为其原生可执行文件](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，库和目标代码的格式。而同样使用[GNU Mach作为其](../Page/GNU_Mach.md "wikilink")[微内核的](https://zh.wikipedia.org/wiki/微内核 "wikilink")[GNU Hurd系统则使用](../Page/GNU_Hurd.md "wikilink")[ELF而非Mach](../Page/可執行與可鏈接格式.md "wikilink")-O作为其标准的二进制文件格式。

## Mach-O文件结构

每个Mach-O文件包括一个Mach-O头，然后是一系列的载入命令，再是一个或多个**块**，每个块包括0到255个**段**。Mach-O使用REL再定位格式控制对符号的引用。Mach-O在两级命名空间中将每个符号编码成“对象-符号名”对，在查找符号时则采用线性搜索法。

Mach-O的基本结构，引用了文件中数据页的变长“加载命令”表，也用于[Accent核心的可执行文件格式中](https://zh.wikipedia.org/wiki/Accent "wikilink")，而这种格式则是基于来自[Spice Lisp的理念](https://zh.wikipedia.org/wiki/Spice_Lisp "wikilink")。

## 多重架构二进制

在[NeXTSTEP](../Page/NeXTSTEP.md "wikilink")，[OPENSTEP和](https://zh.wikipedia.org/wiki/OPENSTEP "wikilink")[Mac OS X中](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，可以将多个Mach-O文件组合进一个[多重架构二进制文件中](https://zh.wikipedia.org/wiki/胖二进制 "wikilink")，以用一个单独的二进制文件支持多种架构的指令集。例如，一个Mac OS X中的多重架构二进制可以包含[32位和](https://zh.wikipedia.org/wiki/32位 "wikilink")[64位的](https://zh.wikipedia.org/wiki/64位 "wikilink")[PowerPC](../Page/PowerPC.md "wikilink")代码，或PowerPC和[x86的](https://zh.wikipedia.org/wiki/x86 "wikilink")32位代码，甚至包含32位的PowerPC代码，64位PowerPC代码，32位x86代码和64位x86代码。

## Mach-O的未来

由于[Darwin 10.0](https://zh.wikipedia.org/wiki/Apple_Darwin "wikilink")（对应[Mac OS X 10.6](https://zh.wikipedia.org/wiki/Mac_OS_X_10.6 "wikilink")）中对Mach-O文件的结构定义进行了一些重要的修改，因此在Mac OS X 10.6中以默认选项编译的二进制只能在10.6平台中运行。其差异之一在于Mac OS X的连接器（[`dyld`](https://zh.wikipedia.org/wiki/dyld "wikilink")）产生的载入命令无法为早期版本的Mac OS X所理解。另外一个重要改变是Link Edit表（__LINKEDIT段）的作用。在10.6中，新的Link Edit表中的无用信息会被去除，从而起到压缩的作用，而Mac OS X 10.5及以前的版本无法识别这种新格式。为解决这个问题，在连接时常常需要使用`-mmacosx-version-min=`连接器标志。苹果公司作为Mach-O格式的维护者，推荐开发者在创建二进制应用程序的时候与使用与所用的SDK版本对应的该标志。

## 参见

  - [胖二进制](https://zh.wikipedia.org/wiki/胖二进制 "wikilink")
  - [通用二进制](../Page/通用二进制.md "wikilink")
  - [Xcode](../Page/Xcode.md "wikilink")

## 外部链接

  - [Mach-O File Format Reference](https://web.archive.org/web/20090819232456/http://developer.apple.com/documentation/DeveloperTools/Conceptual/MachORuntime/index.html) (Apple Inc.)
  - [Mach Object Files](https://archive.is/20091227035309/http://channelu.com/NeXT/NeXTStep/3.3/nd/DevTools/14_MachO/MachO.htmld/index.html)
  - [Mach-O Dynamic Library Reference](http://www.fileinfo.com/extension/dylib)
  - [Mach-O Manual Page](http://developer.apple.com/documentation/Darwin/Reference/ManPages/man5/Mach-O.5.html)
  - [Mach-O Viewer](http://sourceforge.net/projects/machoview)

[Category:MacOS開發](https://zh.wikipedia.org/wiki/Category:MacOS開發 "wikilink") [Category:NeXT](https://zh.wikipedia.org/wiki/Category:NeXT "wikilink") [Category:Mach](https://zh.wikipedia.org/wiki/Category:Mach "wikilink") [Category:可执行文件格式](https://zh.wikipedia.org/wiki/Category:可执行文件格式 "wikilink")