**process.h**是一个[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")[头文件](../Page/头文件.md "wikilink")，包含了函数与宏用于创建管理[线程](../Page/线程.md "wikilink")与[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")。在[DOS](../Page/DOS.md "wikilink")、[Windows 3.1x](https://zh.wikipedia.org/wiki/Windows_3.1x "wikilink")、[Win32](https://zh.wikipedia.org/wiki/Win32 "wikilink")、[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")、[Novell NetWare](../Page/Novell_NetWare.md "wikilink")、等平台上一般提供该头文件与库函数。该头文件既不是[ANSI/ISO C也不是](../Page/ANSI_C.md "wikilink")[POSIX标准的组成部分](https://zh.wikipedia.org/wiki/POSIX "wikilink")。[MinGW](../Page/MinGW.md "wikilink")\[1\]与[Microsoft Visual C++](../Page/Microsoft_Visual_C++.md "wikilink")\[2\]均支持该头文件。

## 函数

| 函数名         | 描述                                    | 注释                 |
| ----------- | ------------------------------------- | ------------------ |
|             | 装入并在父进程所占据的内存空间执行新的子进程。参数单独传递。        | DOS,Win,OS/2,POSIX |
|             | 装入并在父进程所占据的内存空间执行新的子进程。参数作为指针数组传递     | DOS,Win,OS/2,POSIX |
|             | 装入并执行新的子进程。参数单独传递。                    | DOS,Win,OS/2       |
|             | 装入并执行新的子进程。参数作为指针数组传递                 | DOS,Win,OS/2       |
|             | 在当前进程内创建并执行新的线程                       | Win,OS/2           |
| `endthread` | 终止由`beginthread`创建的线程。                | Win,OS/2           |
| `getpid`    | 返回[进程ID](../Page/进程ID.md "wikilink")。 | DOS,Win,OS/2       |
| `cexit`     | 恢复被startup代码修改的中断向量                   | DOS,Win,OS/2       |
|             |                                       |                    |

## 常量

| 名字                      | 描述                      | 注释                         | 操作系统              |
| ----------------------- | ----------------------- | -------------------------- | ----------------- |
| `_P_WAIT`               | 挂起父进程直至子进程执行完毕。         | 同步spawn                    | MS-DOS,Win32,OS/2 |
| `_P_NOWAIT, _P_NOWAITO` | 父进程与新的子进程并发执行。          | 异步spawn                    | Win32,OS/2        |
| `_P_OVERLAY`            | 子进程覆盖并摧毁父进程。            | 与`exec*`函数有相同效果。           | MS-DOS,Win32,OS/2 |
| `_P_DETACH`             | 子进程在后台运行，不访问console与键盘。 | 新进程调用`_cwait`将会失败。异步spawn。 | Win32,OS/2        |
| `_WAIT_CHILD`           | 用作`cwait`。              | 在Win32已经过时。                | MS-DOS,OS/2       |
| `_WAIT_GRANDCHILD`      | 用作`cwait`。              | 在Win32已经过时。                | MS-DOS,OS/2       |

## 参考文献

<references />

## 外部链接

  - [Digital Mars _exec reference](http://www.digitalmars.com/rtl/process.html#_exec)

[Category:C头文件](https://zh.wikipedia.org/wiki/Category:C头文件 "wikilink") [Category:Process.h](https://zh.wikipedia.org/wiki/Category:Process.h "wikilink")

1.  [MinGW.org](http://www.mingw.org/)
2.