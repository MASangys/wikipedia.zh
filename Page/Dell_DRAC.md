> 本文内容由[Dell DRAC](https://zh.wikipedia.org/wiki/Dell_DRAC)转换而来。


**Dell Remote Access Controller**或**DRAC**是一個基於頻帶外（out-of-band management）對伺服器進行管理的平台，由Dell公司所開發。該平台可以是外插卡或者是以晶片的形式出現，以晶片的形式則稱之為**iDRAC**。

DRAC曾是Adrian White的發明專利\[1\]，其提供基於瀏覽器（browser-based）或是指令列（command-line）的兩種介面選項，可以兩者擇一或是兩者兼具，對於伺服器的硬體進行管理與監控。

## 特性

該控制器有獨立的處理器、記憶體、網路連線以及存取系統匯流排的能力。較為關鍵的功能包括： 電源管理（power management）、虛擬媒體存取（virtual media access）以及遠端主控台（remote console）的能力，這些都可以支援網頁瀏覽器（web browser）或是指令列介面（command-line interface）的方式互動。這給予了系統管理員（system administrator）可以透過該方式從遠端對於伺服器進行設定組態的動作的能力，這對於上百台伺服器的管理者來說無疑是一大福音。

帶有DRAC介面的基板管理控制器（baseboard management controller，BMC）是根據智慧平台管理介面（Intelligent Platform Management Interface，IPMI）第2.0版的標準而設計的。IPMI 2.0允許IPMI 頻帶外界面的使用，例如IPMI Over LAN的功能\[2\]。

## 版本

| 型號                      | 家族 | 年分   | 伺服器                          | 說明                                                                            |
| ----------------------- | -- | ---- | ---------------------------- | ----------------------------------------------------------------------------- |
| DRAC II\[3\]            | 2  | 1999 | na                           | 額外插卡的形式                                                                       |
| DRAC III\[4\]           | 3  | 2002 |                              |                                                                               |
| DRAC iV\[5\]            | 4  | 2005 | Generation 8                 |                                                                               |
| DRAC 5\[6\]             | 5  | 2006 | Generation 9                 | 額外插卡的形式，virtual console必須運行在 Firefox 1.5上                                     |
| iDRAC 6 embedded        | 6  | 2008 | 用於刀鋒伺服器（blade-servers）的第一個版本 | 以晶片的形式出現於所有Dell的伺服器中                                                          |
| iDRAC 6 Express         | 6  | 2008 |                              | standard on all midrange systems                                              |
| iDRAC 6 Express         | 6  | 2008 | 刀鋒伺服器\[7\]                   |                                                                               |
| iDRAC 6 Enterprise\[8\] | 6  | 2008 |                              | additional software features in combination with express; vFlash SD card slot |
| iDRAC 6 Enterprise\[9\] | 6  | 2008 | blade                        | additional software features in combination with express                      |
| iDRAC 7\[10\]           | 7  | 2012 | Generation 12                | new licensing model, hardware based, NTP support                              |
| iDRAC 8\[11\]           | 8  | 2014 | Generation 13                | quick sync, NFC configuration, UEFI secure boot                               |

## 参考文献

[Category:戴爾產品](https://zh.wikipedia.org/wiki/Category:戴爾產品 "wikilink")

1.
2.
3.  Manual for the [Dell Open Manage Remote Assistant Card II](http://support.dell.com/support/edocs/software/smdrac/index.htm) , 14 December 1999. Visited 7 March 2012
4.  Dell support website [DRAC 3 manuals](http://support.dell.com/support/edocs/software/smdrac3/drac3/index.htm) , visited 7 March 2012
5.  Dell manuals for [DRAC 4](http://support.dell.com/support/edocs/software/smdrac3/drac4/index.htm) , 9 August 2004, Visited 7 March 2012
6.  Dell manuals for [DRAC 5](http://support.dell.com/support/edocs/software/smdrac3/drac5/index.htm) , 7 June 2006, Visited 7 March 2012
7.  Dell manuals for [iDRAC 6 for blade servers](http://support.dell.com/support/edocs/software/smdrac3/idrac/idrac32modular/index.htm) , visited 7 March 2012
8.  Manual for [iDRAC 6 for monolithic servers](http://support.dell.com/support/edocs/software/smdrac3/idrac/idrac18mono/index.htm) , visited 7 March 2012
9.  Manual for [IDrac 6 for blade servers](http://support.dell.com/support/edocs/software/smdrac3/idrac/idrac33modular/index.htm) , visited 7 March 2012
10. Dell manuals for [iDRAC 7](http://support.dell.com/support/edocs/software/smdrac3/idrac7/10000/en/index.htm) , version 1.0, 6 March 2012, visited 7 March 2012
11. Dell manual for [iDRAC 8](http://en.community.dell.com/cfs-file/__key/telligent-evolution-components-attachments/13-4491-00-00-20-44-06-07/Introducing-iDRAC8-with-Lifecycle-Controller-for-the-13th-Generation-PowerEdge-Servers.pdf?forcedownload=true), version 1.0, September 2014, visited 22 April 2015