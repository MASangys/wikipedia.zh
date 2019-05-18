**Hypervisor**，又稱**虛擬機器監視器**（，縮寫為
VMM），是用來建立與執行[虛擬機器的軟體](../Page/虛擬機器.md "wikilink")、韌體或硬體。

被Hypervisor用來執行一個或多個虛擬機器的電腦稱為主體機器（host machine），這些虛擬機器則稱為客體機器（guest
machine）。hypervisor提供虛擬的作業平台來執行客體作業系統（guest operating
systems），負責管理其他客體作業系統的執行階段；這些客體作業系統，共同分享虛擬化後的硬體[資源](https://zh.wikipedia.org/wiki/資源_\(計算機科學\) "wikilink")。

## 分类

[Hyperviseur.png](https://zh.wikipedia.org/wiki/File:Hyperviseur.png "fig:Hyperviseur.png")
在他们1974年的文章“Formal Requirements for Virtualizable Third Generation
Architectures”[Gerald J.
Popek和](https://zh.wikipedia.org/wiki/Gerald_J._Popek "wikilink")[Robert
P.
Goldberg发表了两种类型的Hypervisor](https://zh.wikipedia.org/wiki/Robert_P._Goldberg "wikilink")\[1\]，分別是類型I和類型II。

### 类型I：本地或裸机Hypervisor

[VMM-Type1.JPG](https://zh.wikipedia.org/wiki/File:VMM-Type1.JPG "fig:VMM-Type1.JPG")
这些虚拟机管理程序直接运行在主机的硬件来控制硬件和管理客体操作系统上。

  - 特点

<!-- end list -->

1.  需要硬件支持
2.  虚拟机监视器作为主操作系统
3.  运行效率高

<!-- end list -->

  - 举例

<!-- end list -->

1.  [VMware](../Page/VMware.md "wikilink")5.5及以后版本
2.  [Xen](../Page/Xen.md "wikilink")3.0以后版本
3.  [Virtual PC](https://zh.wikipedia.org/wiki/Virtual_PC "wikilink")
    2005
4.  [KVM](https://zh.wikipedia.org/wiki/Kernel-based_Virtual_Machine "wikilink")

### 类型II：Hosted Hypervisor

[VMM-Type2.JPG](https://zh.wikipedia.org/wiki/File:VMM-Type2.JPG "fig:VMM-Type2.JPG")
这些虚拟机管理程序运行在传统的操作系统上，就像其他计算机程序那样运行。

  - 特点

<!-- end list -->

1.  虚拟机监视器作为应用程序运行在主操作系统环境内
2.  运行效率一般较类型I低

<!-- end list -->

  - 举例

<!-- end list -->

1.  VMware5.5以前版本
2.  Xen3.0以前版本
3.  Virtual PC 2004

## 操作系统支持

有几个因素导致了2005年左右，在使用虚拟化技术在Unix，Linux，以及其他类Unix操作系统之间的复苏\[2\]：

  - 扩展中的硬件功能，允许每个单台机器做更多同时的工作，
  - 努力控制成本，和通过整合服务器来简化管理
  - 在需要控制在大型[多处理器处理和](https://zh.wikipedia.org/wiki/多元处理 "wikilink")[群集安装](../Page/计算机集群.md "wikilink")，例如[服务器农场和](../Page/服务器农场.md "wikilink")[着色农场](https://zh.wikipedia.org/wiki/着色农场 "wikilink")
  - 改进的安全性，可靠性和设备无关性可以从管理Hypervisor架构
  - 在不同的硬件或操作系统环境运行复杂，依赖于操作系统的应用程序的能力

主要的Unix厂商，包括[昇陽電腦](../Page/昇陽電腦.md "wikilink")，[惠普](../Page/惠普.md "wikilink")，[IBM和](../Page/IBM.md "wikilink")[SGI](../Page/硅谷图形公司.md "wikilink")，从2000年以前就一直在销售虚拟化硬件。

## 参考资料

## 外部链接

  - [Hypervisors and Virtual Machines: Implementation Insights on the
    x86
    Architecture](https://www.usenix.org/system/files/login/articles/105498-Revelle.pdf)

  - [A Performance Comparison of
    Hypervisors](http://www.cc.iitd.ernet.in/misc/cloud/hypervisor_performance.pdf),
    VMware

[Category:服务器](https://zh.wikipedia.org/wiki/Category:服务器 "wikilink")
[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")

1.
2.  [(virtualization quickly becoming open source 'killer
    app')](http://searchenterpriselinux.techtarget.com/news/1152219/Xen-virtualization-quickly-becoming-open-source-killer-app)