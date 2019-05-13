**Psyco** 是 Python
语言的一个扩展模块，可以即时对程序代码进行专业的算法优化，可以在一定程度上提高程序的执行速度，尤其是在程序中有大量循环操作时。最早被
[Armin Rigo](https://zh.wikipedia.org/wiki/Armin_Rigo "wikilink") 开发，后来由
[Christian
Tismer](https://zh.wikipedia.org/wiki/Christian_Tismer "wikilink")
维护并继续完善。

Psyco 可以在 [32位元](../Page/32位元.md "wikilink") 的
[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")、[BSD](../Page/BSD.md "wikilink")、[Mac
OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
平台上运行。Psyco 使用
[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")
编写，只针对32位元平台进行了编码。目前开发工作已经停止，由
[PyPy](../Page/PyPy.md "wikilink") 所接替，同时 PyPy 也提供针对
[64位元](../Page/64位元.md "wikilink") 系统的支持。Psyco 可以在
[Python解释器](../Page/Python.md "wikilink")
编译代码时自动优化，将其使用C实现，并针对循环操作进行一些特殊的优化。经过这些优化，程序的性能将会得到提升，在跨平台环境下尤为明显。

## 性能提升

对于密集计算型程序，Psyco
可以显著提升程序的执行速度。实际的提升决定于程序的具体实现，曾经有人获得了高达100倍的提升，也有的时候因为需要额外加载
Psyco 模块反倒带来了轻微的性能下降。\[1\]\[2\]\[3\]\[4\] 经过调查，在典型的应用上，Psyco 平均可以提供
1.5至4 倍的性能提升。这帮助 Python 的性能达到了
[Smalltalk](../Page/Smalltalk.md "wikilink") 和
[Scheme](../Page/Scheme.md "wikilink") 的水平，但是仍然与
[Fortran](../Page/Fortran.md "wikilink") 与
[C这样的编译语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")，或是一些
[JIT](https://zh.wikipedia.org/wiki/即时编译 "wikilink") 语言如
[C\#](https://zh.wikipedia.org/wiki/C_Sharp_\(programming_language\) "wikilink")
和 [Java有所差距](../Page/Java.md "wikilink")。\[5\]

Psyco 宣称自己是非常易用的，事实也确实如此。最简单的 Psyco 优化只需要在程序开始处放置两行代码：\[6\]

``` python
import psyco
psyco.full()
```

这两行指令会让 Python解释器 加载 Psyco
模块，并对接下来的脚本进行优化。对于小的程序来说，这相当的方便；但是大型工程来说，加入这些的工作量并不低，通常可以借助自动化脚本来完成。

## 进一步的动态

在2009年7月17日，Christian Tismer 宣布了 Psyco V2 的计划。\[7\] 然而，在2012年3月12日，Psyco
项目主页上宣布 Psyco 停止维护并正式结束，由 Pypy 所接替。\[8\]

## 相关信息

  - [Cython](https://zh.wikipedia.org/wiki/Cython "wikilink")
  - [PyPy](../Page/PyPy.md "wikilink")
  - [Unladen
    Swallow](https://zh.wikipedia.org/wiki/Unladen_Swallow "wikilink")
  - [YARV](../Page/YARV.md "wikilink") (Yet another Ruby VM)

## 引用

## 外部链接

  - [The Psyco home page](http://psyco.sourceforge.net/)
  - David Mertz's [IBM
    developerWorks](https://zh.wikipedia.org/wiki/developerWorks "wikilink")
    article: [Make Python run as fast as C with
    Psyco](http://www-106.ibm.com/developerworks/linux/library/l-psyco.html)
  - [psyco notes, Poor
    Yorick](https://archive.is/20121217175529/https://www.pooryorick.com/secure/wiki/Pub/Psyco)

[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [Announcement on pypy-dev mailing list with links to project
    page](http://codespeak.net/pipermail/pypy-dev/2009q3/005288.html)
8.  [Psyco Homepage](http://psyco.sourceforge.net/)