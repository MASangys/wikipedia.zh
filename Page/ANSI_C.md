**ANSI C**、**ISO C**、**Standard
C**是指[美国国家标准协会](https://zh.wikipedia.org/wiki/美国国家标准协会 "wikilink")（ANSI）和[国际标准化组织](https://zh.wikipedia.org/wiki/国际标准化组织 "wikilink")（ISO）对[C语言发布的标准](https://zh.wikipedia.org/wiki/C语言 "wikilink")。历史上，这个名字专门用于指代此标准的原始版本，也是支持最好的版本（称为C89或C90）。使用C的软件开发者被鼓励遵循标准的要求，因为它鼓励使用[跨平台的代码](https://zh.wikipedia.org/wiki/跨平台 "wikilink")。

## ANSI C和ISO C的历史

C的第一个标准是由ANSI发布的。虽然这份文档后来被[国际标准化组织](https://zh.wikipedia.org/wiki/国际标准化组织 "wikilink")（ISO）采纳并且ISO发布的修订版亦被ANSI采纳，但名称ANSI
C（而不是ISO C）仍被广泛使用。\[1\]一些软件开发者使用名称**ISO C**，还有一些使用中立的名称**Standard C**。

### C89

1983年，美国国家标准协会组成了一个委员会，X3J11，为了创立C的一套标准。经过漫长而艰苦的过程，该标准于1989年完成，并在作为ANSI
X3.159-1989 "Programming Language C"正式生效。这个版本的语言经常被称作"ANSI
C"，或有时称为"C89"（为了区别C99）。

### C90

在1990年，ANSI C标准（带有一些小改动）被国际标准化组织采纳为ISO/IEC
9899:1990\[2\]，这个版本有时候称为C90。因此，**C89**和**C90**通常指同一种语言。

### C99

在2000年三月，ANSI采纳了ISO/IEC 9899:1999标准。这个标准通常指C99。

### C11

在2011年12月，ANSI采纳了ISO/IEC 9899:2011标准。这个标准通常即C11，它是C语言的现行标准。

## 主要编译器的支持

ANSI C现在被几乎所有广泛使用的编译器支持。现在多数C代码是在ANSI
C基础上写的。任何*仅仅*使用标准C并且没有任何硬件依赖假设的代码实际上能保证在任何[平台上用遵循C标准的编译器编译成功](../Page/系统平台.md "wikilink")。如果没有这种预防措施，多数程序只能在一种特定的平台或特定的编译器上编译，例如，使用非标准库，例如[图形用户界面库](../Page/图形用户界面.md "wikilink")，或者有关编译器或平台特定的特性例如数据类型的确切大小和[字节序](../Page/字节序.md "wikilink").

### 选择编译

为了减轻[K\&R](https://zh.wikipedia.org/wiki/C程序設計語言_\(書\) "wikilink")
C和ANSI C标准，`__STDC__`（"standard c"）巨集可以被用来将代码分割为ANSI和K\&R部分。

``` c
 #if __STDC__
 extern int getopt(int, char * const *, const char *);
 #else
 extern int getopt();
 #endif
```

上面最好使用"`#if __STDC__`"而不是"`#ifdef
__STDC__`"，因为一些实现可能会把`__STDC__`设置为0来表示不遵循ANSI
C。"`__STDC__`"能处理任何没有被巨集替换或者值为0的标示符。因而即使巨集"`__STDC__`"没有定义来表示不遵循ANSI
C，"`__STDC__`"仍然能像显示的那样工作。

在上面的例子，一个原型中使用了ANSI实现兼容的函数声明，而另一个使用了过时的非原形声明。它们在C99和C90中依旧是ANSI兼容的，但并不被鼓励使用。

## 支持ANSI C的编译器

  - [GCC](https://zh.wikipedia.org/wiki/GNU_Compiler_Collection "wikilink")
  - [Xcode](../Page/Xcode.md "wikilink")
  - [Microsoft Visual
    C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")（C89/90和部分C99）
  - [ARM RealView](https://zh.wikipedia.org/wiki/ARM推出的開發工具 "wikilink")

## 参考文献

## 外部链接

  - [ISO C working group](http://www.open-std.org/jtc1/sc22/wg14/)

  - [*Draft ANSI C Standard* (ANSI
    X3J11/88-090)](https://web.archive.org/web/20100822072551/http://flash-gordon.me.uk/ansi.c.txt)
    (May 13, 1988), [Third Public
    Review](http://groups.google.com/group/comp.lang.c/msg/20b174b18cdd919d?hl=en)

  - [*Draft ANSI C Rationale* (ANSI
    X3J11/88-151)](http://www.scribd.com/doc/16306895/Draft-ANSI-C-Rationale)（Nov
    18, 1988）

  -
  -
<!-- end list -->

  -
[Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink")
[Category:程式語言標準](https://zh.wikipedia.org/wiki/Category:程式語言標準 "wikilink")
[Category:ANSI标准](https://zh.wikipedia.org/wiki/Category:ANSI标准 "wikilink")

1.
2.