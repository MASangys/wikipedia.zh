**Gentoo Linux**（）是一種[Linux](../Page/Linux.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")，基于[Portage](../Page/Portage.md "wikilink")包管理系统，而擁有幾乎無限制的適應性特性，被官方稱作元发行版（meta-distribution）\[1\]，支持多達10種以上的[電腦系統結構平台](https://zh.wikipedia.org/wiki/電腦系統結構 "wikilink")。此项目和它的产品以[巴布亚企鵝命名](https://zh.wikipedia.org/wiki/巴布亚企鵝 "wikilink")。Gentoo包管理系统的设计是模块化、可移植、易维护、灵活以及针对用户机器优化的。软件包从源代码构建，这延续了ports的传统。但是为了方便，也提供一些大型软件包在多种架构的预编译二进制文件，用户亦可自建或使用第三方二进制包镜像来直接安装二进制包。

## 历史

## 描述

Gentoo Linux意味着选择，允许用户自由的选择是Gentoo最大的特色。前首席设计师[Daniel Robbins提到](https://zh.wikipedia.org/wiki/Daniel_Robbins "wikilink")，“设计的基本出发点让我们和其他用户随意使用，没有限制。”

如同其他有影响力的发行版本一样，Gentoo Linux提供了自己的有特色的软件管理工具——[Portage](../Page/Portage.md "wikilink")。[Portage](../Page/Portage.md "wikilink")受到[FreeBSD](../Page/FreeBSD.md "wikilink")的[Ports](../Page/Ports.md "wikilink")影响很大。

### 优点

与大多数[GNU/Linux发行版本不同](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")，Gentoo Linux为用户提供了大量的应用程序源代码。Gentoo Linux的每一部分都可以在最终用户的系统上重新编译建造，甚至包括最基本的系统库和编译器自身。 通过依赖关系描述和源代码镜像的形式提供软件，**Gentoo Linux**提供了大量软件供用户选择。 标准的源代码镜像包括162G(2012年8月14日,镜像中distfiles目录)的数据。 选择不仅在软件整体方面，也存在于软件的内部。由于可以在本地编译软件，参数和变量的选择可以由用户自己指定。

指定参数的优势不仅在于用户了解了设置，更多是增加了针对硬件进行性能提升的余地。 而且用户可以使用自己喜欢的补丁或插件对软件功能进行调整，比如当前的**Gentoo Linux**内核发布包括15种。

由于系统及应用软件的安装方法差异显著，**Gentoo Linux**社区对安装内容的探讨相当深入。即便不使用 **Gentoo Linux**的用户也可以通过了解参数选择明白软件内部的设定。应用软件的配置设定都记录在ebuild文件中，由ebuild、emerge命令管理。

### 局限

安裝Gentoo Linux對計算機系統的效能也有較高的要求，包括CPU和記憶體，不过随着计算机产业的快速发展，即使中低端PC和笔记本也能较为快速地完成编译。當然這不意味着Gentoo Linux不能使用在低配置設備上，只是用戶將會在安裝相同的环境時会付出更多時間，或者使用另一台主机上预编译好的软件包（BINHOST方式）。所以，对于低配置的用户，软件包的挑选尤为重要。

Gentoo Linux讓用戶自行設定和編譯軟件包的特性，使用戶的Gentoo Linux系統具有高度可塑性，但相比起其他常見的Linux發行版，Gentoo Linux的用戶也需要對Linux系統和電腦的運作有一定的認識，才能對其系統作出合適的設定。

## [软件包管理](https://zh.wikipedia.org/wiki/软件包 "wikilink")

gentoo的包管理工具称为portage。emerge是这个portage的字符界面管理工具，图形界面工具还有portato，porthole，kuroo，himerge等。

### ebuild

ebuild是Portage套件管理程式的根本。它是一個純文本檔案，而每一個ebuild都會對應一個套件（软件包）。ebuild會告訴portage要下載的檔案、該套件可執行的平台、如何編譯它、它所依賴的ebuild和一些修補代碼的patch。Portage內有一個ebuild大集合，稱為Portage tree，是gentoo網站所提供的ebuild。它包含了大部份常用的套件，並會不時更新。如果要使用的套件不在其內，也可以手動加入。

### USE标志

全局USE标志的设置位于Gentoo系统的/etc/portage/make.conf中，作用是使得[emerge在处理依赖关系的时候可以做到不安装不需要的软件包](https://zh.wikipedia.org/wiki/emerge "wikilink")（例如安装[Gnome的用户没有必要因为一个](https://zh.wikipedia.org/wiki/Gnome "wikilink")[软件包的依赖关系而安装](https://zh.wikipedia.org/wiki/软件包 "wikilink")[KDE](../Page/KDE.md "wikilink")与[Qt](../Page/Qt.md "wikilink")），而安装指定的软件包（同样以Gnome举例，Gnome的用户基本上都会安装[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")），把系统的设置专注化。

### 常用包管理命令

1.  同步portage：emerge --sync 或 emerge-webrsync
2.  升级所有的软件包：emerge -uDN world
3.  重编译所有的软件包：emerge -e world

## 版本

Gentoo Linux的首個版本發行於2002年，並每隔約半年發行新版本。由2008年9月22日起，Gentoo Linux改為採用[滾動更新](https://zh.wikipedia.org/wiki/滾動更新 "wikilink")。Gentoo Linux的更新頻密度可達到每週皆提供更新版。Gentoo Linux的現有用家可通過網絡把現用的版本更新到最新版。為便利新用家或現有用戶在電腦進行新的安裝，Gentoo Linux仍會每隔一至兩年不定期推出DVD版本，用家可下載後自行燒錄光碟進行安裝工作。需要注意的是，现行的Gentoo Linux minimal CD 不支持主流的UEFI启动模式，使用UEFI的用户可以SystemRescueCd或者Gentoo Live CD进行安装。

| 版本                             | 日期                                              |
| ------------------------------ | ----------------------------------------------- |
| 1.0                            | 2002年3月31日                                      |
| 1.1a                           | 2002年4月4日                                       |
| 1.2                            | 2002年6月5日                                       |
| 1.4                            | 2003年8月5日                                       |
| 2004.0                         | 2004年3月31日                                      |
| 2004.1                         | 2004年4月28日                                      |
| 2004.2                         | 2004年7月26日                                      |
| 2004.3                         | 2004年11月15日                                     |
| 2005.0                         | 2005年3月28日                                      |
| 2005.1                         | 2005年8月15日                                      |
| 2006.0                         | 2006年2月27日                                      |
| 2006.1                         | 2006年8月31日                                      |
| 2007.0                         | 2007年5月8日                                       |
| 2008.0                         | 2008年7月6日                                       |
| 建立Weekly Build机制，每年定期发布的新版本被取消 | 2008年9月22日                                      |
| 10.0                           | 2009年10月4日（Gentoo Linux 10周年特别纪念liveDVD）        |
| 10.1                           | 2009年10月10日（修复了bug的特别liveDVD）                   |
| 11.2                           | 2011年8月7日（为了庆祝开发者和使用者之间协作的LiveDVD）              |
| 12.0                           | 2012年1月2日                                       |
| 12.1                           | 2012年4月1日（包含一个“Install Wizard/图形化安装界面”的愚人节玩笑）   |
| 2012.12.21                     | 2012年12月21日（LiveDVD-End of World/世界末日版）         |
| 2014.08.26                     | 2014年8月26日 （LiveDVD-Iron Penguin Edition/鐵企鵝版 ） |

**Gentoo Linux**

## [IRC](../Page/IRC.md "wikilink")

简体中文：

  - [Freenode](../Page/Freenode.md "wikilink")上的\#gentoo-cn

正體中文：

  - [Freenode](../Page/Freenode.md "wikilink")上的\#gentoo-tw

其他channel可以參考[Gentoo Linux官方网站](http://www.gentoo.org)的[Gentoo Linux IRC Resources](http://www.gentoo.org/main/en/irc.xml)頁面。

## 参见

  - [Linux套件列表](https://zh.wikipedia.org/wiki/Linux套件列表 "wikilink")

## 外部链接

  - [網站域名更新資訊](http://www.gentoo.org.tw/)
  - [Gentoo Linux的官方网站](http://www.gentoo.org)
  - [Gentoo Taiwan討論區](https://web.archive.org/web/20090623080551/http://forums.gentoo.tw/)
  - [Gentoo使用手冊](https://archive.is/20130503025222/http://www.gentoo.org/doc/zh_tw/handbook/)
  - [Gentoo中文維基](https://web.archive.org/web/20090822194750/http://wiki.gentoo.tw/index.php/Main_Page)
  - [Gentoo中文邮件列表](http://groups.google.com/group/gentoo-china)

[Category:Gentoo_Linux](https://zh.wikipedia.org/wiki/Category:Gentoo_Linux "wikilink") [Category:2002年软件](https://zh.wikipedia.org/wiki/Category:2002年软件 "wikilink") [Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink")

1.