**Upstart**是一个[基于事件的](../Page/事件驅動程式設計.md "wikilink")[init程式](../Page/init.md "wikilink")
，用于替代传统的[init](../Page/init.md "wikilink")（多种[类Unix计算机](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统启动时用于执行任务的程序](../Page/操作系统.md "wikilink")）。它是由[Canonical公司前雇员](https://zh.wikipedia.org/wiki/Canonical公司 "wikilink")[Scott
James
Remnant所写](https://zh.wikipedia.org/wiki/Scott_James_Remnant "wikilink")。

## 解释

传统的init进程原本只负责在开机后将计算机带入正常运行状态，并且在正常关机前关闭服务。因此，它的设计是严格[同步的](https://zh.wikipedia.org/wiki/同步_\(计算机科学\) "wikilink")，且会[阻塞未来的任务](https://zh.wikipedia.org/wiki/阻塞_\(计算机\) "wikilink")，直到完成当前任务。因为受限于准备或清除函数，它的任务也是事先定义的。这使得它无法简洁地处理现代[桌面计算机上的各种非启动任务](https://zh.wikipedia.org/wiki/桌面计算机 "wikilink")，其中包括：

  - 机器运行时添加或删除[U盘和其他便携式存储](https://zh.wikipedia.org/wiki/U盘 "wikilink")/网络设备
  - 发现并扫描新存储设备而不锁定系统，尤其是当磁盘没被扫描就不运行时
  - [固件需要在检测设备之后](https://zh.wikipedia.org/wiki/固件 "wikilink")、在它可用之前加载

Upstart的事件驱动模型允许它以异步方式对生成的事件作出回应。\[1\]

## 设计

Upstart是异步工作的；它在系统运行时监督服务，并且在开关机时启动和关闭任务和服务。

对[sysvinit简单的过渡和完善的](https://zh.wikipedia.org/wiki/sysvinit "wikilink")[向后兼容是明确的设计目标](../Page/向下兼容.md "wikilink")；\[2\]因此，Upstart能运行未经修改的sysvinit脚本。因此，与大多数其他的init替代（除了[systemd和](../Page/systemd.md "wikilink")[OpenRC](https://zh.wikipedia.org/wiki/OpenRC "wikilink")）不同，它们通常假设并要求彻底的过渡，以正常运行，且不支持新旧启动方法混合的环境。\[3\]

通过使用initctl输入自定义的单一事件，或整合更多更复杂事件的事件桥，Upstart允许扩展其事件模型。\[4\]默认情况下，Upstart包括接口（socket）、dbus、udev、文件及dconf事件桥；另外，可以有更多种桥（例如[Mach端口桥](../Page/Mach.md "wikilink")，或devd（[FreeBSD系统上](../Page/FreeBSD.md "wikilink")）桥）。\[5\]

## 采用

使用Upstart作为默认init系统的[Linux发行版及其他基于](../Page/Linux发行版.md "wikilink")[Linux内核的操作系统](../Page/Linux内核.md "wikilink")：

  - Upstart被用于[谷歌的](https://zh.wikipedia.org/wiki/谷歌 "wikilink")[Chrome
    OS](../Page/Chrome_OS.md "wikilink")。\[6\]

支持或已在一定程度上支持Upstart，但弃用它作为默认init系统的Linux发行版：

  - [Debian在考虑切换至Upstart后](../Page/Debian.md "wikilink")，\[7\]决定systemd将从*[jessie](https://zh.wikipedia.org/wiki/Debian发行版列表 "wikilink")*版(Debian
    8)开始作为默认init系统。\[8\]

  - [Ubuntu首次在](../Page/Ubuntu.md "wikilink")2006年底*[6.10 (Edgy
    Eft)](https://zh.wikipedia.org/wiki/Ubuntu发行版列表#Ubuntu_6.10_\(Edgy_Eft\) "wikilink")*版中包含Upstart，以取代[sysvinit](https://zh.wikipedia.org/wiki/sysvinit "wikilink")。Ubuntu
    9.10(Karmic Koala) Alpha
    6中推出可原生启动的Upstart。\[9\]反过来，在2014年Debian项目决定在未来的版本中使用[systemd后](../Page/systemd.md "wikilink")，Ubuntu在15.04起亦改用systemd，以保持与上游一致。\[10\]\[11\]

  - 在[Fedora](../Page/Fedora.md "wikilink")
    9中，Upstart替换了[sysvinit](https://zh.wikipedia.org/wiki/sysvinit "wikilink")，然而，systemd在Fedora15版本替代了Upstart。\[12\]\[13\]

  - 红帽在他们的[Red Hat Enterprise
    Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink")
    6中包含了Upstart。\[14\]因此，它也被用于RHEL
    6的变体，如[CentOS](../Page/CentOS.md "wikilink")、[Scientific
    Linux和](../Page/Scientific_Linux.md "wikilink")[Oracle
    Linux](../Page/Oracle_Linux.md "wikilink")。RHEL
    7中将使用systemd。\[15\]\[16\]

  - [openSUSE在](../Page/openSUSE.md "wikilink")11.3 Milestone
    4版包含了upstart，但未作为默认。\[17\]在openSUSE
    12.1版中，systemd取代Upstart作为默认init系统。\[18\]

  - Upstart被用于[惠普](../Page/惠普.md "wikilink")[Palm
    Pre](../Page/Palm_Pre.md "wikilink")、[Palm
    Pixi](https://zh.wikipedia.org/wiki/Palm_Pixi "wikilink")（在Palm被惠普收购之前）、[HP
    Veer](https://zh.wikipedia.org/wiki/HP_Veer "wikilink")、[HP Pre
    3智能手机](https://zh.wikipedia.org/wiki/HP_Pre_3 "wikilink")[HP
    TouchPad和](https://zh.wikipedia.org/wiki/HP_TouchPad "wikilink")[平板中的](https://zh.wikipedia.org/wiki/平板电脑 "wikilink")[webOS](https://zh.wikipedia.org/wiki/webOS "wikilink")\[19\]并为N9和N950手机上的[MeeGo保留](../Page/MeeGo.md "wikilink")，尽管MeeGo与[Moblin合并后正向systemd过渡](../Page/Moblin.md "wikilink")。

  -
## 参见

  - [服务管理工具](https://zh.wikipedia.org/wiki/服务管理工具 "wikilink")
  - [OpenRC](https://zh.wikipedia.org/wiki/OpenRC "wikilink")
  - [systemd](../Page/systemd.md "wikilink")

## 参考

## 外部链接

  - [主页](http://upstart.ubuntu.com/)

  -
  - [Upstart Cookbook](http://upstart.ubuntu.com/cookbook)

  - [Upstart
    Cookbook](http://upstart.ubuntu.com/cookbook/upstart_cookbook.pdf)

  - 初始化系统比较：[part 1](https://lwn.net/Articles/578209/)和[part 2](https://lwn.net/Articles/578210/)
    ([LWN.net](https://zh.wikipedia.org/wiki/LWN.net "wikilink"))

[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")
[Category:Ubuntu](https://zh.wikipedia.org/wiki/Category:Ubuntu "wikilink")

1.
2.  .
3.  .
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