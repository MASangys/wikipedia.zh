**Hypervisor**，又稱**虛擬機器監視器**（，縮寫為
VMM），是用來建立與執行[虛擬機器](../Page/虛擬機器.md "wikilink")的軟體、韌體或硬體。

被 hypervisor 用來執行一個或多個虛擬機器的電腦稱為宿主機（host machine），這些虛擬機器則稱為客戶機（guest
machine）。Hypervisor 提供虛擬的作業平台來執行客作業系統（guest operating
systems），負責管理其他客作業系統的執行階段；這些客作業系統，共同分享虛擬化後的硬體[資源](https://zh.wikipedia.org/wiki/資源_\(計算機科學\) "wikilink")。

## 分类

[Hyperviseur.png](https://zh.wikipedia.org/wiki/File:Hyperviseur.png "fig:Hyperviseur.png")
在他们 1974 年的文章“Formal Requirements for Virtualizable Third Generation
Architectures”[Gerald J.
Popek和](https://zh.wikipedia.org/wiki/Gerald_J._Popek "wikilink")[Robert
P.
Goldberg](https://zh.wikipedia.org/wiki/Robert_P._Goldberg "wikilink")
发表了两种类型的 hypervisor\[1\]，分別是類型 I 和類型 II。

### 类型 I：原生或裸机 hypervisor

[VMM-Type1.JPG](https://zh.wikipedia.org/wiki/File:VMM-Type1.JPG "fig:VMM-Type1.JPG")
这些虚拟机管理程序直接运行在宿主机的硬件上来控制硬件和管理客操作系统。

  - 特点

<!-- end list -->

1.  需要硬件支持
2.  虚拟机监视器作为主操作系统
3.  运行效率高

<!-- end list -->

  - 举例

<!-- end list -->

1.  [VMware](../Page/VMware.md "wikilink") 5.5 及以后版本
2.  [Xen](../Page/Xen.md "wikilink") 3.0 及以后版本
3.  [Virtual PC](https://zh.wikipedia.org/wiki/Virtual_PC "wikilink")
    2005
4.  [KVM](https://zh.wikipedia.org/wiki/Kernel-based_Virtual_Machine "wikilink")

### 类型 II：寄居或托管 hypervisor

[VMM-Type2.JPG](https://zh.wikipedia.org/wiki/File:VMM-Type2.JPG "fig:VMM-Type2.JPG")
这些虚拟机管理程序运行在传统的操作系统上，就像其他计算机程序那样运行。

  - 特点

<!-- end list -->

1.  虚拟机监视器作为应用程序运行在主操作系统环境内
2.  运行效率一般较类型 I 低

<!-- end list -->

  - 举例

<!-- end list -->

1.  VMware 5.5 以前版本
2.  Xen 3.0 以前版本
3.  Virtual PC 2004

## 操作系统支持

有几个因素导致了 2005 年左右，在 Unix，Linux，以及其他类 Unix 操作系统中虚拟化技术的使用的复苏\[2\]：

  - 扩展的硬件功能，允许每台机器同时处理更多工作
  - 通过整合服务器来控制成本和简化管理的努力
  - 在控制大型[多处理器和](https://zh.wikipedia.org/wiki/多处理器 "wikilink")[集群安装方面的需要](../Page/计算机集群.md "wikilink")，例如[服务器农场](../Page/服务器农场.md "wikilink")和[渲染农场](../Page/著色農場.md "wikilink")
  - 来自虚拟机管理程序体系结构的提高的安全性，可靠性和设备独立性
  - 在不同的硬件或操作系统环境中运行复杂的，依赖于操作系统的应用程序的能力

主要的 Unix
厂商，包括[昇陽電腦](../Page/昇陽電腦.md "wikilink")，[惠普](../Page/惠普.md "wikilink")，[IBM](../Page/IBM.md "wikilink")
和 [SGI](../Page/硅谷图形公司.md "wikilink")，从 2000 年以前就一直在销售虚拟化硬件。

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