**tr**是一个[类Unix操作系统中的命令](https://zh.wikipedia.org/wiki/类Unix "wikilink")。它是*translate*或*transliterate*的缩写，表示替换或删除输入数据集中特定字符。

该程序从其[标准输入中读取一个字节流](https://zh.wikipedia.org/wiki/标准输入 "wikilink")，并将结果写入[标准输出](https://zh.wikipedia.org/wiki/标准输出 "wikilink")。[参数需要两组字符](https://zh.wikipedia.org/wiki/命令行选项 "wikilink")（通常长度相同），并用第二组中的相应元素替换第一组中的字符。例如，

`tr 'abcd' 'jkmn'`

将*a*映射到*j*，*b*到*k*，*c*到*m*，*d*到''n。

字符集可以使用字符范围缩写。前面的例子可以写成：

`tr 'a-d' 'jkmn'`

在兼容[POSIX标准的tr版本中](https://zh.wikipedia.org/wiki/POSIX "wikilink")，字符范围集合取决于[语言环境的](https://zh.wikipedia.org/wiki/语言环境 "wikilink")[排序顺序](https://zh.wikipedia.org/wiki/排序顺序 "wikilink")，所以在脚本中避免使用字符范围可能更安全，因为脚本可能会在与编写时不同的语言环境下执行。范围通常可以用[POSIX字符集替换](https://zh.wikipedia.org/wiki/POSIX "wikilink")，例如*\[:alpha:\]*。

*s*标志使tr将其输出中相同相邻字符的序列压缩为单个字符。例如，

`tr -s '\n'`

用一个换行符替换连续的一个或多个换行符。

*d*标志使tr从其输入中删除指定的一组字符。在这种情况下，只使用单个字符集参数。以下命令删除回车符。

`tr -d '\r'`

*c*标志表示第一组字符的补。调用

`tr -cd '[:alnum:]'`

会删除所有非字母或数字字符。

tr的大多数版本，包括GNU tr和经典的Unix
tr，都以单字节字符操作，不兼容[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")。[Heirloom
Toolchest的实现是个例外](https://zh.wikipedia.org/wiki/Heirloom_Project "wikilink")，它提供了基本的Unicode支持。

[Ruby和](../Page/Ruby.md "wikilink")[Perl也有一个内置的](../Page/Perl.md "wikilink")*tr*操作符，使用方法类似\[1\]\[2\]。[Tcl的](../Page/Tcl.md "wikilink")*string
map*命令更加通用，因为它将字符串映射到字符串，而tr将字符映射到字符\[3\]。

## 参见

  - [Sed](../Page/Sed.md "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [GNU核心工具组](../Page/GNU核心工具组.md "wikilink")

## 参考

## 外部链接

  -
  - [tr(1)](http://man.cat-v.org/unix_8th/1/tr) - Unix 8th Edition手册页。

  -
  -
  -
  - [examplenow.com上的使用示例](http://www.examplenow.com/tr)

[Category:Unix文字处理实用工具](https://zh.wikipedia.org/wiki/Category:Unix文字处理实用工具 "wikilink")
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")

1.
2.
3.