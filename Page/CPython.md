**CPython**是用[C语言实现的](../Page/C语言.md "wikilink")[Python解释器](../Page/Python.md "wikilink")。作为官方实现，它是最广泛使用的Python解释器。除了CPython以外，还有用[Java实现的](../Page/Java.md "wikilink")[Jython](../Page/Jython.md "wikilink")，用[.NET实现的](../Page/.NET.md "wikilink")[IronPython](../Page/IronPython.md "wikilink")，使[Python方便地和](../Page/Python.md "wikilink")[Java程序](../Page/Java.md "wikilink")、[.NET程序](../Page/.NET.md "wikilink")[集成](../Page/集成.md "wikilink")。另外还有一些实验性的Python解释器比如[PyPy](../Page/PyPy.md "wikilink")。

CPython是使用[字节码的](../Page/字节码.md "wikilink")[解释器](../Page/解释器.md "wikilink")，任何程序源代码在执行之前先要[编译成字节码](../Page/编译.md "wikilink")。它还有和几种其它语言（包括C语言）交互的[外部函数接口](../Page/外部函数接口.md "wikilink")。

## 支持的平台

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong><a href="../Page/类Unix.md" title="wikilink">类Unix</a></strong><br />
<br />
* <a href="../Page/AIX.md" title="wikilink">AIX</a><br />
* <a href="../Page/BSD.md" title="wikilink">BSD</a><br />
* <a href="../Page/Darwin.md" title="wikilink">Darwin</a><br />
* <a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a><br />
* <a href="../Page/HP-UX.md" title="wikilink">HP-UX</a><br />
* <a href="../Page/IRIX.md" title="wikilink">IRIX</a> 5以及更高版本<br />
* <a href="../Page/貝爾實驗室九號計畫.md" title="wikilink">九號計畫</a><br />
* <a href="../Page/Mac_OS_X.md" title="wikilink">Mac OS X</a><br />
* <a href="../Page/NetBSD.md" title="wikilink">NetBSD</a><br />
* <a href="../Page/Linux.md" title="wikilink">Linux</a><br />
* <a href="../Page/OpenBSD.md" title="wikilink">OpenBSD</a><br />
* <a href="../Page/Solaris.md" title="wikilink">Solaris</a><br />
* <a href="../Page/Tru64.md" title="wikilink">Tru64</a><br />
*其它<a href="../Page/Unix.md" title="wikilink">Unix</a></p></td>
<td><p><strong>桌面操作系统</strong><br />
<br />
* <a href="../Page/AROS.md" title="wikilink">AROS</a><br />
* <a href="../Page/AtheOS.md" title="wikilink">AtheOS</a><br />
* <a href="../Page/BeOS.md" title="wikilink">BeOS</a><br />
* <a href="../Page/Windows.md" title="wikilink">Windows</a><br />
* <a href="../Page/Windows_NT.md" title="wikilink">Windows NT</a><br />
* <a href="../Page/OS/2.md" title="wikilink">OS/2</a><br />
* <a href="../Page/RISC_OS.md" title="wikilink">RISC OS</a></p></td>
<td><p><strong>特殊的和嵌入式</strong><br />
<br />
* <a href="../Page/GP2X.md" title="wikilink">GP2X</a><br />
* <a href="../Page/iPodLinux.md" title="wikilink">iPodLinux</a><br />
* <a href="../Page/Nintendo_DS.md" title="wikilink">Nintendo DS</a><br />
* <a href="../Page/Nintendo_Gamecube.md" title="wikilink">Nintendo Gamecube</a><br />
* <a href="../Page/Symbian_OS_Series60.md" title="wikilink">Symbian OS Series60</a><br />
* <a href="../Page/Nokia_770_Internet_Tablet.md" title="wikilink">Nokia 770 Internet Tablet</a><br />
* <a href="../Page/Nokia_N800.md" title="wikilink">Nokia N800</a><br />
* <a href="../Page/Nokia_N810.md" title="wikilink">Nokia N810</a><br />
* <a href="../Page/Palm_OS.md" title="wikilink">Palm OS</a><br />
* <a href="../Page/PlayStation_2.md" title="wikilink">PlayStation 2</a><br />
* <a href="../Page/PlayStation_3.md" title="wikilink">PlayStation 3</a>（Linux）<br />
* <a href="../Page/Psion.md" title="wikilink">Psion</a><br />
* <a href="../Page/QNX.md" title="wikilink">QNX</a><br />
* <a href="../Page/Sharp_Zaurus.md" title="wikilink">Sharp Zaurus</a><br />
* <a href="../Page/Xbox_(遊戲機).md" title="wikilink">Xbox</a>/<a href="../Page/XBMC.md" title="wikilink">XBMC</a><br />
* <a href="../Page/VxWorks.md" title="wikilink">VxWorks</a><br />
* <a href="../Page/Openmoko.md" title="wikilink">Openmoko</a></p></td>
<td><p><strong>大型机和其它</strong><br />
<br />
* <a href="../Page/OS/390.md" title="wikilink">OS/390</a><br />
* <a href="../Page/OpenVMS.md" title="wikilink">VMS</a><br />
* <a href="../Page/z/OS.md" title="wikilink">z/OS</a></p></td>
</tr>
</tbody>
</table>

## 曾经支持的平台

[PEP 11](http://www.python.org/dev/peps/pep-0011/)列出了CPython停止支持的平台。

  - [DOS](../Page/DOS.md "wikilink")（2.0开始停止支持）
  - [IRIX](../Page/IRIX.md "wikilink") 4（2.3开始停止支持）
  - [Mac OS 9](../Page/Mac_OS_9.md "wikilink")（2.4开始停止支持）
  - [MINIX](../Page/MINIX.md "wikilink")（2.3开始停止支持）

## 非官方的移植

这些版本没有进入[Python软件基金会的官方版本](../Page/Python软件基金会.md "wikilink")，这些版本包含了为特定平台提供的模块，如为PSP提供的图像和声音[API以及为S](../Page/API.md "wikilink")60提供的[SMS和照相机API](../Page/SMS.md "wikilink")。

  - [Amiga](../Page/Amiga.md "wikilink")
    [1](http://www.monkeyhouse.eclipse.co.uk/amiga/python/)
  - [AS/400](../Page/AS/400.md "wikilink")
    [2](http://www.iseriespython.com/)
  - [DOS平台使用的](../Page/DOS.md "wikilink")[DJGPP](../Page/DJGPP.md "wikilink")
    [3](http://www.caddit.net/pythond/)
  - [PSP](../Page/PSP.md "wikilink")
    [4](https://web.archive.org/web/20090210233518/http://python-psp.net/trac/)
  - [Symbian](../Page/Symbian.md "wikilink")
    [5](https://web.archive.org/web/20080810154656/http://opensource.nokia.com/projects/pythonfors60/)
  - [Windows CE](../Page/Windows_CE.md "wikilink")/[Pocket
    PC](../Page/Pocket_PC.md "wikilink")
    [6](http://pythonce.sourceforge.net/)

## 并发问题

在[多处理器的计算机上使用CPython的主要问题来自CPython的](../Page/多处理器.md "wikilink")[全局解释器锁](../Page/全局解释器锁.md "wikilink")（Global
Interpreter
Lock，GIL），它使得CPython不能进行并发编程。\[1\]要做到并发编程，就必须为每一个线程运行一个解释器。如果这样的话，它们之间的通讯就非常困难。所以社区内一直在讨论是否要从CPython中去除GIL。\[2\]

## 注释

1.

## 参考

{{-}}

[Category:自由电脑程式设计工具](https://zh.wikipedia.org/wiki/Category:自由电脑程式设计工具 "wikilink")
[Category:Python解释器](https://zh.wikipedia.org/wiki/Category:Python解释器 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.  [Python/C API Reference Manual: Thread State and the Global
    Interpreter Lock](http://docs.python.org/api/threads.html)
2.  [Python Library and Extension FAQ: Can't we get rid of the Global
    Interpreter
    Lock?](http://www.python.org/doc/faq/library/#can-t-we-get-rid-of-the-global-interpreter-lock)