**PyPy**是用[Python](../Page/Python.md "wikilink")实现的Python[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")。

## 项目背景

PyPy是Python开发者为了更好地Hack
Python创建的项目。此外，PyPy比[CPython](../Page/CPython.md "wikilink")更灵活，易于使用和试验，以制定具体的功能在不同情况的实现方法，可以很容易实施。该项目的目标是，让PyPy比[C](../Page/C.md "wikilink")实现的Python更为容易地适应各个项目和方便裁剪。\[1\]

## 项目现状

PyPy是[Armin
Rigo开发的](https://zh.wikipedia.org/wiki/Armin_Rigo "wikilink")，[Python](../Page/Python.md "wikilink")语言的动态编译器，是[Psyco](../Page/Psyco.md "wikilink")的后继项目。PyPy的目的是，做到[Psyco](../Page/Psyco.md "wikilink")没有做到的[动态编译](https://zh.wikipedia.org/wiki/动态编译 "wikilink")。

PyPy开始只是研究性质的项目。但是开发非常成熟，在2007年中旬发布了1.0
Release版本后，大家关注的焦点是，能否在2008年出现可供生产环境使用的版本。

它支持Python语言的所有核心部分以及大多数的Python语言标准库函数模块，并且通过了Python语言的test
suite。与CPython的区别可以去看它的[兼容性](http://www.pypy.org/compat.html)页面.

PyPy还提供了[JIT编译器和](https://zh.wikipedia.org/wiki/JIT "wikilink")[沙盒功能](https://zh.wikipedia.org/wiki/沙盒 "wikilink")，因此运行速度比CPython要快，以及可以安全地运行一些不被信任的代码。PyPy还有一个单独的支持[微线程的版本](https://zh.wikipedia.org/wiki/微线程 "wikilink")。

另外，PyPy也有[每夜构建](http://buildbot.pypy.org/nightly/trunk/)版本供开发者测试。

PyPy是作为（特定领域研究项目）从2004年12月到2007年3月\[2\]，开始接受[欧盟的援助](https://zh.wikipedia.org/wiki/欧盟 "wikilink")。

## PyPy的实现与原理

PyPy的第一部分：用[Python](../Page/Python.md "wikilink")实现的[Python](../Page/Python.md "wikilink")

其实这么说并不准确，准确地说应该是用[rPython实现的](https://zh.wikipedia.org/wiki/rPython "wikilink")[Python](../Page/Python.md "wikilink")，rPython是Python的一个子集，虽然rPython不是完整的Python，但用rPython写的这个Python实现却是可以解释完整的Python语言。

PyPy的第二部分：[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")

这是一个编译rPython的编译器，或者说这个编译器有一个rPython的前端，目前也只有这么一个前端，不过它的后端却是不少，也就是说这个编译器支持许多的目标语言，比较重要的有：C，[CIL](../Page/通用中间语言.md "wikilink")，Javascript
...

## 註釋

## 參考文獻

  - Davide Ancona, Massimo Ancona, Antonio Cuni, Nicholas D. Matsakis,
    2007. [RPython: a Step Towards Reconciling Dynamically and
    Statically Typed OO
    Languages](ftp://ftp.disi.unige.it/pub/person/AnconaD/DLS08.pdf). In
    Proc. Dynamic Language Symposium (DLS), 2007. ACM Press.

  - Carl Friedrich Bolz, Antonio Cuni, Maciej Fijalkowski, 2009.
    [Tracing the meta-level: PyPy's Tracing JIT
    Compiler](https://web.archive.org/web/20110716123213/http://codespeak.net/svn/pypy/extradoc/talk/icooolps2009/bolz-tracing-jit-final.pdf).
    In Proc. ICOOOLPS, 2009. ACM Press.

  -
  -
  -
  -
## 外部链接

  - [PyPy官方網站](http://www.pypy.org)
  - [Python in Python: The PyPy
    System](http://www.stanford.edu/class/ee380/Abstracts/110302.html) -
    PyPy設計師在[史丹佛大學](../Page/史丹佛大學.md "wikilink")講課（[視頻點播](http://ee380.stanford.edu/cgi-bin/videologger.php?target=110302-ee380-300.asx)）
  - [PyPy內部結構](http://www.aosabook.org/en/pypy.html)（The Architecture of
    Open Source Applications, Volume II - ISBN 9781105571817）

[Category:開放原始碼](https://zh.wikipedia.org/wiki/Category:開放原始碼 "wikilink")
[Category:Python軟體](https://zh.wikipedia.org/wiki/Category:Python軟體 "wikilink")
[Category:Python解释器](https://zh.wikipedia.org/wiki/Category:Python解释器 "wikilink")

1.  {{ cite web | author = Samuele Pedroni | title = PyPy release
    announcement | url =
    <http://codespeak.net/pypy/dist/pypy/doc/release-1.0.0.html> |
    accessdate = 2008-03-09 | date = March 2007 | deadurl = yes |
    archiveurl =
    <https://web.archive.org/web/20080323060256/http://codespeak.net/pypy/dist/pypy/doc/release-1.0.0.html>
    | archivedate = 2008-03-23 }}
2.