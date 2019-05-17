**trim命令**（[ATA命令集中称为](../Page/ATAPI.md "wikilink")**TRIM**，中称为**UNMAP**），它使[操作系统能通知](../Page/操作系统.md "wikilink")[固态硬盘](../Page/固态硬盘.md "wikilink")（SSD）哪些数据块已不再考虑使用，可以被内部擦除。\[1\]

Trim在SSD被推出后很快被跟着推出。因为SSD的底层操作与硬盘驱动器显著不同，操作系统处理诸如删除和格式化等操作的典型方式将导致SSD上的写操作不可预期的逐步性能退化。\[2\]Trim（意为修整、修剪、裁剪）使SSD能更有效地处理[垃圾收集](https://zh.wikipedia.org/wiki/写入放大 "wikilink")，否则将减慢在未来对所涉及块的写入操作。\[3\]

尽管在引入Trim前已有将某些驱动器“重置”为新状态的工具，但它们也将删除该驱动器上的所有数据，从而使这些工具和技术不能用于持续性优化。\[4\]在2014年，许多SSD有内部的后台垃圾收集机制，它们与修整工作相独立。尽管这在不支持修整的操作系统上也成功地保持了性能，它存在增加[写入放大和闪存单元磨损的相关缺点](https://zh.wikipedia.org/wiki/写入放大 "wikilink")。\[5\]

## 快閃記憶體磁碟機特有的問題

因为许多[文件系统以标记数据块为](../Page/文件系统.md "wikilink")“未使用”来处理删除操作，\[6\]\[7\]存储介质（传统硬盘、SSD）通常不知道哪个扇区/页是真在使用，哪些可被认作空闲空间。因此与重写操作不同，删除将不涉及对数据所在扇区的物理写入。由于通用SSD不了解文件系统结构（例如未使用的块/扇区的列表），存储介质无法获知哪些块已经变为可用。这使工具能从传统的机械[硬盘上恢复文件](../Page/硬盘.md "wikilink")，\[8\]因为尽管操作系统报告文件已被“删除”，文件所在的扇区只是在操作系统之后进行写入时作为空闲空间的扇区，从而有效使操作变得像重写操作。对于机械磁盘来说，这与写入空扇区没有区别，但因为SSD最底层的一些特性，与将数据写入空页面相比，重写会有显着的开销，从而潜在地削弱写入性能。\[9\]

SSD在闪存单元中通常以4至16[kB的分组来存储数据](../Page/千字节.md "wikilink")，并将分组组合成128至512页的块。例如，512kB以4kB为一页存储在128页的块中。[NAND闪存单元只能在处于空状态时写入](../Page/闪存.md "wikilink")。如果它们可能包含数据，则执行写操作前必须擦除其内容。一次SSD写入操作可以只完成单个页，但由于硬件限制，擦除命令始终会影响整个块；\[10\]因此将数据写入到SSD上的空页非常快，而写入存在数据的页就会显著变慢。由于页被再次写入前需要擦除单元，但擦除只能对整个块，改写将按“读取、擦除、修改、写入”的方式完成；\[11\]整个块的内容会先存储在缓存中，然后在SSD中擦除整个块，再将改写的页写入到缓存的块，最后再将更新的块写入闪存介质。这种现象也称[写入放大](https://zh.wikipedia.org/wiki/写入放大 "wikilink")。\[12\]\[13\]

## 操作

TRIM命令使操作系统得以通知SSD哪个页不再包含有效的数据。对于文件删除操作，操作系统会将文件删除标记为可用于新数据，然后向SSD发送TRIM命令。在Trim后，在新的数据写入闪存页面时，SSD不保留块的任何内容，从而实现更少的写入放大（更少的写入）、更高的写入吞吐量（不需要读取、擦除、修改），从而增加驱动器寿命。

不同的SSD实现的命令有所不同，因此性能可能也有所差异。

Trim为不可逆地擦除数据，无法恢复；\[14\]这不同于机械硬盘中被删除的数据可能被。

## 实现

### 操作系统支持

Trim仅在支持它的操作系统上有效。下表列出了各个重要的操作系统支持该命令的首个版本。此外，在TRIM命令添加到ATA标准之前设计的旧款固态驱动器需要更新固件（如果有）才能支持Trim，否则将忽略这个新命令。

<table>
<thead>
<tr class="header">
<th><p>操作系统</p></th>
<th><p>支持始自</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/DragonFly_BSD.md" title="wikilink">DragonFly BSD</a></p></td>
<td><p><span style="display:none">2011-05</span>2011年5月[15]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a></p></td>
<td><p><span style="display:none">2010-07</span>8.1 - 2010年7月[16]</p></td>
<td><p>在8.1中的块设备层中添加了支持。文件系统支持在FreeBSD 8.3和FreeBSD 9中添加，随<a href="../Page/Unix文件系统.md" title="wikilink">Unix文件系统</a>（UFS）而来。[17]<a href="../Page/ZFS.md" title="wikilink">ZFS修整支持在FreeBSD</a> 9.2中添加。[18][19]FreeBSD 10支持在软件<a href="../Page/RAID.md" title="wikilink">RAID配置上修整</a>。[20]</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/NetBSD.md" title="wikilink">NetBSD</a></p></td>
<td><p><span style="display:none">2012-10</span>2012年10月[21]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Linux内核.md" title="wikilink">Linux</a></p></td>
<td><p><span style="display:none">2008-12-25</span>2.6.28–2008年12月25日[22]</p></td>
<td><p>最初在2.6.28中添加了对FTL <a href="../Page/闪存.md" title="wikilink">NAND闪存设备的discard</a>（丢弃）操作符的支持。对ATA TRIM命令的支持在2.6.33中添加。[23]</p>
<p>并非所有文件系统都能使用trim。可以自动发出修剪请求的文件系统有<a href="../Page/Ext4.md" title="wikilink">Ext4</a>[24]、<a href="../Page/Btrfs.md" title="wikilink">Btrfs</a>[25]、<a href="../Page/FAT.md" title="wikilink">FAT</a>、、<a href="../Page/日志文件系统.md" title="wikilink">JFS</a>[26]和<a href="../Page/XFS.md" title="wikilink">XFS</a>。[27]但是由于性能问题，在受支持SSD上进行定期修剪默认情况下已被禁用[28]。[29]<a href="../Page/Ext3.md" title="wikilink">Ext3</a>、和提供<a href="../Page/Ioctl.md" title="wikilink">Ioctl来执行离线修剪</a>。TRIM规范称支持修剪特定范围列表，但截至内核3.0，修剪仅能较慢地逐个调用单个范围。[30]</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/MacOS.md" title="wikilink">MacOS</a></p></td>
<td><p><span style="display:none">2011-06-23</span>10.6.8–2011年6月23日[31]</p></td>
<td><p>尽管<a href="../Page/AHCI.md" title="wikilink">AHCI块设备驱动程序在</a>10.6.6 (10J3210)中得到了显示设备是否支持TRIM操作的功能[32]，该功能本身仍不可用，直至10.6.8暴露通过IOStorageFamily执行TRIM操作，以及文件系统（HFS+）的支持。直到10.10.4，Mac OS X只为苹果品牌的SSD原生启用TRIM；第三方实用程序可使其适用于其他品牌。旧的第三方TRIM驱动程序在Yosemite更新时已停止工作。[33] 现已有更新的适用于OS X Yosemite的驱动程序。[34][35] 在Mac OS X<a href="https://support.apple.com/en-us/HT204928">更新10.10.4</a>中，苹果公司添加了一个命令行使用工具trimforce，它可以用于为第三方SSD启用TRIM。[36]</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Microsoft Windows</a></p></td>
<td><p><span style="display:none">2009-10</span>Windows 7和Windows Server 2008 R2 - 2009年10月[37][38]</p></td>
<td><p>Windows 7最初支持的TRIM仅适用于包括<a href="../Page/高技術配置.md" title="wikilink">ATA和</a><a href="../Page/SATA.md" title="wikilink">SATA的AT</a> Attachment系列中的驱动器，并不对任何其他包括Storport PCI-Express SSD设备支持此命令，即使即使设备本身将接受该命令。[39]已确认Windows 7上<a href="../Page/AHCI.md" title="wikilink">AHCI和旧有IDE</a>/ATA模式下的原生微软驱动支持TRIM命令。[40]Windows 8及之后版本的Windows操作系统支持基于<a href="https://zh.wikipedia.org/wiki/NVMe" title="wikilink">NVMe的PCI</a> Express SSD的trim，以及来自SATA的TRIM命令完全模拟的unmap命令，用于使用SCSI驱动程序堆栈的设备。微软已为Windows 7发布一个<a href="https://support.microsoft.com/kb/2990941">KB2990941</a>更新，这在使用DISM集成到Windows 7安装程序时增加NVM Express的支持，包括对PCIe SSD设备的TRIM。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/OpenSolaris.md" title="wikilink">OpenSolaris</a></p></td>
<td><p><span style="display:none">2010-07</span>2010年7月[41]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Android.md" title="wikilink">Android</a></p></td>
<td><p><span style="display:none">2013-7</span>4.3[42] - 24 July 2013[43]</p></td>
<td><p>每24小时自动运行<code>fstrim</code>，仅在设备已空闲至少1小时并且电量80%（如果已连接充电器则30%）时执行。[44]</p></td>
</tr>
</tbody>
</table>

### RAID问题

，大多数基于硬件的[RAID技术未实现TRIM命令的支持](../Page/RAID.md "wikilink")。但是，软件实现的RAID通常提供了TRIM支持。

Windows：

Windows 10为SSD RAID卷在配置一个RAID卷时通过“优化驱动器”选项提供了TRIM支持。

Mac OS：

macOS RAID驱动程序不支持TRIM。自Mac OS X 10.7至macOS 10.12.x的所有版本均是如此。

对于使用第三方SoftRAID®应用程序的RAID（0,1,4,5和10）卷支持TRIM，包括使用非苹果品牌SSD设备的TRIM支持。
（注：非苹果品牌的SSD设备必须使用终端命令“sudo trimforce enable”来启动TRIM）

Linux：

2011年1月以后的Linux内核中的发布版本已实现BIOS辅助的“假硬件RAID”支持，并且现在通行来自RAID阵列上的文件系统的任何TRIM请求。\[45\]

不同于dmraid，Linux的常规目的软件RAID系统有实验性的基于批处理（而不是在文件删除时实时）的TRIM，当系统配置为定期在RAID
1阵列上的文件系统上运行mdtrim实用工具（包括ext3等没有原生TRIM支持的文件系统）。\[46\]在Linux的稍晚版本（例如Red
Hat Enterprise Linux 6.5和beyond）中
mdraid支持实时、实际传递TRIM命令，而不是作为一个批处理作业。\[47\]

但请注意，[紅帽公司建议不要在大多数RAID技术的SSD上使用软件RAID](../Page/紅帽公司.md "wikilink")
1、4、5和6，因为大多数RAID管理实用工具（例如Linux的[mdadm](https://zh.wikipedia.org/wiki/mdadm "wikilink")）在初始化期间会在设备上写入所有块以确保校验和（或RAID
1/10情况下的驱动器到驱动器验证）运作正常，而这导致SSD认为除备用区域以外的所有块都在使用中，从而显著降低性能。\[48\]

另一方面，Red
Hat推荐在SSD上为[LVM](https://zh.wikipedia.org/wiki/邏輯捲軸管理員 "wikilink")
RAID使用RAID 1或RAID
10，因为这些级别支持TRIM（在Linux术语中称为"discard"），并且LVM实用工具在创建时不会写入所有块到RAID
1或RAID 10卷。

在2010年3月的一小段时间内，用户被误导相信[英特尔快速存储技术](../Page/英特尔快速存储技术.md "wikilink")（RST）9.6驱动程序支持RAID卷上的TRIM，但后来英特尔澄清说，TRIM支持[AHCI模式和RAID模式的BIOS设置](../Page/AHCI.md "wikilink")，但不支持RAID卷的驱动器。\[49\]

截至2012年8月，英特尔确认，使用快速存储技术（RST）11.2驱动程序的7系列芯片组支持微软Windows 7中的RAID
0的TRIM。\[50\]虽然英特尔没有确认支持6系列芯片组，RAID
0卷上的TRIM已展示为在Z68、P67和X79芯片组上可用，通过由硬件发烧友修改的RAID。\[51\]据推测，缺乏对6系列芯片组的官方支持是由于验证成本\[52\]或企图鼓励消费者升级\[53\]，而不是出于技术原因。

在使用X79芯片组的主板上需要修改选项ROM的例外是制造商添加了ROM开关；这需要RST和RST-E
ROM存在于BIOS/UEFI内。这允许使用RST ROM而不是RST-E
ROM，从而允许TRIM工作。\[54\]英特尔指出，使用与ROM版本相同的驱动程序可以实现最佳性能。例如，如果BIOS/UEFI具有11.0.0.0m选项ROM，则应使用11.x版本的驱动程序。\[55\]

### 为不支持的操作系统使用

在使用不支持自动TRIM的文件系统时，某些实用工具可以手动发送Trim命令。通常它们将确定哪些块为空闲，然后将该列表以一系列的Trim命令传递给驱动器。这些实用程序可从各制造商（例如Intel、\[56\]G.Skill\[57\]）或作为一般实用程序（例如Linux的自v9.17起，\[58\]\[59\]或者如上所述的mdtrim）。

## 硬件支持

### ATA

TRIM命令规范\[60\]已被标准化为AT Attachment接口标准的一部分，由（INCITS）的技术委员会T13所领导。\[61\]
TRIM根据DATA SET
MANAGEMENT（数据集管理）命令（操作码06h）实现，ACS-2规范草案。\[62\]ATA标准被并行（IDE、PATA）和串口（SATA）ATA硬件所支持。

原版ATA TRIM命令的缺点是它被定义为不可排队命令，因此不能轻松地与正常的、排队的读和写操作混合。SATA
3.1引入了一个排队的TRIM命令来纠正这一点。\[63\]

ATA IDENTIFY DEVICE命令返回的SATA Words 69和169定义了不同类型的TRIM。

  - 非确定性TRIM：TRIM后每个对[邏輯區塊位址](../Page/邏輯區塊位址.md "wikilink")（LBA）的读取命令可能返回不同的数据。
  - 确定性TRIM（DRAT）：TRIM后对LBA的所有读取命令都返回相同的数据，或者变为确定的。
  - TRIM（RZAT）后确定性读零：TRIM后对LBA的所有读取命令都将返回零。

在SATA字105中有额外信息，描述驱动器可以在每个数据集管理命令（DATA SET
MANAGEMENT）支持最多多少个512字节的数据块。通常此值默认为8（或4kB），但许多驱动器将其减少到1，以满足微软Windows硬件要求对TRIM的部分——该命令完成时间不应超过20
ms或者8 ms × （LBA范围项的数量），且两者中的较大者应始终小于600 ms。\[64\]

各LBA范围被称为一个LBA范围条目，并由八个字节表示。
LBA由LBA范围条目的前6个字节表示，范围长度是由剩下两个字节表示的一个从零开始的计数器。如果两个字节组成的范围长度为零，那么LBA范围条目应视作填充而丢弃。\[65\]这意味着以512字节为TRIM块范围支持的设备，该最大值为64个32
MB，也就是2 GB。如果设备在SATA字105处设为8，则它应该能在单个TRIM（数据集管理）命令中修整16GB。

### SCSI

[SCSI提供了UNMAP命令](../Page/小型计算机系统接口.md "wikilink")（TRIM的完全模拟），以及带有UNMAP标志集的WRITE
SAME命令（10和16个变量）。\[66\]

### SD/MMC

[多媒體記憶卡和](../Page/多媒體記憶卡.md "wikilink")[SD](../Page/SD卡.md "wikilink")
ERASE（CMD38）命令提供了与ATA TRIM命令类似的功能，但它要求擦除的块用0或1重写。eMMC
4.5进一步定义了一个“discard”（丢弃）子操作，从而更紧密的配合ATA
TRIM，因为丢弃的块的内容可以被认为是不确定的（即“不在乎”的）。

## 缺点

  - 在使用加密时，TRIM命令的相关信息将揭露哪些块正在使用，哪些没有。\[67\]
  - TRIM命令的原始版本已被定义为非排队命令，因此执行不当可能造成大量的错误执行。例如，如果它在操作系统的每个删除命令后发出，该命令的非排队性质将要求驱动程序先等待所有未完成的命令完成，然后发出TRIM命令，最后再继续正常命令。TRIM可能需要很长时间才能完成，这取决于SSD中的固件，并还可能触发[垃圾收集周期](https://zh.wikipedia.org/wiki/写入放大 "wikilink")。这种缺陷可以用定期执行批量TRIM的解决方案来最小化，而不是在每次文件删除时执行修剪，批量处理任务可以在系统利用率最小时调度。这项TRIM缺点已在[Serial
    ATA修订](../Page/SATA.md "wikilink")3.1中解决，其中引入了排队的TRIM命令。\[68\]\[69\]
  - 排队的TRIM命令已在多款设备中涉及严重的数据损坏，最显著的是Micron的M500、\[70\]Crucial的M500、以及Samsung
    8\*\*系列。\[71\]在2015年7月1日，Linux操作系统在这些设备上的数据损坏已得到确认。\[72\]

这些设备已被列入Linux内核中libata-core.c的黑名单，从而强制发送非排队的TRIM命令到这些设备，而不是排队的TRIM命令：\[73\]

  - Micron M500，所有固件版本（仅MU07之前有此问题，但Linux尚未跟进）
  - Crucial M500，所有固件版本，包括工厂重新认证的SSD（仅MU07之前有此问题，但Linux尚未跟进）
  - Micron M510，固件版本MU01
  - Micron M550，固件版本MU01
  - Crucial M550，固件版本MU01
  - Crucial MX100，固件版本MU01
  - 三星SSD 8\*\*系列，所有固件版本

此文件也已将SuperSSpeed S238列入常规TRIM的黑名单，因为发出TRIM会导致错误的块丢失数据。\[74\]\[75\]

libata-core.c还有一个列出子系统维护者已确认正确实现DRAT和RZAT标志（flags）的SSD，这不同于许多忽略它们的驱动器。白名单中的设备如下：

  - Crucial多款SSD
  - Intel多款SSD（不包括Intel SSD 510）
  - Micron多款SSD
  - 三星多款SSD
  - 希捷多款SSD\[76\]

## 参见

  -
## 参考资料

## 外部链接

  - [*From write() down to flash
    chips*](https://web.archive.org/web/20100227234254/http://www.devwhy.com/blog/2009/8/4/from-write-down-to-the-flash-chips.html)
    – An explanation on how the TRIM command lets SSDs erase data not
    used by the filesystem
  - [*TRIM Command White
    Paper*](http://www.maximumpc.com/article/features/white_paper_trim_command)
    – A white paper explaining the command's purpose and actions
  - Fusion-io Patent ["Apparatus, system, and method for redundant write
    caching"](https://www.google.com/patents/US8706968?dq=%22Fusion-io%22+trim&hl=en&sa=X&ei=ZNWlU4ugOc_doAShvoHwCQ&ved=0CCsQ6AEwAjgU)

[Category:固态计算机存储](https://zh.wikipedia.org/wiki/Category:固态计算机存储 "wikilink")

1.

2.

3.  Shimpi, Anand Lal. (2009-03-18). p. 10.

4.  Shimpi, Anand Lal. (2009-03-18). p. 11.

5.

6.

7.  Shimpi, Anand Lal. (2009-03-18). p. 7.

8.

9.

10. Shimpi, Anand Lal. (2009-03-18). p. 5.

11. Shimpi, Anand Lal. (2009-03-18). p. 8.

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

39. [Geoff Gasior (2012)](http://techreport.com/articles.x/22663) OCZ's
    RevoDrive 3 X2 240GB solid-state drive

40.

41.

42.

43. ["Android 4.3 announced, rolling out to Nexus devices
    today"](http://www.theverge.com/2013/7/24/4550234/android-4-3-announcement).*[The
    Verge](../Page/The_Verge.md "wikilink")*. 24 July 2013. Retrieved 24
    July 2013.

44.
45.

46.

47.

48.

49.

50.

51.

52.

53.

54.

55.

56.

57.

58.

59.

60.

61.

62.

63.

64.

65.

66.

67.

68. <http://www.sata-io.org/technology/6Gbdetails.asp>

69.

70.

71.

72.

73.

74.
75.

76.