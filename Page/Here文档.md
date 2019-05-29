**here文档**\[1\]，又称作**heredoc**、**hereis**、**here-字串**或**here-脚本**，是一种在命令行shell（如[sh](https://zh.wikipedia.org/wiki/Bourne_Shell "wikilink")、[csh](https://zh.wikipedia.org/wiki/C_shell "wikilink")、[ksh](https://zh.wikipedia.org/wiki/Korn_shell "wikilink")、[bash](https://zh.wikipedia.org/wiki/bash "wikilink")、[PowerShell和](https://zh.wikipedia.org/wiki/PowerShell "wikilink")[zsh](../Page/Z_shell.md "wikilink")）和程序语言（像[Perl](../Page/Perl.md "wikilink")、[PHP](../Page/PHP.md "wikilink")、[Python和](../Page/Python.md "wikilink")[Ruby](../Page/Ruby.md "wikilink")）里定义一个[字串的方法](https://zh.wikipedia.org/wiki/字串 "wikilink")。它可以保存文字裡面的换行或是縮排等空白字元。一些语言允许在字串里执行[变量替换和](https://zh.wikipedia.org/wiki/变量 "wikilink")[命令替换](https://zh.wikipedia.org/wiki/命令替换 "wikilink")。

here文档最通用的语法是`<<`紧跟一个标识符，从下一行开始是想要引用的文字，然后再在单独的一行用相同的标识符关闭。在Unix
shell里，here文档通常用于给命令提供输入内容。

## 实例

以下几节提供了不同语言和环境中的例子。

### 命令行 shell

#### Unix shell

在以下几个例子中，文字用here文档传递给[tr命令](https://zh.wikipedia.org/wiki/tr "wikilink")。

``` bash
 $ tr a-z A-Z <<END_TEXT
 > one two three
 > uno dos tres
 > END_TEXT
 ONE TWO THREE
 UNO DOS TRES
```

\[2\] `END_TEXT`被用作标识符。它指定了here文档的开始和结束`ONE TWO THREE`和`UNO DOS
TRES`是执行后`tr`的输出。

在\<\<后面添加一个减号，可以使TAB字元被忽略。这允许在shell脚本中缩进here文档而不改变它们的值。（注意在命令行上可能会需要输入*Ctrl-v
TAB*来真正地输入一个制表符。下边的例子用空格模拟制表符；不要复制粘贴。）

``` bash
 $ tr a-z A-Z <<-END_TEXT
 >         one two three
 >         uno dos tres
 > END_TEXT
 ONE TWO THREE
 UNO DOS TRES
```

默认地，会进行变量替换和命令替换：

``` bash
 $ cat << EOF
 > Working dir $PWD
 > EOF
 Working dir /home/user
```

这可以通过使用引号包裹标识符来禁用。可以使用单引号或双引号：

``` bash
 $ cat << "EOF"
 > Working dir $PWD
 > EOF
 Working dir $PWD
```

bash，ksh或zsh中也可以用here-字串：

``` bash
 $ tr a-z A-Z <<<"Yes it is a string"
 YES IT IS A STRING
```

#### Windows 命令行

等价的代码目前没有找到。下列代码较为有用。

``` bash

set GREETING=Hello
echo %GREETING%
cmd /k
  echo %GREETING%
  set GREETING=Goodbye
  echo %GREETING%
exit
echo %GREETING%

C:\>
C:\>set GREETING=Hello

C:\>echo %GREETING%
Hello

C:\>cmd /k
C:\>  echo %GREETING%
Hello

C:\>  set GREETING=Goodbye

C:\>  echo %GREETING%
Goodbye

C:\>exit

C:\>echo %GREETING%
Hello

C:\>
```

#### Windows PowerShell

在[Windows
PowerShell里](../Page/Windows_PowerShell.md "wikilink")，here文档表示的是**here-字串**。一个here-字串是由`@"`或`@'`开始，由独立成行的`"@`或`'@`结束的字串。所有在开始符号和结束符号之间的字符都被当做字面的字串\[3\]。

使用双引号引起来的here-字串允许变量替换，而单引号不行\[4\]。

变量替换只发生于简单变量（如`$x`，但不是`$x.y`或`$x[0]`）。

可以将命令放进`$()`中来获取执行结果。

在如下的PowerShell的代码中，文字使用here-字串传递给一个函数。这个函数`ConvertTo-UpperCase`定义如下：

`PS> function ConvertTo-UpperCase($string) { $string.ToUpper() }`

`PS> ConvertTo-UpperCase @'`
`>> one two three`
`>> eins zwei drei`
`>> '@`
`>>`
`ONE TWO THREE`
`EINS ZWEI DREI`

下边是一个证明了双引号的here-字串里的变量替换和命令替换的例子：

`$doc, $marty = 'Dr. Emmett Brown', 'Marty McFly'`
`$time = [DateTime]'Friday, October 25, 1985 8:00:00 AM'`
`$diff = New-TimeSpan -Minutes 25`
`@"`
`$doc : Are those my clocks I hear?`
`$marty : Yeah! Uh, it's $($time.Hour) o'clock!`
`$doc : Perfect! My experiment worked! They're all exactly $($diff.Minutes) minutes slow.`
`$marty : Wait a minute. Wait a minute. Doc... Are you telling me that it's $(($time + $diff).ToShortTimeString())?`
`$doc : Precisely.`
`$marty : Damn! I'm late for school!`
`"@`

输出：

`Dr. Emmett Brown : Are those my clocks I hear?`
`Marty McFly : Yeah! Uh, it's 8 o'clock!`
`Dr. Emmett Brown : Perfect! My experiment worked! They're all exactly 25 minutes slow.`
`Marty McFly : Wait a minute. Wait a minute. Doc... Are you telling me that it's 08:25?`
`Dr. Emmett Brown : Precisely.`
`Marty McFly : Damn! I'm late for school!`

如果用单引号的here-字串代替，输出看起来会像这样：

`$doc : Are those my clocks I hear?`
`$marty : Yeah! Uh, it's $($time.Hour) o'clock!`
`$doc : Perfect! My experiment worked! They're all exactly $($diff.Minutes) minutes slow.`
`$marty : Wait a minute. Wait a minute. Doc... Are you telling me that it's $(($time + $diff).ToShortTimeString())?`
`$doc : Precisely.`
`$marty : Damn! I'm late for school!`

### 编程语言

#### C++

[C++](../Page/C++.md "wikilink")11引入了原始字面字串。原始字面字串的前缀有一个“R”，以**`"分隔符(`**开始，以**`)分隔符"`**结束。分隔符可以是0到16字符长，可以包括简单的字符，除开空格，括号与反斜杠。

``` cpp
char const *a = R"(The escape sequence '\n' represents a newline character.)";

wchar_t const *b = LR"...(Raw strings look like R"(...)")...";

char16_t const *b = uR"xyz(
Universal character names such as "\u5367\u864E\u85CF\u3863" are not
processed in raw string literals. Therefore the above can be written
as "臥虎藏龍" in a raw string literal, but only if the source character
set contains those characters.
)xyz";
```

#### D语言

从2.0版本开始，[D语言支持用](https://zh.wikipedia.org/wiki/D语言 "wikilink")“q”引导的here-字串。这些字串以一个括号（\<\>，\[\]，()，{}）或者单独成行的标识符开始。

下列D代码展示了使用括号和标识符的here-字串。

``` D
int main() {
    string list = q"[1. Item One
2. Item Two
3. Item Three]";
    writef( list );
}
```

使用标识符：

``` D
int main() {
    string list = q"IDENT
1. Item One
2. Item Two
3. Item Three
IDENT";
    writef( list );
}
```

#### Lua

[Lua使用](../Page/Lua.md "wikilink")`[[`和`|`和`]]`定义字面字串，字面字串中的换行会原样保留，不允许含有转义字符。这不便放置长的注释（`--[[注释|注释]]`）和一些字串（`x
= a[b[c]]`）。所以在版本5.1时，Lua添加了一个新语法：起始的两个括号中间可以加入任意多的等号，并且只有相同的等号数字才能关闭字串。

``` Lua
local ls = [[
Initial newline isn't part of the string.
Two lines.]]
local lls = [==[
This notation can be used for Windows paths:
local path = [=[C:\Windows\Fonts]=]
]==]
```

#### Perl

在Perl里有许多不同的方法使用here文档\[5\]。在here文档的标签名前后加括号的效果和一般的字面字串效果是一样的：标签前后加双引号允许变量扩展，单引号则不行，不加引号的和加双引号的效果一样。加反引号将会把here文档当做shell脚本执行，并获取输出。需要保证结束标签必须在一行的开始，不然这个标签不会被直译器认出。

注意here文档不是从标签开始的，而是从下一行开始的。所以包含标签的语句将会在标签后继续。

这是一个使用双引号的例子：

``` Perl
my $sender = "Buffy the Vampire Slayer";
my $recipient = "Spike";

print <<"END";

Dear $recipient,

I wish you to leave Sunnydale and never return.

Not Quite Love,
$sender

END
```

输出：

`Dear Spike,`

`I wish you to leave Sunnydale and never return.`

`Not Quite Love,`
`Buffy the Vampire Slayer`

这是使用单引号的例子：

``` Perl
print <<'END';
Dear $recipient,

I wish you to leave Sunnydale and never return.

Not Quite Love,
$sender
END
```

输出：

`Dear $recipient,`

`I wish you to leave Sunnydale and never return.`

`Not Quite Love,`
`$sender`

另外一个使用反引号的例子（可能不具有可移植性）：

``` Perl
my $shell_script_stdout = <<`END`;
echo foo
echo bar
END
```

可以在同一行上开始多个here文档：

``` Perl
say(<<BEGIN . "this is the middle\n" . <<END);
This is the beginning:
BEGIN
And now it is over!
END

#上边的和这个相同：
say("This is the beginning:\nthis is the middle\nAnd now it is over!");
```

标签本身可以使用空格，这允许here文档不会破坏[缩进](https://zh.wikipedia.org/wiki/缩进 "wikilink")。

``` Perl
  say <<'  END';
Hello World
  END
```

#### PHP

``` PHP
<?php

$name       = "Joe Smith";
$occupation = "Programmer";
echo <<<EOF

    This is a heredoc section.
    For more information talk to $name, your local $occupation.

    Thanks!

EOF;

$toprint = <<<EOF

    Hey $name! You can actually assign the heredoc section to a variable!

EOF;
echo $toprint;

?>
```

输出：

`This is a heredoc section.`
`For more information talk to Joe Smith, your local Programmer.`
` `
`Thanks!`
`  `
`Hey Joe Smith! You can actually assign the heredoc section to a variable!`

包含关闭标识符的行不得包含除了（可选的）分号的任何其他字符。不然它就不会被识别为关闭标识符，PHP就会继续寻找一个。如果没有找到关闭标识符，分析错误会发生在最后一行\[6\]。

在PHP
5.3和以后的版本中，就像[Perl一样](../Page/Perl.md "wikilink")，可以用单引号包裹标识符阻止变量扩展；这叫作*nowdoc*\[7\]：

``` php
$x = <<<'END'
Dear $recipient,

I wish you to leave Sunnydale and never return.

Not Quite Love,
$sender
END;
```

在PHP5.3和以后的版本中，也可以用双引号包裹标识符，像Perl一样，和不用引号的效果一样。

#### Python

[Python支持使用三个连续单引号或双引号的字面字串](../Page/Python.md "wikilink")（如`'''`或`"""`）。这些字面字串可以跨越多行，支持here文档的功能。

一个简单的Python3兼容的例子给出像上边第一个Perl例子一样：

``` Python
message="""Dear {recipient},

I wish you to leave Sunnydale and never return.

Not Quite Love,
{sender}
"""
print(message.format(sender='Buffy the Vampire Slayer', recipient='Spike'))
```

在Python3.0以前的版本中，用print关键字代替print函数。

#### R

[R语言在字串里使用空格](../Page/R语言.md "wikilink")，包括换行。不执行变量替换。字串可以用`textConnection()`函数转化为[文件描述符](../Page/文件描述符.md "wikilink")。例如，以下代码将一个嵌入源码的数据表转化为一个数据框架变量：

``` rsplus
str <-
"State          Population Income Illiteracy Life.Exp Murder HS.Grad Frost
Alabama              3615   3624        2.1    69.05   15.1    41.3    20
Alaska                365   6315        1.5    69.31   11.3    66.7   152
Arizona              2212   4530        1.8    70.55    7.8    58.1    15
Arkansas             2110   3378        1.9    70.66   10.1    39.9    65"
x <- read.table(textConnection(str), header=TRUE, row.names=1)
```

#### Racket

[Racket的here字串以](../Page/Racket.md "wikilink")`#<<`开始，紧跟定义字串终止的标识符\[8\]。

字串的内容包括所有的在`#<<`一行和仅包括定义了的终止符的那一行。即：字串的内容开始于`#<<`后的新行，结束于终止符之前的一行。

``` Scheme
#lang racket

(displayln
 #<<HERESTRING
This is a simple here string in Racket.
  * One
  * Two
  * Three
HERESTRING
 )
```

输出：

`This is a simple here string in Racket.`
`  * One`
`  * Two`
`  * Three`

here字串中的转义字符不被识别；字串（和终止符）中所有的字符都会保持原样。

``` Scheme
#lang racket

(displayln
 #<<A here string in Racket ☺
This string spans for multiple lines
and can contain any Unicode symbol.
So things like λ, ☠, α, β, are all fine.

In the next line comes the terminator. It can contain any Unicode symbol as well, even spaces and smileys!
A here string in Racket ☺
 )
```

输出：

`This string spans for multiple lines`
`and can contain any Unicode symbol.`
`So things like λ, ☠, α, β, are all fine.`

`In the next line comes the terminator. It can contain any Unicode symbol as well, even spaces and smileys!`

here字串可以像一般的字串一样使用：

``` Scheme
#lang racket

(printf #<<END
Dear ~a,

Thanks for the insightful conversation ~a.

                ~a

END
        "Isaac"
        "yesterday"
        "Carl")
```

输出：

`Dear Isaac,`

`Thanks for the insightful conversation yesterday.`

`                Carl`

一个有趣的替代方案是使用语言的扩展`at-exp`来写@-表达式\[9\]。

它们看起来像这样：

``` Scheme
#lang at-exp racket

(displayln @string-append{
  This is a long string,
  very convenient when a
  long chunk of text is
  needed.

  No worries about escaping
  "quotes". It's also okay
  to have λ, γ, θ, ...

  Embed code: @|(number->string (+ 3 4))|
  })
```

输出：

`This is a long string,`
`very convenient when a`
`long chunk of text is`
`needed.`

`No worries about escaping`
`"quotes". It's also okay`
`to have λ, γ, θ, ...`

` Embed code: 7`

#### Ruby

下列[Ruby代码用here文档显示了一个列表](../Page/Ruby.md "wikilink")：

``` Ruby
puts <<GROCERY_LIST
Grocery list
------------
1. Salad mix.
2. Strawberries.*
3. Cereal.
4. Milk.*

* Organic
GROCERY_LIST
```

\[10\]

输出：

`Grocery list`
`------------`
`1. Salad mix.`
`2. Strawberries.*`
`3. Cereal.`
`4. Milk.*`

`* Organic`

写入文件：

``` Ruby

File::open("grocery-list", "w") do |f|
  f << <<GROCERY_LIST
Grocery list
------------
1. Salad mix.
2. Strawberries.*
3. Cereal.
4. Milk.*

* Organic
GROCERY_LIST
end
```

Ruby也允许标识符不起始于行首，需要以`<<-`起始here文档。

另外，Ruby对待here文档就像一个双引号括起来的字串，即可以使用\#{}来进行代码替换。

以下例子展示了这2个特性：

``` Ruby
now = Time.now
puts <<-EOF
  It's #{now.hour} o'clock John, where are your kids?
  EOF
```

但是如果标识符是用单引号引起来的，则当做单引号内的字串对待\[11\]。

类似于Perl，Ruby允许在一行内开始多个here文档\[12\]：

``` Ruby
puts <<BEGIN + "<--- middle --->\n" + <<END
This is the beginning:
BEGIN
And now it is over!
END

# 以上相等于：
puts "This is the beginning:\n<--- middle --->\nAnd now it is over!"
```

#### Tcl

[Tcl没有为here文档设立特殊的语法](../Page/Tcl.md "wikilink")，因为一般的字串语法已经允许嵌入换行和保持缩进。用括号括起来的字串，没有扩展：

``` text
puts {
Grocery list
------------
1. Salad mix.
2. Strawberries.*
3. Cereal.
4. Milk.*

* Organic
}
```

用引号括起来的字串在运行时执行替换：

``` Tcl
set sender "Buffy the Vampire Slayer"
set recipient "Spike"

puts "
Dear $recipient,

I wish you to leave Sunnydale and never return.

Not Quite Love,
$sender
"
```

在括号包裹的字串里，起始括号和终止括号数量应该一样多。在引号包裹的字串里，括号可以不一样多，但是反斜杠，美元符号和括号都会被替换，此时第一个没有被转义的双引号会结束字串。

需要注意的一点是：上边的字串的第一个和最后一个字符都是换行。`string trim`可以用来删除头尾空行：

``` Tcl
puts [string trim "
Dear $recipient,

I wish you to leave Sunnydale and never return.

Not Quite Love,
$sender
" \n]
```

### 其它

#### 微软 NMAKE

在微软[NMAKE里](https://zh.wikipedia.org/wiki/Make#Microsoft_nmake "wikilink")，here文档是行内的文件。行内文件以`<<`或`<<文件名`开始\[13\]。第一种方法创建一个临时文件。第二种创建（或覆盖）特定文件。所有的行内文件都终止于独自成行的`<<`，后边可以添加不区分大小写的`KEEP`或`NOKEEP`来决定该文件是否保留。两个都不添加和加入`NOKEEP`效果一样\[14\]。

``` make
target0: dependent0
    command0 <<
临时行内文件
...
<<

target1: dependent1
    command1 <<
临时行内文件，但保留
...
<<KEEP

target2: dependent2
    command2 <<filename2
专有行内文件，但用完后删除
...
<<NOKEEP

target3: dependent3
    command3 <<filename3
专有行内文件
...
<<KEEP
```

## 参见

  - [tr关于tr程序的说明](https://zh.wikipedia.org/wiki/tr "wikilink")
  - [管道 (Unix)关于管道的信息](../Page/管道_\(Unix\).md "wikilink")。

## 参考

## 外部链接

  - [Here
    document](http://rosettacode.org/wiki/Here_document)。超过15种语言里的here文档。

[Category:程序架構](https://zh.wikipedia.org/wiki/Category:程序架構 "wikilink")
[Category:字符串](https://zh.wikipedia.org/wiki/Category:字符串 "wikilink")

1.

2.

3.

4.

5.

6.  [Heredoc in PHP manual](http://php.net/heredoc)

7.

8.

9.

10.

11.
12.
13.

14.