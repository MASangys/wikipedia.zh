**udev** 是Linux kernel
2.6系列的设备管理器。它主要的功能是管理`/dev`目錄底下的[设备节点](https://zh.wikipedia.org/wiki/设备节点 "wikilink")。它同时也是用来接替[devfs及](https://zh.wikipedia.org/wiki/devfs "wikilink")[hotplug的功能](https://zh.wikipedia.org/wiki/hotplug "wikilink")，这意味着它要在添加/删除硬件时处理`/dev`目录以及所有用户空间的行为，包括加载[firmware时](https://zh.wikipedia.org/wiki/firmware "wikilink")。

udev的最新版本依赖于升级后的Linux kernel
2.6.13的[uevent接口的最新版本](https://zh.wikipedia.org/wiki/uevent "wikilink")。使用新版本udev的系统不能在2.6.13以下版本启动，除非使用*noudev*参数来禁用udev并使用传统的`/dev`来进行设备读取。

2012年4月，udev被合併至[systemd](https://zh.wikipedia.org/wiki/systemd "wikilink")。

## 概要

在传统的Linux系统中，`/dev`目录下的设备节点为一系列静态存在的文件，而udev则动态提供了在系统中实际存在的设备节点。虽然devfs提供了类似功能，udev的支持者也给出了很多udev实现得比devfs好的理由\[1\]：

  - udev支持设备的固定命名，而并不依赖于设备插入系统的顺序。默认的udev设置提供了存储设备的固定命名。可以使用其vid（vendor）、pid（device）、设备名称（model）等属性或其父设备的对应属性来确认某一设备。
  - udev完全在[用户空间执行](https://zh.wikipedia.org/wiki/用户空间 "wikilink")，而不是像devfs在[内核空间一样执行](https://zh.wikipedia.org/wiki/内核空间 "wikilink")。结果就是udev将命名策略从内核中移走，并可以在节点创建前用任意程序在设备属性中为设备命名。

## 运行方式

udev是一个通用的内核设备管理器。它以守护进程的方式运行于Linux系统，并监听在新设备初始化或设备从系统中移除时，内核（通过[netlink](https://zh.wikipedia.org/wiki/netlink "wikilink")
socket）所发出的uevent。

系统提供了一套规则用于匹配可发现的设备事件和属性的导出值。匹配规则可能命名并创建设备节点，并运行配置程序来对设备进行设置。udev规则可以匹配像内核子系统、内核设备名称、设备的物理等属性，或设备序列号的属性。规则也可以请求外部程序提供信息来命名设备，或指定一个永远一样的自定义名称来命名设备，而不管设备什么时候被系统发现。

## 系统架构

udev系统可以分为三个部分：

  - libudev函数库，可以用来获取设备的信息。
  - udevd守护进程，处于用户空间，用于管理虚拟`/dev`
  - 管理命令udevadm，用来诊断出错情况。

系统获取内核通过netlink
socket发出的信息。早期的版本使用[hotplug](https://zh.wikipedia.org/wiki/hotplug "wikilink")，并在`/etc/hotplug.d/default`添加一个链接到自身来达到目的。

## 命令格式

BUS 总线 KERNEL 内核名如sd\* ID 设备id 如总线id PLACE

SYSFS{filename} 或 ATTR{filename}

PROGRAM 调用外部程序 RESULT 匹配program返回的结果 NAME

SYMLINK 连接规则

## 编写规则

udev配置文件是/etc/udev/udev.conf，文件内容中很重要的一项是指定udev规则存储的目录，形如udev_rules=“/etc/udev/rules.d”.
指定的目录中存储一系列以.rules结束的规则文件，每个文件处理一系列规则来帮助udev分配名字给设备文件并保证内核可以识别此名字。

规则文件由系列键-值对组成，键值对分两类：匹配键(使用操作符"==","\!="等)和赋值键(使用"=","+=",":="等)。匹配键判断规则是否应被应用，赋值键可以被分配一到多个值。

有些常用的键已经有了固定的含义，这里列举出最基本的几个。这也是基本规则之一，更多编辑规则请参见man udev页。

  - KERNEL - 匹配设备的内核名字
  - SUBSYSTEM - 匹配设备的子系统
  - DRIVER - 匹配设备驱动名
  - NAME - 应当被采用为设备节点的名字
  - SYMLINK - 一系列被作为设备节点替补名字的符号链接

常用键举例：KERNEL=="hdb", DRIVER=="ide-disk", NAME="my_spare_disk",
SYMLINK+="sparedisk"

## 作者

udev由[Greg
Kroah-Hartman和](https://zh.wikipedia.org/wiki/Greg_Kroah-Hartman "wikilink")[Kay
Sievers共同开发](https://zh.wikipedia.org/wiki/Kay_Sievers "wikilink")，并得到[Dan
Stekloff等人的帮助](https://zh.wikipedia.org/wiki/Dan_Stekloff "wikilink")。

## 外部链接

  - [udev在kernel.org的主页](https://web.archive.org/web/20071203211553/http://www.kernel.org/pub/linux/utils/kernel/hotplug/udev.html)

  - [Kay
    Sievers写的udev最近动态](https://web.archive.org/web/20080508024447/http://vrfy.org/log/recent-state-of-udev.html)

  - [如何编写udev规则](http://www.reactivated.net/writing_udev_rules.html)

  - [udev问答集](https://web.archive.org/web/20071127023731/http://www.kernel.org/pub/linux/utils/kernel/hotplug/udev-FAQ)

  - [Gentoo的udev指南](http://www.gentoo.org/doc/en/udev-guide.xml)

  - [udev和devfs的对比](https://web.archive.org/web/20071127023736/http://www.kernel.org/pub/linux/utils/kernel/hotplug/udev_vs_devfs)

  - [Linux1394常见问题：在不同驱动器上创建设备节点要如何设置udev规则](http://www.linux1394.org/faq.php#udev)

  - [udev教程](https://web.archive.org/web/20070928142915/http://www.linuxformat.co.uk/pdfs/LXF66.tut_udev.pdf)

## 参考文献

[Category:Linux文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Linux文件系统相关软件 "wikilink")

1.