**init**（为的简写）是 [Unix](../Page/Unix.md "wikilink") 和
[类Unix](../Page/类Unix.md "wikilink")
系统中用来产生其它所有进程的程序。它以[守护进程的方式存在](../Page/守护进程.md "wikilink")，其进程号为1。Linux系統在開機時載入[Linux內核後](../Page/Linux內核.md "wikilink")，便由Linux內核載入init程式，由init程式完成餘下的開機過程，比如載入[執行級別](../Page/執行級別.md "wikilink")，載入服務，啟動Shell/圖形化界面等等。

Unix 系列中(如 [System III](../Page/UNIX_System_III.md "wikilink") 和 [System
V](../Page/UNIX_System_V.md "wikilink"))**init**的作用，和研究中的
[Unix](../Page/Unix.md "wikilink") 和
[BSD](../Page/Berkeley_Software_Distribution.md "wikilink")
衍生版本相比，发生了一些变化。大多数[Linux发行版是和](../Page/Linux发行版.md "wikilink")
System V 相兼容的，但是一些发行版如[Slackware](../Page/Slackware.md "wikilink")
采用的是BSD风格，其它的如 [Gentoo](../Page/Gentoo_Linux.md "wikilink")
是自己定制的。後來[Ubuntu](../Page/Ubuntu.md "wikilink")\[1\]\[2\]
和其他一些發行版採用 [Upstart](../Page/Upstart.md "wikilink")\[3\]
來代替\[4\] 傳統的 init
處理程序。至2015年，大部分[Linux發行版都已採用新的](../Page/Linux發行版.md "wikilink")[systemd替代](../Page/systemd.md "wikilink")[System
V和](../Page/UNIX_System_V.md "wikilink")[Upstart](../Page/Upstart.md "wikilink")，但[systemd向下相容](../Page/systemd.md "wikilink")[System
V](../Page/UNIX_System_V.md "wikilink")。

## BSD风格

BSD init 运行存放于'/etc/rc'的初始化 [shell](../Page/Unix_shell.md "wikilink")
[脚本](../Page/脚本.md "wikilink")，然后启动基于文本模式的终端([getty](../Page/getty_\(Unix\).md "wikilink"))或者基于图形界面的终端([窗口系统](../Page/窗口系统.md "wikilink")，如
[X](../Page/X_Window_System.md "wikilink"))。
这里没有[运行模式的问题](../Page/运行模式.md "wikilink")，因为文件
'rc' 决定了 init 如何执行。

*优点:* 简单且易于手动编辑。

*缺点:*
如果第三方软件需要在启动过程执行它自身的初始化脚本，它必须修改已经存在的启动脚本，一旦这种过程中有一个小错误，都将导致系统无法正常启动。

值得注意的是，现代的 [BSD](../Page/BSD.md "wikilink") 衍生系统一直支持使用 'rc.local'
文件的方式，它将在正常启动过程接近最后的时间以子脚本的方式来执行。这样做减少了整个系统无法启动的风险。然后，第三方软件包可以将它们独立的
start/stop 脚本安装到一个本地的 'rc.d' 目录中(通常这是由 [ports
collection](../Page/ports_collection.md "wikilink")/[pkgsrc](../Page/pkgsrc.md "wikilink")
完成的)。 [FreeBSD](../Page/FreeBSD.md "wikilink") 和
[NetBSD](../Page/NetBSD.md "wikilink") 现在默认使用 **rc.d**
，该目录中所有的用户启动脚本，都被分成更小的子脚本，和 SysV
类似。**rcorder** 通常根据在 **rc.d**目录中脚本之间的依赖关系来决定脚本的执行顺序。

## SysV风格

System V init 检查 '/etc/inittab' 文件中是否含有 'initdefault' 项。 这告诉 init
系统是否有一个默认[运行模式](../Page/运行模式.md "wikilink")。如果没有默认的运行模式，那么用户将进入系统控制台，手动决定进入何种运行模式。

*优点：*灵活性强

*缺陷：*比较复杂

### 运行模式

[System
V中](../Page/UNIX_System_V.md "wikilink")[运行模式描述了系统各种可能的状态](../Page/运行模式.md "wikilink")。通常会有
8 种运行模式，即运行模式 0 到 6 和 *S* 或者 *s*。其中运行模式 3 为"保留的"运行模式：

  - 0\. 关机
  - 1\. [单用户模式](../Page/单用户模式.md "wikilink")
  - 6\. 重启

除了模式 0,1,6外, 每种 Unix 和 Unix-like 系统对运行模式的定义不太一样。通常在 `/etc/inittab`
文件中定义了各种运行模式的工作范围。

目前絕大多數[Linux發行版已經基於新的](../Page/Linux發行版.md "wikilink")[systemd](../Page/systemd.md "wikilink")，systemd一般不再使用`/etc/inittab`檔案，也使用新的target取代System
V的執行等級，但仍然相容System V的執行等級。若要設定系統預設的執行模式，需要使用`systemctl default
targetname.target`命令。

### 默认的运行模式

| 操作系统                                                                                          | 默认的运行模式 |
| --------------------------------------------------------------------------------------------- | ------- |
| [AIX](../Page/IBM_AIX.md "wikilink")                                                          | 2       |
| [Arch Linux](../Page/Arch_Linux.md "wikilink")                                                | 3       |
| [CentOS](../Page/CentOS.md "wikilink")                                                        | 3       |
| [Debian GNU/Linux](../Page/Debian_GNU/Linux.md "wikilink")                                    | 2 \[5\] |
| [Gentoo Linux](../Page/Gentoo_Linux.md "wikilink")                                            | 3       |
| [Mandriva Linux](../Page/Mandriva_Linux.md "wikilink")                                        | 5       |
| [Mac OS X](../Page/Mac_OS_X.md "wikilink")                                                    | 3       |
| [Red Hat Linux](../Page/Red_Hat_Linux.md "wikilink") / [Fedora](../Page/Fedora.md "wikilink") | 3 or 5  |
| [Slackware Linux](../Page/Slackware_Linux.md "wikilink")                                      | 3       |
| [Solaris](../Page/Solaris.md "wikilink")                                                      | 3 \[6\] |
| [SUSE Linux](../Page/SUSE_Linux.md "wikilink")                                                | 5 \[7\] |
| [Ubuntu](../Page/Ubuntu.md "wikilink")                                                        | 2 \[8\] |

上面的表中有两种Linux发行版默认的运行模式为 5，模式 5 是多用户图形环境([X Window
System](../Page/X_Window_System.md "wikilink"))，通常还包括[X显示管理器](../Page/X显示管理器.md "wikilink")。然而在[Solaris操作系统中](../Page/Solaris.md "wikilink")，模式
5 被保留用来执行关机和自动切断电源。

大多数操作系统的用户可以用下面的命令来判断当前的运行模式是什么：

``` bash
$ runlevel
$ who -r
```

在 [root](../Page/超级用户.md "wikilink") 权限下，运行 `telinit` 或者 `init`
命令可以改变当前的运行模式。 `/etc/inittab` 文件中设置的默认的运行模式在
`:initdefault:` 项中。

## 跳过 init

Linux系统中，现代的[bootloader](../Page/bootloader.md "wikilink")(如
[LILO](../Page/LILO.md "wikilink") 或者
[GRUB](../Page/GRUB.md "wikilink"))，用户可以在初始化过程中最后启动的进程来取代默认的
`/sbin/init`。

通常是在 bootloader 环境中通过执行
`init=`[`/foo/bar`](../Page/foobar.md "wikilink") 命令。例如，如果执行
`init=/bin/bash`，启动单用户 root 的 shell 环境，无需用户密码。

BSD的变种，大多数平台， bootstrap 程序是可以被打断的，然后执行 `boot -s` 命令进入单用户模式。

单用户模式并不没有跳过 init，它仍然可以执行 `/sbin/init`，但是它将使 init 询问 `exec()` 将要执行的命令
(默认为 `/bin/sh`) 的路径，而不是采用正常的多用户启动顺序。 如果内核启动时在 `/etc/ttys` 文件中被标注为
"不安全" (在某些系统中，当前的"安全模式" 可能会有些变化)， 在允许这种情况(或者回退到单用户模式，如果用户执行
`CTRL+D`)，init 将首先询问 [root](../Page/超级用户.md "wikilink") 用户的密码。
如果该程序退出，内核将在多用户模式下重新执行 init。
如果系统从多用户模式切换到单用户模式，还将碰到上述的情况。

如果内核加载后， init 不能被正常启动， 这将导致 [panic](../Page/Kernel_panic.md "wikilink")
错误，此时系统将不可使用。想要通过 init 自身来改变 init 的路径，不同的版本情况不太一样(NetBSD中可执行 `boot -a`
; FreeBSD中利用 `init_path` 命令装载变量)。

## 其他风格

很多人一直努力地从某些方面改进传统的 init 守护进程，使它变得更完善。下面列出的是一些改进（排序不分先后）：

  - [SystemStarter](../Page/SystemStarter.md "wikilink")：用来替代
    [launchd](../Page/launchd.md "wikilink") —
    [Apple](../Page/苹果公司.md "wikilink") [Mac OS
    X开启进程](../Page/Mac_OS_X.md "wikilink")
  - [Initng](../Page/Initng.md "wikilink")：完全代替 init ，可以异步开启进程
  - [Upstart](../Page/Upstart.md "wikilink")：完全代替 init ，可以异步开启进程
    曾由[Ubuntu等使用](../Page/Ubuntu.md "wikilink")
  - [Service Management
    Facility](../Page/Service_Management_Facility.md "wikilink")：完全代替/重新设计
    [Solaris](../Page/Solaris_\(操作系统\).md "wikilink") 启动 Solaris 10
  - runit：跨平台的完全代替 init 可以并行启动服务
  - [BootScripts](../Page/GoboLinux#Boot_system.md "wikilink")：[GoboLinux](../Page/GoboLinux.md "wikilink")
  - Mudur：用 [Python](../Page/Python.md "wikilink") 写成的 init 替代品，
    可以异步开启进程，[Pardus](../Page/Pardus_\(操作系统\).md "wikilink")
    Linux 发行版
  - [systemd](../Page/systemd.md "wikilink")：完全替代init，可并行启动服务，并能减少在shell上的系统开销，相比传统的[System
    V是一大革新](../Page/UNIX_System_V.md "wikilink")，已被大多数Linux发行版所使用。

下面列出的项目还没有大范围的使用：

  - [eINIT](../Page/Einit.md "wikilink"), 完全代替 init
    ，可以异步开启进程，但是完成这个过程可以不使用
    shell 脚本
  - *svscan* 来自 [daemontools](../Page/daemontools.md "wikilink") 被用作 1
    号进程 - 似乎将被 runit 替代
  - cinit
  - twsinit, 部分用 x86 汇编写成， 只是用来证明一种概念
  - minit
  - OpenRC，由[Gentoo客制](../Page/Gentoo.md "wikilink")。

## 参考文献

## 外部链接

  - [Linux init man
    page](https://web.archive.org/web/20090211024645/http://unixhelp.ed.ac.uk/CGI/man-cgi?init+8)
  - [FreeBSD init man
    page](http://www.freebsd.org/cgi/man.cgi?query=init&apropos=0&sektion=0&manpath=FreeBSD+6.2-stable&format=html)
  - [boot-scripts](https://web.archive.org/web/20090524020300/http://www.atnf.csiro.au/people/rgooch/linux/boot-scripts/)
  - [runit](http://smarden.org/runit/index.html)
  - [minit](http://www.fefe.de/minit/)
  - [rc.d](http://www.netbsd.org/guide/en/chap-rc.html)
  - [busybox](http://www.busybox.net/downloads/BusyBox.html#item_init)
  - [smf and milestones in
    Solaris 10](http://www.sun.com/bigadmin/content/selfheal/smf-quickstart.html)
  - [cinit](https://web.archive.org/web/20090210204946/http://linux.schottelius.org/cinit/)
  - [twsinit](http://www.energymech.net/users/proton/)
  - [Mudur](https://web.archive.org/web/20110705091640/http://www.pardus.org.tr/eng/projects/comar/SpeedingUpLinuxWithPardus.html)

## 参见

  - [pidof](../Page/pidof.md "wikilink") 或者 killall5, 从 System V
    开始在很多发行版中使用的另一种程序

{{-}}

[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")

1.  <http://help.ubuntu.com/community/KnowThyUbuntu>
2.  <http://www.linuxquestions.org/questions/ubuntu-63/since-we-have-no-etcinittab-506281/>
3.
4.  <http://linuxplanet.com/linuxplanet/reports/6366/1/>
5.  <http://www.debianadmin.com/debian-and-ubuntu-linux-run-levels.html>
6.
7.
8.  <http://www.debianadmin.com/debian-and-ubuntu-linux-run-levels.html>