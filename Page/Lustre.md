**Lustre**，一種平行[分散式檔案系統](../Page/分散式檔案系統.md "wikilink")，通常用于大型[計算機叢集和](https://zh.wikipedia.org/wiki/計算機叢集 "wikilink")[超級電腦](https://zh.wikipedia.org/wiki/超級電腦 "wikilink")。Lustre是源自[Linux](../Page/Linux.md "wikilink")和Cluster的[混成词](https://zh.wikipedia.org/wiki/混成词 "wikilink")。最早在1999年，由[皮特·布拉姆](https://zh.wikipedia.org/wiki/皮特·布拉姆 "wikilink")（）建立的[叢集檔案系統公司](https://zh.wikipedia.org/wiki/叢集檔案系統公司 "wikilink")（）開始研發，於2003年釋出 Lustre 1.0。採用[GNU GPLv](https://zh.wikipedia.org/wiki/GNU_GPL "wikilink")2開源碼授權。

## 历史

Lustre文件系统架构是Peter Braam1999年开始的一个研究项目，皮特当时在[卡内基梅隆大学担任教职](https://zh.wikipedia.org/wiki/卡内基梅隆大学 "wikilink")。2001年皮特成立了自己的公司——群集文件系统。2007年9月，[升阳公司收购集群文件系统公司的资产](https://zh.wikipedia.org/wiki/升阳 "wikilink")，包括其知识产权。Sun在其高性能计算硬件产品中提供Lustre，以期将Lustre引入自家的ZFS和Solaris操作系统。2008年11月，Braam离开了升阳微系统，由Eric Barton和Andreas Dilger接管Lustre项目。2010年，[甲骨文](../Page/甲骨文.md "wikilink")公司收购Sun，开始管理和发布Lustre。

## 架构

Lustre文件系统包括三种主要的功能单元。

  - 元数据服务器（metadata servers，MDSes）。一个Lustre文件系统通常拥有两个元数据服务器（active和standby），一个元数据服务器则拥有若干元数据目标（metadata targets，MDTs）。元数据目标存储名字空间元数据：文件名、目录、访问权限、文件结构等信息。不同于诸如[GPFS和](https://zh.wikipedia.org/wiki/GPFS "wikilink")[PanFS等基于块并由元数据服务器控制所有块分配的分布式文件系统](https://zh.wikipedia.org/wiki/PanFS "wikilink")，Lustre元数据服务器仅仅关心路径搜索和权限检查而不会牵涉任何的文件I/O操作。该特性避免元数据服务器成为集群扩展的瓶颈。单个文件系统拥有多个元数据目标是从2.4开始引入的新特性。

<!-- end list -->

  - 对象存储服务器（object storage servers，OSSes）将文件数据存储于一个或多个对象存储目标（object storage targets，OSTs）中。取决于服务器硬件，一个对象存储服务器通常有二到八个对象存储目标，每个对象存储目标管理一个本地文件系统。Lustre文件系统的空间等于所有对象存储目标的容量总和。

<!-- end list -->

  - 客户机（Clients）能访问并使用数据。Lustre为所有客户机提供统一的命名空间。

MDT、OST和Client可以位于同一节点（通常用于测试），但在典型的生产环境中这些功能组件安装在使用网络进行通信的不同节点。 Lustre Network（LNET）层可以使用多种类型的网络互连，包括[InfiniBand](../Page/InfiniBand.md "wikilink")、[以太网](../Page/以太网.md "wikilink")等。如果远程直接内存访问（RDMA）传输可用，Lustre将利用它提高吞吐量降低CPU使用率。

## 锁

## 网络

## 高可用性

## 部署

## 参见

  - [Ceph](https://zh.wikipedia.org/wiki/Ceph "wikilink")
  - [GlusterFS](../Page/GlusterFS.md "wikilink")

## 参考资料

## 外部链接

  - [官方主页](http://lustre.opensfs.org/)

[Category:分散式檔案系統](https://zh.wikipedia.org/wiki/Category:分散式檔案系統 "wikilink") [Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink") [Category:网络文件系统](https://zh.wikipedia.org/wiki/Category:网络文件系统 "wikilink") [Category:昇陽電腦軟體](https://zh.wikipedia.org/wiki/Category:昇陽電腦軟體 "wikilink")