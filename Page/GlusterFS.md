**Gluster**是一个大尺度文件系统。它是各种不同的存储[服务器](../Page/服务器.md "wikilink")之上的组合，这些服务器由以太网或无限带宽技术[Infiniband](http://en.wikipedia.org/wiki/Infiniband)以及远程直接内存访问[RDMA](http://en.wikipedia.org/wiki/Remote_direct_memory_access)互相融汇，最终所形成的一个大的并行文件系统网络。它有包括[云计算在内的多重应用](https://zh.wikipedia.org/wiki/云计算 "wikilink")，诸如：[生物医药科学](https://zh.wikipedia.org/wiki/生物医药 "wikilink")，文档存储。Gluster是由GNU托管的自由软件，证书是[AGPL](http://en.wikipedia.org/wiki/Affero_General_Public_License)。[Gluster公司是Gluster的首要商业赞助商](https://zh.wikipedia.org/wiki/Gluster公司 "wikilink")，且提供商业产品以及基于Gluster的解决方案。

## 设计

Gluster是Client/Server架构。服务器典型的布置在存储卷上，每一台服务器运行一个名为glusterfsd 的守护进程，将本地文件系统作为卷进行输出。Gluster的客户端进程通过TCP/IP，InfiniBand或SDP一类客户协议连接到服务器，将远端卷组成一个大的所谓折叠式翻译器。最终的卷通过一种叫做[FUSE](http://en.wikipedia.org/wiki/Filesystem_in_Userspace)的用户空间文件机制机载到客户机。有大量文件应用的I/O同样可以用libglusterfs 客户端库来直接连接服务器并内在的运行翻译器，而无需经过文件系统以及FUSE.大多数GlusterFS功能被实现为翻译器，包括了：

  - 基于文件的[镜像](http://en.wikipedia.org/wiki/Mirror_\(computing\))与[赋值](http://en.wikipedia.org/wiki/Replication_\(computer_science\))技术
  - 基于文件的数据存储计算领域的[数据带](http://en.wikipedia.org/wiki/Data_striping)技术
  - 基于文件的[负载平衡](http://en.wikipedia.org/wiki/Load_balancing_\(computing\))技术
  - 卷的[双机备份](http://en.wikipedia.org/wiki/Failover)技术
  - [磁盘高速缓存](http://en.wikipedia.org/wiki/Cache#Disk_cache)技术以及[排产](http://en.wikipedia.org/wiki/I/O_scheduling)技术
  - [存储分配技术](http://en.wikipedia.org/wiki/Disk_quota)

Gluster的设计遵循奥卡姆剃刀原则的简单性：尽管它导出一已存在，但是构建存储的决定权在于客户端翻译器。客户端自身都是没有状态的，互相之间没有交互。但是期望相互间的翻译器配置是一致的。这会引发[:内存一致性模型问题](https://zh.wikipedia.org/wiki/:内存一致性模型 "wikilink")，但这种设计允许Gluster用商用硬件在规模上能达到数个[拍字节](https://zh.wikipedia.org/wiki/:Petabyte "wikilink")，避免了通常影响分布式文件系统的紧内聚松耦合瓶颈。

## 另见

  - [分布式文件系统](http://en.wikipedia.org/wiki/Distributed_file_system)

[Category:分散式檔案系統](https://zh.wikipedia.org/wiki/Category:分散式檔案系統 "wikilink") [Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink") [Category:使用者空間檔案系統](https://zh.wikipedia.org/wiki/Category:使用者空間檔案系統 "wikilink") [Category:分散式資料儲存](https://zh.wikipedia.org/wiki/Category:分散式資料儲存 "wikilink")