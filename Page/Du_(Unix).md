[Du_unix_output.png](https://zh.wikipedia.org/wiki/File:Du_unix_output.png "fig:Du_unix_output.png") **`du`**(***d**isk **u**sage*的缩写，磁盘使用情况)是一个估计某个特定目录或文件在文件系统上磁盘使用情况的标准Unix程序。

## 历史

`du`工具首次出现在AT\&T Unix的第一版中。

## 规范

默认情况下，[单一UNIX规范规定](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")，`du`显示当前目录每个文件与目录的被分配磁盘空间的情况。链接文件将会显示其本身大小而非其链接对象；目录则会显示其内容的大小。

由于`du`只反映磁盘分配情况而非实际文件大小，所以如果文件被删除后磁盘未被释放，其显示的数字会与[df报告的数字有所不同](https://zh.wikipedia.org/wiki/df "wikilink")。

## 用法

`du`可以带一个参数，即指定一个路径来工作；如果没有指定，则使用当前目录。[SUS指定了](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")`du`有以下这些选项：

  -
    `-a`，显示所有的文件和目录，而不仅仅显示目录。
    `-H`，计算命令行中指定链接对象的磁盘使用情况。
    `-k`，将大小除以1024字节，而非512字节显示。
    `-L`，计算任意链接对象的使用情况。
    `-s`，仅汇报当前目录总计的磁盘使用情况，而不显示每一个文件。
    `-x`，仅遍历指定路径所在设备上的文件与目录。

其他Unix和类Unix操作系统可能提供额外的选项。例如，[BSD](../Page/BSD.md "wikilink")与[GNU](../Page/GNU.md "wikilink")的`du`规定了一个`-h`选项，把磁盘使用情况的大小加上单位后缀，显示为一个用户更容易理解的形式。（如：10MB）

## 示例

KB单位的目录总大小：

``` bash
 $ du -sk *
 152304  directoryOne
 1856548 directoryTwo
```

更易读的目录总大小格式(Byte、KB、MB、GB、TB、PB)：

``` bash
 $ du -sh *
 149M directoryOne
 1.8G directoryTwo
```

当前目录下包含隐藏文件，子目录与文件的磁盘使用情况（从小到大排序）：

``` bash
 $ du -sk .[!.]* *| sort -n
```

当前目录下包含隐藏文件，子目录与文件的磁盘使用情况（从大到小排序）：

``` bash
 $ du -sk .[!.]* *| sort -nr
```

显示深度为1的目录大小及其总和

``` bash
 $ du -d 1 -c -h
```

## 参考

  - [Baobab](https://zh.wikipedia.org/wiki/Baobab_\(software\) "wikilink")

## 外部链接

  - [The Open Group Base规范中du的说明](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/du.html)

### 使用手册

  - [du](http://www.gnu.org/software/coreutils/manual/html_node/du-invocation.html) — [GNU](../Page/GNU.md "wikilink") [coreutils中的使用手册](https://zh.wikipedia.org/wiki/coreutils "wikilink")
  - [du](http://www.openbsd.org/cgi-bin/man.cgi?query=du) — [OpenBSD](../Page/OpenBSD.md "wikilink")中的使用手册
  - [du](http://leaf.dragonflybsd.org/cgi/web-man?command=du&section=ANY) — [Dragonflybsd中的使用手册](https://zh.wikipedia.org/wiki/Dragonflybsd "wikilink")

### 其他

  - [Disk space-related utilities](https://web.archive.org/web/20110515021820/http://freshmeat.net/search/?q=disk+space) at Freshmeat.net

[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink") [Category:Disk硬盘分析软件](https://zh.wikipedia.org/wiki/Category:Disk硬盘分析软件 "wikilink")