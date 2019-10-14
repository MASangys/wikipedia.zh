**Snappy**是一个[软件部署和](https://zh.wikipedia.org/wiki/软件部署 "wikilink")[软件包管理系统](../Page/软件包管理系统.md "wikilink")，最早由[Canonical公司为了](https://zh.wikipedia.org/wiki/Canonical公司 "wikilink")[Ubuntu](../Page/Ubuntu.md "wikilink")移动电话[操作系统](../Page/操作系统.md "wikilink")而设计和构建。其包称为“snap”，工具名为“snapd”，可在多种[Linux发行版](../Page/Linux发行版.md "wikilink")上运行，完成发行[上游主导的软件部署](https://zh.wikipedia.org/wiki/上游_\(軟體開發\) "wikilink")。该系统的设计面向手机、云、[物联网](../Page/物联网.md "wikilink")和[桌上型電腦](../Page/桌上型電腦.md "wikilink")。

## 功能

“snap”应用程序包本身是一种[自给自足的软件](../Page/綠色軟體.md "wikilink")，且可以在众多[Linux发行版](../Page/Linux发行版.md "wikilink")上正常运行。这不同于传统的Linux包管理方法（如[APT和](https://zh.wikipedia.org/wiki/高级包装工具 "wikilink")[RPM](../Page/RPM套件管理員.md "wikilink")），透過傳統方式进行应用程序的更新需要针对各Linux发行版对软件包特别定制，从而使软件开发和最终用户的软件部署之间产生了延迟。\[1\]\[2\]

snap包本身不依赖任何外部[软件商店](https://zh.wikipedia.org/wiki/App_Store "wikilink")，可以从任何来源取得，并因此可以用于[上游软件部署](https://zh.wikipedia.org/wiki/上游_\(軟體開發\) "wikilink")。当Snappy和snap包部署于Ubuntu或其他一些Linux系统时，Ubuntu的软件商店是缺省的用于获取Sanp包的后端，但这并非强制的，用户可以使用其他软件商店。

开发者可以利用snap创建命令行工具、后台服务以及桌面应用程序。\[3\]使用snap的情况下，可以通过[原子操作或](https://zh.wikipedia.org/wiki/原子操作 "wikilink")[差分編碼完成升级](https://zh.wikipedia.org/wiki/差分編碼 "wikilink")。\[4\]\[5\]\[6\]\[7\]

2016年6月起，snapd成为Ubuntu以外多种[Linux发行版](../Page/Linux发行版.md "wikilink")的的一部分。而在此之前snapd主要应用于完全基于snap的[Ubuntu Core操作系统](https://zh.wikipedia.org/wiki/Ubuntu_Core "wikilink")。

### Snapcraft

Snapcraft是供开发人员将其程序打包为snap格式供Snappy使用的工具。\[8\]

### snap格式

snap格式是一种可以由主机操作系统动态挂载的压缩的文件系统，其中还附有元数据声明，snap系统可以据其为应用程序设置适当的安全沙箱或容器。该文件格式的扩展名为.snap。

## 应用和反响

Snappy包系统已被部署在众多物联网环境，从面向消费者的产品\[9\]到企业设备管理网关都有其身影。\[10\]Snappy也被默认包含在Ubuntu 16.04桌面映像中。

截屏软件的开发者停止了对Snappy的支持，而继续使用[Flatpak](../Page/Flatpak.md "wikilink")和[AppImage](../Page/AppImage.md "wikilink")。他们给出了以下理由：snap目前主要应用于Ubuntu，而像ArchLinux这样的系统的官方版本已经不包含snap；对开发者来说snap比Flatpak和AppImage更耗时；用户需要手动安装Snap平台；[Ubuntu 软件中心上的用户数据并不能与](https://zh.wikipedia.org/wiki/Ubuntu_软件中心 "wikilink")[AppStream](../Page/AppStream.md "wikilink")的数据互通。\[11\]\[12\]

## 参见

  -
  - [AppImage](../Page/AppImage.md "wikilink")

  - [Autopackage](../Page/Autopackage.md "wikilink")

  - [Flatpak](../Page/Flatpak.md "wikilink")

  - ，另一个类似的项目

  - 使用目录（）作为应用程序包。

## 参考资料

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:用Go編程的自由軟件](https://zh.wikipedia.org/wiki/Category:用Go編程的自由軟件 "wikilink") [Category:Linux软件包管理相关软件](https://zh.wikipedia.org/wiki/Category:Linux软件包管理相关软件 "wikilink") [Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink") [Category:软件包管理系统](https://zh.wikipedia.org/wiki/Category:软件包管理系统 "wikilink") [Category:软件分发](https://zh.wikipedia.org/wiki/Category:软件分发 "wikilink") [Category:Ubuntu](https://zh.wikipedia.org/wiki/Category:Ubuntu "wikilink")

1.  [Upgrading packaged Ubuntu application unreasonably involves upgrading entire OS Bug \#578045](https://bugs.launchpad.net/ubuntu/+bug/578045) on bugs.launchpad.net/ubuntu by John King (2010-05-10)
2.  [Linus Torvalds on the problems of distro packaging](https://www.youtube.com/watch?v=5PmHRSeA2c8&feature=youtu.be&t=581) \[//en.wikipedia.org/wiki/Linus_Torvalds Linus Torvalds\] on \[//en.wikipedia.org/wiki/DebConf DebConf\] 2014
3.
4.
5.
6.  <http://www.ubuntu.com/cloud/snappy>
7.  <http://www.zdnet.com/article/ubuntu-snap-takes-charge-of-linux-desktop-and-iot-software-distribution/>
8.
9.
10.
11.
12.