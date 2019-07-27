**Thompson shell**是歷史上第一個[Unix
shell](../Page/Unix_shell.md "wikilink")，1971年由[肯·湯普遜寫作出第一版并加入](https://zh.wikipedia.org/wiki/肯·湯普遜 "wikilink")[UNIX](../Page/UNIX.md "wikilink")之中。它是一個簡單的命令列[直譯器](../Page/直譯器.md "wikilink")，但不能被用來執行指令稿（Shell
script）。它的許多特徵影響了以後[命令行界面](../Page/命令行界面.md "wikilink")的發展。至[Version 7
Unix之後](https://zh.wikipedia.org/wiki/Version_7_Unix "wikilink")，被[Bourne
shell取代](../Page/Bourne_shell.md "wikilink")。

Thompson
shell使用的重導向命令“\<”與“\>”，以及[管線命令](../Page/管道_\(Unix\).md "wikilink")“|”影響到之後的[Unix
shell與](../Page/Unix_shell.md "wikilink")[MS
DOS](https://zh.wikipedia.org/wiki/MS_DOS "wikilink")。

## 历史

“shell”的名字和概念是从Unix的前身[Multics](../Page/Multics.md "wikilink")发展过来的。应用程序通过shell来进行调用并被系统执行。

Thompson
shell设计之初就为输入和输出[重定向设计了简单的语法](../Page/重定向_\(计算机\).md "wikilink")。在设计Multics系统时，输入输出的重定向需要用特别的命令来表示重定向开始和重定向结束，而在Unix系统中，用户只需要简单地在命令后面附加一个“\<”或“\>”符号，再附上文件名，shell就可以在执行命令时处理输入或输出重定向。在1971年Unix发布第一个版本时，这个语法就已经被实现了。

后来又加入了[管道的功能](../Page/管道_\(Unix\).md "wikilink")。在[道格拉斯·麥克羅伊](../Page/道格拉斯·麥克羅伊.md "wikilink")的建议下，重定向的功能被扩展，这样一条命令的输出就可以用作另一条命令的输入。按照版本3手册，管道功能最初的语法是：

`command1 >command2>`

这个语法语义比较含糊，容易分不清重定向的来源和目标——系统难以分清command2是一个命令还是一个文件。到了版本4，语法就被改为了“|”和“^”符号：

`command1 | command2`

这个语法等同于：

`command1 ^ command2`

而“\>”符号被改成了：

`command1 > file1`

这条命令会把command1的输出内容写入到文件file1中。

从Thompson shell诞生的“\<”、“\>”和“|”产生了深远的影响。绝大多数Unix
shell和其他系统的命令行（包括[DOS](../Page/DOS.md "wikilink")、[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")、[Windows等](https://zh.wikipedia.org/wiki/Windows "wikilink")）都支持这三个符号。

## 被替代

Thompson
shell是按照极简主义进行设计的，语法非常简单，即使是不太复杂的“if”和“goto”也需要多条命令来实现。\[1\]在1975年[Version
6
Unix发布之际](https://zh.wikipedia.org/wiki/Version_6_Unix "wikilink")，这个shell已经无法满足大多数编程任务的需要。

这时，[PWB/UNIX的开发者](https://zh.wikipedia.org/wiki/PWB/UNIX "wikilink")，特别是开始修改Thompson
shell的源代码，使其更适合编程。\[2\]修改之后的shell被称为[PWB
shell或Mashey](https://zh.wikipedia.org/wiki/PWB_shell "wikilink")
shell，包括了高级的控制流，并引入了变量，但新功能也有所限制，以保证与Thompson shell的兼容性。

最终，在1978年，[Version 7
Unix已经把默认的shell换成了](https://zh.wikipedia.org/wiki/Version_7_Unix "wikilink")[Bourne
shell](../Page/Bourne_shell.md "wikilink")，而1979年时[2BSD把默认shell换成了](../Page/BSD.md "wikilink")[C
shell](https://zh.wikipedia.org/wiki/C_shell "wikilink")。因为所有现代Unix系统和[类Unix系统](../Page/类Unix系统.md "wikilink")都是从Version
7 Unix和2BSD继承而来，所以Thompson shell基本上已经不再被使用。但是，Thompson shell作为[Ancient
UNIX系统的一部分](https://zh.wikipedia.org/wiki/Ancient_UNIX "wikilink")，并且[开放源代码](../Page/开放源代码.md "wikilink")，它也被移植到了现代Unix系统中，作为历史展览而出现。

## 参考文献

## 参见

  - [Unix shell](../Page/Unix_shell.md "wikilink")

[Category:Unix_shells](https://zh.wikipedia.org/wiki/Category:Unix_shells "wikilink")

1.

2.