在[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")中，**`strip`**程序从可执行二进制程序和目标文件中移除非必要信息，因此潜在的导致更好的性能，并且有时有显著的更小的磁盘空间使用（“非必要信息”意味着这种信息对二进制文件在正常执行中的正确功能而言是不需要的）。 这种信息可以由调试和符号信息组成；但是标准将变化范围留给实现者来决定。

进一步的说，使用`strip`可以增进二进制文件针对[逆向工程](../Page/逆向工程.md "wikilink")的安全性。`strip`的效果可以直接由[连接器完成](../Page/链接器.md "wikilink")。例如，在[GNU编译器套件中这个选项是](../Page/GCC.md "wikilink")`-s`。

[GNU计划提供了](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")`strip`的实现作为[GNU Binutils包的一部分](../Page/GNU_Binutils.md "wikilink")。`strip`已经被移植到其他操作系统包括[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。

## 例子

例如在[WSL环境下](../Page/适用于_Linux_的_Windows_子系统.md "wikilink")：

``` console
$sudo strip -R .note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5
```

从共享目标文件`lib`[`Qt`](../Page/Qt.md "wikilink")`5Core.so.5`中移除章节`.note.`[`ABI`](../Page/应用二进制接口.md "wikilink")`-tag`。

## 参见

  - [已剥二进制文件](https://zh.wikipedia.org/wiki/已剥二进制文件 "wikilink")
  - [可执行文件压缩](../Page/可执行文件压缩.md "wikilink")
  - [Unix命令列表](https://zh.wikipedia.org/wiki/Unix命令列表 "wikilink")
  - [Strings (Unix)](https://zh.wikipedia.org/wiki/Strings_\(Unix\) "wikilink")
  - [调试符号](https://zh.wikipedia.org/wiki/调试符号 "wikilink")
  - [符号表](../Page/符号表.md "wikilink")

## 引用

  - {{ citation | publisher = The Open Group | url = <http://www.opengroup.org/onlinepubs/007908799/xcu/strip.html> | contribution = strip | title = The Single UNIX Specification, Version 2 | date = 1997 }}

## 外部链接

  -
[Category:Unix编程工具](https://zh.wikipedia.org/wiki/Category:Unix编程工具 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")