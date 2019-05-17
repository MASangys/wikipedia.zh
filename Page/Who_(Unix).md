**who**是显示当前登录到计算机的用户列表的标准
[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink") 命令。

`who`与命令[w有关](../Page/W_\(Unix\).md "wikilink")：`w`提供相同的信息，但也显示额外的数据和统计信息。

## 规范

[单一Unix规范](https://zh.wikipedia.org/wiki/单一Unix规范 "wikilink")（SUS）要求`who`应列出有关可访问用户的信息。
[XSI](https://zh.wikipedia.org/wiki/XSI "wikilink")
扩展也要求应列出用户名、终端、登录时间、进程 ID
和自上次活动以来的时间等其他数据；此外，用于用户信息的备用系统数据库可指定为`who`的可选参数。

该命令可以附加参数`am i`或`am I`（即`who am
i`），来调用显示有关当前终端的信息（请参阅命令[tty和](https://zh.wikipedia.org/wiki/tty "wikilink")-m选项，同该调用是等效的）。

## 用法

无扩展的SUS仅指定以下的`-m`、`-T`和`-u`选项，所有其他选项都在XSI扩展中指定：

  -
    \-a，使用-b，-d，-l，-p，-r，-t，-T和-u处理用于用户信息的系统数据库。

<!-- end list -->

  -
    \-b，显示系统上次重新启动的时间

<!-- end list -->

  -
    \-d，显示僵尸进程及相关细节

<!-- end list -->

  -
    \-H，显示列标题

<!-- end list -->

  -
    \-l，显示用户可以登录的终端

<!-- end list -->

  -
    \-m，仅显示有关当前终端的信息

<!-- end list -->

  -
    \-p，显示活动进程

<!-- end list -->

  -
    \-q，快速格式，仅显示名称和所有登录用户的数量，禁用所有其他选项;相当于用户命令行实用程序

<!-- end list -->

  -
    \-r，显示init进程的运行级别。

<!-- end list -->

  -
    \-s（默认）仅显示名称，终端和时间详细信息

<!-- end list -->

  -
    \-t，显示系统时钟最后更改的时间

<!-- end list -->

  -
    \-T，以标准格式显示每个终端的详细信息

<!-- end list -->

  -
    \-u，显示空闲时间；XSI显示用户登录并显示终端是否最近使用过的信息

其他Unix和类Unix操作系统可能会添加额外的选项。GNU `who`包含-i选项（同-u类似）和-w选项（显示列出的用户是否接受消息，SUS
在指定-T时显示此消息），但GNU `who`和BSD版本都省略了上述的一些选项（如-a，-b，-d等）；GNU 版本反而使用 -l 来尝试通过
DNS 查验主机名。

## 输出

没有扩展名的SUS指定输出格式为“实现定义”（Implementation-defined）。 XSI扩展指定了一种格式，但它没有完全指定：
分隔符和字段长度没有精确指定。 因此，Unix实现中输出的格式差别很大。

## 另请参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

## 外部链接

  - [who](http://www.opengroup.org/onlinepubs/009695399/utilities/who.html)
    — specification from the Single Unix Specification
  - [who](https://www.gnu.org/software/coreutils/manual/html_node/who-invocation.html)
    — [manual
    page](https://zh.wikipedia.org/wiki/manual_page "wikilink") from
    [GNU](../Page/GNU.md "wikilink")
    [coreutils](https://zh.wikipedia.org/wiki/coreutils "wikilink")
  - [who](https://man.openbsd.org/who.1) — manual page from
    [OpenBSD](../Page/OpenBSD.md "wikilink")

[Category:Unix用户管理和支持相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix用户管理和支持相关实用工具 "wikilink")
[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")