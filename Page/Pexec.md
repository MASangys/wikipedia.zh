**pexec**是用于[Linux和其他](../Page/Linux.md "wikilink")[类Unix操作系统的](https://zh.wikipedia.org/wiki/类Unix "wikilink")[命令行实用工具](https://zh.wikipedia.org/wiki/命令行 "wikilink")，它允许用户[并行的执行](../Page/并行计算.md "wikilink")[shell](../Page/Bourne_shell.md "wikilink")[命令](../Page/命令_\(计算机\).md "wikilink")。指定代码可以要么在本地要么在远程主机上执行，它使用[ssh与远程主机建立安全通道](../Page/Secure_Shell.md "wikilink")。类似于shell循环，在循环开始任务重复时变更一个变量，它可以将多个值传递给指定命令或脚本。pexec是[自由软件实用工具](../Page/自由软件.md "wikilink")，是[GNU计划的一部分](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")\[1\]，它可在[GPLv3条款下获得](https://zh.wikipedia.org/wiki/GPLv3 "wikilink")\[2\]，是当前[Debian稳定发行版的一部分](../Page/Debian.md "wikilink")\[3\]。

## 用法

最常用的用法是替代shell循环，例如将：

``` bash
 for x in v1 v2 v3 v4 ; do
     do_something $x
 done
```

替代为如何下形式：

``` bash
 pexec -r v1 v2 v3 v4 -e x -o - -c 'do_something $x'
```

这里的集合有四个元素v1、v2、v3、v4，定义了（环境）变量$x可有的值。程序pexec的特征还有：

  - 自动重定向[标准输入](https://zh.wikipedia.org/wiki/标准输入 "wikilink")、[标准输出和](https://zh.wikipedia.org/wiki/标准输出 "wikilink")[标准错误输出来自或去到正规文件](https://zh.wikipedia.org/wiki/标准错误输出 "wikilink")；
  - 从文件而非命令行参数获得输入集合；
  - 重新格式化输出和错误流的能力；
  - 支持在shell循环内部的[互斥排他和原子性命令执行](https://zh.wikipedia.org/wiki/Mutex "wikilink")（为了避免不希望的高I/O）；
  - 使用其他[remote
    shell替代](../Page/远程外壳.md "wikilink")[ssh](../Page/Secure_Shell.md "wikilink")；
  - 使用监管（supervisor）守护程序进行在pexec的并行实例间的资源平衡。

可选特征可以使用[命令行参数来获取](https://zh.wikipedia.org/wiki/命令行参数 "wikilink")。作为缺省，pexec尝试检测[CPU数目并全部使用它们](https://zh.wikipedia.org/wiki/CPU "wikilink")。

## 参见

  - [GNU parallel](../Page/GNU_parallel.md "wikilink")
  - [xargs](https://zh.wikipedia.org/wiki/xargs "wikilink")

## 引用

## 外部链接

  - [pexec的手册页](https://www.gnu.org/software/pexec/pexec.1.html)
  - [项目主页](https://www.gnu.org/software/pexec/)

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")

1.
2.  [www.gnu.org/software/pexec/](https://www.gnu.org/software/pexec/)
3.  [packages.debian.org/stable/pexec](https://packages.debian.org/stable/pexec)