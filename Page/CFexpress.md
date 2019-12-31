> 本文内容由[CFexpress](https://zh.wikipedia.org/wiki/CFexpress)转换而来。


[右](https://zh.wikipedia.org/wiki/File:CFexpress_Logo.jpg "fig:右") **CFexpress**是一种由[CompactFlash](../Page/CompactFlash.md "wikilink")联盟提出的可移动媒体卡标准。此标准将使用1至8条通道的[PCIe](../Page/PCI_Express.md "wikilink") 3.0接口传输，每条通道最多可传输1 GB/s的数据。此标准也支持通过[NVM Express提供低开销与低延迟的传输](../Page/NVM_Express.md "wikilink")。同时，其也依据不同的PCIe通道数，提供多种功能形态。\[1\]此标准被制定的一个目的是通过兼容已经被广泛使用的标准，如PCIe与NVMe，来统一可移动储存的生态系统。控制器，软件与设备中已广泛使用此标准。

## 历史

CompactFlash联盟于2016年9月7日发布了基于PCIe接口与NVNe协议的CFexpress标准。\[2\]

在2017年4月18日，CompactFlash联盟公布了CFexpress 1.0版本标准。\[3\] 1.0版本将使用拥有两条PCIe 3.0通道的[XQD储存卡](../Page/XQD卡.md "wikilink")(38.5 mm × 29.8 mm × 3.8 mm) ，传输速度最高可达2 GB/s。NVNe1.2协议被用于低延迟，低开销与高并发访问。

在2017年6月13日 , Delkin发布了第一款基于CFexpress 1.0标准的CFexpress存储卡。\[4\] 在2018年2月，基准测试结果公布，参考样品在2018年第二季度出货而产品定在2018年第三季度出售。

## 比较

| 标准       | SD        | UFS卡      | CFast     | XQD         | CFexpress  |
| -------- | --------- | --------- | --------- | ----------- | ---------- |
| 版本       | 3.0       | 4.0       | 6.0       | 7.0\[5\]    | 1.0        |
| 发布时间     | 2010年第二季度 | 2011年第一季度 | 2017年第一季度 | ?           | 2016年 第二季度 |
| 总线       | UHS-I     | UHS-II    | UHS-III   | PCIe 3.0 x1 | UF2.0      |
| 速度 (全双工) | 104MB/s   | 312MB/s   | 624MB/s   | 985MB/s     | 600MB/s    |

## 兼容设备

### 存储卡

#### Delkin

[缩略图](https://zh.wikipedia.org/wiki/File:Delkin_CFexpress.png "fig:缩略图") 在2017年6月13日 , Delkin发布了第一款基于CFexpress 1.0标准的CFexpress存储卡。\[6\]它使用了XQD格式与两条PCIe 3.0通道。其包括32GB、64GB、128GB与256GB的容量规格。

2019年2月，更多关于Delkin的CFexpress存储卡的细节泄露。\[7\]\[8\] 在CrystalDiskMark 5.2.1的测试中，存储卡应该可以达到1.6 GB/s的读取速度与1.0 GB/s的写入速度。

#### ProGrade Digital

在给的一份声明中, ProGrade Digital确认他们将会在2019年发布CFexpress标准的Type-B格式（与XQD相同）的存储卡。\[9\] ProGrade Digital在2019年春季[NAB展览中展出的](https://zh.wikipedia.org/wiki/NAB "wikilink")1 TB CFexpress存储卡演示了1400 Mbit/s的读取速度与超过700 Mbit/s 的最高写入速度。 此演示是在MacBook Pro上使用[Thunderbolt](../Page/Thunderbolt.md "wikilink") 3接口的CFexpress/XQD读卡器完成的。

#### Apacer

在2018年12月11日，Apacer发布了其第一款CFexpress存储卡\[10\]，PV130-CFX。\[11\]

#### 闪迪

在2019年9月3日，[闪迪](../Page/闪迪.md "wikilink")的Extreme Pro CFexpress B型卡在亚马逊英国，亚马逊法国， 亚马逊意大利和亚马逊西班牙上市，并于9月4日在美国亚马逊上市。此系列产品标称1700MB / s的最大读取速度和1400MB / s的最大写入速度。同时，闪迪还发布了对应的读卡器Sandisk USB 3.1 Extreme Pro CF Express。\[12\]

#### 索尼

在2019年2月28日，[索尼](../Page/索尼.md "wikilink")宣称正在开发CFexpress B型（128GB）超高速下一代存储卡，支持CFexpress标准。该卡最大读取速度为1700MB / s，最大写入速度为1480MB / s，而且还具有出色的耐用性，例如抗弯强度是CFexpress标准的3倍，抗摔强度是CFexpress标准的5倍。这款开发中的产品计划于2019年夏季以128GB规格上市。同时索尼正在考虑开发256GB和512GB的大容量规格的产品。\[13\]

#### Wise Advanced

在2019年4月7日, Wise Advanced宣布开发512GB、256GB与128GB的CFexpress存储卡与CFexpress读卡器，其均使用CFexpress Type B。 \[14\]

### 零件

在2017年10月2日，Rego Electronics发布了CFexpress主机连接器与存储卡套件。这些零件可供制造商用于他们的CFexpress设备与储存卡。\[15\]\[16\]\[17\]

### 客户端设备

在2017年7月，还没有已知的CFexpress客户端设备被发布。但在2017年10月末，一位[Lexar的雇员对Nikon](../Page/美光科技.md "wikilink") Rumors表示:

> CFExpress本质上是XQD的下一个版本，并且应该能与XQD完全向后兼容。让D4 / D5 / 500 / D850与CFE储存卡一起工作应该只需一个简单的软件补丁就可以实现。 \[18\]

2018年8月23日， [尼康](../Page/尼康.md "wikilink")宣布推出新的[无反相机Z](../Page/無反光鏡可換鏡頭相機.md "wikilink")6和Z7 。两者都使用XQD卡，但最终将通过固件升级支持CFexpress卡， \[19\] \[20\]但在2019年5月发布的2.00版本的固件更新时没有实现。 \[21\] 2019年2月13日，尼康进一步确认对D5，D850和D500的CFExpress支持也将通过固件更新的方式实现。 \[22\]

2018年8月28日，[Phase One宣布XF](../Page/Phase_One.md "wikilink") IQ4相机系统，支持XQD卡并将在未来支持CFexpress存储卡。 \[23\]

2019年12月17日，[尼康](../Page/尼康.md "wikilink")发布了针对无反相机Z6和Z7的2.20版本固件更新，其中允许了索尼生产的CFexpress B型卡的使用。而对于其他厂商生产的CFexpress卡，尼康仍在测试与认证中，支持情况会根据市面产品而变化。\[24\]\[25\]

## 参见

  - [CompactFlash](../Page/CompactFlash.md "wikilink")
  - [存储卡](../Page/記憶卡.md "wikilink")
  - [PCI](../Page/PCI_Express.md "wikilink") Express
  - [NVNe](../Page/NVM_Express.md "wikilink")

## 参考文献

[Category:计算机标准](https://zh.wikipedia.org/wiki/Category:计算机标准 "wikilink") [Category:固態電腦儲存媒體](https://zh.wikipedia.org/wiki/Category:固態電腦儲存媒體 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

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
11.
12.
13.  ソニーグループ ポータルサイト|language=ja}}
14.
15.
16.
17.
18.  Nikon Rumors|url=[https://nikonrumors.com/2017/10/31/more-info-on-lexar-xqd-and-cfexpress-memory-cards-compatibility-hoodman-rumored-to-start-making-xqd-cards.aspx/|accessdate=2017-11-08|work=nikonrumors.com|language=en-US](https://nikonrumors.com/2017/10/31/more-info-on-lexar-xqd-and-cfexpress-memory-cards-compatibility-hoodman-rumored-to-start-making-xqd-cards.aspx/%7Caccessdate=2017-11-08%7Cwork=nikonrumors.com%7Clanguage=en-US)}}
19.
20.
21.
22.
23.
24.
25.  ニコンイメージング|url=[https://www.nikon-image.com/support/whatsnew/2019/1217_03.html|accessdate=2019-12-18|work=www.nikon-image.com|language=ja](https://www.nikon-image.com/support/whatsnew/2019/1217_03.html%7Caccessdate=2019-12-18%7Cwork=www.nikon-image.com%7Clanguage=ja)}}