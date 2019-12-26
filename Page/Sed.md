**sed**（意为**流编辑器**，源自[英语](../Page/英语.md "wikilink")“”的缩写）是一个使用简单紧凑的编程语言来解析和转换文本[Unix实用程序](../Page/UNIX.md "wikilink")。

sed由[贝尔实验室](../Page/贝尔实验室.md "wikilink")的Lee E. McMahon于1973年至1974年开发， \[1\] 并且现在大多数操作系统都可以使用。 \[2\] sed基于交互式编辑器ed（“editor”，1971）和早期qed（“quick editor”，1965-66）的脚本功能。sed是最早支持[正则表达式](../Page/正则表达式.md "wikilink")的工具之一，至今仍然用于文本处理，特别是用于替换命令。用于纯文本字符串操作和“流编辑”的常用工具还有[AWK](../Page/AWK.md "wikilink")和[Perl](../Page/Perl.md "wikilink") 。

## 历史

sed是为命令行处理数据文件而构建的早期Unix命令之一，首次出现在Version 7 Unix中 。它很自然地演变成为流行的[grep命令的后继](../Page/Grep.md "wikilink")。\[3\] 最初的动机与grep（g/re/p）的替换类似，因此称为“g/re/s”。\[4\] 考虑到这样的话还会出现针对每个命令的专用程序，例如g/re/d，McMahon编写了一个通用的面向行的流编辑器，该编辑器后来成为了sed。\[5\] sed的语法，特别是把`/`用于模式匹配，把`s///`用于替换，起源于sed的前身ed（当时ed很常用）\[6\] 而且正则表达式语法影响了其他一些语言，特别是[ECMAScript](../Page/ECMAScript.md "wikilink")和[Perl](../Page/Perl.md "wikilink")。后来，更强大的语言[AWK](../Page/AWK.md "wikilink")问世，这些工具相互补充，让通过shell脚本完成强大的文本处理成为可能。sed和AWK常被认为Perl的祖先和灵感来源，并且影响了Perl的语法和语义，尤其影响了匹配和替换运算符。

[GNU](../Page/GNU.md "wikilink") sed添加了一些新功能，包括文件的就地编辑 。*Super-sed* 是sed的扩展版本，包含与[Perl](../Page/Perl.md "wikilink")兼容的正则表达式。sed的另一变体*minised* ，最初[埃里克·雷蒙](../Page/埃里克·雷蒙.md "wikilink")把4.1BSD sed通过逆向工程写成，目前由René Rebe维护。在GNU计划基于新的GNU正则表达式库编写了新版本的sed之前，GNU计划一直使用minised。当前minised包含一些BSD sed的扩展，但不像GNU sed那样功能丰富。它的优点是速度快，占用的内存少。它用于嵌入式系统，是Minix提供的sed版本。

## 工作模式

sed是一个面向行的文本处理实用程序：它从输入流或文件中逐行读取文本到一个称为*模式空间* 的内部缓冲区。每读一行开始一个*循环* 。对于模式空间，sed会应用*sed脚本* 指定的一个或多个操作。sed实现了一种[编程语言](../Page/编程语言.md "wikilink")，其中包含大约25个指定文本操作的*命令* 。对于每个输入行，在运行脚本之后，sed通常输出模式空间（由脚本修改的行），然后从下一行再次开始循环。其他脚本结束行为可通过sed选项和脚本命令获得，例如`d`删除模式空间，`q`退出，`N`立即将下一行添加到模式空间，等等。因此，sed脚本对应于循环体，循环体遍历流的行，其中循环本身和循环变量（当前行号）是隐式的并由sed维护。

可以在命令行上指定sed脚本（ `-e`选项），也可以从单独的文件中读取（ `-f`选项）。sed脚本中的命令可以采用行号或[正则表达式](../Page/正则表达式.md "wikilink")的作为*地址* 。该地址确定决定命令何时运行。例如，`2d`将仅在第二个输入行上运行`d`（删除）命令（打印除第二个输入行之外的所有行），而`/^ /d`将删除以空格开头的所有行。一些单独的特殊缓冲区，即*保持空间*，可以由几个sed命令使用，用于在循环之间保持和累积文本。sed的命令语言只有两个变量（“保持空间”和“模式空间”）和类似GOTO的分支功能；然而，这种语言是图灵完备的，\[7\]\[8\] 用深奥sed脚本甚至写得出[推箱子](../Page/倉庫番.md "wikilink")、[打砖块](../Page/快打磚塊.md "wikilink")\[9\]、[国际象棋](https://zh.wikipedia.org/wiki/國際象棋 "wikilink")\[10\]和[俄罗斯方块](../Page/俄羅斯方塊.md "wikilink")\[11\]等游戏。

为输入流的每一行执行一次主循环，在输入的每一行上计算sed脚本。sed脚本的每一行都是模式-动作对，指示着要匹配的模式和要执行的操作，可以将其重新组合为条件语句。因为主循环、工作变量（模式空间和保持空间）、输入和输出流以及默认操作（复制行到模式空间、打印模式空间）是隐式的，所以可以编写简洁的[单行程序](https://zh.wikipedia.org/wiki/單行小程式 "wikilink")。例如，以下sed程序：

`10q`

将打印输入的前10行，然后停止。

## 用法

### 替换命令

下面的示例显示了sed用于替换的典型（也是最常见的）用法。这种用法确实是sed的最初动机：\[12\]

``` bash
sed 's/regexp/replacement/g' inputFileName > outputFileName
```

在某些版本的sed中，表达式的前面必须加上`-e`，以表示后面跟着一个表达式。`s`表示替换，而`g`表示全局，这意味着行中的所有匹配项都将被替换。要搜索的[正则表达式](../Page/正则表达式.md "wikilink")（即pattern）放在第一个分隔符号（此处为斜杠）之后，而要替换成的字符串跟在第二个分隔符号后面。斜杠（`/`）是传统的符号，起源于ed中的“搜索”字符，但其实在pattern和替换文本中都未出现的任何其他符号都可以用作分隔符号，使其可读性更强；这有助于避免“[倾斜牙签综合征](../Page/倾斜牙签综合征.md "wikilink")”。

替换命令源自ed中的搜索-替换，实现了简单的解析和模板化 。`regexp`提供模式匹配和通过子表达式保存文本的功能，而`replacement`可以是纯文本，也可以是包含“完全匹配”`&`，或第*n* 个子表达式（从`\1`到`\9`）这种特殊[转义序列的格式字符串](https://zh.wikipedia.org/wiki/转义序列 "wikilink")。例如， `sed -r "s/(cat|dog)s?/\1s/g"`用“cat”或“dog"替换所有出现的“cats”或“dogs”，而不复制现有的“s”：在正则表达式中，`(cat|dog)`是第一个（也是唯一）保存的子表达式，格式字符串中的`\1`将其替换到输出里。

### 其他sed命令

除了替换之外，使用大约25个sed命令可以进行其他形式的简单处理。例如，下面使用*d* 命令删除空行或只包含空格的行：

``` bash
sed '/^ *$/d' inputFileName
```

本例使用了下列[正则表达式](../Page/正则表达式.md "wikilink")元字符（sed支持所有正则表达式）：

  - 脱字符（ `^` ）匹配行首。
  - 美元符号（ `$` ）匹配行尾。
  - [星号](../Page/星號.md "wikilink")（ `*` ）匹配前一个字符零次或多次出现。

可以有很复杂的sed结构，让sed用作一种简单但高度专业化的[编程语言](../Page/编程语言.md "wikilink")。例如，可以通过使用标签（冒号后跟字符串）和分支指令`b`来管理控制流程。指令`b`后跟有效的标签名称，将把处理流程移动到该标签后面的块。

### sed用作过滤器

在Unix下，sed通常用作管道中的过滤器：

``` bash
generateData | sed 's/x/y/g'
```

也就是说，诸如“generateData”之类的程序生成数据，然后用sed把*x*替换成*y*。例如：

``` console
$ echo xyz xyz | sed 's/x/y/g'
yyz yyz
```

\[13\]

### 基于文件的sed脚本

将几个sed命令（每行一个命令）放入脚本文件（例如`subst.sed`）中然后使用`-f`选项从文件中运行命令（例如`s/x/y/g`）通常很有用：

``` bash
sed -f subst.sed inputFileName > outputFileName
```

可以在脚本文件中放置任意数量的命令，使用脚本文件也可以避免shell转义或替换的问题。

这样的脚本文件可以直接从命令行执行，方法是在其前面加上一个包含sed命令的"shebang行"，并为该文件分配可执行权限。例如，可以使用以下内容创建文件`subst.sed`：

``` bash
!/bin/sed -f
s/x/y/g
```

然后，当前用户可以使用`chmod`命令使文件可执行：

``` bash
chmod u+x subst.sed
```

然后可以直接从命令行执行该文件：

``` bash
subst.sed inputFileName > outputFileName
```

### 就地编辑

GNU sed中引入的`-i`选项允许就地编辑文件（实际上，在后台创建了一个临时输出文件，然后将原始文件替换为临时文件）。例如：

``` bash
sed -i 's/abc/def/' fileName
```

## 示例

### Hello, world\! 例子

    # convert input text stream to "Hello, world!"
    s/.*/Hello, world!/
    q

这个“Hello, world\!”脚本位于文件（如script.txt）中，并使用`sed -f script.txt inputFileName`调用，其中“inputFileName”是输入文本文件。脚本将“inputFileName”第1行更改为“Hello, world\!”然后退出，在sed退出之前打印结果。第1行后的任何输入行都不会被读取，也不会被打印。唯一的输出是“Hello, world\!”。

这个例子强调了sed的许多关键特性：

  - sed是独一无二的。没有其他“Hello, world\!”例子与之相似。
  - 典型的sed程序相当简短。
  - sed脚本可以有注释（以`#`符号开头的行）。
  - `s`（替换）命令是最重要的sed命令。
  - sed允许使用`q`（退出）等命令进行简单编程。
  - sed使用正则表达式，例如`.*` （任何字符的零个或多个）。

### 其他简单的例子

下面是各种sed脚本；可以把它们作为参数传递给sed，或者放入一个单独的文件并通过`-f`执行或通过使脚本本身可执行来执行。

要把文件中某个单词（例如IRC密码）替换为“REDACTED”，并保存结果：

``` bash
sed -i s/yourpassword/REDACTED/ ./status.freenode.log
```

要删除包含“yourword”一词的所有行（ *地址* 为“/yourword/”）：

``` bash
/yourword/ d
```

要删除所有“yourword”这个词：

``` bash
s/yourword//g
```

要同时从文件中删除两个单词：

``` bash
s/firstword//g
s/secondword//g
```

为了在一行表示前面的示例，比如在命令行输入时，可以通过分号连接两个命令：

``` bash
sed "s/firstword//g; s/secondword//g" inputFileName
```

### 多行处理示例

在下一个示例中，sed（通常仅在一行上工作）会在某一行的后一行以一个空格打头的情况下删除换行符。 请考虑以下文本：

`This is my dog,`
` whose name is Frank.`
`This is my fish,`
`whose name is George.`
`This is my goat,`
` whose name is Adam.`

下面的sed脚本会将上面的文本转换为以下文本。请注意，该脚本仅影响以空格开头的输入行：

`This is my dog, whose name is Frank.`
`This is my fish,`
`whose name is George.`
`This is my goat, whose name is Adam.`

使用的脚本是：

`N`
`s/\n / /`
`P`
`D`

这段脚本应按如下理解：

  - （`N`）将下一行添加到模式空间；
  - （`s/\n / /`）查找一个换行符后跟一个空格，替换为一个空格；
  - （`P`）打印模式空间的顶行；
  - （`D`）从模式空间中删除顶行并再次运行脚本。

这可以通过分号在一行中表示出来:

`sed 'N; s/\n / /; P; D' inputFileName`

## 限制和替代方案

虽然sed具有简单性和局限性，但对于大量用途而言，它的功能已经足够强大。对于更复杂的处理，可以使用更强大的语言，如[AWK](../Page/AWK.md "wikilink")或[Perl](../Page/Perl.md "wikilink") 。虽然使用保持缓冲区理论上可以进行任意复杂的转换，但如果转换行的方式比正则表达式提取和模板替换更复杂，则使用一般会使用上面提到的更强大的语言。

相反，对于更简单的操作，[grep](../Page/Grep.md "wikilink") （打印匹配模式的行），head（打印文件的第一部分），tail（打印文件的最后部分）和tr（翻译或删除字符）等专门的Unix实用程序通常更可取。对于设计用于执行的特定任务，此类专用实用程序通常比较一般的解决方案（如sed）更简单、清晰和快速。

ed/sed命令和语法继续用于派生程序，例如文本编辑器[vi和](../Page/Vi.md "wikilink")[vim](../Page/Vim.md "wikilink")。sam/ssam与ed/sed类似，其中sam是[Plan 9编辑器](../Page/貝爾實驗室九號計畫.md "wikilink")，ssam是它的流接口，其功能类似于sed。

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [AWK](../Page/AWK.md "wikilink")
  - [tr](../Page/Tr_\(Unix\).md "wikilink")

## 注释

## 参考文献

## 扩展阅读

  - [贝尔实验室的第八版（约1985年）Unix sed（1）手册页](http://man.cat-v.org/unix_8th/1/sed)

  - [GNU sed（1）手册页](http://www.unix.com/man-page/linux/1/sed/)

  -
  -
  -
  -
  - [Sourceforge.net](http://sed.sourceforge.net/sedfaq.html) ，sed FAQ（2003年3月）

## 外部链接

  -
### 教程

  - [Sed - An Introduction and Tutorial](http://www.grymoire.com/Unix/Sed.html), by Bruce Barnett
  - [SED -- A Non-interactive Text Editor (1974)](http://sed.sourceforge.net/grabbag/tutorials/sed_mcmahon.txt), by Lee E. McMahon
  - [31+ Examples For Sed Linux Command In Text Manipulation](https://likegeeks.com/sed-linux/), by Mokhtar Ebrahim

### 示例

  - [Major sources for sed scripts, files, usage](https://web.archive.org/web/20060208161216/http://sed.sourceforge.net/)
  - [Roger Chang's SED and Shell Scripts (2012)](http://main.rtfiber.com.tw/~changyj/sed/)
  - [Top 'sed' commands – Usage examples](https://web.archive.org/web/20181110200025/http://www.shell-fu.org/lister.php?tag=sed)
  - [Sed command examples in Unix & Linux](http://www.techsakh.com/2016/05/12/20160512use-sed-command-linux-unix/)

### 其他链接

  - \[//www.gnu.org/software/sed/ GNU sed主页\]（包括GNU sed手册）
  - [sed the Stream Editor（2004）](http://www.pement.org/sed/) （Eric Pement）
  - [sed-users Yahoo讨论组](https://groups.yahoo.com/neo/groups/sed-users/info)

[Category:跨平台软件](https://zh.wikipedia.org/wiki/Category:跨平台软件 "wikilink") [Category:模式匹配编程语言](https://zh.wikipedia.org/wiki/Category:模式匹配编程语言 "wikilink") [Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink") [Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:面向文本的编程语言](https://zh.wikipedia.org/wiki/Category:面向文本的编程语言 "wikilink") [Category:Unix文字处理实用工具](https://zh.wikipedia.org/wiki/Category:Unix文字处理实用工具 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink") [Category:控制台应用](https://zh.wikipedia.org/wiki/Category:控制台应用 "wikilink")

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
12.
13. 在命令行使用中，表达式周围的引号不是必需的，只有在shell不会将表达式解释为单个字（标记）时才需要。由于脚本`s/x/y/g`没有歧义，所以`generateData | sed s/x/y/g`工作正常。然而，为了清楚起见，通常是要写引号的，特别是对于有空格的时候（例如，`'s/x x/y y/'`）。大多数情况下，使用单引号是为了避免shell将`$`解释为shell变量。使用双引号，如`"s/$1/$2/g"`，是为了让shell替换命令行参数或其他shell变量。