**locale.h**是[C程序设计语言](https://zh.wikipedia.org/wiki/C程序设计语言 "wikilink")[标准函数库的一个](https://zh.wikipedia.org/wiki/C標準函數庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，声明了**C语言[本地化函数](https://zh.wikipedia.org/wiki/本地化 "wikilink")**。\[1\]\[2\] 这些函数用于在处理多种自然语言的软件编程设计时，把程序调整到特定的[区域设置](../Page/区域设置.md "wikilink"). 这些区域设置影响到C语言标准库的[输入/输出函数](https://zh.wikipedia.org/wiki/stdio.h "wikilink").

## 所包含的函数

C语言本地化函数与数据类型定义在`locale.h` (`clocale`头文件用于C++).\[3\]

<table>
<thead>
<tr class="header">
<th><p>Function</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/locale/setlocale"><code>setlocale</code></a></p></td>
<td><p>设置与读取当前C locale</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/locale/localeconv"><code>localeconv</code></a></p></td>
<td><p>返回当前locale的货币与数值的格式细节</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 批评

C语言标准中定义的区域设置函数的最大问题是，区域设置状态是全局的。这意味着一个程序在一个时刻只能有一个locale设置。实现程序同时具有多个locale是非常困难的。\[4\]

[Visual C++运行时刻库定义了函数](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")`_configthreadlocale`\[5\]，可以打开或者关闭[线程](../Page/线程.md "wikilink")相关区域设置（thread-specific locale）。另外一个运行时刻库函数`_setmbcp`，在线程中创建限于本线程使用的区域设置数据结构。此后，就可以在该线程使用setlocale标准库函数了。但此种方法仅限于Windows平台。

## 例子

``` cpp
#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(void)
{
    /* Locale is set to "C" before this. This call sets it
       to the "current locale" by reading environment variables: */
    setlocale(LC_ALL, "");

    const struct lconv * const currentlocale = localeconv();

    printf("In the current locale, the default currency symbol is: %s\n",
        currentlocale->currency_symbol);

    return EXIT_SUCCESS;
}
```

## 参考文献

  - [glibc中定义的各种locale的列表，包括了各种细节](http://lh.2xlibre.net/)

[Category:C标准函式库](https://zh.wikipedia.org/wiki/Category:C标准函式库 "wikilink")

1.
2.
3.
4.
5.  [Microsoft的MSDN上的相关帮助文章](http://msdn.microsoft.com/en-us/library/26c0tb7x%28v=vs.100%29.aspx)