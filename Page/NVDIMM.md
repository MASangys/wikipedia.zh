**非易失性双列直插式内存模块**（，缩写**NVDIMM**）是一种用于计算机的[随机存取存储器](../Page/随机存取存储器.md "wikilink")。[非揮發性記憶體](../Page/非揮發性記憶體.md "wikilink")是即使断电也能保留其内容的内存，这包括意外断电、或正常关机。双列直插式表示该内存使用[DIMM](../Page/DIMM.md "wikilink")封装。NVDIMM在某些情况下可以改善应用程序的性能\[1\]、数据安全性和系统崩溃恢复时间。这增强了[固态硬盘](../Page/固态硬盘.md "wikilink")（SSD）的耐用性和可靠性。\[2\]\[3\]

## 类型

JEDEC标准组织有三种型号的NVDIMM实现：\[4\]

  - **NVDIMM-F**：直接采用闪存作为内存的DIMM\[5\]\[6\]。系统用户需要将存储DIMM与传统DRAM DIMM配对。NVDIMM-F已于2014年出产。
  - **NVDIMM-N**：一个同时采用闪存与传统DRAM的DIMM模块。计算机直接访问传统DRAM。在发生电源故障时，模块将数据从易失性的传统DRAM复制到非易失性的闪存，并在恢复供电时复制回来。它只需使用一个小型的备份电源。
  - **NVDIMM-P**规范预计于2018年由JEDEC发布\[7\]。它将使用[ReRAM技术作为计算机的主内存](https://zh.wikipedia.org/wiki/可變電阻式記憶體 "wikilink")，并使用[DDR5接口](../Page/DDR5_SDRAM.md "wikilink")。NVDIMM-P有非易失性DRAM，并可以存取外部的面向块（闪存）驱动器作为[内存高速缓存](../Page/缓存.md "wikilink")。

非标准的NVDIMM实现：

  - **NVDIMM-X**：一个同时采用闪存与易失性DRAM的DDR4 DIMM，由Xitore开发。

截至2012年11月，大多数NVDIMM使用[NAND闪存作为非易失性存储器](../Page/闪存.md "wikilink")。\[8\]新兴的内存技术旨在实现无需缓存或两个单独存储器的NVDIMM。[英特尔](../Page/英特尔.md "wikilink")和[美光公司已经宣布采用NVDIMM](https://zh.wikipedia.org/wiki/美光公司 "wikilink")-F的[3D XPoint](../Page/3D_XPoint.md "wikilink") [PCM技术](https://zh.wikipedia.org/wiki/相變化記憶體 "wikilink")。\[9\][索尼](../Page/索尼.md "wikilink")和也已宣布基于[ReRAM技术的NVDIMM](https://zh.wikipedia.org/wiki/可變電阻式記憶體 "wikilink")-N产品。\[10\]2015年，[三星和](https://zh.wikipedia.org/wiki/三星集团 "wikilink")[Netlist宣布了一个NVDIMM](https://zh.wikipedia.org/wiki/网表 "wikilink")-P产品，可能基于Z-nand。\[11\]

## 备份电源

NVDIMM从备份电源（BBU）[DIMM](../Page/DIMM.md "wikilink")演变而来，它使用一个[後備電池](../Page/後備電池.md "wikilink")为易失性存储器维持最长72小时的供电。但是，计算机组件中使用[电池](../Page/电池.md "wikilink")并不受欢迎，因为这寿命有限、可能被视为，并且含有违背[RoHS标准的](../Page/危害性物質限制指令.md "wikilink")[重金属](../Page/重金属.md "wikilink")。

如果模块包含非易失性存储器，当计算机主电源发生故障时，只需很短时间的备份电源，即可使模块将数据从易失性存储器复制到非易失性存储器。因此，现代NVDIMM使用板载[超级电容存储电能](../Page/双电层电容器.md "wikilink")。

## 接口

一些服务器厂商（如Supermicro）仍然制造采用[DDR3接口的产品](../Page/DDR3_SDRAM.md "wikilink")，不过2014、2015年的标准化工作（如[JEDEC](../Page/JEDEC.md "wikilink")\[12\]和[ACPI](../Page/高级配置与电源接口.md "wikilink")）\[13\]都已基于[DDR4接口](../Page/DDR4_SDRAM.md "wikilink")。

## 使用

BBU DIMM最初设计是为用作[RAID](../Page/RAID.md "wikilink") HBA（主机总线适配器）或系统的高速缓存，以使高速缓存中的数据能在电源故障后存留。NVDIMM已领先[RAID](../Page/RAID.md "wikilink")应用进入[数据中心](../Page/数据中心.md "wikilink")和[雲端運算](../Page/雲端運算.md "wikilink")的快速存储设备及内存中处理领域。\[14\]

## 参见

  - （NVRAM）

  - [非揮發性記憶體](../Page/非揮發性記憶體.md "wikilink")（NVM）

## 参考资料

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink") [Category:非易失性存储器](https://zh.wikipedia.org/wiki/Category:非易失性存储器 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [1](https://www.jedec.org/news/pressreleases/jedec-ddr5-nvdimm-p-standards-under-development)
8.  <http://www.storage-switzerland.com/Blog/Entries/2012/10/2_Does_DRAM_Storage_Still_Make_Sense.html>
9.
10.
11. [Netlist And Samsung Partner To Deliver NVDIMM-P](http://www.storagereview.com/netlist_and_samsung_partner_to_deliver_nvdimmp)
12.
13.
14.