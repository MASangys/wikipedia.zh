**GNU汇编器**（），是由[GNU计划所使用的](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")[汇编器](https://zh.wikipedia.org/wiki/汇编器 "wikilink")，一般称为**gas**，或依其可执行文件名称简称为**as**。它是[GCC的默认](../Page/GCC.md "wikilink")[后端](https://zh.wikipedia.org/wiki/后端 "wikilink")。它用于汇编[GNU操作系统](../Page/GNU.md "wikilink")、[Linux内核以及其他各种软件](../Page/Linux内核.md "wikilink")。它是[GNU
Binutils包的一部分](../Page/GNU_Binutils.md "wikilink")。

GAS的[可执行文件被命名为](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")[`as`](https://zh.wikipedia.org/wiki/As_\(Unix\) "wikilink")，[Unix汇编器的标准名称](https://zh.wikipedia.org/wiki/Unix "wikilink")。GAS是[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，可以运行或为不同的[计算机系统结构编译](../Page/计算机系统结构.md "wikilink")。GAS依据[GNU通用公共许可证第三版发布](../Page/GNU通用公共许可证.md "wikilink")，为[自由软件](../Page/自由软件.md "wikilink")。

## 通用语法

GAS支持适用于所有支持架构的通用语法。通用语法包括汇编指令和注释方法。

### 指令

GAS使用汇编器[指令](https://zh.wikipedia.org/wiki/编译程式定向 "wikilink")（也被称为伪操作），它们作为关键字指示开始一个时期，与[C语言中的预处理指令表现相同](https://zh.wikipedia.org/wiki/C语言 "wikilink")。虽然无论目标架构如何，大多数可用的汇编指令都是有效的，但一些指令仍然因机器不同而不同。\[1\]

### 注释

GAS支持两种注释风格：\[2\]

<big>多行注释：</big>

与[C语言类似](https://zh.wikipedia.org/wiki/C语言 "wikilink")，以一对[斜线](https://zh.wikipedia.org/wiki/斜线 "wikilink")-[星号对开始和结束](https://zh.wikipedia.org/wiki/星号 "wikilink")：

    <nowiki>
    /*
    注释
    */
    </nowiki>

<big>单行注释：</big>

在不同的架构中汇编时，单行注释有几种不同的格式。

  - [\#用于以下平台中](https://zh.wikipedia.org/wiki/井号 "wikilink")：i386，x86-64，i960，68HC11，68HC12，VAX,
    V850，m32r，M880x0。
  - [;用于以下平台中](https://zh.wikipedia.org/wiki/分号 "wikilink")：AMD 29k
    family，ARC，H8/300 family，HPPA,PDP-11，picoJava，Motorola，PowerPC。
  - [@用于ARM平台](../Page/@.md "wikilink")。
  - [{{\!}}在](https://zh.wikipedia.org/wiki/竖线 "wikilink")680x0平台汇编时用来表示。
  - [\!用于Renesas](../Page/叹号.md "wikilink") SH平台。

## 用法

作为流行编译器套件GCC的后端，GNU汇编器在编译现代开源软件中有非常广泛的应用。在Linux系统上，GAS经常用作与其他GNU软件结合的汇编器。因为[OS
X](https://zh.wikipedia.org/wiki/OS_X "wikilink"),修改后版本的GAS也可以在[麦金塔操作系统的开发工具包中找到](https://zh.wikipedia.org/wiki/麦金塔 "wikilink")。

## 示例程序

一个标准的“Hello, world\!”程序，运行于[Linux](../Page/Linux.md "wikilink")
[IA-32](https://zh.wikipedia.org/wiki/IA-32 "wikilink")：

``` asm
.globl  _start

.text
_start:
    movl    $len, %edx
    movl    $msg, %ecx
    movl    $1, %ebx
    movl    $4, %eax
    int $0x80

    movl    $0, %ebx
    movl    $1, %eax
    int $0x80
.data
msg:
    .ascii  "Hello, world!\n"
    len =   . - msg
```

## 批评

那些更习惯于Intel语法的人认为，比起其他汇编器，在[x86和](https://zh.wikipedia.org/wiki/x86 "wikilink")[x86-64平台上不支持使用Intel语法就是一大败笔](https://zh.wikipedia.org/wiki/x86-64 "wikilink")。

然而，自从2.10版本，Intel语法可以通过使用`.intel_syntax`指令使用。\[3\]\[4\]\[5\]

## 参见

  - [GNU
    toolchain](https://zh.wikipedia.org/wiki/GNU_toolchain "wikilink")
  - [二进制文件描述库](../Page/二进制文件描述库.md "wikilink")
  - [汇编器列表](https://zh.wikipedia.org/wiki/组合语言列表 "wikilink")

## 参考文献

## 外部链接

  -
  - [Gas手册](http://sourceware.org/binutils/docs/as/)

  - [A comparison of GAS and
    NASM](http://www.ibm.com/developerworks/linux/library/l-gas-nasm.html)，位于[IBM](../Page/IBM.md "wikilink")

  -
[Category:汇编器](https://zh.wikipedia.org/wiki/Category:汇编器 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:自由编译器和解释器](https://zh.wikipedia.org/wiki/Category:自由编译器和解释器 "wikilink")
[Category:Linux编程工具](https://zh.wikipedia.org/wiki/Category:Linux编程工具 "wikilink")
[Category:Unix编程工具](https://zh.wikipedia.org/wiki/Category:Unix编程工具 "wikilink")

1.
2.
3.
4.
5.