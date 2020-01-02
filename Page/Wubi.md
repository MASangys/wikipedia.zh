> 本文内容由[Wubi](https://zh.wikipedia.org/wiki/Wubi)转换而来。


**Wubi**（基于Windows的Ubuntu安装程序，）是使用[GPL协议进行发布的一个Ubuntu自由软件安装程序](https://zh.wikipedia.org/wiki/GPL "wikilink")，并得到了Ubuntu的官方支持\[1\]。

Wubi最初是作为一个独立的项目出现的，其中7.04和7.10都不是官方发布。但8.04起，Wubi的代码就合并到Ubuntu中。8.04的alpha 5版，在Ubuntu Live CD中就可以看到Wubi的身影\[2\]。同时，Ubuntu 7.10 Gutsy Gibbon发行版也开始包含了Wubi\[3\]\[4\]。

这个项目的目标是帮助不熟悉[Linux](../Page/Linux.md "wikilink")的Windows用户在试用Ubuntu时，无需对硬盘进行[格式化或重新](https://zh.wikipedia.org/wiki/格式化 "wikilink")[分区](https://zh.wikipedia.org/wiki/分区 "wikilink")。Wubi也可以在Windows里对Ubuntu进行[卸载](https://zh.wikipedia.org/wiki/卸载 "wikilink")。

Wubi并不是[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")，但它会在一个虚拟设备中创建一个独立的安装。Wubi本身也不是一个[Linux发行版](../Page/Linux发行版.md "wikilink")而只是[Ubuntu](../Page/Ubuntu.md "wikilink")的一个安装程序\[5\]。

Wubi会在Windows的启动菜单中添加一个项目来允许你运行Linux。Ubuntu安装在Windows文件系统的一个文件中（比如c:\\ubuntu\\disks\\root.disk），而不是单独的分区中。这个文件在Linux下被视为真实的硬盘\[6\]。

另外一个类似的项目使用Linux作为主系统，称为Lubi\[7\]。一个以[Mac OS以主系统的版本Mubi](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")，最终也会得到支持\[8\]。 Ubuntu 13.04停止支持Wubi。

## 桌面

用户可以在Wubi里选择桌面环境。但由于每个桌面环境都有一个应用程序包，一般建议用户直接安装Ubuntu（默认选项）然后再安装其它桌面环境。当用户[登录时](https://zh.wikipedia.org/wiki/登录 "wikilink")，可以重新选择需要使用的桌面环境\[9\]。

## 局限

  - 不支持休眠\[10\]。
  - 強制重启（关闭电源）时，Wubi的文件系统比普通的文件系统更脆弱\[11\]。

## 影响

Wubi依赖于其它开源项目：[Debian-Installer](https://zh.wikipedia.org/wiki/Debian-Installer "wikilink")、[Migration-Assistant](https://zh.wikipedia.org/wiki/Migration-Assistant "wikilink")、[Grub4Dos](../Page/Grub4Dos.md "wikilink")、[NTFS-3G](../Page/NTFS-3G.md "wikilink")、[NSIS及](https://zh.wikipedia.org/wiki/NSIS "wikilink")[Metalink](https://zh.wikipedia.org/wiki/Metalink "wikilink")。

## 开发

领导开发的程序员为Agostino Russo、Geza Kovacs、Oliver Mattos及Ecology2007\[12\]，主要在开发在[Launchpad上进行](../Page/Launchpad_\(網站\).md "wikilink")\[13\]并由Lupin通过最初的Ubuntu蓝图\[14\]及新的Wubi\[15\]、Lubi\[16\]、Lupin\[17\]及LVPM\[18\]项目页\[19\]领导。

最初认为Wubi的功能将整合到Ubuntu 7.10(代号"Gutsy Gibbon")中\[20\]\[21\]，但没有及时完成\[22\]。Gutsy的[Live CD包含了一个称为](../Page/Live_CD.md "wikilink")"wubi-cdboot.exe"的文件，但其作用只是方便从CD启动，并进行正常的Ubuntu安装\[23\]（这个过程通常需要进行分区）。7.10的一个Alpha版中，Wubi已经可以单独下载\[24\]。据说7.10最终没有包括Wubi的原因是在一个alpha版的安装过程中会出现bug，但用户表示在最新版本（rev386）中并没有这个bug。由于这个bug阻碍了7.10的开发，Wubi没有在7.10的beta版中出现，而此时8.04的工作已经开始了\[25\]\[26\]。 Wubi 8.04在测试时已经可以使用并整合到Ubuntu 8.04 Alpha 5\[27\]。

## 硬件支持

虽然安装程序可以在32位[i386和](https://zh.wikipedia.org/wiki/i386 "wikilink")64位[amd64的主操作系统下运行](https://zh.wikipedia.org/wiki/amd64 "wikilink")，目前只有i386（32位[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")）的Ubuntu发行版得到Wubi和Lubi的官方支持。最新的Alpha版增加了安装64位Ubuntu的功能。

## 历史

最初的想法由Agostino Russo从[Topologilinux及Instlux获得并提出](https://zh.wikipedia.org/wiki/Topologilinux "wikilink")，这两个项目都提供了简单的Windows前端程序。这两个想法被合并成使用Windows安装程序将Ubuntu安装到虚拟设备的主意\[28\]。 Geza Kovacs后来定义了整个规范\[29\]并提供了第一个原型并展示这个想法是可行的\[30\]。Oliver Mattos使用[NSIS编写了最初的用户界面](https://zh.wikipedia.org/wiki/NSIS "wikilink")。

Agostino Russo后来定义了虚拟设备安装的概念，从一个预先做好的简单的虚拟设备镜像文件变成动态变化的镜像并提供了与真实安装相接近的用户体验。Lupin项目也因此产生。Agostino Russo编写并实现了多数代码，并得到了Geza Kovacs的帮助。

后来，Agostino Russo和Ecology2007重新设计并编写了Windows前端程序，也就是人们今天所看到的。Hampus Wessman贡献了新的下载器和翻译脚本。Bean123和Tinybit也帮助进行调试和启动加载程序问题的修复。Lubi及LVPM最终由Geza Kovacs\[31\]创建。

## 类似项目

  - [andLinux](https://zh.wikipedia.org/wiki/andLinux "wikilink")：使用[coLinux在Windows下运行](https://zh.wikipedia.org/wiki/coLinux "wikilink")。
  - [Topologilinux](https://zh.wikipedia.org/wiki/Topologilinux "wikilink")：使用[coLinux在Windows下运行](https://zh.wikipedia.org/wiki/coLinux "wikilink")。
  - Instlux，包含在[openSUSE中](https://zh.wikipedia.org/wiki/openSUSE "wikilink")（10.3版起）\[32\]
  - [Win32-Loader](https://zh.wikipedia.org/wiki/Win32-Loader "wikilink")。
  - [UNetbootin](../Page/UNetbootin.md "wikilink")。

## 参见

  - [NSIS](https://zh.wikipedia.org/wiki/NSIS "wikilink")

## 参考文献

## 外部链接

  - [Wubi官方網站](http://wubi.sourceforge.net/)
  - [在Ubuntu官方Wiki中的WubiGuide](https://wiki.ubuntu.com/WubiGuide)
  - [Wubi官方論壇](http://ubuntuforums.org/forumdisplay.php?f=234)
  - [Lubi/LVPM/UNetbootin專案首頁](http://lubi.sourceforge.net/)。

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:Ubuntu](https://zh.wikipedia.org/wiki/Category:Ubuntu "wikilink")

1.
2.  [Wubi - FAQ](http://wubi.sourceforge.net/faq.php)
3.
4.
5.
6.  [Wubi - FAQ](http://wubi.sourceforge.net/faq.php)
7.  [Lubi, LVPM, UNetbootin, and Bubakup - Lubi](http://lubi.sourceforge.net/lubi.html)
8.
9.  [Wubi - FAQ](http://wubi.sourceforge.net/faq.php)
10. [Wubi - FAQ](http://wubi.sourceforge.net/faq.php)
11. [Wubi - FAQ](http://wubi.sourceforge.net/faq.php)
12.
13.
14.
15.
16.
17.
18.
19.
20. [CD boot installer for Windows contribution](https://lists.ubuntu.com/archives/ubuntu-devel-discuss/2007-September/001580.html)
21. [CD boot installer for Windows contribution](https://lists.ubuntu.com/archives/ubuntu-devel-discuss/2007-September/001601.html)
22. [WubiGuide - Ubuntu Wiki](https://wiki.ubuntu.com/WubiGuide)
23. [Ubuntu Forums - View Single Post - Announcement: Ubuntu Gutsy on Wubi (Alpha)\!\!\!](http://ubuntuforums.org/showpost.php?p=3572960&postcount=56)
24. [Index of /devel/minefield](http://wubi-installer.org/devel/minefield/)
25. [Ubuntu Forums - View Single Post - Where to get wubi 7.10?](http://ubuntuforums.org/showpost.php?p=3907948&postcount=5)
26. [Ubuntu Forums - View Single Post - Where to get wubi 7.10?](http://ubuntuforums.org/showpost.php?p=3908541&postcount=7)
27. [Get ready for Wubi 8.04\!](http://ubuntuforums.org/showthread.php?t=683787)
28.
29.
30.
31.
32. [Instlux - openSUSE](http://en.opensuse.org/Instlux)