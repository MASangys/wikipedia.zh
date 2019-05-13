在[计算领域中](https://zh.wikipedia.org/wiki/计算 "wikilink")，**Shebang**（也称为
**Hashbang**
）是一个由[井号和](https://zh.wikipedia.org/wiki/井号 "wikilink")[叹号构成的字符序列](../Page/叹号.md "wikilink")
*`#!`* ，其出现在文本文件的第一行的前两个字符。 在文件中存在 Shebang 的情况下，[类 Unix
操作系统的](https://zh.wikipedia.org/wiki/类Unix操作系统 "wikilink")[程序载入器会分析](https://zh.wikipedia.org/wiki/程序载入器 "wikilink")
Shebang 后的内容，将这些内容作为解释器指令，并调用该指令，并将载有 Shebang 的文件路径作为该解释器的参数\[1\]。

例如，以指令开头的文件在执行时会实际调用*/bin/sh*程序（通常是 [Bourne
shell](../Page/Bourne_shell.md "wikilink") 或兼容的
[shell](../Page/Unix_shell.md "wikilink")，例如
[bash](../Page/bash.md "wikilink")、[dash](https://zh.wikipedia.org/wiki/dash "wikilink")
等）来执行。这行内容也是 [shell
脚本的标准起始行](https://zh.wikipedia.org/wiki/shell脚本 "wikilink")。

由于 `#` 符号在许多[脚本语言中都是注释标识符](../Page/脚本语言.md "wikilink")，Shebang
的内容会被这些脚本解释器自动忽略。 在 `#` 字符不是注释标识符的语言中，例如
[Scheme](../Page/Scheme.md "wikilink")，解释器也可能忽略以 `#!` 开头的首行内容，以提供与
Shebang 的兼容性\[2\]。

"Shebang" 或者说 "Hashbang" 的名字有时也被当做 [Ajax](../Page/Ajax.md "wikilink")
应用程序中的
[分段标识符](https://zh.wikipedia.org/wiki/分段标识符 "wikilink")，用于浏览器的状态保存；Google
网站站长中心提到，以[叹号开头的分段标识符](../Page/叹号.md "wikilink")（即 ...url\#\!state...
）会为 Google 的网页爬虫所索引。

## 语法

Shebang 这一语法特性由 `#!`
开头，即[井号和](https://zh.wikipedia.org/wiki/井号 "wikilink")[叹号](../Page/叹号.md "wikilink")。
在开头字符之后，可以有一个或数个空白字符，后接解释器的[绝对路径](https://zh.wikipedia.org/wiki/绝对路径 "wikilink")，用于调用解释器。
在直接调用脚本时，调用者会利用 Shebang 提供的信息调用相应的解释器，从而使得脚本文件的调用方式与普通的可执行文件类似。

## 词源与历史

Shebang 的名字来自于 [SHArp](https://zh.wikipedia.org/wiki/升音符 "wikilink") 和
[bang](../Page/叹号.md "wikilink")，或 *haSH bang*
的[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")，指代 Shebang 中
`#!` 两个符号的典型 Unix 名称。 Unix 术语中，井号通常称为 *sharp*，*hash* 或 *mesh*；而叹号则常常称为
*bang*。也有看法认为，shebang 名字中的 *sh*
来自于默认[shell](../Page/Unix_shell.md "wikilink") [Bourne
shell](../Page/Bourne_shell.md "wikilink") 的名称，`sh`，因为常常使用 shebang
调用之。\[3\]

在2010年版的 [Advanced bash scripting
guide](http://tldp.org/LDP/abs/html/)（revision 6.2）中，shebang 被称为
"sha-bang"，同时提到"也写作 she-bang 或 sh-bang"，但该文件中没有提到 "shebang" 这一形式。

[丹尼斯·里奇在被问及他会如何称呼这一特性时](../Page/丹尼斯·里奇.md "wikilink")，他答道：

## 例子

下面列出了一些典型的 shebang 解释器指令：

  - `#!/bin/sh`—使用 `sh`，即 [Bourne
    shell](../Page/Bourne_shell.md "wikilink") 或其它兼容 shell 执行脚本
  - `#!/bin/csh`—使用 `csh`，即 [C shell](../Page/C_shell.md "wikilink") 执行
  - `#!/usr/bin/perl -w`—使用带警告的 [Perl](../Page/Perl.md "wikilink") 执行
  - `#!/usr/bin/python -O`—使用具有代码优化的
    [Python](../Page/Python.md "wikilink") 执行
  - `#!/usr/bin/php`—使用 [PHP](../Page/PHP.md "wikilink") 的命令行解释器执行

在许多系统上，`/bin/sh` 是[链接到](https://zh.wikipedia.org/wiki/链接 "wikilink")
[Bash](../Page/Bash.md "wikilink") 的，而 `/bin/csh` 则是链接到
[tcsh](../Page/tcsh.md "wikilink") 的，因此设定前面的解释器实际上是运行的与之兼容的，或改进的版本。

Shebang 行也可以包含需要传递到解释器的特定选项（见下文的 Perl 例子）。然而，选项传递的方式随实现的不同而不同。

## 用途

解释器指令允许脚本和数据文件充当系统命令，无需在调用时由用户指定解释器，从而对用户和其它程序隐藏其实现细节。

假设 `/usr/local/bin/foo` 中有一以下行开头的 [Bourne
shell](../Page/Bourne_shell.md "wikilink") 脚本

`#!/bin/sh -x`

而它被如此调用（"$"是命令提示符）

`$ foo bar`

该命令的输出等同于

`$ /bin/sh -x /usr/local/bin/foo bar`

除了 argv\[0\] 被设定为脚本的文件名，而非解释器的文件名外。

由于 `sh` 从其命令行指定的文件中读取命令，上面的命令就会执行 `/usr/local/bin/foo` 中的命令，同时，将
`bar`作为`foo` 命令的参数 `$1`。

由于shebang开头的井号也是[Bourne
shell和许多其它解释性语言的注释符](../Page/Bourne_shell.md "wikilink")，因此在这些语言中，解释器指令本身会被解释器认为是单纯的注释而跳过。
然而，并不是每一种解释器都会自动忽略shebang行，例如对于下面的脚本，

`#!/bin/cat`
`Hello world!`

`cat`
会把文件中的两行都输出到[标准输出中](https://zh.wikipedia.org/wiki/标准输出 "wikilink")。

使用`#!/usr/bin/env 脚本解释器名称` 是一种常见的在不同平台上都能正确找到解释器的办法。

Linux的操作系统的文件一般是UTF-8编码。如果脚本文件是以 UTF-8 的
[`BOM`](https://zh.wikipedia.org/wiki/字节顺序标记 "wikilink")`（0xEF 0xBB 0xBF）`
开头的，那么 exec 函数将不会启动 shebang 指定的解释器来执行该脚本。因此，Linux 的脚本文件不应在文件开头包含 UTF-8 的
[BOM](https://zh.wikipedia.org/wiki/字节顺序标记 "wikilink")。

## 参见

  - [CrunchBang
    Linux](https://zh.wikipedia.org/wiki/CrunchBang_Linux "wikilink") 一种
    GNU/Linux 发行版
  - [文件关联](https://zh.wikipedia.org/wiki/文件关联 "wikilink")

## 参考文献

## 外部链接

  - [Details about the shebang mechanism on various Unix
    flavours](http://www.in-ulm.de/~mascheck/various/shebang/)
  - [\#\! - the Unix truth as far as I know
    it](http://homepages.cwi.nl/~aeb/std/hashexclam.html)（a more generic
    approach）
  - [FOLDOC shebang
    article](http://foldoc.org/index.cgi?query=shebang&action=Search)

[Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")

1.
2.
3.