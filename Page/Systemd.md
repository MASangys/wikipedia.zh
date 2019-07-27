**systemd**是[Linux](../Page/Linux.md "wikilink")電腦[作業系統之下的一套](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[中央化系統及設定管理程式](https://zh.wikipedia.org/wiki/init "wikilink")（init），包括有[守护进程](../Page/守护进程.md "wikilink")、[程式庫以及應用軟體](https://zh.wikipedia.org/wiki/程式庫 "wikilink")，由带头开发。其开发目标是提供更优秀的[框架以表示](https://zh.wikipedia.org/wiki/框架 "wikilink")间的依赖关系，并依此实现系统初始化时服务的并行启动，同时达到降低[Shell的](https://zh.wikipedia.org/wiki/Shell "wikilink")的效果，最终代替现在常用的[System
V与](https://zh.wikipedia.org/wiki/System_V "wikilink")[BSD](../Page/BSD.md "wikilink")风格init程序。

目前絕大多數的[Linux發行版都已採用systemd代替原來的](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")[System
V](../Page/UNIX_System_V.md "wikilink")。

systemd在[LGPL](https://zh.wikipedia.org/wiki/LGPL "wikilink")
2.1及其后续版本许可证下开源发布\[1\]\[2\]。

## 起源

systemd这一名字源于[Unix中的一个惯例](https://zh.wikipedia.org/wiki/Unix "wikilink")：在Unix中常以“d”作为系统[守护进程](../Page/守护进程.md "wikilink")（，亦称[后台进程](../Page/后台进程.md "wikilink")）的后缀标识。除此以外，systemd亦是借代英文术语，而这一术语即是用于描述一个人具有快速地适应环境并解决困难的能力\[3\]。

## 设计

[Systemd_components.svg](https://zh.wikipedia.org/wiki/File:Systemd_components.svg "fig:Systemd_components.svg")
[Linux_kernel_unified_hierarchy_cgroups_and_systemd.svg](https://zh.wikipedia.org/wiki/File:Linux_kernel_unified_hierarchy_cgroups_and_systemd.svg "fig:Linux_kernel_unified_hierarchy_cgroups_and_systemd.svg")\]\]

与[System
V风格init相比](../Page/UNIX_System_V.md "wikilink")，systemd采用了以下新技术：

  - 將service（服務）、target（執行模式，類似於執行等級）、mount、timer、snapshot、path、socket、swap等稱為Unit。比如，一個auditd服務（就是auditd.service）就是一個Unit，一個multi-user.target執行模式也是一個Unit。
  - 采用[Socket激活式与](https://zh.wikipedia.org/wiki/Socket "wikilink")[D-Bus](../Page/D-Bus.md "wikilink")激活式服务，以提高相互依赖的各服务的并行运行性能；
  - 用[cgroups代替](https://zh.wikipedia.org/wiki/cgroups "wikilink")[进程ID](../Page/进程ID.md "wikilink")来追踪进程，以此即使是两次[fork之后生成的守护进程也不会脱离systemd的控制](https://zh.wikipedia.org/wiki/Fork_\(操作系统\) "wikilink")。
  - 用target代替System
    V的[執行級別](https://zh.wikipedia.org/wiki/執行級別 "wikilink")（Runlevel），比如，SystemD的graphical.target相當於System
    V的init 5，multi-user.target相當於System V的init 3。
  - 內建新的[journald](https://zh.wikipedia.org/wiki/journald "wikilink")
    [日誌管理系統](https://zh.wikipedia.org/wiki/日誌 "wikilink")。
  - 引入`localectl`、`timedatectl`等新命令，系統配置更方便。

从设计构思上说，由于systemd使用了cgroup与fanotify等组件以实现其特性，所以只适用于Linux\[4\]。有鉴于此，考虑到[kFreeBSD分支的软件源无法纳入systemd](https://zh.wikipedia.org/wiki/Debian_GNU/kFreeBSD "wikilink")，为与其他分支保持一致，[Debian](../Page/Debian.md "wikilink")开发者尽力避免纳入systemd\[5\]。但Lennart
Poettering本人对此并不在意，并称「Debian GNU/kFreeBSD不过是玩具系统」\[6\]。但Debain 8.0
Jessie開始以systemd取代sysvinit。\[7\]。

## 应用

systemd已纳入众多[Linux发行版](../Page/Linux发行版.md "wikilink")的软件源中，以下简表：

  - 默认init程序为systemd的发行版

<!-- end list -->

  - [Fedora](../Page/Fedora.md "wikilink") 15及后续版本\[8\]
  - [Mageia](../Page/Mageia.md "wikilink") 2\[9\]
  - [Mandriva](../Page/Mandriva_Linux.md "wikilink") 2011\[10\]
  - [openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink") 12.1
    及后续版本\[11\]
  - [Red Hat Enterprise
    Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink")
    7及后续版本，包括其衍生品[CentOS](../Page/CentOS.md "wikilink")、[Scientific
    Linux](../Page/Scientific_Linux.md "wikilink")、[Oracle
    Linux等](../Page/Oracle_Linux.md "wikilink")
  - [Arch
    Linux在](../Page/Arch_Linux.md "wikilink")2012年10月13日将systemd-sysvcompat纳入base软件组，自此Arch
    Linux默認安裝完即以systemd為init程序\[12\]，同时也提供了与Arch自带启动脚本兼容用的systemd启动脚本包以方便用户，使用户能“开箱即用”\[13\]
  - [Chakra
    GNU/Linux](https://zh.wikipedia.org/wiki/Chakra_GNU/Linux "wikilink")，在2012.10的光碟映像檔發佈後預設使用systemd。\[14\]
  - [Debian
    GNU/Linux](https://zh.wikipedia.org/wiki/Debian_GNU/Linux "wikilink")，在2014年的技術委員會的init系統投票中決定在Debian
    8“Jessie”中以Linux為核心的版本轉換到systemd\[15\]。
  - [Ubuntu](../Page/Ubuntu.md "wikilink") 15.04及后续版本\[16\]

<!-- end list -->

  - 可以使用systemd的发行版

<!-- end list -->

  - [Gentoo](https://zh.wikipedia.org/wiki/Gentoo "wikilink")，同OpenRC一起被Gentoo官方支持\[17\]\[18\]\[19\]

[缩略图](https://zh.wikipedia.org/wiki/File:Systemd_manager.png "fig:缩略图")
除此以外，systemd已由Lennart
Poettering提请纳入[GNOME](../Page/GNOME.md "wikilink")
3.2的外部依赖关系列表\[20\]，而这意味着所有使用[GNOME](../Page/GNOME.md "wikilink")的发行版都应该使用systemd，最低限度来说也必须将其作为配置选项之一。

## 注释

## 参考文献

## 外部链接

  -
  -
  -
  -
  -
## 参见

  - [BusyBox](../Page/BusyBox.md "wikilink")

  -
  - [readahead](https://zh.wikipedia.org/wiki/readahead "wikilink")

  -
  - [Upstart](../Page/Upstart.md "wikilink")

  -
{{-}}

[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")
[Category:Linux文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Linux文件系统相关软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.