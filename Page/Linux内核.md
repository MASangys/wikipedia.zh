**Linux内核**（）是一种开源的[类Unix](../Page/类Unix系统.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")[宏内核](https://zh.wikipedia.org/wiki/宏内核 "wikilink")。整个Linux操作系统家族基于该内核部署在传统计算机平台（如个人计算机和服务器，以Linux发行版的形式\[1\]）和各种嵌入式平台，如[路由器](../Page/路由器.md "wikilink")、[无线接入点](../Page/無線接入點.md "wikilink")、[专用小交换机](../Page/专用小交换机.md "wikilink")、[机顶盒](https://zh.wikipedia.org/wiki/机顶盒 "wikilink")、、[智能电视](https://zh.wikipedia.org/wiki/智能电视机 "wikilink")、[数字视频录像机](https://zh.wikipedia.org/wiki/数字视频录像机 "wikilink")、[网络附加存储](https://zh.wikipedia.org/wiki/网络附加存储 "wikilink")（NAS）等。工作于[平板電腦](../Page/平板電腦.md "wikilink")、[智能手机](../Page/智能手机.md "wikilink")及[智能手表](../Page/智能手表.md "wikilink")的[Android](../Page/Android.md "wikilink")操作系统同样通过Linux内核提供的服务完成自身功能。尽管于[桌面电脑的占用率较低](https://zh.wikipedia.org/wiki/桌面電腦 "wikilink")，基于Linux的操作系统统治了几乎从移动设备到主机的其他全部领域。截至2017年11月，世界前500台最强的[超级计算机](../Page/超级计算机.md "wikilink")全部使用Linux。\[2\]

Linux内核最早是于1991年由[芬兰](../Page/芬兰.md "wikilink")[黑客](../Page/黑客.md "wikilink")[林納斯·托瓦茲为自己的个人电脑开发的](https://zh.wikipedia.org/wiki/林納斯·托瓦茲 "wikilink")，他当时在[Usenet](../Page/Usenet.md "wikilink")[新闻组](../Page/新闻组.md "wikilink")`comp.os.minix`登载帖子\[3\]，这份著名的帖子标志着Linux内核计划的正式开始。如今，该计划已经拓展到支持大量的计算机体系架构，远超其他操作系统和内核。它迅速吸引了一批开发者和用户，利用它作为其他自由软件项目的核心，如著名的 GNU 操作系统。\[4\]而今天，Linux 内核已接受了超过1200家公司的近12000名程序员的贡献，其中包括一些知名的软硬件发行商。\[5\]\[6\]

从技术上说，Linux 只是一个符合[POSIX 标准的内核](https://zh.wikipedia.org/wiki/POSIX "wikilink")。它提供了一套应用程序接口（API），通过接口用户程序能与内核及硬件交互。仅仅一个内核并不是一套完整的操作系统。有一套基于 Linux 内核的完整操作系统叫作[Linux 操作系统](../Page/Linux.md "wikilink")，或是[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")（在该系统中包含了很多[GNU 计划的系统组件](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")）。

Linux 内核是在[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")第2版之下发布的\[7\]（加上一些非自由[固件](https://zh.wikipedia.org/wiki/固件 "wikilink")、[blob](https://zh.wikipedia.org/wiki/二進位大型物件 "wikilink") 与各种非自由许可证\[8\]），是一个开源项目协作的突出例子。它的版本支持根据版本最长可达6年，貢獻者遍佈世界各地，日常开发相关的讨论在上。

## 历史

[缩略图](https://zh.wikipedia.org/wiki/File:LinuxCon_Europe_Linus_Torvalds_03_\(cropped\).jpg "fig:缩略图")\]\]

1991年，[林納斯·托瓦茲](https://zh.wikipedia.org/wiki/林納斯·托瓦茲 "wikilink")，一名21岁的就读于芬兰赫尔辛基大学的[计算机科学](../Page/计算机科学.md "wikilink")专业学生，基于一些简单的想法，打算编写一个操作系统内核。他通过英特尔80386汇编语言的任务切换器和一个终端驱动程序开始工作。8月25号，他在 `comp.os.minix` [新闻组](../Page/新闻组.md "wikilink")里发了一封帖子：\[9\]

之后，许多人为这个项目贡献了代码。在早期，[MINIX](../Page/MINIX.md "wikilink")社区向 Linux 内核贡献了代码和想法。当时，GNU 项目已经创建了许多自由操作系统所需的组件，但是它自己的内核 GNU Hurd 尚不完整且无法使用；而BSD操作系统还没有摆脱合法的阻碍。因此，尽管早期版本的 Linux 功能有限，但它迅速获得了开发人员和用户。

到1991年9月，Linux内核版本 0.01 在芬兰大学和研究网络（FUNET）的FTP服务器（ftp.funet.fi）上发布。它有10,239行代码。在1991年10月，0.02版本的内核发布了。\[10\]

1991年12月，0.11版本的内核发布。由于它可以由运行相同内核版本的计算机编译，因此该版本是第一个 Linux 内核。当托瓦茲于1992年2月发布0.12版本时，他采用了 [GNU 通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")（GPL），而不是以前的自行起草的许可证，原先的许可证不允许商业再分发。\[11\]

1992年1月19日，第一篇文章提交给新的新闻组 `alt.os.linux` 出现。\[12\] 1992年3月31日，该新闻组更名为 `comp.os.linux`。\[13\]

[X Window 系统随后被移植到Linux上](../Page/X_Window系統.md "wikilink")，所以在1992年3月，Linux 0.95 是第一个能够运行X的版本。从0.1x到0.9x的版本号大幅跨越是因为期望没有大的缺失部分的版本1.0的即将出现。然而，这被证明是错误的。从1993年到1994年初，出现了0.99版本的15个开发版本。

1994年3月14日，Linux内核1.0.0发布，共176,250行代码。随后的1995年3月，有310,950行代码的 Linux 内核1.2.0发布。

在1996年6月9日发布的 Linux内核2.0版本之后，以2.0为大版本的主要更新有如下这些：

  - 1999年1月25日 - 发布Linux内核2.2.0（1,800,847行代码）

<!-- end list -->

  - 1999年12月18日 - 针对2.2.13的 [IBM 大型机补丁发布](https://zh.wikipedia.org/wiki/IBM大型主機 "wikilink")，允许 Linux 内核用于企业级机器

<!-- end list -->

  - 2001年1月4日 - 发布 Linux 内核2.4.0（3,377,902行代码）

<!-- end list -->

  - 2003年12月17日 - 发布 Linux 内核2.6.0（5,929,913行代码）

从2004年开始，发布过程发生了变化，新的内核每隔2-3个月定期发布，编号为2.6.0、2.6.1，直到2.6.39。

2011年7月21日，Torvalds宣布发布Linux内核3.0：“2.6.<大版本> 的日子过去了”。\[14\]与Linux 2.6.39相比，大的技术变化同版本跃升没有关系；\[15\]它标志着内核的20周年纪念。\[16\]基于时间的发布过程保持不变。

2013年6月发布的Linux内核版本3.10包含15,803,499行代码\[17\]，而2015年6月发布的4.1版本已发展到超过1950万行代码，由近14000名程序员贡献。\[18\]

#### 塔能鮑姆-林納斯辯論

Linux不是[微内核架构的事实曾经引起了林納斯](https://zh.wikipedia.org/wiki/微内核 "wikilink")·托瓦茲与[安德鲁·斯图尔特·塔能鲍姆](../Page/安德鲁·斯图尔特·塔能鲍姆.md "wikilink")之间一场著名的争论。1992年在[Usenet](../Page/Usenet.md "wikilink")討論群組[`comp.os.minix`](news:///comp.os.minix)\[19\]開始了一場[網路論戰](../Page/網路論戰.md "wikilink")，討論的主題在於[作業系統架構的選擇](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。稍後一些著名的[駭客也加入討論](https://zh.wikipedia.org/wiki/駭客 "wikilink")，如[大衛·米勒](../Page/大衛·米勒_\(程式員\).md "wikilink")、[曹子德](../Page/曹子德.md "wikilink")。這場辯論影響了Linux核心的設計走向。塔能鲍姆認為Linux内核採用的[宏内核已經過時了](../Page/整塊性核心.md "wikilink")，應該採取比較先進的[微內核](../Page/微內核.md "wikilink")架構，引起了林納斯的反擊。

在2006年5月9日，这个主题被重新审视\[20\]，并且在2006年5月12日塔能鲍姆写了一份立场声明。\[21\]

## 架构

[Linux_kernel_map.png](https://zh.wikipedia.org/wiki/File:Linux_kernel_map.png "fig:Linux_kernel_map.png") Linux是一个[单体内核](https://zh.wikipedia.org/wiki/单体内核 "wikilink")，支持真正的[抢占式多任务处理](https://zh.wikipedia.org/wiki/抢占式多任务处理 "wikilink")（于用户态，和版本2.6系列之后的内核态\[22\]\[23\]）、[虚拟内存](../Page/虚拟内存.md "wikilink")、[共享库](https://zh.wikipedia.org/wiki/共享库 "wikilink")、、共享[写时复制可执行体](https://zh.wikipedia.org/wiki/写时复制 "wikilink")（通过）、[内存管理](https://zh.wikipedia.org/wiki/内存管理 "wikilink")、[Internet协议族和](https://zh.wikipedia.org/wiki/TCP/IP协议族 "wikilink")[线程](../Page/线程.md "wikilink")等功能。

设备[驱动程序](../Page/驱动程序.md "wikilink")和内核扩展运行于[内核空间](https://zh.wikipedia.org/wiki/内核空间 "wikilink")（在很多[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")[架构中是](https://zh.wikipedia.org/wiki/计算机体系结构 "wikilink")[ring 0](../Page/分级保护域.md "wikilink")），可以完全访问[硬件](../Page/硬件.md "wikilink")，但也有运行于[用户空间的一些例外](https://zh.wikipedia.org/wiki/用户空间 "wikilink")，例如基于[FUSE](../Page/FUSE.md "wikilink")/CUSE的文件系统，和部分UIO\[24\]\[25\]。多数人与Linux一起使用的[图形系统不运行在内核中](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")。与标准单体内核不同，Linux的设备驱动程序可以轻易的配置为[内核模块](https://zh.wikipedia.org/wiki/可载入核心模组 "wikilink")，并在系统运行期间可直接装载或卸载。也不同于标准单体内核，设备驱动程序可以在特定条件下被抢占；增加这个特征用于正确处理[硬件中断并更好的支持](https://zh.wikipedia.org/wiki/中断 "wikilink")[对称多处理](https://zh.wikipedia.org/wiki/对称多处理 "wikilink")\[26\]。出于自愿选择，Linux内核没有[二进制内核接口](../Page/应用二进制接口.md "wikilink")\[27\]。

硬件也被整合入文件层级中。用户应用到设备驱动的接口是在或目录下的入口文件\[28\]。进程信息也通过目录映射到文件系统\[29\]。

### 編程語言

Linux是用[C語言中的](https://zh.wikipedia.org/wiki/C語言 "wikilink")[GCC](../Page/GCC.md "wikilink")版（這種C語言有對標準C進行擴展）寫的，還有幾個用[組合語言](https://zh.wikipedia.org/wiki/組合語言 "wikilink")（用的是GCC的"AT\&T風格"）寫的目標架構短段。因為要支持擴展的C語言，GCC在很長的時間里是唯一一个能正确编译Linux的编译器。有許多其他的語言用在一些方面上，主要集中在內核構建過程中（這裡指從源代碼創建可啟動鏡像）。包括[Perl](../Page/Perl.md "wikilink")、[Python](../Page/Python.md "wikilink")和多種[腳本語言](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")。有一些驅動可能是用[C++](../Page/C++.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink")或其他語言寫的，但是這樣是強烈不建議的。

### 编译器兼容性

[GCC](../Page/GCC.md "wikilink")是Linux内核源代码的缺省[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。在2004年，[Intel主张通过修改内核](https://zh.wikipedia.org/wiki/Intel "wikilink")，以便[Intel C++編譯器能正确编译内核](../Page/Intel_C++編譯器.md "wikilink")。\[30\]在2009年，有通过修改内核2.6.22版而成功编译的报告（並帶來平均8-9%效能增長）。\[31\]\[32\]

自从2010年，已经开始进行使用[Clang](../Page/Clang.md "wikilink")建造Linux内核的努力，Clang是一个可作为替代的C语言编译器\[33\]；截止2014年4月12日，官方内核几乎可以完全用Clang编译\[34\]\[35\]。致力于这个目标的计划叫做“LLVMLinux”，得名于Clang所基于的[LLVM](../Page/LLVM.md "wikilink")编译器下部构造\[36\]。LLVMLinux不意图复制Linux内核或LLVM，因此它是由最终提交给上游计划的补丁构成的一个元计划。使Linux内核可以用Clang编译最大的好处是比GCC有更快的编译速度，内核开发者可以得益于由此而来的更快的工作流程\[37\]。

### 接口

[Linux_kernel_interfaces.svg](https://zh.wikipedia.org/wiki/File:Linux_kernel_interfaces.svg "fig:Linux_kernel_interfaces.svg") 符合标准是Linux内核内部的普遍策略。另一个规则是Linux内核主线不接受只由专有用户空间软件使用的内核模块。

#### 内核至用户空间API

[Linux_API.svg](https://zh.wikipedia.org/wiki/File:Linux_API.svg "fig:Linux_API.svg")接口、[GNU C函数库](https://zh.wikipedia.org/wiki/GNU_C函数库 "wikilink")、[libcgroup](https://zh.wikipedia.org/wiki/cgroups "wikilink")\[38\]、[libdrm](https://zh.wikipedia.org/wiki/Direct_Rendering_Manager "wikilink")、[libalsa和](../Page/ALSA.md "wikilink")[libevdev](https://zh.wikipedia.org/wiki/evdev "wikilink")\[39\]。\]\] 源代码可移植性确保符合标准的C程序可以在符合同样标准的任何系统上编译和运行。Linux内核开发、[GNU C函数库和相关的实用工具致力于追随](https://zh.wikipedia.org/wiki/GNU_C函数库 "wikilink")[POSIX和](https://zh.wikipedia.org/wiki/POSIX "wikilink")[单一UNIX规范](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")。是内核的[系统调用接口](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。

#### 内核至用户空间ABI

二进制可移植性将保证任何程序在符合标准的给定硬件平台上一旦编译通过，可以在符合同样标准的任何其他硬件平台上以编译后的形式运行。二进制可移植性是在基于Linux内核的操作系统上建造[独立软件供应商](https://zh.wikipedia.org/wiki/独立软件供应商 "wikilink")（ISV）应用有商业可行性的本质要求。现有唯一的二进制兼容标准是[Linux标准规范](../Page/Linux标准规范.md "wikilink")（LSB）。

#### 内核内API

[Linux_kernel_and_OpenGL_video_games.svg](https://zh.wikipedia.org/wiki/File:Linux_kernel_and_OpenGL_video_games.svg "fig:Linux_kernel_and_OpenGL_video_games.svg")来处理。渲染呈现的结果被存储在[帧缓冲器](../Page/帧缓冲器.md "wikilink")，其中的内容由[视频显示控制器扫描并发送至屏幕](https://zh.wikipedia.org/wiki/视频显示控制器 "wikilink")。\]\] 在不同子系统间使用了数个内核内部API。其中一些是跨越多个发行版保持稳定的，另一些则不然。对于内核内API不作担保。维护者和贡献者可以在任何时候增加或变更它们\[40\]。

内核内API的例子包括针对下列类别设备驱动程序的软件框架/API：

  - [Video4Linux](../Page/Video4Linux.md "wikilink")用于视频捕捉硬件。

  - [高级Linux声音体系](../Page/ALSA.md "wikilink")（ALSA）用于[声卡](../Page/声卡.md "wikilink")。

  - 用于[网络接口控制器](../Page/网卡.md "wikilink")。

  - 用于[图形加速器](https://zh.wikipedia.org/wiki/图形处理器 "wikilink")。

  - 用于。

  - [mac80211](https://zh.wikipedia.org/wiki/mac80211 "wikilink")用于[无线网络接口控制器](https://zh.wikipedia.org/wiki/无线网卡 "wikilink")\[41\]。

#### 内核内ABI

Linux内核开发者选择不维护稳定的内核内ABI\[42\]。

{{-}}

### 技术特性

#### 抢占式调度系统

[IO_stack_of_the_Linux_kernel.svg](https://zh.wikipedia.org/wiki/File:IO_stack_of_the_Linux_kernel.svg "fig:IO_stack_of_the_Linux_kernel.svg")在Linux内核存储栈各层内的位置。\[43\]\]\]

Linux内核提供在特定条件下的[抢先式调度](https://zh.wikipedia.org/wiki/抢占式多任务处理 "wikilink")。直到内核版本2.4，只有用户进程是抢先式的，就是说除了[时间片用尽](https://zh.wikipedia.org/wiki/时间片 "wikilink")，在[用户模式下执行的当前进程](https://zh.wikipedia.org/wiki/用户模式 "wikilink")，如果有更高态优先级的进程进入`TASK_RUNNING`状态，它就会被中断\[44\]。自从2.6系列Linux内核，增加了中断执行[内核代码的任务的能力](../Page/分级保护域.md "wikilink")，但不是对于内核代码的所有段落\[45\]。

Linux内核含有不同的调度器类\[46\]。内核缺省使用的调度机制叫做[完全公平调度器](https://zh.wikipedia.org/wiki/完全公平调度器 "wikilink")，它介入于内核版本2.6.23\[47\]。这个缺省调度器类在内部也叫做`SCHED_OTHER`，而内核还含有两个遵循POSIX的实时调度类\[48\]，分别叫做`SCHED_FIFO`（实时[先进先出](https://zh.wikipedia.org/wiki/先进先出 "wikilink")）和`SCHED_RR`（实时[轮流式](https://zh.wikipedia.org/wiki/循环制 "wikilink")），二者都优先于缺省类\[49\]。

通过使用实时Linux内核补丁`PREEMPT_RT`，可以支持对关键段落、中断处理器和“中断禁用”代码序列的完全抢先\[50\]。 实时Linux内核补丁部分地集成入主线内核已经带给它一些功能\[51\]。抢先机制改善[延迟](../Page/延迟_\(工程学\).md "wikilink")、增进响应性，并使得Linux更加适合桌面和[实时应用](../Page/实时计算.md "wikilink")。老版本内核有所谓的，用于锁定粒度为整个内核的同步，它最终由Arnd Bergmann在2011年移除了\[52\]。

还有叫做的调度策略，实现了（EDF）算法，它增加于2014年3月30日发行的内核版本3.14\[53\]\[54\]。

#### 可移植性

[Ds_lite_with_slot-2_device_running_dslinux.jpg](https://zh.wikipedia.org/wiki/File:Ds_lite_with_slot-2_device_running_dslinux.jpg "fig:Ds_lite_with_slot-2_device_running_dslinux.jpg")上运行[DSLinux](../Page/DSLinux.md "wikilink")\]\] 尽管林納斯·托瓦茲的初衷不是使Linux成为一个可移植的操作系统，今天的Linux却是全球被最广泛移植的操作系统内核。從行動電話到超級電腦，甚至於有人成功的將Linux内核在[索尼](../Page/索尼.md "wikilink")出品的遊戲機[PS2及](../Page/PlayStation_2.md "wikilink")[PS3和](https://zh.wikipedia.org/wiki/PS3 "wikilink")[微軟出品的遊戲機](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Xbox](../Page/Xbox.md "wikilink")上使用。Linux也是IBM[超级计算机](../Page/超级计算机.md "wikilink")[Blue Gene的操作系统](https://zh.wikipedia.org/wiki/Blue_Gene "wikilink")。直至2011年11月，全球前五百大超級電腦（[TOP500](../Page/TOP500.md "wikilink")）有高達91.4%的比例採用Linux為它們的作業系統\[55\]。一些为手机开发的操作系统，使用Linux内核的修改后的版本，其中包括谷歌[Android](../Page/Android.md "wikilink")、[Firefox OS](../Page/Firefox_OS.md "wikilink")、HP [WebOS和诺基亚](https://zh.wikipedia.org/wiki/WebOS "wikilink")[Maemo](../Page/Maemo.md "wikilink")。\[56\]\[57\]\[58\]

#### 内核错误和oops

[Kernel-panic.jpg](https://zh.wikipedia.org/wiki/File:Kernel-panic.jpg "fig:Kernel-panic.jpg")

在Linux中，[内核错误](../Page/内核错误.md "wikilink")（）是指[操作系统](../Page/操作系统.md "wikilink")在监测到内核系统内部无法恢复的错误，相对于在[用户空间代码类似的错误](https://zh.wikipedia.org/wiki/用户空间 "wikilink")。操作系统试图读写无效或不允许的[内存地址是导致内核错误的一个常见原因](https://zh.wikipedia.org/wiki/内存地址 "wikilink")。内核错误也有可能在遇到硬件错误或操作系统BUG时发生。在许多情况中，操作系统可以在[内存访问违例发生时继续运行](https://zh.wikipedia.org/wiki/内存访问违例 "wikilink")。然而，系统处于不稳定状态时，操作系统通常会停止工作以避免造成破坏安全和数据损坏的风险，并提供错误的诊断信息。

在Linux上，[oops即Linux内核的行为不正确](../Page/Linux内核oops.md "wikilink")，并产生了一份相关的错误日志。许多类型的oops会导致内核错误，即令系统立即停止工作，但部分oops也允许继续操作，作为与[稳定性的妥协](https://zh.wikipedia.org/wiki/稳定性 "wikilink")。这个概念只代表一个简单的[错误](https://zh.wikipedia.org/wiki/错误 "wikilink")。当内核检测到问题时，它会打印一个oops信息然后杀死全部相关[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")。oops信息可以帮助Linux内核工程师[调试](https://zh.wikipedia.org/wiki/调试 "wikilink")，检测oops出现的条件，并[修复导致oops的程序错误](https://zh.wikipedia.org/wiki/修补程式 "wikilink")。

### 安全

[计算机安全](../Page/计算机安全.md "wikilink")是一个非常公众化的主题，关系到Linux内核，因为大量在内核中的错误可能成为潜在的安全漏洞，是否允许提升权限漏洞或拒绝服务攻击源漏洞。\[59\]在过去的几年中，许多这样的缺陷被发现，并在Linux内核中被修补好。新的安全功能被继续实现，以解决在Linux内核中的电脑不安全问题。\[60\]\[61\]

批評者指責內核開發人員，稱他們掩蓋（至少並未公佈）安全漏洞。2008年，作為回應，Torvalds稱：「個人認為，安全漏洞只是『正常的漏洞』。這些漏洞我並不去掩蓋，不過我不認為應當把它們特殊化，更不認為應該追蹤並公示它們……我不理會整個安全團隊，原因之一就是，我認為這些漏洞不僅美化還鼓勵了錯誤的行為。這令安全人員成了『英雄』，就猶如不修補正常漏洞的人就不值一提似的。而事實上，所有無聊的正常漏洞極為重要，僅僅因為它們實在太多了。我不認為該美化和關心那些嚴重的安全漏洞——它們並不及那些由死鎖造成的隨機嚴重崩潰來得更特殊。」\[62\]\[63\]

如2012年五月，SYSRET指令被發現在AMD和英特爾處理器間在實現方面有差異，這個差異在[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[XenServer和](https://zh.wikipedia.org/wiki/XenServer "wikilink")[Solaris](../Page/Solaris.md "wikilink")這些主流作業系統會導致漏洞。2012年六月，Linux核心中該問題已被修復。\[64\]

## 开發

<div class="tright">

<div class="center">

<small>-{zh-cn:内核; zh-tw:核心; zh-hk:內核}-版本</small>

</div>

</div>

### 开发者社区

截止2007年，内核开发已经从20位最活跃开发者写80%的代码转变为顶端30人写30%的代码，而顶端开发者花费更多的时间审核变更。\[65\] 开发者还可以按从属关系来归类；在2007年，顶端类属是“不知名”而顶端公司是Red Hat，它占有12%的贡献，而知名业余爱好者占3.9%。\[66\] 在2007年中所做内核变更已经由超过1900位开发者提交。一般假定Linux内核开发者社区由5000或6000名成员组成。

Linux基金会发表的[2016年Linux内核开发报告](http://go.linuxfoundation.org/linux-kernel-development-report-2016)的更新表明，从版本3.18（2014年12月）至4.7（2016年7月）期间：平均每次发行有来自200-250个公司的大约1500位开发者作出贡献。顶端30位开发者贡献了稍大于16%的代码。在公司中，顶端贡献者是Intel（12.9%）和Red Hat（8.0%），第三和第四位为“none”（7.7%）和“unknown”（6.8%）类属。

### 开发过程与模式

一个想要对 Linux 内核进行修改的开发者一般就从对那个修改的开发和测试开始着手。接下来的过程取决于变化的重要程度，及修改该变更的子系统数量是由单个还是多个修补程序组成。如果仅仅是修改了由单个维护人员维护的单个子系统，那么这些修改的补丁代码就直接通过Cc中某个邮件列表发送给相关的维护人员。邮件列表的阅读者和子系统的维护人员将检查补丁代码并提供反馈。一旦审查过程完成，维护者接受他内核代码树中的补丁。如果这些更改被认为是够重要的错误修复，那么包含这些修补程序的拉取请求（pull request）将在几天内发送给Linus。否则，将在下一个合并窗口时向Linus发送拉取请求。合并窗口通常会持续两周，并在之前的内核版本发布后立即启动\[67\]。

Linus Torvalds拥有对Linux内核能够接受哪些更改和谁可以成为维护者的最终决定权。内核维护者在他们自愿放弃之前将维持他们的角色。目前，没有任何已知的内核维护者被要求退出。此外，还没有一个内核维护者因与其他维护者的交互风格的因素而受到Linus批评的例子。这为维护者提供了宽松的社区空间。虽然内核开发社区的文化多年来有所改善，但曾有一段时间它的声誉很糟糕\[68\]\[69\]。认为自己遭受了不公正对待的开发者可以向Linux基金会的技术专家委员会报告\[70\]。尽管如此，一些社区成员仍然不认同现在的讨论氛围\[71\]。

#### 同 Linux 发行版的关系

大多数Linux用户运行一个由他们 Linux 发行版提供的内核。一些发行版搭载的是 Linux 的通用内核（也就是 “vanilla”或“stable”）版本。不过，一些Linux内核发行商（如[Red Hat和](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")[SUSE](../Page/SUSE.md "wikilink")）会维护他们自己的内核分支。这些发行商分支的内核版本通常相对于稳定版本（vanilla）而言更新的速度更慢一些，但是同样会包括所有相关的稳定版本分支的补丁。此外，他们同时也会增添一些新特性和对新硬件的支持，而这些支持是这些发行商分支基于的稳定分支所不包括的。

### 重新开发的估价

[Redevelopment_costs_of_Linux_kernel.png](https://zh.wikipedia.org/wiki/File:Redevelopment_costs_of_Linux_kernel.png "fig:Redevelopment_costs_of_Linux_kernel.png") 按照传统商业软件开发的方式，重新开发Linux 2.6.0内核的估计代价将是6.12亿美元（4.67亿欧元、3.94亿英镑），以2004年的[COCOMO人月估计模型](https://zh.wikipedia.org/wiki/COCOMO "wikilink").\[72\]在2006年，欧盟资助的一项研究表明，重新开发Linux 2.6.8以后的内核，代价是8.82亿欧元（11.4亿美元、7.44亿英镑）\[73\]。

截至2011年1月4日，使用当前的代码行（LOC）和大卫·惠勒的计算工资数，这将花费约30亿美元（约22亿欧元），才能够重新开发Linux的内核。\[74\]

### 維護

####

<table>
<thead>
<tr class="header">
<th><p>內核</p></th>
<th><p>初始发行日期</p></th>
<th><p>最新版本</p></th>
<th><p>維護者</p></th>
<th><p>支持状态</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td><p>0.03</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/End-of-life_(product)" title="wikilink">EOL</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>1991年11月</p></td>
<td><p>0.12</p></td>
<td><p>EOL</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>0.99.15</p></td>
<td><p>EOL</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>1.0.9</p></td>
<td><p>EOL</p></td>
<td><p>有176,250字串。[75]此版本的Linux内核只支持单处理器基于i386的计算机系统，可移植性成为一个问题。随后1.2版（310,950字串）[76]支持多种计算机架构例如<a href="https://zh.wikipedia.org/wiki/Alpha" title="wikilink">Alpha</a>、<a href="../Page/SPARC.md" title="wikilink">SPARC</a>、<a href="https://zh.wikipedia.org/wiki/MIPS" title="wikilink">MIPS处理器</a>。</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>1.1.95</p></td>
<td><p>EOL</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>1.2.13</p></td>
<td><p>EOL</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>1.3.100[77]</p></td>
<td><p>EOL</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>pre2.0.14</p></td>
<td><p>EOL</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>2.0.40[78]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/David_Weinehall" title="wikilink">David Weinehall</a></p></td>
<td><p><strong>EOL</strong>（已不再支援）</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>2.2.27-rc2[79]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Marc-Christian_Petersen" title="wikilink">Marc-Christian Petersen</a>（前維護者<a href="../Page/艾倫·考克斯.md" title="wikilink">艾倫·考克斯</a>）</p></td>
<td><p><strong>EOL</strong>（已不再支援）</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>2.4.37.11[80]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Willy_Tarreau" title="wikilink">Willy Tarreau</a>（前維護者<a href="https://zh.wikipedia.org/wiki/Marcelo_Tosatti" title="wikilink">Marcelo Tosatti</a>）</p></td>
<td><p><strong>EOL</strong>（已不再支援）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

####

<table>
<thead>
<tr class="header">
<th><p>內核</p></th>
<th><p>初始发行日期</p></th>
<th><p>最新版本</p></th>
<th><p>維護者</p></th>
<th><p>支持状态</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td><p>2.6.16.62[81]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Adrian_Bunk" title="wikilink">Adrian Bunk</a>（前維護者<a href="../Page/葛雷格·克羅哈曼.md" title="wikilink">葛雷格·克羅哈曼</a>）</p></td>
<td><p><strong>EOL</strong>（已不再支援）</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>2.6.27.62</p></td>
<td><p><a href="../Page/葛雷格·克羅哈曼.md" title="wikilink">葛雷格·克羅哈曼</a>[82]</p></td>
<td><p><strong>EOL</strong>（已不再支援）</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>2.6.32.71[83]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Willy_Tarreau" title="wikilink">Willy Tarreau</a>[84]（前維護者<a href="../Page/葛雷格·克羅哈曼.md" title="wikilink">葛雷格·克羅哈曼</a>）</p></td>
<td><p><strong>EOL</strong>，长期支持版本，由2009年12月3日至2016年3月</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>2.6.34.15[85]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Paul_Gortmaker" title="wikilink">Paul Gortmaker</a>（前維護者<a href="https://zh.wikipedia.org/wiki/Andi_Kleen" title="wikilink">Andi Kleen</a>）</p></td>
<td><p><strong>EOL</strong>，长期支持版本，從2010年6月至2014年2月</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>2.6.39.4</p></td>
<td></td>
<td><p><strong>EOL</strong>，2.6核心系列最後穩定版。</p></td>
<td></td>
</tr>
</tbody>
</table>

####

<table>
<thead>
<tr class="header">
<th><p>內核</p></th>
<th><p>初始发行日期</p></th>
<th><p>最新版本</p></th>
<th><p>維護者</p></th>
<th><p>支持状态</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.0.101</p></td>
<td></td>
<td><p><strong>EOL</strong>，长期支持版本，從2011年7月至2013年10月</p></td>
<td><p>托瓦兹宣布，大的变化是，“没有，绝对没有。”[86]2011年5月30日，托瓦兹宣布，“让我们确保我们真正的下一个版本不只是一个全新的闪亮的数字，而是有一个好的内核。”3.0的发布日接近Linux的20周年纪念日。</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>3.2.99</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Ben_Hutchings" title="wikilink">Ben Hutchings</a></p></td>
<td><p><strong>EOL</strong>，长期支持版本，從2011年12月至2018年5月</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.4.113</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Li_Zefan" title="wikilink">Li Zefan</a>（前維護者）</p></td>
<td><p><strong>EOL</strong>，长期支持版本，從2012年5月至2017年4月</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>3.5.7</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>CoDel队列管理算法</li>
<li>seccomp filters</li>
<li>沙盒机制</li>
<li>Android风格的自动休眠和唤醒锁机制</li>
<li>用户空间探测子系统uprobes</li>
<li>TCP连接修复</li>
<li>减少重复确认加快转发的TCP Early Retransmit</li>
<li>连续性内存分配器</li>
<li>kcmp ()系统调用</li>
<li>ext4文件系统加入元数据校验和</li>
<li>改进Btrfs</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.6.11</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><p>客户端TCP Fast Open实现</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>3.7.10</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>改进开源显卡驱动程序，包括： Nvidia、Intel 与 Radeon</li>
<li>通过Xen hypervisor实现对ARM Cortex-A15的硬件虚拟化支持</li>
<li>继续改进BTRFS文件系统</li>
<li>TCP Fast open</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.8.13</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>CPU热插拔支持；</li>
<li>改进ACPI电源管理；</li>
<li>改善XFS文件系统；</li>
<li>支持64位ARMv8/AArch64；</li>
<li>放弃支持旧的i386处理器，减少内核复杂度；</li>
<li>Video 4 Linux 2驱动支持DMA-BUF；</li>
<li>在某些工作负荷下减少物理内存占用；</li>
<li>支持微软Windows 8多重触摸协议；</li>
<li>音频驱动改进；</li>
<li>加密性能改进；</li>
<li>支持下一代IBM POWER8处理器（2013年发布）</li>
<li>XFS文件系统的元数据完整性检查</li>
<li>提升了NUMA调度</li>
<li>核心内存使用审计和关联使用率限制</li>
<li>EXT4文件系统的inline data support</li>
<li>近乎完全支持user namespace等待</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td><p>[87]</p></td>
<td><p>3.9.11</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>繼續完善<a href="../Page/F2FS.md" title="wikilink">F2FS</a>檔案系统</li>
<li>省電功能改進</li>
<li>改善ARM處理器支援</li>
<li>音效、音訊重大更新</li>
<li>Google Goldfish Android模擬器原始碼</li>
<li>DRM顯示卡驅動改善</li>
<li>硬體支援改善</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.10.108</p></td>
<td><p>Willy Tarreau</p></td>
<td><p><strong>EOL</strong>，长期支持版本，從2013年6月至2017年10月</p></td>
<td><ul>
<li>完整支持DynTicks（动态定时器），并成为内核级别的核心特性。</li>
<li>KVM虚拟化改进。</li>
<li>音频/声音驱动更新。</li>
<li>ARM架构支持改进，包括更好地支持64位架构。</li>
<li>大量的Linux加密子系统优化。</li>
<li>AMD电源管理改进。</li>
<li>分阶段驱动（Staging Drivers）改进与新举措。</li>
<li>BCache固态硬盘/机械硬盘缓存框架已经可用，使用两种硬盘的系统将会大大提速。</li>
<li>eCryptfs AES-NI性能改进，支持AES指令集的AMD/Intel x86处理器将会大大提速。</li>
<li>Btrfs文件系统支持skinny extent，quota也进行了一些重建。</li>
<li>F2FS闪存文件系统重大改进。</li>
<li>XFS额外保护。</li>
<li>DRM驱动多方面改进。</li>
<li>Radeon DRM驱动支持golden registers、UVD视频解码、RadeonSI tiling。</li>
<li>引入QXL KMS驱动。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>3.11.10</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>支持LZ4压缩，LZ4压缩和解压缩速度快于LZO、Snappy和zlib，目前只支持ARM架构，在ARMv7 1.5GHz硬件上它的压缩速度能达到45.6MB/s，相比之下LZO是25.2 MB/s</li>
<li>轻量级压缩交换缓存Zswap
<li>
<p>例行的Btrfs和XFS文件系统bug修正和性能改进，F2FS修正了Linux 3.10中发现的一个性能退化bug，首次加入高性能并行分布式文件系统Lustre</p>
</li>
<li>
<p>动态电源管理支持从Radeon HD 2000到Radeon HD 7000系列的GPU</p>
</li>
<p>*KVM和Xen虚拟化支持64位硬件（AArch64）</p></li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.12.74</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Jiri_Slaby" title="wikilink">Jiri Slaby</a>（前維護者<a href="../Page/葛雷格·克羅哈曼.md" title="wikilink">葛雷格·克羅哈曼</a>）</p></td>
<td><p><strong>EOL</strong>，长期支持版本，從2013年11月至2017年5月</p></td>
<td><ul>
<li>優化了CPU頻率管理器，更有效的實現動態調頻功能，間接提昇了部分開源和閉源驅動的性能。</li>
<li>進一步改善了Radeon開源驅動的動態電源管理。
<li>
<p>增加了逆向工程出來的Snapdragon/Adreno顯卡驅動。</p>
</li>
<li>
<p>支援AMD首個異構計算的Berlin系列伺服器APU。</p>
</li>
<p>*小幅改善了F2FS、XFS和Btrfs文件系統。</p>
<li>
<p>ext4檔案系統加入兩個新功能：支持主動extent緩存，減少主讀工作負荷的記憶體使用，改進非同步I/O。</p>
</li>
<p>*改進英特爾Haswell圖形性能。</p></li>
<li>支援NVIDIA Optimus顯示技術的動態GPU電源管理，雙顯卡筆記本可以動態的關閉或啟用第二個GPU。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>3.13.11</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>多佇列塊層允許I/O負載在多CPU核心中均衡，延展性更好，減少磁碟延遲，提供更好的磁碟效能。</li>
<li>支援英特爾Broadwell和AMD Radeon R9 waii的新驅動。</li>
<li>防火牆子系統/包過濾引擎nftables取代iptables。</li>
<li>提供了一個更簡單的核心ABI，減少重複程式碼，更有效的支援過濾規則。</li>
<li>開源NVIDIA驅動加入新的電源管理程式碼。</li>
<li>改進AMD HDMI音訊功能。</li>
<li>英特爾硬體支援立體/3D HDMI裝置。</li>
<li>Btrfs和F2FS檔案系統改進。</li>
<li>Linux功率限制框架和即時平均功率限制驅動程式將允許在超出定義臨界值時限制某些元件的功耗。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.14.79</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong>，长期支持版本，從2014年3月至2016年8月</p></td>
<td><ul>
<li>開源NVIDIA驅動支援更多NVIDIA顯示卡。</li>
<li>英特爾Broadwell的顯示晶片及音訊系統獲得更好的支援。</li>
<li><a href="../Page/VMware.md" title="wikilink">VMware</a> SVGA2顯示驅動程式重大變更。</li>
<li><a href="https://zh.wikipedia.org/wiki/NVIDIA_Tegra" title="wikilink">NVIDIA Tegra初步支援PRIME</a>。</li>
<li>開源AMD驅動部份裝置支援改進。</li>
<li>經由新的驅動程式支援AMD加密協作處理器。</li>
<li>通用CPU加速。</li>
<li>F2FS及BTRFS檔案系統改進。</li>
<li>新增<a href="../Page/Xen.md" title="wikilink">Xen</a>的PVH支援。</li>
<li>加入Deadline調度器。</li>
<li>支援MIPS最新的CPU核心支援。</li>
<li>加入TCP自動抑制功能。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>3.15.10</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>支援<a href="../Page/統一可延伸韌體介面.md" title="wikilink">EFI混合模式</a>，可以在32位元的UEFI上執行64位元的核心。</li>
<li>啟用異步執行緒來加快暫停及恢復的時間。</li>
<li>開源驅動對新一代的NVIDIA Maxwell顯示卡的初步支援，以及對近期的AMD顯示卡的VEC 2.0視訊解碼支援。</li>
<li>CPU前端的AVX-512及RDSEED擴充支援。</li>
<li>支援<a href="https://zh.wikipedia.org/wiki/Sony" title="wikilink">Sony</a> DualShock 4控制器。</li>
<li><a href="../Page/LLVM.md" title="wikilink">LLVM</a>近乎完全支援編譯主線核心。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.16.54</p></td>
<td><p>Ben Hutchings</p></td>
<td><p>长期支持版本，從2014年8月至2020年4月</p></td>
<td><ul>
<li>部份支援64位元ARM架構的EFI。</li>
<li><a href="https://zh.wikipedia.org/wiki/Samsung" title="wikilink">Samsung的Exynos多平臺核心支援</a>。</li>
<li>改進ARM的<a href="../Page/Xen.md" title="wikilink">Xen</a>虛擬化支援。</li>
<li>支援Dell Latitude掉落感應器。</li>
<li>新的<a href="../Page/Synaptics.md" title="wikilink">Synaptics</a>觸控版驅動程式。</li>
<li>改進對<a href="https://zh.wikipedia.org/wiki/Sony" title="wikilink">Sony</a> DualShock 4的支援。</li>
<li>大量音效卡驅動程式更新。</li>
<li><a href="../Page/Btrfs.md" title="wikilink">Btrfs</a>及<a href="../Page/XFS.md" title="wikilink">XFS</a>檔案系統的重大更新。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>3.17.8</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>開源AMD驅動改進。</li>
<li>英特爾顯示晶片驅動程式改進。</li>
<li>Nvidia顯示卡驅動程式重大改進。</li>
<li>新的DRM驅動程式。</li>
<li>移除許多舊的或不再維護的驅動程式。</li>
<li>增加了英特爾Braswell音效驅動程式。</li>
<li>對Wacom繪圖板更好的支援。</li>
<li>新增許多ARM硬體支援。</li>
<li>支援東芝筆記型電腦掉落感應器。</li>
<li>x86上的KVM改進。</li>
<li><a href="../Page/F2FS.md" title="wikilink">F2FS</a>改進。</li>
<li><a href="../Page/XFS.md" title="wikilink">XFS</a>有了sysfs介面。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>3.18.95</p></td>
<td><p>Sasha Levin</p></td>
<td><p><strong>EOL</strong>，长期支持版本，從2014年12月至2017年1月</p></td>
<td><ul>
<li>Nouveau支援從<a href="../Page/DisplayPort.md" title="wikilink">DisplayPort</a>輸出音訊。</li>
<li>許多新的多媒體驅動程式。</li>
<li><a href="https://zh.wikipedia.org/wiki/Wacom" title="wikilink">Wacom繪圖板支援改進</a>。</li>
<li>在64位元<a href="https://zh.wikipedia.org/wiki/ARM" title="wikilink">ARM架構上的</a><a href="https://zh.wikipedia.org/wiki/PCI" title="wikilink">PCI支援</a>。</li>
<li>在大型伺服器上更快的暫停及恢復速度。</li>
<li>郵件信箱框架進入主線代碼。</li>
<li><a href="https://zh.wikipedia.org/wiki/ACPI" title="wikilink">ACPI及電源管理改進</a>。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>3.19.8</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p><strong>EOL</strong></p></td>
<td><ul>
<li>對Intel下一代的<a href="../Page/Skylake微架構.md" title="wikilink">Skylake架構的顯示晶片的初步啟用</a>。</li>
<li>對Nvidia <a href="https://zh.wikipedia.org/wiki/GeForce_900" title="wikilink">GeForce 900系列的基本支援</a>。</li>
<li>在<a href="../Page/Btrfs.md" title="wikilink">Btrfs</a>檔案系統上對於<a href="../Page/RAID.md" title="wikilink">RAID</a> 5及RAID 6的改進。</li>
<li>對多點觸控的支援改進。</li>
</ul></td>
</tr>
</tbody>
</table>

####

<table>
<thead>
<tr class="header">
<th><p>內核</p></th>
<th><p>初始发行日期</p></th>
<th><p>最新版本</p></th>
<th><p>維護者</p></th>
<th><p>支持状态</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td><p>4.0.9</p></td>
<td></td>
<td><p>EOL</p></td>
<td><ul>
<li><a href="../Page/Skylake微架構.md" title="wikilink">Skylake架構處理更好的支援</a>。</li>
<li>支援Intel的Quark單晶片。</li>
<li>改進對<a href="https://zh.wikipedia.org/wiki/PS3" title="wikilink">PS3的支援</a>。</li>
<li>對<a href="../Page/Btrfs.md" title="wikilink">Btrfs</a>、<a href="../Page/F2FS.md" title="wikilink">F2FS</a>、pNFS等多個檔案系統支援改進。</li>
<li>AMD Radeon驅動程式開始支援<a href="../Page/DisplayPort.md" title="wikilink">DisplayPort</a>音源。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>4.1.52</p></td>
<td><p>Sasha Levin[88]<br />
[89]</p></td>
<td><p>EOL</p></td>
<td><ul>
<li><a href="https://zh.wikipedia.org/wiki/ext4" title="wikilink">ext4支援檔案系統層級的加密</a>。</li>
<li><a href="../Page/F2FS.md" title="wikilink">F2FS</a>、<a href="../Page/XFS.md" title="wikilink">XFS</a>、<a href="../Page/Btrfs.md" title="wikilink">Btrfs</a>檔案系統增強與更新。</li>
<li><a href="../Page/RAID.md" title="wikilink">RAID</a> 5/6改進。</li>
<li><a href="https://zh.wikipedia.org/wiki/Dell" title="wikilink">Dell與</a><a href="https://zh.wikipedia.org/wiki/Toshiba" title="wikilink">Toshiba筆記型電腦支援改進</a>。</li>
<li>音訊功能模組化。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>4.2.8</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>大量的<a href="https://zh.wikipedia.org/wiki/ARM" title="wikilink">ARM架構改進</a>。</li>
<li><a href="https://zh.wikipedia.org/wiki/NCQ" title="wikilink">NCQ</a> Trim支援。</li>
<li><a href="../Page/F2FS.md" title="wikilink">F2FS</a>每一檔案加密支援。</li>
<li>輸入裝置支援改進。</li>
<li><a href="https://zh.wikipedia.org/wiki/UEFI" title="wikilink">UEFI</a> ESRT支援以讓UEFI韌體可在系統內更新。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>4.3.6</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>預設啟用Intel Skylake的顯示晶片支援。</li>
<li>許多檔案系統方面的修正。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2016年1月10日</p></td>
<td><p>4.4.169</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>长期支持版本，從2016年1月至2022年2月</p></td>
<td><ul>
<li>新增許多<a href="https://zh.wikipedia.org/wiki/AMD" title="wikilink">AMD硬體支援</a>。</li>
<li><a href="https://zh.wikipedia.org/wiki/UEFI" title="wikilink">UEFI</a> 2.5改進。</li>
<li><a href="https://zh.wikipedia.org/wiki/Toshiba" title="wikilink">Toshiba筆記型電腦更多的改進支援</a>。</li>
<li>重要的<a href="https://zh.wikipedia.org/wiki/ext4" title="wikilink">ext4加密修復</a>。</li>
<li>用於設定核心編譯參數的圖形化介面之一，Xconfig移植到<a href="../Page/Qt.md" title="wikilink">Qt</a>5。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016年3月14日</p></td>
<td><p>4.5.7</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>對Kabylake處理器內建顯示晶片的初步支援。</li>
<li><a href="https://zh.wikipedia.org/wiki/AMD" title="wikilink">AMD顯示卡諸多改進</a>。</li>
<li>對於ARMv6與ARMv7的程式碼重寫。</li>
<li><a href="../Page/Xbox_One.md" title="wikilink">Xbox One控制器支援改進</a>。</li>
<li><a href="../Page/F2FS.md" title="wikilink">F2FS</a>檔案系統增加了新功能。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2016年5月15日</p></td>
<td><p>4.6.7</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>對<a href="../Page/树莓派.md" title="wikilink">樹莓派的</a>3D圖形效能改進。</li>
<li>新增對許多<a href="https://zh.wikipedia.org/wiki/ARM" title="wikilink">ARM平臺的支援</a>。</li>
<li>新增對OrangeFS的支援。</li>
<li>對<a href="../Page/XFS.md" title="wikilink">XFS</a>、<a href="../Page/F2FS.md" title="wikilink">F2FS</a>、<a href="https://zh.wikipedia.org/wiki/ext4" title="wikilink">ext4</a>、<a href="../Page/Btrfs.md" title="wikilink">Btrfs</a>的諸多改進。</li>
<li><a href="../Page/統一可延伸韌體介面.md" title="wikilink">EFI安全性改進</a>。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>4.7.10</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>支援AMD RX480。</li>
<li>全新的安全模塊LoadPin。</li>
<li>支援製作USB/IP協議的虛擬USB設備控制器。</li>
<li>支援在<a href="../Page/Linux.md" title="wikilink">Linux</a>下更新<a href="../Page/統一可延伸韌體介面.md" title="wikilink">UEFI韌體</a>。</li>
<li>新增schedutil頻率控制器，CPUFreq動態頻率縮放子系統速度更快、更精準。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>4.8.17</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li><a href="https://zh.wikipedia.org/wiki/tmpfs" title="wikilink">tmpfs文件系统支援透明大暫存頁</a>。</li>
<li>新的Formatted Kernel Documentation。[90]</li>
<li>解決延遲問題的Timer Wheel。[91]</li>
<li>改進高性能網路路由。[92]</li>
<li>建立核心時允許使用GCC plugins。[93]</li>
<li>加強使用者複製。[94]</li>
<li>AMD GPU驅動支援超頻，改進PowerPlay。</li>
<li>初步支援NVIDIA <a href="../Page/NVIDIA_GeForce_10系列.md" title="wikilink">Pascal顯卡</a>。</li>
<li>支援<a href="https://zh.wikipedia.org/wiki/Raspberry_Pi" title="wikilink">Raspberry Pi</a> 3的BCM2837 SoC。</li>
<li>支援ACPI Low-Power Idle。</li>
<li>支援Microsoft <a href="https://zh.wikipedia.org/wiki/Surface" title="wikilink">Surface</a> 3觸控螢幕。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016年12月11日</p></td>
<td><p>4.9.148</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>长期支持版本，從2016年12月至2023年1月</p></td>
<td><ul>
<li>2/3 程式碼翻新。</li>
<li>新增 Greybus 硬體協定。</li>
<li>新增 Vmapped kernel stacks 機制。</li>
<li>支援 Memory Protection Key 機制。</li>
<li>新增 XFS 共享式資料延伸功能。</li>
<li>為 AMDGPU 提供虛擬螢幕支援，更好的 AMDGPU GPU 重置支持，並對這個現代 AMD GCN 驅動程序進行了其他變化。</li>
<li>AMDGPU 還有試驗性的 Southern Islands 支持 (GCN 1.0)，作為 Radeon DRM 中現有支持之外的一種選擇。</li>
<li>對英特爾 DRM 作了各種修補和改進，最顯著的變化之一就是 DMA-BUF 隱式圍欄 (implicit fencing)。</li>
<li>3D渲染期間，為 Raspberry Pi VC4 驅動程序減少 GPU 和記憶體方面的使用。</li>
<li>CPUFreq 驅動程序繼續更充分地使用調度程序的信息。</li>
<li>內存保護密鑰 (MPK) 支持。</li>
<li>NVDIMM 支持方面的更新。</li>
<li>F2FS 性能方面的改進。</li>
<li>支援 OverlayFS SELinux。</li>
<li>支援另外 29 種 ARM 機器，包括 Raspberry Pi Zero、LG Nexus 5 及其他知名的移動/嵌入式硬體。</li>
<li>支持 Mellanox 平台。</li>
<li>內核線程 (Kthread) 方面的改進。</li>
<li>開始支援 BBR congestion control。</li>
<li>System calls for memory protection keys。</li>
<li>2017/01/19 確認為長期支援版本。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017年2月19日</p></td>
<td><p>4.10.17</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>支援虛擬<a href="../Page/圖形處理器.md" title="wikilink">GPU</a>。</li>
<li>支援 <a href="https://zh.wikipedia.org/wiki/Intel" title="wikilink">Intel</a> <a href="https://zh.wikipedia.org/wiki/CPU" title="wikilink">CPU</a> <a href="../Page/CPU缓存.md" title="wikilink">L2/L3 Cache</a>。</li>
<li>優化對 <a href="../Page/Ext4.md" title="wikilink">EXT4</a>、<a href="../Page/F2FS.md" title="wikilink">F2FS</a>、<a href="../Page/XFS.md" title="wikilink">XFS</a>、<a href="../Page/OverlayFS.md" title="wikilink">OverlayFS</a>、<a href="../Page/网络文件系统.md" title="wikilink">NFS</a>、<a href="../Page/伺服器訊息區塊.md" title="wikilink">CIFS</a>、<a href="../Page/UBIFS.md" title="wikilink">UBIFS</a>、BEFS 和 <a href="../Page/LogFS.md" title="wikilink">LOGFS</a> 檔案系統的支援。</li>
<li>針對 <a href="https://zh.wikipedia.org/wiki/AMD_Radeon" title="wikilink">AMD Radeon GPU</a> 驅動進行強化。</li>
<li>全新的「perfc2c」工具。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017年5月1日</p></td>
<td><p>4.11.12</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>AMD GPU 電源管理更加成熟。</li>
<li>已經可以處理 <a href="../Page/DisplayPort.md" title="wikilink">DisplayPort</a> MST 音訊。</li>
<li>初步支援 Gemini Lake。</li>
<li><a href="../Page/固态硬盘.md" title="wikilink">SSD</a> 支援可擴展 swapping。</li>
<li>支援 SMC-R 協議(RFC7609)。</li>
<li>增強並改進 Intel Turbo Boost Max 3.0。</li>
<li>多隊列塊層支持可插拔 IO 調度器框架和死線調度器。</li>
<li>新的 perf ftrace 命令。</li>
<li>支持 Opal Storage Specification 驅動。</li>
<li>新的 <a href="../Page/树莓派.md" title="wikilink">Raspberry Pi</a> 驅動。</li>
<li>MD/<a href="../Page/RAID.md" title="wikilink">RAID</a>5 日誌。</li>
<li>新的 statx() 系統調用。</li>
<li>SipHash <a href="https://zh.wikipedia.org/wiki/哈希函数" title="wikilink">哈希函數</a>，新的 <a href="../Page/LZ4.md" title="wikilink">LZ4</a> 壓縮實現。</li>
<li>大量的安全、架構和驅動更新。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017年7月2日</p></td>
<td><p>4.12.14</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>史上最大更新。</li>
<li>初步支援 <a href="../Page/超威半导体.md" title="wikilink">AMD</a> <a href="../Page/AMD_Radeon_500系列.md" title="wikilink">Radeon RX Vega</a> <a href="../Page/圖形處理器.md" title="wikilink">GPU</a>。</li>
<li>初步支援 <a href="../Page/英伟达.md" title="wikilink">nVidia</a> <a href="../Page/NVIDIA_GeForce_10系列.md" title="wikilink">GeForce GTX 1000 "Pascal"</a> 加速。</li>
<li>支援 Gemini Lake 的顏色管理器 (Ｃolor Ｍanager)。</li>
<li>增加對 <a href="../Page/英特尔.md" title="wikilink">Intel</a> Memory Bandwidth Allocation 的支援。</li>
<li>新增 <a href="../Page/USB_Type-C.md" title="wikilink">USB Type-C</a> 控制器介面驅動和管理員。</li>
<li>增加支援 Rivet Networks Killer 1535。</li>
<li><a href="../Page/IPv4.md" title="wikilink">IPv4</a> 增加對 L4 <a href="https://zh.wikipedia.org/wiki/哈希函数" title="wikilink">哈希函數支援</a>。</li>
<li><a href="../Page/IPv6.md" title="wikilink">IPv6</a> 增加支援 NETDEV_RESEND_IGMP event。</li>
<li>對 <a href="../Page/Ext4.md" title="wikilink">EXT4</a> 支援 GETFSMAP ioctl。</li>
<li>新 BFQ I/O 排程器。</li>
<li>新 Kyber I/O 排程器。</li>
<li>支援 <a href="../Page/树莓派.md" title="wikilink">Raspberry Pi</a> 的 <a href="https://zh.wikipedia.org/wiki/博通" title="wikilink">Broadcom</a> BCM2835 溫度驅動。</li>
<li>記憶體管理優化。</li>
<li>加入 TEE (Trusted Execution Environment) 子系統。</li>
<li><a href="../Page/安全增强式Linux.md" title="wikilink">SELinux</a> 增加 security hook for prlimit。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017年9月3日</p></td>
<td><p>4.13.16</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>初步支援 Intel Cannon Lake/<a href="../Page/Coffee_Lake微架构.md" title="wikilink">Coffee Lake</a> CPU。</li>
<li>Nouveau 的開源 NVIDIA 具有 HDMI 3D/stereoscopic 支持。</li>
<li>現在還有一個用於統一 UUID/GUID 處理的更多內核代碼的 UUID 子系統。</li>
<li>支援 WMI（Windows Management Instrumentation）匯流排。</li>
<li>EXT4 現在支援超大型目錄功能，支援到20億個目錄。</li>
<li>XFS 現在支援 SEEK_HOLE 和 SEEK_DATA。</li>
<li><a href="https://zh.wikipedia.org/wiki/NVMe" title="wikilink">NVMe</a> 裝置現在寫入效能更好。</li>
<li>新 HID 硬體支援。</li>
<li><a href="../Page/Thunderbolt.md" title="wikilink">Thunderbolt</a> 改進。</li>
<li>新音效晶片支援，包含 Realtek ALC215/ALC285/ALC289。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>4.14.91</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>长期支持版本，從2017年11月至2020年1月</p></td>
<td><ul>
<li>2017/09/20 確認為長期支援版本。[95]</li>
<li>支援最大 4,000TB 和 1,280,000TB 記憶體。</li>
<li>支援 AMD 加密的協處理器（CCP）。</li>
<li>高通 MSM8916 SoC 耳機插孔檢測，Allwinner H3 和 Cirrus Logic CS43130 的支持，Intel Kabylake 系統上對 RT5663、Realtek RT274、TI TLV320AIC32x6 和 Wolfson WM8523 的支持。</li>
<li>支援 Wacom Driver 和 ASUS T100 Touchpad。</li>
<li>增加 Retaltek RTL8822 驅動。</li>
<li>支援 Intel 快取品質監控（CQM）。</li>
<li>ARM64 支援 VMAP_STACK。</li>
<li>為 Btrfs 和 SquashFS 檔案系統加入 zstd 壓縮功能。</li>
<li>支援 HDMI CEC（Raspberry Pi）。</li>
<li>改善對 Ryzen CPU 的支援。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>4.15.18</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>修補 <a href="../Page/熔毁_(安全漏洞).md" title="wikilink">Meltdown</a> 和 <a href="https://zh.wikipedia.org/wiki/幽灵_(安全漏洞)" title="wikilink">Spectre</a> 安全漏洞。</li>
<li>支援 <a href="../Page/RISC-V.md" title="wikilink">RISC-V</a> 架構。</li>
<li>支援 <a href="../Page/超威半导体.md" title="wikilink">AMD</a> 安全加密虛擬化。</li>
<li>支援 <a href="../Page/HDMI.md" title="wikilink">HDMI</a>、<a href="../Page/DisplayPort.md" title="wikilink">Display Port</a> 聲音。</li>
<li>支援 <a href="../Page/超威半导体.md" title="wikilink">AMD</a> <a href="../Page/AMD_Zen.md" title="wikilink">Zen</a> <a href="../Page/中央处理器.md" title="wikilink">CPU</a> 溫度檢測。</li>
<li>增進 <a href="../Page/英特尔.md" title="wikilink">Intel</a> <a href="../Page/Coffee_Lake微架构.md" title="wikilink">Coffee Lake</a> 內建顯示的穩定性。</li>
<li>新增 <a href="../Page/超威半导体.md" title="wikilink">AMD</a> <a href="https://zh.wikipedia.org/wiki/AMD_Radeon" title="wikilink">Radeon</a> <a href="../Page/圖形處理器.md" title="wikilink">GPU</a> 和 <a href="../Page/超威半导体.md" title="wikilink">AMD</a> <a href="../Page/圖形處理器.md" title="wikilink">GPU</a> 開源驅動模式設置。</li>
<li><a href="../Page/超威半导体.md" title="wikilink">AMD</a> Secure Encrypted Virtualization (SEV) 核心程式碼合併。</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[96]</p></td>
<td><p>4.16.18</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>完善 <a href="../Page/熔毁_(安全漏洞).md" title="wikilink">Meltdown</a> 和 <a href="https://zh.wikipedia.org/wiki/幽灵_(安全漏洞)" title="wikilink">Spectre</a> 安全漏洞更新。</li>
<li>增進 <a href="../Page/RISC-V.md" title="wikilink">RISC-V</a> 支援。</li>
<li>支援 <a href="../Page/基于内核的虚拟机.md" title="wikilink">KVM</a> 對 <a href="../Page/超威半导体.md" title="wikilink">AMD</a> 安全加密虛擬化。</li>
<li>移除未使用的程式碼。</li>
<li>各種系統結構、驅動程式、網路等改進跟修復。</li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018年4月1日[97]</p></td>
<td><p>4.17.19</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>改进 CPU 调度器的负载估算</li>
<li>raw BPF 跟踪点</li>
<li>XF 文件系统支持 lazytime</li>
<li>内核 TLS 协议完全支持</li>
<li>histograms 触发器</li>
<li>修补最新 Spectre 漏洞变种</li>
<li>移除八种基本没人再使用的过时处理器架构</li>
<li>支持 AMDGPU WattMan</li>
<li>支持 Intel HDCP</li>
<li>支持 Vega 12 GPU 和 NVIDIA Xavier SoC</li>
<li>默认启用 AMDGPU DC</li>
<li>改进电源管理，等等</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018年6月3日[98]</p></td>
<td><p>4.18.20</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>Unprivileged file system mounts：非特权用户现在也能挂载 FUSE 文件系统</li>
<li>用于异步 I/O 的新内核轮询接口</li>
<li>Restartable sequences</li>
<li>新的 TCP zero-copy receive API</li>
<li>用于高性能网络的 AF_XDP 机制</li>
<li>支持 Qualcomm Snapdragon 845</li>
<li></li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018年10月22日[99]</p></td>
<td><p>4.19.13</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>长期支持版本，从2018年10月至2020年12月</p></td>
<td><ul>
<li>基于异步 I/O 的轮询接口</li>
<li>L1TF 漏洞补丁</li>
<li>块 I/O 延迟控制器</li>
<li>Common Applications Kept Enhanced (CAKE)队列管理算法</li>
<li>Wi-Fi 6 (802.11ax) 初步支持</li>
<li>实验性文件系统 EROFS</li>
<li>Intel Cache Pseudo-locking</li>
<li>基于时间的包传输</li>
<li>改进 RISC-V 架构处理器的支持</li>
</ul></td>
</tr>
<tr class="odd">
<td></td>
<td><p>| [100]</p></td>
<td><p>4.20.2</p></td>
<td><p>葛雷格·克羅哈曼</p></td>
<td><p>EOL</p></td>
<td><ul>
<li>BPF 网络流解析器</li>
<li>taprio 流量调度器</li>
<li>PCI 层中的点对点 DMA 支持</li>
<li>支持 C-SKY 架构</li>
<li>pressure-stall 检测机制</li>
<li>XArray 数据结构</li>
</ul></td>
</tr>
<tr class="even">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

#### 5.x.y版本系列

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>最初发行日期</p></th>
<th><p>当前版本</p></th>
<th><p>维护者</p></th>
<th><p>支持状态</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>| [101]</p></td>
<td><p>5.0.21[102]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Greg_Kroah-Hartman" title="wikilink">Greg Kroah-Hartman</a></p></td>
<td><p>EOL [103]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>| [104]</p></td>
<td><p>5.1.21[105]</p></td>
<td><p>Greg Kroah-Hartman</p></td>
<td><p>EOL [106]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>| [107]</p></td>
<td><p>5.2.18<ref name="latest 5.2">{{cite mailing list</p></td>
<td><p>title = Linux 5.2.18</p></td>
<td><p>url = <a href="https://lore.kernel.org/lkml/20191001072452.GA2912323@kroah.com/">https://lore.kernel.org/lkml/20191001072452.GA2912323@kroah.com/</a></p></td>
</tr>
<tr class="even">
<td></td>
<td><p>| [108]</p></td>
<td><p>5.3.2[109]</p></td>
<td><p>Greg Kroah-Hartman</p></td>
<td><p>最新稳定版本</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>| [110]</p></td>
<td><p>5.4-rc1[111]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Linus_Torvalds" title="wikilink">Linus Torvalds</a></p></td>
<td><p>最新不稳定版本。将成为第20次的LTS[112]。</p></td>
</tr>
<tr class="even">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

Linux内核的主要贡献者可见于[Linux核心黑客列表](https://zh.wikipedia.org/wiki/Category:Linux核心駭客 "wikilink")。

### 版本命名

Linux内核有三个不同的命名方案。早期版本：第一个版本的内核是0.01，其次是0.02,0.03,0.10,0.11,0.12（第一[GPL版本](https://zh.wikipedia.org/wiki/GPL "wikilink")),0.95,0.96,0.97,0.98,0.99及1.0。\[113\]，从0.95版有许多的补丁发布於主要版本版本之间。

旧计划（1.0和2.6版之间)，版本的格式為A.B.C，其中A,B,C代表：**A**大幅度转变的内核，这是很少发生变化，只有当发生重大变化的代码和核心发生才会发生，在历史上曾改变两次的内核：1994年的1.0及1996年的2.0； **B**是指一些重大修改的内核，内核使用了传统的奇数次要版本号码的软件号码系统（用偶数的次要版本号码来表示稳定版本）；**C**是指轻微修订的内核，这个数字当有安全补丁，bug修复，新的功能或驱动程序，内核便会有变化。自2.6.0（2003年12月）发布後，人们认识到，更短的发布周期将是有益的。自那时起，版本的格式為A.B.C.D，其中A,B,C,D代表：**A**和**B**是无关緊要的，**C**是内核的版本，**D**是安全补丁。

自3.0（2011年7月）发布后，版本的格式為3.A.B，其中A,B代表：**A**是内核的版本，**B**是安全补丁。而4.0（2015年4月）釋出後，則延續3.A.B的命名格式，只是將主版號變更為4。

### 版本時間線

<small>來源：kernel.org\[114\]</small>

## 法律層面

### 许可证

原先托瓦茲将 Linux 置于一个禁止任何商业行为的条例之下\[115\]，但0.12版本之后改用 [GNU 通用公共许可证第二版](../Page/GNU通用公共许可证.md "wikilink")。\[116\] 该协议允许任何人对软件进行修改或发行，包括商业行为，只要其遵守该协议，所有基于Linux的软件也必须以该协议的形式发表，并提供[源代码](../Page/源代码.md "wikilink")。

托瓦茲曾经公开声称将Linux置于GNU通用公共许可证之下是他一生中所做的“最好的决定”。\[117\]

#### GPL第三版

Linux 内核明确地仅发表在 GNU 通用公共许可证（GPL）第二版下，\[118\]而不向被许可方提供选择“任何更高版本”的选项（这是常见的 GPL 扩展）。关于如何轻松地改变许可证以使用后来的 GPL 版本（包括第3版）以及这种更改是否合乎需要，存在着相当多的争论。\[119\] 托瓦茲本人在版本2.4.0的发布中明确指出，他自己的代码仅在版本2下发布。\[120\]然而，GPL的条款规定，如果没有指定版本，那么可以使用任何版本；\[121\]并且[艾伦·考克斯指出](../Page/艾倫·考克斯.md "wikilink")，很少有其他 Linux 贡献者指定了特定版本的 GPL。\[122\]

2006年9月，对29位关键内核程序员的调查显示其中的28位更倾向于使用 GPL 第二版（GPLv2）而非当时的 GPL 第三版（GPLv3）草案。 托瓦茲评论说：“我认为一些外界人士......相信我才是那个古怪不合群的人，因为我这么大张旗鼓地不做 GPLv3 的忠实粉丝。”\[123\]这些高水平的内核开发者就大众媒体对 GPLv3 的反对发表了评论，其中包括林納斯·托瓦茲本人、葛雷格·克羅哈曼和[安德鲁·莫顿](../Page/安德魯·莫頓.md "wikilink")。\[124\]他们提到有关[DRM](https://zh.wikipedia.org/wiki/DRM "wikilink")/、专利及“附加限制”的条款，并警告GPLv3对“开源宇宙”的[巴尔干化](../Page/巴尔干化.md "wikilink")。\[125\]\[126\]决定不采用 GPLv3 作为 Linux 内核许可证的托瓦茲在几年后重申了他的批评。\[127\]

#### 韌體爭議

許可證爭議的一個重點是Linux使用[韌體](../Page/韌體.md "wikilink")[二進位包以支援某些硬體裝置](https://zh.wikipedia.org/wiki/二進位包 "wikilink")。[理察·馬修·斯托曼認為這些東西讓Linux某部份成為](https://zh.wikipedia.org/wiki/理察·馬修·斯托曼 "wikilink")[非自由軟體](https://zh.wikipedia.org/wiki/非自由軟體 "wikilink")，甚至以此散佈Linux更會破壞GPL，因為GPL需要**完全可獲取的原始碼**\[128\]。

林纳斯·托瓦兹及Linux社群中的領導者，支持較寬鬆的許可證，不支持[理察·馬修·斯托曼的立場](https://zh.wikipedia.org/wiki/理察·馬修·斯托曼 "wikilink")。社群中的[Linux-libre](../Page/Linux-libre.md "wikilink")提供完整的自由軟體韌體。

#### 載入式核心模組許可證

另一個爭論點，就是[載入式核心模組是否算是智慧財產權下的](https://zh.wikipedia.org/wiki/載入式核心模組 "wikilink")[衍生創作](https://zh.wikipedia.org/wiki/衍生創作 "wikilink")，意即LKM是否也受GPL約束？托瓦茲本人相信LKM僅用一部分「公開」的核心介面，因此不算衍生創作，因此允許一些僅有二進位包裹的驅動程式或不以GPL宣告的驅動程式用於核心。但也不是每個人都如此同意，且托瓦茲也同意很多LKM的確是純粹的衍生創作，也寫下「基本上，核心模組**是**衍生創作」這樣的句子。另一方面托瓦茲也說過：

特別像繪圖卡驅動程式就有非常大的爭議，也許到最後得由立法機關給個答案。

### SCO爭議

在2003年3月，[SCO Group對](../Page/SCO_Group.md "wikilink")[IBM](../Page/IBM.md "wikilink")[提告](https://zh.wikipedia.org/wiki/SCO訴IBM "wikilink")，聲稱IBM將一些在SCO智慧財產權許可證保護下的Unix原始碼植入Linux中，破壞了SCO給予IBM的原始碼使用許可權。另外SCO也發出一大堆存證函給許多公司，警告他們在沒有SCO許可權的情況下使用了Linux，此舉可能導致侵犯智慧財產權，並且以起訴為手段對個別使用者施壓。SCO也同時對[Novell](../Page/Novell.md "wikilink")、[戴姆勒克萊斯勒](https://zh.wikipedia.org/wiki/戴姆勒克萊斯勒 "wikilink")（DaimlerChrysler，在2004年7月被部份駁回）以及[AutoZone](../Page/AutoZone.md "wikilink")提出告訴，且被[Red Hat與其他反對SCO論點的公司反告](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")。2007年8月24日，聯邦法院審理SCO對Novell案（SCO v. Novell），法院認定Novell才是Unix商標的合法擁有者，而不是SCO。2010年3月20日，[美国联邦第十巡回上诉法院](../Page/美国联邦第十巡回上诉法院.md "wikilink")宣判，Novell才是UNIX與UnixWare商標的合法擁有者。此項判決宣布後，已進入破產保護程序的SCO公司，決定停止繼續提出訴訟。

## 参考文献

## 外部連結

  - [Linux内核官方下载中心](http://www.kernel.org/)

  - [日渐膨胀的Linux邮件列表内容摘要](https://web.archive.org/web/20061005060017/http://kt.zork.net/)

  - [林納斯與塔能包姆爭論微核心的筆仗](https://web.archive.org/web/20121003060514/http://www.dina.dk/~abraham/Linus_vs_Tanenbaum.html)

  - [Greg Kroah Hartman on the Linux Kernel at youtube](http://www.youtube.com/watch?v=L2SED6sewRw)

  - [如何查看Linux内核版本信息](https://www.ytyzx.org/index.php/%E6%9F%A5%E7%9C%8BLinux%E5%86%85%E6%A0%B8%E5%8F%8A%E5%8F%91%E8%A1%8C%E7%89%88%E6%9C%AC%E4%BF%A1%E6%81%AF)

## 参见

  - [Linux](../Page/Linux.md "wikilink")

  - [林納斯·托瓦茲](https://zh.wikipedia.org/wiki/林納斯·托瓦茲 "wikilink")

  -
[Category:Linux內核](https://zh.wikipedia.org/wiki/Category:Linux內核 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [COPYING](http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=COPYING)
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
35.
36.
37.
38.
39.
40.
41.
42.
43.
44.
45.
46.
47.
48.
49.
50.
51.
52.
53.
54.
55.
56.
57.
58.
59.
60.
61.
62.
63.
64.
65.
66.
67.
68.
69.
70.
71.
72.
73. [Economic impact of FLOSS on innovation and competitiveness of the EU ICT sector](http://ec.europa.eu/enterprise/sectors/ict/files/2006-11-20-flossimpact_en.pdf) , Table 3 on page 50.
74.
75. [Kernel 1.0 Source Code Release](http://www.kernel.org/pub/linux/kernel/v1.0/)（last checked 2008-10-27）
76. [Kernel 1.2 Source Code Release](http://www.kernel.org/pub/linux/kernel/v1.2/)（last checked 2008-10-27）
77.
78.
79.
80.
81.
82.
83.
84.
85. <http://kernel.org/>
86. [Linux 3.0-rc1](http://permalink.gmane.org/gmane.linux.kernel/1147415) , [Linus Torvalds](https://zh.wikipedia.org/wiki/Linus_Torvalds "wikilink"), 30 May 2011, accessed 31 May 2011
87.
88.
89.
90. [Kernel documentation with Sphinx](http://lwn.net/Articles/692704/), part 1: how we got here
91. [Reinventing the timer wheel](http://lwn.net/Articles/646950/)
92. [Early packet drop](http://lwn.net/Articles/682538/) — and more — with BPF
93. [Kernel building with GCC plugins](http://lwn.net/Articles/691102/)
94. [Hardened usercopy](http://lwn.net/Articles/695991/)
95.
96.
97.
98.
99.
100.
101.
102.
103.
104.
105.
106.
107.
108.
109.
110.
111.
112.
113. [Linux Kernel Archives - Volume 1](http://ftp.cdut.edu.cn/pub/linux/kernel/history/lka-001.html) （Riley Williams）
114.
115.
116.
117.
118.
119.
120.
121.
122.
123.
124.
125.
126.
127. [Linus Torvalds says GPL v3 violates everything that GPLv2 stood for](https://www.youtube.com/watch?v=PaKIZ7gJlRU) [Debconf](https://zh.wikipedia.org/wiki/Debconf "wikilink") 2014, [Portland, Oregon](https://zh.wikipedia.org/wiki/Portland,_Oregon "wikilink") (accessed 11 March 2015)
128. <http://www.gnu.org/philosophy/linux-gnu-freedom.html>