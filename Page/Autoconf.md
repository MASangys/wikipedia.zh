[Autoconf-automake-process.svg](https://zh.wikipedia.org/wiki/File:Autoconf-automake-process.svg "fig:Autoconf-automake-process.svg")的工作流程图。请注意"configure.ac"在Autoconf早期版本中名为"configure.in" \]\] **GNU Autoconf**是一个在[Bourne shell下制作供编译](../Page/Bourne_shell.md "wikilink")、安装和打包软件的的工具\[1\]。Autoconf并不受程式语言限制，常用于[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++](../Page/C++.md "wikilink")、[Erlang](../Page/Erlang.md "wikilink")和[Objective-C](../Page/Objective-C.md "wikilink")。配置脚本控制了一个软件包在特定系统上的安装。在进行一系列测试后，配置脚本从模板中生成[makefile与](https://zh.wikipedia.org/wiki/makefile "wikilink")[头文件](../Page/头文件.md "wikilink")进而调整软件包，使之适应某一种系统。Autoconf与[Automake](../Page/Automake.md "wikilink")、[Libtool](../Page/Libtool.md "wikilink")等软件组成了[GNU构建系统](https://zh.wikipedia.org/wiki/GNU构建系统 "wikilink")\[2\]。Autoconf由于1991年夏天编写用于支持他在[自由软件基金会](../Page/自由软件基金会.md "wikilink")的编程工作\[3\]。此后，Autoconf包含了多人编写的改进代码并成为了使用最广泛的自由编译配置软件。\[4\]\[5\]

## 使用概要

软件开发者通过使用[GNU m4语言在](https://zh.wikipedia.org/wiki/GNU_m4 "wikilink")*configure.ac*中写出限定配置脚本行为的列表。Autoconf将*configure.ac*中的命令转化为对应特定平台的配置脚本。Autoconf本身并不具备编译能力，它仅仅用于产生通常附带在软件包中的配置脚本。

### configure.ac格式

The GNU Autoconf手册建议configure.ac file使用如下格式：

  - Autoconf requirements
    The AC_PREREQ（*version*）macro can be used to ensure that a recent enough version of the autoconf program is available to process the configure.ac file

  - AC_INIT（*package*, *version*, *bug-report-address*）
    This macro is required in every configure.ac file. It specifies the name and version of the software package for which to generate a configure script and the email address of the developer.

  - information on the package
    checks for programs
    checks for libraries
    checks for header files
    checks for types
    checks for structures
    checks for compiler characteristics
    checks for library functions
    checks for system services
    AC_CONFIG_FILES（\[file...\]）
    AC_OUTPUT

## 工作原理

autoconf类似于perl使用的metaconfig包。先前[X window系统所使用的imake系统与autoconf是密切相关](https://zh.wikipedia.org/wiki/X_window系统 "wikilink")，但有不同的理念。

autoconf通过检查特性而不是软件版本来确保可移植性。例如Sun OS 4的原生[C编译器不支持ISO](https://zh.wikipedia.org/wiki/C编译器 "wikilink") C，但是用户或管理员可以自行安装支持ISO C的编译器。基于软件特性的检查方法可以发现仅检查软件版本的方法检测不到的支持ISO C的编译器。因此配置脚本可以在未知的或者较新的系统中得到合理的结果，同样允许管理员按照他们的系统来配置脚本。

## 批评

autoconf是一个古老和成熟的产品，如果使用得当，可以使用一个非常简单的接口进行复杂的交叉编译。但是有一些批评指出autoconf使用了过时的技术，因而遗留了很多限制。autoconf无法为[Xcode](../Page/Xcode.md "wikilink")与[Visual Studio制作项目文件](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")，其脚本通常大且复杂，因此增加了Debug的难度。Autoconf所使用的M4对于一些开发者来说是陌生的，因此他们需要专门学习\[6\]。一些开发者并不遵循配置脚本的一些习惯约定\[7\]。

因此一些自由软件开发者开始使用其他软件代替autoconf，[KDE](../Page/KDE.md "wikilink")于KDE 4起开始使用[CMake](../Page/CMake.md "wikilink")\[8\]，[Scribus](../Page/Scribus.md "wikilink")同样开始使用CMake\[9\]。

## 参见

  - [CMake](../Page/CMake.md "wikilink")
  - [配置脚本](https://zh.wikipedia.org/wiki/配置脚本 "wikilink")
  - [GNU构建系统](https://zh.wikipedia.org/wiki/GNU构建系统 "wikilink")
  - [pkg-config](https://zh.wikipedia.org/wiki/pkg-config "wikilink")

## 脚注

## 外部链接

  - [GNU Autoconf home page](http://www.gnu.org/software/autoconf/)
  - [GNU Autoconf macro archive](http://www.gnu.org/software/ac-archive/)
  - [*The Goat Book* homepage (aka the Autobook)](http://sources.redhat.com/autobook/)
  - Murray Cumming（of [gtkmm](https://zh.wikipedia.org/wiki/gtkmm "wikilink") fame）produced these succinct Autotool info pages:[\*one](https://web.archive.org/web/20060110134958/http://www.openismus.com/documents/linux/automake/automake.shtml) [\*two](https://archive.is/20130104065837/http://www.openismus.com/documents/linux/using_libraries/using_libraries.shtml).
  - [Autotoolset home page](http://autotoolset.sourceforge.net/)
  - <https://web.archive.org/web/20140816060326/http://www.freesoftwaremagazine.com/books/autotools_a_guide_to_autoconf_automake_libtool>

### 教程

  - <https://web.archive.org/web/20100627142047/http://mi.eng.cam.ac.uk/~er258/code/autoconf/>
  - [Learning Autoconf and Automake](https://web.archive.org/web/20060321205403/http://www.amath.washington.edu/~lf/tutorials/autoconf/)" by Eleftherios Gkioulekas
  - [*Learning the GNU development tools* @sourceforge](http://autotoolset.sourceforge.net/tutorial.html)
  - [Autotools Tutorial](http://www.lrde.epita.fr/~adl/autotools.html) by Alexandre Duret-Lutz introduces Autoconf, [Automake](../Page/Automake.md "wikilink"), [Libtool](../Page/Libtool.md "wikilink"),和[Gettext](../Page/Gettext.md "wikilink")
  - [Using GNU auto{conf,make,header}](http://www.seul.org/docs/autotut/) by Felipe Bergo

[de:GNU Build System\#GNU Autoconf](https://zh.wikipedia.org/wiki/de:GNU_Build_System#GNU_Autoconf "wikilink")

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink") [Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink") [Category:配置腳本](https://zh.wikipedia.org/wiki/Category:配置腳本 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.