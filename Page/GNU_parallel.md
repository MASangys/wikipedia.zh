GNU
**parallel**是用于[Linux和其他](../Page/Linux.md "wikilink")[类Unix操作系统的](https://zh.wikipedia.org/wiki/类Unix "wikilink")[命令行驱动的实用工具](https://zh.wikipedia.org/wiki/命令行 "wikilink")，它允许用户[并行的执行](../Page/并行计算.md "wikilink")[shell脚本](../Page/Bourne_shell.md "wikilink")。GNU
parallel是Ole
Tange用[Perl写的](../Page/Perl.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")。它可在[GPLv3条款下获得](https://zh.wikipedia.org/wiki/GPLv3 "wikilink")\[1\]。GNU
parallel可以在远程服务器上运行[作业](https://zh.wikipedia.org/wiki/作业_\(计算机\) "wikilink")，它使用[ssh与远程机器进行通信](../Page/Secure_Shell.md "wikilink")。

## 用法

最常用的用法是替代shell循环，比如将

``` bash
    for x in $(cat list); do
        do_something "$x"
    done | process_output
```

变为如下形式：

``` bash
    cat list | parallel do_something | process_output
```

这里的文件`list`包含给`do_something`的实际参数，而这里的`| process_output`可以省略。

使用parallel的脚本通常比使用[pexec的脚本易读](https://zh.wikipedia.org/wiki/pexec "wikilink")。

程序parallel的特征还有：

  - 聚组[标准输出和](https://zh.wikipedia.org/wiki/标准输出 "wikilink")[标准错误输出](https://zh.wikipedia.org/wiki/标准错误输出 "wikilink")，parallel延期输出直到所有运行作业完成；
  - 可保持输出的次序同于输入的次序；
  - 恰当的处理包含特殊字符的文件名，比如空格、单引号、双引号、&（ampersand）和UTF-8编码字符；

作为缺省，parallel并行运行作业的数量同于[CPU核心数目](https://zh.wikipedia.org/wiki/CPU "wikilink")。

## 例子

``` bash
 find . -name "*.foo" | parallel grep bar
```

上述命令是如下命令的并行等价：

``` bash
 find . -name "*.foo" -exec grep bar {} +
```

它在当前[目录及其子目录中的名字结束于](../Page/目录_\(文件系统\).md "wikilink")`.foo`的所有文件中查找[字符串](../Page/字符串.md "wikilink")`bar`的出现。parallel将如期运行除非遇到名字包含[换行的文件](https://zh.wikipedia.org/wiki/换行 "wikilink")。为了避免这个限制可以使用：

``` bash
 find . -name "*.foo" -print0 | parallel -0 grep bar
```

上述命令使用[空字符来分隔文件名](../Page/空字符.md "wikilink")。

``` bash
 find . -name "*.foo" | parallel -X mv {} /tmp/trash
```

上述命令使用`{}`来告知`parallel`将`{}`替代为实际参数列表。

``` bash
 find . -maxdepth 1 -type f -name "*.ogg" | parallel -X -r cp -v -p {} /home/media
```

上述命令所做同于：

``` bash
 cp -v -p *.ogg /home/media
```

但是，使用`find`/`parallel`/`cp`的前者命令更加有效利用资源，并且在\*.ogg展开后对于shell而言太大的情况下不作为错误而停止。

## 参见

  - [xargs](https://zh.wikipedia.org/wiki/xargs "wikilink")
  - [pexec](https://zh.wikipedia.org/wiki/pexec "wikilink")
  - [PPSS - (Distributed) Parallel Processing Shell
    Script](https://github.com/louwrentius/PPSS)

## 引用

## 外部链接

  -
  - [GNU parallel的项目页和手册页](https://savannah.gnu.org/projects/parallel/)

[Category:用Perl编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Perl编程的自由软件 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")

1.