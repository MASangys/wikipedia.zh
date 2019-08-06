在[计算机技术中](https://zh.wikipedia.org/wiki/计算机技术 "wikilink")，**`echo`**是一个[DOS](../Page/DOS.md "wikilink")、[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")、[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Singularity](../Page/Singularity.md "wikilink")、[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix系统](../Page/类Unix系统.md "wikilink")中的[命令](../Page/命令_\(计算机\).md "wikilink")，用来将[字符串](../Page/字符串.md "wikilink")输出到[终端上](https://zh.wikipedia.org/wiki/终端 "wikilink")。它通常在[shell脚本和](https://zh.wikipedia.org/wiki/shell脚本 "wikilink")[批处理](../Page/批处理.md "wikilink")中使用，以将状态信息输出到屏幕或文件中。

## 使用范例

``` bash
$ echo This is a test.
This is a test.
$ echo "This is a test." > ./test.txt
$ cat ./test.txt
This is a test.
```

可以使用[ANSI转义代码图形再现序列](https://zh.wikipedia.org/wiki/ANSI转义代码 "wikilink")（*SGR* sequences）输出彩色文字：

``` bash
FGRED=`echo "\033[31m"`
FGCYAN=`echo "\033[36m"`
BGRED=`echo "\033[41m"`
FGBLUE=`echo "\033[35m"`
BGGREEN=`echo "\033[42m"`

NORMAL=`echo "\033[m"`

然后：
echo "${FGBLUE} Text in blue ${NORMAL}"
echo "Text normal"
echo "${BGRED} Background in red"
echo "${BGGREEN} Background in Green and back to Normal ${NORMAL}"
```

有的Unix变种（例如Linux）支持选项`-n`和`-e`，且除非提供`-e`选项，否则不处理转义序列。例如，`` FGRED=`echo -e "\033[31m"` `` 可能会在Linux下使用。不幸的是，由于历史上[BSD](../Page/BSD.md "wikilink")和[System V的不兼容性](https://zh.wikipedia.org/wiki/System_V "wikilink")，这不是标准选项\[1\]；有问题时，可以使用[`printf`](https://zh.wikipedia.org/wiki/printf "wikilink")命令。因此，建议使用`printf`，确保转义序列被正确处理。等效的`printf`代码就是`` FGRED=`printf "\033[31m"` ``。

DOS、Microsoft Windows支持选项`on`和`off`。例如，`echo off`可以关闭回显，即不显示命令提示符。

``` dos
C:\>ECHO off
::注意下一条命令前无命令提示符
ECHO Hello World!
Hello World!
ECHO on
C:\>
```

一般，批处理会在首行执行此条命令，以关闭执行过程中的回显。然而，执行此条命令亦会显示命令提示符，需使用**`@`**`echo off`以关闭该条命令的回显。

``` dos
@ECHO off
ECHO Hello World!
PAUSE
```

## 实现范例

在[C语言中](https://zh.wikipedia.org/wiki/C语言 "wikilink")，`echo`命令可以用几行[代码实现](../Page/源代码.md "wikilink")：

``` c
#include <stdlib.h>
#include <stdio.h>
/* echo command-line arguments; 1st version */
int main(int argc, char *argv[])
{
  int i;
  for (i = 1; i < argc-1; i++)
  {
      printf("%s%s", argv[i], " ");
  }
  printf("%s%s", argv[argc-1], "\n");
  return EXIT_SUCCESS;
}
```

[Perl](../Page/Perl.md "wikilink")中的实现也很简单：

``` perl
#!/usr/bin/env perl
print join " ", @ARGV;
```

## 参考

## 外部链接

  -
  - \[<http://technet.microsoft.com/zh-cn/subscriptions/cc756140(v=ws.10>).aspx Microsoft TechNet上的Echo帮助\]

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [MS-DOS命令列表](../Page/MS-DOS命令列表.md "wikilink")

[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink") [Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:内部DOS命令](https://zh.wikipedia.org/wiki/Category:内部DOS命令 "wikilink")

1.  [IEEE Std 1003.1, 2004, documentation for echo](http://www.opengroup.org/onlinepubs/009695399/utilities/echo.html)