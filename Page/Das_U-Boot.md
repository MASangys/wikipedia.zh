> 本文内容由[Das U-Boot](https://zh.wikipedia.org/wiki/Das_U-Boot)转换而来。


**Das U-Boot** 是一個主要用於[嵌入式系统](../Page/嵌入式系统.md "wikilink")的[開機載入程式](../Page/啟動程式.md "wikilink")，可以支援多種不同的[計算機系統結構](https://zh.wikipedia.org/wiki/計算機系統結構 "wikilink")，包括[PPC](../Page/PowerPC.md "wikilink")、[ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")、[AVR32](https://zh.wikipedia.org/wiki/AVR32 "wikilink")、[MIPS](https://zh.wikipedia.org/wiki/MIPS_architecture "wikilink")、[x86](https://zh.wikipedia.org/wiki/x86_architecture "wikilink")、[68k](https://zh.wikipedia.org/wiki/68k "wikilink")、[Nios與](https://zh.wikipedia.org/wiki/Nios_embedded_processor "wikilink")[MicroBlaze](https://zh.wikipedia.org/wiki/MicroBlaze "wikilink")。這也是一套在[GNU通用公共許可證之下發布的](https://zh.wikipedia.org/wiki/GNU通用公共許可證 "wikilink")[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。

Das U-Boot可以在x86電腦上建構，但這部x86電腦必須安裝有可支援特定平台結構的交互發展GNU[工具鏈](https://zh.wikipedia.org/wiki/軟體開發工具 "wikilink")，例如[crosstool](http://www.kegel.com/crosstool)、[Embedded Linux Development Kit](http://www.denx.de/wiki/DULG/ELDK) (ELDK)或[OSELAS.Toolchain](https://web.archive.org/web/20080125024412/http://www.pengutronix.de/oselas/toolchain/index_en.html)。

## 功能

### 支援的檔案系統

  - [Cramfs](https://zh.wikipedia.org/wiki/Cramfs "wikilink")
  - [ext2](https://zh.wikipedia.org/wiki/ext2 "wikilink")
  - [FAT](https://zh.wikipedia.org/wiki/File_Allocation_Table "wikilink")
  - [FDOS](https://zh.wikipedia.org/wiki/FDOS "wikilink")
  - [JFFS2](https://zh.wikipedia.org/wiki/JFFS2 "wikilink")
  - [ReiserFS](../Page/ReiserFS.md "wikilink")
  - [UBIFS](../Page/UBIFS.md "wikilink")
  - [YAFFS2](https://zh.wikipedia.org/wiki/YAFFS2 "wikilink")

### 歷史

這個計畫起源於 Magnus Damm.\[1\] 在 8xx PowerPC 架構下寫的[開機載入程式](../Page/啟動程式.md "wikilink")： **8xxROM**。1999 年十月，Wolfgang Denk 將計畫移轉到 SourceForge.net，但 SourceForge.net 不允許數字開頭的專案名稱，所以改名為 **PPCBoot**。PPCBoot 在 2000年 7 月 19 日第一次公開發布 0.4.1 版。

## 參考

## 外部連結

  - [Das U-Boot專案首頁](http://www.denx.de/wiki/U-Boot/WebHome)

[Category:BIOS](https://zh.wikipedia.org/wiki/Category:BIOS "wikilink") [Category:SourceForge專案](https://zh.wikipedia.org/wiki/Category:SourceForge專案 "wikilink")

1.  [PPCBoot Homepage: Authors](http://ppcboot.sourceforge.net/#authors)