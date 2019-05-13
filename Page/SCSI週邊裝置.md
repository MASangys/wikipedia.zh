底下這些描述是在SCSI命令裡面Inquiry命令的Inquiry data的SCSI Peripheral Device
Type這個欄位的定義。

## SCSI Peripheral Device Type

o 00h - 直接存取裝置（direct-access device，像磁碟機）
o 01h - 循序存取裝置（sequential-access device，像軟碟機）
o 02h - 列印裝置(printer device)
o 03h - 處理器裝置(processor device)
o 04h - 一次寫入裝置(write-once device)
o 05h - 光碟機(CDROM device)
o 06h - 掃描器(scanner device)
o 07h - 光學可讀寫裝置（optical memory
device，像一些[CD-RAM](../Page/CD-RAM.md "wikilink")）
o 08h - 多媒體點唱機（medium Changer
投幣式點唱機<span style="text-decoration: underline;">jukeboxes</span>）
o 09h - 通訊裝置(communications device)
o 0Ah-0Bh - defined by ASC IT8 (Graphic arts pre-press devices)
o 0Ch - 磁碟陣列控制裝置（Storage array controller
device，像[RAID](../Page/RAID.md "wikilink")）
o 0Dh - [機殼管理裝置](../Page/機殼管理裝置.md "wikilink")(Enclosure services
device)
o 0Eh - Simplified direct-access device (e.g., magnetic disk)
o 0Fh - Optical card reader/writer device
o 10h - Reserved for bridging expanders
o 11h - Object-based Storage Device
o 12h - Automation/Drive Interface
o 13h-1Dh - 保留(reserved)
o 1Eh - Well known logical unit
o 1Fh - unknown or no device type

[Category:SCSI](https://zh.wikipedia.org/wiki/Category:SCSI "wikilink")