**signal.h**是[C标准函数库中的信号处理部分](https://zh.wikipedia.org/wiki/C标准函数库 "wikilink")， 定义了程序执行时如何处理不同的[信号](https://zh.wikipedia.org/wiki/信号_\(计算机科学\) "wikilink")。信号用作进程间通信， 报告异常行为（如除零）、用户的一些按键组合（如同时按下Ctrl与C键，产生信号[SIGINT](https://zh.wikipedia.org/wiki/SIGINT "wikilink")）。

[C++](../Page/C++.md "wikilink")中的对应头文件是`csignal`。

## 标准信号

C语言标准定义了6个信号。都定义在`signal.h`头文件中\[1\]。

  - `SIGABRT` - 异常中止。
  - `SIGFPE` - 浮点异常。
  - `SIGILL` - 无效指令。
  - `SIGINT` - 交互的用户按键请求，默认情况下，这会导致进程终止。
  - `SIGSEGV` - 无效内存访问。
  - `SIGTERM` - 程序的中止请求。

`signal.h`可能还定义了其它信号，这依赖于具体实现。例如，类Unix系统还定义了15个以上的信号\[2\]。[Visual C++的C标准库只支持C语言标准规定的](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")6个信号，即对信号处理只提供最小的支持。

## 信号处理

库函数`raise()`或者系统调用`kill()`可以产生信号。`raise()`发送一个信号给当前进程，`kill()`发送一个信号给特定进程。

除了两个信号[SIGKILL](../Page/SIGKILL.md "wikilink")与[SIGSTOP不能被捕获](https://zh.wikipedia.org/wiki/SIGSTOP "wikilink")（caught）、阻塞（blocked）或者忽略，其它的信号都可以指定处理函数（handler）。一个信号的处理函数在信号到达时，被目标环境调用。目标环境挂起当前进程的执行，直到信号处理函数返回或者调用了`longjmp()`。为了最大的兼容性，异步信号处理只应：

  - 成功调用了`signal()`指定的函数；
  - 给类型为`sig_atomic_t`的对象赋值；
  - 把控制返回给它的调用者。

如果信号报告了进程的错误，信号处理函数应该调用`abort()`, `exit()`或`longjmp()`。

## 函数

<table>
<thead>
<tr class="header">
<th><p>函数</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/c/program/raise"><code>raise</code></a></p></td>
<td><p>人工抛出一个信号</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/c/program/signal"><code>signal</code></a></p></td>
<td><p>当程序收到特定信号时应该执行的处理函数</p></td>
</tr>
</tbody>
</table>

## 例子

``` c
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

static void catch_function(int signal) {
    puts("Interactive attention signal caught.");
}

int main(void) {
    if (signal(SIGINT, catch_function) == SIG_ERR) {
        fputs("An error occurred while setting a signal handler.\n", stderr);
        return EXIT_FAILURE;
    }
    puts("Raising the interactive attention signal.");
    if (raise(SIGINT) != 0) {
        fputs("Error raising the signal.\n", stderr);
        return EXIT_FAILURE;
    }
    puts("Exiting.");
    return 0;
}
```

## 参见

  - [信号 (计算机科学)](https://zh.wikipedia.org/wiki/信号_\(计算机科学\) "wikilink")

## 参考文献

## 外部链接

  - [XGC's manual for signal.h](https://archive.is/20121217223745/http://www.xgc.com/manuals/xgclib/c1632.html)

[Category:C标准库头文件](https://zh.wikipedia.org/wiki/Category:C标准库头文件 "wikilink")

1.
2.