**GNU多重精度运算库**（，简称**GMP**或gmpal）是一个[开源的任意精度运算库](https://zh.wikipedia.org/wiki/开源 "wikilink")，支持正负数的[整数](../Page/整数.md "wikilink")、[有理数](../Page/有理数.md "wikilink")、[浮点数](../Page/浮点数.md "wikilink")。它没有任何精度限制，只受限于可用内存。GMP有很多函数，它们都有一个规则的接口。它是C语言写成的，但用为其他很多语言做包装，包括[Ada](../Page/Ada.md "wikilink")，[C++](../Page/C++.md "wikilink")，[C\#](../Page/C♯.md "wikilink")，[OCaml](../Page/OCaml.md "wikilink")，[Perl](../Page/Perl.md "wikilink")，[PHP](../Page/PHP.md "wikilink")，[python](https://zh.wikipedia.org/wiki/python "wikilink")
和
[R](../Page/R.md "wikilink")。GMP主要运用于加密应用和研究、互联网安全应用、[计算机代数系统和计算代数研究](https://zh.wikipedia.org/wiki/计算机代数系统 "wikilink")。GMP的目标是成为最快的大数运算库，GMP是[GNU项目的一部分](../Page/GNU.md "wikilink")，它在[GNU宽通用公共许可证下发表](../Page/GNU宽通用公共许可证.md "wikilink")。GMP在许多计算机辅助代数系统中用于整数运算，如[Mathematica和](https://zh.wikipedia.org/wiki/Mathematica "wikilink")[Maple](../Page/Maple.md "wikilink")。GMP需要使用[GCC](../Page/GCC.md "wikilink")（[GNU编译器套装](../Page/GNU.md "wikilink")）编译。

## 示例

这是一个C语言示例，它展示了如何使用GMP做乘法运算并输出。

``` C
#include <stdio.h>
#include <stdlib.h>
#include <gmp.h>

int main(void)
{
 mpz_t x;
 mpz_t y;
 mpz_t result;

 mpz_init(x);
 mpz_init(y);
 mpz_init(result);

 mpz_set_str(x, "7612058254738945", 10);
 mpz_set_str(y, "9263591128439081", 10);

 mpz_mul(result, x, y);
 gmp_printf("\n    %Zd\n*\n    %Zd\n--------------------\n%Zd\n\n", x, y, result);

 /* free used memory释放内存*/
 mpz_clear(x);
 mpz_clear(y);
 mpz_clear(result);
 return EXIT_SUCCESS;
}
```

这段代码计算7612058254738945和9263591128439081的乘积。

编译运行，获得这样的输出：（在UNIX类系统上，需要 -lgmp）

``` text

    7612058254738945
*
    9263591128439081
--------------------
70514995317761165008628990709545
```

我们可以使用C++完成相同的运算。（如果在类Unix系统下编译，需要使用 -lgmpxx -lgmp）

``` cpp
#include <iostream>
#include <gmpxx.h>

int main()
{
  mpz_class x("7612058254738945");
  mpz_class y("9263591128439081");

  std::cout << "\n    " << x << "\n*\n    " << y;
  std::cout << "\n--------------------\n" << x * y << "\n\n";
}
```

## 语言支持

<table>
<thead>
<tr class="header">
<th><p>Library name</p></th>
<th><p>语言</p></th>
<th><p>许可证</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="http://gmplib.org/">GNU Multi-Precision Library</a></p></td>
<td><p><a href="../Page/C.md" title="wikilink">C</a>, <a href="../Page/C++.md" title="wikilink">C++</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GNU_Lesser_General_Public_License" title="wikilink">LGPL</a></p></td>
</tr>
<tr class="even">
<td><p><a href="http://search.cpan.org/~chipt/Math-GMP/lib/Math/GMP.pm">Math::GMP</a></p></td>
<td><p><a href="../Page/Perl.md" title="wikilink">Perl</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://web.archive.org/web/20130225114124/http://www.emilstefanov.net/Projects/GnuMpDotNet/">GNU Multi-Precision Library for .NET</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C_sharp" title="wikilink">C#</a>, <a href="https://zh.wikipedia.org/wiki/.NET" title="wikilink">.NET</a></p></td>
<td><p>LGPL</p></td>
</tr>
<tr class="even">
<td><p><a href="http://www.aleax.it/gmpy.html">General Multiprecision Python Project</a></p></td>
<td><p><a href="../Page/Python.md" title="wikilink">Python</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://rubygems.org/gems/gmp">The RubyGems project</a></p></td>
<td><p><a href="../Page/Ruby.md" title="wikilink">Ruby</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://php.net/gmp">GNU Multi-Precision Library for PHP</a></p></td>
<td><p><a href="../Page/PHP.md" title="wikilink">PHP</a></p></td>
<td><p><a href="../Page/PHP许可证.md" title="wikilink">PHP</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.math.uni.wroc.pl/~hebisch/prog/">GNU Multi-Precision Routines for SBCL</a></p></td>
<td><p><a href="../Page/Common_Lisp.md" title="wikilink">Common Lisp</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://chgmp.sourceforge.net/">Ch GMP</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Ch" title="wikilink">Ch</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Glasgow_Haskell_Compiler" title="wikilink">Glasgow Haskell Compiler</a><br />
<small>(The implementation of <code>Integer</code><br />
is basically a binding to GMP)</small></p></td>
<td><p><a href="../Page/Haskell.md" title="wikilink">Haskell</a></p></td>
<td><p><a href="../Page/BSD许可证.md" title="wikilink">BSD</a></p></td>
</tr>
</tbody>
</table>

## 参考资料

## 外部链接

  - [gmplib官方主页](http://gmplib.org/)

[Category:数学软件](https://zh.wikipedia.org/wiki/Category:数学软件 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")