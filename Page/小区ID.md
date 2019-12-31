> 本文内容由[小区ID](https://zh.wikipedia.org/wiki/小区ID)转换而来。


GSM **小区ID**（Cell ID，也称CID）是一个全局唯一的号码，用于区分各个[基地收发机站](../Page/基站子系统.md "wikilink")（Base Transceiver Station，简称BTS）或者，如果不是在[GSM](../Page/GSM.md "wikilink")网络内的话，则区分一个[位置区码](https://zh.wikipedia.org/wiki/移动性管理#位置区 "wikilink")（Location Area Code，简称LAC）中的BTS的一个扇面（Sector）。

在某些情况下，CID的第一位或最后一位数字代表该小区的扇面（Sector）ID：

  - 数值“0”表示全向天线，
  - 数值“1”，“2”，“3”用于区分双扇面（bisector）或三扇面（trisector）天线的不同扇面。

在[UMTS中](https://zh.wikipedia.org/wiki/UMTS "wikilink")，小区ID（CID）和[UTRAN小区ID](https://zh.wikipedia.org/wiki/UTRAN "wikilink")（也被称为LCID）是有区别的。UTRAN小区ID（LCID）是把RNC-ID（一个12比特的数，[无线网络控制器的ID](https://zh.wikipedia.org/wiki/无线网络控制器 "wikilink")）和小区ID（一个12比特数，小区的唯一标识）串联起来。 CID仍是原来的小区ID。二者串联后仍然是唯一的，但在一些小区ID数据库中可能会造成混淆，因为一些数据库存储CID，而另一些可能存储LCID。实际上有必要将二者分别单独存储，因为对于很多小区来说，RNC ID是相同的，CID才是唯一的。\[1\]\[2\]

在GSM和CDMA网络中，一个有效的CID范围是0～65535(2<sup>16</sup> −1)，而在UMTS和[LTE网络中](https://zh.wikipedia.org/wiki/LTE "wikilink")，有效范围则是0～268,435,455(2<sup>28</sup> −1)。\[3\]

## 小区ID数据库和服务

有许多可用的商业的和公共的小区ID数据库和服务：

<table>
<thead>
<tr class="header">
<th><p>名称</p></th>
<th><p>小区个数</p></th>
<th style="text-align: right;"><p>国家个数(<a href="../Page/行動裝置國家代碼.md" title="wikilink">MCC</a>)</p></th>
<th><p>运营商个数(<a href="../Page/行動裝置國家代碼.md" title="wikilink">MNC</a>)</p></th>
<th><p>Measurements</p></th>
<th><p>免费数据库下载</p></th>
<th><p>活跃项目</p></th>
<th><p>数据许可证</p></th>
<th><p>说明</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Cellspotting.com</p></td>
<td><p>10万[4]</p></td>
<td style="text-align: right;"></td>
<td><p>667</p></td>
<td></td>
<td></td>
<td><p>是</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Combain移动 – <a href="http://combain.com/">combain.com</a></p></td>
<td><p>&gt;1亿[5]</p></td>
<td style="text-align: right;"><p>&gt;240</p></td>
<td><p>&gt;1700</p></td>
<td><p>&gt;660亿</p></td>
<td><p>否</p></td>
<td><p>是</p></td>
<td></td>
<td><p>通过API支持 GSM、CDMA、UMTS、LTE 和 Wi-Fi (&gt;1.6B Wi-Fis) 。[6]</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://www.locationapi.org/">LocationAPI.org</a>– 无线实验室（Unwired Labs）</p></td>
<td><p>1亿5789万[7]</p></td>
<td style="text-align: right;"><p>240</p></td>
<td><p>1712</p></td>
<td><p>250亿</p></td>
<td><p>否</p></td>
<td><p>是</p></td>
<td></td>
<td><p>通过它提供的API支持WiFi、GSM、CDMA、UMTS以及LTE技术。<a href="https://zh.wikipedia.org/wiki/File:Coverage_Map_-_Unwired_Labs_LocationAPI.png" title="fig:缩略图">缩略图</a> [8]</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/谋智（Mozilla）位置服务" title="wikilink">谋智（Mozilla）位置服务</a></p></td>
<td><p>2820万[9]</p></td>
<td style="text-align: right;"><p>240[10]</p></td>
<td></td>
<td><p>270亿[11]</p></td>
<td><p>是[12]</p></td>
<td><p>是[13]</p></td>
<td></td>
<td><p>基于众包数据。同时还有WiFi数据库。与OpenCelliD[14]和康拜恩（Combain）合作。[15]</p></td>
</tr>
<tr class="odd">
<td><p>Mylnikov GEO[16]</p></td>
<td><p>&gt;3400万</p></td>
<td style="text-align: right;"><p>505</p></td>
<td><p>3500</p></td>
<td></td>
<td><p>是</p></td>
<td><p>是</p></td>
<td></td>
<td><p>包含来自radiocells.org、OpenCellID以及MLS的数据。</p></td>
</tr>
<tr class="even">
<td><p>Navizon[17]</p></td>
<td><p>7100万</p></td>
<td style="text-align: right;"><p>239</p></td>
<td><p>1712</p></td>
<td><p>220亿</p></td>
<td><p>否</p></td>
<td><p>是</p></td>
<td></td>
<td><p>基于众包数据，也包括WiFi数据库。[18]</p></td>
</tr>
<tr class="odd">
<td><p>NetMeterProject.com</p></td>
<td><p>20万</p></td>
<td style="text-align: right;"><p>77</p></td>
<td><p>174</p></td>
<td><p>1000万</p></td>
<td><p>受限；仅供私有使用</p></td>
<td><p>no [19]</p></td>
<td></td>
<td><p>只有数据库中的一小部分数据可以被下载，并且仅供私有使用：那些众包用户接受“Creative Commons Namensnennung-Nicht-kommerziell-Weitergabe unter gleichen Bedingungen 3.0 Deutschland”协议的测量数据。</p></td>
</tr>
<tr class="even">
<td><p>OpenCellID 由无线实验室（Unwired Labs）提供[20]</p></td>
<td><p>3890万</p></td>
<td style="text-align: right;"><p>222</p></td>
<td><p>753</p></td>
<td><p>21亿</p></td>
<td><p>是</p></td>
<td><p>是</p></td>
<td></td>
<td><p>基于众包数据；要下载数据库的话，需要免费API秘钥；该服务目前由无线实验室（Unwired Lab）维护。[21][22]</p></td>
</tr>
<tr class="odd">
<td><p>OpenSignal[23]</p></td>
<td><p>80万</p></td>
<td style="text-align: right;"></td>
<td><p>825</p></td>
<td><p>52亿</p></td>
<td><p>否</p></td>
<td><p>是</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>radiocells.org[24]</p></td>
<td><p>70万</p></td>
<td style="text-align: right;"><p>94</p></td>
<td><p>243</p></td>
<td></td>
<td><p>是</p></td>
<td><p>是</p></td>
<td></td>
<td><p>基于众包数据</p></td>
</tr>
<tr class="odd">
<td><p>WiGLE[25]</p></td>
<td><p>620万</p></td>
<td style="text-align: right;"></td>
<td></td>
<td></td>
<td><p>否</p></td>
<td><p>是</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://cellmapper.net/">小区映射器</a></p></td>
<td></td>
<td style="text-align: right;"></td>
<td></td>
<td></td>
<td><p>否</p></td>
<td><p>是</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://web.archive.org/web/20190306111559/http://openmobilenetwork.org/">开放式移动网络</a></p></td>
<td></td>
<td style="text-align: right;"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://www.gyokovsolutions.com/G-NetWorld/G-NetWorld.php">G-NetWold</a> 由 Gyokov解决方案提供</p></td>
<td></td>
<td style="text-align: right;"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://www.skyhookwireless.com/">天钩无线</a></p></td>
<td></td>
<td style="text-align: right;"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>谷歌位置服务[26]</p></td>
<td></td>
<td style="text-align: right;"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>苹果位置服务[27]</p></td>
<td></td>
<td style="text-align: right;"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>微软位置服务[28]</p></td>
<td></td>
<td style="text-align: right;"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 参见

  - [基地收发机站](../Page/基地收发机站.md "wikilink")
  - 现场测试模式
  - [E-CellID](https://zh.wikipedia.org/wiki/E-CellID "wikilink")

## 参考文献

<references group="" responsive="">

</references>

## 外部链接

  - [Combain定位服务](https://combain.com/)：以API方式提供的云服务，用于定位无线设备。基于小区ID和WiFi。
  - [来自无线实验室（Unwired Lab）的LocationAPI](https://unwiredlabs.com/)：位置即API服务，通过WiFi、蜂窝信号塔和IP地址来定位设备。
  - [谋智位置服务](https://location.services.mozilla.com/) ：一个开放式服务，它可以让设备通过网络基础设施（例如WiFi接入点和蜂窝信号塔）来确定它们的位置
  - [CellMapper](https://www.cellmapper.net/map)：蜂窝网络的覆盖范围和信号塔地图
  - [OpenCellID](https://opencellid.org)：一个开源项目，目的是创建一个全世界的小区ID以及它们所对应的位置的完整数据库。
  - [cellidfinder](https://cellidfinder.com/)：找到任何已知的小区ID的坐标。
  - [Navizon](https://www.navizon.com/)：以API方式提供的云服务，使用WiFi接入点和小区ID位置的一个全球性的数据库，来定位无线设备。
  - [openBmap](https://web.archive.org/web/20180601142241/http://www.openbmap.org/)：一个免费和开放的无线通信设施（例如蜂窝天线、WiFi接入点等）。
  - [minigps](http://minigps.net/map.html)：中国境内的小区ID的一些信息
  - [Mylnikov GEO](https://www.mylnikov.org/archives/1059)：一个开源API项目。 它让我们得到移动信号塔的坐标，没有任何限制，并且完全免费的。 ([俄罗斯](https://zh.wikipedia.org/wiki/俄语 "wikilink"))
  - [基站编号方案](http://people.csail.mit.edu/bkph/cellular_repeater_numerology.shtml)：关于蜂窝中继器的编号的讨论

[Category:GSM標準](https://zh.wikipedia.org/wiki/Category:GSM標準 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.  <https://stackoverflow.com/questions/7240038/utran-cell-identity-returned-by-getcid>
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