> 本文内容由[Microsoft Virtual PC](https://zh.wikipedia.org/wiki/Microsoft_Virtual_PC)转换而来。


**Microsoft Virtual PC**是一个[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")[软件](../Page/软件.md "wikilink")，可以在[Mac OS和](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") [操作系統上模擬](https://zh.wikipedia.org/wiki/操作系統 "wikilink")[x86電腦](https://zh.wikipedia.org/wiki/x86 "wikilink")，並在其中安装运行操作系统。原來由[Connectix公司開發](https://zh.wikipedia.org/wiki/Connectix "wikilink")，起初-{只}-能在Mac OS運行，後改為跨平台，稱為**Connectix Virtual PC**。[微軟公司於](https://zh.wikipedia.org/wiki/微軟公司 "wikilink")2003年收購該軟件，並改稱為**Microsoft Virtual PC**，並運用於微軟公司的訓練課程（如[MCSE的訓練課程](https://zh.wikipedia.org/wiki/MCSE "wikilink")）作模擬用途。

微軟於2003年底推出用於Windows的Microsoft Virtual PC 2004，並於2006年7月12日宣佈Virtual PC成為[免費軟件](https://zh.wikipedia.org/wiki/免費軟件 "wikilink")。不約而同地，其主要競爭對手[VMware](../Page/VMware.md "wikilink")亦於同年宣佈[VMware Server](https://zh.wikipedia.org/wiki/VMware_Server "wikilink") 1.0成為[免費軟件](https://zh.wikipedia.org/wiki/免費軟件 "wikilink")。目前最新版本為Microsoft Virtual PC 2007，其正式版本已於2007年2月發佈，分為[32位元](../Page/32位元.md "wikilink")及[64位元](../Page/64位元.md "wikilink")版本，並支持[Windows Vista](../Page/Windows_Vista.md "wikilink")，可於微軟官方網站下載。

## 模擬環境

Virtual PC在使用[PowerPC](../Page/PowerPC.md "wikilink")處理器的[Mac OS X版本上](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，其模擬機「使用」[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") [Pentium 4處理器及](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink")[440BX系列的](https://zh.wikipedia.org/wiki/Intel_440BX "wikilink")-{zh-hans:主板; zh-hant:底版;}-；而在Windows版本上，會使用電腦本身的處理器。模擬電腦上使用一塊標準的[SVGA](https://zh.wikipedia.org/wiki/SVGA "wikilink") [VESA](https://zh.wikipedia.org/wiki/VESA "wikilink")[圖卡](https://zh.wikipedia.org/wiki/圖卡 "wikilink")，並與[S3 Trio](https://zh.wikipedia.org/wiki/S3_Trio "wikilink") 64 [PCI](https://zh.wikipedia.org/wiki/PCI "wikilink") 8MByte [VRAM版本的相容](https://zh.wikipedia.org/wiki/VRAM "wikilink")。-{zh-hans:主板; zh-hant:底版;}-使用[安邁科技](https://zh.wikipedia.org/wiki/安邁科技 "wikilink")（American Megatrends Incorporated；[AMI](https://zh.wikipedia.org/wiki/AMI "wikilink")）的[BIOS](../Page/BIOS.md "wikilink")。並有「內置」的[Creative Labs](https://zh.wikipedia.org/wiki/Creative_Labs "wikilink") [Sound Blaster](../Page/Sound_Blaster.md "wikilink") 16 [隨插即用](../Page/隨插即用.md "wikilink")[音效卡](https://zh.wikipedia.org/wiki/音效卡 "wikilink")（Vista上或運行模擬Vista環境時，則使用Vista本身的音效系統，因為Vista並不支援Creative Labs Sound Blaster）及[DEC](../Page/迪吉多.md "wikilink") 21041或DEC 21140的[Ethernet](https://zh.wikipedia.org/wiki/Ethernet "wikilink")[網卡](https://zh.wikipedia.org/wiki/網卡 "wikilink")。

即使Virtual PC的相容性很高，但不是所有軟件都能在Virtual PC中正常地運行，因為那些軟件可能使用一些未公開的硬件或使用一些不支援的-{zh-hans:指令; zh-hant:操作碼;}-。比如，在VirtualPC 2004 SP1中，如果有[打印机](../Page/打印机.md "wikilink")使用LPT1端口，则虚拟机不能识别。这个漏洞在Virtual PC 2007中得到改善。

  - [麥金塔電腦版本的Virtual](https://zh.wikipedia.org/wiki/麥金塔電腦 "wikilink") PC用[動態重新編譯轉換](https://zh.wikipedia.org/wiki/動態重新編譯 "wikilink")[x86的機械碼至相等的](https://zh.wikipedia.org/wiki/x86 "wikilink")[PowerPC](../Page/PowerPC.md "wikilink")機械碼，使Mac可以執行標準pc的程式。

<!-- end list -->

  - 微軟Windows版本的Virtual PC也是用[動態重新編譯](https://zh.wikipedia.org/wiki/動態重新編譯 "wikilink")，因為原本就能執行[使用者模式和](https://zh.wikipedia.org/wiki/使用者模式 "wikilink")[virtual 8086 mode的x](https://zh.wikipedia.org/wiki/virtual_8086_mode "wikilink")86機械碼，所以就只是轉換[核心模式和](https://zh.wikipedia.org/wiki/核心模式 "wikilink")[真實模式](../Page/真實模式.md "wikilink")到[使用者模式的x](https://zh.wikipedia.org/wiki/使用者模式 "wikilink")86機械碼。

通常還提供一些客戶端的呼叫函式庫（特別是使用某些客戶端的延伸功能），來加速模擬或提供更多的功能像整合原執行主機環境變數。

## 版本歷史

第一代的Virtual PC是為蘋果電腦而在1997年6月推出的。四年後，即2001年6月，第一代Windows版本的Virtual PC，版本4.0也推出了。 目前的最新版本是2007 SP1。Microsoft Virtual PC被内置于[Windows 7部分版本的](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Windows Virtual PC取代](../Page/Windows_Virtual_PC.md "wikilink")。

## 基于Intel的苹果机支持

## USB支援

在Virtual PC 2007推出之前，大眾都期待新的版本可以支援USB器材，因為Mac版本的Virtual PC是可以使用USB器材的。可是，結果這功能依然沒有被加入，使用戶在需要USB的支援時，仍然必須繼續使用它的競爭產品[VMware](../Page/VMware.md "wikilink")或[VirtualBox](../Page/VirtualBox.md "wikilink")。

## 其他

Microsoft Virtual PC 2007並不支援Windows的家用版\[1\]。若在家用版Windows上安裝Virtual PC 2007，系統會有彈出信息提示，指「系統並不支援現時的架構」。不過，具體來說，Virtual PC 2007在家用版Windows上依然可以正常運行。

## Virtual PC以外的其他選擇

### PC

  - [VirtualBox](../Page/VirtualBox.md "wikilink")
  - [Bochs](../Page/Bochs.md "wikilink")
  - [VMware](../Page/VMware.md "wikilink")
  - [QEMU](../Page/QEMU.md "wikilink")等。

### Mac

  - [Parallels Workstation](https://zh.wikipedia.org/wiki/Parallels_Workstation "wikilink")
  - [iEmulator](https://zh.wikipedia.org/wiki/iEmulator "wikilink")
  - [VMware Fusion](https://zh.wikipedia.org/wiki/VMware_Fusion "wikilink")
  - 通過[Q (emulator)執行](https://zh.wikipedia.org/wiki/Q_\(emulator\) "wikilink")[QEMU](../Page/QEMU.md "wikilink")
  - [VirtualBox](../Page/VirtualBox.md "wikilink")

## 參考

<references/>

## 外部連結

  - [Microsoft Virtual PC Windows版本](https://web.archive.org/web/20080725075823/http://www.microsoft.com/windowsxp/virtualpc)
  - [下載Microsoft Virtual PC 2004 SP1 Windows版本](http://www.microsoft.com/downloads/details.aspx?FamilyId=6D58729D-DFA8-40BF-AFAF-20BCB7F01CD1&displaylang=en)
  - [下載Microsoft Virtual PC 2007 Windows版本](http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=04d26402-3199-48a3-afa2-2dc0b40a73b6)
  - [下載Microsoft Virtual PC 2007 SP1 Windows版本](http://www.microsoft.com/downloads/details.aspx?FamilyId=28C97D22-6EB8-4A09-A7F7-F6C7A1F000B5&displaylang=en)
  - [Microsoft Virtual Server 2005](https://web.archive.org/web/20110625103325/http://www.microsoft.com/windowsserversystem/virtualserver/default.mspx)
  - [Microsoft Virtual PC Mac版本](http://www.microsoft.com/mac/products/virtualpc/virtualpc.aspx)\<\!--

待加中文网站--\>

  - [虚拟机之家](https://web.archive.org/web/20050529004559/http://www.xuniji.com/)

[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink") [Category:微软软件](https://zh.wikipedia.org/wiki/Category:微软软件 "wikilink") [Category:Mac_OS软件](https://zh.wikipedia.org/wiki/Category:Mac_OS软件 "wikilink") [Category:MacOS軟體](https://zh.wikipedia.org/wiki/Category:MacOS軟體 "wikilink")

1.