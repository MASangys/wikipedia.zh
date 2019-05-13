[Floptical_disk_21MB.jpg](https://zh.wikipedia.org/wiki/File:Floptical_disk_21MB.jpg "fig:Floptical_disk_21MB.jpg")

**Floptical**指的是一种结合了磁性及光学技术的[软驱](../Page/软驱.md "wikilink")，它可在与3½英寸[磁盘相似的高容量软盘上储存资讯](../Page/磁盘.md "wikilink")。其名称是来自"软盘"(Floppy)及"光学
"(Optical)的[混成词](../Page/混成词.md "wikilink")。它虽然主要指的是一种软驱，但也可以用作所有使用类似技术的储存媒体的代称。

最初的Floptical技术于1991年由[Insite
Peripherals开发](../Page/Insite_Peripherals.md "wikilink")。该公司是由Jim
Adkisson创建的[风险投资公司](../Page/风险投资.md "wikilink")，而Jim
Adkisson是1976年在[Shugart
Associates参与开发](../Page/Shugart_Associates.md "wikilink")5¼英寸软驱的主要工程师之一。该公司主要股东有[Maxell](../Page/Maxell.md "wikilink")、[Iomega及](../Page/Iomega.md "wikilink")[3M](../Page/3M.md "wikilink")。

## 技术方面

数据读写本身是采用磁性原理，但加上光学技术校正读写头－使用红外光LED侦测刻于盘片上的凹槽。磁头与一般软驱一样在读写时会接触盘面。光学servo轨道则能提升磁头定位睛准度－从每英寸135轨至1250轨。一张Floptical软盘可储存21[MB的数据](../Page/megabyte.md "wikilink")。此外，Floptical驱动器另有一组读写头以供读写一般的720[KB及](../Page/kilobyte.md "wikilink")1.44[MB](../Page/megabyte.md "wikilink")(1,440
[KiB](../Page/kibibyte.md "wikilink"))磁盘。

为提高在[SCSI的兼容性](../Page/SCSI.md "wikilink")，Floptical驱动器被设计辨识为软驱而不是可移除式[硬盘](../Page/硬盘.md "wikilink")。为确保其正常运作，写入锁定功能被内置于[固件中](../Page/固件.md "wikilink")。这能有效防止写入及[格式化媒体](../Page/格式化.md "wikilink")。驱动器可透过[SCSI
Mode Sense指令](../Page/SCSI_Mode_Sense指令.md "wikilink"), `1A 00 20 02
A0`解锁。该问题的严重性不明，而Insite亦推出了不含此"功能"的驱动器。

至少有两种机型被生产出来。有一种采用一般的杠杆机制以手动退出磁盘，另一种则有一类似光驱上的小孔，在[SCSI的退片指令失效时可用回纹针插入以强制退片](../Page/SCSI.md "wikilink")。

### 技术规格

|                                        |                                                                 |
| -------------------------------------- | --------------------------------------------------------------- |
| 未格式化容量                                 | 25 [MiB](../Page/Mebibyte.md "wikilink")                        |
| 格式化容量                                  | 20,385 [KiB](../Page/Kibibyte.md "wikilink")                    |
| [转速](../Page/转速.md "wikilink")         | 720 [RPM](../Page/Revolutions_per_minute.md "wikilink")         |
| 轨道密度                                   | 1250 [TPI](../Page/Tracks_per_inch.md "wikilink")               |
| 记录密度                                   | 23980 BPI ([RLL](../Page/Run_Length_Limited.md "wikilink"))     |
| 传输速率                                   | 1.6 [Mbit/s](../Page/Megabit_per_second.md "wikilink")          |
| 缓冲传输率                                  | 2 MB/s                                                          |
| [平均搜寻时间](../Page/平均搜寻时间.md "wikilink") | 65 [毫秒](../Page/毫秒.md "wikilink")                               |
| Settle time                            | 15 ms                                                           |
| 马达启始时间                                 | 750 ms                                                          |
| 磁头数量                                   | 2                                                               |
| Cylinders                              | 755                                                             |
| 轨道区块                                   | 27                                                              |
| 区块                                     | 256, 512, or 1024 [bytes](../Page/byte.md "wikilink") (依照格式化时间) |
| 介面                                     | [SCSI](../Page/SCSI.md "wikilink")                              |

## 销量

Insite将Floptical技术授权给了一些公司，包括[松下](../Page/松下.md "wikilink")、[Iomega](../Page/Iomega.md "wikilink")、[Maxell及](../Page/Maxell.md "wikilink")[日立等](../Page/日立.md "wikilink")。部份公司后来组成了**FTA**－磁光学技术协会(**Floptical
Technology Association**)以试图推广Floptical技术取代软驱。

约有七万台Insite的Floptical驱动器在产品支持期间售出。[Silicon
Graphics在其](../Page/Silicon_Graphics.md "wikilink")[SGI
Indigo及](../Page/SGI_Indigo.md "wikilink")[SGI
Indy系列](../Page/SGI_Indy.md "wikilink")[电脑工作站上采用Floptical驱动器](../Page/电脑工作站.md "wikilink")。[Commodore
International亦被报导会在](../Page/Commodore_International.md "wikilink")[Amiga
3000上采用Floptical驱动器](../Page/Amiga_3000.md "wikilink")。\[1\]但这并没有发生，而虽然许多Amiga系统皆安装了Floptical，它们是由Insite、TTR
Development或Digital Micronics
(DMI)所售，而非由[Commodore内置于Amiga系统中](../Page/Commodore_International.md "wikilink")。

该产品的质量不稳定，可靠性也有问题。它也比其他高容量软驱如[Iomega
ZIP慢](../Page/Iomega_ZIP.md "wikilink")。事实上，虽然Iomega早在1989年即获得Floptical授权并生产了名为**Insider**的兼容驱动器，他们不久后即放弃并将焦点转向ZIP，而ZIP的销量达到千万以上。

其他一些公司亦推出不兼容的高容量磁光学软驱。其中最有名的是[Imation的](../Page/Imation.md "wikilink")[LS-120](../Page/LS-120.md "wikilink")*SuperDisk*。LS-120可兼容一般3½英寸磁盘，而在专用的高容量软盘上可达到120
MB的存储量，并采用一般软驱介面以提升兼容性。它曾被认为可以成功并取代一般软驱，但在2000年代初期推出的可写入式[CD-ROM抢走了市场](../Page/CD-ROM.md "wikilink")。[Sony亦曾推出磁光盘技术格式](../Page/Sony.md "wikilink")[Sony
HiFD](../Page/Sony_HiFD.md "wikilink")，但品管问题导致名声不佳。此外还有些较无闻的格式如[Caleb
UHD144等](../Page/Caleb_UHD144.md "wikilink")。

## 操作系统支持

所有版本的[Windows NT直至](../Page/Windows_NT.md "wikilink")[Windows
2000皆支持Floptical](../Page/Windows_2000.md "wikilink")，在FORMAT指令中使用20.8
MB 格式化。[Windows
XP及之后的版本已经取消了对Floptical及](../Page/Windows_XP.md "wikilink")2.88MB软盘的格式化支持。\[2\]SCO
[OpenServer亦支持Floptical驱动器](../Page/OpenServer.md "wikilink")。有[SCSI装置的](../Page/SCSI.md "wikilink")[麦金塔电脑则支持从Floptical开机](../Page/麦金塔.md "wikilink")，且有格式化软件可在麦金塔上抹除及格式化Floptical软盘。

## 参见

  - [磁光盘](../Page/磁光盘.md "wikilink")

## 参考资料

[Category:電腦貯存裝置](https://zh.wikipedia.org/wiki/Category:電腦貯存裝置 "wikilink")
[Category:1991年面世](https://zh.wikipedia.org/wiki/Category:1991年面世 "wikilink")

1.  [The flop's a
    hit](http://www.atarimagazines.com/compute/issue135/8_The_flops_a_hit.php)
2.  [Lack of Floptical support in Windows
    XP](http://www.microsoft.com/resources/documentation/windows/xp/all/proddocs/en-us/dos_diffs.mspx?mfr=true)
     - retrieved 12 September 2007