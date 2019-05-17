[Floptical_disk_21MB.jpg](https://zh.wikipedia.org/wiki/File:Floptical_disk_21MB.jpg "fig:Floptical_disk_21MB.jpg")

**Floptical**指的是一种结合了磁性及光学技术的[软驱](https://zh.wikipedia.org/wiki/软驱 "wikilink")，它可在与3½英寸[磁盘相似的高容量软盘上储存资讯](https://zh.wikipedia.org/wiki/磁盘 "wikilink")。其名称是来自"软盘"(Floppy)及"光学
"(Optical)的[混成词](https://zh.wikipedia.org/wiki/混成词 "wikilink")。它虽然主要指的是一种软驱，但也可以用作所有使用类似技术的储存媒体的代称。

最初的Floptical技术于1991年由[Insite
Peripherals开发](https://zh.wikipedia.org/wiki/Insite_Peripherals "wikilink")。该公司是由Jim
Adkisson创建的[风险投资公司](../Page/风险投资.md "wikilink")，而Jim
Adkisson是1976年在[Shugart
Associates参与开发](https://zh.wikipedia.org/wiki/Shugart_Associates "wikilink")5¼英寸软驱的主要工程师之一。该公司主要股东有[Maxell](https://zh.wikipedia.org/wiki/Maxell "wikilink")、[Iomega及](https://zh.wikipedia.org/wiki/Iomega "wikilink")[3M](https://zh.wikipedia.org/wiki/3M "wikilink")。

## 技术方面

数据读写本身是采用磁性原理，但加上光学技术校正读写头－使用红外光LED侦测刻于盘片上的凹槽。磁头与一般软驱一样在读写时会接触盘面。光学servo轨道则能提升磁头定位睛准度－从每英寸135轨至1250轨。一张Floptical软盘可储存21[MB的数据](https://zh.wikipedia.org/wiki/megabyte "wikilink")。此外，Floptical驱动器另有一组读写头以供读写一般的720[KB及](https://zh.wikipedia.org/wiki/kilobyte "wikilink")1.44[MB](https://zh.wikipedia.org/wiki/megabyte "wikilink")(1,440
[KiB](https://zh.wikipedia.org/wiki/kibibyte "wikilink"))磁盘。

为提高在[SCSI的兼容性](https://zh.wikipedia.org/wiki/SCSI "wikilink")，Floptical驱动器被设计辨识为软驱而不是可移除式[硬盘](../Page/硬盘.md "wikilink")。为确保其正常运作，写入锁定功能被内置于[固件中](https://zh.wikipedia.org/wiki/固件 "wikilink")。这能有效防止写入及[格式化媒体](https://zh.wikipedia.org/wiki/格式化 "wikilink")。驱动器可透过[SCSI
Mode
Sense指令](https://zh.wikipedia.org/wiki/SCSI_Mode_Sense指令 "wikilink"),
`1A 00 20 02 A0`解锁。该问题的严重性不明，而Insite亦推出了不含此"功能"的驱动器。

至少有两种机型被生产出来。有一种采用一般的杠杆机制以手动退出磁盘，另一种则有一类似光驱上的小孔，在[SCSI的退片指令失效时可用回纹针插入以强制退片](https://zh.wikipedia.org/wiki/SCSI "wikilink")。

### 技术规格

|                                                           |                                                                                    |
| --------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| 未格式化容量                                                    | 25 [MiB](../Page/Mebibyte.md "wikilink")                                           |
| 格式化容量                                                     | 20,385 [KiB](https://zh.wikipedia.org/wiki/Kibibyte "wikilink")                    |
| [转速](https://zh.wikipedia.org/wiki/转速 "wikilink")         | 720 [RPM](https://zh.wikipedia.org/wiki/Revolutions_per_minute "wikilink")         |
| 轨道密度                                                      | 1250 [TPI](https://zh.wikipedia.org/wiki/Tracks_per_inch "wikilink")               |
| 记录密度                                                      | 23980 BPI ([RLL](https://zh.wikipedia.org/wiki/Run_Length_Limited "wikilink"))     |
| 传输速率                                                      | 1.6 [Mbit/s](https://zh.wikipedia.org/wiki/Megabit_per_second "wikilink")          |
| 缓冲传输率                                                     | 2 MB/s                                                                             |
| [平均搜寻时间](https://zh.wikipedia.org/wiki/平均搜寻时间 "wikilink") | 65 [毫秒](https://zh.wikipedia.org/wiki/毫秒 "wikilink")                               |
| Settle time                                               | 15 ms                                                                              |
| 马达启始时间                                                    | 750 ms                                                                             |
| 磁头数量                                                      | 2                                                                                  |
| Cylinders                                                 | 755                                                                                |
| 轨道区块                                                      | 27                                                                                 |
| 区块                                                        | 256, 512, or 1024 [bytes](https://zh.wikipedia.org/wiki/byte "wikilink") (依照格式化时间) |
| 介面                                                        | [SCSI](https://zh.wikipedia.org/wiki/SCSI "wikilink")                              |

## 销量

Insite将Floptical技术授权给了一些公司，包括[松下](https://zh.wikipedia.org/wiki/松下 "wikilink")、[Iomega](https://zh.wikipedia.org/wiki/Iomega "wikilink")、[Maxell及](https://zh.wikipedia.org/wiki/Maxell "wikilink")[日立等](https://zh.wikipedia.org/wiki/日立 "wikilink")。部份公司后来组成了**FTA**－磁光学技术协会(**Floptical
Technology Association**)以试图推广Floptical技术取代软驱。

约有七万台Insite的Floptical驱动器在产品支持期间售出。[Silicon
Graphics在其](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink")[SGI
Indigo及](https://zh.wikipedia.org/wiki/SGI_Indigo "wikilink")[SGI
Indy系列](https://zh.wikipedia.org/wiki/SGI_Indy "wikilink")[电脑工作站上采用Floptical驱动器](https://zh.wikipedia.org/wiki/电脑工作站 "wikilink")。[Commodore
International亦被报导会在](https://zh.wikipedia.org/wiki/Commodore_International "wikilink")[Amiga
3000上采用Floptical驱动器](https://zh.wikipedia.org/wiki/Amiga_3000 "wikilink")。\[1\]但这并没有发生，而虽然许多Amiga系统皆安装了Floptical，它们是由Insite、TTR
Development或Digital Micronics
(DMI)所售，而非由[Commodore内置于Amiga系统中](https://zh.wikipedia.org/wiki/Commodore_International "wikilink")。

该产品的质量不稳定，可靠性也有问题。它也比其他高容量软驱如[Iomega
ZIP慢](https://zh.wikipedia.org/wiki/Iomega_ZIP "wikilink")。事实上，虽然Iomega早在1989年即获得Floptical授权并生产了名为**Insider**的兼容驱动器，他们不久后即放弃并将焦点转向ZIP，而ZIP的销量达到千万以上。

其他一些公司亦推出不兼容的高容量磁光学软驱。其中最有名的是[Imation的](https://zh.wikipedia.org/wiki/Imation "wikilink")[LS-120](https://zh.wikipedia.org/wiki/LS-120 "wikilink")*SuperDisk*。LS-120可兼容一般3½英寸磁盘，而在专用的高容量软盘上可达到120
MB的存储量，并采用一般软驱介面以提升兼容性。它曾被认为可以成功并取代一般软驱，但在2000年代初期推出的可写入式[CD-ROM抢走了市场](../Page/CD-ROM.md "wikilink")。[Sony亦曾推出磁光盘技术格式](https://zh.wikipedia.org/wiki/Sony "wikilink")[Sony
HiFD](https://zh.wikipedia.org/wiki/Sony_HiFD "wikilink")，但品管问题导致名声不佳。此外还有些较无闻的格式如[Caleb
UHD144等](https://zh.wikipedia.org/wiki/Caleb_UHD144 "wikilink")。

## 操作系统支持

所有版本的[Windows NT直至](../Page/Windows_NT.md "wikilink")[Windows
2000皆支持Floptical](../Page/Windows_2000.md "wikilink")，在FORMAT指令中使用20.8
MB 格式化。[Windows
XP及之后的版本已经取消了对Floptical及](../Page/Windows_XP.md "wikilink")2.88MB软盘的格式化支持。\[2\]SCO
[OpenServer亦支持Floptical驱动器](https://zh.wikipedia.org/wiki/OpenServer "wikilink")。有[SCSI装置的](https://zh.wikipedia.org/wiki/SCSI "wikilink")[麦金塔电脑则支持从Floptical开机](https://zh.wikipedia.org/wiki/麦金塔 "wikilink")，且有格式化软件可在麦金塔上抹除及格式化Floptical软盘。

## 参见

  - [磁光盘](https://zh.wikipedia.org/wiki/磁光盘 "wikilink")

## 参考资料

[Category:電腦貯存裝置](https://zh.wikipedia.org/wiki/Category:電腦貯存裝置 "wikilink")
[Category:1991年面世](https://zh.wikipedia.org/wiki/Category:1991年面世 "wikilink")

1.  [The flop's a
    hit](http://www.atarimagazines.com/compute/issue135/8_The_flops_a_hit.php)
2.  [Lack of Floptical support in Windows
    XP](http://www.microsoft.com/resources/documentation/windows/xp/all/proddocs/en-us/dos_diffs.mspx?mfr=true)
     - retrieved 12 September 2007