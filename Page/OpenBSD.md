> 本文内容由[OpenBSD](https://zh.wikipedia.org/wiki/OpenBSD)转换而来。


**OpenBSD**是一个[类Unix计算机](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")，是[加州大学伯克利分校所开发的](https://zh.wikipedia.org/wiki/加州大学伯克利分校 "wikilink")[Unix衍生系统](https://zh.wikipedia.org/wiki/Unix "wikilink")[伯克利软件套件](../Page/BSD.md "wikilink")（BSD）的一个后继者。它是在1995年尾由[荷裔加拿大籍项目领导者](https://zh.wikipedia.org/wiki/荷裔加拿大人 "wikilink")[西奥·德·若特](https://zh.wikipedia.org/wiki/西奥·德·若特 "wikilink")（）从[NetBSD](../Page/NetBSD.md "wikilink")[分支而出](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")。除了操作系统，OpenBSD项目已为众多子系统编写了可移植版本，其中最值得注意的是[PF（Packet Filter）](https://zh.wikipedia.org/wiki/PF_\(防火墙\) "wikilink")、[OpenSSH](../Page/OpenSSH.md "wikilink")和[OpenNTPD](../Page/OpenNTPD.md "wikilink")，作为软件包，它们在其他操作系统中随处可见。

该计划以其对[开放源代码](../Page/开放源代码.md "wikilink")的坚持、高质量的文档、坚定的[软件许可证](../Page/软件许可证.md "wikilink")和专注于[系统安全及代码质量而闻名](../Page/计算机安全.md "wikilink")。该项目由德·若特在加拿大阿尔伯塔省[卡尔加里](../Page/卡尔加里.md "wikilink")的家中所协调。它的标志和吉祥物是一只[河豚](../Page/河魨.md "wikilink")，名为普菲（Puffy）。

OpenBSD包含了一些在其他操作系统缺少或是列为选择性的[安全特性](https://zh.wikipedia.org/wiki/OpenBSD安全特性 "wikilink")，至今开发者仍然保有[审计源代码以发现](https://zh.wikipedia.org/wiki/代码审计 "wikilink")[程序错误](../Page/程序错误.md "wikilink")和安全问题的传统。该项目对软件许可证有严格限制，并倾向于使用[开源的](../Page/开放源代码.md "wikilink")[BSD许可证](../Page/BSD许可证.md "wikilink")或其变种——过去还曾对许可证进行了全面的审计，并移除或替换掉以难以接受的许可证发布的代码。

与大多数基于BSD的操作系统一样，OpenBSD的[内核](../Page/内核.md "wikilink")和[用户空间程序](https://zh.wikipedia.org/wiki/用户空间 "wikilink")，如[shell和](../Page/Unix_shell.md "wikilink")[cat及](https://zh.wikipedia.org/wiki/cat_\(Unix\) "wikilink")[ps之类的通用工具](https://zh.wikipedia.org/wiki/ps_\(Unix\) "wikilink")，都在同一个源代码库共同开发。第三方软件可从[port树中以二进制包的形式得到](https://zh.wikipedia.org/wiki/port集 "wikilink")，或自源代码中编译。亦像大多数的现代BSD操作系统，在兼容的计算机架构中，它能以[兼容模式完美运行为Linux编译的二进制代码](https://zh.wikipedia.org/wiki/兼容模式 "wikilink")。

OpenBSD计划维护着20种不同[硬件](../Page/硬件.md "wikilink")[平台的移植版](../Page/系统平台.md "wikilink")，包括[DEC Alpha](../Page/DEC_Alpha.md "wikilink")、[英特尔](../Page/英特尔.md "wikilink")[i386](../Page/Intel_80386.md "wikilink")、惠普[PA-RISC](https://zh.wikipedia.org/wiki/PA-RISC "wikilink")、[x86-64及](https://zh.wikipedia.org/wiki/x86-64 "wikilink")[摩托罗拉 68000处理器](../Page/摩托罗拉_68000.md "wikilink")、[苹果](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[PowerPC](../Page/PowerPC.md "wikilink")、[Sun](../Page/昇陽電腦.md "wikilink") [SPARC](../Page/SPARC.md "wikilink")和[SPARC64计算机和](https://zh.wikipedia.org/wiki/SPARC64 "wikilink")[Sharp Zaurus](https://zh.wikipedia.org/wiki/Sharp_Zaurus "wikilink")\[1\]。OpenBSD基金会被接纳为2014年[Google编程之夏的指导组织](https://zh.wikipedia.org/wiki/Google编程之夏 "wikilink")\[2\]\[3\]。

## 应用

[OpenBSD_5.3_Startup.png](https://zh.wikipedia.org/wiki/File:OpenBSD_5.3_Startup.png "fig:OpenBSD_5.3_Startup.png") [OpenBSD_5.3_Welcome.png](https://zh.wikipedia.org/wiki/File:OpenBSD_5.3_Welcome.png "fig:OpenBSD_5.3_Welcome.png") [OpenBSD_ksh_Interaction.png](https://zh.wikipedia.org/wiki/File:OpenBSD_ksh_Interaction.png "fig:OpenBSD_ksh_Interaction.png")''（默认shell）交互\]\] [OpenBSD49-fvwm.png](https://zh.wikipedia.org/wiki/File:OpenBSD49-fvwm.png "fig:OpenBSD49-fvwm.png")，使用默认的[FVWM](https://zh.wikipedia.org/wiki/FVWM "wikilink")[窗口管理器](https://zh.wikipedia.org/wiki/X窗口管理器 "wikilink")\]\]

[OpenBSD的安全增强功能](https://zh.wikipedia.org/wiki/OpenBSD安全特性 "wikilink")，内置的加密功能和pf[包过滤器使它在安全领域应用广泛](../Page/防火墙.md "wikilink")，例如作为防火墙、\[4\][入侵检测系统](../Page/入侵检测系统.md "wikilink")和[虚拟专用网](https://zh.wikipedia.org/wiki/虚拟专用网 "wikilink")[网关](../Page/网关.md "wikilink")。

几个厂家的[专有系统都基于OpenBSD开发](../Page/专有软件.md "wikilink")，包括[Armorlogic的设备](https://zh.wikipedia.org/wiki/Armorlogic "wikilink")（Profense网络应用防火墙）、Calyptix Security、GeNUA mbH、RTMX Inc\[5\]和.vantronix GmbH。\[6\]较新版本的[微软](../Page/微软.md "wikilink")[Services for UNIX可扩展](https://zh.wikipedia.org/wiki/Windows_Services_for_UNIX "wikilink")[Windows操作系统的类Unix功能](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，其中由Softway系统公司开发的[Interix交互套件使用了许多OpenBSD的代码](https://zh.wikipedia.org/wiki/Interix "wikilink")，该公司于1999年被微软收购\[7\]\[8\]。Windows的安全类产品Core Force则基于OpenBSD的[pf防火墙](https://zh.wikipedia.org/wiki/PF_\(防火墙\) "wikilink")\[9\]。

OpenBSD自带[X窗口系统](https://zh.wikipedia.org/wiki/X窗口系统 "wikilink")\[10\]，适合于桌面使用\[11\]。许多流行的桌面工具包可供选择，包括桌面环境如[GNOME](../Page/GNOME.md "wikilink")、[KDE](../Page/KDE.md "wikilink")及[Xfce](../Page/Xfce.md "wikilink")，网络浏览器如[Konqueror](../Page/Konqueror.md "wikilink")、[Firefox](../Page/Firefox.md "wikilink")及[Chromium](../Page/Chromium.md "wikilink")，和[多媒体](../Page/多媒体.md "wikilink")程序[MPlayer](../Page/MPlayer.md "wikilink")、[VLC多媒体播放器及](https://zh.wikipedia.org/wiki/VLC多媒体播放器 "wikilink")[xine](https://zh.wikipedia.org/wiki/xine "wikilink")\[12\]。该计划奉行极简窗口管理理念，其在主要发行版中为[cwm堆叠式窗口管理器提供了支持](https://zh.wikipedia.org/wiki/cwm_\(窗口管理器\) "wikilink")。

开源软件咨询公司的“M:tier”为许多[财富500强公司在他们的企业环境中部署了OpenBSD的服务器](https://zh.wikipedia.org/wiki/财富500强 "wikilink")、台式机和防火墙\[13\]。

OpenBSD带有全套服务器套件，很容易配置为[邮件服务器](https://zh.wikipedia.org/wiki/邮件服务器 "wikilink")、[网络服务器](https://zh.wikipedia.org/wiki/网络服务器 "wikilink")、[FTP服务器](https://zh.wikipedia.org/wiki/FTP服务器 "wikilink")、[DNS服务器](https://zh.wikipedia.org/wiki/DNS服务器 "wikilink")、[路由器](../Page/路由器.md "wikilink")、[防火墙](../Page/防火墙.md "wikilink")或[NFS](../Page/网络文件系统.md "wikilink")[文件服务器](https://zh.wikipedia.org/wiki/文件服务器 "wikilink")。此外软件包系统也含有提供其他服务协议的软件，如SMB（[Samba](../Page/Samba.md "wikilink")）。

## OpenBSD组件计划

尽管团队规模小，及OpenBSD使用率偏低，该计划已成功地将基本系统的许多组件分拆，单独成为有广泛用途的可移植版本，其中包括：\[14\]

  - [LibreSSL](../Page/LibreSSL.md "wikilink")，自由的[安全套接层和](https://zh.wikipedia.org/wiki/安全套接层 "wikilink")[传输层安全协议实现](https://zh.wikipedia.org/wiki/传输层安全 "wikilink")
  - [OpenBGPD](../Page/OpenBGPD.md "wikilink")，自由的[边界网关协议](../Page/边界网关协议.md "wikilink")第4版（BGP-4）实现
  - [OpenOSPFD](../Page/OpenOSPFD.md "wikilink")，自由的[开放式最短路径优先](../Page/开放式最短路径优先.md "wikilink")路由协议实现
  - [OpenNTPD](../Page/OpenNTPD.md "wikilink")，ntp.org的[网络时间协议守护进程的简单替代](https://zh.wikipedia.org/wiki/网络时间协议 "wikilink")
  - [OpenSMTPD](https://zh.wikipedia.org/wiki/OpenSMTPD "wikilink")，自由的简单邮件传输协议（SMTP）守护进程，支持[IPv4](../Page/IPv4.md "wikilink")/[IPv6](../Page/IPv6.md "wikilink")、[PAM](https://zh.wikipedia.org/wiki/可插入认证模块 "wikilink")，[Maildir和虚拟域](https://zh.wikipedia.org/wiki/Maildir "wikilink")
  - [OpenSSH](../Page/OpenSSH.md "wikilink")，自由的[Secure Shell协议实现](../Page/Secure_Shell.md "wikilink")
  - [OpenIKED](https://zh.wikipedia.org/wiki/OpenIKED "wikilink")，自由的[因特网密钥交换协议实现](https://zh.wikipedia.org/wiki/因特网密钥交换 "wikilink")
  - [通用地址冗余协议](https://zh.wikipedia.org/wiki/通用地址冗余协议 "wikilink")（CARP），自由的[思科专利](../Page/思科系统.md "wikilink")[HSRP](https://zh.wikipedia.org/wiki/热备份路由器协议 "wikilink")/ [VRRP服务器冗余协议替代](https://zh.wikipedia.org/wiki/虚拟路由器冗余协议 "wikilink")
  - [PF](https://zh.wikipedia.org/wiki/PF_\(防火墙\) "wikilink")，[IPv4](../Page/IPv4.md "wikilink")/[IPv6](../Page/IPv6.md "wikilink")双协议有状态防火墙，支持[NAT](../Page/网络地址转换.md "wikilink")、[PAT](https://zh.wikipedia.org/wiki/端口地址转换 "wikilink")、[QoS](https://zh.wikipedia.org/wiki/QoS "wikilink")、流量整形
  - [pfsync](https://zh.wikipedia.org/wiki/pfsync "wikilink")，[PF防火墙的防火墙状态同步协议](https://zh.wikipedia.org/wiki/PF_\(防火墙\) "wikilink")，支持通过[CARP提供](https://zh.wikipedia.org/wiki/通用地址冗余协议 "wikilink")[高可靠性](https://zh.wikipedia.org/wiki/高可靠性 "wikilink")
  - [spamd](https://zh.wikipedia.org/wiki/spamd "wikilink")，支持灰名单的垃圾邮件过滤器，设计与[PF防火墙协同工作](https://zh.wikipedia.org/wiki/PF_\(防火墙\) "wikilink")
  - [tmux](https://zh.wikipedia.org/wiki/tmux "wikilink")，自由、安全、可维护的[GNU Screen终端复用器替代](../Page/GNU_Screen.md "wikilink")
  - [sndio](https://zh.wikipedia.org/wiki/sndio "wikilink")，紧凑的音频和MIDI框架
  - [Xenocara](https://zh.wikipedia.org/wiki/Xenocara "wikilink")，定制的[X.Org编译基础](../Page/X.Org_Server.md "wikilink")
  - [cwm](https://zh.wikipedia.org/wiki/cwm_\(窗口管理器\) "wikilink")，堆叠式窗口管理器

有些子系统已被其他BSD项目纳入其核心中，并且上述所有软件都可在其它类Unix系统中作为软件包获得，甚至是Microsoft Windows。

## 基本系统中的第三方组件

  - [X.org](../Page/X.Org_Server.md "wikilink")，带计划自己的补丁的X窗口环境。用x\*.tgz安装文件集安装。
  - [GCC](../Page/GCC.md "wikilink") 4.2、3.3或2.95（取决于平台），GNU C编译器。作为comp54.tgz文件集的一部分安装。
  - [Perl](../Page/Perl.md "wikilink")，带OpenBSD团队的补丁和修改。
  - [Nginx](../Page/Nginx.md "wikilink")，网络服务器，带补丁。
  - [SQLite](../Page/SQLite.md "wikilink")，带OpenBSD团队的补丁和修改。
  - [Sendmail](../Page/Sendmail.md "wikilink")，邮件服务器，带libmilter。
  - [BIND](../Page/BIND.md "wikilink")，DNS服务器（带补丁）。OpenBSD改进了chroot和其他安全相关的操作。
  - [NSD](https://zh.wikipedia.org/wiki/NSD "wikilink")，权威DNS服务器。
  - [Sudo](../Page/Sudo.md "wikilink")，使用户可以以root身份执行单条命令。
  - [Ncurses](../Page/Ncurses.md "wikilink")。
  - Heimdal，[Kerberos](../Page/Kerberos.md "wikilink")身份验证协议的实现，带补丁。
  - [Binutils](https://zh.wikipedia.org/wiki/Binutils "wikilink")，带补丁。
  - [gdb](https://zh.wikipedia.org/wiki/gdb "wikilink")，带补丁。
  - [Less](https://zh.wikipedia.org/wiki/Less_\(Unix\) "wikilink") 444，带补丁。
  - [Awk](https://zh.wikipedia.org/wiki/Awk "wikilink")。\[15\]

## 开发和发布流程

[OpenBSD_hackers_at_c2k++_at_MIT.jpg](https://zh.wikipedia.org/wiki/File:OpenBSD_hackers_at_c2k++_at_MIT.jpg "fig:OpenBSD_hackers_at_c2k++_at_MIT.jpg") c2k1 [hackathon上的OpenBSD开发者](https://zh.wikipedia.org/wiki/hackathon "wikilink")\]\] 项目采用连续开发模式，和开放、分层的团队管理。只要有合适的技术，任何人都有可能被择优授予提交权利，其中德·若特担任协调员\[16\]。团队每年发布两个官方版本，版本号每次递增0.1\[17\]，且为每个版本提供十二个月的支持。快照（snapshot）版的更新非常频繁。受支持版本的维护补丁可以手动应用到系统上，或定期以[CVS仓库的补丁分支来更新系统](https://zh.wikipedia.org/wiki/协作版本系统 "wikilink")。

另外，如果系统管理员希望尽快使用新添加的功能，则可以选择升级到快照版，再用CVS仓库的“当前”分支对系统更新。

项目强烈建议所有人使用由项目维护的标准通用OpenBSD内核，同时定制的内核不受项目的支持，因为“企图通过自定义或‘优化’内核来解决问题，反而会产生更多的问题。“

主系统外的软件通过[port树由CVS编译](https://zh.wikipedia.org/wiki/port集 "wikilink")，维护工作由维护者（又名porter）个人承担。包的porter负责更新软件的当前分支，同时也要修复错误及为受支持的版本提供维护补丁。因为项目缺乏人手，ports不能像主系统那样得到不间断的严格审计。

每种架构的二进制包由ports树集中编译。当前版本、受支持版本、快照版本都采用这种方式。项目建议系统管理员使用包管理器，而不是从ports树中编译软件，除非需要运行自己修改过的源代码。

新版本发布的同时也会发布一首歌\[18\]。

## 历史和知名度

[Bsd_distributions_usage.svg](https://zh.wikipedia.org/wiki/File:Bsd_distributions_usage.svg "fig:Bsd_distributions_usage.svg")，数据来源于2005年的一个BSD使用调查\[19\] 。被调查者可以[选择多个BSD变种](../Page/同意投票.md "wikilink")。\]\]1994年12月，NetBSD联合创始人[西奥·德·若特被要求从NetBSD高级开发人员和核心团队成员的位置上辞职](https://zh.wikipedia.org/wiki/西奥·德·若特 "wikilink")\[20\]。个中原因并不完全清楚，但据传这是由于他在NetBSD项目和其[邮件列表中与他人性格不合](https://zh.wikipedia.org/wiki/邮件列表 "wikilink")\[21\]。

1995年10月，德·若特从NetBSD 1.0复刻了一个新项目，创立OpenBSD。初始版本OpenBSD 1.2于1996年7月发布，紧接着同年十月发布了OpenBSD 2.0\[22\]。从那时起，该计划一直遵循每半年发布新版本的进度，并且为每个版本提供一年的维护和支持。最新版本OpenBSD 5.5于2014年5月1日发布。

2007年7月25日，OpenBSD开发者鲍勃·贝克宣布成立[OpenBSD基金会](https://zh.wikipedia.org/wiki/OpenBSD基金会 "wikilink")\[23\]，它是一个[加拿大](../Page/加拿大.md "wikilink")[非营利组织](https://zh.wikipedia.org/wiki/非营利组织 "wikilink")，目的是“当有个人和组织想要支持OpenBSD时，可以有一个法律实体作为联系点来处理相关事务\[24\]”。

很难确定究竟OpenBSD的使用有多广泛：它的开发者既不公布、也不收集使用情况的统计信息，且少有其他的资料来源。2005年9月，新成立的BSD认证小组进行了一项调查，其中显示32.8％的BSD用户（4330位受访者中的1420位）使用OpenBSD\[25\]，占有率为四大BSD变种的第二位，次于[FreeBSD](../Page/FreeBSD.md "wikilink")的77％，优于NetBSD的16.3％\[26\]。

## 开放源代码和开放文档

OpenBSD创建之初，[西奥·德·若特认为任何人在任何时间都应该可以方便地获得源代码](https://zh.wikipedia.org/wiki/西奥·德·若特 "wikilink")，因此在查克·克拉纳的协助下\[27\]，他建立了一个公共、匿名的[CVS服务器](https://zh.wikipedia.org/wiki/协作版本系统 "wikilink")。 这是同类软件开发界的头一个：当时的传统是，只有一小队开发人员才有机会查看项目的源代码库\[28\]。查克和德·若特认为，这种做法“违背了开源的哲学”，对于贡献者也不方便。德·若特的决定使得用户可以“更有作为”，坚定了计划开放和公开访问源代码的信念\[29\]。

OpenBSD的开发人员不容许源代码树中包含[闭源的二进制驱动](../Page/专有软件.md "wikilink")，不愿签署[保密协议](../Page/保密协议.md "wikilink")。因为在OpenBSD 3.7发布前的截止时间内没有得到说明文档，对[Adaptec](https://zh.wikipedia.org/wiki/Adaptec "wikilink") AAC [RAID控制器的支持被从标准OpenBSD内核中移除了出去](https://zh.wikipedia.org/wiki/磁盘阵列控制器 "wikilink")\[30\]。

OpenBSD对开放的政策延伸到了硬件文档：2006年12月的幻灯片显示，德·若特解释道，如果没有它“开发人员在编写驱动程序就会经常犯错误”，并指出“像\[天哪，这能行\]的盲目开发很难成功，有的开发者干脆就此放弃“\[31\]。他接着说，OpenBSD不能接受厂商的二进制驱动，“不能相信运行在我们内核中的厂商二进制文件”，并说“当出现问题时……根本没办法修复\[他们\]”\[32\]。

## 许可

OpenBSD计划的目标是“保持原先伯克利Unix的[版权精神](https://zh.wikipedia.org/wiki/著作权 "wikilink")”，即“相对无担保的Unix源代码”\[33\]。其中一个有名的例子是OpenBSD都会尽量使用ISC许可证。为此，对于新写的代码，首选[互联网系统协会（ISC）许可证](https://zh.wikipedia.org/wiki/ISC许可证 "wikilink")，其为BSD许可证的一种简化版本，但去除了根据[伯尔尼公约而不必要的语句](https://zh.wikipedia.org/wiki/伯尔尼公约 "wikilink")，但[MIT或BSD许可证也可接受](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")。与之相比，广泛使用的[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")被认为条款过于严格\[34\]。

2001年6月，因达伦·里德对IPFilter的修改引起了开发者的担忧，OpenBSD展开了对ports和源码树的系统许可证审计\[35\]。在整个系统中发现了有一百多个文件，其中的代码没有许可证、许可含糊不清，或是违反了许可。为确保许可证都能被严格遵守，开发者联系了所有与之相关的版权持有人：一些代码片段被删除，许多代码被替换，其他的如[多播](../Page/多播.md "wikilink")[路由](../Page/路由.md "wikilink")工具mrinfo\[36\]和map-mbone\[37\]，原先[施乐](../Page/施乐.md "wikilink")公司只允许研究性的使用目的，被重新授权，以使OpenBSD可以继续使用它们；审计过程中还删除了所有[丹尼尔伯·恩斯坦所写的软件](https://zh.wikipedia.org/wiki/丹尼尔伯·恩斯坦 "wikilink")。当时，伯恩斯坦要求在再发布他的代码的所有修改版本前都须经过他的批准，而OpenBSD的开发者都不愿意花时间和精力这么做\[38\]。删除这些软件引发了与伯恩斯坦的冲突，后者认为这种行为完全是多余。他举例说，[网景](https://zh.wikipedia.org/wiki/网景 "wikilink")[网页浏览器](../Page/网页浏览器.md "wikilink")的许可证更加不自由，并指责伪善的OpenBSD的开发者保留了网景浏览器，同时却删除了他的软件\[39\]。OpenBSD计划的观点是，虽然网景浏览器不开源，但其许可证的条件却更易遵守\[40\]。他们声称伯恩斯坦对衍生品的控制欲会浪费大量的额外精力，而符合他要求的最合适方式就是删除\[41\]。

由于对许可证的关注，OpenBSD团队会选择是从头开发软件，或是采用合适的现有软件。特别是经过了[pf](https://zh.wikipedia.org/wiki/PF_\(防火墙\) "wikilink")[包过滤器事件](https://zh.wikipedia.org/wiki/包过滤器 "wikilink")，这个组件包括在[IPFilter](../Page/IPFilter.md "wikilink")中，首次出现在\[42\]OpenBSD 3.0，现在[DragonFly BSD](../Page/DragonFly_BSD.md "wikilink")、NetBSD和FreeBSD上都可以看到它。OpenBSD的开发者也用以BSD许可证授权的等同项目或成立新项目，以取代用GPL许可证授权的工具（如[diff](https://zh.wikipedia.org/wiki/diff "wikilink")、[grep及](https://zh.wikipedia.org/wiki/grep "wikilink")[pkg-config](https://zh.wikipedia.org/wiki/pkg-config "wikilink")），其中包括[OpenBGPD](../Page/OpenBGPD.md "wikilink")路由守护进程和[OpenNTPD](../Page/OpenNTPD.md "wikilink")时间服务守护进程\[43\]。

## 募资

虽然操作系统及其可移植的组件广泛应用于商业产品，德·若特却表示，商业公司几乎没有给予它们任何资金支持：“传统上，我们的资金全都来自于用户的捐赠和用户购买的CD（其他产品并不赚钱），显然，这点钱并不多。\[44\]”

本世纪初，该计划得到了DARPA为期两年的资助，使他们“雇了5名完全的全职工，花了3万美元购买硬件，并举办了3场比赛。\[45\]”

德·若特表示了对资金来源不平衡的担心：“我认为，捐款首先应来源于是厂商，其次是企业用户，再次是个人用户。但事实几乎完全相反，只有非常少的人捐了15至1美元。对于这些人，感谢你们！\[46\]”

2014年1月14日，鲍勃·贝克发布了一个公告，请求人们捐款以支付电费。贝克说，如果没有持续的资金来源，那么OpenBSD就不得不关闭\[47\]。计划很快就收到了米尔恰·波佩斯库价值两万美元的比特币捐款，他是罗马尼亚的MPEx比特币交易所的创建者。 该项目希望募集到150000美元\[48\]以支付账单，并解除短期的资金顾虑\[49\]。

## 安全与代码审计

在OpenBSD创立后不久，当地的一家软件安全公司Secure Networks, Inc.（简称SNI）与西奥·德·若特取得联系了\[50\]\[51\]。他们正在开发一个“网络安全审计工具”名为Ballista（在被[网络联盟收购后改名为Cybercop](../Page/迈克菲.md "wikilink") Scanner SNI），目的是寻找并[利用可能存在的软件安全漏洞](https://zh.wikipedia.org/wiki/exploit "wikilink")。这与若特自己的兴趣爱好不谋而合，这样的强强联手使得OpenBSD2.3计划进展飞速\[52\]，同时研究重点放在了系统安全上\[53\]。

OpenBSD的特点是极度注重系统安全。这包含了附加的[API](../Page/应用程序接口.md "wikilink")，例如*[strlcat](https://zh.wikipedia.org/wiki/strlcat "wikilink")*和*[strlcpy](https://zh.wikipedia.org/wiki/strlcpy "wikilink")*[函数](../Page/子程序.md "wikilink")\[54\]；工具链的选择，如[静态范围检查器](https://zh.wikipedia.org/wiki/静态程序分析 "wikilink")；用来防止无效访问的内存保护技术，如[ProPolice和](https://zh.wikipedia.org/wiki/缓冲区溢出保护 "wikilink")[W^X](https://zh.wikipedia.org/wiki/W^X "wikilink")（W [xor](../Page/逻辑异或.md "wikilink") X）[分页保护特性](https://zh.wikipedia.org/wiki/分页 "wikilink")；以及[密码和](../Page/密码学.md "wikilink")[随机技术](https://zh.wikipedia.org/wiki/随机化 "wikilink")\[55\]。

为了减少漏洞和错误配置所导致允许[权限提升的风险](https://zh.wikipedia.org/wiki/权限提升 "wikilink")，在编写新程序和改写原有程序时会注意[权限分离](https://zh.wikipedia.org/wiki/权限分离 "wikilink")、[权限撤销和使用](https://zh.wikipedia.org/wiki/权限撤销_\(计算机\) "wikilink")[chroot](https://zh.wikipedia.org/wiki/chroot "wikilink")。受到[最小权限原则](../Page/最小权限原则.md "wikilink")的启发，OpenBSD率先开发了权限分离技术，它将程序分离成两个或者多个部分，其中一个运行需要特权的操作，其他大部分的代码则运行那些无须特权的\[56\]。权限撤销与它类似，其为在程序结束需要权限的操作后就将权限撤销。chroot包括将应用程序对[文件系统](../Page/文件系统.md "wikilink")的访问限制在某一部分，禁止其访问存有私人或者系统文件的区域。开发者将这些特性应用到了通用软件的OpenBSD版中，包括[tcpdump和](https://zh.wikipedia.org/wiki/tcpdump "wikilink")[Apache](../Page/Apache_HTTP_Server.md "wikilink")[网页服务器](https://zh.wikipedia.org/wiki/网页服务器 "wikilink")\[57\]。

OpenBSD开发者创建了并维护着一个[Telnet](../Page/Telnet.md "wikilink")的安全型替代品[OpenSSH](../Page/OpenSSH.md "wikilink")。OpenSSH基于原有的[SSH套件](../Page/Secure_Shell.md "wikilink")，并由OpenBSD团队进一步开发\[58\]。它首次出现于OpenBSD 2.6中，现在许多操作系统都采用了OpenSSH这个最流行的SSH实现\[59\]。

项目有对问题代码的持续审计的政策，开发者马克·埃斯皮将其描述为“永不结束的过程……不单单是对于某个特定问题的修复”\[60\]。他接着列举了发现问题后的几个典型操作，包括检查整个源代码树是否存在相似问题，“\[力图\]求证是否需要修订文档”，以及研究是否“需要修改[编译器以提醒注意这个问题](https://zh.wikipedia.org/wiki/编译器 "wikilink")”。

### 调查可能的FBI后门

在2010年10月11日，格里高利·佩里给德·若特寄了一封电子邮件，称[FBI早在](https://zh.wikipedia.org/wiki/FBI "wikilink")10年前就给了一些OpenBSD前开发者一笔钱，让他们在[OpenBSD加密框架中加入自己的后门](https://zh.wikipedia.org/wiki/OpenBSD加密框架 "wikilink")。12月14日，德·若特通过openbsd-tech邮件列表将这封信公之于众，并且建议对[IPsec](../Page/IPsec.md "wikilink")代码库进行审计\[61\]\[62\]。事实上德·若特对后门之说抱有怀疑态度，他邀请所有的开发者独立复审相关代码。之后的几周内一些程序问题得到了修复，但并未发现任何存在后门的证据\[63\]。

### 标语

OpenBSD网站一直都在强调默认安装的安全记录。直到2002年6月前，OpenBSD的网站上都如此声明：  2002年6月，OpenSSH中发现了一个远程漏洞，可使远程攻击者获取OpenBSD（和当时其他运行着OpenSSH的系统）的root权限。当然这个漏洞被迅速地修复了\[64\]\[65\]。与此同时网站上的声明改成：  2007年，OpenBSD又被发现了一个与网络有关的远程漏洞，同样也被迅速修复\[66\]。因此网站上的声明又改成：  此标语沿用至今。

但这个声明也遭到了批评，因为默认安装下几乎没运行几个系统服务，因此一些评论家认为其标语应该改成“在默认安装下，没有可工作的应用程序！”——事实上大部分用户会开启更多的服务，安装更多的软件\[67\]。而项目声明说，将默认安装有意最小化是为了确保无经验的用户“不需要在一夜之间变成安全问题专家”\[68\]，这也符合其将开源以及代码审计实务作为安全系统重要组成的宗旨\[69\]。

## 发行及推广

OpenBSD可以从多种方式自由获取：源代码可以从匿名CVS中检出\[70\]，二进制文件和开发快照可以通过[FTP](../Page/文件传输协议.md "wikilink")、[HTTP](../Page/超文本传输协议.md "wikilink")、rsync或AFS下载\[71\]。预先包装好的[CD-ROM](../Page/CD-ROM.md "wikilink")集只需支付一小笔费用就可在网上购得，附带各种各样的贴纸和版本主题曲的拷贝。这些和他们的艺术品和其他奖金一道组成了该计划为数不多的收入来源，以负担硬件、[带宽及支付其他费用](../Page/带宽_\(计算机\).md "wikilink")\[72\]。

同其他操作系统一样，OpenBSD提供了易于安装和管理程序的[软件包管理系统](../Page/软件包管理系统.md "wikilink")，但它并不属于基本操作系统的一部分\[73\]。软件包工具可以用软件包来提取、管理和移除二进制文件。在OpenBSD上，软件包的源代码储存于port系统中，其为一系列的[Makefile文件和编译这个包所需的其他编译基础](https://zh.wikipedia.org/wiki/Makefile "wikilink")。OpenBSD中port和基础操作系统是一起开发和发布的：这意味着和4.6一起发布的port和软件包不适合用于4.5，反之亦然\[74\]。

OpenBSD最初采用[Phil Foglio所绘的](https://zh.wikipedia.org/wiki/Phil_Foglio "wikilink")[BSD小恶魔作为他们的吉祥物守护进程](https://zh.wikipedia.org/wiki/BSD小恶魔 "wikilink")，后者后来由[约翰·拉塞特](../Page/约翰·拉塞特.md "wikilink")修改，[马歇尔·柯克·麦库西克持有版权](https://zh.wikipedia.org/wiki/马歇尔·柯克·麦库西克 "wikilink")。 在后续版本中吉祥物有过更改，最终选定了Puffy\[75\]，他们称之为一条[河豚](https://zh.wikipedia.org/wiki/河豚 "wikilink")\[76\]。从那时起Puffy就出现在各种OpenBSD宣传材料中，在发布歌曲和艺术品中也能看到。早期OpenBSD版本的宣传资料并没有一个统一的主题或设计，但后来每个版本的CD-ROM、发布歌曲、海报和T恤衫都有自己的单一风格和主题，有时其是由[Plaid Tongued Devils的Ty](https://zh.wikipedia.org/wiki/Plaid_Tongued_Devils "wikilink") Semaka所设计\[77\]。这些都是[倡导使用OpenBSD的一部分](https://zh.wikipedia.org/wiki/操作系统的倡导 "wikilink")。每个版本会从道德或政治的角度阐述项目之所以重要的一个原因，通常是以[戏仿的方式](https://zh.wikipedia.org/wiki/戏仿 "wikilink")\[78\]。

## 版本歷史

首个OpenBSD官方版（OpenBSD 2.0）于1996年10月釋出，現已發展到2017年4月11日釋出的OpenBSD 6.1。

| 版本  | 发布日期             |
| --- | ---------------- |
| 1.2 | 1996年7月1日        |
| 2.0 | 1996年10月1日\[79\] |
| 2.1 | 1997年6月1日        |
| 2.2 | 1997年12月1日       |
| 2.3 | 1998年5月19日       |
| 2.4 | 1998年12月1日       |
| 2.5 | 1999年5月19日       |
| 2.6 | 1999年12月1日       |
| 2.7 | 2000年6月15日\[80\] |
| 2.8 | 2000年12月1日       |
| 2.9 | 2001年6月1日        |
| 3.0 | 2001年12月1日       |
| 3.1 | 2002年5月19日       |
| 3.2 | 2002年11月1日       |
| 3.3 | 2003年5月1日        |
| 3.4 | 2003年11月1日       |
| 3.5 | 2004年5月1日        |
| 3.6 | 2004年11月1日       |
| 3.7 | 2005年5月19日       |
| 3.8 | 2005年11月1日       |
| 3.9 | 2006年5月1日        |
| 4.0 | 2006年11月1日       |
| 4.1 | 2007年5月1日        |
| 4.2 | 2007年11月1日       |
| 4.3 | 2008年5月1日        |
| 4.4 | 2008年11月1日       |
| 4.5 | 2009年5月1日        |
| 4.6 | 2009年10月18日      |
| 4.7 | 2010年5月19日       |
| 4.9 | 2011年5月1日\[81\]  |
| 5.0 | 2011年11月1日       |
| 5.1 | 2012年5月2日        |
| 5.2 | 2012年11月1日       |
| 5.3 | 2013年5月1日        |
| 5.4 | 2013年11月1日       |
| 5.5 | 2014年5月1日\[82\]  |
| 5.6 | 2014年11月1日       |
| 5.7 | 2015年5月1日        |
| 5.8 | 2015年10月18日      |
| 5.9 | 2016年3月29日       |
| 6.0 | 2016年9月1日        |
| 6.1 | 2017年4月11日       |

## 文献

  - *[Absolute OpenBSD, 2nd Edition](http://www.nostarch.com/obenbsd2e)* by Michael W. Lucas. ISBN 978-1-59327-476-4
  - *The OpenBSD Command-Line Companion, 1st ed.* by Jacek Artymiak. ISBN 978-83-916651-8-3.
  - *[Building Firewalls with OpenBSD and PF: Second Edition](http://www.amazon.com/Building-Firewalls-OpenBSD-PF-2nd/dp/8391665119/ref=cm_pdp_lm_itm_title_1)* by Jacek Artymiak. ISBN 978-83-916651-1-4.
  - *[Mastering FreeBSD and OpenBSD Security](http://www.oreilly.com/catalog/mfreeopenbsd/)* by Yanek Korff, Paco Hope and Bruce Potter. ISBN 978-0-596-00626-6.
  - *[Absolute OpenBSD, Unix for the Practical Paranoid](https://zh.wikipedia.org/wiki/Absolute_OpenBSD "wikilink")* by Michael W. Lucas. ISBN 978-1-886411-99-9 [(online copy **here**)](https://web.archive.org/web/20120322114859/http://eduunix.ccut.edu.cn/index2/html/unix/Absolute.OpenBSD.UNIX.For.The.Practical.Paranoid.eBook-LiB/8014final/toc.html)
  - *[Secure Architectures with OpenBSD](https://web.archive.org/web/20110814033332/http://cseng.aw.com/catalog/academic/product/0,1144,0321193660,00.html)* by Brandon Palmer and Jose Nazario. ISBN 978-0-321-19366-7.
  - *[The OpenBSD PF Packet Filter Book: PF for NetBSD, FreeBSD, DragonFly and OpenBSD](http://www.reedmedia.net/books/pf-book/)* published by Reed Media Services. ISBN 978-0-9790342-0-6.
  - *[Building Linux and OpenBSD Firewalls](http://www.wiley.com/legacy/compbooks/catalog/35366-3.htm)* by Wes Sonnenreich and Tom Yates. ISBN 978-0-471-35366-9.
  - *[The OpenBSD 4.0 Crash Course](http://www.oreilly.com/catalog/openbsd4/)* by Jem Matzan. ISBN 978-0-596-51015-2.
  - *[The Book of PF A No-Nonsense Guide to the OpenBSD Firewall, 2nd edition](https://web.archive.org/web/20120111060243/http://nostarch.com/pf2.htm)* by Peter N.M. Hansteen ISBN 978-1-59327-274-6 .

## 参见

  - [BSD操作系统比较](https://zh.wikipedia.org/wiki/BSD操作系统比较 "wikilink")
  - [自由及開放原始碼軟體許可證比較](../Page/自由及開放原始碼軟體許可證比較.md "wikilink")
  - [开源操作系统比较](https://zh.wikipedia.org/wiki/开源操作系统比较 "wikilink")
  - [Hackathon](https://zh.wikipedia.org/wiki/Hackathon "wikilink")
  - [KAME计划](https://zh.wikipedia.org/wiki/KAME计划 "wikilink")
  - [OpenBSD Journal](https://zh.wikipedia.org/wiki/OpenBSD_Journal "wikilink")
  - [pfSense](https://zh.wikipedia.org/wiki/pfSense "wikilink")
  - [POSSE计划](https://zh.wikipedia.org/wiki/POSSE计划 "wikilink")
  - [注重安全的操作系统](https://zh.wikipedia.org/wiki/注重安全的操作系统 "wikilink")
  - [LibreSSL](../Page/LibreSSL.md "wikilink")

## 参考

## 外部链接

  -
  - [OpenBSD Journal](http://undeadly.org/)

  - [非官方OpenBSD ports追踪器](http://openports.se/)

  - [OpenBSD ports](http://ports.su/) web-site based on the ports-readmes port

  - [OpenBSD源代码搜索](http://BXR.SU/OpenBSD/)

  - freenode上的[\#openbsd](irc://irc.freenode.net/openbsd)，或直接通过浏览器访问：https://web.archive.org/web/20140305111015/https://webchat.freenode.net/?channels=openbsd

<!-- end list -->

  - 视频

<!-- end list -->

  - [Video - Exploit Mitigation Techniques: an Update After 10 Years](http://tech.yandex.com/events/ruBSD/2013/talks/103/)
  - [Video - An OpenBSD talk by Michael Lucas](https://www.youtube.com/watch?v=BXPV3vJF99k)

<!-- end list -->

  - 大型邮件列表

<!-- end list -->

  - [公告邮件列表](http://lists.openbsd.org/cgi-bin/mj_wwwusr?user=&passw=&func=lists-long-full&extra=announce)
  - [安全公告邮件列表](http://lists.openbsd.org/cgi-bin/mj_wwwusr?user=&passw=&func=lists-long-full&extra=security-announce)
  - [杂项邮件列表](http://lists.openbsd.org/cgi-bin/mj_wwwusr?user=&passw=&func=lists-long-full&extra=misc)

{{-}}

[Category:OpenBSD](https://zh.wikipedia.org/wiki/Category:OpenBSD "wikilink") [Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink") [Category:嵌入式操作系统](https://zh.wikipedia.org/wiki/Category:嵌入式操作系统 "wikilink")

1.
2.
3.
4.
5.
6.
7.
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
73.
74.
75.
76.
77.
78.
79.
80.
81.
82.