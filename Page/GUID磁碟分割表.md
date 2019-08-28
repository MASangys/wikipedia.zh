**GUID磁碟分割表**（**[GUID](https://zh.wikipedia.org/wiki/GUID "wikilink") Partition Table**，[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")：**GPT**）是一个實體[硬盘](../Page/硬盘.md "wikilink")的[分区表的结构布局的标准](https://zh.wikipedia.org/wiki/分区表 "wikilink")。它是[可扩展固件接口](https://zh.wikipedia.org/wiki/可扩展固件接口 "wikilink")（UEFI）标准（被[Intel用于替代个人计算机的](https://zh.wikipedia.org/wiki/Intel "wikilink")[BIOS](../Page/BIOS.md "wikilink")）的一部分，被用于替代[BIOS](../Page/BIOS.md "wikilink")系统中的一32bits来存储逻辑块地址和大小信息的[主開機紀錄](https://zh.wikipedia.org/wiki/主開機紀錄 "wikilink")（MBR）分区表。对于那些扇区为512字节的磁盘，[MBR分区表不支持容量大于](https://zh.wikipedia.org/wiki/MBR "wikilink")2.2[TB](https://zh.wikipedia.org/wiki/terabyte "wikilink")（2.2×10<sup>12</sup>[字节](../Page/字节.md "wikilink")）\[1\]的[分区](https://zh.wikipedia.org/wiki/分区 "wikilink")，然而，一些硬盘制造商（诸如希捷和西部数据）注意到这个局限性，并且将他们的容量较大的磁盘升级到4KB的[扇区](https://zh.wikipedia.org/wiki/扇区 "wikilink")，这意味着MBR的有效容量上限提升到16 TiB。 这个看似“正确的”解决方案，在临时地降低人们对改进磁盘分配表的需求的同时，也给市场带来关于在有较大的块（[block](https://zh.wikipedia.org/wiki/block "wikilink")）的设备上从BIOS启动时，如何最佳的划分磁盘分区的困惑。GPT分配64bits给逻辑块地址，因而使得最大分区大小在2<sup>64</sup>-1个扇区成为可能。对于每个扇区大小为512字节的磁盘，那意味着可以有9.4[ZB](https://zh.wikipedia.org/wiki/ZB "wikilink")（9.4×10<sup>21</sup>字节）或8 [ZiB个](https://zh.wikipedia.org/wiki/ZiB "wikilink")512字节（9,444,732,965,739,290,426,880字节或18,446,744,073,709,551,615（2<sup>64</sup>-1）个扇区×512（2<sup>9</sup>）字节每扇区）\[2\]\[3\]。

截止至2010年，大多数操作系统对GPT均有所支持，尽管包括Mac OS X和Windows在内的一些仅支持在EFI基础上自GPT分区启动，见[\#操作系统支持](https://zh.wikipedia.org/wiki/#操作系统支持 "wikilink")。 [GUID_Partition_Table_Scheme.svg](https://zh.wikipedia.org/wiki/File:GUID_Partition_Table_Scheme.svg "fig:GUID_Partition_Table_Scheme.svg")

## 特点

在MBR硬盘中，分区信息直接存储于[主引导记录](../Page/主引导记录.md "wikilink")（MBR）中（主引导记录中还存储着系统的[引导程序](https://zh.wikipedia.org/wiki/引导程序 "wikilink")）。但在GPT硬盘中，分区表的位置信息储存在GPT头中。但出于[兼容性](../Page/兼容性.md "wikilink")考虑，硬盘的第一个扇区仍然用作MBR，之后才是GPT头。

跟现代的MBR一样，GPT也使用[逻辑区块位址](https://zh.wikipedia.org/wiki/逻辑区块位址 "wikilink")（LBA）取代了早期的[CHS寻址方式](https://zh.wikipedia.org/wiki/柱面-磁头-扇区 "wikilink")。传统MBR信息存储于LBA 0，GPT头存储于LBA 1，接下来才是分区表本身。64位[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[操作系统](../Page/操作系统.md "wikilink")使用16,384字节（或32[扇区](https://zh.wikipedia.org/wiki/扇区 "wikilink")）作为GPT分区表，接下来的LBA 34是硬盘上第一个分区的开始。

[苹果公司曾经警告说](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")：\[4\]“不要假定所有设备的块大小都是512字节。”一些现代的存储设备如[固态硬盘](../Page/固态硬盘.md "wikilink")可能使用1024字节的块，一些[磁光盘](https://zh.wikipedia.org/wiki/磁光盘 "wikilink")（MO）可能使用2048字节的扇区（但是磁光盘通常是不进行分区的）。一些硬盘生产商在计划生产4096字节一个扇区的硬盘，但截至2010年初，这种新硬盘使用[固件对操作系统伪装成](https://zh.wikipedia.org/wiki/固件 "wikilink")512字节一个扇区。\[5\]

使用英特尔架构的[苹果机也使用GPT](https://zh.wikipedia.org/wiki/苹果机 "wikilink")。

为了减少分区表损坏的风险，GPT在硬盘最后保存了一份分区表的副本。

## 传统MBR (LBA 0)

在GPT分区表的最开头，出于兼容性考虑仍然存储了一份传统的MBR，用来防止不支持GPT的硬盘管理工具错误识别并破坏硬盘中的数据，这个MBR也叫做保护MBR。在支持从GPT启动的[操作系统](../Page/操作系统.md "wikilink")中，这里也用于存储第一阶段的启动代码。在这个MBR中，只有一个标识为0xEE的分区，以此来表示这块硬盘使用GPT分区表。不能识别GPT硬盘的操作系统通常会识别出一个未知类型的分区，并且拒绝对硬盘进行操作，除非用户特别要求删除这个分区。这就避免了意外删除分区的危险。另外，能够识别GPT分区表的操作系统会检查保护MBR中的分区表，如果分区类型不是0xEE或者MBR分区表中有多个项，也会拒绝对硬盘进行操作。

在使用MBR/GPT混合分区表的硬盘中，这部分存储了GPT分区表的一部分分区（通常是前四个分区），可以使不支持从GPT启动的操作系统从这个MBR启动，启动后只能操作MBR分区表中的分区。如[Boot Camp就是使用这种方式启动Windows](https://zh.wikipedia.org/wiki/Boot_Camp "wikilink")。

## 分区表头（LBA 1）

分区表头定义了硬盘的可用空间以及组成分区表的项的大小和数量。在使用64位[Windows Server 2003的机器上](../Page/Windows_Server_2003.md "wikilink")，最多可以创建128个分区，即分区表中保留了128个项，其中每个都是128字节。（EFI标准要求分区表最小要有16,384字节，即128个分区项的大小）

分区表头还记录了这块硬盘的[GUID](https://zh.wikipedia.org/wiki/GUID "wikilink")，记录了分区表头本身的位置和大小（位置总是在LBA 1）以及备份分区表头和分区表的位置和大小（在硬盘的最后）。它还储存着它本身和分区表的[CRC32校验](https://zh.wikipedia.org/wiki/CRC32 "wikilink")。固件、引导程序和操作系统在启动时可以根据这个校验值来判断分区表是否出错，如果出错了，可以使用软件从硬盘最后的备份GPT中恢复整个分区表，如果备份GPT也校验错误，硬盘将不可使用。所以GPT硬盘的分区表不可以直接使用16进制编辑器修改。

| 起始字节 | 长度   | 内容                                                                                                                         |
| ---- | ---- | -------------------------------------------------------------------------------------------------------------------------- |
| 0    | 8字节  | 签名（"EFI PART", 45 46 49 20 50 41 52 54）                                                                                    |
| 8    | 4字节  | 修订（在1.0版中，值是00 00 01 00）                                                                                                   |
| 12   | 4字节  | 分区表头的大小（单位是字节，通常是92字节，即5C 00 00 00）                                                                                        |
| 16   | 4字节  | 分区表头（第0－91字节）的[CRC32校验](https://zh.wikipedia.org/wiki/CRC32 "wikilink")，在计算时，把这个字段作为0处理，需要计算出分区序列的CRC32校验后再计算本字段           |
| 20   | 4字节  | 保留，必须是0                                                                                                                    |
| 24   | 8字节  | 当前LBA（这个分区表头的位置）                                                                                                           |
| 32   | 8字节  | 备份LBA（另一个分区表头的位置）                                                                                                          |
| 40   | 8字节  | 第一个可用于分区的LBA（主分区表的最后一个LBA + 1）                                                                                             |
| 48   | 8字节  | 最后一个可用于分区的LBA（备份分区表的第一个LBA − 1）                                                                                            |
| 56   | 16字节 | 硬盘GUID（在[类UNIX系统中也叫](https://zh.wikipedia.org/wiki/类UNIX "wikilink")[UUID](https://zh.wikipedia.org/wiki/UUID "wikilink")） |
| 72   | 8字节  | 分区表项的起始LBA（在主分区表中是2）                                                                                                       |
| 80   | 4字节  | 分区表项的数量                                                                                                                    |
| 84   | 4字节  | 一个分区表项的大小（通常是128）                                                                                                          |
| 88   | 4字节  | 分区序列的CRC32校验                                                                                                               |
| 92   | \*   | 保留，剩余的字节必须是0（对于512字节LBA的硬盘即是420个字节）                                                                                        |

分区表头的格式

主分区表和备份分区表的头分别位于硬盘的第二个扇区（LBA 1）以及硬盘的最后一个扇区。备份分区表头中的信息是关于备份分区表的。

## 分区表项（LBA 2–33）

GPT分区表使用简单而直接的方式表示分区。一个分区表项的前16字节是分区类型[GUID](https://zh.wikipedia.org/wiki/GUID "wikilink")。例如，[EFI系统分区的GUID类型是](https://zh.wikipedia.org/wiki/EFI系统分区 "wikilink")`{C12A7328-F81F-11D2-BA4B-00A0C93EC93B}`。接下来的16字节是该分区唯一的GUID（这个GUID指的是该分区本身，而之前的GUID指的是该分区的类型）。再接下来是分区起始和末尾的64位LBA编号，以及分区的名字和属性。

| 起始字节 | 长度   | 内容                                                                           |
| ---- | ---- | ---------------------------------------------------------------------------- |
| 0    | 16字节 | 分区类型GUID                                                                     |
| 16   | 16字节 | 分区GUID                                                                       |
| 32   | 8字节  | 起始LBA（[小端序](https://zh.wikipedia.org/wiki/小端序 "wikilink")）                   |
| 40   | 8字节  | 末尾LBA                                                                        |
| 48   | 8字节  | 属性标签（如：`60`表示“只读”）                                                           |
| 56   | 72字节 | 分区名（可以包括36个[UTF-16](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")（小端序）字符） |

GPT分区表项的格式

## 操作系统支持

### 类Unix操作系统

<table>
<thead>
<tr class="header">
<th><p>操作系统</p></th>
<th><p>版本</p></th>
<th><p>平台</p></th>
<th><p>读写支持</p></th>
<th><p>启动支持</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a></p></td>
<td><p>7.0以后</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/IA-32" title="wikilink">IA-32</a>、<a href="https://zh.wikipedia.org/wiki/x86-64" title="wikilink">x86-64</a>、<a href="https://zh.wikipedia.org/wiki/ARM架构" title="wikilink">ARM</a></p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中，可以同时使用GPT和MBR分区标识。</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Linux.md" title="wikilink">Linux</a></p></td>
<td><p>大多数x86架构的<a href="../Page/Linux发行版.md" title="wikilink">Linux发行版</a><br />
<a href="../Page/Fedora.md" title="wikilink">Fedora</a> 8+、<a href="../Page/Ubuntu.md" title="wikilink">Ubuntu</a> 8.04+[6]</p></td>
<td><p>IA-32、x86-64</p></td>
<td></td>
<td></td>
<td><p>诸如gdisk、<a href="../Page/GNU_Parted.md" title="wikilink">GNU Parted</a>、<ref>{{cite web</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/macOS" title="wikilink">macOS</a></p></td>
<td><p>10.4.0以后（一些功能要到10.4.6以后）[7]</p></td>
<td><p>IA-32、x86-64、<a href="../Page/PowerPC.md" title="wikilink">PowerPC</a></p></td>
<td></td>
<td></td>
<td><p>只有搭载因特尔芯片的计算机支持GPT启动。</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/MidnightBSD.md" title="wikilink">MidnightBSD</a></p></td>
<td><p>0.4-CURRENT以后</p></td>
<td><p>IA-32、x86-64</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中，可以同时使用GPT和MBR分区标识。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Solaris.md" title="wikilink">Solaris</a></p></td>
<td><p>Solaris 10以后</p></td>
<td><p>IA-32、x86-64、<a href="../Page/SPARC.md" title="wikilink">SPARC</a></p></td>
<td></td>
<td></td>
<td><p>[8]</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/HP-UX.md" title="wikilink">HP-UX</a></p></td>
<td><p>HP-UX 11.20以后</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/IA-64" title="wikilink">IA-64</a></p></td>
<td></td>
<td></td>
<td><p>[9]</p></td>
</tr>
</tbody>
</table>

### 32位Windows

<table>
<caption>Microsoft Windows历代32位版本的GPT支持详情[10]</caption>
<thead>
<tr class="header">
<th><p>系统版本</p></th>
<th><p>发售日期</p></th>
<th><p>平台</p></th>
<th><p>读写支持</p></th>
<th><p>启动支持</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a></p></td>
<td><p>2001-10-25</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/IA-32" title="wikilink">IA-32</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a></p></td>
<td><p>2003-04-24</p></td>
<td><p>IA-32</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_Server_2003#SP1" title="wikilink">Windows Server 2003 SP1</a></p></td>
<td><p>2005-03-30</p></td>
<td><p>IA-32</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a></p></td>
<td><p>2006-07-22</p></td>
<td><p>IA-32</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a></p></td>
<td><p>2008-02-27</p></td>
<td><p>IA-32</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_7" title="wikilink">Windows 7</a></p></td>
<td><p>2009-10-22</p></td>
<td><p>IA-32</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_8" title="wikilink">Windows 8</a></p></td>
<td><p>2012-08-01</p></td>
<td><p>IA-32</p></td>
<td></td>
<td><p>[11]</p></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_8.1.md" title="wikilink">Windows 8.1</a></p></td>
<td><p>2013-08-27</p></td>
<td><p>IA-32</p></td>
<td></td>
<td><p>[12]</p></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_10.md" title="wikilink">Windows 10</a></p></td>
<td><p>2015-07-29</p></td>
<td><p>IA-32</p></td>
<td></td>
<td><p>[13]</p></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
</tbody>
</table>

### 64位Windows

<table>
<caption>Microsoft Windows历代64位版本的GPT支持详情[14]</caption>
<thead>
<tr class="header">
<th><p>系统版本</p></th>
<th><p>发售日期</p></th>
<th><p>平台</p></th>
<th><p>读写支持</p></th>
<th><p>启动支持</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Windows_XP_Professional_x64_Edition.md" title="wikilink">Windows XP Professional x64 Edition</a><br />
<a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a></p></td>
<td><p>2005-04-25[15]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/x64" title="wikilink">x64</a></p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003</a></p></td>
<td><p>2005-04-25</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/IA-64" title="wikilink">IA-64</a></p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista</a></p></td>
<td><p>2006-07-22</p></td>
<td><p>x64</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a></p></td>
<td><p>2008-02-27</p></td>
<td><p>x64</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Server_2008.md" title="wikilink">Windows Server 2008</a></p></td>
<td><p>2008-02-27</p></td>
<td><p>IA-64</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_7" title="wikilink">Windows 7</a></p></td>
<td><p>2009-10-22</p></td>
<td><p>x64</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Server_2008_R2.md" title="wikilink">Windows Server 2008 R2</a></p></td>
<td><p>2009-10-22</p></td>
<td><p>IA-64</p></td>
<td></td>
<td></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Windows_8" title="wikilink">Windows 8</a><br />
<a href="../Page/Windows_Server_2012.md" title="wikilink">Windows Server 2012</a></p></td>
<td><p>2012-08-01</p></td>
<td><p>x64</p></td>
<td></td>
<td><p>[16]</p></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_8.1.md" title="wikilink">Windows 8.1</a></p></td>
<td><p>2013-08-27</p></td>
<td><p>x64</p></td>
<td></td>
<td><p>[17]</p></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_10.md" title="wikilink">Windows 10</a></p></td>
<td><p>2015-07-29</p></td>
<td><p>x64</p></td>
<td></td>
<td><p>[18]</p></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Server_2016.md" title="wikilink">Windows Server 2016</a></p></td>
<td><p>2016-10-12</p></td>
<td><p>x64</p></td>
<td></td>
<td><p>[19]</p></td>
<td><p>在MBR/GPT混合硬盘中优先使用MBR。</p></td>
</tr>
</tbody>
</table>

## 分区类型GUID

<table>
<thead>
<tr class="header">
<th><p>相關操作系統</p></th>
<th><p>分区类型</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/GUID" title="wikilink">GUID</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>（None）</em></p></td>
<td><p>未使用</p></td>
<td><p><code>00000000-0000-0000-0000-000000000000</code></p></td>
</tr>
<tr class="even">
<td><p>MBR分区表</p></td>
<td><p><code>024DEE41-33E7-11D3-9D69-0008C781F39F</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/EFI系统分区" title="wikilink">EFI系统分区</a></p></td>
<td><p><code>C12A7328-F81F-11D2-BA4B-00A0C93EC93B</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/BIOS引导分区" title="wikilink">BIOS引导分区</a></p></td>
<td><p><code>21686148-6449-6E6F-744E-656564454649</code> |-</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Windows</a></p></td>
</tr>
<tr class="odd">
<td><p>基本数据分区</p></td>
<td><p><code>EBD0A0A2-B9E5-4433-87C0-68B6B72699C7</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/逻辑软盘管理工具" title="wikilink">逻辑软盘管理工具元数据分区</a></p></td>
<td><p><code>5808C8AA-7E8F-42E0-85D2-E1E90434CFB3</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>逻辑软盘管理工具数据分区</p></td>
<td><p><code>AF9B60A0-1431-4F62-BC68-3311714A69AD</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Windows恢复环境</p></td>
<td><p><code>DE94BBA4-06D1-4D40-A16A-BFD50179D6AC</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/IBM通用并行文件系统" title="wikilink">IBM通用并行文件系统</a>（GPFS）分区</p></td>
<td><p><code>37AFFC90-EF7D-4e96-91C3-2D7AE055B174</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/HP-UX.md" title="wikilink">HP-UX</a></p></td>
<td><p>数据分区</p></td>
<td><p><code>75894C1E-3AEB-11D3-B7C1-7B03A0000000</code></p></td>
</tr>
<tr class="odd">
<td><p>服务分区</p></td>
<td><p><code>E2A1E728-32E3-11D6-A682-7B03A0000000</code> |-</p></td>
<td><p><a href="../Page/Linux.md" title="wikilink">Linux</a></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/RAID.md" title="wikilink">RAID</a>分区</p></td>
<td><p><code>A19D880F-05FC-4D3B-A006-743F0F84911E</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/交换分区" title="wikilink">交换分区</a></p></td>
<td><p><code>0657FD6D-A4AB-43C4-84E5-0933C84B4F4F</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/邏輯捲軸管理員" title="wikilink">邏輯捲軸管理員</a>（LVM）分区</p></td>
<td><p><code>E6D6D379-F507-44C2-A23C-238F2A3DF928</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>保留</p></td>
<td><p><code>8DA63339-0007-60C0-C436-083AC8230908</code> |-</p></td>
<td><p><a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a></p></td>
</tr>
<tr class="even">
<td><p>数据分区</p></td>
<td><p><code>516E7CB4-6ECF-11D6-8FF8-00022D09712B</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>交换分区</p></td>
<td><p><code>516E7CB5-6ECF-11D6-8FF8-00022D09712B</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/UFS" title="wikilink">UFS分区</a></p></td>
<td><p><code>516E7CB6-6ECF-11D6-8FF8-00022D09712B</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>分区</p></td>
<td><p><code>516E7CB8-6ECF-11D6-8FF8-00022D09712B</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/ZFS.md" title="wikilink">ZFS</a>分区</p></td>
<td><p><code>516E7CBA-6ECF-11D6-8FF8-00022D09712B</code> |-</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/macOS" title="wikilink">macOS</a><br />
<a href="https://zh.wikipedia.org/wiki/Darwin_(作業系統)" title="wikilink">Darwin</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/苹果公司" title="wikilink">Apple</a> <a href="https://zh.wikipedia.org/wiki/Unix_File_System" title="wikilink">UFS</a> 容器</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/APFS" title="wikilink">APFS</a> 卷宗容器<br />
APFS 型 FileVault 卷宗容器</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/ZFS.md" title="wikilink">ZFS</a></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Apple RAID 分区</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Apple RAID 离线分区</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Apple 开机卷宗 (恢复模式)</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Apple 卷标</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Apple TV 恢复分区</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Apple Core Storage 卷宗容器<br />
HFS+ 型 FileVault 卷宗容器</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>SoftRAID_Status</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>SoftRAID_Scratch</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>SoftRAID_Volume</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>SoftRAID_Cache</p></td>
<td><p>|-</p></td>
<td><p><a href="../Page/Solaris.md" title="wikilink">Solaris</a></p></td>
</tr>
<tr class="even">
<td><p>根分区</p></td>
<td><p><code>6A85CF4D-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>交换分区</p></td>
<td><p><code>6A87C46F-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>备份分区</p></td>
<td><p><code>6A8B642B-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>/usr分区</p></td>
<td><p><code>6A898CC3-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>/var分区</p></td>
<td><p><code>6A8EF2E9-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>/home分区</p></td>
<td><p><code>6A90BA39-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>备用扇区</p></td>
<td><p><code>6A9283A5-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>保留分区</p></td>
<td><p><code>6A945A3B-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>6A9630D1-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>6A980767-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>6A96237F-1DD2-11B2-99A6-080020736631</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>6A8D2AC7-1DD2-11B2-99A6-080020736631</code> |-</p></td>
<td><p><a href="../Page/NetBSD.md" title="wikilink">NetBSD</a></p></td>
<td><p>交换分区</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/FFS" title="wikilink">FFS分区</a></p></td>
<td><p><tt>49F48D5A-B10E-11DC-B99B-0019D1879648</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>分区</p></td>
<td><p><tt>49F48D82-B10E-11DC-B99B-0019D1879648</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>RAID分区</p></td>
<td><p><tt>49F48DAA-B10E-11DC-B99B-0019D1879648</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>concatenated分区</p></td>
<td><p><tt>2DB519C4-B10F-11DC-B99B-0019D1879648</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>加密分区</p></td>
<td><p><tt>2DB519EC-B10F-11DC-B99B-0019D1879648</p></td>
<td></td>
</tr>
</tbody>
</table>

1.  本表中的GUID使用[小端序表示](https://zh.wikipedia.org/wiki/小端序 "wikilink")。例如，EFI系統分區的GUID在這裡寫成C12A7328-F81F-11D2-BA4B-00A0C93EC93B但實際上它對應的16字節的序列是28 73 2A C1 1F F8 D2 11 BA 4B 00 A0 C9 3E C9 3B——只有前3部分的字節序被交換了。

2.  Linux和Windows的数据分区使用相同的GUID。

3.  Solaris系统中`/usr`分区的GUID在Mac OS X上被用作普通的[ZFS](../Page/ZFS.md "wikilink")分区。

4.  具体定义见[src/sys/sys/disklabel_gpt.h](http://cvsweb.netbsd.org/bsdweb.cgi/src/sys/sys/disklabel_gpt.h?only_with_tag=MAIN)。NetBSD的GUID在单独定义之前曾经使用过FreeBSD的GUID。

## MBR与GPT互相转换

### Windows操作系统

在命令行窗口执行diskpart命令，再执行list disk命令，列出计算机上所有硬盘及其盘号。执行“select disk 盘号”命令，选中想要操作的磁盘。命令“detail disk”。执行命令convert gpt即可。

另一种方法是在Win10 1703及更高版本，执行命令“mbr2gpt /convert /disk:盘号 /allowfullos”

## 参见

  - [主引导记录](../Page/主引导记录.md "wikilink")
  - [GUID](https://zh.wikipedia.org/wiki/GUID "wikilink")
  - [硬盘分区](../Page/硬盘分区.md "wikilink")
  - [可扩展固件接口](https://zh.wikipedia.org/wiki/可扩展固件接口 "wikilink")
  - [BIOS](../Page/BIOS.md "wikilink")

## 外部链接

  - Microsoft TechNet: [Disk Sectors on GPT Disks](https://web.archive.org/web/20080321063028/http://technet2.microsoft.com/windowsserver/en/library/bdeda920-1f08-4683-9ffb-7b4b50df0b5a1033.mspx?mfr=true)
  - Microsoft TechNet: [Using GPT Drives on x86-64 Systems](http://www.microsoft.com/whdc/device/storage/GPT-on-x64.mspx)
  - Apple Developer Connection: [Secrets of the GPT](http://developer.apple.com/technotes/tn2006/tn2166.html)
  - [Make the most of large drives with GPT and Linux](http://www.ibm.com/developerworks/linux/library/l-gpt/)
  - GPT fdisk : [Information on Hybrid GPT-MBR, Converting MBR and BSD disklabels to GPT and Booting from GPT disks](http://rodsbooks.com/gdisk/)
  - Microsoft : [FAQs on Using GPT disks in Windows](http://www.microsoft.com/whdc/device/storage/GPT_FAQ.mspx)
  - [A forum post describing steps to modify existing Windows x64 BIOS-MBR based installations to boot from UEFI-GPT](https://web.archive.org/web/20091120100508/http://www.insanelymac.com/forum/lofiversion/index.php/t186440.html)

## 备注

## 参考资料

[Category:BIOS](https://zh.wikipedia.org/wiki/Category:BIOS "wikilink")

1.

2.
3.

4.

5.

6.

7.

8.

9.

10.

11. [32位Windows 8支持通过UEFI从GPT硬盘启动。](https://technet.microsoft.com/zh-cn/library/hh824898.aspx)

12.
13.
14.
15.

16.
17.
18.
19.