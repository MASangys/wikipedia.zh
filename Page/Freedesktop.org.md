> 本文内容由[Freedesktop.org](https://zh.wikipedia.org/wiki/Freedesktop.org)转换而来。


**freedesktop.org**（**fd.o**）是一个致力于[Linux](../Page/Linux.md "wikilink")和其他[类Unix上的](https://zh.wikipedia.org/wiki/类Unix "wikilink")[X窗口系统的](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")[桌面环境](../Page/桌面环境.md "wikilink")之间的互操作性和基础技术共享的项目。由[红帽的](https://zh.wikipedia.org/wiki/红帽 "wikilink")[Havoc Pennington於](https://zh.wikipedia.org/wiki/Havoc_Pennington "wikilink")2000年3月创立。

该组织关注用户。目前X有很多开发框架，将来很可能也这样。而该组织力求这其中的不同不会为最终用户所察觉。

最流行的[开源X桌面](https://zh.wikipedia.org/wiki/开源 "wikilink")——[GNOME](../Page/GNOME.md "wikilink")、[KDE](../Page/KDE.md "wikilink")和[Xfce](../Page/Xfce.md "wikilink")都与该项目紧密合作。在2006年该项目发布了[Portland](https://zh.wikipedia.org/wiki/Portland_Project "wikilink") 1.0 (`xdg-utils`)，一个常用的桌面环境接口的集合。

freedesktop.org最初的名称叫**X Desktop Group**（X桌面工作组），其缩写"XDG"在他们的工作中仍然经常被用到。

## 目标

[Free_and_open-source-software_display_servers_and_UI_toolkits.svg](https://zh.wikipedia.org/wiki/File:Free_and_open-source-software_display_servers_and_UI_toolkits.svg "fig:Free_and_open-source-software_display_servers_and_UI_toolkits.svg") 该项目并非制订正式的标准，而是帮助在这个过程的更早阶段处理互操作性问题。

1.  搜集现有的与X桌面互操作性有关的标准、规范和文档，并集中提供；
2.  推动在众多X桌面中共享的新的标准和规范的开发；
3.  将桌面相关的标准集成到范围更广泛的标准中，如[LSB和](../Page/Linux标准规范.md "wikilink")[ICCCM](https://zh.wikipedia.org/wiki/ICCCM "wikilink")；
4.  致力于为特定X桌面实现这些标准；
5.  提供共享X桌面技术所需的中立的论坛；
6.  实现未来X桌面互操作和自由X桌面需要的一般性技术；
7.  向商业和志愿的应用软件开发者推荐X桌面和X桌面标准；
8.  与资源操作系统内核、X Window系统的开发者和自由OS的发行者等交流，共同致力于桌面相关目标；
9.  提供[CVS](../Page/協作版本系統.md "wikilink")、web主机、邮件列表和其他开发自由软件所需的资源以达成上述目标。

## 容纳的项目

fd.o为众多相关项目提供主机服务 [1](https://web.archive.org/web/20041010172245/http://wiki.freedesktop.org/Main/FreedesktopProjects) [2](http://freedesktop.org/Software/)，包括：

  - [X.Org Server](../Page/X.Org_Server.md "wikilink")： X11的正式参考实现。当前版本是[XFree86](../Page/XFree86.md "wikilink")改变license后的[fork](https://zh.wikipedia.org/wiki/fork "wikilink")。

  - [D-Bus](../Page/D-Bus.md "wikilink")：类似[KDE 3的](https://zh.wikipedia.org/wiki/KDE_3 "wikilink")和[GNOME](../Page/GNOME.md "wikilink") 版本1.2至2.2的的消息总线。

  - ： X的[拖放目前工作还不够一致](https://zh.wikipedia.org/wiki/拖放 "wikilink")。

  - [HAL](../Page/硬體抽象層.md "wikilink")（**H**ardware **A**bstraction **L**ayer，硬件抽象层）：跨[操作系统](../Page/操作系统.md "wikilink")一致性；它已经过时并被[udev取代](https://zh.wikipedia.org/wiki/udev "wikilink")。

  - [fontconfig](https://zh.wikipedia.org/wiki/fontconfig "wikilink")：字体发现和名称转换库，等等 [Fontconfig](https://web.archive.org/web/20050518022410/http://xserver.freedesktop.org/wiki/Software_2ffontconfig)。

  - ： 使用FreeType库时anti-alias字体，不限于老式X core字体。

  - [Cairo](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink")： 支持不同设备输出的矢量图形库。

  - （DRI）：使用[X Window系统时无需通过X服务器传递数据即可安全地允许用户使用视频硬件的界面](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")。

  - [GStreamer](../Page/GStreamer.md "wikilink")：跨平台的多媒体框架。

  - [Mesa 3D](../Page/Mesa_3D.md "wikilink")：[OpenGL](../Page/OpenGL.md "wikilink")的自由实现。

  - [XCB](../Page/XCB.md "wikilink")：一个[Xlib](../Page/Xlib.md "wikilink")的替代。

  - [GTK-QT engine](http://code.google.com/p/gtk-qt-engine/)：使用[Qt](../Page/Qt.md "wikilink")绘制窗口部件的GTK2引擎，使GTK2应用程序看起来好像是KDE的。

  - [Poppler](../Page/Poppler.md "wikilink")：一个PDF渲染库。

  - [Wayland](../Page/Wayland.md "wikilink")：一个轻量级的显示服务器，旨在为Linux桌面提供完美的用户GUI体验（不再存在撕裂、滞后、重绘和闪烁等现象）。

## 外部链接

  - [主页（wiki）](http://freedesktop.org/)
  - [Freedesktop.org概略](http://osnews.com/story.php?news_id=5215)（Rayiner Hashem & Eugenia Loli-Queru, OSNews, 2003年）

[Category:X_Window系统](https://zh.wikipedia.org/wiki/Category:X_Window系统 "wikilink") [Category:Freedesktop.org](https://zh.wikipedia.org/wiki/Category:Freedesktop.org "wikilink")