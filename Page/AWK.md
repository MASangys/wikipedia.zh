**AWK**是一种优良的[文本处理工具](../Page/文本处理.md "wikilink")，[Linux及](../Page/Linux.md "wikilink")[Unix环境中现有的功能最强大的](../Page/Unix.md "wikilink")[数据处理引擎之一](../Page/数据处理.md "wikilink")。这种编程及数据操作语言（其名称得自于它的创始人[阿尔佛雷德·艾侯](../Page/阿尔佛雷德·艾侯.md "wikilink")、[彼得·溫伯格和](../Page/彼得·溫伯格.md "wikilink")[布萊恩·柯林漢姓氏的首个字母](../Page/布萊恩·柯林漢.md "wikilink")）的最大功能取决于一个人所拥有的知识。AWK提供了极其强大的功能：可以进行正则表达式的匹配，样式装入、流控制、数学运算符、进程控制语句甚至于内置的变量和函数。它具备了一个完整的语言所应具有的几乎所有精美特性。实际上AWK的确拥有自己的语言：AWK[程序设计语言](../Page/程序设计语言.md "wikilink")，三位创建者已将它正式定义为“样式扫描和处理语言”。它允许您创建简短的程序，这些程序读取输入文件、为数据排序、处理数据、对输入执行计算以及生成报表，还有无数其他的功能。gawk是AWK的GNU版本。

最简单地说，AWK是一种用于处理文本的编程语言工具。AWK在很多方面类似于[Unix
shell编程语言](../Page/Unix_shell.md "wikilink")，尽管AWK具有完全属于其本身的语法。它的设计思想来源于[SNOBOL4](../Page/SNOBOL4.md "wikilink")、[sed](../Page/sed.md "wikilink")、Marc
Rochkind设计的有效性语言、语言工具[yacc和](../Page/yacc.md "wikilink")[lex](../Page/lex.md "wikilink")，当然还从[C语言中获取了一些优秀的思想](../Page/C语言.md "wikilink")。在最初创造AWK时，其目的是用于文本处理，并且这种语言的基础是，只要在输入数据中有模式匹配，就执行一系列指令。该实用工具扫描文件中的每一行，查找与命令行中所给定内容相匹配的模式。如果发现匹配内容，则进行下一个编程步骤。如果找不到匹配内容，则继续处理下一行。

## AWK程序结构

AWK程序是由一系列模式--动作对组成的，写做

*`pattern`*` { `*`action`*` }`

其中`pattern`表示AWK在数据中查找的内容，而`action`是在找到匹配内容时所执行的一系列命令。输入行被分成了一些记录：记录默认由换行符分割，因此输入会按照行进行分割。程序使用给定的条件一个个的测试每条记录，并执行测试通过的条件所对应的`action`。`pattern`和`action`都可以省略不写。无`pattern`默认匹配全部的记录；而无`action`则是打印原始记录。简单的AWK表达式之外，`pattern`可以是`BEGIN`或`END`；这两种条件对应的`action`分别是读取所有的记录之前和之后。同时，如`pattern1,
pattern2`的条件表示符合条件`pattern1`和`pattern2`的记录及其之间的部分。

除了一般的，[C语言风格的算术和逻辑运算符外](../Page/C语言.md "wikilink")，AWK允许运算符*\~*，用来测试[正则表达式是否可以与一字符串匹配](../Page/正则表达式.md "wikilink")。作为[语法糖](../Page/语法糖.md "wikilink")，没有*\~*运算符的正则表达式会被用来对当前记录进行测试，相当于`/regexp/
~ $0`。

## AWK命令

AWK命令即为前文例子中以*action*指代的语句。AWK命令可以包括函数调用，变量赋值，计算，及/或各项的组合。标准AWK提供了许多内建函数；其部分实现则可能提供了更多的内建函数。同时，AWK的部分实现支持[动态链接库](../Page/动态链接库.md "wikilink")，使得其可以支持更多的函数。
便利起见，下述例子中可能省略大括号（*{ }*）。

### *print*命令

''print ''命令用于输出文本。其输出的文本总是以"输出记录分隔符"（Output record separator,
ORS）分割的，其默认值为换行符。该命令的最简形式为：

  - `print`:会输出当前记录的内容。在AWK中，记录会被分割成“域”，它们可以被分别显示或使用：

<!-- end list -->

  - `print $1`:显示当前记录的第1个域

<!-- end list -->

  - `print $1, $3`:显示当前记录的第1和第3个域，并以预定义的输出域分隔符（Output field separator,
    OFS）分隔，其默认值为一个空格符

虽然域的符号(''$X
*)可能类似于某些语言中的变量（例如[PHP和](../Page/PHP.md "wikilink")[perl](../Page/perl.md "wikilink")），但在AWK中，它们指代的是当前记录的域。另外，*$0''是指整个记录。事实上，命令`print`和`print
$0`的效果是相同的。 *print*命令也可以显示变量、计算、函数调用的结果：

`print 3+2`
`print foobar(3)`
`print foobar(variable)`
`print sin(3-2)`

其输出可以重定向到File:

`print "expression" > "file name"`

或重定向到[管道](../Page/管道_\(Unix\).md "wikilink")：

`print "expression" | "command"`

### 内建变量

AWK的内建变量包括域变量，例如$1, $2, $3，以及$0。这些变量给出了记录中域的内容。 内建变量也包括一些其他变量：

  - NR：已输入记录的条数。
  - NF：当前记录中域的个数。记录中最后一个域可以以`$NF`的方式引用。
  - FILENAME：当前输入文件的文件名。
  - FS：“域分隔符”，用于将输入记录分割成域。其默认值为“空白字符”，即空格和[制表符](../Page/制表符.md "wikilink")。FS可以替换为其它字符，从而改变域分隔符。
  - RS：当前的“记录分隔符”。默认状态下，输入的每行都被作为一个记录，因此默认记录分隔符是[换行符](../Page/换行符.md "wikilink")。
  - OFS：“输出域分隔符”，即分隔`print`命令的参数的符号。其默认值为空格。
  - ORS：“输出记录分隔符”，即每个`print`命令之间的符号。其默认值为换行符。
  - OFMT：“输出数字格式”（Format for numeric output），其默认值为"%.6g"。

### 变量和语法

变量名可以是语言[关键字外的](../Page/关键字.md "wikilink")，只包含大小写拉丁字母，数字和下划线（“_”）的任意字。而操作符“+
- \*
/”则分别代表加，减，乘，除。简单的将两个变量（或[字符串](../Page/字符串.md "wikilink")[常量](../Page/常量.md "wikilink")）放在一起，则会将二者[串接为一个字符串](../Page/串接.md "wikilink")。若二者间至少有一个是常量，则中间可以不加空格；但若二者均为变量，中间必须包括空格。字符串常量是以双引号（“"”）分隔的。语句无需以分号结尾。另外，注释是以“\#”开头的。

### 用户定义函数

[函数是以与C语言类似的方式定义的](../Page/函数.md "wikilink")，以关键字`function`开头，后面跟函数名称，参数列表和函数体。

`# 示例函数`
`function add_three (number) {`
`  return number + 3`
`}`

上面的函数可以如此调用：

`print add_three(36)     # 输出`**`39`**

函数可以拥有其私有变量。其私有变量可以写在参数列表之后，因为这些值会在调用函数时被忽略。通常可以在参数列表中参数和私有变量之间加入一些空格，用以区别“真正的”参数和私有变量。
函数声明中，函数名和括号间可以有任意空格，但在调用时二者必须紧邻。

## 样例程序

### Hello World

AWK的*[hello world](../Page/hello_world.md "wikilink")*程序为：

`BEGIN { print "Hello, world!" }`

注意此处无需写出`exit`语句，因为唯一的模式是`BEGIN`。

### 输出长度大于80的行

输出长度大于80字符的行。注意模式的默认行为是输出当前行。

`length($0) > 80`

### 输出单词计数

对输入中的单词进行计数，然后输出行数，单词数和字符数（类似[wc](../Page/wc（Unix）.md "wikilink")）。

`{`
`    w += NF`
`    c += length + 1`
`}`
`END { print NR, w, c }`

由于没有提供模式，输入的全部行都可以匹配该模式，因此对每行都会执行预定操作。注意`w+=NF`的含义等同于`w = w + NF`。

### 计算最后一个单词的和

`{ s += $NF }`
`END { print s + 0 }`

`s`是数值`$NF`的累加，而`$NF`则是每条记录中的最后一个域。`NF`是当前行中域的数量，例如，4。由于`$4`是第4个域的值，`$NF`，在这种情况下等于`$4`，则当然是最后一个域的内容。事实上，`$`是一个具有最高[优先级的](../Page/优先级.md "wikilink")[一元运算符](../Page/一元运算符.md "wikilink")。（若一行没有域，则有`NF`为0，而`$0`是整行：在这种情况下，要么是空串，要么只有空白符，因此其数值为0。）

文件结束时，`END`模式得到了匹配，因此可以输出`s`。然而，由于可能没有输入行，此时`s`会没有值，从而导致没有输出。因此，对其加0可以使AWK在这种情况下对其赋值，从而得到一个数值。这种方法是将字符串强制转化为数值的惯用法（反之，与空串连接则是将数值强制转换为字符串的方法，例如`s
""`）。如此处理之后，若程序输入为空文件，可以得到“0”作为输出，而不是一个空行。

### 匹配输入行中的范围

`$ yes Wikipedia | awk 'NR % 4 == 1, NR % 4 == 3 { printf "%6d  %s\n", NR, $0 }' | sed 7q`
`     1  Wikipedia`
`     2  Wikipedia`
`     3  Wikipedia`
`     5  Wikipedia`
`     6  Wikipedia`
`     7  Wikipedia`
`     9  Wikipedia`
`$`

[yes命令重复输入其参数](../Page/yes_\(Unix\).md "wikilink")（默认则是输出“y”）。在这里，我们让该命令输出“Wikipedia”。动作块则输出带行号的内容。`printf`函数可以模拟标准C中的[`printf`](../Page/printf.md "wikilink")函数，其效果与前述的`print`函数类似。而符合模式的行是这样产生的：`NR`是记录的编号，也就是AWK正在处理行的行号（从1开始）。“%”是[取余数操作符](../Page/模除.md "wikilink")。因此，`NR
% 4 == 1`对第1，5，9等行为真。类似的，`NR % 4
== 3`对3，7，11等行为真。范围模式在其第一部分匹配（例如对第1行）之前为假，并在第二部分匹配（例如第3行）之前为真。然后，再在第二次匹配上其第一部分（例如第5行）前为假。[`sed`](../Page/sed.md "wikilink")命令则是用于截取其前7行输出，防止`yes`命令一直运行下去。若[`head`](../Page/head.md "wikilink")命令可用的话，这行命令的效果和`head
-n7`相同。
若范围模式的第一部分永远为真，例如设定为“1”，可以用来使该范围从输入的最开始开始。类似的，若第二部分总是为假，例如“0”，则该范围的结束即为输入的结束。
命令

`/^--cut here--$/, 0`

会输出从符合正则表达式“^--cut here--$”开始的输入行，也即从只包含“--cut here--”的行开始，直到输入的结束。

### 计算词频

使用[关联数组计算词频](../Page/关联数组.md "wikilink")：

`BEGIN {`
`    FS="[^a-zA-Z]+"`
`}`
`{`
`     for(i=1; i<=NF; ++i)`
`          words[tolower($i)]++`
`}`
`END {`
`    for(i in words)`
`         print i, words[i]`
`}`

`BEGIN`块设定域分隔符为任意非字母字符。值得注意的是，分隔符不仅可以是字符串，也可以是正则表达式。然后，程序对每个输入行执行相同的操作。在此，对每个域，我们累加其小写形式出现的次数。最后，在`END`块中，我们输出单词及其出现的次数。代码

`for(i in words)`

建立了一个遍历关联数组中元素的循环，其中，`i`会被设为对应的键。这一点和多数语言不同，而和[Objective-C
2.0中的](../Page/Objective-C_2.0.md "wikilink")`for...in`语法相似。这样的语法允许以简单的方式遍历数组，从而输出这些单词。另外，`tolower`函数是One
True awk（见下文）的附加函数。

### 从命令匹配模式

这个程序可以以多种不同形式出现。第一个使用[Bourne
shell脚本来完成大部分工作](../Page/Bourne_shell.md "wikilink")。这也是最短的一个方法：

`$ cat grepinawk`
`pattern=$1`
`shift`
`awk '/'$pattern'/ { print FILENAME ":" $0 }' $*`
`$`

awk命令中的`$pattern`并没有为引号所保护。在这里，模式可以检查输入行（`$0`）是否与之匹配。`FILENAME`变量则包含了当前的文件名。awk没有显式的字符串连接操作符；与[BASH相似](../Page/BASH.md "wikilink")，只需简单的将字符串并列即可。`$0`则会输出原始的输入行。
也有另外的方法来完成同样的任务。下面的脚本直接在awk中访问[环境变量](../Page/环境变量.md "wikilink")。

`$ cat grepinawk`
`pattern=$1`
`shift`
`awk '$0 ~ ENVIRON["pattern"] { print FILENAME ":" $0 }' $*`
`$`

这个脚本用到了数组`ENVIRON`，一个One True
awk中引入的量。其作用类似与[POSIX标准中的](../Page/POSIX.md "wikilink")[getenv
(3)函数](../Page/getenv.md "wikilink")。这个脚本先建立了一个名为`pattern`的环境变量，其值为脚本的第一个参数，然后让awk在其余的参数所代表的文件内寻找该模式。
`~`是用于检查其两个操作数是否匹配的运算符；其逆则为`!~`。注意正则表达式也属于普通的字符串，可以储存于变量中。
下面的方法则采用了在命令行对变量赋值的方法，即在awk的参数中写入一个变量的值：

`$ cat grepinawk`
`pattern=$1`
`shift`
`awk '$0 ~ pattern { print FILENAME ":" $0 }' "pattern=$pattern" $*`
`$`

最后，这种方法是纯awk的，无需shell的帮助，也无需知道太多关于awk脚本实现的细节（而在命令行对变量赋值的方法可能与awk的实现相关）；但这种方法的脚本有点长：

`BEGIN {`
`    pattern = ARGV[1]`
`    for (i = 1; i < ARGC; i++) # 去除第一个参数`
`        ARGV[i] = ARGV[i + 1]`
`    ARGC—if (ARGC == 1) { # 模式是唯一参数，因此强制从标准输入读取`
`        ARGC = 2`
`        ARGV[1] = "-"`
`    }`
`}`
`$0 ~ pattern { print FILENAME ":" $0 }`

`BEGIN`块的作用不仅仅是提取出第一个参数，也防止第一个参数在`BEGIN`块结束后直接被解释为输入文件。`ARGC`，输入参数的数量永远是不小于1的，因为`ARGV[0]`是执行脚本的命令名，通常是`"awk"`。另外，`ARGV[ARGC]`永远是空串。对于其中的`if`块，它表明若没有指定输入文件，awk会直接读取[标准输入流](../Page/标准输入流.md "wikilink")（`stdin`）。也即

`awk 'prog'`

也可以工作，因为程序中已经将`ARGC`置为了2；若该值为1，则awk会认为没有文件需要读取而直接退出。同时，若需从标准输入读取数据，需要将文件名显式的指定为`-`。

## 自包含的AWK脚本

与许多其他的程序语言相似，可以利用“[shebang](../Page/shebang.md "wikilink")”语法构建自包含的awk脚本。
例如，一个名为`hello.awk`，可以输出“Hello,
world\!”的UNIX命令可以通过建立内容如下，名为`hello.awk`的文件来完成：

`#!/usr/bin/awk -f`
`BEGIN { print "Hello, world!" }`

`-f`参数告诉awk将该文件作为awk的程序文件，然后即可运行该程序。

## 参见

  - [sed](../Page/sed.md "wikilink")
  - [Unix shell](../Page/Unix_shell.md "wikilink")
  - [Perl](../Page/Perl.md "wikilink")

## 外部链接

  - [gawk主页](http://www.gnu.org/software/gawk/gawk.html)
  - [aaa - the Amazing Awk Assembler by Henry
    Spencer](http://doc.cat-v.org/henry_spencer/amazing_awk_assembler/)

[Category:1977年软件](https://zh.wikipedia.org/wiki/Category:1977年软件 "wikilink")
[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")
[Category:Unix文字处理实用工具](https://zh.wikipedia.org/wiki/Category:Unix文字处理实用工具 "wikilink")
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")