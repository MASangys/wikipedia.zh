**cmp**是[Unix及](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")[计算机系统上使用的](https://zh.wikipedia.org/wiki/计算机 "wikilink")[命令行实用程序](https://zh.wikipedia.org/wiki/命令行 "wikilink")。它能比较两个任何类型的[文件](https://zh.wikipedia.org/wiki/文件 "wikilink")，并将结果写入[标准输出](https://zh.wikipedia.org/wiki/标准输出 "wikilink")。默认情况下，如果文件相同，cmp没有任何输出；如果不同，则报告第一处不同所在的[字节](../Page/字节.md "wikilink")和行号。

## 开关

可以通过使用[命令行开关来指定cmp的行为](https://zh.wikipedia.org/wiki/命令行选项 "wikilink")。[GNU](../Page/GNU.md "wikilink")版本的cmp支持的开关有：

  - `-b, --print-bytes` : 打印出内容相异的字节。
    `-i SKIP, --ignore-initial=SKIP` : 略过输入内容的前SKIP字节。
    `-i SKIP1:SKIP2, --ignore-initial=SKIP1:SKIP2` : 略过FILE1的前SKIP1个字节和文件FILE2的前SKIP2个字节。
    `-l, --verbose` : 输出所有不同字节的（十进制）字节数和（八进制）值，而不是默认的标准输出。另外，如果一个文件比另一个短，则输出EOF消息。
    `-n LIMIT, --bytes=LIMIT` : 最多比较LIMIT个字节。
    `-s, --quiet, --silent` : 什么都不输出；仅生成返回状态。
    `-v, --version` : 显示版本信息。
    `--help` : 显示帮助信息。

用于计数字节的操作数通常以十进制表示，要表示八进制数，可以在数字前加“`0`”，十六进制数则是“`0x`”。

字节计数后可跟一个后缀以指定该计数的倍数；在这种情况下，省略数字部分则表示1。单独一个词头字母，或后跟“`iB`”，指定使用1024的幂。词头字母后跟“”指定1000的幂。例如，“`-n 4M`”和“`-n 4MiB`”相当于“`-n 4194304`”，而“`-n 4MB`”相当于“`-n 4000000`”。词头与十进制倍数的国际单位制词头\[1\]或二进制倍数的IEC 60027-2词头\[2\]兼容。

## 返回值

  - 0 — 文件相同
  - 1 — 文件不同
  - 2 — 无法访问或缺少参数

## 参见

  - [文件比较工具比较](https://zh.wikipedia.org/wiki/文件比较工具比较 "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

## 参考

## 外部链接

  -
  - [*Comparing and Merging Files*: Invoking cmp](https://www.gnu.org/software/diffutils/manual/html_node/Invoking-cmp.html) The section of the manual of GNU cmp in the [diffutils](https://zh.wikipedia.org/wiki/diffutils "wikilink") [free manual](https://zh.wikipedia.org/wiki/free_manual "wikilink").

[Category:自由文件比较工具](https://zh.wikipedia.org/wiki/Category:自由文件比较工具 "wikilink") [Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")

1.  <http://www.bipm.fr/enus/3_SI/si-prefixes.html>
2.  <http://physics.nist.gov/cuu/Units/binary.html>