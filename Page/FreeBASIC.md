**FreeBASIC** 是一个 [BASIC](../Page/BASIC.md "wikilink")
语言的[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")\[1\]，可运行在[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、保护模式的[DOS](../Page/DOS.md "wikilink")（[DOS扩展](https://zh.wikipedia.org/wiki/DOS扩展 "wikilink")）、[Linux以及](../Page/Linux.md "wikilink")[Xbox上](../Page/Xbox.md "wikilink")。

FreeBASIC通过使用"QB"关键字可以在高级别上支持用[QBASIC编写的](../Page/QBASIC.md "wikilink")[程序](https://zh.wikipedia.org/wiki/程序 "wikilink")。许多用QBASIC写的程序可以在不需任何修改的情况下编译和运行在这个模式下。但是如果使用默认的参数来编译的话，大部分的程序还是要进行一些修改的。

## 特性

### 平台支持

FreeBASIC 现在可以运行在64位和32位的 Windows、GNU/Linux，以及16位的 DOS系统。也可以为 Xbox
创建应用程序。越来越多的平台将会被支持。运行时库被设计成可移植的。所有第三方工具均使用来自 GNU
Binutils。系统上编译器 100% 用 FreeBASIC 代码写成，使得可以简单的自举而不需要依赖太多的不可移植工具。

### 现代编程语言特性支持

FreeBASIC作为一种高级编程语言，支持面向过程、面向对象和元编程。

### 调试支持

完全支持GDB（GNU 调试器），数组越界检查（只有使用 -exx
命令行选项），[空指针检查](https://zh.wikipedia.org/wiki/空指针 "wikilink")（同上）。

### 图形界面支持

该项目提供了与常见程序库的简单的绑定，比如：C 运行时库、Allegro、SDL、OpenGL、GTK+、Windows
API等，同时也提供了一些示例程序。

它使用[GNU
Binutils](../Page/GNU_Binutils.md "wikilink")[软件开发工具作为](https://zh.wikipedia.org/wiki/软件开发工具 "wikilink")[后端](https://zh.wikipedia.org/wiki/后端 "wikilink")，除了动态和静态[库](https://zh.wikipedia.org/wiki/库 "wikilink")，还可以制作控制台和图形／[GUI可执行文件](https://zh.wikipedia.org/wiki/GUI "wikilink")。FreeBASIC完全支持[C库和部分](https://zh.wikipedia.org/wiki/C语言 "wikilink")[C++库](../Page/C++.md "wikilink")。这使得程序员可以使用和创建C和许多其他语言的库。

FreeBASIC还不是一个[优化编译器](https://zh.wikipedia.org/wiki/优化编译器 "wikilink")，但是它的速度被认为接近主流工具，如[GCC](../Page/GCC.md "wikilink")\[2\]。

## 语法

FreeBASIC语法试图尽量保持接近[BASIC语法](../Page/BASIC.md "wikilink")，特别是[QuickBASIC](../Page/QuickBASIC.md "wikilink")。虽然语法上试图保持与其前辈一致，FreeBASIC还是遵循了一些现代的标准和编码实现。具有标准的过程特性以及[面向对象特性](https://zh.wikipedia.org/wiki/面向对象 "wikilink")，如[对象](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")、[运算符重载](../Page/运算符重载.md "wikilink")、[函数重载和](../Page/函数重载.md "wikilink")[命名空间等等](../Page/命名空间.md "wikilink")，已经被加入到FreeBASIC中。

FreeBASIC的行在遇到[行尾字符或](https://zh.wikipedia.org/wiki/行尾 "wikilink")[冒号时结束](../Page/冒号.md "wikilink")。因此不需要使用特殊字符（如[C语言中的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[分号](https://zh.wikipedia.org/wiki/分号 "wikilink")）来通知编译器此行结束。多条语句可以通过冒号`:`分割写在一行里。

FreeBASIC支持块[注释和行尾注释](https://zh.wikipedia.org/wiki/注释 "wikilink")。整行注释使用一个[撇号](../Page/撇号.md "wikilink")`'`，块注释从`/'`开始，到`'/`结束。

### 兼容性

FreeBASIC继承自[QuickBASIC](../Page/QuickBASIC.md "wikilink")\[3\]。为了使FreeBASIC与现代的工具兼容并且具有高级编程特性，在开发FreeBASIC的时候还是进行了一些修改的。而*-lang*选项的设置使得FreeBASIC编译器也能够适应[GCC和QuickBASIC兼容语言](../Page/GCC.md "wikilink")。

\-
当选择FB语言设置时（[命令行参数为](https://zh.wikipedia.org/wiki/命令行参数 "wikilink")*-lang
fb*），将开启所有的FreeBASIC新特性，并且不允许使用QuickBASIC的"hackish"特性（该特性不符合现代编程实践）。

\- FB-Lite语言设置（*-lang
fblite*）提供了访问大多数FreeBASIC中新的非面向对象的特性，但是允许使用与老版本BASIC类似的代码风格。语法规则，如允许隐变量、后缀、[`GOSUB`](https://zh.wikipedia.org/wiki/GOSUB "wikilink")
/ `RETURN`、[行号等等](https://zh.wikipedia.org/wiki/行号 "wikilink")。

\- QB语言设置（*-lang qb*）与*-lang
fblite*类似，但是它更专注于复制[QBASIC式的行为](../Page/QBASIC.md "wikilink")。*-lang
qb*被设计用来使为QBASIC写的程序能够更容易地运行，在有的情况下*-lang fblite*的兼容性不够好，这时*-lang
qb*就会很有用。

### 示例代码

和QBasic一样，在屏幕上写入一行文本的程序可以写成如下的简单语句：

``` freebasic
Print "Hello, World!"
Sleep
```

而且也加入一些面向对象的性质，例如动态连接库，运算符重载，以下是面向对象的例子代码：

``` freebasic


/'A Vector motion class'/
Type Vector
    W as Integer
    H as Integer
    Declare Constructor (nW as Integer, nH as Integer)
End Type

Constructor Vector (nW as Integer, nH as Integer)
    W = nW
    H = nH
End Constructor

/'Create an object class'/
Type Object
    Private:
        X as Integer
        Y as Integer
        Movement as Vector Pointer
    Public:
        /'Create public methods, including a destructor for automated cleanup'/
        Declare Constructor (nX as Integer, nY as Integer)
        Declare Destructor ()
        Declare Sub SetMotion (Motion as Vector Pointer)
        Declare Sub Move ()
        Declare Property GetX as Integer
End Type

/'Set initial coordinates'/
Constructor Object (nX as Integer, nY as Integer)
    X = nX
    Y = nY
End Constructor

/'Clean up allocated memory'/
Destructor Object ()
    delete Movement
End Destructor

/'Set the motion Vector'/
Sub Object.SetMotion (Motion as Vector Pointer)
    Movement = Motion
End Sub

/'Move the object based on its motion Vector'/
Sub Object.Move ()
    X += Movement->W
    Y += Movement->H
End Sub

/'A getter for X, as it's private'/
Property Object.GetX as Integer
    Return X
End Property

    /'MAIN CODE'/

/'Create a new instance of Object at coordinates 100, 100'/
Dim Player as Object = Type<Object>(100, 100)

/'Dynamically allocate a new Vector object
moving left 10 units and down 5'/
Player.SetMotion(new Vector (-10, 5))

/'Make the Player update its location'/
Player.Move()

/'Display new X, 90'/
Print Player.GetX

/'Because Player is a local variable, it's destructor is
called at the end of scope automatically'/
```

## 图形库

FreeBASIC拥有一个内置的2D软件[图形库](https://zh.wikipedia.org/wiki/图形库 "wikilink")，与QuickBASIC兼容，为用户提供了简单的图形元素（如矩形，线和圆）、[位块传输以及一些QuickBASIC的图形库中没有的附加特性](https://zh.wikipedia.org/wiki/位块传输 "wikilink")。图形库本身并不依赖于操作系统，因此可以跨平台使用。

虽然图形库是内置的，但是只有在选择使用时才会被包含，这可以简单地通过调用FBgfx
*Screen*命令来实现。通用库（如[OpenGL](../Page/OpenGL.md "wikilink")+）为了[硬件加速使用](../Page/硬件加速.md "wikilink")[API](https://zh.wikipedia.org/wiki/API "wikilink")（Windows、Linux等）来创建一个[窗口可以不包含FreeBASIC的图形库](https://zh.wikipedia.org/wiki/窗口 "wikilink")。

## 未来的开发

FreeBASIC仍然继续开发，目标是成为一个[GCC前端](../Page/GCC.md "wikilink")\[4\]，这将带来许多[C++和其他](../Page/C++.md "wikilink")[面向对象编程语言中的新特性](https://zh.wikipedia.org/wiki/面向对象编程语言 "wikilink")，高级[优化技术](https://zh.wikipedia.org/wiki/优化 "wikilink")，以及可以移植到任何现代系统上的能力。

0.17版中已经加入了面向对象程序设计的[类](https://zh.wikipedia.org/wiki/类 "wikilink")，扩展了基本的[数据类型](https://zh.wikipedia.org/wiki/数据类型 "wikilink")。还有更多的新特性值得期待。

## 参考

## 外部链接

  - [FreeBASIC官方网站](http://www.freebasic.net/)
  - [FreeBASIC官方文档](http://www.freebasic.net/wiki/wikka.php?wakka=DocToc)
  - [FreeBASIC官方论坛](http://www.freebasic.net/forum)
  - [FreeBASIC 托管在 SourceForge
    的页面](http://sourceforge.net/projects/fbc/)
  - [FreeBASIC wiki](http://www.freebasic.net/wiki/)

[Category:BASIC编译器](https://zh.wikipedia.org/wiki/Category:BASIC编译器 "wikilink")
[Category:自由编译器与解释器](https://zh.wikipedia.org/wiki/Category:自由编译器与解释器 "wikilink")
[Category:SourceForge專案](https://zh.wikipedia.org/wiki/Category:SourceForge專案 "wikilink")
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:过程程序设计语言](https://zh.wikipedia.org/wiki/Category:过程程序设计语言 "wikilink")
[Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")
[Category:自托管软件](https://zh.wikipedia.org/wiki/Category:自托管软件 "wikilink")
[Category:带有BASIC代码示例的条目](https://zh.wikipedia.org/wiki/Category:带有BASIC代码示例的条目 "wikilink")

1.

2.

3.
4.