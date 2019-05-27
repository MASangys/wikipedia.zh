是由[德國](https://zh.wikipedia.org/wiki/德國 "wikilink")軟體公司出品的[虛擬機器](../Page/虛擬機器.md "wikilink")[軟體](https://zh.wikipedia.org/wiki/軟體 "wikilink")，現在則由[甲骨文公司進行開發](../Page/甲骨文公司.md "wikilink")，是甲骨文公司xVM[虛擬化平臺技術的一部份](../Page/虛擬化.md "wikilink")。它提供使用者在[32位元或](../Page/32位元.md "wikilink")[64位元的](../Page/64位元.md "wikilink")[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Solaris及](../Page/Solaris.md "wikilink")[Linux](../Page/Linux.md "wikilink")
[作業系統上虛擬其它](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[x86的作業系統](https://zh.wikipedia.org/wiki/x86 "wikilink")。使用者可以在VirtualBox上安裝並且執行[Solaris](../Page/Solaris.md "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[DOS](../Page/DOS.md "wikilink")、[Linux](../Page/Linux.md "wikilink")、[OS/2
Warp](https://zh.wikipedia.org/wiki/OS/2 "wikilink")、[OpenBSD及](../Page/OpenBSD.md "wikilink")[FreeBSD等系統作為客戶端作業系統](../Page/FreeBSD.md "wikilink")\[1\]。

與同性質的[VMware及](../Page/VMware_Workstation.md "wikilink")[Virtual
PC比較下](../Page/Microsoft_Virtual_PC.md "wikilink")，VirtualBox獨到之處包括[遠端桌面協定](../Page/遠端桌面協定.md "wikilink")（RDP）、[iSCSI及](https://zh.wikipedia.org/wiki/iSCSI "wikilink")[USB的支援](../Page/USB.md "wikilink")，VirtualBox在客戶機作業系統上已可以支援[USB
3.0的硬體裝置](../Page/USB_3.0.md "wikilink")，不過要安裝Virtualbox Extension Pack。

## 歷史

VirtualBox最初是以[專有軟體協議的方式提供](https://zh.wikipedia.org/wiki/專有軟體 "wikilink")。2007年1月，InnoTek以[GNU通用公共許可證](https://zh.wikipedia.org/wiki/GNU通用公共許可證 "wikilink")（GPL）釋出VirtualBox而成為[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，並提供[二進位版本及](https://zh.wikipedia.org/wiki/二進位 "wikilink")[開放原始碼版本的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[程式碼](https://zh.wikipedia.org/wiki/程式碼 "wikilink")。

而在2008年2月，InnoTek軟體公司由昇陽電腦公司所併購。\[2\]

在2010年1月，[甲骨文公司完成对](../Page/甲骨文公司.md "wikilink")[昇陽電腦公司的收购](https://zh.wikipedia.org/wiki/昇陽電腦公司 "wikilink")。\[3\]

## 模擬

能夠安裝多個客戶端作業系統，每個客戶端系統皆可獨立開啟、暫停與停止。主端作業系統與客戶端作業系統皆能相互通訊，多個作業系統同時運行的環境，也彼此能夠同時使用網路。

### 硬體支援

  - VirtualBox支援[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")
    [VT-x與](https://zh.wikipedia.org/wiki/虛擬化技術 "wikilink")[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")
    [AMD-V硬體虛擬化技術](https://zh.wikipedia.org/wiki/虛擬化技術 "wikilink")。
  - 硬碟被模擬在一個稱為虛擬磁碟映像檔（Virtual Disk
    Images）的特殊容器，目前此格式不相容於其它虛擬機平臺運行，通常作為一個系統檔存放在主機端作業系統（副檔名.vdi\[4\])。VirtualBox能夠連結iSCSI，且能在虛擬硬碟上運作，此外VirtualBox可以讀寫VMware
    [VMDK檔與VirtualPC](../Page/VMDK.md "wikilink")
    [VHD檔](https://zh.wikipedia.org/wiki/VHD "wikilink")。
  - ISO映像檔可以被掛載成CD/DVD裝置，例如下載的Linux發行版DVD映像檔可以直接使用在VirtualBox，而不需燒錄在光碟片上，亦可直接在虛擬機上掛載實體光碟機。
  - 預設上VirtualBox提供了一個支援[VESA相容的虛擬顯示卡](../Page/VESA匯流排.md "wikilink")，與一個供Windows、Linux、Solaris、OS/2客戶端系統額外的驅動程式（guest
    addition），可以提供更好的效能與功能，如當虛擬機的視窗被縮放時，會動態的調整解析度。在4.1更支援[WDDM相容的虛擬顯示卡](https://zh.wikipedia.org/wiki/WDDM "wikilink")，令[Windows
    Vista及](../Page/Windows_Vista.md "wikilink")[Windows
    7可以使用](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Windows
    Aero](../Page/Windows_Aero.md "wikilink")。
  - 在音效卡方面，VirtualBox虛擬一個Intel ICH
    [AC97音效卡與SoundBlaster](../Page/AC97.md "wikilink") 16
    [聲霸卡](https://zh.wikipedia.org/wiki/聲霸卡 "wikilink")。
  - 在[乙太網介面卡方面](https://zh.wikipedia.org/wiki/乙太網 "wikilink")，VirtualBox虛擬了數張[網路卡](https://zh.wikipedia.org/wiki/網路卡 "wikilink")：AMD
    PCnet PCI II、AMD PCnet-Fast III、Intel Pro/1000 MT Desktop、Intel
    Pro/1000 MT Server、Intel Pro/1000 T Server。
  - VirtualBox亦可模拟[UEFI固件](https://zh.wikipedia.org/wiki/UEFI "wikilink")，但是，该UEFI固件不支持部分版本的Windows系统。

## 特色

[Ubuntu14.04.5_LiveCD_with_VirtualBox5.2.22deb_on_Ubuntu18.04.webm](https://zh.wikipedia.org/wiki/File:Ubuntu14.04.5_LiveCD_with_VirtualBox5.2.22deb_on_Ubuntu18.04.webm "fig:Ubuntu14.04.5_LiveCD_with_VirtualBox5.2.22deb_on_Ubuntu18.04.webm")以[甲骨文](../Page/甲骨文公司.md "wikilink")**VirtualBox**執行[Live
CD](../Page/Live_CD.md "wikilink")\]\]

  - 支援64位元客戶端作業系統，即使主机使用[32位](https://zh.wikipedia.org/wiki/32位 "wikilink")[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")(6.0版後主機僅支援64位元作業系統)\[5\]
  - 支援[SATA硬碟](../Page/SATA.md "wikilink")[NCQ技術](https://zh.wikipedia.org/wiki/NCQ "wikilink")
  - 虛擬硬碟快照
  - 無縫視窗模式（須安裝客戶端驅動程式）
  - 能夠在主機端與客戶端共享剪貼簿（須安裝客戶端驅動）
  - 在主機端與客戶端間建立分享資料夾（須安裝客戶端驅動）
  - 內建遠端桌面伺服器
  - 支援VMware VMDK磁碟檔及Virtual PC VHD磁碟檔格式
  - 3D虛擬化技術支援OpenGL（2.1版後支援）、Direct3D（3.0版後支援）、WDDM（4.1版後支援）
  - 最多虛擬32顆[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")（3.0版後支援）
  - 支援VT-x與AMD-V硬體虛擬化技術
  - iSCSI支援
  - USB與USB2.0支援

## 相關條目

  - [Oracle
    VM](https://zh.wikipedia.org/wiki/Oracle_VM "wikilink")－Oracle的企業級伺服器虛擬機監視器（GPL開放原始碼）
  - [Xen](../Page/Xen.md "wikilink")
  - [虚拟机比较](https://zh.wikipedia.org/wiki/虚拟机比较 "wikilink")
  - [Virtual PC](../Page/Microsoft_Virtual_PC.md "wikilink")
  - [QEMU](../Page/QEMU.md "wikilink")
  - [VMware](../Page/VMware.md "wikilink")
  - [用戶模式的Linux](https://zh.wikipedia.org/wiki/用戶模式的Linux "wikilink")

## 自4.1版本以来

  - Windows Aero支持（实验性）
  - 虚拟机克隆

## 參考資料

<div class="references-small">

<references />

</div>

## 外部連結

  -
  - [翻譯說明手冊](https://www.virtualbox.org/wiki/Translating)

  - [Benchmark - Virtualbox vs. Qemu vs.
    VMware-Player](https://web.archive.org/web/20070429070812/http://www.linux-gamers.net/modules/smartsection/item.php?itemid=56)

  - [VirtualBox and VMware Images of Ubuntu 6.10
    Desktop](http://andrea.eric.free.fr/eric/static/en/Frame-HOWTO-Install-coLinux.html)

[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")
[Category:昇陽電腦軟體](https://zh.wikipedia.org/wiki/Category:昇陽電腦軟體 "wikilink")
[Category:使用Qt的軟體](https://zh.wikipedia.org/wiki/Category:使用Qt的軟體 "wikilink")

1.  ["Status: Guest OSes" page on VirtualBox
    website](https://www.virtualbox.org/wiki/Guest_OSes)
2.  ["Sun Microsystems Announces Agreement to Acquire innotek, Expanding
    Sun xVM Reach to the Developer
    Desktop](http://www.sun.com/aboutsun/pr/2008-02/sunflash.20080212.1.xml)
3.  ["Oracle Buys Sun"](http://www.oracle.com/us/sun/index.htm)
4.
5.