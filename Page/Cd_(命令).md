****，有时也写作****（**ch**ange
**dir**ectory，改变目录），是在[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")、[Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[DOS操作系统下用于改变](../Page/DOS.md "wikilink")[工作目录的](https://zh.wikipedia.org/wiki/工作目录 "wikilink")[命令行命令](../Page/命令行界面.md "wikilink")。在Unix的[Shell脚本与Windows或DOS的](../Page/Shell脚本.md "wikilink")[批处理文件中亦可使用](../Page/批处理.md "wikilink")。

## 用法

[目录是](../Page/目录_\(文件系统\).md "wikilink")[文件系统用于保存文件的逻辑区段](../Page/文件系统.md "wikilink")，而目录还可以包含有其他的目录。通过`cd`命令，可以前进到子目录、后退到父目录、回到根目录（Unix下为“`/`”，DOS下为“`\`”）或者进入到任何给出的目录中去。

假设下面的这一小段为Unix文件系统，显示的是一位用户的起始目录（以“`~`”表示），其中有一个文件（“`text.txt`”）和三个子目录。

[chdir_example.png](https://zh.wikipedia.org/wiki/File:chdir_example.png "fig:chdir_example.png")

当用户的当前工作目录为起始目录（“`~`”）时，首先输入命令“`ls`”，然后输入“`cd games`”，会产生下列的效果：

``` console
user@wikipedia:~$ ls
workreports games encyclopedia text.txt
user@wikipedia:~$ cd games
user@wikipedia:~/games$
```

该用户现在的工作目录即为“game”目录。

在DOS中，与之相似的过程（“起始目录”的概念可能会不适用，这取决于该DOS的版本）会像这样显示：

``` doscon
   C:\> dir
   workreports        <DIR>       Wed Oct 9th   9:01
   games              <DIR>       Tue Oct 8th  14:32
   encyclopedia       <DIR>       Mon Oct 1st  10:05
   text        txt           1903 Thu Oct10th  12:43
   C:\> cd games
   C:\games>
```

应注意的一点是，在不同的操作系统中，如果不给出变量会让`cd`产生不同的结果。例如，如果在DOS下不给出变量而执行，会显示出当前的[工作目录来](https://zh.wikipedia.org/wiki/工作目录 "wikilink")；而在Unix下不给出变量而执行，则会返回到起始目录去。在脚本或批处理内执行的`cd`，也会产生不同的结果。在DOS中，批处理文件中使用的该命令可以直接改变调用者的当前目录；而在Unix下，使用`cd`命令的脚本则无法改变调用者的当前目录。这是因为在Unix下的脚本通常在子外壳中执行。

## 工作原理

`cd`通常是由[命令行](https://zh.wikipedia.org/wiki/命令行 "wikilink")[解释器内建提供的](https://zh.wikipedia.org/wiki/解释器 "wikilink")。绝大多数的[Unix
shell](../Page/Unix_shell.md "wikilink")（[Bourne
shell](../Page/Bourne_shell.md "wikilink")、[tcsh](https://zh.wikipedia.org/wiki/tcsh "wikilink")、[bash等](https://zh.wikipedia.org/wiki/bash "wikilink")）、Windows的[`cmd.exe`](https://zh.wikipedia.org/wiki/cmd.exe "wikilink")和[Windows
PowerShell](../Page/Windows_PowerShell.md "wikilink")、以及DOS的[`COMMAND.COM`](https://zh.wikipedia.org/wiki/COMMAND.COM "wikilink")均是这种情况。

Windows的命令行外壳通常使用[Windows
API来改变当前的工作目录](../Page/Windows_API.md "wikilink")；而Unix系统的**`cd`**则是调用[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")
[C的函数](https://zh.wikipedia.org/wiki/C语言 "wikilink")**`chdir()`**：即是，当该命令执行时，不会为前往另一个目录而创建一个新的进程，而是由外壳代为执行这条命令，[ls等其他命令也是这种情况](https://zh.wikipedia.org/wiki/ls "wikilink")。这是因为，创建新的[进程时](https://zh.wikipedia.org/wiki/进程 "wikilink")，[子进程会继承](../Page/子进程.md "wikilink")[父进程创建时的目录](../Page/父进程.md "wikilink")。而如果`cd`命令继承了父进程的目录，则它永远也不能达到它的目标。

## 参见

  - [CD
    (DOS命令)](https://zh.wikipedia.org/wiki/MS-DOS命令列表#cd_或_chdir "wikilink")
  - [chroot](https://zh.wikipedia.org/wiki/chroot "wikilink")

## 参考文献

<div class="references-small">

  -

</div>

## 外部链接

  - [Windows XP \> Command-line reference A-Z \> Chdir
    (Cd)](https://technet.microsoft.com/en-us/library/bb490875.aspx)
    from [Microsoft
    TechNet](https://zh.wikipedia.org/wiki/Microsoft_TechNet "wikilink")

  -
{{-}}

[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:内部DOS命令](https://zh.wikipedia.org/wiki/Category:内部DOS命令 "wikilink")
[Category:OS/2](https://zh.wikipedia.org/wiki/Category:OS/2 "wikilink")
[Category:文件系统目录](https://zh.wikipedia.org/wiki/Category:文件系统目录 "wikilink")