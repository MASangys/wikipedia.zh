**libguestfs**是一组使用于[硬件虚拟化中旨在用于访问及修改](../Page/硬件虚拟化.md "wikilink")[磁盘映像的](../Page/磁盘映像.md "wikilink")[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")[函式庫和配套工具](../Page/函式庫.md "wikilink")。此工具可查看并编辑由[libvirt所管理的虚拟机及其内部文件](https://zh.wikipedia.org/wiki/libvirt "wikilink")、为虚拟机撰写脚本、创建虚拟机等等\[1\]。

libguestfs几乎可访问任意类型的文件系统，包括：所有已知类型的Linux文件系统（[ext2](../Page/Ext2.md "wikilink")/[3](../Page/Ext3.md "wikilink")/[4](../Page/Ext4.md "wikilink")、[XFS](../Page/XFS.md "wikilink")、[btrfs等等](../Page/Btrfs.md "wikilink")）、任意类型的Windows
文件系统（[VFAT及](../Page/FAT.md "wikilink")[NTFS](../Page/NTFS.md "wikilink")）、任意类型的macOS及BSD文件系统、[LVM2卷宗管理](https://zh.wikipedia.org/wiki/邏輯捲軸管理員 "wikilink")、[MBR及](../Page/主引导记录.md "wikilink")[GPT磁盘分区](../Page/GUID磁碟分割表.md "wikilink")、未格式化的硬盘、、VirtualBox
[VDI](../Page/VirtualBox.md "wikilink")、VMWare 、Hyper-V
/VHDX、文件、本地设备、CD/DVD
ISO、SD卡或通过FTP、HTTP、[SSH](../Page/Secure_Shell.md "wikilink")、[iSCSI](../Page/ISCSI.md "wikilink")、[NBD](../Page/网络块设备.md "wikilink")、、、Sheepdog等程序远程管理。libguestfs无需root权限。

libguestfs的功能由`guestfish`外壳（Shell）提供。若虚拟机无法启动，则可使用援救外壳`virt-rescue`进行修复。现有工具将普通的[Unix命令作为样板使用](../Page/UNIX.md "wikilink")，如工具`virt-cat`及`virt-tar`。\[2\]

libguestfs同时也是可与C和[C++管理程序关联](../Page/C++.md "wikilink")，并为[Perl](../Page/Perl.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Java](../Page/Java.md "wikilink")、[OCaml](../Page/OCaml.md "wikilink")、[PHP](../Page/PHP.md "wikilink")、[Haskell](../Page/Haskell.md "wikilink")、[Erlang](../Page/Erlang.md "wikilink")、[Lua](../Page/Lua.md "wikilink")、[Golang](../Page/Go.md "wikilink")
和[C\#相关联的](../Page/C♯.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")。此接口可被壳层脚本调用或在命令行中直接运行。使用[FUSE模块的情况下](../Page/FUSE.md "wikilink")，客户机文件系统可通过使用`guestmount`命令挂载到宿主机上。\[3\]

[Linux内核的](../Page/Linux内核.md "wikilink")[基于内核的虚拟机实现了libguestfs](../Page/基于内核的虚拟机.md "wikilink")\[4\]。

## 另请参阅

  - [基于内核的虚拟机](../Page/基于内核的虚拟机.md "wikilink")（KVM）

  - [QEMU](../Page/QEMU.md "wikilink")

  - [libvirt](https://zh.wikipedia.org/wiki/libvirt "wikilink")

  - [OpenStack](../Page/OpenStack.md "wikilink")

  -
## 参考文献

## 外部链接

  -
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:自由虚拟化软件](https://zh.wikipedia.org/wiki/Category:自由虚拟化软件 "wikilink")
[Category:虛擬機器](https://zh.wikipedia.org/wiki/Category:虛擬機器 "wikilink")
[Category:Linux虚拟化相关软件](https://zh.wikipedia.org/wiki/Category:Linux虚拟化相关软件 "wikilink")

1.

2.

3.
4.