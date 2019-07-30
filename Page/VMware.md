**威睿**（）是[戴爾科技](https://zh.wikipedia.org/wiki/戴爾科技 "wikilink")（[戴爾電腦母公司](https://zh.wikipedia.org/wiki/戴爾電腦 "wikilink")）旗下[软件](https://zh.wikipedia.org/wiki/电脑软件 "wikilink")[公司](../Page/公司.md "wikilink")，提供[云计算和](https://zh.wikipedia.org/wiki/云计算 "wikilink")[硬件虚拟化](../Page/硬件虚拟化.md "wikilink")的软件和服务\[1\]\[2\]\[3\]，并号称是第一个成功商业化的虚拟化[x86架构](https://zh.wikipedia.org/wiki/x86 "wikilink")\[4\]。公司成立于1998年，总部设在美國[加利福尼亚州](../Page/加利福尼亚州.md "wikilink")[帕洛阿尔托](https://zh.wikipedia.org/wiki/帕洛阿尔托 "wikilink")。

## 歷史

1998年，黛安·格林、孟德尔·罗森布拉姆、斯科特·迪瓦恩、王艾伦和爱德华•比尼翁创立了VMware。格林和罗森布拉姆在加州大学伯克利分校首次见面。\[5\]爱德华•比尼翁担任VMware的首席架构师和CTO，直至2005年前去为Nuova系统服务（现在思科的一部分）。\[6\]

## 產品

### VMware Workstation

VMware Workstation是VMware公司销售的[商业软件产品之一](https://zh.wikipedia.org/wiki/商业软件 "wikilink")。该工作站软件包含一个用于[英特尔](../Page/英特尔.md "wikilink")[x86相容電腦的](https://zh.wikipedia.org/wiki/x86 "wikilink")[虚拟机套装](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")，其允许用户同时创建和运行多个x86虚拟机。每个虚拟机可以运行其安裝的操作系统，如（但不限于）[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[BSD](../Page/BSD.md "wikilink")变生版本。用简单术语来描述就是，VMware Workstation允许一台真实的電腦在一個[作業系統中同时開啟並运行数个操作系统](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，其它VMware产品帮助在多个宿主電腦之间管理或移植VMware虚拟机。免费版本為[VMware Workstation Player](../Page/VMware_Workstation_Player.md "wikilink")。

VMware官方網站提供多个经过预先配置的操作系统和应用程序的免费虚拟盘映像，这之中有不少是社会募捐的\[7\]。

### VMware Fusion

VMware Fusion是VMware針對[Mac电脑推出的一款虚拟机软件](https://zh.wikipedia.org/wiki/Mac电脑 "wikilink")。

### VMware Server

2006年2月6日，VMware发布了VMware Server产品的1.0版本，取代原先的VMware GSX Server\[8\]。VMware服务器可以创建、编辑、运行虚拟机。除了具有可以运行由其它VMware产品创建的虚拟机的功能外，它还可运行由微软[Virtual PC产品创建的虚拟机](https://zh.wikipedia.org/wiki/Virtual_PC "wikilink")。VMware将VMware服务器产品作为可免费获得的产品，这是因为希望用户们最终能选择升级至VMware ESX服务器产品。

VMware不正式支持运行于Windows XP或专业版Windows 2000上的VMware服务器产品，这不同于VMware工作站产品。然而，已有用户报告在Windows XP专业版下成功安装并提供VMware服务器功能的例子（但有个别限制要求）\[9\]。VMware提供一个受支持的宿主操作系统的清单\[10\]。

2010年1月，VMware宣布2011年6月30日结束对VMware Server的支持。

### VMware ESX服务器

ESX服务器使用了衍生自[史丹佛大学開發的](https://zh.wikipedia.org/wiki/史丹佛大学 "wikilink")[SimOS核心](https://zh.wikipedia.org/wiki/SimOS "wikilink")，該核心在硬件初始化后替换原開機的Linux内核。ESX服务器2.x的服务控制平台（亦称为“COS”或“vmnix”）是基于[Red Hat Linux](../Page/Red_Hat_Linux.md "wikilink") 7.2的。ESX服务器3.0的服务控制平台源自一个Red Hat Linux 7.2的经过修改的版本——它是作为一个用来加载vmkernel的[引导加载程序运行的](https://zh.wikipedia.org/wiki/引导 "wikilink")，并提供了各种管理界面（如[CLI](../Page/命令行界面.md "wikilink")、浏览器界面[MUI](https://zh.wikipedia.org/wiki/Multilingual_User_Interface "wikilink")、[远程控制台](https://zh.wikipedia.org/wiki/远程管理 "wikilink")）。该[虚拟化系统管理的方式提供了更少的管理开销以及更好的控制和为虚拟机分配资源时能达到的粒度](https://zh.wikipedia.org/wiki/系统管理 "wikilink")（指精细的程度）；这也增加了安全性，从而使VMware ESX成为一种[企业级产品](https://zh.wikipedia.org/wiki/企业级结构 "wikilink")。

### VMware ESXi服务器

Vmware ESXi是Vmware vSphere 4.1版本开始提供的服务器系统。相比Vmware ESX，ESXi剔除了基于Red Hat Linux的服务控制平台，使VMware代理可以直接在VMkernel上运行。由于脱离对基于Linux的控制台操作系统的依赖，整个软件平台的尺寸由ESX的约2GB缩减至不到150MB，并消除了底层Linux系统可能带来的安全性和稳定性隐患，而获得授权的第三方模块也可在VMkernel上运行。ESXi同时使用了新的管理控制台PowerCLI。

从Vmware vSphere 5.0版本开始，Vmware不再提供ESX服务器产品，ESXi成为Vmware产品线中唯一一款服务器平台产品。\[11\]

### VMware vSphere

VMware vSphere，原稱為VMware Infrastructure，是一整套虚拟化应用产品，包含VMware ESX Server 4、VMware Virtual Center 4.0、最高支持8路的虚拟对称多处理器（Virtual SMP）和VMotion，以及例如VMware HA、VMware DRS和VMware统一备份服务等分布式服务。VMware国际公司在2009年4月发布了VMware vSphere 4。该套装提供六個档次的组合方案

### 数据中心

VMware国际公司对[数据中心](../Page/数据中心.md "wikilink")应用提供两种主要产品：VMware ESX和VMware服务器（旧称为VMware GSX）。

  - VMware ESX服务器是作为VMware用于在数据中心应用中运行企业级应用的旗舰产品。由于ESX是在『近硬體』層級上加载的，它能使x86的利用效率提高60%到80%。

<!-- end list -->

  - 数据中心亦可使用VMware服务器产品运行，但运行该产品须依赖于宿主环境的基本操作系统；此外，在运行软件的额外层面时也会产生对机器的附加开销。然而VMware服务器产品具有一点超过ESX产品的优势：它支持的设备的规格更多，例如可支持USB连接方式和某些[PCI设备](https://zh.wikipedia.org/wiki/PCI "wikilink")。

亦请注意VMware ACE产品。

### 其它产品

其它三种与ESX协同运行的产品是：虚拟中心（VirtualCenter）、VMotion和P2V（将物理计算机运行环境直接移植为虚拟机的工具）。

  - 虚拟中心可用来监视和管理多个ESX或GSX服务器。
  - VMotion可用来在服务器之间实现几乎无停滞地移动运行中的虚拟机。
  - P2V允许用户通过使用映像软件，将一台物理的服务器制作为虚拟机映像，从而创造出一个从物理机到虚拟机的重现。它用虚拟的驱动文件代替了实际的驱动文件，并且在VMware的数据存储中创建出机器空间。

## 描述

运行VMware工作站进程的计算机和操作系统被称为宿主机（host）。在一个虚拟机中运行的操作系统实例被称为虚拟机客户（guest）。类似[仿真器](https://zh.wikipedia.org/wiki/仿真器 "wikilink")，VMware工作站为客户操作系统提供完全虚拟化的硬件集–例如，客户机只会检测到一个AMD PCnet网络适配器，而和宿主机上真正安装的网络适配器的制造和型号无关。VMware在虚拟环境中将所有设备虚拟化，包括视频适配器、网络适配器、以及硬盘适配器。它还为USB、串行和并行设备提供传递驱动程序（pass-through drivers，指将对这些虚拟设备的访问传递到真实物理设备的驱动程序）。

由于与宿主机的真实硬件无关，所有虚拟机客户使用相同的硬件驱动程序，虚拟机实例是对各种计算机高度可移植的。例如，一个运行中的虚拟机可以被暂停下来，并被拷贝到另外一台作为宿主的真实计算机上，然后从其被暂停的确切位置恢复运行。借助VMware的VirtualCenter（虚拟机中心）产品中一种称为Vmotion的新功能，甚至可以在移动一个虚拟机时不必将其暂停–就是说现在即使在向不同的宿主机上移植虚拟机时，这些虚拟机仍然可以保持运行。

## 实现

傳統的模擬器，如[Bochs](../Page/Bochs.md "wikilink")，透過調用宿主機上的軟體子程序逐條執行每一道客戶機的CPU指令，以此模擬客戶機的[微處理器](https://zh.wikipedia.org/wiki/微處理器 "wikilink")。這種抽象化的方法，可使宿主機模擬出不同於自身微處理器的環境，讓客戶機運行。然而這類模擬器運行得非常慢。

一种更有效率的方式是在初次执行客户机指令时[动态地重新编译那些机器指令块](../Page/动态重编译.md "wikilink")，以后用到这些指令时直接执行经过翻译的代码。这种方式是由[微软](../Page/微软.md "wikilink")的[Virtual PC](https://zh.wikipedia.org/wiki/Virtual_PC "wikilink") for [Mac OS X产品](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、以及[Fabrice Bellard的](https://zh.wikipedia.org/wiki/Fabrice_Bellard "wikilink")[QEMU](../Page/QEMU.md "wikilink")产品（不含近期的[kqemu附加模块](https://zh.wikipedia.org/wiki/QEMU#lqemu "wikilink")）所使用的方式。

和Virtual PC for Windows产品及带有kqemu附加模块的QEMU产品一样，VMware工作站使用了一种更加优化的方式，在尽可能的情况下直接运行程序代码，在x86中这是执行用户模式和[虚拟8086模式的程序代码的情况而言](https://zh.wikipedia.org/wiki/8086仿真模式 "wikilink")。当不能直接运行程序代码时，这几种软件产品会动态地重写代码，这是在执行内核级别和[实模式的程序代码的情况而言](https://zh.wikipedia.org/wiki/实模式 "wikilink")。在VMware中，经过翻译的代码是被放入内存的空闲区域中的，一般是在地址空间的尾部，这个区域可以随即被保护起来并通过分段机制标记为不可见的。由于这些原因，VMware比仿真器显著地快，能以超过在真实硬件上运行速度的80%的速度运行虚拟的客户操作系统。VMware对在运行高强度计算的应用程序时只有小到3%-5%的效能损耗而自豪。

缺点是客户操作系统的指令代码必须和宿主机的CPU兼容。因此不同于仿真器，VMware工作站不能用来在一个英特尔[x86处理器上运行Mac](https://zh.wikipedia.org/wiki/x86 "wikilink")/[PPC软件](https://zh.wikipedia.org/wiki/Power_PC "wikilink")。另一个缺点是通常不可能有效率地嵌套使用VMware虚拟机（指在虚拟机客户中运行另一个VMware虚拟机，即以一个虚拟机客户作为宿主机再运行VMware）。最后，尽管VMware虚拟机是运行于用户模式下的，VMware工作站宿主程序本身必须在宿主操作系统下安装多种驱动程序，尤其是为了能动态切换[GDT和](https://zh.wikipedia.org/wiki/GDT "wikilink")[IDT表](https://zh.wikipedia.org/wiki/IDT "wikilink")。

最后一点说明：经常有人错误地认为象VMware或Virtual PC这类虚拟机产品是*替换不良指令*或*简单地在用户模式下运行内核代码*。这两种方式都不能用于x86。替换指令的意思可以这么理解：假设要执行指令试图读取该指令本身的代码，它会吃惊地发现没有找到预期的内容。因为实际上不可能在允许指令正常执行的同时又保护其代码不被读取，要实现指令替换是复杂的。在用户模式下不加改变地运行代码同样也是不可能的，这是因为在用户模式下，大部分仅读取机器状态的指令不产生异常、也不能正确反映程序的真实状态，此外某些指令的行为会悄悄地有所变化。重写指令总是必需的；必要时会模拟初始位置的当前[指令指针](https://zh.wikipedia.org/wiki/指令指针寄存器 "wikilink")，硬编码的[断点也特别地会被重新映射](https://zh.wikipedia.org/wiki/断点 "wikilink")。

## 特点

除了为到网络适配器、CD-ROM读盘机、硬盘驱动器、以及USB设备的访问提供桥梁外，VMware工作站还提供模拟某些硬件的能力。例如，能将一个ISO文件作为一张CDROM安装在系统上、也能将.vmdk文件作为硬盘驱动器安装、以及可将网络适配器驱动程序配置为通过宿主计算机使用网络地址转换（NAT）来访问网络，而非使用与宿主机桥接的方式（该方式為：宿主网络上的每个客户操作系统必須分配一个IP地址）。

VMware工作站还允许无须将[LiveCD](https://zh.wikipedia.org/wiki/LiveCD "wikilink")[烧录到真正的光盘上](https://zh.wikipedia.org/wiki/CD刻录机 "wikilink")、也无须[重启计算机](https://zh.wikipedia.org/wiki/重启 "wikilink")，而对这些[LiveCD进行测试](https://zh.wikipedia.org/wiki/LiveCD "wikilink")。还可以捕获在VMware工作站下运行的某个操作系统的快照。每个快照可以用来在任何时候将虚拟机回滚到保存的状态。这种多快照功能使VMware工作站成为销售人员演示复杂的软件产品、开发人员建立虚拟开发和测试环境的非常流行的工具。VMware工作站包含有将多个虚拟机指定为编队的能力，编队可以作为一个物体来开机、关机、挂起和恢复—这使VMware工作站在用于测试客户端-服务器环境时特别有用。

VMware公司新的企业级服务器和工具产品，正在使「将旧的生产服务器移植到虚拟机」的做法开始流行，这种做法能几乎不费力地将多个旧式服务器集装到一个单个的新宿主计算机中。

## 参见

  - [Xen](../Page/Xen.md "wikilink")
  - [虚拟机比较](https://zh.wikipedia.org/wiki/虚拟机比较 "wikilink")
  - [Virtual PC](https://zh.wikipedia.org/wiki/Virtual_PC "wikilink")
  - [QEMU](../Page/QEMU.md "wikilink")
  - [VirtualBox](../Page/VirtualBox.md "wikilink")

## 參考資料

## 外部链接

  - [VMware官方网站](http://www.vmware.com/)
  - [VMware on YouTube](https://communities.vmware.com/community/youtube)

[VMware](https://zh.wikipedia.org/wiki/分类:VMware "wikilink")

[Category:美國軟體公司](https://zh.wikipedia.org/wiki/Category:美國軟體公司 "wikilink") [Category:1998年成立的公司](https://zh.wikipedia.org/wiki/Category:1998年成立的公司 "wikilink") [Category:帕羅奧圖公司](https://zh.wikipedia.org/wiki/Category:帕羅奧圖公司 "wikilink")

1.
2.
3.
4.
5.  {{ cite news|url=[http://money.cnn.com/magazines/fortune/fortune_archive/2007/10/15/100536853/index.htm|last=Lashinksky|first=Adam|date=2007-10-02|title=50](http://money.cnn.com/magazines/fortune/fortune_archive/2007/10/15/100536853/index.htm%7Clast=Lashinksky%7Cfirst=Adam%7Cdate=2007-10-02%7Ctitle=50) Most Powerful Women in Business — Full speed ahead|publisher=CNN | quote = In 1988 she picked up a second master's, in computer science, at the University of California at Berkeley, where she met Rosenblum }}
6.
7.
8.
9.
10.
11.