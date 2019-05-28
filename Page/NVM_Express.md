**NVM
Express**（**NVMe**），或称**非易失性内存主机控制器接口规范**（，缩写：），是一个逻辑设备接口[规范](../Page/标准.md "wikilink")。它是與[AHCI類似的](../Page/AHCI.md "wikilink")、基於裝置邏輯接口的[匯流排傳輸協定規範](https://zh.wikipedia.org/wiki/匯流排 "wikilink")（相當於通讯协议中的[应用层](https://zh.wikipedia.org/wiki/应用层 "wikilink")），用于访问通过[PCI
Express](../Page/PCI_Express.md "wikilink")（PCIe）总线附加的[非揮發性記憶體介质](../Page/非揮發性記憶體.md "wikilink")（例如採用[快閃記憶體的](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")[固態硬碟機](../Page/固态硬盘.md "wikilink")），雖然理論上不一定要求PCIe匯流排協定。

NVM代表非揮發性記憶體（non-volatile
memory）的[首字母縮略字](../Page/首字母縮略字.md "wikilink")，这是固态硬盘（SSD）的常见的闪存形式。此規範主要是為基於快閃記憶體的存儲裝置提供一個低延時、內部並行化的原生界面規範，也為現代[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")、電腦平台及相關應用提供原生存儲並行化的支援\[1\]，令主機硬體和軟體可以充分利用固態存儲裝置的並列化存儲能力。相比此前[機械硬碟機](https://zh.wikipedia.org/wiki/硬碟機 "wikilink")（HDD）時代的[AHCI](../Page/AHCI.md "wikilink")，NVMe/NVMHCI降低了[I/O操作等待時間](https://zh.wikipedia.org/wiki/I/O "wikilink")、提升同一時間內的操作數、更大容量的操作隊列等。

依託於PCIe匯流排，NVMe裝置可適用於各種支援PCIe匯流排的物理插槽上，包括標準尺寸的PCIe（一般是4個PCIe通道）\[2\]、採用[U.2物理連接界面](https://zh.wikipedia.org/wiki/U.2 "wikilink")（SFF-8639）的2.5英寸/3.5英寸標準尺寸固態硬碟機、\[3\]\[4\][SATA
Express匯流排](../Page/SATA_Express.md "wikilink")（相容於PCIe）的裝置、[M.2規格擴展卡等](../Page/M.2.md "wikilink")。\[5\]

此規範由「Non-Volatile Memory Host Controller Interface Working
Group」（非揮發性記憶體主機控制器界面工作組）負責管理。

## 背景

历史上，大多数SSD使用如[SATA](../Page/SATA.md "wikilink")、[SAS或](../Page/串列SCSI.md "wikilink")[光纤通道等接口与计算机接口的](https://zh.wikipedia.org/wiki/光纤通道 "wikilink")[总线连接](../Page/总线.md "wikilink")。随着固态硬盘在大众市场上的流行，SATA已成为[个人电脑中连接SSD的最典型方式](../Page/个人电脑.md "wikilink")；但是，SATA的设计主要是作为[机械硬盘驱动器](../Page/硬盘.md "wikilink")（HDD）的接口，并随着时间的推移越来越难满足速度日益提高的SSD。\[6\]随着在大众市场的流行，许多固态硬盘的数据速率提升已经放缓。不同于机械硬盘，部分SSD已受到SATA最大[吞吐量的限制](../Page/吞吐量.md "wikilink")。

在NVMe出现之前，高端SSD只得以采用PCI
Express总线制造，但需使用非标准规范的接口。若使用标准化的SSD接口，[操作系统只需要一个驱动程序就能使用符合规范的所有SSD](../Page/操作系统.md "wikilink")。这也意味着每个SSD制造商不必用额外的资源来设计特定接口的驱动程序。\[7\]

截至2014年9月，在[光纤通道](https://zh.wikipedia.org/wiki/光纤通道 "wikilink")（FC）上使用NVMe的新标准也正在开发。\[8\]

截止2018年，NVMe包含NVMe、NVMe-MI以及NVMe-oF（NVMe over
Fabrics）三个细分协议，其中NVMe为主协议，规范了host对盘的读写、访问以及资源管理等功能，NVMe-MI主要包括带外管理相关的功能，NVMe-oF主要是基于NVMe的网络协议规范，可以将FC等网络协议与NVMe进行结合起来。同时，并且三个协议在协同演进，未来将会围绕NVMe形成一个从盘到存储系统的端到端生态。

## 历史

2009年Intel开始着手寻找[SATA的替代方案](../Page/SATA.md "wikilink")。SATA作为串行接口，采用AHCI规范，其已经成为制约SSD速度的瓶颈。AHCI只有1个命令队列，队列深度32.而NVMe可以有65535个命令队列，每个队列都可以深达65536个命令。NVMe也充分使用了MSI的2048个中断向量优势，延迟大大减小。

2011年有了1.0。最新的版本是1.2.1；最大带宽为11.6Gbps，约为1200MB/s。

2018年，基于NVMe的SSD已经可以突破15TB可用容量，读带宽达到6GB/s，100万IOPS（4KB随机读），同时保证微秒级延迟。\[9\]
產品規格：

  - 1.0e（2013年1月）
  - 1.1b（2014年7月）
  - 1.2（2014年11月）
  - 1.2a（2015年10月）
  - 1.2b（2016年6月）
  - 1.2.1（2016年6月）
  - 1.3（2017年5月）
  - 1.3a（2017年10月）
  - 1.3b（2018年5月）
  - 1.3c（2018年5月）

## 作業系統支援

[thumb|right|upright=2.0|Linux內核的存儲控制堆疊中，NVMe的資料路徑、不同層面下多重內部隊列的位置\[10\]](https://zh.wikipedia.org/wiki/File:IO_stack_of_the_Linux_kernel.svg "wikilink")

  - [9Front](https://zh.wikipedia.org/wiki/9Front "wikilink")
    2017年3月30日，NVMe驅動程式釋出並供使用\[11\]

<!-- end list -->

  - [Chrome OS](../Page/Chrome_OS.md "wikilink")
    2015年2月24日，加入NVMe驅動至內核和開機載入程式，可從NVMe裝置啟動Chrome OS\[12\]\[13\]

<!-- end list -->

  - [DragonFly BSD](../Page/DragonFly_BSD.md "wikilink")
    DragonFly 4.6開始內建NVMe驅動程式\[14\]

<!-- end list -->

  - [FreeBSD](../Page/FreeBSD.md "wikilink")
    Intel贊助開發的驅動程式已內建於FreeBSD的head、stable/9分支中。\[15\]\[16\]nvd(4)和nvme(4)驅動程式則是在10.2版FreeBSD中開始預設內建於其中。\[17\]

<!-- end list -->

  - [Haiku](../Page/Haiku.md "wikilink")
    Haiku已有驅動開發時程，但是目前仍未完成\[18\]

<!-- end list -->

  - [illumos](https://zh.wikipedia.org/wiki/illumos "wikilink")
    illumos於2014年10月15日獲得驅動程式支援\[19\]

<!-- end list -->

  - [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")
    iOS 9開始支援，首款配備了NVMe介面的裝置是[iPhone
    6S](https://zh.wikipedia.org/wiki/iPhone_6S "wikilink")/[6S
    Plus](https://zh.wikipedia.org/wiki/IPhone_6S_Plus "wikilink")，也是首款採用NVMe的行動裝置。物理介面和[UFS相同的採用](https://zh.wikipedia.org/wiki/UFS卡 "wikilink")[M-PHY
    PCIe](https://zh.wikipedia.org/wiki/PCIe "wikilink")。接下來[Apple推出的](https://zh.wikipedia.org/wiki/Apple_Inc. "wikilink")[iPad
    Pro和](https://zh.wikipedia.org/wiki/iPad_Pro "wikilink")[iPhone
    SE也採用了NVMe](https://zh.wikipedia.org/wiki/iPhone_SE "wikilink")\[20\]

<!-- end list -->

  - [Linux](../Page/Linux.md "wikilink")
    NVMe的驅動程式最早是英特爾提供的，適用於Linux的內核驅動程式模組。\[21\]\[22\]\[23\]這個模組在2012年3月19日整合到[Linux內核的主線驅動程式當中](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")，Linux內核3.3版開始內建支援而無需安裝額外模組。\[24\]
    NVMe采用了多队列设计，最高支持64k个队列。2014年1月19日的Linux內核
    3.13版開始，block层增加了multi-queue block
    layer，这一模块可以充分利用多核CPU和底层高速SSD硬件资源，主机CPU的I/O提交队列可以与SSD侧的提交队列进行绑定，即是说每个CPU核可以与SSD硬件的队列进行1：1或者n:m（比值取决于硬件设计）进行配置。对上次应用仍然是通用的块接口。从应用的角度，在某一个CPU
    Core上产生的IO请求，中断也会在此CPU Core处理,
    性能更优。在SSD性能不是瓶颈的情况下，应用的性能能够实现在多核环境下按照CPU
    Core的数量扩展，这点与AHCI的CPU单队列访问存储设备的机制有所不同。
    2015年4月12日發佈的Linux內核
    4.0版開始，VirtIO區塊層驅動程式，[SCSI驅動層](https://zh.wikipedia.org/wiki/SCSI "wikilink")（與[SATA驅動共用](../Page/SATA.md "wikilink")）、[回環裝置驅動](https://zh.wikipedia.org/wiki/回環裝置 "wikilink")（[loop
    device](https://zh.wikipedia.org/wiki/loop_device "wikilink")）
    UBI（[unsorted block
    images](https://zh.wikipedia.org/wiki/unsorted_block_images "wikilink")）驅動（供快閃記憶體實作區塊擦寫管理）以及[RBD驅動程式](https://zh.wikipedia.org/wiki/RBD_\(software\) "wikilink")（which
    exports
    [Ceph](https://zh.wikipedia.org/wiki/Ceph_\(software\) "wikilink")
    RADOS objects as block
    devices）都被修改，以適應及適配越來越多的NVMe裝置\[25\]\[26\]\[27\]

<!-- end list -->

  - [NetBSD](../Page/NetBSD.md "wikilink")
    NetBSD在2016年的開發版本中初步支援NVMe。\[28\]OpenBSD則是在其6.0版時釋出了NVMe的驅動程式。

<!-- end list -->

  - [OpenBSD](../Page/OpenBSD.md "wikilink")
    OpenBSD的NVMe驅動程式自2014年6月開始，由此前開發並釋出[USB](https://zh.wikipedia.org/wiki/USB_2.0 "wikilink")、[AHCI驅動程式的高級開發團隊負責](../Page/AHCI.md "wikilink")。\[29\]OpenBSD
    6.0開始正式支援。\[30\]

<!-- end list -->

  - [OS X/macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")
    Mac OS X 10.10.3（[OS X
    Yosemite](../Page/OS_X_Yosemite.md "wikilink")）開始支援NVMe。蘋果公司的[Retina
    MacBook和](https://zh.wikipedia.org/wiki/MacBook_\(Retina\) "wikilink")2016年發佈[MacBook
    Pro](../Page/MacBook_Pro.md "wikilink")，配備了使用NVMe的PCIe
    SSD作為主硬碟機使用。\[31\]

<!-- end list -->

  - [Solaris](../Page/Solaris.md "wikilink")
    Solaris自Oracle Solaris 11.2開始支援NVMe。\[32\]

<!-- end list -->

  - [VMware](../Page/VMware.md "wikilink")
    英特爾釋出了供VMWare使用的NVMe驅動程式，\[33\]vSphere
    6.0以及其後的版本中，均包含了該驅動程式，支援多種NVMe裝置。\[34\]在
    vSphere 6 update 1 更新中，VMWare的VSAN軟體模擬的存儲子系統也開始支援NVMe裝置。\[35\]

<!-- end list -->

  - [Windows](https://zh.wikipedia.org/wiki/微軟視窗 "wikilink")
    微軟在[Windows 8.1和](../Page/Windows_8.1.md "wikilink")[Windows Server
    2012
    R2開始](https://zh.wikipedia.org/wiki/Windows_Server_2012_R2 "wikilink")，原生支援NVMe裝置。\[36\]\[37\]同時也為[Windows
    7和](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Windows
    Server 2008
    R2提供原生驅動程式支援](../Page/Windows_Server_2008_R2.md "wikilink")（Windows
    7與Windows Server 2008 R2預設不支援NVMe，需由使用者自行下載獲取）。\[38\]
    除了微軟官方提供的驅動程式以外，[OpenFabrics
    Alliance也有維護一套開放原始碼的NVMe驅動程式](https://zh.wikipedia.org/wiki/OpenFabrics_Alliance "wikilink")，使用於Windows
    7、8、8.1、10以及Windows Server 2008 R2、2012、2012
    R2，這套驅動程式由數個加入了NVMe工作組的公司開發，包括[IDT](https://zh.wikipedia.org/wiki/IDT "wikilink")、英特爾以及[LSI](https://zh.wikipedia.org/wiki/LSI "wikilink")。\[39\]
    The current release is 1.5 from December 2016.\[40\]

## 參見

  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")
  - [M.2](../Page/M.2.md "wikilink")
  - [SATA Express](../Page/SATA_Express.md "wikilink")

## 參考資料

## 外部連結

  - 官方網站：
  - [LFCS: Preparing Linux for nonvolatile memory
    devices](https://lwn.net/Articles/547903/),
    [LWN.net](../Page/LWN.net.md "wikilink"), April 19, 2013, by
    Jonathan Corbet
  - [Multipathing PCI Express
    Storage](http://events.linuxfoundation.org/sites/events/files/slides/LinuxVault2015_KeithBusch_PCIeMPath.pdf),
    [Linux
    Foundation](https://zh.wikipedia.org/wiki/Linux_Foundation "wikilink"),
    March 12, 2015, by Keith Busch

[Category:计算机存储总线](https://zh.wikipedia.org/wiki/Category:计算机存储总线 "wikilink")
[Category:固态计算机存储](https://zh.wikipedia.org/wiki/Category:固态计算机存储 "wikilink")

1.  Compare:
2.
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
24.
25.
26.
27.
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
38.
39.
40. <https://svn.openfabrics.org/svnrepo/nvmewin/releases/>