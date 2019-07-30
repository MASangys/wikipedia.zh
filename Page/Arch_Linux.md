**Arch Linux**（或 **Arch** )\[1\]）是一款基于 [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink") 架构的 [Linux发行版](../Page/Linux发行版.md "wikilink") \[2\]。系统主要由[自由和](../Page/自由软件.md "wikilink")[开源软件](../Page/开源软件.md "wikilink")\[3\]组成，支持社区参与。系统设计以 [KISS原则](../Page/KISS原则.md "wikilink")（保持简单和愚蠢）为总体指导原则，注重代码正确、优雅和极简主义，期待用户能够愿意去理解系统的操作\[4\]。Arch Linux 系统安装、删除和更新软件的[软件包管理器叫做](https://zh.wikipedia.org/wiki/软件包管理器 "wikilink") [pacman](https://zh.wikipedia.org/wiki/pacman "wikilink")。

Arch Linux 采用[滾動發行](../Page/滾動發行.md "wikilink")模式来获取系统更新和软件的最新版本。系统安装映像只简单地包含系统主要元件。\[5\]

Arch Linux 以社区 [Wiki](../Page/Wiki.md "wikilink") 的形式提供文档，称为 ArchWiki\[6\]\[7\]\[8\]。该 Wiki 经常编有特定主题的最新信息，受到了 Linux 社区的广泛认可，内容也应用在 Arch Linux 以外的领域。\[9\]

## 历史

  - 由[加拿大](../Page/加拿大.md "wikilink")程式設計師兼吉他手 Judd Vinet 从 2001 年早期开始开发 Arch Linux，并在 2002 年 3月 11 日正式发行 0.1 版。
  - 2007 下半年，Judd Vinet 退出了 Arch Linux 的开发而交给 [Aaron Griffin](https://zh.wikipedia.org/wiki/Aaron_Griffin "wikilink") 接手。\[10\]
  - 2012 年 7 月发行的 Arch Linux 安装 [ISO 映像开始放弃安装框架转为使用不同的辅助脚本](https://zh.wikipedia.org/wiki/ISO_映像 "wikilink")。\[11\] 并逐步开始将初始化系统迁移至 [Systemd](../Page/Systemd.md "wikilink") 。
  - 2017 年 1 月，宣布将逐步放弃 [i686](https://zh.wikipedia.org/wiki/P6_微架構 "wikilink") 架构的支持，2017 年 2 月发布的安装介质中将不再包含 [i686](https://zh.wikipedia.org/wiki/P6_微架構 "wikilink") 环境。\[12\]

## 设计及原则

Arch Linux 是由二进制[軟體包組成的](https://zh.wikipedia.org/wiki/軟體包 "wikilink")，這些軟體包會针对 [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink") 优化以配合目前的硬體。類似 [Ports](../Page/Ports.md "wikilink")/[ebuild](https://zh.wikipedia.org/wiki/ebuild "wikilink") 也在 Arch Linux 上發展，也就是「Arch Build System」。

Arch Linux 项目注力于简洁主义（对开发者而言），其贡献在于对发行版的组件提供具有良好注释的配置文件，而非带有图形界面的配置工具。\[13\] 这也为其赢得适合“不惧怕命令行的中高级Linux用户”的发行版称号。\[14\]

### Arch Linux 哲學 （也被称作“Arch 之道”）\[15\]

  - 简洁：避免任何不必要的添加、修改和复杂增加。
  - 现代：尽全力保持软件处于最新的稳定版本，采用滚动升级策略，安装之后可以持续升级。
  - 实用：开发者依赖基于事实的技术分析和讨论，避免政治因素，不会被流行观点左右。仓库中既提供了开源、自由的软件，也提供了闭源软件。实用性大于意识形态。
  - 以用户为中心：Arch Linux 适用于乐于自己动手的用户，他们愿意花时间阅读文档，解决自己的问题。也鼓励每一个用户 参与 和贡献，报告和帮助修复 [bugs](https://bugs.archlinux.org/)，提供软件包补丁和参加核心 [项目](https://projects.archlinux.org/)，活跃的贡献者也有机会成为开发人员。

## 优势

[Archlinux-gnome.png](https://zh.wikipedia.org/wiki/File:Archlinux-gnome.png "fig:Archlinux-gnome.png") Arch Linux是针对特定处理器而优化过的，能够更好地利用[CPU周期以提高性能](https://zh.wikipedia.org/wiki/CPU "wikilink")。相比[Debian](../Page/Debian.md "wikilink")/[Ubuntu](../Page/Ubuntu.md "wikilink")、[SUSE](../Page/SUSE.md "wikilink")、[RedHat](https://zh.wikipedia.org/wiki/RedHat "wikilink")/[Fedora](../Page/Fedora.md "wikilink")等其他发行版，Arch Linux属于轻量级选手，其简单的设计让它容易被轻松扩展和配置成为任何想要的系统类型。

### 特有的-{zh-hans:包; zh-hant:套件}-管理系统

通过二进制-{zh-hans:包; zh-hant:套件}-管理系统[pacman](https://zh.wikipedia.org/wiki/pacman "wikilink")，仅需一个-{zh-hans:命令; zh-hant:指令}-就能完成安装、升级等多个操作。同时也附带一个类似[ports的](https://zh.wikipedia.org/wiki/ports "wikilink")-{zh-hans:包; zh-hant:套件}-构建系统ABS（Arch Build System）。

### 滾動更新

與[Gentoo類似](https://zh.wikipedia.org/wiki/Gentoo "wikilink")，不同於其他大部分主流Linux發行版比如[Fedora](../Page/Fedora.md "wikilink")和[Ubuntu](../Page/Ubuntu.md "wikilink")。Arch Linux並沒有跨版本升級的概念，通過更新，任何時期的Arch Linux都可以[滾動更新到最新版本](https://zh.wikipedia.org/wiki/滾動更新 "wikilink")。

## 缺点

  - 安装过程简陋，缺乏智能直观的错误处理，需要用户有一定的Linux环境常识才能正确安装使用。
  - 包管理系统pacman在升级过程缺乏对系统核心组件的回溯保护，如升级的Kernel有问题，即导致系统无法启动。
  - 系统软件缺乏严谨的测试管理机制，稳定性、可靠性不如[Redhat](https://zh.wikipedia.org/wiki/Redhat "wikilink")、[CentOS](../Page/CentOS.md "wikilink")、[Debian](../Page/Debian.md "wikilink")等发行版\[16\]，难以在企业用户中推广。

## \-{zh-hans:包; zh-hant:套件}-管理系统

### Pacman

[pacman](https://zh.wikipedia.org/wiki/pacman "wikilink") 是 Arch Linux 的软件包管理器，具有依赖处理和构建软件包的功能。

### 軟件倉庫

现时存在以下官方仓库：\[17\]

  - *core，*包含启动系统所必需的、链接互联网时可能需要的、编译软件包时需要的、检查、修复文件系统的工具、在安装过程中可能用到的软件包和它们的依赖。
  - *extra*，提供基本系统不需要的软件包，包括桌面环境和其他程式。
  - *community*，提供由社區構建和投票的軟體包，包括因有足够投票而被“Trusted User”所收养的。
  - *multilib*，为x86_64用户提供的支援在64位元环境下使用32位元软件的集中化仓库。

此外，也存在*testing*仓库，包含还未进入其他仓库的候选包。现时存在以下测试仓库：

  - *testing*，包含为*core*和*extra*准备的软件包。
  - *community-testing*，包含为*community*准备的软件包。
  - *multilib-testing*，包含为*multilib*准备的软件包。

尚处于开发阶段的GNOME和KDE有时会被放在以下专门的测试仓库中：

  - *gnome-unstable*，包含不稳定版GNOME的软件包。
  - *kde-unstable*，包含不稳定版KDE的软件包。

*staging、multilib-staging*和*community-staging*被用来进行一些软件包的重新构建，以避免损坏*testing*中的软件包。

*unstable*仓库已在2008年7月撤销，其中的大部分软件包也已移动至其他仓库。\[18\] 在官方仓库以外还存在一些非官方的用户仓库，其中最知名的是托管在Arch Linux站点上的[Arch User Repository](https://zh.wikipedia.org/wiki/#AUR "wikilink")（AUR）。此外也有不少用户独立建立的非官方仓库。\[19\]

### ABS

ABS (Arch Build System)，Arch 構建系統。它是一套像（BSD）Ports 一樣的體系，能從 source（源代碼） 來構建一個軟件。Pacman 是 Arch 下特定的二進制安裝包管理工具（也包括管理那些從 ABS 構建的二進制安裝包），而 ABS 則是 Arch 下特定的編譯工具，將源代碼編譯為一個可供安裝的 .pkg.tar.xz 包。

2017年5月15日，Arch Linux宣布放弃支持ABS，并推荐用户切换到 [ASP](https://github.com/falconindy/asp) \[20\]。

### AUR

Arch Linux社区用户软件仓库（Arch Linux User-community Repository, AUR）是一个面对广大Arch用户、以社区为主导的软件仓库。AUR的初衷是组织社区内分享PKGBUILD，并且促使热门的用户贡献软件包进入community软件库。

AUR被称为Arch的新软件包的发源地，在AUR里用户贡献出他们自己的软件包。AUR社区对它们进行投票或反对，一旦某个软件包拥有足够多的票数，AUR的受信用户就会将它加入到\[community\]软件库，使得可以通过pacman和ABS来使用它们。

## 衍生發行

官方的Arch安裝程序是基於[CLI命令行界面](https://zh.wikipedia.org/wiki/CLI "wikilink"),對於那些需要[GUI圖形界面安裝環境的用戶](https://zh.wikipedia.org/wiki/GUI "wikilink")，可以選擇這些Live CD:

  - [ArchBang](../Page/ArchBang.md "wikilink") - 一个默认使用[OpenBox桌面环境的发行版](../Page/Openbox.md "wikilink")。
  - [Manjaro Linux](../Page/Manjaro_Linux.md "wikilink") - 一个默认使用[XFCE桌面环境的发行版](../Page/Xfce.md "wikilink")。
  - [Chakra GNU/Linux](https://zh.wikipedia.org/wiki/Chakra_GNU/Linux "wikilink") - Chakra 项目发布的半滚动发行版。
  - [Antergos](../Page/Antergos.md "wikilink") - 一个提供包括GNOME 3（默认）、Cinnamon、Razor-qt、Base、KDE和Xfce多种桌面环境安装的发行版（安装时可选）。
  - [Parabola GNU/Linux-libre](https://zh.wikipedia.org/wiki/Parabola_GNU/Linux-libre "wikilink") - 基于 Arch Linux 的一个完全自由的 GNU/Linux 发行版，被收录在[自由软件基金会的完全自由发行版列表](https://www.gnu.org/distros/free-distros.en.html)中。

其他流行的衍生發行版包括Arch Linux ARM等。\[21\]

## 歷史版本

Arch Linux 的首个版本发行于 2002 年，但是发行周期较不规律 \[22\]，从 2012 年 7 月开始安装介质改为每月发行一次。现有的 Arch Linux 用户可以通过网络升级 Arch Linux 安装。

| 发行日期       | 版本                   | 内核版本      |
| ---------- | -------------------- | --------- |
| 2019-07-01 | 2019.07.01           | 5.1.15    |
| 2019-06-01 | 2019.06.01           | 5.1.5     |
| 2019-05-02 | 2019.05.02           | 5.0.10    |
| 2019-05-01 | 2019.05.01           | 5.0.10    |
| 2019-04-01 | 2019.04.01           | 5.0.5     |
| 2019-03-01 | 2019.03.01           | 4.20.13   |
| 2019-02-01 | 2019.02.01           | 4.20.6    |
| 2019-01-01 | 2019.01.01           | 4.20.0    |
| 2018-12-01 | 2018.12.01           | 4.19.4    |
| 2018-11-01 | 2018.11.01           | 4.18.16   |
| 2018-10-01 | 2018.10.01           | 4.18.9    |
| 2018-09-01 | 2018.09.01           | 4.18.5    |
| 2018-08-01 | 2018.08.01           | 4.17.11   |
| 2018-07-01 | 2018.07.01           | 4.17.3    |
| 2018-06-01 | 2018.06.01           | 4.16.12   |
| 2018-05-01 | 2018.05.01           | 4.16.5    |
| 2018-04-01 | 2018.04.01           | 4.15.14   |
| 2018-03-01 | 2018.03.01           | 4.15.6    |
| 2018-02-01 | 2018.02.01           | 4.14.15   |
| 2018-01-01 | 2018.01.01           | 4.14.9    |
| 2017-12-01 | 2017.12.01           | 4.13.12   |
| 2017-11-01 | 2017.11.01           | 4.13.9    |
| 2017-10-01 | 2017.10.01           | 4.13.3    |
| 2017-09-01 | 2017.09.01           | 4.12.8    |
| 2017-08-01 | 2017.08.01           | 4.12.3    |
| 2017-07-01 | 2017.07.01           | 4.11.7    |
| 2017-06-01 | 2017.06.01           | 4.11.3    |
| 2017-05-01 | 2017.05.01           | 4.10.13   |
| 2017-04-01 | 2017.04.01           | 4.10.6    |
| 2017-03-01 | 2017.03.01           | 4.9.11    |
| 2017-02-01 | 2017.02.01           | 4.9.6     |
| 2017-01-01 | 2017.01.01           | 4.8.13    |
| 2016-12-01 | 2016.12.01           | 4.8.11    |
| 2016-11-01 | 2016.11.01           | 4.8.6     |
| 2016-10-01 | 2016.10.01           | 4.7.5     |
| 2016-09-03 | 2016.09.03           | 4.7.2     |
| 2016-08-01 | 2016.08.01           | 4.6.4     |
| 2016-07-01 | 2016.07.01           | 4.6.3     |
| 2016-06-01 | 2016.06.01           | 4.5.4     |
| 2016-05-01 | 2016.05.01           | 4.5.1     |
| 2016-04-01 | 2016.04.01           | 4.4.5     |
| 2016-03-01 | 2016.03.01           | 4.4.1     |
| 2016-02-01 | 2016.02.01           | 4.3.3     |
| 2016-01-01 | 2016.01.01           | 4.3.3     |
| 2015-12-01 | 2015.12.01           | 4.2.5     |
| 2015-11-01 | 2015.11.01           | 4.2.5     |
| 2015-10-02 | 2015.10.01           | 4.2.2     |
| 2015-09-01 | 2015.09.01           | 4.1.6     |
| 2015-08-01 | 2015.08.01           | 4.1.3     |
| 2015-07-01 | 2015.07.01           | 4.0.7     |
| 2015-06-01 | 2015.06.01           | 4.0.4     |
| 2015-05-01 | 2015.05.01           | 4.0.1     |
| 2015-04-01 | 2015.04.01           | 3.19.2    |
| 2015-03-01 | 2015.03.01           | 3.18.6    |
| 2015-02-01 | 2015.02.01           | 3.18.4    |
| 2015-01-01 | 2015.01.01           | 3.17.6    |
| 2014-12-01 | 2014.12.01           | 3.17.4    |
| 2014-11-01 | 2014.11.01           | 3.17.1    |
| 2014-10-01 | 2014.10.01           | 3.16.3    |
| 2014-09-03 | 2014.09.03           | 3.16.1    |
| 2014-08-01 | 2014.08.01           | 3.15.7    |
| 2014-07-03 | 2014.07.03           | 3.15.3    |
| 2014-06-01 | 2014.06.01           | 3.14.4    |
| 2014-05-01 | 2014.05.01           | 3.14.1    |
| 2014-04-01 | 2014.04.01           | 3.13.7    |
| 2014-03-01 | 2014.03.01           | 3.13.5    |
| 2014-02-01 | 2014.02.01           | 3.12.9    |
| 2014-01-05 | 2014.01.05           | 3.12.6    |
| 2013-12-01 | 2013.12.01           | 3.12.1    |
| 2013-11-01 | 2013.11.01           | 3.11.6    |
| 2013-10-01 | 2013.10.01           | 3.11.2    |
| 2013-09-01 | 2013.09.01           | 3.10.10   |
| 2013-08-01 | 2013.08.01           | 3.10.3    |
| 2013-07-01 | 2013.07.01           | 3.9.8     |
| 2013-06-01 | 2013.06.01           | 3.9.4     |
| 2013-05-01 | 2013.05.01           | 3.8.10    |
| 2013-04-02 | 2013.04.01           | 3.8.4     |
| 2013-03-01 | 2013.03.01           | 3.7.9     |
| 2013-02-01 | 2013.02.01           | 3.7.5     |
| 2013-01-04 | 2013.01.04           | 3.6.11    |
| 2012-12-01 | 2012.12.01           | 3.6.8     |
| 2012-11-01 | 2012.11.01           | 3.6.4     |
| 2012-10-06 | 2012.10.06           | 3.5.5     |
| 2012-09-07 | 2012.09.07           | 3.5.3     |
| 2012-08-04 | 2012.08.04           | 3.4.7     |
| 2012-07-15 | 2012.07.15           | 3.4.4     |
| 2011-08-19 | 2011.08.19           | 3.0.3     |
| 2010-05-16 | 2010.05              | 2.6.33.4  |
| 2009-08-17 | 2009.08              | 2.6.30.4  |
| 2009-02-16 | 2009.02              | 2.6.28    |
| 2008-06-24 | 2008.06              | 2.6.25.6  |
| 2007-10-07 | 2007.08-2            | 2.6.22.9  |
| 2007-09-10 | 2007.08.1            | 2.6.22.6  |
| 2007-08-05 | 2007.08              | 2.6.22.1  |
| 2007-05-28 | 2007.05-Linuxtag2007 | 2.6.21.3  |
| 2007-05-17 | 2007.05              | 2.6.21.1  |
| 2007-03-28 | 0.8                  | 2.6.20.4  |
| 2006-05-18 | 0.7.2                | 2.6.16.16 |
| 2006-01-05 | 0.7.1                | 2.6.15    |
| 2005-01-24 | 0.7                  | 2.6.10    |
| 2004-03-01 | 0.6                  | 2.6.3     |
| 2003-07-21 | 0.5                  | 2.4.21    |
| 2002-12-18 | 0.4                  | 2.4.20    |
| 2002-08-07 | 0.3                  | 2.4.19    |
| 2002-04-17 | 0.2                  | 2.4.18    |
| 2002-03-12 | 0.1                  | 2.4.18    |

## 参看

  - [Linux](../Page/Linux.md "wikilink")
  - [Arch之道（来自Arch Linux官方Wiki）](https://wiki.archlinux.org/index.php/The_Arch_Way_\(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87\))
  - [Chakra](https://zh.wikipedia.org/wiki/Chakra_GNU/Linux "wikilink")
  - [Manjaro Linux](../Page/Manjaro_Linux.md "wikilink")
  - [Antergos](../Page/Antergos.md "wikilink")

## 注释

## 外部链接

  - [Arch Linux主页](https://www.archlinux.org)
  - [Arch Linux论坛](https://bbs.archlinux.org)
  - [Arch Linux Wiki](https://wiki.archlinux.org/)

<!-- end list -->

  - 社群

<!-- end list -->

  - [Arch Linux 臺灣社群](http://archlinux.tw/)

  - [Arch Linux 中文社区](https://www.archlinuxcn.org/)

[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink")

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