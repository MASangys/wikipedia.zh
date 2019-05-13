**Bash**，[Unix
shell的一種](../Page/Unix_shell.md "wikilink")，在1987年由[布萊恩·福克斯為了](../Page/布萊恩·福克斯.md "wikilink")[GNU計劃而编写](../Page/GNU計劃.md "wikilink")。1989年釋出第一個正式版本，原先是計劃用在[GNU作業系統上](../Page/GNU.md "wikilink")，但能运行于大多数[类Unix系统的操作系统之上](../Page/类Unix系统.md "wikilink")，包括[Linux與](../Page/Linux.md "wikilink")[Mac
OS X v10.4都將它作為預設shell](../Page/Mac_OS_X_v10.4.md "wikilink")。

Bash是[Bourne
shell的後繼相容版本與開放原始碼版本](../Page/Bourne_shell.md "wikilink")，它的名稱來自[Bourne
shell](../Page/Bourne_shell.md "wikilink")（sh）的一个双关语（*Bourne again* /
born again）：**B**ourne-**A**gain **SH**ell。

Bash是一个命令处理器，通常运行于文本窗口中，并能执行用户直接输入的命令。Bash还能从文件中读取命令，这样的文件称为脚本。和其他Unix
shell
一样，它支持文件名替换（通配符匹配）、[管道](../Page/管道_\(Unix\).md "wikilink")、[here文档](../Page/here文档.md "wikilink")、命令替换、变量，以及条件判断和循环遍历的结构控制语句。包括关键字、语法在内的基本特性全部是从[sh借鉴过来的](../Page/sh.md "wikilink")。其他特性，例如历史命令，是从[csh和](../Page/C_Shell.md "wikilink")[ksh借鉴而来](../Page/Korn_shell.md "wikilink")。总的来说，Bash虽然是一个满足[POSIX规范的shell](../Page/POSIX.md "wikilink")，但有很多扩展。

一个名为[Shellshock的安全漏洞在](../Page/Shellshock.md "wikilink")2014年9月初被发现，并迅速导致互联网上的一系列攻击。这个漏洞可追溯到1989年发布的1.03版本。

## 历史

由于[理查德·斯托曼对于之前一位开发者的进度不满](../Page/理查德·斯托曼.md "wikilink")，布莱恩·福克斯从1988年1月10日开始开发Bash。斯托曼和[自由软件基金会希望到一个能够运行已有的shell脚本的自由软件](../Page/自由软件基金会.md "wikilink")。他们把这看作是建成一个基于BSD和GNU的完全自由的操作系统的战略的重要部分。这是他们自己注资的几个项目之一。福克斯作为自由软件基金会的雇员承担了这项工作。1989年6月8日，福克斯发布了Bash的beta版本，版本号为.99。在福克斯离开于1992年中期到1994年中期的某个时候离开自由软件基金会之前，他一直担任Bash的主要维护者。之后，他的工作被传递给另一个早期贡献者，切特·雷米（Chet
Ramey）。

从那时起，在Linux用户当中sh在很大度上成为了最流行的shell，并成为许多Linux发行版默认的交互式shell（不过[Almquist
shell可能是默认的脚本shell](../Page/Almquist_shell.md "wikilink")）。在苹果公司的 OS X
操作系统上也是如此。Bash 也被移植到 Microsoft
Windows（通过[Cygwin和](../Page/Cygwin.md "wikilink")[MinGW](../Page/MinGW.md "wikilink")）。通过项目，Bash被移植到了[DOS](../Page/DOS.md "wikilink")。通过许多终端模拟软件，Bash被移植到[Novell
NetWare和](../Page/Novell_NetWare.md "wikilink")[Android](../Page/Android.md "wikilink")。微软在2016年的Build大会上宣布，Windows
10 添加了一个Linux子系统，完全支持Bash和其他Ubuntu下的二进制程序。

2014年9月24日，Stephane
Chazelas，一位工作于英国，致力于Unix/Linux和网络通信方面的专家，发现了Bash的一个安全漏洞。这个漏洞被命名为Shellshock，并被分配了编号
CVE-2014-6271、CVE-2014-6277、CVE-2014-7169。这个漏洞非常严重，因为使用Bash的[CGI脚本会变得脆弱](../Page/通用网关接口.md "wikilink")，使得攻击者可以执行任意的代码。这个漏洞与Bash通过环境变量把函数定义传递给shell子进程的方式有关。

## 语法与特性

bash的命令语法是Bourne shell命令语法的超集。数量庞大的Bourne
shell脚本大多不经修改即可以在bash中执行，只有那些引用了Bourne特殊变量或使用了Bourne的内置命令的脚本才需要修改。bash的命令语法很多来自[Korn
shell](../Page/Korn_shell.md "wikilink")（ksh）和[C
shell](../Page/C_shell.md "wikilink")（csh），例如命令行编辑，命令历史，目录栈，`$RANDOM`和`$PPID`变量，以及[POSIX的命令置换语法](../Page/POSIX.md "wikilink")：`$(...)`。作为一个交互式的shell，按下TAB键即可自动补全已部分输入的程序名，文件名，变量名等等。

使用'function'关键字时，Bash的函数声明与Bourne/Korn/POSIX脚本不兼容（Korn shell
有同样的问题）。不过Bash也接受Bourne/Korn/POSIX的函数声明语法。因为许多不同，Bash脚本很少能在Bourne或Korn解释器中运行，除非编写脚本时刻意保持兼容性。然而，随着Linux的普及，这种方式正变得越来越少。不过在POSIX模式下，Bash更加符合POSIX。

bash的语法针对Bourne shell的不足做了很多扩展。其中的一些列举在这里。

### 花括号扩展

花括号扩展是一个从C shell借鉴而来的特性，它产生一系列指定的字符串（按照原先从左到右的顺序）。这些字符串不需要是已经存在的文件。

``` bash
$ echo a{p,c,d,b}e
ape ace ade abe
$ echo {a,b,c}{d,e,f}
ad ae af bd be bf cd ce cf
```

花括号扩展不应该被用在可移植的shell脚本中，因为Bourne shell产生的结果不同。

``` shell
#! /bin/sh

# 传统的shell并不产生相同结果
echo a{p,c,d,b}e # a{p,c,d,b}e
```

当花括号扩展和通配符一起使用时，花括号扩展首先被解析，然后正常解析通配符。因此，可以用这种方法获得当前目录的一系列JPEG和PEG文件。

``` bash
ls *.{jpg,jpeg,png}    # 首先扩展为*.jpg *.jpeg *.png，然后解析通配符
echo *.{png,jp{e,}g}   # echo显示扩展结果；花括号扩展可以嵌套。
```

除了列举备选项，还可以用“..”在花括号扩展中指定字符或数字范围。较新的Bash版本接受一个整数作为第三个参数，指定增量。

``` bash
$ echo {1..10}
1 2 3 4 5 6 7 8 9 10
$ echo file{1..4}.txt
file1.txt file2.txt file3.txt file4.txt
$ echo {a..e}
a b c d e
$ echo {1..10..3}
1 4 7 10
$ echo {a..j..3}
a d g j
```

当花括号扩展和变量扩展一起使用时，变量扩展解析于花括号扩展之后。有时有必要使用内置的`eval`函数

``` bash
$ start=1; end=10
$ echo {$start..$end}  # 由于解析顺序，无法得到想要的结果
{1..10}
$ eval echo {$start..$end} # 首先进行变量扩展的解析
1 2 3 4 5 6 7 8 9 10
```

### 使用整数

与Bourne
shell不同的是bash不用另外生成进程即能进行整数运算。bash使用`((...))`命令和`$[...]`变量语法来达到这个目的：

``` bash
 VAR=55             # 将整数55赋值给变量VAR
 ((VAR = VAR + 1))  # 变量VAR加1。注意这里没有'$'
 ((++VAR))          # 另一种方法给VAR加1。使用C语言风格的前缀自增
 ((VAR++))          # 另一种方法给VAR加1。使用C语言风格的后缀自增
 echo $((VAR * 22)) # VAR乘以22并将结果送入命令
 echo $[VAR * 22]   # 同上，但为过时用法
```

`((...))`命令可以用于条件语句，因为它的退出状态是0或者非0（大多数情况下是1），可以用于是与非的条件判断：

``` bash
 if((VAR == Y * 3 + X * 2))
 then
         echo Yes
 fi

 ((Z > 23)) && echo Yes
```

`((...))`命令支持下列比较操作符：'`==`', '`!=`', '`>`', '`<`', '`>=`'，和'`<=`'。

bash不能在自身进程内进行[浮点数运算](../Page/浮点数.md "wikilink")。当前有这个能力的unix
shell只有[Korn shell和](../Page/Korn_shell.md "wikilink")[Z
shell](../Page/Z_shell.md "wikilink")。

### 输入输出重定向

bash拥有传统Bourne shell缺乏的I/O重定向语法。bash可以同时重定向标准输出和标准错误，这需要使用下面的语法：

``` bash
 command &> file
```

这比等价的Bourne shell语法"`command >
file 2>&1`"来的简单。2.05b版本以后，bash可以用下列语法重定向标准输入至字符串（称为here
string）：

``` bash
 command <<< "string to be read as standard input"
```

如果字符串包括空格就需要用引号包裹字符串。

**例子**: 重定向标准输出至文件，写数据，关闭文件，重置标准输出。

``` bash
 # 生成标准输出（文件描述符1）的拷贝文件描述符6
 exec 6>&1
 # 打开文件"test.data"以供写入
 exec 1>test.data
 # 产生一些内容
 echo "data:data:data"
 # 关闭文件"test.data"
 exec 1>&-
 # 使标准输出指向FD 6（重置标准输出）
 exec 1>&6
 # 关闭FD6
 exec 6>&-
```

打开及关闭文件

``` bash
 # 打开文件test.data以供读取
 exec 6<test.data
 # 读文件直到文件尾
 while read -u 6 dta
 do
   echo "$dta"
 done
 # 关闭文件test.data
 exec 6<&-
```

抓取外部命令的输出

``` bash
  # 运行'find'并且将结果存于VAR
  # 搜索以"h"结尾的文件名
  VAR=$(find . -name "*h")
```

### 进程内的正则表达式

bash 3.0支持进程内的[正则表达式](../Page/正则表达式.md "wikilink")，使用下面的语法：

``` bash
 [[string_=~_regex|string =~ regex]]
```

正则表达式语法同regex(7) man
page所描述的一致。正则表达式匹配字符串时上述命令的退出状态为0，不匹配为1。正则表达式中用圆括号括起的子表达式可以访问shell变量`BASH_REMATCH`，如下：

``` bash
 if [[abcfoobarbletch_=~_'foo(bar)bl(.*)'|abcfoobarbletch =~ 'foo(bar)bl(.*)']]
 then
         echo The regex matches!
         echo $BASH_REMATCH      -- outputs: foobarbletch
         echo ${BASH_REMATCH[1]} -- outputs: bar
         echo ${BASH_REMATCH[2]} -- outputs: etch
 fi
```

使用这个语法的性能要比生成一个新的进程来运行`grep`命令优越，因为正则表达式匹配在bash进程内完成。如果正则表达式或者字符串包括空格或者shell
[关键字](../Page/关键字.md "wikilink")，（诸如'`*`'或者'`?`'），就需要用引号包裹。Bash 4
开始的版本已经不需要这么做了。

### 转义字符

`$'string'`
形式的字符串会被特殊处理。字符串会被展开成`string`，并像[C语言那样将反斜杠及紧跟的字符进行替换](../Page/C.md "wikilink")。反斜杠转义序列的转换方式如下：

| 转义字符   | 扩展成...                 |
| ------ | ---------------------- |
| `\a`   | 响铃符                    |
| `\b`   | 退格符                    |
| `\e`   | ANSI转义符，等价于`\033`      |
| `\f`   | 馈页符                    |
| `\n`   | 换行符                    |
| `\r`   | 回车符                    |
| `\t`   | 水平制表符                  |
| `\v`   | 垂直制表符                  |
| `\\`   | 反斜杠                    |
| `\'`   | 单引号                    |
| `\nnn` | 十进制值为nnn的8-bit字符（1－3位） |
| `\xHH` | 十六进制值为HH的8-bit字符（1或2位） |
| `\cx`  | control-X字符            |

转义字符

扩展后的结果将被单引号包裹，就好像美元符号一直就不存在一样。

双引号包裹的字符串前若有一个美元符号（`$"..."`）将会使得字符串被翻译成符合当前locale的语言。如果当前locale是C或者POSIX，美元符号会被忽略。如果字符串被翻译并替换，替换后的字符串仍被双引号包裹。

### 关联数组

Bash 4.0 开始支持关联数组，通过类似[AWK的方式](../Page/Awk.md "wikilink")，对于多维数组提供了伪支持。

``` bash
$ declare -A a         # 声明一个名为a的伪二位数组
$ i=1; j=2
$ a[$i,$j]=5           # 将键 "$i,$j" 与值 5 对应
$ echo ${a[$i,$j]}
```

### 移植性

调用Bash时指定 `--posix` 或者在脚本中声明 `set -o posix` ，可以使得Bash几乎遵循 POSIX 1003.2
标准。若要保证一个Bash脚本的移植性，至少需要考虑到 Bourne shell，即Bash取代的shell。Bash有一些传统的
Bourne shell 所没有的特性，包括以下这些：

  - 某些扩展的调用选项
  - 命令替换（即`$()`）（尽管这是 POSIX 1003.2 标准的一部分）
  - 花括号扩展
  - 某些数组操作、关联数组
  - 扩展的双层方括号判断语句
  - 某些字符串生成操作
  - 进程替换
  - 正则表达式匹配符
  - Bash特有的内置工具
  - 协进程

### 键盘快捷键

Bash默认使用Emacs的快捷键，可以通过 `set -o vi` 让它使用Vi的快捷键

### 进程管理

Bash有两种执行命令的模式：批处理模式、并发模式。 要以批处理模式执行命令（即按照顺序），必须用`;`分隔

``` bash
command1 ; command2
```

在这个例子中，当`command1`执行完毕，即执行`command2` 要并发执行两个命令，它们必须用`&`分隔

``` bash
command1 & command2
```

在这种情况下，`command1` 在后台执行（通过`&`），从而立即将控制返回到shell，以执行`command2`

总结：

  - 一般命令在前台执行（`fg`），执行完毕后，控制返回给用户。
  - 在命令后面加上`&`，它会在后台执行（`bg`），并将特殊的环境变量`$!`设置为该任务的进程ID。这时shell可以并发执行其他命令。
  - 按`Ctrl+z`可以挂起前台运行的程序
  - 挂起的程序可以用`fg`恢复到前台，或者用`bg`恢复到后台
  - 后台程序试图写入数据到终端设备时（与写入标准输出不同）可能被阻塞。
  - shell可以等待一个后台任务执行完成，只需使用`wait`命令，加上进程ID或者任务序号；也可以等待所有的后台任务，只需使用不加参数的`wait`

## 启动脚本

bash启动的时候会运行各种不同的脚本。

当bash作为一个登录的交互shell被调用，或者作为非交互shell但带有`--login`参数被调用时，它首先读入并执行文件`/etc/profile`。然后它会依次寻找`~/.bash_profile`，`~/.bash_login`，和`~/.profile`，读入并执行第一个存在且可读的文件。`--noprofile`参数可以阻止bash启动时的这种行为。

当一个登录shell退出时，bash读取并执行`~/.bash_logout`文件，如果此文件存在。

当一个交互的非登录shell启动后，bash读取并执行`~/.bashrc`文件。这个行为可以用`--norc`参数阻止。`--rcfile
file`参数强制bash读取并执行指定的`file`而不是默认的`~/.bashrc`。

如果用`sh`来调用bash，bash在启动后进入*posix*模式，它会尽可能模仿sh历史版本的启动行为，以便遵守[POSIX标准](../Page/POSIX.md "wikilink")。用`sh`名字调用的非交互shell不会去读取其他启动脚本，`--rcfile`参数无效。

当bash以POSIX模式启动时（例如带有`--posix`参数）它使用POSIX标准来读取启动文件。在此模式下，交互shells扩展变量`ENV`，从以此为文件名的文件中读取命令并执行。

bash会探测自己是不是被远程shell守护程序运行（通常是`rshd`）。如果是，它会读取并执行`~/.bashrc`中的命令。但是`rshd`一般不会用rc相关参数调用shell，也不会允许指定这些参数。

### Bash与Bourne shell和csh启动脚本的比较

Bash的特性是从Bourne shell和csh发展而来，因此一定程度上允许同Bourne
shell的启动文件共享，并提供一些csh用户熟悉的启动特性。

#### 设置可继承的环境变量

Bourne shell登陆时使用 `~/.profile`
来设置环境变量，这些环境变量可以被子进程继承。Bash可以以兼容的方式使用`~/.profile`
，只需在Bash自有的脚本中显式执行下面这行代码。通过在`~/.profile` 中避免使用Bash特有的语法，就可以和Bourne
shell保持兼容性。

``` bash
. ~/.profile
```

#### 别名和函数

更通用的函数以及借鉴自csh的“别名(alias)”很大程度上取代了Bourne
shell的别名(alias)和函数。然而这两个特性一般不能从登录式shell中继承，在该登录式shell的子shell中，它们必须被重新定义。尽管有个环境变量`ENV`可以被用于这个问题，不过
csh 和 Bash 都可以用子shell的启动脚本直接处理。在Bash当中，`~/.bashrc`
是交互式子shell启动时执行的脚本。如果想要在登录式shell中使用
`~/.bashrc` 定义的函数，可以在 `~/.bash_login` 的环境变量后面加上这样一行：

``` bash
. ~/.bashrc
```

#### 登录与登出时执行的命令

最初登录时，csh 执行 `~/.login`
，可以执行一些只在登录时执行的操作，例如显示系统负载、硬盘状态、是否收到新邮件、在日志中记录登录时间，等等。Bourne
shell 可以在 `~/.profile` 文件中模拟这种行为，但并没有预先定义文件名。可以在 `~/.bash_profile`
文件的环境变量设置和函数定义的后面添加这样一行：

``` bash
. ~/.bash_login
```

与之类似，csh还有一个文件 `~/.logout` ，这个文件只在登录式shell退出时执行。Bash与之对应的文件是
`~/.bash_logout` ，并且不需要专门的设置。在 Bourne shell 中，`trap` 这个内置工具可以实现类似的效果。

#### 兼容旧环境的Bash启动脚本示例

下面这个 `~/.bash_profile` 的框架与 Bourne shell 兼容，并且为 `~/.bashrc` 和
`~/.bash_login` 提供类似于 csh 的语义。` [ -r  `*`文件名`*`]` 测试指定文件是否存在，如果不存在，跳过
`&&` 后面的部分

``` bash
[ -r ~/.profile ] && . ~/.profile             # 只使用Bourne shell的语法设置环境变量
if [ -n "$PS1" ] ; then                       # 判断是否是交互式shell
   [ -r ~/.bashrc     ] && . ~/.bashrc        # 加载~/.bashrc（tty、prompt、函数设置等）
   [ -r ~/.bash_login ] && . ~/.bash_login    # 执行登录式shell登录时的任务
fi                                            # if块的结束标志
```

### Bash 启动脚本与操作系统相关的问题

一些 Unix 和 Linux 版本常在 `/etc` 放置 Bash
的系统级启动脚本。Bash在其标准的初始化过程中执行它们，不过其他启动脚本可以按照不同于Bash启动序列文档所述的顺序来读取这些文件。root
用户的文件默认内容，以及新用户被创建时系统提供的默认文件可能有问题。启动 [X
Window系统](../Page/X_Window系統.md "wikilink") 的启动脚本可能使用用户的 Bash
启动脚本尝试在 [窗口管理器](../Page/窗口管理器.md "wikilink")
启动之前设置用户的环境变量。这些问题常常可以通过使用
`~/.xsession` 或者 `~/.xprofile` 来读取 `~/.profile` 而解决。

## 参见

  - [Unix shell](../Page/Unix_shell.md "wikilink")

## 脚注

## 外部链接

  - [GNU
    Bash主页](https://web.archive.org/web/20060813115916/http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html)
  - [GNU Bash在GNU的主页](http://www.gnu.org/software/bash/bash.html)
  - [bashdb](http://bashdb.sourceforge.net)，带有调试器的Bash
  - [Bash入门指南](http://tldp.org/LDP/Bash-Beginners-Guide/html/index.html)
  - [Bash同标准unix
    shell的不同](http://markhobley.yi.org/linux/packages/shells/bash/bashdiff.html)
  - [Bash by
    example](http://www-128.ibm.com/developerworks/library/l-bash.html)
    Bash基础编程

{{-}}

[Category:Unix_shells](https://zh.wikipedia.org/wiki/Category:Unix_shells "wikilink")
[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")