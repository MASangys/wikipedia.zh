**`mkdir`**（，创建目录）[命令在](../Page/命令_\(计算机\).md "wikilink")[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、[DOS](../Page/DOS.md "wikilink")、[OS/2和](https://zh.wikipedia.org/wiki/OS/2 "wikilink")[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[操作系统以及](../Page/操作系统.md "wikilink")[PHP脚本语言中用于创建一个](../Page/PHP.md "wikilink")[目录](../Page/目录_\(文件系统\).md "wikilink")。DOS、OS/2和Windows中，这条指令常被简写用作**`md`**。

## 用法

一般用法如下：

``` bash
mkdir name_of_directory
```

`name_of_directory`是将被创建的目录名。如上所示输入后，会在当前目录下创建新目录。On Unix and Windows
(with Command extensions enabled,\[1\] the default \[2\]), multiple
directories can be specified, and `mkdir` will try to create all of
them.

### 选项

在类Unix操作系统中，`mkdir`提供参数。最常用的三个参数为：

  - `-p`: will also create all directories leading up to the given
    directory that do not exist already. If the given directory already
    exists, ignore the error.
  - `-v`：显示mkdir创建的每个目录。通常与`-p`配合使用。
  - `-m`：指定目录的[octal
    permissions](https://zh.wikipedia.org/wiki/File_system_permissions#Numeric_notation "wikilink")。

`-p` is most often used when using `mkdir` to build up complex directory
hierarchies, in case a necessary directory is missing or already there.
`-m` is commonly used to lock down temporary directories used by [shell
scripts](https://zh.wikipedia.org/wiki/shell_script "wikilink").

### 示例

## 历史

## 参见

## 参考资料

## 外部链接

  - [Microsoft TechNet Mkdir
    article](http://technet.microsoft.com/en-us/library/bb490930.aspx)

  -
[Category:Unix_SUS2008_utilities](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008_utilities "wikilink")
[Category:Internal_DOS_commands](https://zh.wikipedia.org/wiki/Category:Internal_DOS_commands "wikilink")
[Category:Windows_administration](https://zh.wikipedia.org/wiki/Category:Windows_administration "wikilink")

1.
2.