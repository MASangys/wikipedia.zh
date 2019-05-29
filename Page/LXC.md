[Linux_Containers_logo.png](https://zh.wikipedia.org/wiki/File:Linux_Containers_logo.png "fig:Linux_Containers_logo.png")
**LXC**，其名稱來自Linux軟體容器（Linux
Containers）的縮寫，一種[作業系統層虛擬化](../Page/作業系統層虛擬化.md "wikilink")（Operating
system–level
virtualization）技術，為[Linux内核容器功能的一个](../Page/Linux内核.md "wikilink")[用户空间](https://zh.wikipedia.org/wiki/用户空间 "wikilink")[接口](https://zh.wikipedia.org/wiki/接口 "wikilink")。它將應用軟體系統打包成一個軟體容器（Container），內含應用軟體本身的程式碼，以及所需要的作業系統核心和函式庫。透過統一的命名空間和共用[API來分配不同軟體容器的可用硬體資源](https://zh.wikipedia.org/wiki/API "wikilink")，創造出應用程式的獨立[沙箱執行環境](../Page/沙盒_\(電腦安全\).md "wikilink")，使得[Linux用户可以容易的创建和管理系统或应用容器](../Page/Linux.md "wikilink")。\[1\]

在Linux內核中，提供了[cgroups功能](https://zh.wikipedia.org/wiki/cgroups "wikilink")，來達成資源的區隔化。它同時也提供了名稱空間區隔化的功能，使應用程式看到的作業系統環境被區隔成獨立區間，包括行程樹，網路，使用者id，以及掛載的檔案系統。但是cgroups並不一定需要啟動任何虛擬機器。

LXC利用cgroups與名稱空間的功能，提供應用軟體一個獨立的作業系統環境。LXC不需要[Hypervisor這個軟體層](../Page/Hypervisor.md "wikilink")，軟體容器（Container）本身極為輕量化，提升了建立[虛擬機器的速度](../Page/虛擬機器.md "wikilink")。軟體[Docker被用來管理LXC的環境](https://zh.wikipedia.org/wiki/Docker_\(軟體\) "wikilink")。

## 特点

目前的LXC使用下列内核功能来控制进程：

  - 内核[命名空间](../Page/命名空间.md "wikilink")（[进程间通信](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")、uts、mount、pid、network和user）
  - [AppArmor和](../Page/AppArmor.md "wikilink")[SELinux配置](https://zh.wikipedia.org/wiki/SELinux "wikilink")
  - Seccomp策略
  - [chroot](https://zh.wikipedia.org/wiki/chroot "wikilink")（使用pivot_root）
  - [Kernel
    Capibilities](https://zh.wikipedia.org/wiki/Kernel_Capibilities "wikilink")
  - [控制组](https://zh.wikipedia.org/wiki/控制组 "wikilink")（[cgroups](https://zh.wikipedia.org/wiki/cgroups "wikilink")）

因此，LXC通常被认为介于“加强版”的chroot和完全成熟的虚拟机之间的技术。LXC的目标是建立一个尽可能与标准安装的Linux相同但又不需要分离内核的环境。

## 使用

  - **[Proxmox VE](../Page/Proxmox_VE.md "wikilink")**:
    它直到4.0版才使用LXC技術，在此之前的版本都是使用OpenVZ技術。

<!-- end list -->

  - **[Docker](../Page/Docker.md "wikilink")**：它在0.9版之前都是使用LXC技術，但在0.9版之後，已不再是唯一且預設的執行環境。

## 参看

  - [DevOps](../Page/DevOps.md "wikilink")
  - [操作系统级虚拟](https://zh.wikipedia.org/wiki/操作系统级虚拟 "wikilink")

## 参考文献

## 外部連結

  -
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")
[Category:Linux容器化](https://zh.wikipedia.org/wiki/Category:Linux容器化 "wikilink")

1.