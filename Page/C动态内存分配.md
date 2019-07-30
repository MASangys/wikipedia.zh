**C动态内存分配**是在[C语言中为了实现](https://zh.wikipedia.org/wiki/C语言 "wikilink")[动态内存分配](../Page/动态内存分配.md "wikilink")而进行的。这种管理是通过[C標準函式庫](../Page/C標準函式庫.md "wikilink")中的 `malloc`、`realloc`、`calloc`、`free` 等函数进行的。\[1\]\[2\]

[C++](../Page/C++.md "wikilink") 为了兼容 C 语言也提供这些函数，但是更推荐使用 `new`、`delete` 操作符来完成类似的操作。\[3\]

`malloc` 所实际使用的内存分配机制有很多不同的实现，执行时间和内存消耗各有不同。

## 函数概述

C 动态内存分配函数在头文件 `stdlib.h` 中声明（C++ 中对应的头文件名称为 `cstdlib`）。\[4\]

| 函数        | 描述                  |
| --------- | ------------------- |
| `malloc`  | 分配指定数量的字节           |
| `realloc` | 调整指定内存块的大小，必要时会重新分配 |
| `calloc`  | 分配指定数量的字节，并初始化为 0   |
| `free`    | 释放指定的内存块            |

## 类型安全

`malloc` 所执行的内存分配基于字节数而不是类型，其返回类型为 void 指针（`void *`），表示该指针所指向区域的[数据类型未知](https://zh.wikipedia.org/wiki/数据类型 "wikilink")。C++ 由于其强类型系统，实际使用该指针时需要进行强制类型转换，而 C 语言中则不必进行。

``` c
int * ptr;
ptr = malloc(10 * sizeof(int));     /* 不进行强制类型转换 */
ptr = (int *)malloc(10 * sizeof(int));  /* 进行强制类型转换 */
```

## 另见

  - [缓冲区溢出](../Page/缓冲区溢出.md "wikilink")
  - [記憶體保護](https://zh.wikipedia.org/wiki/記憶體保護 "wikilink")
  - [可变长数组](../Page/可变长数组.md "wikilink")

## 参考资料

[Category:記憶體管理](https://zh.wikipedia.org/wiki/Category:記憶體管理 "wikilink") [Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink") [Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")

1.

2.

3.

4.