> 本文内容由[Libvirt](https://zh.wikipedia.org/wiki/Libvirt)转换而来。


**libvirt**是一套用于管理[硬件虚拟化](../Page/硬件虚拟化.md "wikilink")的[开源](../Page/开源软件.md "wikilink")[API](../Page/应用程序接口.md "wikilink")、[守护进程](../Page/守护进程.md "wikilink")与管理工具。\[1\]此套组可用于管理[KVM](../Page/基于内核的虚拟机.md "wikilink")、[Xen](../Page/Xen.md "wikilink")、、[QEMU](../Page/QEMU.md "wikilink")及其他虚拟化技术。libvirt内置的API广泛用于云解决方案开发中的[虚拟机监视器编排层](../Page/Hypervisor.md "wikilink")（Orchestration Layer）。

## 内部构造

[Libvirt_support.svg](https://zh.wikipedia.org/wiki/File:Libvirt_support.svg "fig:Libvirt_support.svg")且被多个管理方案所支持\]\] libvirt是一个[C语言库](https://zh.wikipedia.org/wiki/C语言 "wikilink")，但也被其他语言的应用程序所应用，如最为人知的[Python](../Page/Python.md "wikilink")、\[2\][Perl](../Page/Perl.md "wikilink")、\[3\][OCaml](../Page/OCaml.md "wikilink")、\[4\][Ruby](../Page/Ruby.md "wikilink")、\[5\][Java](../Page/Java.md "wikilink")、\[6\][JavaScript](../Page/JavaScript.md "wikilink")（使用[Node.js](../Page/Node.js.md "wikilink")）\[7\]及[PHP](../Page/PHP.md "wikilink")。\[8\] 在这些语言中，libvirt被封装为libvirtmod类或包。libvirtmod的实现与其C/C++语言的相应实现在语法和功能方面紧密相关。

### 支持应用

  - [LXC](../Page/LXC.md "wikilink") – 轻量级Linux容器系统

  - [OpenVZ](../Page/OpenVZ.md "wikilink") – 轻量级Linux容器系统

  - [基于内核的虚拟机](../Page/基于内核的虚拟机.md "wikilink")/[QEMU](../Page/QEMU.md "wikilink")（KVM）– 支持Linux及SmartOS的开源虚拟机监视器\[9\]

  - [Xen](../Page/Xen.md "wikilink") – 裸机虚拟机监视器

  - （UML）超虚拟化内核

  - [VirtualBox](../Page/VirtualBox.md "wikilink") – 由Oracle（先前为Sun）开发、支持Windows、Linux、[MacOS](../Page/MacOS.md "wikilink")和[Solaris](../Page/Solaris.md "wikilink")的虚拟机监视器

  - 及GSX – 英特尔硬件虚拟机监视器

  - [VMware Workstation和VMware](../Page/VMware_Workstation.md "wikilink") Player – 适用于Windows及Linux的虚拟机监视器

  - – 由[微软](../Page/微软.md "wikilink")为Windows打造的虚拟机监视器

  - – 由IBM为[AIX](../Page/IBM_AIX.md "wikilink")、Linux和IBM i平台打造的虚拟机监视器

  - – 由Parallels IP Holdings GmbH为macOS开发的虚拟机监视器

  - – 支持[FreeBSD](../Page/FreeBSD.md "wikilink") 10+的虚拟机监视器。\[10\]（于libvirt 1.2.2版本中添加支持）

### 用户界面

诸多虚拟化程序及平台均使用libvirt。[Virtual Machine Manager和其他软件提供用户界面支持](../Page/Virtual_Machine_Manager.md "wikilink")。最饱受欢迎的命令行界面程序为和更为高级的工具（如）。\[11\]

[GNOME 機櫃也使用libvirt](../Page/GNOME_機櫃.md "wikilink")。

## 合作关系

[紅帽公司](../Page/紅帽公司.md "wikilink")支持libvirt的开发\[12\]，同时其他组织及个体也做出了重大贡献。Libvirt可用于多数Linux发行版中；其远程服务器端可被[蘋果公司的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")及[Microsoft Windows客户端访问](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。\[13\]

## 另请参阅

  -
  - [libguestfs](https://zh.wikipedia.org/wiki/libguestfs "wikilink")

  -
## 参考文献

## 参阅书籍

  -
## 外部链接

  -
  - [邮件列表](http://libvirt.org/contact.html)

[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:自由虚拟化软件](https://zh.wikipedia.org/wiki/Category:自由虚拟化软件 "wikilink") [Category:硬件虚拟化](https://zh.wikipedia.org/wiki/Category:硬件虚拟化 "wikilink") [Category:Linux_API](https://zh.wikipedia.org/wiki/Category:Linux_API "wikilink") [Category:Linux虚拟化相关软件](https://zh.wikipedia.org/wiki/Category:Linux虚拟化相关软件 "wikilink")

1.  {{ cite web | url=<http://libvirt.org> | title=libvirt home page description }}
2.  {{ cite web | url=<http://libvirt.org/python.html> | title=Python bindings }}
3.  {{ cite web | url=<https://metacpan.org/module/Sys>::Virt | title=Perl bindings }}
4.  {{ cite web | url=<http://libvirt.org/ocaml/> | title=OCaml bindings }}
5.  {{ cite web | url=<http://libvirt.org/ruby/> | title=Ruby bindings }}
6.  {{ cite web | url=<http://www.libvirt.org/java.html> | title=Java bindings }}
7.  {{ cite web | url=<https://www.npmjs.com/package/libvirt> | title=Node.js module }}
8.  {{ cite web | url=<http://libvirt.org/php/> | title=PHP bindings }}
9.
10.
11. {{ cite web | url=<http://press.redhat.com/2008/06/18/more-on-red-hat’s-virtualization-news/> | title=oVirt Virtualization Management Platform }}
12. {{ cite web | url=<http://press.redhat.com/2009/09/02/innovation-without-disruption-red-hat-enterprise-linux-5-4-now-available/> | title=Innovation Without Disruption: Red Hat Enterprise Linux 5.4 Now Available }}
13. {{ cite web | url=<http://libvirt.org/windows.html> | title=Windows availability }}