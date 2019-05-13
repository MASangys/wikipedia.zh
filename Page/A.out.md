**a.out**是旧版[类Unix系统中用于](../Page/类Unix系统.md "wikilink")[执行档](https://zh.wikipedia.org/wiki/执行档 "wikilink")、[目的码和后来系统中的](https://zh.wikipedia.org/wiki/目的码 "wikilink")[函式库的一种](https://zh.wikipedia.org/wiki/函式库 "wikilink")[文件格式](https://zh.wikipedia.org/wiki/文件格式 "wikilink")，这个名称的意思是**[汇编器输出](https://zh.wikipedia.org/wiki/汇编器 "wikilink")**。

尽管目前大多數[类Unix系统都已改用](../Page/类Unix系统.md "wikilink")[ELF格式](https://zh.wikipedia.org/wiki/ELF格式 "wikilink")，不再采用*a.out*格式，但[编译器和](https://zh.wikipedia.org/wiki/编译器 "wikilink")[链接器依然会在用户未指定文件名时](../Page/链接器.md "wikilink")，将输出文件取名为“`a.out`”。\[1\]

## 应用

在UNIX第一版中，就出现了给[PDP-7和](https://zh.wikipedia.org/wiki/PDP-7 "wikilink")[PDP-11用的](../Page/PDP-11.md "wikilink")*a.out*格式。\[2\]之后它被[UNIX
System
V中的](../Page/UNIX_System_V.md "wikilink")[COFF所取代](https://zh.wikipedia.org/wiki/COFF "wikilink")，而COFF最后也被[SVR4中的](https://zh.wikipedia.org/wiki/SVR4 "wikilink")[ELF格式所取代](https://zh.wikipedia.org/wiki/ELF格式 "wikilink")。

尽管[BSD曾经沿用了一段时间的](../Page/BSD.md "wikilink")*a.out*格式，但较新的BSD系统都已切换到ELF。[NetBSD/i386在](../Page/NetBSD.md "wikilink")1.5版中正式从*a.out*切换到ELF，[FreeBSD/i386则是在](../Page/FreeBSD.md "wikilink")2.2到3.0的转换中切换到ELF的。

*a.out*格式对[调试信息的支持是由符号表中称作](https://zh.wikipedia.org/wiki/调试 "wikilink")“[stabs](https://zh.wikipedia.org/wiki/stabs "wikilink")”的特殊项实现的。许多[COFF和](https://zh.wikipedia.org/wiki/COFF "wikilink")[ELF变体中也用到了stabs格式](https://zh.wikipedia.org/wiki/ELF "wikilink")。

[Linux在](../Page/Linux.md "wikilink")1.2版内核之前也曾使用*a.out*格式（实验性的1.1.52版中加入了对ELF的支持），在此之后也被ELF取代了。
\[3\]Linux之所以转向ELF，或多或少是因为在此平台上构建一个*a.out*格式的函式库所需的复杂性过高：因为Linux中*a.out*的ld.so不能重定位共享函式库，所以需要一个中央机构来注册各个函式库的虚拟地址域。\[4\]一些BSD变体在[Linux被迫转向ELF之后仍然用了很久的](../Page/Linux.md "wikilink")*a.out*格式，因为相比于Linux，BSD的*a.out*略微更灵活一些。\[5\][MINIX
3仍将](https://zh.wikipedia.org/wiki/MINIX_3 "wikilink")*a.out*作为二进制文件的格式，但其不支持[共享函式库](https://zh.wikipedia.org/wiki/函式库 "wikilink")。

## 格式

*a.out*执行档通常是以下几种变体之一：OMAGIC、NMAGIC、QMAGIC或ZMAGIC。

  - OMAGIC
    OMAGIC格式在文件头后有连续段，没有文本和数据的分离。也被用作目标文件格式。
  - NMAGIC
    NMAGIC格式与OMAGIC相像，但数据段出现在文本段结束后的下一页，且文本段被标为只读。
  - ZMAGIC
    ZMAGIC格式加入了对按需分页的支持，代码段和数据段的长度需要是页宽的整数倍。
  - QMAGIC
    QMAGIC二进制文件通常被加载在虚拟地址池的底端，用以通过[段错误捕获对](https://zh.wikipedia.org/wiki/段错误 "wikilink")[空指针的解引用](https://zh.wikipedia.org/wiki/空指针 "wikilink")。*a.out*头部与文本段的第一页合并，通常会省下一页的内存。
  - CMAGIC
    旧版的Linux使用此格式来存放[核心转储](https://zh.wikipedia.org/wiki/核心转储 "wikilink")。

*a.out*文件包含至多七节，顺序如下：

  - 执行头部
    包含内核将二进制文件加载入内存并执行所需的参数，也包含对链接编辑器[ld的指引](https://zh.wikipedia.org/wiki/ld "wikilink")。仅有本节是必须出现的。
  - 文本段
    包含运行时被载入内存的机器码和相关数据，可能是只读的。
  - 数据段
    包含已初始化的数据，总是可写的。
  - 文本重定位
    包含链接编辑器在合并二进制文件时修改文本段指针的记录。
  - 数据重定位
    与文本重定位一节类似，但是给数据段指针用的。
  - 符号表
    包含链接编辑器用于交叉引用不同二进制文件中变量和函式（符号）的记录。
  - 字符串表
    包含对应于符号表的字符串。

## 参见

  - [Portable
    Executable](https://zh.wikipedia.org/wiki/Portable_Executable "wikilink")
  - [ELF](../Page/可執行與可鏈接格式.md "wikilink")
  - [Vasm](https://zh.wikipedia.org/wiki/Vasm "wikilink")，一个自由的汇编器

## 参考资料

## 外部链接

  - [a.out格式](https://web.archive.org/web/20110103155407/http://osxfaq.com/man/5/a.out.ws)
  - [a.out格式的Unix手册页](https://web.archive.org/web/20110721104412/http://fuse4bsd.creo.hu/localcgi/man-cgi.cgi?a.out+5)

[Category:可执行文件格式](https://zh.wikipedia.org/wiki/Category:可执行文件格式 "wikilink")

1.
2.
3.
4.
5.