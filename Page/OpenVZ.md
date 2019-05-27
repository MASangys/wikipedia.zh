**OpenVZ**是基于[Linux内核和](../Page/Linux内核.md "wikilink")[作業系統的](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[操作系统级虚拟化技术](https://zh.wikipedia.org/wiki/操作系统级虚拟化 "wikilink")。OpenVZ允许物理[伺服器运行多个操作系统](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，被称[虚拟专用伺服器](https://zh.wikipedia.org/wiki/虚拟专用伺服器 "wikilink")（VPS，Virtual
Private Server）或虚拟环境（VE，Virtual Environment）。

與[VMware這種](../Page/VMware.md "wikilink")[虛擬機和](https://zh.wikipedia.org/wiki/虛擬機 "wikilink")[Xen這種](../Page/Xen.md "wikilink")[硬體輔助虛擬化技術相比](https://zh.wikipedia.org/wiki/硬體輔助虛擬化 "wikilink")，OpenVZ的主机与客户系统都必须是[Linux](../Page/Linux.md "wikilink")（雖然在不同的虛擬環境裡可以用不同的Linux發行版）。但是，OpenVZ聲稱這樣做有性能上的優勢。根据OpenVZ網站的說法，使用OpenVZ與使用獨立的实体伺服器相比，性能只會有1-3%的損失。

OpenVZ的[Linux客户系统其实是共用OpenVZ主机Linux系统的内核](../Page/Linux.md "wikilink")，也就意味着OpenVZ的Linux客户系统不能升级内核。

OpenVZ是SWsoft,
Inc.公司開發的專有軟件[Virtuozzo](https://zh.wikipedia.org/wiki/Virtuozzo "wikilink")（Virtuozzo虚拟机还支持Windows客户系统）的基礎。OpenVZ的授權為[GPLv2](https://zh.wikipedia.org/wiki/GNU通用公共許可證 "wikilink")。

OpenVZ由兩部分組成，一個經修改過的作業系統[核心與一套用戶工具](../Page/内核.md "wikilink")。

但是，基于OpenVZ的Linux虚拟机/Linux
[VPS可能配置起来不如基于](https://zh.wikipedia.org/wiki/VPS "wikilink")[KVM的Linux虚拟机](../Page/基于内核的虚拟机.md "wikilink")/Linux
[VPS灵活](https://zh.wikipedia.org/wiki/VPS "wikilink")。例如，OpenVZ虚拟机/VPS无法更新内核；不支持部分软件；其不能升级内核的限制也可能会给Linux的[发行版升级带来麻烦](https://zh.wikipedia.org/wiki/发行版升级 "wikilink")。

## 核心

OpenVZ的核心是[Linux](../Page/Linux.md "wikilink")，并进行了修改以加入对OpenVZ虚拟环境的支持。修改后的核心提供了虚拟化，隔离，资源管理和检查点机制。

### 虚拟化和隔离

每一个虚拟环境都是一个单独的個体，表现得和一个物理服务器所表现的相同。每一个虚拟环境都有其自己的：

  - 文件
    系统[库](https://zh.wikipedia.org/wiki/库 "wikilink")、[应用软件](https://zh.wikipedia.org/wiki/应用软件 "wikilink")，虚拟化的[`OpenVZ//proc`](https://zh.wikipedia.org/wiki/OpenVZ/proc "wikilink")及[`OpenVZ//sys`](https://zh.wikipedia.org/wiki/OpenVZ/sys "wikilink")，虚拟化的[锁等等](https://zh.wikipedia.org/wiki/锁_\(计算机科学\) "wikilink")。

<!-- end list -->

  - 用户和用户组
    每一个虚拟环境都有其自己的[root用户](../Page/超级用户.md "wikilink")、用户和用户组。

<!-- end list -->

  - 进程树
    虚拟环境只能看见其自己的[行程](../Page/行程.md "wikilink")（从[`init`](https://zh.wikipedia.org/wiki/init "wikilink")开始）。PID也是虚拟化的，所以init的PID是1。

<!-- end list -->

  - 网络
    虚拟的[网络设备](https://zh.wikipedia.org/wiki/网络设备 "wikilink")，允许虚拟环境拥有自己的[IP地址](../Page/IP地址.md "wikilink")，以及一组[netfilter
    (`iptables`)及](https://zh.wikipedia.org/wiki/netfilter/iptables "wikilink")[路由规则](../Page/路由.md "wikilink")。

<!-- end list -->

  - 设备
    如果需要，任何虚拟环境都可以授予访问真正设备，如[网络接口](https://zh.wikipedia.org/wiki/网络接口 "wikilink")、[串口](https://zh.wikipedia.org/wiki/串口 "wikilink")、[磁盘分区等的权力](https://zh.wikipedia.org/wiki/磁盘分区 "wikilink")。

<!-- end list -->

  - 进程间通信对象
    [共享内存](https://zh.wikipedia.org/wiki/共享内存 "wikilink")、[信號量](https://zh.wikipedia.org/wiki/信號量 "wikilink")、[消息传递](https://zh.wikipedia.org/wiki/消息传递 "wikilink")。

### 资源管理

OpenVZ的资源管理包括三个部分：两级磁盘配额，公平的CPU调度器，以及user
beancounters。这些资源在虚拟环境的运行过程中可以调整，可以不必重启动。

#### 两级磁盘配额

每一个虚拟环境都有其自己的[磁盘配额](https://zh.wikipedia.org/wiki/磁盘配额 "wikilink")，以磁盘的block数和[inode](https://zh.wikipedia.org/wiki/inode "wikilink")（大概相当于文档的数目）的数目来计算。在虚拟环境中，可以通过标准的工具来设置UNIX用户和用户组的[磁盘配额](https://zh.wikipedia.org/wiki/磁盘配额 "wikilink")。

#### CPU调度器

OpenVZ中的调度器是一个两级的[公平分享调度策略的实现](https://zh.wikipedia.org/wiki/公平分享调度 "wikilink")。

在第一级，调度器根据每个虚拟环境的cpuunits的值决定哪一个虚拟环境被分配CPU时间片。在第二级，标准的Linux调度器使用标准的Linux进程优先级和相关机制决定该虚拟环境中的哪一个进程获得CPU。

### 检查点机制和动态迁移

2006年4月中旬的OpenVZ发布了动态迁移和检查点功能。这使得在将一个虚拟环境从一个物理服务器迁移到另一个物理服务器的过程中不需要进行关机。这个过程被称为动态迁移：一个虚拟环境被冻结，然后它的所有状态被存到磁盘中的一个文件中；这个文件被传输到另外一个机器，然后虚拟环境在那里被解冻（恢复）。整个过程的延迟时间只有数秒。由于状态通常被完整地保护，这个暂停看起来就像一个正常的计算延迟。

## 用户级工具

OpenVZ提供了命令行工具来管理虚拟环境（vzctl）和虚拟环境中的软件（vzpkg）。

### vzctl

这是一个简单的用于管理一个虚拟环境的高级命令行工具。

### 模板與vzpkg

可以用OpenVZ的模板快速部署OpenVZ
Linux虚拟机，OpenVZ的模板可在OpenVZ的网站下载。不同[Linux发行版所用的模板不同](../Page/Linux发行版.md "wikilink")。比如，使用CentOS
7的模板部署采用CentOS 7发行版的OpenVZ虚拟机，使用Debian 8的模板部署采用Debian 8发行版的OpenVZ虚拟机等。

## OpenVZ的特色

### 可扩展性

由于OpenVZ使用了一个单独的核心模型，它就和2.6版的Linux核心有着同样的[可扩展性](https://zh.wikipedia.org/wiki/可扩展性 "wikilink")。它支持高达64个CPU和64G内存，一个单独的虚拟环境可以扩放到整个物理服务器，比如说使用所有的CPU和所有的内存。

### 密度

[_Openvz-density.png](https://zh.wikipedia.org/wiki/File:_Openvz-density.png "fig:_Openvz-density.png")
OpenVZ可以在一台相当好的硬件上运行上百个虚拟环境（主要瓶颈是内存和CPU）。

图标显示了虚拟环境上的[Apache HTTP
Server响应时间与虚拟环境数目的关系](../Page/Apache_HTTP_Server.md "wikilink")。测量是在一台有768M内存的机器上进行的；每一个虚拟环境都运行一组通常的进程：[init](https://zh.wikipedia.org/wiki/init "wikilink")、[syslogd](https://zh.wikipedia.org/wiki/syslog "wikilink")、[crond](https://zh.wikipedia.org/wiki/cron "wikilink")、[sshd和Apache](../Page/OpenSSH.md "wikilink")。Apache用來提供靜態頁面，而這些頁面是由http_load所讀取，然後測度第一個響應的時間。就如你看到的一样，随着虚拟环境的数量增加，[响应时间由于内存存储和交换而变得更長](https://zh.wikipedia.org/wiki/响应时间 "wikilink")。

在这种场景下，在一个768M内存的硬件上运行高达120个这样的虚拟环境是可能的。并以线性的方式外推，所以可以在1台2G内存的硬件上运行320个这样的虚拟环境。

### 集中管理

一台OpenVZ物理服务器（也称为硬件节点）的擁有者（root）可以看见所有虚拟环境的进程和文件。这使得大規模的管理成为可能。試想想當你是用
VMware 或 Xen
來做伺服器整合的情況：为了给你的10个虚拟服务器进行安全更新，你必须登录到每一台机器并运行更新过程，這跟你為10台物理伺服器進行更新是一樣的。

在OpenVZ，你可以运行一个简单的shell脚本，就可以一次更新所有（或只是你选择的）虚拟环境。

## 参见

  -
  - [FreeBSD jail](../Page/FreeBSD_jail.md "wikilink")

  - [Solaris
    Containers](https://zh.wikipedia.org/wiki/Solaris_Containers "wikilink")

  - [操作系统级虚拟化](https://zh.wikipedia.org/wiki/操作系统级虚拟化 "wikilink")

  - [虚拟机比较](https://zh.wikipedia.org/wiki/虚拟机比较 "wikilink")

  -
  - ，一个OpenVZ图形管理界面

  - ，基于Web的分布式管理软件

## 外部链接

  - [OpenVZ official web site](http://openvz.org/)
  - [OpenVZ
    wiki](https://web.archive.org/web/20080820003919/http://wiki.openvz.org/)
  - [OpenVZ download site](http://ftp.openvz.org/)
  - [OpenVZ forum](http://forum.openvz.org/)
  - [OpenVZ bug tracking system
    (Bugzilla)](https://web.archive.org/web/20130117131827/http://bugzilla.openvz.org/)
  - [OpenVZ GIT source repository](http://git.openvz.org/)
  - [OpenVZ blog](http://blog.openvz.org/)
  - [Comparison with other virtualization
    techniques](http://wiki.openvz.org/Introduction_to_virtualization)
  - [An OpenVZ kernel hacker
    interview](https://archive.is/20121220232413/kerneltrap.org/node/6492)
  - [EasyVZ: An OpenVZ management GUI](http://binarykarma.com)

[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")