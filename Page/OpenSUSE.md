**openSUSE**（\[1\]），前身爲SUSE Linux和SuSE Linux
Professional，是一个[Linux發行版與項目](../Page/Linux.md "wikilink")，由SUSE
Linux
GmBH與其他公司贊助\[2\]。openSUSE在全世界被廣泛使用，尤其是在德國。它的開發重心是爲軟體開發者和系統管理者創造適用的開放原始碼的工具，並提供易於使用的桌面環境和功能豐富的伺服器環境。openSUSE針對桌面環境進行了一系列的優化，是一个對Linux新手較為友好的Linux发行版。

openSUSE釋出的第一個版本是一個SUSE Linux 10.0的測試版。目前的稳定版本是openSUSE Leap
15。该社区项目提供了一个名为openSUSE
Tumbleweed的滚动版本，该版本不断更新，并通过经过测试的稳定软件包进行更新。更新的机制基于名为“Factory”（工厂）的滚动开发代码库。与openSUSE项目相关的其他工具和应用程序包括YaST、Open
Build Service、openQA、Snapper、Machinery、Portus 和 Kiwi 等。

2003年11月4日，Novell以2.1億美元收購SuSE Linux AG\[3\]後創建了openSUSE。2011年，The
Attachmate Group收購Novell，並將Novell和SUSE拆分爲兩家獨立的子公司。2014年11月，The
Attachmate Group與Micro Focus合併\[4\]，但SUSE仍是其业务部门。

## 概述

openSUSE Project由[SUSE公司赞助](../Page/SUSE.md "wikilink")，開發和維護著SUSE
Linux发行版部件。openSUSE是SUSE Linux Professional的接替者。

除linux发行版以外，openSUSE项目还提供了一个网站供社区成员参与开发。社区成员可以通过openSUSE的开放式编译服务（the
Open Build
Service）参与openSUSE的协作开发、文档撰写以及美工设计，通过邮件列表或IRC参与开发讨论。社区成员也可参与openSUSE网站的wiki建设以提升网站的质量。

openSUSE通过其openSUSE
Leap版本提供了一个稳定的基石版本。喜欢追逐新版本自由软件的用户可以使用其滚动发布版本Tumbleweed。
用户也可以使用其开放构建服务（OBS，Open Build
Service），参与openSUSE的软件开发。此外，openSUSE的灵活性使得为特定目标（例如运行Web或邮件服务器）重新调整系统功能变得容易。\[5\]

像大多数Linux发行版一样，openSUSE包括一个默认的图形用户界面（GUI）和一个可选的命令行界面。openSUSE
的用户可以选择几种桌面环境
GUI，包括GNOME、KDE、Cinnamon、MATE、LXQt\[6\]、Xfce。 openSUSE
提供了数千个自由软件包或免费软件包的支持。

繼openSUSE 13.2之後的新版本為openSUSE Leap
42.1，從這一個版本開始命名規則和產品開發模式都進行了重大的改變。openSUSE
Leap開始直接使用SLE（SUSE Linux Enterprise）的源代碼，而openSUSE Leap 42.1幾乎就是SLE 12
SP1。openSUSE Leap 42.3之后命名规则又发生了改变，Leap 42的下一个大版本号为Leap 15。

## 特色

### YaST 控制中心

**YaST**（**Yet another Setup Tool**，“另一种安装工具”）是 openSUSE
的重要特性之一。它能让系统管理员在集成界面内处理包括磁盘分区、系统安装、网络与防火墙配置、[RPM软件包管理](https://zh.wikipedia.org/wiki/RPM "wikilink")、在线更新、用户管理等诸多功能。

YaST还包括一些其他的重要功能分支。

#### AutoYaST

[AutoYaST](https://web.archive.org/web/20110716171105/http://www.suse.com/~ug/)
是 YaST2 的一部分，用于自动安装。安装配置将存储在一个XML文件中，以配置没有交互下的自动安装。

#### WebYaST

[Webyast.png](https://zh.wikipedia.org/wiki/File:Webyast.png "fig:Webyast.png")
 是 YaST 的网页界面版本。它可以配置所运行的 openSUSE 系统的设置和更新。它也可以关闭并检查系统主机的状态。\[7\]

### ZYpp 包管理

ZYpp（或libzypp）是一个Linux软件管理引擎，它具有强大的依赖解析器和便捷的包管理API。

### 开放构建服务（Open Build Service）

[开放构建服务为软件开发人员提供了用于编译](https://zh.wikipedia.org/wiki/Open_Build_Service "wikilink")、发布软件的工具，它已被用于许多发行版系统，包括Mandriva、Ubuntu、Fedora、Debian和[Archlinux等](https://zh.wikipedia.org/wiki/Archlinux "wikilink")。
它通常能够有效简化打包过程，因此开发人员可以更轻松地为许多发行版以及许多 openSUSE
发行版打包单个程序，使得无论用户使用何种分发版本都可以安装并使用。它是在[GNU
GPLv2+协议下发布的](../Page/GNU通用公共许可证.md "wikilink")。\[8\]

### 增量 RPM

默认情况下，OpenSUSE在更新安装时使用 （增量 RPM）。 Delta RPM
包含软件包的旧版本和新版本之间的区别。这意味着只需要下载已安装软件包和新软件包之间的更改。这减少了带宽消耗和更新时间，对慢速
Internet 连接尤为重要。

### 桌面创新

#### Xgl 与 Compiz

2006年1月2日，SUSE开发人员David Reveman 发布了一种X服务器体系结构
Xgl，旨在通过OpenGL驱动程序利用现代显卡，并通过 glitz 在
OpenGL 上进行分层。 Compiz 是X Window系统的首批合成窗口管理器之一，它也发布了可以利用这种OpenGL加速功能的版本。

#### KDE 桌面特性

SUSE多年来一直是KDE项目的主要贡献者。 SUSE在这方面的贡献非常广泛，影响着KDE的许多部分，如 kdelibs 和
KDEBase，Kontact 和 kdenetwork。
其他值得注意的项目包括：KNetworkManager——NetworkManager的前端\[9\]和Kickoff——KDE
Plasma Desktop的新 K 菜单\[10\]。

#### GNOME 桌面特性

当 Ximian 集团成为 Novell 的一部分后，它通过F-Spot，Evolution和Banshee等应用程序继续为 GNOME
做出了一些贡献。 从openSUSE 10.2到openSUSE 11.4，它的GNOME桌面使用 *slab*
而不是经典的双面 GNOME 菜单栏。在openSUSE 12.1中，*slab*被上游的GNOME
Shell和GNOME Fallback设计所取代。12.2版本中，最新的[GNOME
Shell支持被包含在内](../Page/GNOME_Shell.md "wikilink")，并且支持在沒有3D硬體的老筆電、虛擬機上開啟3D效果\[11\]。

### 其他特色

  - [systemd提供了更快](https://zh.wikipedia.org/wiki/systemd "wikilink")、功能更强大的系统启动方式\[12\]，12.2中引入了快速引导\[13\]。
  - [GRUB2作为默认的启动管理器](https://zh.wikipedia.org/wiki/GRUB2 "wikilink")\[14\]。
  - [Plymouth提供了動人的開機動畫](../Page/Plymouth.md "wikilink")\[15\]。
  - [Snapper配合](https://zh.wikipedia.org/wiki/Snapper "wikilink")[btrfs提供了系统软件的快照和回退机制](https://zh.wikipedia.org/wiki/btrfs "wikilink")\[16\]。
  - [Xen](../Page/Xen.md "wikilink")、[VirtualBox](../Page/VirtualBox.md "wikilink")、[KVM及](../Page/基于内核的虚拟机.md "wikilink")[QEMU](../Page/QEMU.md "wikilink")：虛擬化軟體。并且可以直接运行于[Amazon
    EC2云主机](../Page/Amazon_EC2.md "wikilink")。
  - 在Linux发行版中率先提供对[Google
    Go](https://zh.wikipedia.org/wiki/Google_Go "wikilink")、[LLVM](../Page/LLVM.md "wikilink")
    v3和[Clang](../Page/Clang.md "wikilink") v3的支持\[17\]。
  - [KMS支持](../Page/显示模式设定.md "wikilink")，可以保证安装过程中识别显卡，并安装相应驱动\[18\]。
  - [Btrfs文件系統的生產級支持](../Page/Btrfs.md "wikilink")，最新的Btrfs文件系統加入了改進的錯誤處理和恢復工具\[19\]。
  - [Fcitx](../Page/Fcitx.md "wikilink")、[IBus](../Page/IBus.md "wikilink")、[gcin](https://zh.wikipedia.org/wiki/gcin "wikilink")、[SCIM輸入法全面支援](../Page/SCIM.md "wikilink")。\[20\]
  - [LibreOffice提供自由辦公的體驗](https://zh.wikipedia.org/wiki/LibreOffice "wikilink")，同時又有新功能及改進。\[21\]
  - 一系列重量級科學工具。如[GNU
    Octave](../Page/GNU_Octave.md "wikilink")、[Maxima](../Page/Maxima.md "wikilink")、[Stellarium](../Page/Stellarium.md "wikilink")\[22\]等。

## 版本历史

[OpenSUSE_10.2_-_screenshot_1.png](https://zh.wikipedia.org/wiki/File:OpenSUSE_10.2_-_screenshot_1.png "fig:OpenSUSE_10.2_-_screenshot_1.png")openSUSE
项目一般每8个月发布一个新版本。自11.2版以来，为两个版本提供的关键更新额外延长了两个月，从而导致了18个月的支持期。\[23\]\[24\]

从版本12.1开始，为了增加可预测性并防止人们认为.0版本更为重要，openSUSE版本方案进行了修改。所有11月份发布的版本都为.1，所有七月份发布的版本都为.2，所有三月份发布的版本都为.3。每隔两年，当另一个.1版本发布时，主要版本号就会出现。[OpenSUSE_10.3_-_Screenlets.png](https://zh.wikipedia.org/wiki/File:OpenSUSE_10.3_-_Screenlets.png "fig:OpenSUSE_10.3_-_Screenlets.png")从版本Leap
42.1（在版本13.2之后）开始，每个主要版本预计至少可支持36个月，直到下一个主要版本（例如43.1）与SUSE Linux
Enterprise版本一致为止。每个次要版本（例如42.1,42.2等）预计将每年发布一次，与SUSE Linux Enterprise
服务包（Service
Pack）一致。用户被要求在它可用周期的6个月内升级到最新的小版本，从而产生类似的支持18个月的生命周期。\[25\]\[26\][OpenSUSE_11.3_GNOME.png](https://zh.wikipedia.org/wiki/File:OpenSUSE_11.3_GNOME.png "fig:OpenSUSE_11.3_GNOME.png")**Evergreen**\[27\]（常青）版本是一个社区提供支持的延长维护版本，能够在选定的
openSUSE
版本达到官方周期后延长其支持周期。[OpenSuse_12.1_con_entorno_KDE.png](https://zh.wikipedia.org/wiki/File:OpenSuse_12.1_con_entorno_KDE.png "fig:OpenSuse_12.1_con_entorno_KDE.png")
[OpenSUSE_12.3_s_KDE_4.10.jpg](https://zh.wikipedia.org/wiki/File:OpenSUSE_12.3_s_KDE_4.10.jpg "fig:OpenSUSE_12.3_s_KDE_4.10.jpg")
[OpenSUSE_13.1_Desktop.png](https://zh.wikipedia.org/wiki/File:OpenSUSE_13.1_Desktop.png "fig:OpenSUSE_13.1_Desktop.png")
[OpenSUSE_Leap_42.3_Desktop.png](https://zh.wikipedia.org/wiki/File:OpenSUSE_Leap_42.3_Desktop.png "fig:OpenSUSE_Leap_42.3_Desktop.png")

## 最低系統需求\[28\]

  - **CPU：** AMD 64 位或 Intel 64 位处理器。
  - **内存：** 1GB物理内存（建议2GB）。
  - **硬盘空间：** 普通安装需要 10 GB 空间（最好 20 GB 以上）。
  - **声卡与显卡：** 没有特殊要求，绝大多数都支持。
  - DVD光碟機：從[DVD安裝時必須具備的](https://zh.wikipedia.org/wiki/DVD "wikilink")。

## 參見

  - [Linux发行版列表](../Page/Linux发行版列表.md "wikilink")

  - [SUSE Linux](https://zh.wikipedia.org/wiki/SUSE_Linux "wikilink")

  -
  -
## 參考資料

## 外部連結

  -
  - [openSUSE 英文wiki](https://en.opensuse.org/)

  - [openSUSE 中文wiki](https://zh.opensuse.org/)

  - [openSUSE 中文论坛](https://forum.suse.org.cn/)

[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink")
[Category:Novell軟件](https://zh.wikipedia.org/wiki/Category:Novell軟件 "wikilink")
[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.  \[//old-en.opensuse.org/Projects/KNetworkManager KNetworkManager\] -
    old openSUSE Community Wiki

10. \[//old-en.opensuse.org/Kickoff Kickoff\] - old openSUSE Community
    Wiki

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