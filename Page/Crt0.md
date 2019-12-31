> 本文内容由[Crt0](https://zh.wikipedia.org/wiki/Crt0)转换而来。


**`crt0`**（也叫做**`c0`**）是[连接到](https://zh.wikipedia.org/wiki/连接器 "wikilink")[C程序上的一组执行启动例程](https://zh.wikipedia.org/wiki/C语言 "wikilink")，它进行在调用这个程序的[主函数之前所需要的任何初始化工作](https://zh.wikipedia.org/wiki/主函数 "wikilink")。它一般的都采用叫做`crt0.o`的[目标文件形式](https://zh.wikipedia.org/wiki/目标文件 "wikilink")，经常采用[汇编语言](../Page/汇编语言.md "wikilink")编写，[连接器自动的将它包括入它所建造的所有](https://zh.wikipedia.org/wiki/连接器 "wikilink")[可执行文件中](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")\[1\]。

`crt0`包含大多数[运行时库](../Page/运行时库.md "wikilink")的基本部分。因此，它进行的确切工作依赖于程序的编译器、操作系统和[C标准库实现](https://zh.wikipedia.org/wiki/C标准库 "wikilink")\[2\]。除了运行时环境和[工具链所需要的初始化工作](https://zh.wikipedia.org/wiki/工具链 "wikilink")，`crt`可以进行编程者定义额外操作，比如执行[C++](../Page/C++.md "wikilink")全局[构造器](../Page/构造器.md "wikilink")和携带[GCC](../Page/GCC.md "wikilink")的`((constructor))`属性的C函数\[3\]\[4\]，此时通常将其改称为**`crt1`**。

“crt”表示“C runtime”，“0”表示“最开始”。然而，当程序使用GCC来编译的时候，它也用于在C之外的语言，对于特殊使用场景可获得`crt0`的可替代版本，例如，分析器[gprof要求它的程序同](https://zh.wikipedia.org/wiki/gprof "wikilink")`gcrt0`一起编译\[5\]。

## 样例 crt0.s

下面是针对[linux](https://zh.wikipedia.org/wiki/linux "wikilink") [x86_64的采用at](https://zh.wikipedia.org/wiki/x86_64 "wikilink")\&t语法的例子。

``` asm
.text

.globl _start

_start: # _start is the entry point known to the linker
    mov %rsp, %rbp    # setup a new stack frame
    mov 0(%rbp), %rdi # get argc from the stack
    lea 8(%rbp), %rsi # get argv from the stack
    call main         # %rdi, %rsi are the first two args to main

    mov %rax, %rdi    # mov the return of main to the first argument
    call exit         # terminate the program
```

## 参见

  - [入口点](../Page/入口点.md "wikilink")
  - [运行时系统](https://zh.wikipedia.org/wiki/运行时系统 "wikilink")

## 引用

## 外部链接

  - [crt0.o vs crt1.o](http://lists.uclibc.org/pipermail/uclibc/2002-December/025943.html)
  - [Mini FAQ about the misc libc/gcc crt files](https://dev.gentoo.org/~vapier/crt.txt).
  - [Linux x86 program start-up](http://dbp-consulting.com/tutorials/debugging/linuxProgramStartup.html)
  - [Hello from a libc-free world\! (Part 1)](https://blogs.oracle.com/ksplice/entry/hello_from_a_libc_free), March 16, 2010

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")

1.
2.
3.
4.
5.