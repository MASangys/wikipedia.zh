在[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")
兼容的平台上，**SIGSEGV**是当一个[进程](../Page/行程.md "wikilink")
执行了一个无效的内存引用，或发生[段错误时发送给它的](https://zh.wikipedia.org/wiki/段错误 "wikilink")[信号](https://zh.wikipedia.org/wiki/信号_\(计算机科学\) "wikilink")。SIGSEGV的[符号常量在](https://zh.wikipedia.org/wiki/C语言预处理器 "wikilink")[头文件](../Page/头文件.md "wikilink")
`signal.h`中定义。因为在不同平台上，信号数字可能变化，因此符号信号名被使用。通常，它是信号\#11。\[1\]

## 语源

*SIG*是信号名的通用[前缀](../Page/詞綴.md "wikilink") 。*SEGV*是*segmentation
violation*（段违例）的[缩写](../Page/縮寫.md "wikilink") 。

## 使用

对于不正确的内存处理（见[段错误](https://zh.wikipedia.org/wiki/段错误 "wikilink")），计算机程序可能抛出SIGSEGV。[操作系统](../Page/操作系统.md "wikilink")
可能使用信号[栈](../Page/堆栈.md "wikilink")
向一个处于自然状态的应用程序通告错误，由此，开发者可以使用它来[调试](https://zh.wikipedia.org/wiki/调试 "wikilink")
程序或处理错误。

在一个程序接收到SIGSEGV时的默认动作是异常终止。这个动作也許會结束[进程](../Page/行程.md "wikilink")
，但是可能生成一个[核心文件](https://zh.wikipedia.org/wiki/核心文件 "wikilink")
以帮助调试，或者执行
一些其他特定于某些平台的动作。例如，使用了[grsecurity补丁的](https://zh.wikipedia.org/wiki/grsecurity "wikilink")[Linux](../Page/Linux.md "wikilink")
系统可能记录SIGSEGV信号以监视可能的使用[缓存溢出](https://zh.wikipedia.org/wiki/缓存溢出 "wikilink")
的攻击尝试。

SIGSEGV可以被捕获。也就是说，应用程序可以请求它们想要的动作，以替代默认发生
的动作。这样的动作可以是忽略它、调用一个[函数](../Page/子程序.md "wikilink")
，或恢复默认的动作。在一些情形下，忽略SIGSEGV导致[未定义行为](../Page/未定义行为.md "wikilink")。\[2\]

一个应用程序可能处理SIGSEGV的例子是[调试器](../Page/调试工具.md "wikilink")
，它可能检查信号栈并通知[开发者](https://zh.wikipedia.org/wiki/软件设计师 "wikilink")
目前所发生的，以及程序终止的位置。

SIGSEGV通常由[操作系统](../Page/操作系统.md "wikilink")
生成，但是有适当权限的用户可以在需要时使用`kill`[系统调用或](https://zh.wikipedia.org/wiki/系统调用 "wikilink")[kill命令](https://zh.wikipedia.org/wiki/kill_\(Unix\) "wikilink")（一个[用户级程序](https://zh.wikipedia.org/wiki/用户级_\(计算机科学\) "wikilink")，或者一个[shell内建命令](../Page/Unix_shell.md "wikilink")）来向一个进程发送信号。

## 参考

## 外部链接

  - [The Open Group Base Specifications Issue 6
    signal.h](http://www.opengroup.org/onlinepubs/009695399/basedefs/signal.h.html)

[Category:计算机错误](https://zh.wikipedia.org/wiki/Category:计算机错误 "wikilink")

1.  {{ cite web | url =
    <http://sourceware.org/git/?p=glibc.git;a=blob;f=bits/signum.h> |
    title = sourceware.org Git - glibc.git/blob - bits/signum.h |
    accessdate = 2009-11-18 | date = 2001-07-06 }}
2.  {{ cite web | url =
    <http://www.opengroup.org/onlinepubs/009695399/functions/xsh_chap02_04.html>
    | title = System Interfaces Chapter 2 | date = 2004年 | accessdate =
    2009-11-18 }}