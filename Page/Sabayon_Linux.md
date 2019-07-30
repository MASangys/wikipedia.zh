**Sabayon Linux**（旧名RR4 Linux、RR64 Linux）是一个由Fabio Erculiani和**Sabayon**开发团队制作的基于[Gentoo的](https://zh.wikipedia.org/wiki/Gentoo "wikilink")[Linux发行版](../Page/Linux发行版.md "wikilink")。Sabayon遵循“开箱即用”哲学，目的是提供给用户大量即时可用的程序和自由配置的[操作系统](../Page/操作系统.md "wikilink")。

Sabayon擁有[Entropy](http://wiki.sabayon.org/index.php?title=Entropy#About_Entropy)及[Portage](../Page/Portage.md "wikilink")兩個軟體包管理，而能夠同時獲得源碼包的自訂性及二進位包的快速是其特色。軟體更新方式和Gentoo相同採用[滾動更新](https://zh.wikipedia.org/wiki/滾動更新 "wikilink")。

Sabayon的名字来自一种名为“”的鸡蛋制成的[意大利](../Page/意大利.md "wikilink")[甜食](https://zh.wikipedia.org/wiki/甜食 "wikilink")。\[1\]Sabayon的徽标抽象自鸡爪的图案。

## 核心

Sabayon的设计目的是给[计算机用户提供一个易于使用的工作空间](https://zh.wikipedia.org/wiki/计算机 "wikilink")，不仅有迷人的界面外观、良好的硬件检测和众多默认安装的最新软件包，还有来自软件仓库的更多软件。Sabayon提供[x86和](https://zh.wikipedia.org/wiki/x86 "wikilink")[AMD64两种架构的发行版](https://zh.wikipedia.org/wiki/AMD64 "wikilink")。

### 版本

Sabayon从4.1版本以来，提供[GNOME](../Page/GNOME.md "wikilink")和[KDE](../Page/KDE.md "wikilink")两种[桌面环境](../Page/桌面环境.md "wikilink")的发行套件，同时也包括非常轻量的[Fluxbox](../Page/Fluxbox.md "wikilink")环境。（更早的版本三种桌面环境都被包含在一个[DVD大小的ISO镜像中](https://zh.wikipedia.org/wiki/DVD "wikilink")。另外曾经有一个CoreCD版本，不包含[X](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")。）

凭借开发一种[CD](../Page/CD.md "wikilink")/DVD镜像创建工具“Molecule”，Sabayon成为了第一个每天都更新镜像的Linux发行版。\[2\]这些镜像面向Sabayon测试者，而每周会向公众发布稳定版本。官方正式版本实质上只是在每日更新版本的基础上进行了较深入的测试。

目前Sabayon提供以下版本：

| 名称                                                        | 桌面环境/[窗口管理器](https://zh.wikipedia.org/wiki/窗口管理器 "wikilink") | 提供版本        | 备注                       |
| --------------------------------------------------------- | ------------------------------------------------------------ | ----------- | ------------------------ |
| G                                                         | [GNOME](../Page/GNOME.md "wikilink")                         | 每日更新版本、稳定版本 | 完整的桌面环境和应用软件             |
| K                                                         | [KDE](../Page/KDE.md "wikilink")                             | 每日更新版本、稳定版本 | 完整的桌面环境和应用软件             |
| XFCE Spin                                                 | [Xfce](../Page/Xfce.md "wikilink")                           | 每日更新版本、稳定版本 | 包含较多的软件和硬件驱动，适用于中等配置的计算机 |
| LXDE Spin                                                 | [LXDE](../Page/LXDE.md "wikilink")                           | 每日更新版本、稳定版本 | 轻量，适用于低端配置的计算机           |
| SpinBase                                                  | 无                                                            | 每日更新版本、稳定版本 | 最小化的环境，适合多种用途，也是其他版本的基础  |
| SpinBase/[OpenVZ](../Page/OpenVZ.md "wikilink") Templates | 无                                                            | 每日更新版本、稳定版本 | 包含OpenVZ                 |
| CoreCDX                                                   | [Fluxbox](../Page/Fluxbox.md "wikilink")                     | 每日更新版本、稳定版本 | 可以使用简单的图形界面              |
| CoreCD                                                    | 无                                                            | 停止开发        |                          |

### 配置

Sabayon的核心组件和Gentoo完全相同，因此所有的Gentoo配置工具都可以在Sabayon中使用。Sabayon也包括额外的自动配置工具，用来配置各种各样的系统组件，如[OpenGL](../Page/OpenGL.md "wikilink")。Sabayon为[nVidia和](https://zh.wikipedia.org/wiki/nVidia "wikilink")[ATI的显卡提供专有驱动](https://zh.wikipedia.org/wiki/ATI "wikilink")\[3\]，检测到相应的硬件就会自动启用。窗口混成管理器[Compiz](../Page/Compiz.md "wikilink")和Kwin分别用于GNOME和KDE版本。其他硬件，比如[网卡](../Page/网卡.md "wikilink")和[摄像头](../Page/摄像头.md "wikilink")也会进行相应的自动配置。大部分[打印机](../Page/打印机.md "wikilink")能够被自动检测出来，但需要通过[CUPS](../Page/CUPS.md "wikilink")进行手动配置。

### 软件包管理

Sabayon使用两种软件包管理工具，[Portage](../Page/Portage.md "wikilink")继承自Gentoo，[Entropy](http://wiki.sabayon.org/index.php?title=Entropy#About_Entropy)则是专为Sabayon开发。Portage下载源代码，并针对目标系统进行编译，而Entropy管理下载自服务器的二进制文件。来自Gentoo“unstable”分支的源码包，经过预先编译，Entropy下载这些预编译的包，进行进一步的编译（称为Gentoo ebuild），完成对软件包的安装。这意味着Sabayon系统和Gentoo系统是完全兼容的。两种软件包管理器的采用，使得专业用户可以获得与Gentoo系统一样的灵活性，又可以使其他用户轻松快捷地管理应用软件和更新。

### 应用软件

Sabayon版本众多，不同的选择预装的软件并不相同。由于不同版本的设计目标不同，软件数量也会有较大的差别，但所有的软件都在共同的软件仓库中，因此任何版本的用户都可以获得自己想要的软件。[Windows程序默认在](https://zh.wikipedia.org/wiki/Windows "wikilink")[Wine](../Page/Wine.md "wikilink")中运行。Sabayon还包括数量众多的游戏，如[Doom 3](https://zh.wikipedia.org/wiki/Doom_3 "wikilink"), Wolfenstein: Enemy Territory， [Nexuiz](../Page/Nexuiz.md "wikilink")， [雷神之锤系列](../Page/雷神之锤系列.md "wikilink"), [Sauerbraten](../Page/Sauerbraten.md "wikilink")， [The Battle for Wesnoth](../Page/韦诺之战.md "wikilink")， [Unreal](https://zh.wikipedia.org/wiki/Unreal "wikilink")， [Unreal Tournament](https://zh.wikipedia.org/wiki/Unreal_Tournament "wikilink")，[Warsow](../Page/Warsow.md "wikilink")和[Warzone 2100等](https://zh.wikipedia.org/wiki/Warzone_2100 "wikilink")。

## 安装

Sabayon为用户提供的是LiveDVD镜像，用户可以从光盘运行Sabayon，也可以将它安装到计算机硬盘中。安装使用[Anaconda](../Page/Anaconda.md "wikilink")，以前也曾使用Gentoo的安装工具，现在的工具使用较为简单，适合一般用户。安装速度跟[光驱的读取速度有关](https://zh.wikipedia.org/wiki/光驱 "wikilink")，通常需要30分钟左右。没有光驱的计算机可以使用[UNetbootin](../Page/UNetbootin.md "wikilink")等工具，将镜像烧录到[USB](../Page/USB.md "wikilink")存储进行安装。

### 版本历史

| 版本                            | 发布日期        | 说明                                                |
| ----------------------------- | ----------- | ------------------------------------------------- |
| 3.0RC1b miniEdition           | 2006年7月1日   |                                                   |
| 3.0RC2                        | 2006年8月16日  | 名称由RR4改为Sabayon                                   |
| miniEdition 3.0 RC2           | 2006年8月24日  |                                                   |
| 3.0                           | 2006年9月14日  |                                                   |
| miniEdition 3.0               | 2006年9月26日  |                                                   |
| miniEdition 3.05              | 2006年10月4日  |                                                   |
| 3.1                           | 2006年10月10日 |                                                   |
| miniEdition 3.1               | 2006年10月9日  |                                                   |
| 3.2                           | 2006年11月27日 |                                                   |
| 3.2 miniEdition               | 2006年12月11日 |                                                   |
| 3.25                          | 2007年1月2日   |                                                   |
| 3.26                          | 2007年1月8日   |                                                   |
| 3.3                           | 2007年3月16日  |                                                   |
| 3.3 miniEdition               | 2007年3月25日  |                                                   |
| 3.4 Loop 1                    | 2007年4月13日  |                                                   |
| 3.4 Loop 2                    | 2007年5月18日  |                                                   |
| 3.4 Loop 3                    | 2007年6月26日  |                                                   |
| 1.0 "Business Edition" RE     | 2007年7月15日  |                                                   |
| 3.4                           | 2007年7月24日  |                                                   |
| 3.4 Revision E                | 2007年8月6日   |                                                   |
| 3.4 miniEdition               | 2007年9月23日  |                                                   |
| 3.4 Revision F                | 2007年9月7日   |                                                   |
| 1.1 Professional Edition      | 2007年10月23日 |                                                   |
| 3.5 Loop 1                    | 2007年12月24日 | 首度引入Entropy                                       |
| 3.5 Loop 2                    | 2008年3月18日  |                                                   |
| 3.5 Loop 3                    | 2008年5月15日  |                                                   |
| 3.5                           | 2008年7月1日   | 首个包含Entropy的稳定版本                                  |
| Pod 3.5                       | 2008年7月11日  |                                                   |
| 3.5.1                         | 2008年11月9日  |                                                   |
| 4 Revision 1                  | 2008年12月25日 |                                                   |
| 4 LiteMCE                     | 2009年1月4日   |                                                   |
| 4.1 GNOME                     | 2009年4月13日  | 独立出KDE和GNOME版本。ISO容量由4.7GB缩小到1.5-2GB。             |
| 4.1 KDE                       | 2009年4月29日  |                                                   |
| 4.2 GNOME                     | 2009年6月30日  |                                                   |
| 4.2 KDE                       | 2009年7月6日   |                                                   |
| CoreCD 4.2                    | 2009年7月25日  |                                                   |
| 5.0 GNOME/KDE                 | 2009年10月2日  |                                                   |
| 5.1 GNOME/KDE                 | 2009年12月12日 |                                                   |
| CoreCD 5.1                    | 2009年12月20日 |                                                   |
| 5.1 x86 GAMING EDITION        | 2009年12月25日 | 圣诞节特别版本，仅包括游戏软件                                   |
| 5.2 GNOME/KDE                 | 2010年3月26日  |                                                   |
| 5.3 GNOME/KDE                 | 2010年6月5日   |                                                   |
| 5.3 SpinBase                  | 2010年6月18日  | 取代CoreCD                                          |
| 5.3 CoreCDX                   | 2010年6月18日  | 包含X和Fluxbox                                       |
| 5.3 LXDE/XFCE                 | 2010年7月19日  | 首个包含LXDE/XFCE的稳定版本                                |
| 5.3 SpinBase/OpenVZ Templates | 2010年7月19日  | 首个可以使用[OpenVZ](../Page/OpenVZ.md "wikilink")的稳定版本 |
| 5.4 GNOME/KDE                 | 2010年9月30日  |                                                   |
| 5.5 GNOME/KDE                 | 2011年1月27日  |                                                   |
| 6 GNOME/KDE                   | 2011年6月23日  |                                                   |
| 7 GNOME/KDE                   | 2011年10月10日 |                                                   |
| 8 GNOME/KDE                   | 2012年2月8日   |                                                   |
| 9 GNOME/KDE                   | 2012年6月9日   |                                                   |

## 参考

  - [Gentoo](https://zh.wikipedia.org/wiki/Gentoo "wikilink")

## 注释

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink") [Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink") [Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:Gentoo_Linux](https://zh.wikipedia.org/wiki/Category:Gentoo_Linux "wikilink")

1.  [Information about Sabayon Linux — Sabayon Linux Wiki](http://wiki.sabayon.org/index.php?title=En:Sabayon_Linux)
2.
3.  <http://distrowatch.com/table.php?distribution=sabayon>