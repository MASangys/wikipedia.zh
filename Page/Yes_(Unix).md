**`yes`**是一个[Unix命令](https://zh.wikipedia.org/wiki/Unix "wikilink")，这一程序不断输出表示肯定的回应（或是用户指定的字符串）直到程序被结束。

## 描述

`yes`先输出'y'或者任意用户以命令行参数形式给出的字符串，再输出一个[换行](https://zh.wikipedia.org/wiki/换行 "wikilink")，并反复这个过程直到用户终止或程序被[杀死](https://zh.wikipedia.org/wiki/kill_\(Unix\) "wikilink")。当作为管道接入其他命令时，程序在管道断开时结束（例如当另一程序完成执行时）。

这一命令也用于测试系统处理高负载的能力，因为使用`yes`将对单处理器系统导致100%的处理器使用率（对于[多核心系统](https://zh.wikipedia.org/wiki/多核心 "wikilink")，进程必须为每个处理器执行）。因此，这个命令可以用于调查系统的冷却系统是否可以在处理器负载保持在100%时有效运作。

## 使用

`yes`可对一些需要用户应答的程序输出表示确定的回应（也可以输出否认的回应，如命令："`yes n`"）,这样就可以使一些需要用户交互的命令以非交互的形式运行。

这种用法或许在今天已经过时，因为大多询问用户回应的命令都有‘force’参数（例如："[`rm`](../Page/Rm_\(Unix\).md "wikilink")`  -f `"），或者是‘assume-yes’参数（例如：[Debian](../Page/Debian.md "wikilink")及其衍生系统中的"[`apt-get`](https://zh.wikipedia.org/wiki/Advanced_Packaging_Tool "wikilink")`  -y `"）

例如,下列命令：

``` bash
   % rm -f *.txt
```

与下列命令：

``` bash
   % yes | rm *.txt
```

的效果是一样的。

`yes`命令也常与[head命令配合使用](https://zh.wikipedia.org/wiki/head_\(Unix\) "wikilink")，产生体积较大的文件供一些测试工作使用。例如，执行命令：

``` bash
   % yes 1234567 | head -1000 > file
```

将产生一个包含1000行的文件，其中的每一行都包含8个字符（1, 2, 3, 4, 5, 6, 7 与换行）

2006年，`yes`命令因为用于测试用户的[MacBook](../Page/MacBook.md "wikilink")是否受到了[间歇性关机问题的影响而获得了一些知名度](https://zh.wikipedia.org/wiki/间歇性关机 "wikilink")。在[Mac OS X下通过在](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Terminal执行两次yes命令](https://zh.wikipedia.org/wiki/Terminal_\(Mac_OS_X\) "wikilink")，用户可以将他们计算机的CPU负载提升到最大，这样就可以检查间歇性关机错误是否是由于散热相关问题造成的。\[1\] \[2\]

## 参考资料

## 外部链接

  - [`yes`手册页](http://www.linuxmanpages.com/man1/yes.1.php)（[GNU](../Page/GNU.md "wikilink")版）

[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")

1.
2.