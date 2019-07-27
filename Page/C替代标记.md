**C替代标记**指一批[C语言常见运算符的可选拼写](https://zh.wikipedia.org/wiki/C语言 "wikilink")。它们实现为[C標準函式庫](../Page/C標準函式庫.md "wikilink")中`iso646.h`头文件内的一组宏定义。此标记作为[C90标准的修正案于](https://zh.wikipedia.org/wiki/ANSI_C#C90 "wikilink")1995年增补。

替代标记允许程序员使用[C语言按位和逻辑](https://zh.wikipedia.org/wiki/C语言 "wikilink")，原先的标记在一些[国际和非](https://zh.wikipedia.org/wiki/国际 "wikilink")[QWERTY键盘上很难输入](https://zh.wikipedia.org/wiki/QWERTY "wikilink")。根据[ISO/IEC
646标准实现的头文件有一些区域性的变化](https://zh.wikipedia.org/wiki/ISO/IEC_646 "wikilink")，其中一些用重音字符替换了C运算符使用的标点符号。

## 宏定义

在`iso646.h`中定义了11个宏：

| style="padding-left:1em;padding-right:1em" | 宏 | 定义为            |
| ---------------------------------------------- | -------------- |
| `and`                                          | `&&`           |
| `and_eq`                                       | `&=`           |
| `bitand`                                       | `&`            |
| `bitor`                                        | `\|`           |
| `compl`                                        | `~`            |
| `not`                                          | `!`            |
| `not_eq`                                       | `!=`           |
| `or`                                           | <code><nowiki> |
| `or_eq`                                        | `\|=`          |
| `xor`                                          | `^`            |
| `xor_eq`                                       | `^=`           |

## C++

以上标识符全部是[运算符关键字](https://zh.wikipedia.org/wiki/C和C%2B%2B運算子 "wikilink")，因此不需要再包含头文件。为了兼容C语言，[C++98标准提供了头文件](https://zh.wikipedia.org/wiki/C++98 "wikilink")<ciso646>，但实际上这是个空文件\[1\]。然而在[Microsoft
Visual
C++等编译器中](../Page/Microsoft_Visual_C++.md "wikilink")，如果使用这些运算符关键字，就必须包含头文件。

## 头文件名称来源

`iso646.h`的名称来源于意图兼容基于[ISO/IEC
646字符集的键盘](https://zh.wikipedia.org/wiki/ISO/IEC_646 "wikilink")。ISO
646是1972年颁布的一项国际化的7位ASCII标准，规定了12个字符所对应的[码位保持对各国标准开放](https://zh.wikipedia.org/wiki/码位 "wikilink")：``#
$ @ [ \ ] ^ ` { | } ~`` 。

因此法国标准AFNOR NF Z 62010-1982把码位0x7c（ASCII码的 | ）定义为ù，用法文键盘就难以输入C语言的*位或运算符*
| ；码位0x7e（ASCII码的 \~）定义为 ¨
（即[分音符](../Page/分音符.md "wikilink")），法文键盘就难以输入C语言的*位非运算符*
～ 。

加拿大法语标准CSA Z243.4-1985中把码位0x5e（ASCII码的 ^ ）在定义为É，导致难以输入C语言的*异或运算符* ^ 。

为解决上述的C语言源代码输入问题，C语言预处理器（C
preprocessor）在扫描处理源文件时，使用三字符组替换为单个字符的办法。三字符组替换方法的可读性显然不如使用`and、not`等关键字。

## 参见

  - [C中的三字符组与双字符组](https://zh.wikipedia.org/wiki/三字符组与双字符组#C "wikilink")

## 参考

## 外部链接

  -
[Category:C语言](https://zh.wikipedia.org/wiki/Category:C语言 "wikilink")

1.