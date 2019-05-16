**智慧平台管理介面**（Intelligent Platform Management
Interface）原本是一種[Intel架構的企業系統的週邊設備所採用的一種工業標準](https://zh.wikipedia.org/wiki/Intel "wikilink")。IPMI亦是一個開放的免費標準，使用者無需支付額外的費用即可使用此標準。

IPMI 能夠橫跨不同的作業系統、韌體和硬體平台，可以智慧型的監視、控制和自動回報大量伺服器的運作狀況，以降低伺服器系統成本。

## 發展歷史

1998年Intel、DELL、HP及NEC共同提出IPMI規格，可以透過網路遠端控制溫度、電壓。

2001年IPMI從1.0版改版至1.5版，新增 PCI Management Bus等功能。

2004年Intel發表了IPMI 2.0的規格，能夠向下相容IPMI 1.0及1.5的規格。新增了Console
Redirection，並可以通過Port、Modem以及Lan遠端管理伺服器，並加強了安全、VLAN 和刀鋒伺服器的支援性。

2014年2月11日，發表了v2.0 revision 1.1, 增加了IPv6的支持。

## 特性

IPMI獨立於作業系統外自行運作，並容許管理者即使在缺少作業系統或系統管理軟體、或受監控的系統關機但有接電源的情況下仍能遠端管理系統。IPMI也能在作業系統啟動後活動，與系統管理功能一併使用時還能提供加強功能，IPMI只定義架構和介面格式成為標準，詳細實作可能會有所不同。

IPMI
1.5版和之後的版本能透過直接串接、[區域網路](https://zh.wikipedia.org/wiki/區域網路 "wikilink")、或到遠端送出警報，系統管理員能使用IPMI訊息去查詢平台狀態、查看硬體的日誌、或透過相同連線從遠端控制台發出其他要求，這個標準也為系統定義了一個警報機制送出[簡單網路管理協定](../Page/简单网络管理协议.md "wikilink")([SNMP](../Page/简单网络管理协议.md "wikilink"))
平台事件圈套(PET, Platform Event Trap)。

## 頻帶和頻帶外

IPMI實作的通常被稱作 頻帶
管理LAN連線，這個連線應用一個介於BMC和基板[NIC之間的](../Page/网卡.md "wikilink")[SMBUS介面](https://zh.wikipedia.org/wiki/系統管理匯流排 "wikilink")。

這個方案有降低成本的優點，但也限制了頻寬-足夠主控台(Console)的[重定向但不足夠傳訊視訊](https://zh.wikipedia.org/wiki/重定向_\(計算機\) "wikilink")。換句話說，當遠端的電腦關機了，系統管理員能透過IPMI和應用主控台存取。這個對一些重要的功能而言已經足夠，如：確認事件log、存取[BIOS設定執行開啟](../Page/BIOS.md "wikilink")、關閉、開機循環，然而，更進階的功能，如：遠端重安裝作業系統，就需要方法應用一個專用
LAN 連線。

## 組成

[IPMI-Block-Diagram.png](https://zh.wikipedia.org/wiki/File:IPMI-Block-Diagram.png "fig:IPMI-Block-Diagram.png")''
介面\]\] IPMI包含了一個以 基板管理控制器()
為主的控制器和其他分佈在不同系統模組（被稱為「衛星」控制器）的管理控制器，衛星控制器包含了相同的架構透過IPMB(Intelligent
Platform Management Bus/Bridge) - 一個[I²C](../Page/I²C.md "wikilink")
(Inter-Integrated Circuit)加強實作的系統介面連結到基板管理控制器(BMC)，基板管理控制器(BMC) 也能與
遠端管理控制協定(RMCP) - 一個在此規格內的特殊有線協定一同被管理。

一個 [:實地替換單元](https://zh.wikipedia.org/wiki/:實地替換單元 "wikilink")()
擁有可替換設備的詳細清單（如：供應者ID、製造商），一個 感應器資料記錄(SDR)
則記錄了板上個別感應器提供的屬性資料，例如：板上可能包含了感應溫度、風扇速、電流的感應器。

## 版本歷史

IPMI的標準規範的演進如下:

  - v1.0是在1998年9月16號公布的，其為原始版本
  - v1.5則於2001年3月1號發行，新增如下:

`   1.IPMI over LAN,`
`   2.IPMI over Serial/Modem,`
` 和3.LAN Alerting. 三種功能。`

  - v2.0是在2004年2月14號發行，新增如下:

`   1.Serial over LAN,`
`   2.Group Managed Systems,`
`   3.Enhanced Autentication,`
`   4.Firmware Firewall,`
` 和5.VLAN Support. 五種功能。`

  - v2.0版在2014年2月11號發布了1.1版的調整，改動如下:

`   1.amended for errata(修正勘誤),`
`   2.clarifications(易混淆的澄清),`
`   3.addenda(新增附錄), `
` 和4.IPv6定址的支援。`

## 参考文献

  - [IPMI Home Website](http://www.intel.com/design/servers/ipmi/)
    (includes [specification
    download](http://www.intel.com/design/servers/ipmi/spec.htm))

## 另請參見

  - (also known as [Lights out
    management](https://zh.wikipedia.org/wiki/带外管理 "wikilink") (LOM))

  - (MCTP, a low-level protocol used for controlling hardware
    components)

  - ([HP](https://zh.wikipedia.org/wiki/Hewlett-Packard "wikilink")'s
    implementation of IPMI)

  - [Dell DRAC](../Page/Dell_DRAC.md "wikilink")
    ([Dell](https://zh.wikipedia.org/wiki/Dell "wikilink")'s
    implementation of IPMI)

  - ([IBM](../Page/IBM.md "wikilink")'s out-of-band management products,
    including IPMI implementations)

  - MergePoint Embedded Management Software (OEM IPMI firmware used in
    e.g. [IBM](../Page/IBM.md "wikilink"),
    [Lenovo](https://zh.wikipedia.org/wiki/Lenovo "wikilink"),
    [DELL](https://zh.wikipedia.org/wiki/DELL "wikilink") and
    [Gigabyte](https://zh.wikipedia.org/wiki/Gigabyte_Technology "wikilink")
    motherboards)

  - ('s out of band management product and OEM IPMI firmware used in
    e.g. [ASUS](https://zh.wikipedia.org/wiki/ASUS "wikilink"),
    [Tyan](https://zh.wikipedia.org/wiki/Tyan "wikilink"),
    [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") and
    [Supermicro](https://zh.wikipedia.org/wiki/Supermicro "wikilink")
    motherboards)

  - [Intel Active Management
    Technology](https://zh.wikipedia.org/wiki/Intel主动管理技术 "wikilink")
    (AMT, Intel's out-of-band management product, as an alternative to
    IPMI)

  -  (ASF, another platform management standard)

  -  (DASH, another platform management standard)

  - on some SPARC machines

  - (WfM)

## 外部連結

  - [GNU FreeIPMI](http://www.gnu.org/software/freeipmi)
  - <http://openipmi.sourceforge.net>
  - [A Comparison of common IPMI Software open-source
    projects](http://ipmiutil.sf.net/docs/ipmisw-compare.htm)
  - [coreIPM Project](http://www.coreipm.com) - Firmware for IPMI
    baseboard management (open source)
  - [DCMI](http://www.intel.com/technology/product/DCMI/index.htm) - an
    extension to IPMI 2.0 designed for large data centres
  - [Intel IPMI Home
    Website](http://www.intel.com/content/www/us/en/servers/ipmi/ipmi-home.html)
  - [ipmiutil](http://ipmiutil.sf.net/)
  - [IPMItool](http://ipmitool.sf.net/)
  - [OpenIPMI](http://openipmi.sf.net)
  - [SuperMicro IPMI Client web
    download](http://www.supermicro.com/products/nfo/SMS_IPMI.cfm)
  - [SuperMicro IPMI Client ftp
    download](ftp://ftp.supermicro.com/utility/IPMIView/)

## 参见

  - [Lights out
    management](https://zh.wikipedia.org/wiki/Lights_out_management "wikilink")
    (LOM)
  - [Wired for
    Management](https://zh.wikipedia.org/wiki/Wired_for_Management "wikilink")
    (WfM)
  - DMTF [Systems Management Architecture for Server
    Hardware](https://zh.wikipedia.org/wiki/Systems_Management_Architecture_for_Server_Hardware "wikilink")
    (SMASH)
  - DMTF [Alert Standard
    Format](https://zh.wikipedia.org/wiki/Alert_Standard_Format "wikilink")
    (ASF)

[Category:计算机硬件标准](https://zh.wikipedia.org/wiki/Category:计算机硬件标准 "wikilink")

[Category:Computer_hardware_standards](https://zh.wikipedia.org/wiki/Category:Computer_hardware_standards "wikilink")
[Category:System_administration](https://zh.wikipedia.org/wiki/Category:System_administration "wikilink")
[Category:Out-of-band_management](https://zh.wikipedia.org/wiki/Category:Out-of-band_management "wikilink")
[Category:1998_introductions](https://zh.wikipedia.org/wiki/Category:1998_introductions "wikilink")
[Category:系統管理](https://zh.wikipedia.org/wiki/Category:系統管理 "wikilink")
[Category:主板外管理](https://zh.wikipedia.org/wiki/Category:主板外管理 "wikilink")