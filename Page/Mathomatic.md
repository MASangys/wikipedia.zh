{{ infobox software | screenshot =
[Image-mathomatic_snapshot.png](https://zh.wikipedia.org/wiki/File:Image-mathomatic_snapshot.png "fig:Image-mathomatic_snapshot.png")
| caption = Mathomatic运行在一个[xterm窗口中](../Page/xterm.md "wikilink") |
developer = George Gesslein II | latest release version = 16.5.0 |
latest release date =  | programming language =
[C](../Page/C语言.md "wikilink") | operating system =
[跨平台](../Page/跨平台.md "wikilink") | genre =
[计算机代数系统](../Page/计算机代数系统.md "wikilink") | license = [GNU
Lesser General Public
License](../Page/GNU_Lesser_General_Public_License.md "wikilink") |
website = <http://mathomatic.org/> }}

**Mathomatic**是一个[自由](../Page/自由软件.md "wikilink")，[便携式](../Page/便携式.md "wikilink")，通用[计算机代数系统](../Page/计算机代数系统.md "wikilink")（CAS）
和[计算器软件](../Page/计算器.md "wikilink")，可以符号式的解答、化简、结合并比较代数方程，执行[复数和](../Page/复数.md "wikilink")[多项式的计算](../Page/多项式.md "wikilink")，等等。它也可以做符号化的微积分（[导数](../Page/导数.md "wikilink")，[极值](../Page/极值.md "wikilink")，[泰勒级数](../Page/泰勒级数.md "wikilink")，和多项式[积分以及](../Page/积分.md "wikilink")[拉普拉斯变换](../Page/拉普拉斯变换.md "wikilink")）并且能操作所有的[基本代数](../Page/基本代数.md "wikilink")。[三角函数可以被输入并使用](../Page/三角函数.md "wikilink")[欧拉公式处理](../Page/欧拉公式.md "wikilink")。诸如*f*(*x*)
和*log*(*x*)，测绘，[多倍长整数](../Page/多倍长整数.md "wikilink")，以及[矩阵等功能尚未被引入](../Page/矩阵.md "wikilink")。Mathomatic不允许超长的[表示式进行计算](../Page/表示式.md "wikilink")，因为这会耗费大量时间及内存。

## 功能

软件自身不带[图形用户界面](../Page/图形用户界面.md "wikilink")（除iPhone版本）\[1\]。控制台模式的程序自带一个彩色[命令行界面运行在任何操作系统的](../Page/命令行界面.md "wikilink")[终端模拟器下](../Page/终端模拟器.md "wikilink")。命令行界面非常简单，差不多不需要任何学习就能掌握。

软件没有编程功能，直译程序如同一个代数计算器一般工作。表示式和方程以中置记法输入。各种操作使用简单的英语命令执行。

因为所有数字都是[双倍精确浮点数并且数字的近似值和精确值之间的差异并没有被记录](../Page/双倍精确浮点数.md "wikilink")，因此Mathomatic不适合需要高精确度的计算。它适合最高小数点后14位的小数的快速且准确的计算。

Mathomatic可以被当成[浮点或](../Page/浮点.md "wikilink")[整数算术代码生成工具](../Page/整数.md "wikilink")，化简方程并转换到最优化的赋值语句，支持[Python](../Page/Python.md "wikilink")，[C](../Page/C.md "wikilink")，[C++以及](../Page/C++.md "wikilink")[Java编程语言](../Page/Java.md "wikilink")。

Mathomatic的源代码可以被编译成一个带有非常简单的[API的符号计算的](../Page/API.md "wikilink")[库](../Page/库.md "wikilink")，可以被连接到C或C++程序以使用Mathomatic的符号运算数学引擎。

## 会话实例

用户输入的内容以粗体显示。

`1-> `**`x``   ``=``   ``(a``   ``+``   ``1)``   ``*``   ``(b``   ``+``
 ``2)`**
`#1: x = (a + 1)*(b + 2)`
`1-> `**`b`**` ; solve for b`
`           x`
`#1: b = ------- - 2`
`        (a + 1)`
`1-> `**`code``   ``java`**` ; output Java language code`
`b = ((x/(a + 1.0)) - 2.0);`
`1-> `**`variables``   ``java`**` ; define the variables for Java`
`double  x;`
`double  a;`
`double  b;`
`1->`

## 历史

Mathomatic的开发由George Gesslein II开始于1986年。最初以Microsoft
C，运行于[MS-DOS并且是一个](../Page/MS-DOS.md "wikilink")[共享软件](../Page/共享软件.md "wikilink")，附带一个图表程序。后来它被移植到[Linux平台的](../Page/Linux.md "wikilink")[GNU
C
Compiler并成为](../Page/GNU_C_Compiler.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")。图表程序被终止开发。

## 可用平台

Mathomatic通过[Cygwin可以在](../Page/Cygwin.md "wikilink")[Microsoft
Windows下运行](../Page/Microsoft_Windows.md "wikilink")。\[2\]，以及[Mac OS
X](../Page/Mac_OS_X.md "wikilink")\[3\],
[iPhone](../Page/iPhone.md "wikilink")\[4\], [Nintendo
DS的](../Page/Nintendo_DS.md "wikilink")[DSLinux](../Page/DSLinux.md "wikilink")\[5\]或独立运行\[6\].
[Debian
Linux](../Page/Debian_Linux.md "wikilink")\[7\]，和所有[BSD](../Page/BSD.md "wikilink")
UNIX发行版都服带有安装包形式的Mathomatic，这些移植版本都由独立个人维护。

## 系统要求

从源代码编译需要一个C语言编译器和[C标准函式库](../Page/C标准函式库.md "wikilink")，如果使用[GCC编译](../Page/GCC.md "wikilink")，那么不需要对源代码作任何修改。

Mathomatic可以运行在任何一台带有至少1[兆空闲内存的计算机](../Page/兆.md "wikilink")。从Mathomatic主页上下载的版本的内存需求最高可达\[8\]
100兆字节，主要影响因素是有多少方程空间以及有多少方程被输入。方程空间是固定的[数组](../Page/数组.md "wikilink")，在需要时分配，大小会在编译或启动时被设置。每一个输入的方程占用一个方程空间

## 参见

## 参考

## 外部链接

  - [Mathomatic home page](http://mathomatic.org)
  - [Mathomatic
    documentation](https://web.archive.org/web/20070809143849/http://mathomatic.orgserve.de/math/doc/)
  - [An example of Mathomatic being used for quick
    calculations](http://palpable-prostate.blogspot.com/2007/06/psa-screening-and-early-detection-part.html)
  - [Mathematics on a UNIX
    workstation](http://www.ibm.com/developerworks/aix/library/au-unixmath-a4.pdf)

[Category:1987年软件](https://zh.wikipedia.org/wiki/Category:1987年软件 "wikilink")
[Category:Android软件](https://zh.wikipedia.org/wiki/Category:Android软件 "wikilink")
[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")
[Category:命令行软件](https://zh.wikipedia.org/wiki/Category:命令行软件 "wikilink")
[Category:Linux计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:Linux计算机代数系统软件 "wikilink")
[Category:MacOS计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:MacOS计算机代数系统软件 "wikilink")
[Category:Windows计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:Windows计算机代数系统软件 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:嵌入式Linux](https://zh.wikipedia.org/wiki/Category:嵌入式Linux "wikilink")
[Category:自由计算机代数系统](https://zh.wikipedia.org/wiki/Category:自由计算机代数系统 "wikilink")
[Category:自由教育軟件](https://zh.wikipedia.org/wiki/Category:自由教育軟件 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:IOS软件](https://zh.wikipedia.org/wiki/Category:IOS软件 "wikilink")
[Category:Nintendo_DS_homebrew](https://zh.wikipedia.org/wiki/Category:Nintendo_DS_homebrew "wikilink")
[Category:綠色軟件](https://zh.wikipedia.org/wiki/Category:綠色軟件 "wikilink")

1.
2.  [Mathomatic on the Cygwin
    website](http://cygwin.com/packages/mathomatic)

3.
4.  [Mathomatic for the iPhone](http://www.gotow.net/mathomatic/)

5.  [Mathomatic - DSLinux Wiki](http://dslinux.org/wiki/Mathomatic)

6.  [Mathomatic ported to the Nintendo
    DS](http://blog.davr.org/category/nintendo-ds/mathomatic/)

7.  [Debian - Package Search Results -
    mathomatic](http://packages.debian.org/mathomatic)

8.  Found on the Mathomatic home page