在[计算机领域](https://zh.wikipedia.org/wiki/電腦運算 "wikilink")，**PSE-36**（，即**36位元页面大小扩展**）\[1\]是一个[x86处理器特性](https://zh.wikipedia.org/wiki/x86 "wikilink")，它可将[電腦數據存貯器](../Page/電腦數據存貯器.md "wikilink")的寻址能力从32位元扩展到36位元，允许寻址最多64 GB内存。\[2\]相较于[物理地址扩展](../Page/物理地址扩展.md "wikilink")（PAE）方法，PSE-36是解决4 GB内存瓶颈的更简单方案。它采用（PSE）模式和一个修改的页面目录表来映射4 MB的页到一个64 GB物理地址空间。PSE-36的缺点是，不同于PAE，它在4 GB以上的区域没有4 KB的页面粒度。

PSE-36随[Pentium II Xeon被引入到x](https://zh.wikipedia.org/wiki/Xeon "wikilink")86架构，并且最初被公布为“英特尔扩展服务器内存架构”\[3\]（有时缩写为ESMA\[4\]）的一部分，这个品牌也包括稍早一点的PAE（并且因此，只支持PAE的[Pentium Pro被宣传为仅具有ESMA的](https://zh.wikipedia.org/wiki/Pentium_Pro "wikilink")“子集支持”）

PSE-36的鼎盛时期比较短。PSE-36相较PAE的主要优势是，操作系统的内部组件几乎不需要重做，因此PSE-36被认为是一个合适的缓解措施 围绕[Windows NT 4.0企业版时间表的](../Page/Windows_NT_4.0.md "wikilink")。更新的微软操作系统（包括[Windows 2000](../Page/Windows_2000.md "wikilink")）只支持PAE。例如[Linux](../Page/Linux.md "wikilink")等部分操作系统完全跳过了PSE-36。\[5\]尽管如此，AMD和之后的英特尔选择在其64位处理器中提供最多40位的PSE支持（在下运行时）。

## 运行

### 检测

PSE-36的支持在[CPUID](../Page/CPUID.md "wikilink")结果之[特性位元中的EDX第](../Page/CPUID.md "wikilink")17位元（从0开始计数）表示。与纯PSE支持不同，它是由同一寄存器中的位元3指示。\[6\]\[7\]

### 激活和使用

就激活PSE-36而言，它没有一个单独的位元来开关PSE。至少处理器（根据CPUID标识）和芯片组支持PSE-36，直接启用PSE（通过设置位元4，即*PSE*， 系统寄存器的）就能允许大型的4 MB页（在64 GB范围内）以及普通的4 KB页（只能在常规的4 GB范围内）。

如果[CPU支持较新的PSE](../Page/中央处理器.md "wikilink")-36，使用[CPUID](../Page/CPUID.md "wikilink")指令检查判定，那么除了在PSE中使用的10位，还有4个位元用于指向大页面的页面目录项。这将允许大页面位于36位地址空间中。

页面目录项（PDE）中的PS位元（位元7）标示此项是一个页表（描述1024个4 KiB页面）还是一个4 MB页面。正常模式与PSE-36模式下的PDE结构如下：

| 31–22  | 21–17          | 16–13    | 12             | 11–9  | 8     | 7    | 6    | 5   | 4   | 3   | 2   | 1 | 0 |
| ------ | -------------- | -------- | -------------- | ----- | ----- | ---- | ---- | --- | --- | --- | --- | - | - |
| 非PSE   | 页表的基地址         | avail    | 0              | PS=0  | ign   | A    | PCD  | PWT | U   | W   | P   |   |   |
| PSE    | 页面帧地址的31..22位元 | 保留（必须为零） | PAT            | avail | 0     | PS=1 | D    | A   | PCD | PWT | U   | W | P |
| PSE-36 | 页面帧地址的31..22位元 | 保留（必须为零） | 页面帧地址的35..32位元 | PAT   | avail | 0    | PS=1 | D   | A   | PCD | PWT | U | W |

32位元寻址的页面目录项

1.  ；自[Pentium III起出现](https://zh.wikipedia.org/wiki/Pentium_III "wikilink")。对更早CPU必须为零。

2.  "“脏”位：如果存在对该页的写访问，CPU将其设为1。对于4 KiB页面，该标志存在于相应的页表项（PTE）中。

### 扩展到40位元

凭借在下运行时翻译PDE的位元20..13为页面基地址的位元39..32，[AMD在其](../Page/超威半导体.md "wikilink")[AMD64处理器中将此方案扩展为](../Page/X86-64.md "wikilink")40位元寻址。因此它只保留了位元21（必须为零）。但请注意，在[长模式下CR](https://zh.wikipedia.org/wiki/长模式 "wikilink")4.PSE被忽略，并且该模式下PSE式4 MB页面不可用。\[8\]在AMD64传统模式下使用PSE 4 MB页面可寻址的物理内存总量因此是1024 GB。\[9\]汤姆·谢利（Tom Shanley）称此扩展为PSE-40，尽管该名称没有出现在AMD官方文档中。

最新的英特尔手册（2014年2月）也表明在PSE中最多支持40位。英特尔CPU支持的PSE位的确切数目可能较少，并且必须通过CPUID确定处理器支持的最大物理地址宽度，方法是使用[function 80000008H调用CPUID](../Page/CPUID.md "wikilink")，并检查EAX\[7:0\]中的结果。\[10\]

## 使用

PSE-36特性的实用性取决于芯片组对超过4 GB内存的支持。[奔腾II](../Page/奔腾II.md "wikilink")时代的大多数芯片组并不支持这么多内存，英特尔440BX典型台式机芯片组的最大容量为1 GB，440GX工作站芯片组则为2 GB。只有高端服务器主板[Intel 450NX芯片组支持](../Page/Intel晶片組列表.md "wikilink")8 GB。\[11\]对PSE-36（ESMA）的支持通常面向服务器宣传。

作为适配支持PSE-36的操作系统，1998年英特尔宣布了[Microsoft Windows NT](../Page/Windows_NT.md "wikilink") Server、Enterprise Edition 4.0和据称即将到来的NT 5.0，它们都可以通过一个PSE36[device driver来支持](../Page/驱动程序.md "wikilink")，这使得操作系统的大部分组件不能感知PSE-36（只有PSE36驱动程序启用时能暂时感知），并且想要访问超过4 GB内存的应用程序必须调用驱动程序。因此Windows NT 4.0企业版基本将PSE-36特性作为一个[内存盘](https://zh.wikipedia.org/wiki/内存盘 "wikilink")。[Windows NT](../Page/Windows_NT.md "wikilink") 4.0 Enterprise Edition服务器上的部分应用程序使用PSE36驱动程序，这包括： liveCache\[12\]、[Microsoft SQL Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink") 7.0、[Oracle](../Page/Oracle数据库.md "wikilink") 8.1.5\[13\]和[IBM DB2](../Page/IBM_DB2.md "wikilink")。后者的调优文档指出，“遗憾的是，在大多数情况下，使用PSE-36驱动程序获得的性能增益并不是很好。在许多情况下，使用PSE-36驱动程序、具有8 GB内存的服务器，运行速度要比使用不使用该驱动程序、具有4 GB内存的服务器更慢。 \[...\]经过一年多的实验和调整，微软和IBM由于性能不佳而放弃了PSE-36的支持。该驱动程序对英特尔的供应商仍然可用，但对于最终客户使用而言并无价值。”\[14\]

由于与另一方案PAE相比性能低下，[Windows 2000](../Page/Windows_2000.md "wikilink")（NT 5.0）最终不支持PSE-36\[15\]。\[16\]Windows 2000也用新的[地址窗口扩展](../Page/地址窗口扩展.md "wikilink")（AWE）替换了PSE36驱动程序的API，其中采用PAE。\[17\]\[18\]（AWE仅适用于Windows 2000的数据中心服务器和高级服务器版本）。Windows应用程序因而迁移到这个新API，例如Oracle 8.1.6\[19\]和MS SQL Server 2000。\[20\]

PSE-36从未被[Linux](../Page/Linux.md "wikilink")支持。

## 相较于PAE

[物理地址扩展](../Page/物理地址扩展.md "wikilink")（PAE）是另一个允许36位元寻址的方案。PSE-36具有不改变页面表层次结构的优点，并且页面条目保持其旧的32位格式而不扩展到64位。PSE-36的显着缺点是只有大页面可以处在64 GB的物理内存中，而小页面仍然只能位于前4 GB的物理内存。

## 英特尔扩展服务器内存架构

英特尔扩展服务器内存架构被定义为在核心处理器中包括两个36位寻址模式：PAE-36和PSE-36。

## 参见

  -
  -
  -
## 参考资料

[Category:虚拟内存](https://zh.wikipedia.org/wiki/Category:虚拟内存 "wikilink") [Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")

1.
2.
3.
4.
5.
6.  [Intel Processor Identification and the CPUID Instruction](ftp://download.intel.com/support/processors/procid/24161812.pdf) , Intel application note AP-485
7.
8.
9.
10.
11. [Intel's Pentium II Xeon Processor.](http://www.tomshardware.com/reviews/intel,69-3.html)
12.
13.
14.
15.
16.
17.
18.
19.
20.