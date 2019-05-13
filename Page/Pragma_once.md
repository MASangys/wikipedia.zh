在[C和](../Page/C語言.md "wikilink")[C++程式語言中](../Page/C++.md "wikilink")，**\#pragma
once**是一個非標準但是被廣泛支援的[前置處理符號](../Page/前置處理.md "wikilink")，會讓所在的檔案在一個單獨的編譯中只被包含一次。以此方式，`#pragma
once`提供類似[include防範的目的](../Page/include防範.md "wikilink")，但是擁有較少的程式碼且能避免名稱的碰撞。

## 示例

請參考[include防範裡其中一種狀況的範例或其他的使用方法](../Page/include防範.md "wikilink")。如下：

  - grandparent.h

<!-- end list -->

``` cpp
#pragma once

struct foo
{
    int member;
};
```

  - parent.h

<!-- end list -->

``` cpp
#include "grandparent.h"
```

  - child.c

<!-- end list -->

``` cpp
#include "grandparent.h"
#include "parent.h"
```

## 優缺點

使用`#pragma
once`代替include防範將加快編譯速度，因為這是一種高階的機制；[編譯器會自動比對檔案名稱或](../Page/編譯器.md "wikilink")[inode而不需要在](../Page/inode.md "wikilink")[標頭檔去判斷](../Page/標頭檔.md "wikilink")`#ifndef`和`#endif`。

另一方面，部份編譯器，例如[GCC](../Page/GCC.md "wikilink")、[clang等](../Page/clang.md "wikilink")，也包含特別的程式碼來識別和有效率的管理include防範。因此使用`#pragma
once`并不会得到明显的加速。\[1\]\[2\]\[3\]

此外，因為編譯器自己必須承擔管理`#pragma
once`，它不必定義新的指令名稱，例如在[include防範文章範例的](../Page/include防範.md "wikilink")`H_GRANDFATHER`。這能排除名稱碰撞的風險，意思就是至少第一次包含標頭檔不會再有**錯誤**。

然而，這種高階的管理有好也有壞；設計者必須依賴編譯器正確的管理`#pragma
once`。編譯器如果犯錯，例如沒有辨認出在相同檔案中的兩個不同[符號連結名稱指標](../Page/符號連結.md "wikilink")，此時編譯會錯誤。編譯器對於`#pragma
once`可能包含相關的臭蟲[LCC-Win32](../Page/LCC-Win32.md "wikilink")
2004年[1](http://groups.google.com/groups?selm=bvjqhn$q5o$1@news-reader1.wanadoo.fr)\[[http://groups.google.com/groups?selm=488cbfe1.0304061213.264d94d@posting.google.com\]和GCC](http://groups.google.com/groups?selm=488cbfe1.0304061213.264d94d@posting.google.com%5D和GCC)
1998年。\[[http://gcc.gnu.org/onlinedocs/gcc-2.95.3/cpp_1.html\#SEC8\]2005年，GCC文件中將](http://gcc.gnu.org/onlinedocs/gcc-2.95.3/cpp_1.html#SEC8%5D2005年，GCC文件中將)`#pragma
once`列為「已淘汰」的特性。\[[http://gcc.gnu.org/onlinedocs/gcc-4.0.3/cpp/Obsolete-once_002donly-headers.html\#Obsolete-once_002donly-headers\]随着gcc](http://gcc.gnu.org/onlinedocs/gcc-4.0.3/cpp/Obsolete-once_002donly-headers.html#Obsolete-once_002donly-headers%5D随着gcc)
3.4的发布，gcc解决了\#pragma once中的一些问题（主要是跟符号链接和硬链接有关），并且去掉了\#pragma
once的“已淘汰”的标签。[2](http://gcc.gnu.org/gcc-3.4/changes.html)

## 编译器支持

| Compiler                                                             | \#pragma once         |
| -------------------------------------------------------------------- | --------------------- |
| [Clang](../Page/Clang.md "wikilink")                                 | 支持\[4\]               |
| [Comeau C/C++](../Page/Comeau_C/C++.md "wikilink")                   | 支持\[5\]               |
| [C++Builder XE Seattle](../Page/C++Builder_XE_Seattle.md "wikilink") | 支持\[6\]               |
| [Digital Mars C++](../Page/Digital_Mars_C++.md "wikilink")           | 支持\[7\]               |
| [GCC](../Page/GNU_Compiler_Collection.md "wikilink")                 | 支持\[8\]（3.4版本以后\[9\]） |
| [Intel C++編譯器](../Page/Intel_C++編譯器.md "wikilink")                   | 支持\[10\]              |
| [Microsoft Visual C++](../Page/Microsoft_Visual_C++.md "wikilink")   | 支持\[11\]              |
| [Pelles C](../Page/Pelles_C.md "wikilink")                           | 支持\[12\]              |
| [IAR C/C++](../Page/IAR_C/C++.md "wikilink")                         | 支持\[13\]              |

## 参考文献

## 外部連結

  - <https://web.archive.org/web/20070317022009/http://msdn.microsoft.com/library/en-us/vclang/html/_PREDIR_Pragma_Directives.asp>

[Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink")
[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")
[Category:C頭文件](https://zh.wikipedia.org/wiki/Category:C頭文件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12. IDE help/documentation
13.