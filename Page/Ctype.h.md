**`ctype.h`**是[C標準函数庫中的](https://zh.wikipedia.org/wiki/C標準函数庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，定义了一批[C语言字符分类函数](https://zh.wikipedia.org/wiki/C语言 "wikilink")（C character classification functions），用于测试字符是否属于特定的字符类别，如字母字符、控制字符等等。既支持单字节字符，也支持[宽字符](https://zh.wikipedia.org/wiki/宽字符 "wikilink")。\[1\]

## 实现

现代的C库中，字符分类函数一般不用比较测试（comparison tests）实现，而是静态查表来实现。

例如，创建一个由256个8位宽整数组成的数组，每个整数的每位对应字符的特定的分类性质，如属于数字、属于字母等等。如果最低位表示属于数字性质，那么可以写成如下代码：

``` c
#define isdigit(x) (TABLE[x] & 1)
```

早期版本的[Linux](../Page/Linux.md "wikilink")使用了潜在犯错的方法，类似于：

``` c
#define isdigit(x) ((x) >= '0' && (x) <= '9')
```

这会产生问题，如宏参数`x`具有[副作用](../Page/函数副作用.md "wikilink")---例如，如果调用`isdigit(x++)`或`isdigit(run_some_program())`，可能不是很显然，`isdigit`的参数将被求值两次。所以，查表的方法被广泛使用。

## 函数

单字节字符处理函数在`ctype.h`(C++的`cctype` )中声明。宽字节字符处理函数在`wctype.h`(C++的`cwctype`)中声明.

<table>
<thead>
<tr class="header">
<th><p>单字节</p></th>
<th><p>宽字节</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isalnum"><code>isalnum</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswalnum"><code>iswalnum</code></a></p></td>
<td><p>是否为字母数字</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isalpha"><code>isalpha</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswalpha"><code>iswalpha</code></a></p></td>
<td><p>是否为字母</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/islower"><code>islower</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswlower"><code>iswlower</code></a></p></td>
<td><p>是否为小写字母</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isupper"><code>isupper</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswupper"><code>iswupper</code></a></p></td>
<td><p>是否为大写字母</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isdigit"><code>isdigit</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswdigit"><code>iswdigit</code></a></p></td>
<td><p>是否为数字</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isxdigit"><code>isxdigit</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswxdigit"><code>iswxdigit</code></a></p></td>
<td><p>是否为16进制数字</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/iscntrl"><code>iscntrl</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswcntrl"><code>iswcntrl</code></a></p></td>
<td><p>是否为控制字符</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isgraph"><code>isgraph</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswgraph"><code>iswgraph</code></a></p></td>
<td><p>是否为图形字符（例如，空格、控制字符都不是）</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isspace"><code>isspace</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswspace"><code>iswspace</code></a></p></td>
<td><p>是否为<a href="https://zh.wikipedia.org/wiki/空格字符" title="wikilink">空格字符</a>（包括制表符、回车符、换行符等）</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isblank"><code>isblank</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswblank"><code>iswblank</code></a></p></td>
<td><p>是否为<a href="https://zh.wikipedia.org/wiki/空白字符" title="wikilink">空白字符</a> (<a href="https://zh.wikipedia.org/wiki/C99" title="wikilink">C99</a>/<a href="../Page/C++11.md" title="wikilink">C++11</a>新增)（包括水平制表符）</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/isprint"><code>isprint</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswprint"><code>iswprint</code></a></p></td>
<td><p>是否为可打印字符</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/ispunct"><code>ispunct</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswpunct"><code>iswpunct</code></a></p></td>
<td><p>是否为标点</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/tolower"><code>tolower</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/towlower"><code>towlower</code></a></p></td>
<td><p>转换为小写</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/string/byte/toupper"><code>toupper</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/towupper"><code>towupper</code></a></p></td>
<td><p>转换为大写</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/iswctype"><code>iswctype</code></a></p></td>
<td><p>检查一个<code>wchar_t</code>是否是属于指定的分类</p></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/towctrans"><code>towctrans</code></a></p></td>
<td><p>使用指定的变换映射来转换一个<code>wchar_t</code>（实际上是大小写的转换）</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/wctype"><code>wctype</code></a></p></td>
<td><p>返回一个宽字符的类别，用于<code>iswctype</code>函数</p></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="http://en.cppreference.com/w/c/string/wide/wctrans"><code>wctrans</code></a></p></td>
<td><p>返回一个变换映射，用于 <code>towctrans</code></p></td>
</tr>
</tbody>
</table>

## 参考文献

## 外部链接

[Category:C标准库头文件](https://zh.wikipedia.org/wiki/Category:C标准库头文件 "wikilink")

1.