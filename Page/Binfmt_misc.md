**binfmt_misc**是[Linux内核的一项功能](../Page/Linux内核.md "wikilink")，其使得内核可识别任意类型的[可执行文件格式并传递至特定的](../Page/執行檔.md "wikilink")[用户空间应用程序](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")，如[模拟器和](https://zh.wikipedia.org/wiki/仿真器 "wikilink")[虚拟机](../Page/虛擬機器.md "wikilink")\[1\]。它是内核中准备用户空间程序运行的诸多二进制格式文件处理程序之一
\[2\].。

可执行文件格式透过[特殊文件系统](../Page/文件系统.md "wikilink")`binfmt_misc`接口注册（通常挂载在[/proc](../Page/Procfs.md "wikilink")）。注册流程既可通过向名为`register`的procfs文件发送特殊序列，也可经由封装器（如基于[Debian发行版的](../Page/Debian.md "wikilink")*binfmt-support*包）\[3\]亦或是[systemd的](../Page/Systemd.md "wikilink")`systemd-binfmt.service`服务进行\[4\]\[5\]。

## 注册流程

`register`文件中包含可执行文件该如何被处理的定义。其格式如下所示：

`:name:type:offset:magic:mask:interpreter:flags`

  - `name`为二进制格式的名称。
  - `type`应为`E`或`M`类型
      - 若类型为`E`，则可执行文件格式由其[文件扩展名进行识别](../Page/文件扩展名.md "wikilink")：`magic`是与二进制格式相关联的文件扩展名；此时忽略`offset`和`mask`参数。
      - 若类型为`M`，则可执行文件格式通过文件中的`offset`的（默认为0）[`magic`数字识别](../Page/檔案格式.md "wikilink")；`mask`是全默认为[`0xFF`](../Page/十六进制.md "wikilink")的[bitmask](https://zh.wikipedia.org/wiki/掩码 "wikilink")，其用于指示数字中存在意义的二进制位。
  - `interpreter`是将匹配文件作为参数运行的程序（解释器）。
  - `flags`（可选）是一系列的字符串，每个控制着`interpreter`调用的特定方面：
      - `P`用于保存用户于命令行中输入的原程序名（通过将程序名添加到）；`interpreter`必须知悉到此标记才能正确将此额外函数作为其`argv[0]`传递至解释程序。
      - `O`用于打开程序文件并将其文档描述符传递至`interpreter`以读取用户无法读取的文件（对于无读取[权限的用户而言](https://zh.wikipedia.org/wiki/文件系统权限 "wikilink")）。
      - `C`用于根据程序文件而非`interpreter`文件决定新进程凭证（参见）；此值默认为`O`。
      - `F`用于使内核在配置时间而非启动时间打开二进制文件以使其在其他挂载的用户空间和chroot中可用。

每个文件格式在`/proc/sys/fs/binfmt_misc`目录中都有相应的文件定义项，用户可在其中获取特定文件格式的信息。

## 常见用法

binfmt_misc可使[Java程序直接传递至](../Page/Java.md "wikilink")[Java虚拟机](../Page/Java虚拟机.md "wikilink")。\[6\]

除此之外，用户也可通过[Wine直接执行](../Page/Wine.md "wikilink")[可移植可执行文件](../Page/可移植可执行.md "wikilink")（为[MS-DOS或](../Page/MS-DOS.md "wikilink")[Microsoft
Windows编译](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")）。举个例子，下列配置将使用[Wine运行DOS和Windows](../Page/Wine.md "wikilink")
[EXE文件](../Page/EXE格式.md "wikilink")（根据“MZ”识别）：

`:DOSWin:M::MZ::/usr/bin/wine:`

要使用[Mono运行EXE](../Page/Mono.md "wikilink")（.NET）文件：\[7\]\[8\]
`:CLR:M::MZ::/usr/bin/mono:`

另外，用户可通过此功能运行为其他架构打造的二进制码（需要QEMU）。若二进制码通过binfmt_misc注册，则其可像原生二进制库一样被执行\[9\]。

## 另请参阅

  - [Shebang (Unix)](../Page/Shebang.md "wikilink")

## 参考文献

<references />

## 外部链接

  - [项目主页](https://web.archive.org/web/20100118183358/http://www.tat.physik.uni-tuebingen.de/~rguenth/linux/binfmt_misc.html)

[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")
[Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink")
[Category:标题中含下划线的条目](https://zh.wikipedia.org/wiki/Category:标题中含下划线的条目 "wikilink")

1.  <https://www.kernel.org/doc/html/latest/admin-guide/binfmt-misc.html>
2.  <https://lwn.net/Articles/630727/>
3.  <http://packages.debian.org/sid/binfmt-support>
4.  <https://www.freedesktop.org/software/systemd/man/systemd-binfmt.service.html#>
5.  <https://www.freedesktop.org/software/systemd/man/binfmt.d.html>
6.  <https://www.kernel.org/doc/html/latest/admin-guide/java.html>
7.  <https://www.kernel.org/doc/html/latest/admin-guide/mono.html>
8.  [Guide:Running Mono
    Applications](http://www.mono-project.com/Guide:Running_Mono_Applications)
9.