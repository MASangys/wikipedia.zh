> 本文内容由[Nm \(Unix\)](https://zh.wikipedia.org/wiki/Nm_\(Unix\))转换而来。


**`nm`**命令存在于多数后出版本的[Unix及](https://zh.wikipedia.org/wiki/Unix "wikilink")[类似的](https://zh.wikipedia.org/wiki/类Unix操作系统 "wikilink")[操作系统](../Page/操作系统.md "wikilink")中。`nm`被用来检查[二进制文件](https://zh.wikipedia.org/wiki/二进制文件 "wikilink")（包括[库](https://zh.wikipedia.org/wiki/函数库 "wikilink")，编译后的[目标模块](https://zh.wikipedia.org/wiki/目标文件 "wikilink")，共享目标文件，和独立[可执行文件](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")）并显示这些文件的内容，或存储在其中的[元信息](../Page/元数据.md "wikilink")，特别是[符号表](../Page/符号表.md "wikilink")。来自`nm`的输出区分各种符号类型。例如，在一个目标文件所提供的[函数和它所需要的函数之间是有区别的](https://zh.wikipedia.org/wiki/子例程 "wikilink")。`nm`被用作[调试的辅助工具](https://zh.wikipedia.org/wiki/调试 "wikilink")，帮助解决名字冲突和[C++](../Page/C++.md "wikilink")[名称修饰引起的问题](https://zh.wikipedia.org/wiki/名称修饰 "wikilink")，和验证[工具链的其他部分](https://zh.wikipedia.org/wiki/工具链 "wikilink")。

[GNU计划在](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")[GNU Binutils包中提供了一个](../Page/GNU_Binutils.md "wikilink")`nm`的实现。[`objdump`](https://zh.wikipedia.org/wiki/objdump "wikilink")`  -t `和[`readelf`](https://zh.wikipedia.org/wiki/readelf "wikilink")`  -s `也可以查看目标文件的符号表。

## nm输出样例

下面的例子展示了变量和函数在[全局](../Page/全局变量.md "wikilink")、[局部](https://zh.wikipedia.org/wiki/局部变量 "wikilink")、[外部](../Page/外部变量.md "wikilink")、[静态](../Page/静态变量.md "wikilink")、[自动和](../Page/自动变量.md "wikilink")[初始化](../Page/初始化.md "wikilink")的不同情况下的不同符号类型。

``` c
/*
 * 文件名: test.c
 * 对于C代码如下编译：
 * gcc -c test.c
 *
 * 对于C++代码如下编译：
 * g++ -c test.cpp
 */

int global_var;
int global_var_init = 26;

static int static_var;
static int static_var_init = 25;

extern int extern_var;
extern int extern_function(int);

static int static_function(int x, int y)
{
    int local_automatic_var;

    local_automatic_var = x + y;
    return local_automatic_var;
}

int global_function(int p)
{
    static int local_static_var;
    static int local_static_var_init=5;

    local_static_var = static_function(local_static_var_init, p);
    return local_static_var;
}

int main(int argc, char** argv)
{
    static_var = 1;

    global_var = global_function(2);
    extern_var = extern_function(3);
    return 0;
}

#ifdef __cplusplus
extern "C"
#endif
void non_mangled_function(void)
{
    // I do nothing
}
```

如果上述代码使用了[gcc](https://zh.wikipedia.org/wiki/gcc "wikilink") C编译器来编译，`nm`命令的输出将是如下这样：

``` console
$ nm test.o
                 U extern_function
                 U extern_var
000000000000001a T global_function
                 U _GLOBAL_OFFSET_TABLE_
0000000000000004 C global_var
0000000000000000 D global_var_init
0000000000000004 b local_static_var.1970
0000000000000008 d local_static_var_init.1971
000000000000004c T main
0000000000000045 T non_mangled_function
0000000000000000 t static_function
0000000000000000 b static_var
0000000000000004 d static_var_init
```

默认按符号字母序排序，其中，大写字母表示全局性，小写字母表示局部性；U表示此符号未定义，C表示此符号是公共的，T/t表示此符号在正文（代码）段中，D/d的表示此符号在初始化数据段中，B/b表示此符号在BSS数据段中。

在使用了C++编译器时，输出是不同的：

``` console
$ nm test.o
                 U extern_var
                 U _GLOBAL_OFFSET_TABLE_
0000000000000000 B global_var
0000000000000000 D global_var_init
000000000000004c T main
0000000000000045 T non_mangled_function
                 U _Z15extern_functioni
000000000000001a T _Z15global_functioni
0000000000000004 b _ZL10static_var
0000000000000000 t _ZL15static_functionii
0000000000000004 d _ZL15static_var_init
0000000000000008 b _ZZ15global_functioniE16local_static_var
0000000000000008 d _ZZ15global_functioniE21local_static_var_init
```

在二者输出之间的不同还展示了通过在C++代码中使用[extern "C"解决名称修饰问题的一个例子](https://zh.wikipedia.org/wiki/extern_"C" "wikilink")。

## 参见

  - [objdump](https://zh.wikipedia.org/wiki/objdump "wikilink")
  - [readelf](https://zh.wikipedia.org/wiki/readelf "wikilink")

## 外部链接

  -
[Category:Unix编程工具](https://zh.wikipedia.org/wiki/Category:Unix编程工具 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")