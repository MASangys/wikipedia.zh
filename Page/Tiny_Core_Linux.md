**Tiny Core
Linux**是一个基于[Linux](../Page/Linux.md "wikilink")3.x版本[内核](../Page/内核.md "wikilink")，采用[BusyBox](../Page/BusyBox.md "wikilink")、[Tiny
X](../Page/Tiny_X.md "wikilink")、[FLTK](../Page/FLTK.md "wikilink")
和其它小型软件构筑的带[图形用户界面的微型](../Page/图形用户界面.md "wikilink")[Linux](../Page/Linux.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")。由于体积很小，大约10MB，故采用整体装载入[RAM的方式运行](../Page/隨機存取記憶體.md "wikilink")，速度很快。由于精简程度很高，故在默认状态下，其桌面环境和硬件支持并不完全，不过，用户有充分的定制自由，通过加装软件、驱动模块扩展其应用。采用纯[命令行用户界面的官方分支叫](../Page/命令行用户界面.md "wikilink")**Micro
Core**。

## 種類

**“Tiny Core”** （15 MB）為默認版本，推薦擁有網路連接的新用戶使用。它包含基本的“Core”系統和動態
[FLTK](../Page/FLTK.md "wikilink")/FLWM 圖形用戶介面。

**“Core”**（11 MB），也稱爲**“Micro Core Linux”**，是**“Tiny
Core”**的小型變種，無圖形介面，但擁有額外擴展，能夠創建一個帶有圖形介面的系統。

**“dCore”**（12 MB）由基於[Debian或](../Page/Debian.md "wikilink")
[Ubuntu的相容檔案構建而成](../Page/Ubuntu.md "wikilink")，使用輸入和SCE封裝格式（一種自Tiny
Core 5.0版本後使用的獨立的包格式）。

**“CorePure64”**是**“Core”**用於x86_64架構的版本。

**“Core Plus”**（106 MB) 是一個安裝映像，包含擁有附加功能（如無線支持及非美式鍵盤支持）的**“Tiny Core”**。

**“piCore”** 是“Core”的樹莓派移植版。

## 设计理念

Tiny Core
Linux是一个超小型的便携式Linux操作系统，可从[CDROM](../Page/CDROM.md "wikilink")、[U盘或](../Page/U盘.md "wikilink")[硬盘中启动](../Page/硬盘.md "wikilink")，全部或主要部件运行于RAM中。用户加装的软件有三种模式：

  - **云模式**：启动Tiny Core
    Linux并连接到互联网后，用户可以通过称为**appbrowser**的软件包管理器从在线软件源下载需要的软件。下载的软件仅存于当前会话中，并只待在RAM中。
  - **TCE/Install模式**：下载软件并安装在[外部存储器上](../Page/外部存储器.md "wikilink")，在RAM里创建相关的符号链接。
  - **TCE/CopyFS模式**：像多数典型的Linux操作系统一样，将软件安装于标准Linux目录下。

## 系统需求

  - **最低配置**：Tiny
    Core运行需要至少46 MB内存（RAM），Core需要至少28 MB的内存。CPU最低要求是一个[i486DX](../Page/Intel_80486.md "wikilink")。\[1\]
  - **推荐配置**：[奔腾II](../Page/奔腾II.md "wikilink") CPU，64 MB内存（对于Tiny
    Core）。

## 版本历史

| 版本号         | 稳定性  | 发布日期        |
| ----------- | ---- | ----------- |
| 1.0\[2\]    | 稳定版本 | 2009年1月5日   |
| 2.0\[3\]    | 稳定版本 | 2009年6月7日   |
| 3.0\[4\]    | 稳定版本 | 2010年7月19日  |
| 4.0\[5\]    | 稳定版本 | 2011年9月25日  |
| 4.7.7\[6\]  | 稳定版本 | 2013年5月10日  |
| 5.0\[7\]    | 稳定版本 | 2013年9月14日  |
| 5.0.1\[8\]  | 稳定版本 | 2013年10月1日  |
| 5.0.2\[9\]  | 稳定版本 | 2013年10月18日 |
| 5.1\[10\]   | 稳定版本 | 2013年11月28日 |
| 5.2\[11\]   | 稳定版本 | 2014年1月14日  |
| 5.3\[12\]   | 稳定版本 | 2014年4月19日  |
| 5.4\[13\]   | 稳定版本 | 2014年9月10日  |
| 6.0\[14\]   | 稳定版本 | 2015年1月5日   |
| 6.1\[15\]   | 稳定版本 | 2015年3月7日   |
| 6.2\[16\]   | 稳定版本 | 2015年5月3日   |
| 6.3\[17\]   | 稳定版本 | 2015年5月30日  |
| 6.4\[18\]   | 稳定版本 | 2015年9月8日   |
| 6.4.1\[19\] | 稳定版本 | 2015年11月4日  |
| 7.0\[20\]   | 稳定版本 | 2016年2月23日  |
| 7.1\[21\]   | 稳定版本 | 2016年5月22日  |
| 7.2\[22\]   | 稳定版本 | 2016年7月4日   |
| 8.0\[23\]   | 稳定版本 | 2017年4月10日  |

## 参考资料

  - [Tiny Core Linux官方网站](http://distro.ibiblio.org/tinycorelinux/)

## 引用

## 外部链接

  -
  -
  -
  -
  -
[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink")
[Category:轻量级类Unix系统](https://zh.wikipedia.org/wiki/Category:轻量级类Unix系统 "wikilink")
[Category:迷你Linux发行版](https://zh.wikipedia.org/wiki/Category:迷你Linux发行版 "wikilink")
[Category:可从只读媒体启动的操作系统发行版](https://zh.wikipedia.org/wiki/Category:可从只读媒体启动的操作系统发行版 "wikilink")

1.

2.  [Final
    Releases](http://forum.tinycorelinux.net/index.php/board,31.0.html)
    – Release Announcements and Change log from Tiny Core Linux Forum

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