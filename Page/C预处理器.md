> 本文内容由[C预处理器](https://zh.wikipedia.org/wiki/C预处理器)转换而来。


**C预处理器**是C语言、C++语言的[预处理器](../Page/预处理器.md "wikilink")。用于在编译器处理程序之前预扫描源代码，完成[头文件](../Page/头文件.md "wikilink")的包含, [巨集](../Page/巨集.md "wikilink")扩展, , 行控制（line control）等操作。

## 编译阶段

C语言标准规定，预处理是指前4个编译阶段（phases of translation）。

1.  [三字符组与双字符组](../Page/三字符组与双字符组.md "wikilink")的替换
2.  行拼接（Line splicing）: 把物理源码行（Physical source line）中的换行符[转义字符](../Page/转义字符.md "wikilink")处理为普通的换行符，从而把源程序处理为逻辑行的顺序集合。
3.  单词化（Tokenization）: 处理每行的空白、注释等，使每行成为token的顺序集。
4.  擴展巨集与预处理指令（directive）处理.

## 包含文件

用于包含另一个文件:

``` cpp
#include <stdio.h>

int main(void)
{
    printf("Hello, world!\n");
    return 0;
}
```

## 条件编译

[if-else指令包括](https://zh.wikipedia.org/wiki/条件运算式 "wikilink")`#if`, `#ifdef`, `#ifndef`, `#else`, `#elif` and `#endif` .

``` cpp
#if VERBOSE >= 2
  print("trace message");
#endif

#ifdef __unix__ /* __unix__ is usually defined by compilers targeting Unix systems */
# include <unistd.h>
#elif defined _WIN32 /* _WIN32 is usually defined by compilers targeting 32 or 64 bit Windows systems */
# include <windows.h>
#endif
```

``` cpp
#if !(defined __LP64__ || defined __LLP64__) || defined _WIN32 && !defined _WIN64
    // we are compiling for a 32-bit system
#else
    // we are compiling for a 64-bit system
#endif
```

## 巨集定義與擴展

有两种宏：

  - 类似对象的巨集（无参数的巨集）
  - 类似函数的巨集（带参数的巨集），在第一个标识符与左括号之间，绝不能有空格。

<!-- end list -->

``` cpp
#define <identifier> <replacement token list>                    // object-like macro
#define <identifier>(<parameter list>) <replacement token list>  // function-like macro, note parameters
```

宏定义可以用`#undef`取消:

``` cpp
#undef <identifier>                                              // delete the macro
```

## 特殊巨集与指令

`__FILE__` 与 `__LINE__`, 扩展为当前文件与行号。例如:

``` cpp
// debugging macros so we can pin down message origin at a glance
#define WHERESTR  "[file %s, line %d]: "
#define WHEREARG  __FILE__, __LINE__
#define DEBUGPRINT2(...)       fprintf(stderr, __VA_ARGS__)
#define DEBUGPRINT(_fmt, ...)  DEBUGPRINT2(WHERESTR _fmt, WHEREARG, __VA_ARGS__)
//...

  DEBUGPRINT("hey, x=%d\n", x);
```

C或C++语言标准定义了巨集： `__STDC__`, `__STDC_VERSION__`, `__cplusplus`,`__DATE__`,`__TIME__`,`__func__`等。

## Token字符串化

`#`运算符(Stringification Operator)把随后的token转化为C语言的字符串。

``` cpp
#define str(s) #s

str(p = "foo\n";) // outputs "p = \"foo\\n\";"
str(\n)           // outputs "\n"
```

即使\#运算符后面的是另一个巨集名，这个宏名将不会被巨集展开，而是按照字面值被当作一个字符串。因此，如果需要\#运算符后面的巨集名做巨集展开，需要使用两层巨集的嵌套使用，其中外层的巨集展开时也一并把\#运算符后面的巨集名做巨集展开。例如：

``` cpp
#define xstr(s) str(s)
#define str(s) #s
#define foo 4

str (foo)  // outputs "foo"
xstr (foo) // outputs "4"
```

## Token连接

`##`运算符(Token Pasting Operator)连接两个token为一个token.

``` cpp
#define DECLARE_STRUCT_TYPE(name) typedef struct name##_s name##_t

DECLARE_STRUCT_TYPE(g_object); // Outputs: typedef struct g_object_s g_object_t;
```

`##`运算符左侧或右侧如果是另一个巨集名，这个宏名将不会被巨集展开，而是按照字面值被当作一个token。因此，如果需要\#\#运算符左右的巨集名做宏展开，需要使用两层巨集的嵌套使用，其中外层的巨集展开时也一并把\#\#运算符左右的巨集名做宏展开。

## 用户定义的编译错误与警告

``` text
#error "error message"
#warning "warning message"
```

## 编译器相关的预处理特性

`#pragma`指令提供了编译器特定的预处理功能。

## 参考文献

## 外部链接

  - [ISO/IEC 9899](http://www.open-std.org/JTC1/SC22/WG14/www/standards). The official C standard. As of 2014, the latest publicly available version is [a working paper for C11](http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1124.pdf).
  - [GNU CPP online manual](https://gcc.gnu.org/onlinedocs/cpp/index.html)
  - \[<http://msdn.microsoft.com/en-us/library/y4skk93w(VS.80>).aspx Visual Studio .NET preprocessor reference\]
  - [Pre-defined C/C++ Compiler Macros project](http://predef.sourceforge.net/): lists "various pre-defined compiler macros that can be used to identify standards, compilers, operating systems, hardware architectures, and even basic run-time libraries at compile-time"

[Category:C语言](https://zh.wikipedia.org/wiki/Category:C语言 "wikilink")