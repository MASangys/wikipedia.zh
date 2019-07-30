</ref> | operating system = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | platform = [GNU](../Page/GNU.md "wikilink") | genre = [即时编译](https://zh.wikipedia.org/wiki/即时编译 "wikilink") | license = [GNU General Public License](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink"), [GNU Lesser General Public License](https://zh.wikipedia.org/wiki/GNU_Lesser_General_Public_License "wikilink") | website =  }} **GNU lightning**是在[运行时生成](https://zh.wikipedia.org/wiki/运行时 "wikilink")[汇编语言](../Page/汇编语言.md "wikilink")代码的自由软件库。版本2.0发行于2013年8月，支持的后端包括：[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")（32-bit和64-bit）、[ARM](https://zh.wikipedia.org/wiki/ARM架构 "wikilink")、[MIPS](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")、[PowerPC](../Page/PowerPC.md "wikilink")（32-bit）、[IA-64](https://zh.wikipedia.org/wiki/IA-64 "wikilink")、[SPARC](../Page/SPARC.md "wikilink")（32-bit）和[PA-RISC](https://zh.wikipedia.org/wiki/PA-RISC "wikilink")\[1\]。

## 相较其他库的优点

GNU提供的特征使它可用于[即时编译](https://zh.wikipedia.org/wiki/即时编译 "wikilink")。相较于[LLVM](../Page/LLVM.md "wikilink")或[libJIT这样的库](https://zh.wikipedia.org/wiki/DotGNU#libJIT "wikilink")，GNU lightning只提供低层汇编接口，把宽松的基于[SPARC](../Page/SPARC.md "wikilink")和[MIPS架构的一种标准化RISC汇编语言](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")\[2\]，编译成目标架构的机器语言。

## 缺点

它不提供[寄存器分配](https://zh.wikipedia.org/wiki/寄存器分配 "wikilink")、[数据流或](../Page/数据流分析.md "wikilink")[控制流分析](../Page/控制流分析.md "wikilink")或[优化](https://zh.wikipedia.org/wiki/程序优化 "wikilink")。

## 指令集

GNU lightning的指令集松散的基于了现存的[RISC架构](../Page/精简指令集.md "wikilink")。

### 类型

所需的指令处理如下9种类型的数据：

| 类型 | C等价            |
| -- | -------------- |
| c  | signed char    |
| uc | unsigned char  |
| s  | short          |
| us | unsigned short |
| i  | int            |
| ui | unsigned int   |
| l  | long           |
| f  | float          |
| d  | double         |

## 使用GNU lightning的项目

[Racket](../Page/Racket.md "wikilink")\[3\]，[GNU Smalltalk](https://zh.wikipedia.org/wiki/GNU_Smalltalk "wikilink")\[4\]，[GNU Guile](../Page/GNU_Guile.md "wikilink")\[5\]和[CLISP](https://zh.wikipedia.org/wiki/CLISP "wikilink")\[6\]使用GNU lightning进行[即时编译](https://zh.wikipedia.org/wiki/即时编译 "wikilink")。GNU lightning最初开发用于GNU Smalltalk的从字节码到本地代码的动态转换器的工具\[7\]。

## 引用

## 外部链接

  - [GNU lightning](http://directory.fsf.org/wiki/GNU_lightning)在[自由软件目录上](https://zh.wikipedia.org/wiki/自由软件目录 "wikilink")

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")

1.  [Release announcement. 2013-08-23](http://lists.gnu.org/archive/html/lightning/2013-08/msg00000.html)
2.
3.
4.
5.
6.
7.