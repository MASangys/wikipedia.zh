**TrueOS**（舊名**PC-BSD**或**PCBSD**）是一套基於[FreeBSD-CURRENT](../Page/FreeBSD.md "wikilink")、桌面取向的[類Unix](https://zh.wikipedia.org/wiki/類Unix "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")\[1\]。主要目的是建立一個易於安裝軟體的[图形用户界面](../Page/图形用户界面.md "wikilink")，藉由提供[KDE
SC](../Page/KDE_Software_Compilation_4.md "wikilink")、[Lumina](https://zh.wikipedia.org/wiki/Lumina "wikilink")、[MATE](../Page/MATE.md "wikilink")、[Xfce等](../Page/Xfce.md "wikilink")[桌面環境使其容易上手](https://zh.wikipedia.org/wiki/桌面環境 "wikilink")\[2\]。TrueOS还为[nVidia和](https://zh.wikipedia.org/wiki/nVidia "wikilink")[Intel硬件提供二进制驱动程序](https://zh.wikipedia.org/wiki/Intel "wikilink")。同时可通过[KWin提供](../Page/KWin.md "wikilink")3D桌面，也可通过[Wine来运行微软Windows的软件](../Page/Wine.md "wikilink")。TrueOS可以运行Linux软件\[3\]。除了使用FreeBSD的ports，TrueOS有自己独立的[软件包管理系统](../Page/软件包管理系统.md "wikilink")，可以让用户以图形的方式安装[可执行文件](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。就像在Windows系統上一样，双击某个下载到的可执行文件进行安装，只是这个可执行文件只能用于BSD系统。

TrueOS支持[ZFS文件系统](../Page/ZFS.md "wikilink")。安装程序可对硬盘进行加密，这样系统在[启动时就需要输入密码](https://zh.wikipedia.org/wiki/启动程序 "wikilink")。

2016年9月，开发团队宣布PC-BSD更名为“TrueOS”\[4\]。

## 歷史版本

[PC-BSD_logo.png](https://zh.wikipedia.org/wiki/File:PC-BSD_logo.png "fig:PC-BSD_logo.png")

| TrueOS版本 | 发布日期       | 對應的FreeBSD版本         |
| -------- | ---------- | -------------------- |
| TrueOS   | 2016.09.01 | FreeBSD-CURRENT\[5\] |
|          |            |                      |

| PC-BSD版本 | 发布日期       | 對應的FreeBSD版本 |
| -------- | ---------- | ------------ |
| 1.0      | 2006.04.29 | 6.0 |- ---   |

从第七版开始，PC-BSD开始使用与[FreeBSD相同的版本号](../Page/FreeBSD.md "wikilink")。在9.0之前，由于PC-BSD经过了特殊定制以及txz包管理系统的问题，PC-BSD只能使用[KDE系列软件](../Page/KDE_Software_Compilation_4.md "wikilink")。不过在技术上，手动安装[Xfce或](../Page/Xfce.md "wikilink")[GNOME桌面环境也是可行的](../Page/GNOME.md "wikilink")，使用这些桌面环境并没有丢失一些主要功能\[6\]。从
9.0开始，PC-BSD支持GNOME2、[Xfce](../Page/Xfce.md "wikilink")、[LXDE](../Page/LXDE.md "wikilink")。最新的PC-BSD
10.0RC2开始支持Gnome 3、Mate（替换了Gnome2）和Cinnamon。\[7\]。

从9.2开始，PC-BSD只支持[x86-64架构](https://zh.wikipedia.org/wiki/x86-64 "wikilink")\[8\]。

## 特性

  - 目前最新的PC-BSD 1.5.1 Available 基于 FreeBSD
    8.0-RELEASE-P2核心，并且具有完善的桌面运用，使用 KDE
    SC。
  - 图形化的安装程式，使得使用者可以在短时间内完成系统安装。
  - 支持多国语言。
  - 具有与 FreeBSD相等的稳定性和速度。
  - 使用自创的[包管理系统](https://zh.wikipedia.org/wiki/包管理系统 "wikilink")，使得安装软体的难度大大降低，但同时亦兼容标准的
    FreeBSD
    [ports](https://zh.wikipedia.org/wiki/ports "wikilink")／packages系统。
  - 图形化的系统管理和支持工具。
  - 完善的社群支持。
  - txz安装套件不用依赖其他[相依性套件便可安装](https://zh.wikipedia.org/wiki/相依性套件 "wikilink")。
  - 非常简单且细少的安装（只有一只安装光碟），不会占用过多系统空间。
  - [在线升级系统](https://zh.wikipedia.org/wiki/在线升级 "wikilink") -
    可手动或自动地下载及安装更新至阁下的操作系统，而不用自行安装套件。

## 歷史

PC-BSD
8.2的軟體安裝系統與其他的類Unix作業系統有所不同。它除了使用原來的FreeBSD的ports系統，亦使用自己本身的*.pbi*
檔案格式。*.pbi* 如微軟視窗的*.exe*般，只需雙擊便可有精靈指導安裝。\[9\]

所有的軟體套件及依赖程式庫均會安裝至它們自身*/Programs*裡的資料夾，這便能減少不必要的混淆。PC-BSD安裝管理員同時亦會產生連結至KDE桌面開始功能表上。

## Lumina

PC-BSD專案正在從頭開始開發一個新的[桌面环境](../Page/桌面环境.md "wikilink")，稱為Lumina。Lumina基於[Qt](../Page/Qt.md "wikilink")，目前正積極的進行開發，雖然它已經被包含在PC-BSD的套件庫中，但尚不足以日常使用。它的目標是成為一個功能完備、輕量、穩定且開放原始碼，甚至可以取代PC-BSD基礎安裝中KDE的桌面環境。Lumina的主要開發者是Ken
Moore\[10\]。

## 授權

最初，因為PC-BSD使用KDE桌面環境，而開發者以Qt為開發工具就必須使用[GPL或](https://zh.wikipedia.org/wiki/GPL "wikilink")[QPL授權](https://zh.wikipedia.org/wiki/QPL "wikilink")，所以使用了GPL授權。但這並不正確，而且因為GPL授權與[BSD許可證有衝突](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")，所以現在PC-BSD已改為使用一個BSD相容的授權。

## 硬體需求

參考PC-BSD的网站，PC-BSD 10.0的硬體需求為\[11\]：

### 最低

  - [x86-64處理器](https://zh.wikipedia.org/wiki/x86-64 "wikilink")
  - 1GB的[RAM](../Page/随机存取存储器.md "wikilink")
  - 網路卡

### 建議

  - x86-64處理器
  - 4GB的RAM
  - 在[主要分割區上有](../Page/硬盘分区.md "wikilink")50GB的剩餘[硬碟](../Page/儲存裝置.md "wikilink")（用作[桌面](../Page/个人电脑.md "wikilink")）或是20GB（用作[服务器](../Page/服务器.md "wikilink")）
  - 網路卡
  - 音效卡
  - [NVIDIA的](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")3D加速[圖形處理器](../Page/圖形處理器.md "wikilink")（也支援其他品牌）

要遊玩新的遊戲，建議使用更快的[CPU和](https://zh.wikipedia.org/wiki/CPU "wikilink")[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")，如果要收集大量的音樂及影片，建議使用更大的硬碟。

## 参考资料

## 參看條目

  - [DesktopBSD](../Page/DesktopBSD.md "wikilink")

  - [FreeBSD](../Page/FreeBSD.md "wikilink")

  -
## 外部連結

  - [TrueOS 官方網站](http://www.trueos.org)
  - [PC-BSD 官方網站](http://www.pcbsd.org)
  - [txz的資料夾（TrueOS
    的軟體庫）](http://pkg.cdn.trueos.org/10.0-RELEASE/amd64/All)
  - [txz的資料夾（PC-BSD
    的軟體庫）](http://pkg.cdn.pcbsd.org/10.0-RELEASE/amd64/All)
  - [PC-BSD 9.1
    使用手冊](https://web.archive.org/web/20160306062759/http://ftp.pcbsd.org/pub/handbook/9.1/handbook_zh_cn_ver9.1.html)
  - [TrueOS在distrowatch.com的介紹頁](http://distrowatch.com/table.php?distribution=trueos)
  - [PC-BSD 0.7.5
    預覽報告](http://agnani.blogspot.com/2005/06/pc-bsd-075-review.html)
  - [安裝及設定PC-BSD -
    中文版](https://archive.is/20130418222916/http://www.george.idv.tw/index.php/FreeBSD/PcBSD)

各地區網站：

  - [PC-BSD
    巴西](https://web.archive.org/web/20060224015840/http://www.pcbsd.com.br/)
  - [PC-BSD 法國](http://www.pcbsd.net)
  - [PC-BSD 德國](http://www.pcbsd.de.vu)
  - [PC-BSD 匈牙利](http://pcbsd.mosfet.hu)

[Category:BSD](https://zh.wikipedia.org/wiki/Category:BSD "wikilink")
[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink")

1.   TrueOS|last=Smith|first=Josh|date=1 September
    2016|work=|publisher=TrueOS® Project and
    iXsystems|via=www.trueos.org|accessdate=2016-11-20}}
2.
3.  [Linux Binary
    Compatibility](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/linuxemu.html)
4.
5.
6.
7.
8.
9.  [pbiDIR](https://web.archive.org/web/20130327233344/http://www.pbidir.com/)
    PBI的資料夾（PC-BSD 的軟體庫）
10.
11.