**mv**（）是[类Unix操作系统中移动单个或多个](https://zh.wikipedia.org/wiki/类Unix "wikilink")[文件或](https://zh.wikipedia.org/wiki/计算机文件 "wikilink")[目录的命令](../Page/目录_\(文件系统\).md "wikilink")。一般在移动操作之后，原来的文件或目录不能再次访问。移动后的文件名可以与原来相同（只要不与原文件在相同目录中），也可以不同。当需要移动的文件和新文件位于同一[文件系统上时](../Page/文件系统.md "wikilink")，mv命令只是将原始文件[重命名来达到移动的效果](https://zh.wikipedia.org/wiki/重命名 "wikilink")。操作要求拥有需要被修改目录的写入权限。

## 与已存在文件的冲突

当文件将被移动时，若目标目录含有与原始文件同名的文件，则目标文件将被删除。如果已存在的目标文件并没有写权限，但它的所在目录拥有写权限，则mv命令在移动前请求用户确认操作（当mv在终端中执行时）。但是使用
-f (强制) 选项来移动时，mv命令会跳过用户确认环节而直接执行移动。

## 移动行为

### 选项

大多数版本的mv命令支持以下选项：

  - `-h` 帮助模式，显示支持的附加选项。 使用**`man mv`**命令可以查看在你所使用的操作系统中mv命令支持的详细参数选项。
  - `-i`
    交互模式，在将要覆盖一个已存在文件之前在[标准错误中输出提示](https://zh.wikipedia.org/wiki/標準串流#標準錯誤輸出_\(stderr\) "wikilink")，若用户回答以'Y'或'y'字母开头，则覆盖操作将继续执行（覆盖此选项之前的-f和-n选项）。
  - `-n` 不覆盖已存在的文件。（覆盖此选项之前的-f和-i选项）。
  - `-f` 强制模式，强制覆盖目标文件（覆盖此选项之前的-i和-n选项）。
  - `-v` 详述模式，在移动文件（或目录）后列出它们的名字。

附加选项（可以使用命令 **`man mv`** 以查看详情）：

  - `-u` 更新选项，也就是只在原始文件比目标文件新或目标文件不存在时执行移动。
  - `-b` 备份选项，使用一个`~`作为后缀来备份已存在的目标文件。

## 示例

将'myfile'重命名为'myoldfilename'：

``` bash
mv myfile myoldfilename
```

从当前目录移动'myfile'到用户[家目录](../Page/家目录.md "wikilink")：

``` bash
 mv myfile ~/myfile
```

将'myfile'移动到[相对路径位置](https://zh.wikipedia.org/wiki/相对路径 "wikilink")'subdir/myfile'：

``` bash
 mv myfile subdir/myfile
 mv myfile subdir            # 此命令与前一命令作用相同，但不指明目标文件的文件名（暗示使用相同的文件名）
```

将'myfile'移动到子目录'subdir',并改名为'myfile2'：

``` bash
 mv myfile subdir/myfile2
```

移动'be.03'文件到已挂载目录'/mnt/bkup'的子目录'bes'中（原文件将在移动完成后被删除）：

``` bash
 mv be.03 /mnt/bkup/bes
```

移动多个文件到'mydir'（这些文件是'afile' 'another' '/home/yourdir/yourfile'）：

``` bash
 mv afile another /home/yourdir/yourfile mydir
```

将以'Jun'开头的文件都移到'bkup/06'目录中，并输出被移动文件的详细清单：

``` bash
 mv -v Jun* bkup/06
```

查看关于mv命令的简单帮助，包括命令语法：

``` bash
 mv --help
```

查看mv命令的[手册页](../Page/手册页.md "wikilink")：

``` bash
 man mv
```

## 参见

  - [cp](https://zh.wikipedia.org/wiki/cp_\(Unix\) "wikilink")
  - [ln](https://zh.wikipedia.org/wiki/ln_\(Unix\) "wikilink")
  - [rm](https://zh.wikipedia.org/wiki/rm_\(Unix\) "wikilink")
  - [Unix工具列表](https://zh.wikipedia.org/wiki/Unix工具列表 "wikilink")
  - [move](https://zh.wikipedia.org/wiki/move_\(命令\) "wikilink")
  - [ren](https://zh.wikipedia.org/wiki/ren_\(命令\) "wikilink")

## 外部参考

  - [mv](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/mv.html):
    move files - Commands & Utilities Reference, The Single UNIX®
    Specification, Issue 7 from The Open Group mv
  - [mv(1)](http://linux.die.net/man/1/mv): move (rename) files – Linux
    User Commands Manual

[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")