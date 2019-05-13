在[类Unix系统中](../Page/类Unix系统.md "wikilink")，**/dev/loop**（或称**vnd**
(vnode
disk)、**lofi**（循环文件接口））是一种[伪设备](../Page/设备文件系统.md "wikilink")，这种设备使得[文件可以如同](../Page/计算机文件.md "wikilink")[块设备一般被访问](../Page/设备文件系统.md "wikilink")。

在使用之前，循环设备必须与现存文件系统上的文件相关联。这种关联将提供给用户一个[应用程序接口](../Page/应用程序接口.md "wikilink")，接口将允许文件视为块特殊文件（参见[设备文件系统](../Page/设备文件系统.md "wikilink")）使用。因此，如果文件中包含一个完整的[文件系统](../Page/文件系统.md "wikilink")，那么这个文件就能如同磁盘设备一般被[挂载](../Page/挂载.md "wikilink")。

这种设备文件经常被用于光碟或是磁盘镜像。通过**循环挂载**来挂载包含文件系统的文件，便使处在这个文件系统中的文件得以被访问。这些文件将出现在[挂载点目录](../Page/挂载点.md "wikilink")。如果挂载目录中本身有文件，这些文件在挂载后将被禁止使用。

一个循环设备或许能允许在重定向过程中进行一些数据处理。例如，设备可能是一个被加密文件的解密形式。在这种情况下，与循环设备相关的文件可能是另一种伪设备。当设备包含加密文件系统时，这种数据处理十分有用。如果数据处理得到支持且原文件被加密，循环设备将是此加密文件的解密形式并且设备可以如同普通文件系统一般被挂载。

## 循环挂载的使用

在挂载了含有文件系统的文件之后，存储于该文件系统中的文件不需要特殊函数的支持便可以被常规的文件系统接口或是系统访问。例如在应用程序中读写光盘镜像文件。

应用包括管理与编辑文件系统镜像以提供日后使用（尤其是CD、DVD镜像或是安装系统）或是在实际应用中永久隔离一些数据（例如在可移动媒体上模拟一个更快，更方便的硬盘或封装加密的文件系统）。

循环设备提供了在单个文件中安装操作系统一种便捷方法，使得安装操作系统不必为磁盘驱动器重新分区。

## 可用性

在各种操作系统中循环设备的命名存在着一些混乱。各种类Unix操作系统中，功能性的循环设备被以不同的名字命名。

在Linux中，设备名按照相应设备驱动程序的符号表项进行命名。这些设备被叫做“loop”设备，设备节点通常命名为`/dev/loop0`,
`/dev/loop1`之类。
静态设备目录可以用[makedev脚本创建](../Page/makedev.md "wikilink")，或者动态地由设备文件系统([udev](../Page/udev.md "wikilink"))设施创建。
循环设备的管理界面是
`losetup`，这是[util-linux软件包的一部分](../Page/util-linux.md "wikilink")。

有时，循环设备被错误地认为是回环设备，但是这个术语在Linux内核中是为网络设备保留的（参见[回环网卡](../Page/回环网卡.md "wikilink")）。循环设备的概念和回环设备不同，虽然在名字上有相似的地方。

在[NetBSD和](../Page/NetBSD.md "wikilink")[OpenBSD等BSD所衍生的系统中](../Page/OpenBSD.md "wikilink")，循环设备被称为“虚拟节点设备”或“vnd”，并且设备被置于
`/dev/vnd0`, `/dev/rvnd0` 或 `/dev/svnd0`等处。在文件系统中，使用`vnconfig`程序来进行配置。

[FreeBSD在发行版](../Page/FreeBSD.md "wikilink")5之前和其他BSD系统一样遵守约定，之后循环设备便被纳入记忆磁盘设备（"md"）。目前使用`mdconfig`\[1\]程序进行配置。

在[Solaris](../Page/Solaris.md "wikilink")/[OpenSolaris中](../Page/OpenSolaris.md "wikilink")，循环设备被称为
"回环文件接口" 或 lofi,\[2\] 位于 `/dev/lofi/1`等处。SunOS 拥有 `lofiadm`
配置程序。"lofi"驱动程序支持只读压缩和可读写的加密。
自从1988年夏季开始更有SunOS/Solaris平台的第三方驱动 "fbk"\[3\]
(文件模拟块设备,英文:File emulates Blockdevice)

[Mac OS
X实现了一个原生的镜像挂载机制并作为其随机访问磁盘设备的抽象](../Page/Mac_OS_X.md "wikilink")。这些设备如同普通设备一样出现在
`/dev`
中，读写操作被送往一个用户模式的辅助进程，并由辅助进程负责读取和写入的操作。在用户界面中当打开磁盘镜像的时候自动被启用。这可以处理多种格式的盘片、CD-ROM
或 DVD 镜像。

在[Microsoft
Windows操作系统上并不能原生支持循环挂载](../Page/Microsoft_Windows.md "wikilink")（直到[Windows
7](../Page/Windows_7.md "wikilink")，这个功能才被原生实现，并通过工具[diskpart进行工作](../Page/diskpart.md "wikilink"))。
<ref>See for example:

`  `[`DiskPart:``   ``vdisk``   ``create``   ``select``
 ``attach`](http://blogs.msdn.com/7/archive/2009/10/08/diskpart-exe-and-managing-virtual-hard-disks-vhds-in-windows-7.aspx)`, `
`  `[`install``   ``and``   ``boot``   ``Windows``   ``7``   ``from``
 ``virtual``   ``disk``
 ``drive`](http://www.sevenforums.com/tutorials/2953-virtual-hard-drive-vhd-file-create-start-boot.html)` and `
`  `[`other`](http://www.google.com/search?num=100&hl=en&lr=&q=%22Diskpart%22+%22vdisk%22+create+select+attach+detach+site%3Atechnet.microsoft.com+-site%3Asocial.technet.microsoft.com&aq=f&aqi=&aql=&oq=&gs_rfai=)` `

relative articles on this thematics. </ref>
然而，这项能力经常通过第三方程序得以实现，例如*[Daemon
Tools](../Page/Daemon_Tools.md "wikilink")* 和 *[Alcohol
120%](../Page/Alcohol_120%.md "wikilink")*
[VMware](http://www.vmware.com/download/eula/diskmount_ws_v55.html)的免费工具以及[LTR
Data](http://www.ltr-data.se/opencode.html#ImDisk)
([ImDisk](../Page/ImDisk.md "wikilink"))都可以实现类似的功能。

## 实例

在目录上挂载包含文件系统的文件一般需要两步：

1.  用一个循环[设备节点连接文件](../Page/设备文件系统.md "wikilink")。
2.  在目录上挂载该循环设备

这两个操作既可以用两条命令来完成，也可以通过加上特殊的挂载符号的挂载命令来完成。第一个操作可以通过如[Linux平台下的](../Page/Linux.md "wikilink")`losetup`\[4\]或者是SunOS上的`lofiadm`\[5\]命令完成。

例如，如果 `example.img` 是一个包含文件系统的常规文件，并且 `/home/you/dir` 是
Linux用户的目录，[超级用户](../Page/超级用户.md "wikilink")（root）或许可以通过执行如下的命令来将文件挂载在目录上：

`losetup /dev/loop0 example.img`
`mount /dev/loop0 /home/you/dir`

其中第二条命令将设备挂载于目录
`/home/you/dir`。执行上述语句的效果便是文件被作为文件系统挂载，文件的内容出现在被挂载的目录中（以被挂载的目录作为根目录）。

此外 mount 工具常常可以胜任整个挂载的程序：

`mount -o loop example.img /home/you/dir`

之后设备便能用下列命令实现卸载：

`umount /home/you/dir`
`# 或者通过诸如 mount | grep "/home/you/dir" `
`# 或是 losetup -a | grep example.img 的查找找到与文件相关联的loop设备号码`
`# 并执行下列命令：（`<N>`代表设备号）`
`umount /dev/loop`<N>` `

在较底层的[应用程序接口中](../Page/应用程序接口.md "wikilink")，文件的关联与解除关联通过在循环设备上的[ioctl](../Page/ioctl.md "wikilink")
[系统调用来实现](../Page/系统调用.md "wikilink")。

## 参见

  - [设备文件系统](../Page/设备文件系统.md "wikilink")
  - [虚拟硬盘](../Page/虚拟硬盘.md "wikilink")
  - [网络块设备](../Page/网络块设备.md "wikilink")
  - [磁盘镜像](../Page/磁盘镜像.md "wikilink")

## 引用

## 外部链接

  - [配置循环设备](https://archive.is/20040210140744/http://www.linux.org/docs/ldp/howto/Cryptoloop-HOWTO/loopdevice-setup.html)
    from the [cryptoloop](../Page/cryptoloop.md "wikilink")
    [HOWTO](../Page/HOWTO.md "wikilink").
  - [使用循环设备挂载磁盘镜像](http://bochs.sourceforge.net/doc/docbook/user/loop-device-usage.html)
    from the *[Bochs](../Page/Bochs.md "wikilink") User Manual*

[Category:设备文件](https://zh.wikipedia.org/wiki/Category:设备文件 "wikilink")
[Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")

1.  [mdconfig—configure and enable memory disks, FreeBSD manual
    page](http://www.freebsd.org/cgi/man.cgi?mdconfig)
2.
3.
4.  [losetup manual
    page](http://www.cl.cam.ac.uk/cgi-bin/manpage?8+losetup)
5.  [lofiadm, Sun System Administration Command
    manual](http://docs.sun.com/app/docs/doc/819-2240/lofiadm-1m?a=view)