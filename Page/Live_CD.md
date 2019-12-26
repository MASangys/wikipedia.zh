**Live CD**，又译为**自生系统**，是事先儲存於某种可移动[儲存裝置](../Page/儲存裝置.md "wikilink")上，可不特定於[计算机硬件](https://zh.wikipedia.org/wiki/计算机 "wikilink")（）而启动的操作系统（通常亦包括一些其他[軟件](https://zh.wikipedia.org/wiki/軟件 "wikilink")），不需安裝至计算机的本地外部存储器 - 硬盘。采用的介质包括[CD-ROM](../Page/CD-ROM.md "wikilink")（Live CD），[DVD](https://zh.wikipedia.org/wiki/DVD "wikilink")（Live DVD），[闪存盘](../Page/闪存盘.md "wikilink")（[Live USB](https://zh.wikipedia.org/wiki/Live_USB "wikilink")）甚至是[软盘](../Page/软盘.md "wikilink")等。退出[自生系统並重新開機後](https://zh.wikipedia.org/wiki/自生系统 "wikilink")，電腦就可以恢復到原本的作業系統。自生系统的運作機制，是透過「把原本放在[硬碟裡的檔案](https://zh.wikipedia.org/wiki/硬碟 "wikilink")，放到[記憶體的](https://zh.wikipedia.org/wiki/記憶體 "wikilink")[虛擬磁碟中](https://zh.wikipedia.org/wiki/虛擬磁碟 "wikilink")」來運作；因此系統記憶體愈大，則執行速度愈快。

## 簡介

雖然大多數的自生系统都包括一個以[Linux內核為基礎的作業系統](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")，此外还有各种[BSD](../Page/BSD.md "wikilink")與[OpenSolaris](../Page/OpenSolaris.md "wikilink")等 ，但也有基於商业作業系統的自生系统存在，例如[Mac OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[BeOS](../Page/BeOS.md "wikilink")、[九號計畫和](../Page/貝爾實驗室九號計畫.md "wikilink")[Microsoft Windows等](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，因商業版作業系統通常不允許任意改造及散布，所以可能不具备合法性。第一個支援自生系统運作的作業系統，似乎是1991年發行的光碟版的[Mac OS 7和用戶建立的具有系統資料夾的Macintosh](https://zh.wikipedia.org/wiki/Mac_OS "wikilink") CD。它可以從光碟中啟動一個完整的桌面。

一些自生系统帶有一個桌面圖示，該圖示可讓使用者選擇性的啟動安裝程式，將作業系統安裝到一個硬碟或者[USB](../Page/USB.md "wikilink")[快閃記憶體上](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")。大多數自生系统都能讀取內部和外部的[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")，[軟碟和USB快閃記憶體](https://zh.wikipedia.org/wiki/軟碟 "wikilink")。

基於[Linux](../Page/Linux.md "wikilink")的自生系统和Linux軟磁碟通常是用工具程式[syslinux來起動的](https://zh.wikipedia.org/wiki/syslinux "wikilink")。在個人電腦上，可開機光碟通常都遵照[El Torito標準](../Page/El_Torito.md "wikilink")，將光碟上的一個特殊的檔案（通常都是隱藏檔）當作軟磁碟影像檔處理。很多基於Linux的自生系统會使用一個壓縮檔案系統，通常是簡稱「cloop」的Compressed Loopback Device，來增大光碟的容量。以此方法製作的系統，功能可以頗為豐富：典型的[Knoppix](../Page/Knoppix.md "wikilink")系統包括了大約1,200種軟件包。

## 使用

一些自生系統是被設計成用於展示硬體的客製作業系統（通常是一個Linux或是其他免費開放源碼作業系統）

自生系統會將作業系統載入記憶體中，而光碟機就可以做其他用途，但是光碟機的速度仍舊太慢，這樣的作法仍是少見。一些有經驗的作業系統使用者會用自生系統來決定作業系統的功能或版本是否相容於一些硬體或是週邊；也有使用者將自生系統用於作硬體的除錯使用，特別是硬碟毀損的時候，能將一些檔案儲存到一些儲存媒體。

自生系統可以用在很多的用途上，包含了提供安裝Linux發行版環境到硬碟、測試新版的軟體、測試新硬體、系統維修、提供高安全性的環境、偷竊密碼。一般來說，自生系統並不是很常使用，因為硬碟的存取速度較CD快，而且放在RAM中的檔案在電源關閉時會遺失，以及系統無法在開啟許多應用程式時存取swap磁區。

## 特點

一些自生系統會包含安裝工具，可以由桌面的圖示來啟動，啟動後可以將作業系統安裝到系統的硬碟或是USB裝置，大部分的 自生系統可以存取內部或是外部的硬碟、磁碟片、flash，一般來說， 自生系統是由唯讀的裝置啟動，需要複製到可讀寫的媒體（例如：硬碟）或是完整複製後再安裝額外的軟體；然而[Morphix和](https://zh.wikipedia.org/wiki/Morphix "wikilink")[Puppy Linux是例外](../Page/Puppy_Linux.md "wikilink")，他們是少數Linux自生系統可以儲存檔案到 光碟，可以讓使用者攜帶資料，更重要的是，可以增加客製化的程式以及設定檔在光碟內。

## 容量

自生系統理論上講只需要作業系統能夠操作硬體就可以，實際上自生系統的封裝者為了實現額外的功能往往加入額外的軟體，因此自生系統的容量可以控制到只占用一張軟盤的存儲空間，也可以用大型的應用軟體填滿整張DVD。50 [MB左右的](https://zh.wikipedia.org/wiki/MB "wikilink")[Damn Small Linux](https://zh.wikipedia.org/wiki/Damn_Small_Linux "wikilink")（DSL）可以載於名片型CD或小容量闪存上。

## 一些著名的自生系统

### 基於[OpenSolaris](../Page/OpenSolaris.md "wikilink")

  - [OpenSolaris](../Page/OpenSolaris.md "wikilink") - 一種開源的System V Unix系統，本身俱備光碟啟動系統功能，並也能再安裝入磁碟中。
  - [Belenix](https://zh.wikipedia.org/wiki/Belenix "wikilink") - 基於OpenSolaris核心搭配KDE桌面環境。

### 基於[蘋果電腦](https://zh.wikipedia.org/wiki/蘋果電腦 "wikilink")[Macintosh](https://zh.wikipedia.org/wiki/Apple_Macintosh "wikilink") [OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")

  - 含有[Mac OS的](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")[System folder的](https://zh.wikipedia.org/wiki/System_folder "wikilink")[CD](../Page/CD.md "wikilink")或[軟磁盤](https://zh.wikipedia.org/wiki/軟磁盤 "wikilink")。
  - [BootCD](https://zh.wikipedia.org/wiki/BootCD "wikilink") - [Charlessoft](http://www.charlessoft.com/)製作，[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。

### 基於[BSD](../Page/BSD.md "wikilink")

  - [DragonFly BSD](../Page/DragonFly_BSD.md "wikilink") [1](https://web.archive.org/web/20050424075251/http://www.dragonflybsd.org/main/download.cgi)
  - [FreeSBIE](https://zh.wikipedia.org/wiki/FreeSBIE "wikilink")（基於[FreeBSD](../Page/FreeBSD.md "wikilink")）
  - [Frenzy](https://zh.wikipedia.org/wiki/Frenzy_LiveCD "wikilink") mini-CD（基於[FreeBSD](../Page/FreeBSD.md "wikilink")）
  - [M0n0wall](../Page/M0n0wall.md "wikilink")（基於[FreeBSD](../Page/FreeBSD.md "wikilink")）的防火墙
  - [NetBSD](../Page/NetBSD.md "wikilink") - 官方LiveCD影像檔。[直接下載](ftp://ftp.netbsd.org/pub/NetBSD/iso/2.0/i386live.iso)與[快速參考文件](ftp://ftp.netbsd.org/pub/NetBSD/iso/2.0/README.i386live)。
  - [RedBSD](https://web.archive.org/web/20140103082726/http://redbsd.com/)

### 基於[Linux](../Page/Linux.md "wikilink")

  - [Damn Small Linux](https://zh.wikipedia.org/wiki/Damn_Small_Linux "wikilink") - 輕量化的Knoppix，可裝載於[卡片型CD上](https://zh.wikipedia.org/wiki/卡片型CD "wikilink")。
  - [fanx基于SLAX](https://zh.wikipedia.org/wiki/fanx "wikilink")-5.0.6的[FanX-1.1版](https://web.archive.org/web/20050813000933/http://www.linuxsky.net/fanx/download/iso/)【中文版】[说明](https://web.archive.org/web/20060331171517/http://www.linuxfans.org/nuke/modules.php?name=Forums&file=viewtopic&t=126162)
  - [floppyfw](https://zh.wikipedia.org/wiki/floppyfw "wikilink") - 基于[BusyBox](../Page/BusyBox.md "wikilink")的可装载于软盘内的带防火墙功能的路由服务自生系统。
  - [geexbox](https://zh.wikipedia.org/wiki/geexbox "wikilink") a free software media center for Linux，[官网](https://web.archive.org/web/20160303182312/http://www.geexbox.org/)
  - [Gnoppix](https://zh.wikipedia.org/wiki/Gnoppix "wikilink") - 基于[Ubuntu](../Page/Ubuntu.md "wikilink")使用[GNOME](../Page/GNOME.md "wikilink")作为桌面的自生系统CD。
  - [Knoppix](../Page/Knoppix.md "wikilink") - 基於[Debian](../Page/Debian.md "wikilink")的自生系统CD。
  - [Knoppix bv1al](https://zh.wikipedia.org/wiki/Knoppix_bv1al "wikilink") - 基於[Knoppix](../Page/Knoppix.md "wikilink")的[繁體中文自生系统CD](https://zh.wikipedia.org/wiki/繁體中文 "wikilink")。
  - [Kubuntu](../Page/Kubuntu.md "wikilink") - 基于[Ubuntu](../Page/Ubuntu.md "wikilink")的[KDE](../Page/KDE.md "wikilink")桌面环境自生系统CD/DVD。
  - [linuX-gamers](https://zh.wikipedia.org/wiki/linuX-gamers "wikilink") - 基于[Arch Linux的游戏玩家自生系统DVD](../Page/Arch_Linux.md "wikilink")。
  - [MandrakeMove](https://zh.wikipedia.org/wiki/MandrakeMove "wikilink") - 由[Mandriva作商業上的支持](../Page/Mandriva_Linux.md "wikilink")。
  - [MEPIS](https://zh.wikipedia.org/wiki/MEPIS "wikilink") - 用作[Debian](../Page/Debian.md "wikilink")的安裝。
  - [PCLinuxOS](../Page/PCLinuxOS.md "wikilink") - [The LiveCD Project](https://web.archive.org/web/20040606015819/http://livecd.berlios.de/)的直接代表。
  - [ROCK Linux](https://zh.wikipedia.org/wiki/ROCK_Linux "wikilink") - 針對[PowerPC](../Page/PowerPC.md "wikilink")的自生系统CD
  - [Slax](../Page/Slax.md "wikilink") - [Slackware的變種](https://zh.wikipedia.org/wiki/Slackware_Linux "wikilink")。
  - [Stanix](https://zh.wikipedia.org/wiki/Stanix "wikilink") - 基於[Knoppix bv1al的](https://zh.wikipedia.org/wiki/Knoppix_bv1al "wikilink")[繁體中文自生系统CD](https://zh.wikipedia.org/wiki/繁體中文 "wikilink")。
  - [SuSE自生系统CD](https://zh.wikipedia.org/wiki/SuSE "wikilink")/DVD。
  - [Tomsrtbt](https://zh.wikipedia.org/wiki/Tomsrtbt "wikilink") - 基於[BusyBox](../Page/BusyBox.md "wikilink")的自生系统软盘[Tom's root system bootable](http://www.toms.net/rb/)
  - [Ubuntu](../Page/Ubuntu.md "wikilink") - 基于[Debian](../Page/Debian.md "wikilink")的[GNOME](../Page/GNOME.md "wikilink")桌面环境自生系统CD。
  - [xPUD](https://zh.wikipedia.org/wiki/xPUD "wikilink") - 系統需求為 256MB RAM 和 64MB 硬碟空間 [官网](http://www.xpud.org/index.zh.html)

### 基於[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")

  - [BartPE](../Page/BartPE.md "wikilink") (Windows 2000/XP/2003)
  - [911 Rescue CD](https://zh.wikipedia.org/wiki/911_Rescue_CD "wikilink") [2](http://arquivo.pt/wayback/20141130164704/http://www.911cd.net/) (Windows NT/2000/XP/2003)
  - [Ultimate Boot CD for Windows](http://www.ubcd4win.com)（Windows XP）- BartPE的功能延展
  - [MiniPE-XT](https://zh.wikipedia.org/wiki/MiniPE-XT "wikilink")

## 圖集

下列是一些Live CD或Live DVD的螢幕截圖：

<File:Fedora.png>|[Fedora](../Page/Fedora.md "wikilink") 9的Live CD <File:Mandriva> Linux.png|[Mandriva Linux](../Page/Mandriva_Linux.md "wikilink") One 2009 with [KDE](../Page/KDE.md "wikilink") 4的Live CD <File:ubuntu> 8.04 Live CD.png|[Ubuntu](../Page/Ubuntu.md "wikilink") 8.04的Live CD，執行[Mozilla Firefox與](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[OpenOffice.org](../Page/OpenOffice.org.md "wikilink") <File:DebianLenny.png>|[Debian](../Page/Debian.md "wikilink")的Live CD <File:Super> OS.png|[Super OS](https://zh.wikipedia.org/wiki/Super_OS "wikilink") 9.04的Live DVD <File:Gentoo-2008.0.png>|[Gentoo Linux](../Page/Gentoo_Linux.md "wikilink") 2008.0的Live CD

## 外部链接

  - [List of 200+ LiveCDs](http://www.livecdlist.com)（also at [3](http://www.frozentech.com/content/livecd.php)）
  - [Bootable CDROM HowTo](http://www.tldp.org/HOWTO/Bootdisk-HOWTO/cd-roms.html)
  - [Long list of LiveCDs at the Knoppix Wiki](https://web.archive.org/web/20041122033716/http://www.knoppix.net/docs/index.php/KnoppixCustomizations)
  - [The magic of live CDs](https://web.archive.org/web/20050404150352/http://www.freesoftwaremagazine.com/free_issues/issue_01/live_cds/)《自由軟件雜誌》上發表的關於LiveCD的文章。
  - The Debian Wiki lists [一些基於Debian的LiveCD，以及自製LiveCD的秘訣](https://web.archive.org/web/20050313160309/http://wiki.debian.net/?LiveCD)。
  - [Linux live scripts](http://www.linux-live.org/)
  - [Build your own Custom Live CD](https://web.archive.org/web/20080913080440/http://custom.nimblex.net/)

[Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink") [Category:自生系统](https://zh.wikipedia.org/wiki/Category:自生系统 "wikilink") [Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")