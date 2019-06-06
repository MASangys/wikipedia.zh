**dd**是一个[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix](../Page/类Unix系统.md "wikilink")[系统上的命令](../Page/操作系统.md "wikilink")，主要功能为转换和复制文件。\[1\]

在Unix上，硬件的设备驱动（如[硬盘](../Page/硬盘.md "wikilink")）和特殊[设备文件](../Page/设备文件系统.md "wikilink")（如[Dd_(Unix)//dev/zero和](https://zh.wikipedia.org/wiki/Dd_\(Unix\)/dev/zero "wikilink")[Dd_(Unix)//dev/random](https://zh.wikipedia.org/wiki/Dd_\(Unix\)/dev/random "wikilink")）就像普通文件一样，出现在文件系统中；只要在各自的驱动程序中实现了对应的功能，`dd`也可以读取自和/或写入到这些文件。这样，`dd`也可以用在备份硬件的[引导扇区](https://zh.wikipedia.org/wiki/引导扇区 "wikilink")、取得一定数量的随机数据等任务中。`dd`程序也可以在复制时处理数据，例如转换[字节序](../Page/字节序.md "wikilink")、或在[ASCII与](../Page/ASCII.md "wikilink")[EBCDIC编码间互换](../Page/EBCDIC.md "wikilink")。\[2\]

`dd`的名字可能来源于[IBM的](../Page/IBM.md "wikilink")[工作控制语言](https://zh.wikipedia.org/wiki/工作控制语言 "wikilink")（JCL）中的DD语句，\[3\]意为“Data
Description”（数据描述）的缩写。\[4\]该命令的语句与JCL中的相似，而与其他Unix命令较不同，因此这可能是个玩笑。\[5\]另一种解释是“cc”（根据命令自身的描述，为“convert
and copy”（转换和复制））已经被C语言编译器（C compiler）所占。

`dd`命令由[单一UNIX规范的一部分](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")，[IEEE标准](../Page/电气电子工程师学会.md "wikilink")1003.1-2008所规定。

## 用法

`dd`的[命令行语句与其他的Unix程序不同](../Page/命令行界面.md "wikilink")，因为它的命令行选项格式为*`选项`*`=`*`值`*，而不是更标准的`--`*`选项``
 ``值`*或`-`*`选项`*`=`*`值`*。`dd`默认从[标准输入中读取](https://zh.wikipedia.org/wiki/标准输入 "wikilink")，并写入到[标准输出中](https://zh.wikipedia.org/wiki/标准输出 "wikilink")，但可以用选项`if`（input
file，输入文件）和`of`（output file，输出文件）改变。

由于[操作系统的不同](../Page/操作系统.md "wikilink")，用法会有出入。另外，`dd`的一些特定功能取决于计算机系统的能力，例如直接访问内存。向运行中的`dd`进程发送[SIGINFO信号](https://zh.wikipedia.org/wiki/SIGINFO "wikilink")（Linux上为USR1）可以使它将I/O统计信息打印到[标准错误一次](https://zh.wikipedia.org/wiki/标准流#标准错误输出_\(stderr\) "wikilink")，然后继续复制（注意在OS
X上，信号可能导致进程终止）。`dd`可以从键盘中读取[标准输入](https://zh.wikipedia.org/wiki/标准流#标准输入_\(stdin\) "wikilink")。到达[文件结尾时](https://zh.wikipedia.org/wiki/文件结尾 "wikilink")，`dd`将会退出。信号和EOF是由软件决定。例如，移植到[Windows的Unix工具使用不同的EOF](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")：[Cygwin使用](../Page/Cygwin.md "wikilink")<ctrl-d>
（通常的Unix
EOF），而[MKS工具箱使用](https://zh.wikipedia.org/wiki/MKS工具箱 "wikilink")<ctrl-z>（通常的Windows
EOF）。

正如[Unix哲学一样](../Page/Unix哲学.md "wikilink")，`dd`只做好一件事（并被认为做得“好”
）。与复杂的和高度抽象的实用程序不同，除了为不同的选项做底层决定，`dd`没有其它的算法。一般在每一次运行时，会改变`dd`的选项以分步处理一个计算机问题。

## 输出消息

Linux上GNU coreutils提供的变种没有描述运行结束时，`dd`输出到标准输出消息的格式。然而，其他的实现描述了它，例如BSD上的。

“记录读入”和“记录写出”行显示了已完整传输的块数+不完整的块数，例如物理介质以不完整的块结尾，或是一个物理错误使得一个完整的块无法被读取。

## 块大小

[块是衡量一次读取](../Page/块_\(数据存储\).md "wikilink")、写入和转换[字节的单位](../Page/字节.md "wikilink")。命令行选项可以为输入/读取（`ibs`）和输出/写入（`obs`）指定一个不同的块大小，尽管块大小（`bs`）选项会覆盖`ibs`和`obs`选项。输入和输出的默认块大小为512字节（传统的磁盘块及POSIX规定的“块”大小）复制的`count`选项、读取的`skip`选项和写入的`seek`选项都是以块为单位。转换操作也受“转换块大小”（`cbs`）影响。

在`dd`的一些用途中，块大小可能会影响表现。例如，当转换硬盘中数据时，较小的块大小通常会导致更多的字节被转换。发出许多小块的读取是一种开销的浪费，且可能会对执行性能有负面影响。较大的块大小可能会提高复制速度。但是，由于要复制的字节量是由bs×count给出的，因此不可能在一次`dd`命令中复制[素数个字节](../Page/素数.md "wikilink")，除非使用两个糟糕选项之一：`bs=N
count=1`（消耗内存）或`bs=1
count=N`（大量读请求开销）。替代程序（见下文）允许指定字节，而不是块。在用作网络传输时，根据使用的[网络协议](../Page/网络传输协议.md "wikilink")，块大小可能会与[包大小冲突](https://zh.wikipedia.org/wiki/分组 "wikilink")。

提供给块大小的值会被解释成十进制整数，也可以加入后缀指定倍数。后缀`w`表示2倍，`b`表示512倍，`k`表示1024倍，`M`表示1024
× 1024倍，`G`表示1024 × 1024 × 1024倍，等等。另外，在块大小和计数参数中，一些实现也可以使用`x`表示乘运算。

例如，块大小`bs=2x80x18b`表示2 × 80 × 18 × 512 = 1474560字节，也就是一张1440
KiB[软盘的确切大小](../Page/软盘.md "wikilink")。

## 用途

`dd`命令可用于各种用途。

### 数据转换

`dd`可以在文件、设备、分区和卷之间复制数据。数据可以从其中任何地方输入或输出；但输出到分区时有重要差异。此外在传输过程中，数据可以用`conv`选项修改以适应介质。

如果最后一个块有意外长度，试图使用[`cp`](https://zh.wikipedia.org/wiki/cp_\(Unix\) "wikilink")复制整个磁盘可能会忽略掉它；然而`dd`却可能成功。源和目标磁盘应该具有相同的大小。

|                                                        |                                                                                                                     |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- |
| `dd if=/dev/sr0 of=myCD.iso bs=2048 conv=noerror,sync` | 从CD-ROM中创建[ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")[磁盘镜像](https://zh.wikipedia.org/wiki/磁盘镜像 "wikilink")。 |
| `dd if=/dev/sda2 of=/dev/sdb2 bs=4096 conv=noerror`    | [克隆一个](../Page/硬盘克隆.md "wikilink")[分区到另一个](https://zh.wikipedia.org/wiki/分区 "wikilink")。                            |
| `dd if=/dev/ad0 of=/dev/ad1 bs=1M conv=noerror`        | 克隆硬盘“ad0”到“ad1”。                                                                                                    |

不同情况的`dd`格式

`noerror`选项意味着如果发生错误，程序也将继续运行。`sync`选项表示填充每个块到指定字节。

### 备份和恢复主引导记录

可以修复主引导记录。主引导记录可以转移到文件，或从中转移出来。

要复制软盘的前两个扇区：

``` bash
dd if=/dev/fd0 of=MBRboot.img bs=512 count=2
```

要创建整个x86[主引导记录的镜像](../Page/主引导记录.md "wikilink")（包括MS-DOS[分区表和MBR魔法字节](https://zh.wikipedia.org/wiki/分区表 "wikilink")）：

``` bash
dd if=/dev/sda of=MBR.img bs=512 count=1
```

要创建仅含[主引导记录引导代码的镜像](../Page/主引导记录.md "wikilink")（不包括[分区表和开机所需的魔法字节](https://zh.wikipedia.org/wiki/分区表 "wikilink")）：

``` bash
dd if=/dev/sda of=MBR_boot.img bs=446 count=1
```

### 数据修改

`dd`可以原地修改数据。

用空字节覆盖文件的前512个字节：

``` bash
dd if=/dev/zero of=path/to/file bs=512 count=1 conv=notrunc
```

转换选项`notrunc`意味着不缩减输出文件，也就是说，如果输出文件已经存在，只改变指定的字节，然后退出，并保留输出文件的剩余部分。没有这个选项，`dd`将创建一个512字节长的文件。

在不同的分区中复制磁盘分区到磁盘映像文件中：

``` bash
dd if=/dev/sdb2 of=partition.image bs=4096 conv=noerror
```

### 磁盘擦除

出于安全方面的考虑，有时需要擦除丢弃的磁盘。

检查驱动器上是否有数据，并将其输出到标准输出：

``` bash
dd if=/dev/sda
```

用零擦除磁盘：

``` bash
dd if=/dev/zero of=/dev/sda bs=4k
```

相较于[上面数据修改的例子](https://zh.wikipedia.org/wiki/#数据修改 "wikilink")，不需要使用转换选项`notrunc`，因为当`dd`的输出文件为块设备时，它没有效果。\[6\]

`bs=4k`选项使`dd`一次读取或写入4[千字节](../Page/千字节.md "wikilink")。在现代系统中，由于传输容量（如RAID系统），一个更大的块大小可能更有利。注意用随机数据填充磁盘总是比用零慢的多，因为随机数据必须先由CPU和/或[HWRNG生成](https://zh.wikipedia.org/wiki/硬件随机数发生器 "wikilink")，且不同的设计有不同的性能特点。（后面PRNG的/dev/urandom可能比libc中的要慢。）在大多数较现代的磁盘中，用零擦除会使其中的数据永久丢失。\[7\]

用零擦除磁盘会使它的数据无法被软件恢复。然而数据仍可能用[特殊的实验室技术恢复](https://zh.wikipedia.org/wiki/数据剩磁 "wikilink")。

[shred程序提供了完成相同任务的替代方法](https://zh.wikipedia.org/wiki/shred_\(Unix\) "wikilink")，最后，目前许多Linux发行版还提供了一个精心制作的工具`wipe`\[8\]（做得“好”，如上面的Unix哲学），提供了更多方法擦除。

### 数据恢复

1984年，GNU
`dd`开启了[开源软件](../Page/开源软件.md "wikilink")（OSS）[恢复数据](https://zh.wikipedia.org/wiki/数据恢复 "wikilink")、文件、驱动器和分区的历史。`dd`进程一次处理一个块，它的算法只是在用户界面显示运行状态。1999年10月，一个C语言的程序*[`dd_rescue`](http://www.garloff.de/kurt/linux/ddrescue/)*发布了。它的算法一次能处理两个块。但改进`dd_rescue`的数据恢复算法、2003年的shell脚本[`dd_rhelp`](http://www.kalysto.org/utilities/dd_rhelp/index.en.html)作者现在推荐[`GNU``
 ``ddrescue`](http://www.gnu.org/software/ddrescue/ddrescue.html)。\[9\]它是一个发布于2004年的C++程序，与大多数的Linux发行版一起发行。在开源软件中，GNU
`ddrescue`有最先进的块大小变换算法。\[10\]（`ddrescue`和`dd_rescue`尽管名字相近，但却是不同的程序。因为如此，区分更为明确的备用名称也有使用；使用的名称有“addrescue”（freecode.com），“gddrescue”（[Debian包名](../Page/Debian.md "wikilink")）和“gnu_ddrescue”（[openSUSE包名](https://zh.wikipedia.org/wiki/openSUSE "wikilink")）。）

GNU `ddrescue`既稳定又安全。\[11\]

另一个开源程序*`savehd7`*使用更复杂的算法，但它需要安装自己的语言解释器。

### 驱动器性能基准测试

对驱动器进行基准测试（通常是单线程），使用1024字节块分析连续系统读取和写入的性能：

``` bash
dd if=/dev/zero bs=1024 count=1000000 of=file_1GB
dd if=file_1GB of=/dev/null bs=1024
```

### 用随机数据生成文件

使用内核随机数驱动，用100个随机字节生成文件：

``` bash
dd if=/dev/urandom of=myrandom bs=100 count=1
```

### 将文件转换为大写

将文件转换为大写：

``` bash
dd if=filename of=filename1 conv=ucase
```

### 创建任意大小的空文件

创建1GiB的[稀疏文件](../Page/稀疏文件.md "wikilink")，或增加现有文件的大小：

``` bash
dd if=/dev/zero of=mytestfile.out bs=1 count=0 seek=1G
```

（更先进的工具是GNU coreutils中的*fallocate*或*truncate*。）

## 局限

[希捷的文档警告说](../Page/希捷科技.md "wikilink")，“一些依赖底层硬盘访问的硬盘工具（如DD）可能不支持48位[逻辑区块地址](https://zh.wikipedia.org/wiki/逻辑区块地址 "wikilink")（LBA），除非进行升级”。\[12\]使用超过128
GiB的ATA硬盘时需要48位LBA。然而在[Linux中](../Page/Linux.md "wikilink")，`dd`使用内核读取或写入原始[设备文件](../Page/设备文件系统.md "wikilink")。2003年释出的2.4.23版本内核已经实现了对48位LBA的支持。\[13\]\[14\]

有人开玩笑说，`dd`意为“destroy disk”（破坏硬盘）或“delete
data”（删除数据），因为在对硬盘进行底层操作时，类似颠倒输入和输出文件的一个小错误都可能造成部分或全部硬盘数据的丢失。\[15\]

## dcfldd

*`dcfldd`*是`dd`的一个分支，由前[美国国防部计算机取证实验室雇员尼克](https://zh.wikipedia.org/wiki/美国国防部网络犯罪中心 "wikilink")·哈勃（Nick
Harbour）开发的增强版本。\[16\]\[17\]\[18\]与`dd`相比，`dcfldd`允许一个以上的输出文件，同时支持多种校验计算方法，还提供了验证模式以匹配文件，并能显示操作进度百分比。

## 参见

  - [备份](../Page/备份.md "wikilink")
  - [硬盘克隆](../Page/硬盘克隆.md "wikilink")
  - [硬盘复制](https://zh.wikipedia.org/wiki/硬盘复制 "wikilink")
  - [硬盘镜像](https://zh.wikipedia.org/wiki/硬盘镜像 "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

## 注释

## 参考文献

## 外部链接

  -
  - [dd](http://www.gnu.org/software/coreutils/manual/html_node/dd-invocation.html)：[GNU核心工具组手册页](../Page/GNU核心工具组.md "wikilink")。

  -
  - [dd for Windows](http://www.chrysocome.net/dd)

  - [savehd7 - Save a potentially damaged harddisk
    partition](http://seed7.sourceforge.net/scrshots/savehd7.htm)

  - [GNU ddrescue](http://www.gnu.org/software/ddrescue/ddrescue.html)

  - [GNU
    ddrescue手册页](http://www.gnu.org/software/ddrescue/manual/ddrescue_manual.html)

  - [dd_rescue](http://www.garloff.de/kurt/linux/ddrescue/)

  - [dd_rhelp](http://www.kalysto.org/utilities/dd_rhelp/index.en.html)

  - [Softpanorama dd page](http://www.softpanorama.org/Tools/dd.shtml)

  - [DD at Linux Questions Wiki](http://wiki.linuxquestions.org/wiki/Dd)

  - [How to use ddrescue to image a damaged harddisk partition and mount
    it in
    Windows.](https://web.archive.org/web/20130917155902/http://www.myfixlog.com/fix.php?fid=21)

  - [Forensics (DD) Dcfldd](http://www.forensicswiki.org/wiki/Dcfldd)

[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")

1.

2.

3.

4.  参见旧讨论

5.
6.

7.

8.

9.

10.

11.

12. [Windows 137GB (128 GiB) Capacity Barrier - Seagate
    Technology](https://web.archive.org/web/20070316080228/http://www.seagate.com/support/kb/disc/tp/137gb.pdf)
    (March 2003)

13.

14. [Linux-2.4.23
    released](http://lkml.indiana.edu/hypermail/linux/kernel/0311.3/0942.html)
    Linux kernel mailing list, 2003.

15.
16.

17.

18.