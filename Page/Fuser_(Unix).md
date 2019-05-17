[Unix命令](https://zh.wikipedia.org/wiki/Unix "wikilink")**fuser**用于显示哪些[进程正在使用给定的](https://zh.wikipedia.org/wiki/进程 "wikilink")[文件](https://zh.wikipedia.org/wiki/文件 "wikilink")、[文件系统或](../Page/文件系统.md "wikilink")[unix套接字](https://zh.wikipedia.org/wiki/unix套接字 "wikilink")。例如，要查看访问USB驱动器的进程ID及其用户：

``` console
$ fuser -m -u /mnt/usb1
/mnt/usb1:   1347c(root)  1348c(guido)  1349c(guido)
```

该命令显示使用指定文件或文件系统进程的[进程标识符](https://zh.wikipedia.org/wiki/进程标识符 "wikilink")。在默认的显示模式下，每个文件名后跟一个字母，表示访问类型：

  - c : 当前目录。
    e : 正在运行的可执行文件。
    f : 打开的文件。
    F : 打开的写入文件。
    r : 根目录。
    m : mmap的文件或共享库

该命令还可以用来检查哪些进程正在使用网络端口：

``` console
$ fuser -v -n tcp 80
                     USER        PID ACCESS COMMAND
80/tcp:              root       3067 F.... (root)httpd
                     apache     3096 F.... (apache)httpd
                     apache     3097 F.... (apache)httpd
```

如果没有访问任何文件或发生致命错误，该命令将返回非零代码。如果至少有一次访问成功，则返回零。“fuser”的输出可能有助于诊断尝试[卸载文件系统时产生的](https://zh.wikipedia.org/wiki/mount_\(Unix\) "wikilink")“资源繁忙”消息。

## 选项

  - \-k : 杀死所有访问文件的进程。例如，`fuser -k
    /path/to/your/filename`会杀死所有访问此目录的进程而无需确认。使用-i在操作前进行确认
    \-i : 交互模式。杀死进程前提示
    \-v : 详细模式
    \-u : 显示用户名
    \-a : 显示所有文件
    \-m :
    `name`指定已挂载的文件系统或块设备上的文件。列出所有访问该文件系统上文件的进程。如果指定了目录文件，将自动更改为`name`/.，即是可能挂载在此目录中的任何文件系统。

另外，请注意-k将向进程发送SIGKILL。使用-signal发送不同的信号。有关fuser支持的信号列表，运行“fuser -l”。

## 相关命令

  - 所有打开的文件及其打开的进程列表都可以通过[lsof命令获得](https://zh.wikipedia.org/wiki/lsof "wikilink")。
  - [BSD操作系统上的等价命令是](../Page/BSD.md "wikilink")`fstat(1)`

## 外部链接

[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")