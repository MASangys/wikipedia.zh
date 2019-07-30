**Fedora Linux**（第七版以前為**Fedora Core**）是較具知名度的[Linux發行套件之一](https://zh.wikipedia.org/wiki/Linux發行套件 "wikilink")，由[Fedora專案](../Page/Fedora專案.md "wikilink")社群開發、[紅帽公司](../Page/紅帽公司.md "wikilink")贊助，目標是建立一套新穎、多功能並且自由（[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")）的作業系統。

Fedora基於[Red Hat Linux](../Page/Red_Hat_Linux.md "wikilink")。在Red Hat Linux終止發行後，紅帽公司計畫以Fedora來取代Red Hat Linux在個人領域的應用，而另外發行的[Red Hat Enterprise Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink")（Red Hat企業版Linux）則取代Red Hat Linux在商業應用的領域\[1\]。

Fedora對於使用者而言，是一套功能完備、更新快速的免費作業系統；而對贊助者Red Hat公司而言，它是許多新技術的測試平台，被認為可用的技術最終會加入到[Red Hat Enterprise Linux中](../Page/Red_Hat_Enterprise_Linux.md "wikilink")。\[2\]

Fedora大约每六個月發佈新版本\[3\]。

截至2016年2月，Fedora大约有120万用户\[4\]，这其中包括了[Linux内核](../Page/Linux内核.md "wikilink")的作者[林纳斯·托瓦兹](../Page/林纳斯·托瓦兹.md "wikilink")\[5\]\[6\]。

## 歷史

最早Fedora Linux社群的目標是為Red Hat Linux製作並發佈第三方的軟體套件\[7\]，然而當免費的Red Hat Linux停止發行後，Fedora社群便整合到Red Hat贊助的Fedora專案，目標是開發出由社群支援的作業系統（事實上，Fedora Project除了由志願者組織外，也有許多Red Hat的員工參與開發\[8\]）。Red Hat Enterprise Linux則取代Red Hat Linux成為官方支援的系統版本。

## 功能

### 发行

Fedora项目以不同方式发行Fedora\[9\]：

  - Fedora DVD/CD——包含了所有主要软件包的DVD或CD套装；
  - [Live镜像](https://zh.wikipedia.org/wiki/Live_USB "wikilink")——CD或DVD大小的光盘镜像，可用于创建[Live CD或从USB设备启动](../Page/Live_CD.md "wikilink")，并可选安装到硬盘；
  - 最小CD——用于通过[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")、[FTP或](https://zh.wikipedia.org/wiki/FTP "wikilink")[NFS安装](../Page/网络文件系统.md "wikilink")。\[10\]

您可以通过Fedora Live USB Creator\[11\]或UNetbootin创建[Live USB版本的Fedora](https://zh.wikipedia.org/wiki/Live_USB "wikilink")。

同时，Fedora项目发布自定义的Fedora版本，称作**Fedora spins**\[12\]。这些版本包含特定的软件包集合，以满足特定种类的用户之需要。Fedora spins由一些对Fedora有特殊兴趣的小组开发\[13\]。

Enterprise Linux额外软件包（，**EPEL**）是由来自Fedora Project的志愿者发起的社区力量，为了创建由高质量的附加软件组成的、用于补足RHEL和其他兼容版本的软件仓库\[14\]。

软件包管理主要由[yum实用程序提供](https://zh.wikipedia.org/wiki/Yellow_Dog_Updater_Modified "wikilink")\[15\]，在22版後則由[dnf取代](../Page/DNF_\(软件\).md "wikilink")\[16\]。Fedora同样提供图形界面（例如*pirut*，*pup*和*puplet*），用于在更新可用时提供视觉通知\[17\]。[apt-rpm是yum的替代品](https://zh.wikipedia.org/wiki/apt-rpm "wikilink")，对于[Debian](../Page/Debian.md "wikilink")类发行版的用户来说可能更熟悉。这里，[APT](../Page/APT.md "wikilink")被用于管理软件包\[18\]。额外的软件仓库可以被添加到Fedora，以便安装Fedora软件仓库未提供的软件包\[19\]。

### 软件仓库

在Fedora 7之前，有**Core**和**Extras**两个主要的仓库。Fedora Core仓库包含所有操作系统必需的基本软件包，以及其他随安装CD/DVD发行的、由Red Hat开发者维护的软件包。Fedora Extras仓库自Fedora Core 3开始加入，包含社区维护的、没有随安装CD/DVD发布的软件包。自Fedora 7开始，Core和Extras软件仓库被合并，因此该版本在其名称中去掉了*Core*。\[20\]该软件仓库同样允许社区成员维护的软件包，这在以前是Red Hat开发者才可进行的。

同样，在Fedora 7发布之前，有一个叫做**Fedora Legacy**的第三方软件仓库。该软件仓库主要包含社区维护的、针对较老的Fedora和选中的Red Hat发行版，用于延长这些版本的生命周期。\[21\] Fedora Legacy于2006年12月关闭。\[22\]

第三方软件仓库主要用于发布未包含在Fedora中的软件包——可能因为不满足Fedora对自由软件的定义，或该软件包的发行会触犯美国法律。主要的第三方软件仓库（并且是完全兼容的）有RPM Fusion和Livna。前者是由许多第三方软件仓库维护者共同维护的。后者目前仍然独立维护，作为对RPM Fusion的扩展，并且只包含libdvdcss包，用于播放加密的DVD。

### 安全功能

安全是Fedora中最重要的功能。其中一项是[SELinux](https://zh.wikipedia.org/wiki/SELinux "wikilink")——基于内核中的[Linux Security Modules](https://zh.wikipedia.org/wiki/Linux_Security_Modules "wikilink")（LSM）的、补充了各种安全策略的Linux功能，包括访问控制等。Fedora是引领SELinux的发行版之一\[23\]。SELinux包含于Fedora Core 2和以后的发行版。默认情况下，该功能强制修改系统的运作方式，因此处于关闭状态，但在SPARC上启用。

## 發佈

### 測試版

Fedora Project在發佈每一個穩定版本之前，會先發佈三次測試版本讓使用者測試並協助改進。Fedora 7由於要合併Core和Extra，引入了第四個測試版。\[24\]

Fedora另外還有個用來放置不穩定（Bleeding-Edge）軟體的套件庫稱為*Rawhide*\[25\]，開發中的軟體套件會先發佈在Rawhide，然後再轉移至Fedora套件庫。Rawhide更新相當頻繁，並不適合一般工作用途，但還是有些開發者和測試者用來作主要的工作系統。

### 当前版本

最新的Fedora版本为30，发布于2019年4月29日\[26\]。 Fedora 30的​主​要​特​性​如​下​：

1.  整合了​GNOME桌​面​最​新​版​本​ 3.32。

### 发布历史

Fedora版本命名规则：第n版与第n+1版有继承关系，但与第n+2版没有相同继承关系。\[27\]

| 颜色 | 意义            |
| -- | ------------- |
| 红  | 停止支持的版本\[28\] |
| 绿  | 仍被支持的版本       |
| 蓝  | 未来版本          |

| 名称          | 版本                | 开发代号              | 发布日期             | 内核版本                                            | Xorg   | GNOME                            | KDE                              |
| ----------- | ----------------- | ----------------- | ---------------- | ----------------------------------------------- | ------ | -------------------------------- | -------------------------------- |
| Fedora      | 30                | \-                | 2019年4月29日\[29\] | 5.0                                             | 1.20   | 3.32                             | Plasma 5.15 及 Applications 19.04 |
| 29          | \-                | 2018年10月30日\[30\] | 4.19             | 1.20                                            | 3.30   | Plasma 5.14 及 Applications 18.08 |                                  |
| 28          | \-                | 2018年5月1日\[31\]   | 4.16             | 1.19                                            | 3.28   | Plasma 5.12 及 Applications 18.04 |                                  |
| 27          | \-                | 2017年11月14日\[32\] | 4.13             | 1.19                                            | 3.26   | Plasma 5.11 及 Applications 17.08 |                                  |
| 26          | \-                | 2017年7月11日\[33\]  | 4.11             | 1.19                                            | 3.24   | Plasma 5.10 及 Applications 17.04 |                                  |
| 25          | \-                | 2016年11月22日\[34\] | 4.8              | 1.19                                            | 3.22   | Plasma 5.8 及 Applications 16.08  |                                  |
| 24          | \-                | 2016年6月21日\[35\]  | 4.5              | 1.18                                            | 3.20   | Plasma 5.5 及 Applications 16.04  |                                  |
| 23          | \-                | 2015年11月3日\[36\]  | 4.2              | 1.17                                            | 3.18   | Plasma 5.4 及 Applications 15.08  |                                  |
| 22          | \-                | 2015年5月26日\[37\]  | 4.0              | 1.17                                            | 3.16   | Plasma 5.3 及 Applications 15.04  |                                  |
| 21          | \-\[38\]          | 2014年12月9日\[39\]  | 3.16             | 1.16                                            | 3.14   | 4.14                             |                                  |
| 20          | Heisenbug         | 2013年12月17日       | 3.11             | 1.14                                            | 3.10   | 4.11                             |                                  |
| 19          | Schrödinger's Cat | 2013年7月2日         | 3.9              | 1.14                                            | 3.8    | 4.10                             |                                  |
| 18          | Spherical Cow     | 2013年1月15日        | 3.6              | 1.13                                            | 3.6    | 4.9                              |                                  |
| 17          | Beefy Miracle     | 2012年5月29日        | 3.3.4            | 1.12                                            | 3.4    | 4.8                              |                                  |
| 16          | Verne             | 2011年11月8日        | 3.1.0            | 1.11.1                                          | 3.2.1  | 4.7.3                            |                                  |
| 15          | Lovelock          | 2011年5月24日        | 2.6.38           | 1.10.1                                          | 3.0    | 4.6                              |                                  |
| 14          | Laughlin          | 2010年11月2日        | 2.6.35           | 1.9.1                                           | 2.32   | 4.5.2                            |                                  |
| 13          | Goddard           | 2010年5月25日        | 2.6.33           | 1.8.0                                           | 2.30   | 4.4.2                            |                                  |
| 12          | Constantine       | 2009年11月17日       | 2.6.31           | 1.7.1                                           | 2.28.0 | 4.3.2                            |                                  |
| 11          | Leonidas          | 2009年6月9日         | 2.6.29.4         | 1.6                                             | 2.26.1 | 4.2.2                            |                                  |
| 10          | Cambridge         | 2008年11月25日       | 2.6.27           | 1.5.2                                           | 2.24.1 | 4.1.2                            |                                  |
| 9           | Sulphur           | 2008年5月13日        | 2.6.25           | 1.4.99                                          | 2.22.1 | 4.0.3                            |                                  |
| 8           | Werewolf          | 2007年11月8日        | 2.6.23.1         | 1.3.0                                           | 2.20.1 | 3.5.8                            |                                  |
| 7           | Moonshine         | 2007年5月31日        | 2.6.21           | 1.3.0                                           | 2.18.0 | 3.5.6                            |                                  |
| Fedora Core | 6                 | Zod               | 2006年10月24日      | 2.6.18                                          | 1.1.1  | 2.16.0                           | 3.5.4                            |
| 5           | Bordeaux          | 2006年3月20日        | 2.6.15           | 1.0.1                                           | 2.14.0 | 3.5.1                            |                                  |
| 4           | Stentz            | 2005年6月13日        | 2.6.11           | 6.8.2                                           | 2.10.0 | 3.4.0                            |                                  |
| 3           | Heidelberg        | 2004年11月8日        | 2.6.9            | 6.8.1                                           | 2.8.1  | 3.3.0                            |                                  |
| 2           | Tettnang          | 2004年5月18日        | 2.6.5            | 6.7.0                                           | 2.6.0  | 3.2.2                            |                                  |
| 1           | Yarrow            | 2003年11月6日        | 2.4.19           | 4.3.0（[XFree86](../Page/XFree86.md "wikilink")） | 2.4.0  | 3.1.4                            |                                  |

注：由於Fedora每個版本在整個支持週期內會更新上述程序，所以上述表格的程序版本只是該本版發行初始的軟件版本

### 更新維護

目前Fedora Project每個版本的更新維護持續到其下下個版本發佈後一個月，大約每個版本維護13個月。使用者如需要更長期的更新維護，在類似的系統中，RHEL或[CentOS](../Page/CentOS.md "wikilink")會是更佳的選擇。

[**Fedora Legacy Project**](https://web.archive.org/web/20130905040726/http://www.fedoralegacy.org/)是由社群發起的計畫，目標是為已被官方停止支援的Red Hat、Fedora系統提供（安全性與錯誤方面的）更新維護，該計畫所支援的系統包括：Red Hat Linux 7.3－9、Fedora Core 1－4。然而由於志願者的缺乏、需求降低以及官方延長更新支援等因素，Fedora Legacy於2006年終停止。

### Re-spins

[**Fedora Unity Project**](https://web.archive.org/web/20070218131800/http://fedoraunity.org/)重新製作了特別版的光碟映像檔，稱之為**Fedora Unity Re-Spins**。收納的皆為更新過的軟體套件，讓使用者在安裝後得以節省許多線上更新套件的時間。

## 系統需求

以最新的版本（Fedora 20）为准。\[40\]

  - CD或DVD驱动器。
  - 1GHz处理器或更快
  - 推荐1GB的内存及以上（RAM）
  - 推荐10GB的永久存储空间（硬盘驱动器）

如果您的电脑没有CD或DVD驱动器，或者是不能够从该驱动器启动，那么你可能需要从USB存储设备，如USB闪存驱动器来安装Fedora。

## 特色

### 與Red Hat Linux的相似度

Fedora承繼了Red Hat Linux的安裝介面[Anaconda](../Page/Anaconda.md "wikilink")、桌面環境（同時包含Gnome和KDE）、套件管理器[RPM](../Page/RPM套件管理員.md "wikilink")、多國語系支援以及許多設定工具，所以习惯于使用Red Hat作業系統的使用者會感到相當熟悉，也因為如此，Fedora使用者在轉移至RHEL、CentOS等系統時不會面臨太多差異。

### 引入新技術

因其趨近半年一次的發佈週期，Fedora在引入新技術的部分頗為快速，通常每一個版本都會引入最新版的Xorg、Gnome以及KDE。\[41\]

### 軟體套件

Fedora使用[yum工具](https://zh.wikipedia.org/wiki/yum "wikilink")（現為[DNF](../Page/DNF_\(软件\).md "wikilink")）來協助[RPM套件的管理](https://zh.wikipedia.org/wiki/RPM "wikilink")，可以有效避免[相依性地狱](../Page/相依性地狱.md "wikilink")的問題。并且，使用者可以利用dnf來方便取得原先Fedora因專利權因素所不包含的功能，例如：MP3播放支援\[42\]、[DVD影片支援](https://zh.wikipedia.org/wiki/DVD "wikilink")\[43\]以及[NTFS](../Page/NTFS.md "wikilink")檔案系統支援\[44\]等功能。

Fedora的官方套件庫在收納上有其多樣性，例如[ClamAV](../Page/ClamAV.md "wikilink")（[防毒軟體](https://zh.wikipedia.org/wiki/防毒軟體 "wikilink")）與[Wine](../Page/Wine.md "wikilink")（[Windows軟體轉譯器](https://zh.wikipedia.org/wiki/Windows "wikilink")）都可在官方套件庫中取得，另外也包含許多開放原始碼的遊戲軟體\[45\]。[livna](http://rpm.livna.org/)和[freshrpms](http://freshrpms.net/)等社群也提供了和官方套件庫相容的第三方套件，使用者可從中取得[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")\[46\]和[ATI](https://zh.wikipedia.org/wiki/ATI "wikilink")\[47\]的3D[顯示卡](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")[驅動程式或是](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")[VLC](https://zh.wikipedia.org/wiki/VLC "wikilink")、[MPlayer](../Page/MPlayer.md "wikilink")等播放軟體。

### 多平台支援

Fedora官方支援[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")、[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")、[PowerPC](../Page/PowerPC.md "wikilink")以及[ARM處理器](https://zh.wikipedia.org/wiki/ARM "wikilink")，[遊戲機方面](https://zh.wikipedia.org/wiki/遊戲機 "wikilink")，Fedora Core 5、Fedora Core 6、Fedora 7也已成功安裝在[PlayStation 3上](../Page/PlayStation_3.md "wikilink")。\[48\]

### 简化目录结构

一直以来[unix及类unix系统的目录结构对于很多人显得晦涩难懂](https://zh.wikipedia.org/wiki/unix "wikilink")，Fedora计划简化其目录结构，将二进制文件集中放在/usr/bin，将库文件集中到/usr/lib和/usr/lib64，而对于原本同样用于存储二进制文件的/bin和/sbin将以连接的形式指向/usr/bin，同样的/lib /lib64也会以连接形式指向对应目录。示意如下：

## 批評

### 系統安裝

Fedora使用的[Anaconda](../Page/Anaconda.md "wikilink")安裝工具預設會啟動圖形界面以及[ACPI支持](https://zh.wikipedia.org/wiki/ACPI "wikilink")，使得安裝時所要求的硬體相容性提高，使用者在安裝時發生錯誤就必須嘗試更改安裝設定\[49\]。

### 發佈週期與維護

Fedora以趨近半年一次的速度發佈新版本，而每個版本目前提供約13個月的更新維護。使用已停止支援版本的使用者必須升級至新版本才能獲得更新，然而舊版與新版之間有時會帶有軟體的重大變動（例如PHP 5與PHP 7、MySQL 4與MySQL 5），這些變動可能會造成使用者原先的服務無法正常運作\[50\]。

### SELinux

Fedora預設會啟動[SELinux安全加強模組](https://zh.wikipedia.org/wiki/SELinux "wikilink")（包括為桌面用戶設計的Fedora Workstation版本），使用者在未正確設定（或者未關閉）SELinux的情形下，可能會造成系統的服務或功能無法正常運作\[51\]。

## 應用

  - [Linux内核網站](http://www.kernel.org/)使用Fedora。\[52\]
  - [OLPC](../Page/OLPC.md "wikilink")計畫所使用的作業系統基於Fedora。\[53\]
  - 3D動畫軟體Massive使用Fedora作為其支援系統。\[54\]

## 派生版本

  - 活跃项目：
      - [Berry Linux](https://zh.wikipedia.org/wiki/Berry_Linux "wikilink")——一个中等大小的基于Fedora的发行版，提供日语和英语支持
      - Ekaaty——来自巴西
      - [Fusion Linux](https://distrowatch.com/table-mobile.php?distribution=fusion) - 以[Linux Mint为模版](../Page/Linux_Mint.md "wikilink")，更注重桌面用户和可用性的Remix，現已中止。
      - [MythDora](https://zh.wikipedia.org/wiki/MythDora "wikilink") –基于[MythTV](../Page/MythTV.md "wikilink")的家庭剧院系统
      - [Ojuba Linux](https://zh.wikipedia.org/wiki/Ojuba_Linux "wikilink") - 来自阿拉伯
      - Omega - Rahul Sundaram, Red Hat公司的社区工程师，创建了一个基于Fedora的Remix，通过添加来自RPM Fusion和Livna源的软件，来拥有对全部多媒体（包括MP3和DVD播放）的支持\[55\]
      - [Red Hat Enterprise Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink") – Red Hat公司提供的企业版Linux，基于当前的Fedora发行版本
      - [Russian Fedora Remix](https://zh.wikipedia.org/wiki/Russian_Fedora_Remix "wikilink") - 为俄罗斯用户调整的Fedora版本，包含专有软件和驱动程序
      - [Xange](https://zh.wikipedia.org/wiki/Xange "wikilink") –（曾用名：Simplis和Vixta）以[KDE](../Page/KDE.md "wikilink")为特色，易于使用的发行版
      - [Moblin](../Page/Moblin.md "wikilink") –为上网本设计的Linux发行版，速度极快
      - [Linpus](https://zh.wikipedia.org/wiki/Linpus "wikilink") - 来自台湾Linpus Technologies公司，为亚洲市场设计的Linux
      - [Pidora](https://zh.wikipedia.org/wiki/Pidora "wikilink") - 為[Raspberry Pi移植的Fedora版本](https://zh.wikipedia.org/wiki/樹莓派 "wikilink")

<!-- end list -->

  - 非活跃项目（超过12个月未发布新版本）：
      - ASPLinux –来自俄罗斯。ASPLinux包含闭源[NVIDIA和](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[ATI驱动](https://zh.wikipedia.org/wiki/ATI "wikilink")，且提供专有音频、视频格式的解码器支持\[56\]
      - [Aurora SPARC Linux](https://zh.wikipedia.org/wiki/Aurora_SPARC_Linux "wikilink") – SPARC平台上基于Fedora的发行版
      - [BLAG Linux and GNU](https://zh.wikipedia.org/wiki/BLAG_Linux_and_GNU "wikilink") –压缩至单张CD大小的Fedora，并且使用[Debian](../Page/Debian.md "wikilink")的[APT](../Page/APT.md "wikilink")软件包管理系统
      - Eeedora\[57\] –为[Asus Eee PC设计的发行版](https://zh.wikipedia.org/wiki/Asus_Eee_PC "wikilink")，始于2007年\[58\]
      - Fox Linux –来自意大利，为家庭用户的需求（如，浏览网页，刻录光盘，播放多媒体内容）而设计
      - [Linux XP](https://zh.wikipedia.org/wiki/Linux_XP "wikilink") –一个商业Linux发行版，致力于替换[Windows XP作为家庭桌面用操作系统](../Page/Windows_XP.md "wikilink")
      - Nusantara –由印度尼西亚科技部支持的桌面Linux发行版\[59\]
      - Open Discovery:集成的高性能生物信息学Linux平台https://archive.is/20121218183103/http://opendiscovery.org.in/
      - [Yellow Dog Linux](../Page/Yellow_Dog_Linux.md "wikilink") – PowerPC平台上基于Fedora的发行版

## 参考文献

<references />

## 外部連結

### 官方

  -
  - [Fedora Project Wiki](https://fedoraproject.org/wiki/)

### 非官方

  - [Fedora中文社区](http://www.fdzh.org/)
  - [Fedora台灣愛用者社群](https://web.archive.org/web/20060613070310/http://fedora.tw/)
  - [DistroWatch.com的Fedora資訊](http://distrowatch.com/table.php?distribution=fedora)
  - [Fedora支援論壇](http://www.fedoraforum.org/)
  - [Fedora常见问题](http://www.fedorafaq.org/)
  - [FedoraNEWS](http://fedoranews.org/)
  - [Fedora中文用户组](http://fedora-zh.org/)

### 非官方安裝指南

  - [stanton-finley.net](http://stanton-finley.net/)
  - [mjm wired](http://www.mjmwired.net/resources/)

### RPM软件库與搜尋網站

  - [RPM Fusion](http://rpmfusion.org/)
  - [rpm.livna.org](http://rpm.livna.org/)
  - [freshrpms](http://freshrpms.net/)
  - [ATrpms](https://web.archive.org/web/20070407000056/http://atrpms.net/)
  - [jpackage](http://www.jpackage.org/)
  - [planetccrma](http://ccrma.stanford.edu/planetccrma/software/)
  - [rpmfind](http://www.rpmfind.net/)
  - [RPM.pbone.net](http://rpm.pbone.net/)

## 參見

  - [Red Hat Linux](../Page/Red_Hat_Linux.md "wikilink")
  - [Red Hat Enterprise Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink")

[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink") [Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink") [Category:红帽公司](https://zh.wikipedia.org/wiki/Category:红帽公司 "wikilink")

1.  [Enterprise Linux or Fedora?](http://www.redhat.com/en_us/USA/rhel/migrate/whichlinux) ，Red Hat, Inc.

2.  [Fedora概述 - 什么是Fedora发行版](http://fedoraproject.org/wiki/Overview#What_is_the_Fedora_Distribution.3F)（英文） - FedoraProject

3.  [Fedora生命周期与维护](http://fedoraproject.org/wiki/LifeCycle)（英文），FedoraProject

4.

5.

6.

7.  Warren Togami, [Fedora Network Proposal（存档）](https://web.archive.org/web/20030219051938/http://www.fedora.us/fedora.html)

8.  [The Fedora Project Board](http://fedoraproject.org/wiki/Board) - FedoraProject

9.

10.

11. [LiveUSB Creator](https://fedorahosted.org/liveusb-creator/)

12. [CustomSpins - Fedora Project Wiki](http://fedoraproject.org/wiki/CustomSpins).

13.

14. [Extra Packages for Enterprise Linux (EPEL)](http://fedoraproject.org/wiki/EPEL)，检查于2009–05–15.

15.

16.

17.
18.

19.

20.

21. {{ cite web | url=<http://fedoraproject.org/wiki/Legacy> | title=Fedora Legacy | author=[Fedora Project](https://zh.wikipedia.org/wiki/Fedora_Project "wikilink") | accessdate=2007-11-18 }}

22. {{ cite news | url=<http://www.redhat.com/archives/fedora-legacy-list/2006-December/msg00049.html> | title=Fedora Legacy shutting down | author=David Eisenstein | date=2006-12-29 | accessdate=2007-11-18 }}

23.

24. Jesse Keating，[Announcing a change in the Fedora 7 schedule](http://www.redhat.com/archives/fedora-maintainers/2007-February/msg00525.htm)，fedora-maintainers

25. [Fedora Testing Guide](http://fedoraproject.org/wiki/Testing)，Fedora Project

26.

27. [History of Fedora release names](https://fedoraproject.org/wiki/History_of_Fedora_release_names#Release_name_relationships) - FedoraProject

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

38. [The Fedora Project Will No Longer Name Its Linux Distributions（英文）](http://news.softpedia.com/news/The-Fedora-Project-Will-No-Longer-Name-Their-Linux-Distributions-416156.shtml)Softpedia

39. [Releases/21/Schedule（英文）](https://fedoraproject.org/wiki/Releases/21/Schedule)Fedora Project

40. [1](http://docs.fedoraproject.org/en-US/Fedora/18/html/Installation_Quick_Start_Guide/Requirements.html)

41. [Fedora发行版是什么](https://fedoraproject.org/wiki/Overview#What_is_the_Fedora_Distribution.3F)（英文） - FedoraProject

42. [如何在Fedora中播放MP3（英文）](http://www.fedorafaq.org/#mp3) - FedoraFAQ.org

43. [如何在Fedora中播放DVD（英文）](http://www.fedorafaq.org/#dvd) - FedoraFAQ.org

44. [如何在Fedora中读取NTFS文件系统](http://www.fedorafaq.org/#ntfs)（英文） - FedoraFAQ.org

45. [Fedora游戏](https://fedoraproject.org/wiki/Games)（英文） - FedoraProject

46. （英文）[如何在Fedora中启用NVIDIA显卡的3D支持](http://www.fedorafaq.org/#nvidia) - FedoraFAQ.org

47. （英文）[如何在Fedora中启用ATI显卡的3D支持](http://www.fedorafaq.org/#radeon) - FedoraFAQ.org

48. [Fedora Core 5 Playstation 3完整安装指南](http://ps3.qj.net/PS3-Linux-The-void-has-been-filled-Full-install-instructions-for-Fedora-Core-5-/pg/49/aid/73144) （英文）

49. [奇怪的安装问题](http://www.fedorafaq.org/#otherinstall)（英文） - FedoraFAQ.org

50. [Fedora Core的PHP 4（英文）](http://www.mjmwired.net/resources/mjm-fedora-php4.html)

51. [主機能作的保護：權限設定、套件更新、SELinux](http://linux.vbird.org/linux_server/0240network-secure-1.php#packet_flow_protect)  - 鸟哥的Linux私房菜

52. [Site report for www.kernel.org](http://toolbar.netcraft.com/site_report?url=http://www.kernel.org)

53. [LWN.net Weekly Edition for July 6, 2006](http://lwn.net/Articles/189544/)

54. [Massive Software](http://www.massivesoftware.com/requirements.php)

55. [Omega Linux](https://www.redhat.com/archives/fedora-announce-list/2008-September/msg00015.html)，于2009年5月15日检阅。

56. [ASPLinux website](http://www.asplinux.ru/) ，于2009年5月15日检阅

57.

58.

59. [Tentang Nusantara](http://www.nusantara-linux.web.id/?q=content/tentang-nusantara)