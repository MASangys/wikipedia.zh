在[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")
兼容的平台上，**SIGFPE**是当一个[进程](../Page/行程.md "wikilink")
执行了一个错误的算术操作时发送给它的[信号](https://zh.wikipedia.org/wiki/信号_\(计算机科学\) "wikilink")。SIGFPE的[符号常量在](../Page/C预处理器.md "wikilink")[头文件](../Page/头文件.md "wikilink")
[`signal.h`](https://zh.wikipedia.org/wiki/signal.h "wikilink")中定义。因为在不同平台上，信号数字可能变化，因此常使用信号名称。\[1\]

## 语源

*SIG*是信号名的通用[前缀](../Page/詞綴.md "wikilink") 。*FPE*是*floating-point
exception*（浮点异常）的[首字母缩略字](../Page/首字母縮略字.md "wikilink")
。产生SIGFPE信号时并非一定要涉及[浮点算术](../Page/浮点数.md "wikilink")
，之所以不修改名字是因为这么做会破坏[向下兼容性](../Page/向下兼容.md "wikilink")。

## 描述

导致SIGFPE被发送给进程的原因有很多。一个常见的例子是由于一个意外输入导致的溢出，或者在程序构造中的错误。

SIGFPE可以被处理。也就是说，程序员可以指定他们在接收到信号时想要的动作，例如调用一个[子程序](../Page/子程序.md "wikilink")
，忽略事件等。

在特定情形下，忽略SIGFPE可能导致程序出现意料之外的行为，包括但不限于由于不断重试违规操作而导致程序挂起。但是，忽略并非由计算造成的SIGFPE信号是安全的，例如通过[`kill`](https://zh.wikipedia.org/wiki/kill_\(Unix\) "wikilink")[系统调用发送的那些](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。

一个通常的疏忽是认为[除以零是SIGFPE的唯一来源](../Page/除以零.md "wikilink")。在一些架构上（包括IA-32），使用INT_MIN（最小的可以被表示的负整数值）除以-1的整数除法也会触发这个信号，因为商是一个无法被表示的正数。（比如8位有符号整数可以表示-128、+127和它们之间的整数。-128÷-1＝+128
＞ +127，因此无法被表示而产生溢出并触发此信号）

## 例子

这是一个尝试执行一个称为[整数](../Page/整数.md "wikilink")
[除以零](../Page/除以零.md "wikilink")
，或*FPE_INTDIV*的错误算术运算的[ANSI
C程序的例子](../Page/ANSI_C.md "wikilink")。

`int main()`
`{`
`       int x = 42/0;`
`       return 0; /* Never reached */`
`}`

在一个运行[Linux](../Page/Linux.md "wikilink")
的[IA-32上编译运行](https://zh.wikipedia.org/wiki/IA-32 "wikilink")，产生下列内容：

`$ gcc -o sigfpe sigfpe.c`
`sigfpe.c: In function ‘main’:`
`sigfpe.c:3: warning: division by zero`
`$ ./sigfpe`
`Floating point exception (core dumped)`

一个来自[gdb](../Page/GNU侦错器.md "wikilink")
的[栈跟踪显示在](https://zh.wikipedia.org/wiki/栈跟踪 "wikilink")`main`函数中发生了SIGFPE信号：

`Program received signal SIGFPE, Arithmetic exception.`
`0x08048373 in main ()`

## 参考

## 参阅

  - [除以零](../Page/除以零.md "wikilink")
  - [浮点](../Page/浮点数.md "wikilink")

[en:SIGFPE](https://zh.wikipedia.org/wiki/en:SIGFPE "wikilink")

[Category:計算機算術](https://zh.wikipedia.org/wiki/Category:計算機算術 "wikilink")
[Category:计算机错误](https://zh.wikipedia.org/wiki/Category:计算机错误 "wikilink")

1.  {{ cite web | url =
    <http://sourceware.org/git/?p=glibc.git;a=blob;f=bits/signum.h> |
    title = sourceware.org Git - glibc.git/blob - bits/signum.h |
    accessdate = 2009-11-18 | date = 2001-07-06 }}