**唯讀記憶光碟**（，[縮寫](../Page/縮寫.md "wikilink")：**CD-ROM**），是一種在[電腦上使用的](https://zh.wikipedia.org/wiki/電腦 "wikilink")[光碟](../Page/光碟.md "wikilink")。這種光碟只能寫入數據一次，信息將永久保存在[光碟上](../Page/光碟.md "wikilink")，使用時通過[光碟驅動器讀出信息](https://zh.wikipedia.org/wiki/光碟驅動器 "wikilink")。CD的格式最初是为音乐的存储和回放设计的，1985年，由[SONY和](https://zh.wikipedia.org/wiki/SONY "wikilink")[飞利浦制定的](https://zh.wikipedia.org/wiki/飞利浦 "wikilink")[黄皮书标准使得这种格式能够适应各种二进制数据](../Page/彩虹書.md "wikilink")。

[增強型CD既存储音乐](https://zh.wikipedia.org/wiki/增強型CD "wikilink")，又存储-{zh-cn:计算机;zh-tw:電腦}-数据；这种CD-ROM的音乐能够由[CD播放器播放](https://zh.wikipedia.org/wiki/CD播放器 "wikilink")，-{zh-cn:计算机;zh-tw:電腦}-数据則只能由-{zh-cn:计算机;zh-tw:電腦}-处理。

## 介质

[Afm_cd-rom.jpg](https://zh.wikipedia.org/wiki/File:Afm_cd-rom.jpg "fig:Afm_cd-rom.jpg")
CD-ROM盘片在外观上与音乐CD完全相同，数据存取的方式也十分类似，区别仅在于它们存储数据的标准。CD-ROM盘片是用1.2毫米厚的[聚碳酸酯](../Page/聚碳酸酯.md "wikilink")[塑料和一层用作反射面的](../Page/塑料.md "wikilink")[铝制作的](../Page/铝.md "wikilink")。直径为120毫米的CD-ROM盘片最为常见，稍小的[Mini
CD的直径为](https://zh.wikipedia.org/wiki/Mini_CD "wikilink")80毫米，除此之外，还有很多各种非标准尺寸和形状的CD-ROM盘片，例如卡片尺寸的。数据以一系列细小的锯齿的形式记录在盘片中。[激光照射反射面时可以读出凹凸的信息](../Page/激光.md "wikilink")。凹点的深度大约为照射激光波长的1/4到1/6，由此，反射光的相位会发生偏移，并造成破坏冲突和削减反射光强度的衰减。反射光强度的变化被转化为二进制数据。

### 标准

在CD上存储数据有多种格式，它们被收集成[彩虹书](https://zh.wikipedia.org/wiki/彩虹书 "wikilink")。其中包括最初音乐CD的[红皮书标准](https://zh.wikipedia.org/wiki/红皮书_\(音讯CD\) "wikilink")，此外还有和[黄皮书](https://zh.wikipedia.org/wiki/黄皮书_\(CD标准\) "wikilink")。[ECMA](../Page/Ecma国际.md "wikilink")-130标准详细描述了CD-ROM的物理层标准。

### CD-ROM格式

CD-ROM的每个扇区包含98个24字节的框，共2352字节信息。CD-ROM作为数据盘片，需要对数据有较高的可信任度，不能有错误数据。为了达到增强纠错和检错的目标，CD-ROM有3层的[纠错机制](https://zh.wikipedia.org/wiki/里德-所羅門碼 "wikilink")。采用模式1型的CD-ROM拥有完整的3层纠错机制，每个扇区记录2048字节信息。模式2型的CD-ROM，每个扇区记录2336字节信息，这类CD-ROM主要用于记录视频文件。CDDA音频标准规定的数据量为：44.1k/s×4B×2048
/ 2352 = 153.6kB/s，与此比较，模式1型的CD-ROM的播放时间为74分钟，或4440秒，容量为682MB。

1倍速的CD光驱每秒钟能够读取75个连续的扇区，即每秒150KB，x倍速光驱读取速度依此类推。

#### CD扇区内容

  - 一张74分钟的标准CD包含333,000个扇区。
  - 每个扇区为2352字节，模式1型的CD-ROM包含2048字节-{zh-cn:计算机;zh-tw:電腦}-数据，模式2型的CD-ROM包含2336字节PSX/VCD数据，音频包含2352字节信息。
  - 扇区容量的差异来自头信息和纠错编码，-{zh-cn:计算机;zh-tw:電腦}-数据对精度要求最高，这类信息最多，VCD对精度要求不高，这类信息稍小，音频CD没有这类信息。
  - 如果用RAW格式从盘片中读取数据，无论是什么数据类型，每个扇区都能够读出2352字节信息。因此：
      - 高速刻录数据CD（40倍速）不会丢失信息。但是，由于音乐CD没有3层纠错码，如果高速刻录这类CD，有可能导致不可挽回的错误，并在播放时发出咔哒的声音。
      - 在一张74分钟的CD上，能够用RAW方式刻录更多的信息，这样做容量可以达到333,000×2352 = 783,216,000
        字节（大约747MB）。这是74分钟650MB的CD的容量的上限。容量增加了14.8%，但是，这样做将失去纠错数据。
  - 当用RAW方式读取光盘时，容量永远为2352字节的倍数。

|             |             |
| ----------- | ----------- |
| 设计类型        | ← 2352字节块 → |
| 音乐CD:       | 2352字节数字音乐  |
| 模式1型CD-ROM: | 12          |
| 模式2型CD-ROM: | 12          |

| 图例（字节） |
| ------ |
| 12     |
| 4      |
|        |
| 4      |
| 8      |
| 276    |

{{-}}

### 制作

预先压制的CD-ROM盘片是通过母盘压制出来的，首先制作一张玻璃的母盘，然后根据它的凸凹批量压制出最终的光盘。[可刻录光盘](https://zh.wikipedia.org/wiki/CD-R "wikilink")（CD-R）与[可重复刻录光盘](https://zh.wikipedia.org/wiki/CD-RW "wikilink")（CD-RW）的制作过程类似，它们都是通过激光改变染料的特性或者物质[相变的方式记录数据](https://zh.wikipedia.org/wiki/相变 "wikilink")，这个过程通常称为[刻录](https://zh.wikipedia.org/wiki/光碟烧录技术 "wikilink")。

### 容量

[Print_vs._bytes.jpg](https://zh.wikipedia.org/wiki/File:Print_vs._bytes.jpg "fig:Print_vs._bytes.jpg")
一张标准的120毫米的CD-ROM盘片能够记录800.1MB数据（不包括纠错和检错数据）。这个容量能够记录700部10万个10个字母长的英文[小说](../Page/小说.md "wikilink")。如果每部小说有1厘米厚，那么这些小说加起来有7米长。文本信息通常能够被压缩至原来的1/10大小，这样一张CD-ROM盘片就能够容纳大约100米厚的小说了。

一张单面的[DVD的容量为](https://zh.wikipedia.org/wiki/DVD "wikilink")4.4GB，大约为CD-ROM的6倍。

| 类型     | 扇区     | 最大数据容量                                              | 最大音乐容量   | 时间          |
| ------ | ------ | --------------------------------------------------- | -------- | ----------- |
| (MB)   | (MB)   | （[分钟](https://zh.wikipedia.org/wiki/分钟 "wikilink")） |          |             |
| 8 cm   | 94500  | 193.536                                             | 222.264  | \<\!-- 1260 |
|        | 283500 | 580.608                                             | 666.792  | \<\!-- 3780 |
| 650 MB | 333000 | 681.984                                             | 783.216  | \<\!-- 4440 |
| 700 MB | 360000 | 737.280                                             | 846.720  | \<\!-- 4800 |
| 800 MB | 405000 | 829.440                                             | 952.560  | \<\!-- 5400 |
| 900 MB | 445500 | 912.384                                             | 1047.816 | \<\!-- 5940 |

各类CD的容量

记录CD容量时通常采用二进制，一张700MB的CD名义上有700000KB的容量。而记录DVD容量时通常用采用十进制，一张4.7GB的DVD名义上有4.377GB的容量。

## CD-ROM光驱

[Cdrommit.jpg](https://zh.wikipedia.org/wiki/File:Cdrommit.jpg "fig:Cdrommit.jpg")
CD-ROM光驱可以读取CD-ROM光盘，这种设备在个人电脑上已经普及。CD-ROM光驱可以通过IDE（[ATA](https://zh.wikipedia.org/wiki/ATA "wikilink")）、[SCSI](https://zh.wikipedia.org/wiki/SCSI "wikilink")、[SATA](../Page/SATA.md "wikilink")、[Firewire和](https://zh.wikipedia.org/wiki/Firewire "wikilink")[USB或者专门设备连接至电脑](../Page/USB.md "wikilink")。事实上，结合适当的软件，所有的现代CD-ROM光驱都能够播放音乐CD、VCD和其它数据标准的CD。

### 激光

CD-ROM光驱采用780[纳米近](../Page/纳米.md "wikilink")[红外线二极管](../Page/红外线.md "wikilink")。激光波通过一个光电跟踪模块射到-{zh-cn:盘片;zh-tw:碟片}-上，而后检测它是否被反射或者分散。

### 传输速度

CD-ROM光驱的传输速度是以音乐CD的传输速度的倍数作为标准衡量的，1倍速为150KB/s。通过提高-{zh-cn:盘片;zh-tw:碟片}-的转速，数据的传输速度能够提高。例如，1倍速的光驱的转速为每分钟500转，而8倍速的光驱转速为每分钟4000转，相应的读取速度为1.2MB/s。超过12倍速时，震动和散热成为问题。超过这个速度的光驱通过各种方法解决这些问题。[恒定角速度光驱中的盘片以恒定的角速度旋转](https://zh.wikipedia.org/wiki/恒定角速度 "wikilink")，以较快的速度读取边缘数据，以较慢的速度读取内侧数据。由于受到机械的限制，20倍速曾被认为是光驱读取速度的极限，直至[三星推出了](../Page/三星電子.md "wikilink")32倍速的SCR-3230光驱，它采用球来平衡旋转的盘片以降低震动和噪音。2004年，最快的传输速度通常可以达到52倍速，每分钟10350转，7.62MB/s，不过这个速度只是在读取盘片边缘部分的数据时才能达到。由于受到用于制作CD的多碳酸盐塑料的强度的限制，通过增加转速提高读取速度变得不再可行，但是，可以通过增加激光头的方式进一步提到读取速度，在[Kenwood的TrueX](../Page/建伍.md "wikilink")
72x演示中，这款光驱采用了7个激光头，转速与10倍速的光驱转速大致相当。

CD刻录光驱通常有3种不同的速度，分别为一次刻录、重复刻录和读取的速度。通常，采用这样的顺序标注，例如12x/10x/32x的光驱能够以12倍速（1.80MB/s）刻录一次刻录光盘，以10倍速（1.50MB/s）刻录可重复刻录光盘，以32倍速（4.80MB/s）读取光盘。

1倍速的定义在不同场合並不相同，CD-ROM的1倍速为150KB/s，音乐CD的1倍速为172.3KB/s，DVD的1倍速为1.32MB/s（1358KB/s）。

[CD_laser_assembly1.jpg](https://zh.wikipedia.org/wiki/File:CD_laser_assembly1.jpg "fig:CD_laser_assembly1.jpg")
[Cd-rom-drive-reading-head-movement.gif](https://zh.wikipedia.org/wiki/File:Cd-rom-drive-reading-head-movement.gif "fig:Cd-rom-drive-reading-head-movement.gif")
[CD-Rom-Drive's_Laser.jpg](https://zh.wikipedia.org/wiki/File:CD-Rom-Drive's_Laser.jpg "fig:CD-Rom-Drive's_Laser.jpg")
**常见传输速度**

| 传输速度 | | KB/s | | Mb/s  |
| ---: | ------ | ------- |
|   1x | 150    | 1.2288  |
|   2x | 300    | 2.4576  |
|   4x | 600    | 4.9152  |
|   8x | 1200   | 9.8304  |
|  10x | 1500   | 12.2880 |
|  12x | 1800   | 14.7456 |
|  20x | 3000   | 24.5760 |
|  32x | 4800   | 39.3216 |
|  36x | 5400   | 44.2368 |
|  40x | 6000   | 49.1520 |
|  48x | 7200   | 58.9824 |
|  50x | 7500   | 61.4400 |
|  52x | 7800   | 63.8976 |

数据传输速度

## 參看

  - [CD](../Page/CD.md "wikilink")
  - [CD-R](https://zh.wikipedia.org/wiki/CD-R "wikilink")
  - [CD-RW](https://zh.wikipedia.org/wiki/CD-RW "wikilink")
  - [VCD](../Page/VCD.md "wikilink")
  - [DVD](https://zh.wikipedia.org/wiki/DVD "wikilink")

[Category:電腦儲存媒體](https://zh.wikipedia.org/wiki/Category:電腦儲存媒體 "wikilink")