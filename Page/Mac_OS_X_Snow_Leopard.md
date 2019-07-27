**Mac OS X v10.6 Snow
Leopard**是由[蘋果公司所發布及販售的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，適用於[麥金塔電腦](https://zh.wikipedia.org/wiki/麥金塔電腦 "wikilink")，于2009年8月28日在全球上市，分为个人版和可供五人使用的家庭版。这是[Mac
OS
X一个简单](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、功能更强大完善的版本。它提供了大量的改进功能、新一代技术、内置的Microsoft
Exchange Serve 支持以及新辅助功能。

本版本在[OS X Mavericks发布后](../Page/OS_X_Mavericks.md "wikilink")，仍继续发售光盘版本。

## 开发者相关技术

### 64位构架

[Mac OS X
v10.4在支持](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.4 "wikilink")64位的机种上增加了有限的[64位应用程序支持](https://zh.wikipedia.org/wiki/64位 "wikilink")；[Mac
OS X
v10.5将](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.5 "wikilink")64位应用程序支持扩展到了大多数Mac
OS X的库和框架上。

Mac OS X
10.6中，绝大多数内建的应用程序都已经重新编译以支持[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")[架构](../Page/指令集架構.md "wikilink")（除了[iTunes](https://zh.wikipedia.org/wiki/iTunes "wikilink")，[Front
Row](../Page/Front_Row.md "wikilink")，[Grapher和](https://zh.wikipedia.org/wiki/Grapher "wikilink")[DVD播放程式以外](https://zh.wikipedia.org/wiki/DVD播放程式 "wikilink")）\[1\]。利用[Mach-O](../Page/Mach-O.md "wikilink")的[通用二进制](../Page/通用二进制.md "wikilink")特性，这些程序在32位处理器上可以以32位模式运行，在64位处理器上则可以以64位模式运行，在加载时自动选择最合适的版本。同时，内核和内核扩展也可以使用通用二进制格式以同时支持两种构架。

同时，为了可以在某些机种上以64位模式运行，Mac OS X
[内核](../Page/内核.md "wikilink")也进行了重新编译。在不是默认运行64位模式的机种上，用户需要在启动时按住数字键6和4以使用64位内核\[2\]\[3\]，或更改com.apple.Boot.plist使得以默认64位内核方式启动。反之，在默认加载64位内核的情况下，可以在开机时按住数字键3和2以使用32位内核。64位内核只支持64位的[内核扩展](https://zh.wikipedia.org/wiki/内核扩展 "wikilink")，反之亦然；普通应用程序则无此限制，唯独32位程序只能使用4GB的内存空间\[4\]\[5\]
。

在10.6.0版系统上，只有下列机种可以开启64位内核功能：\[6\]\[7\]

| 产品                      | 型号名           | 64位内核状态 |
| ----------------------- | ------------- | ------- |
| Early 2008 Mac Pro      | MacPro3,1     | 可开启     |
| Early 2008 Xserve       | Xserve2,1     | 默认      |
| MacBook Pro 15″/17″     | MacBookPro4,1 | 可开启     |
| iMac                    | iMac8,1       | 可开启     |
| Unibody MacBook Pro 13″ | MacBookPro5,5 | 可开启     |
| Unibody MacBook Pro 15″ | MacBookPro5,1 | 可开启     |
| Unibody MacBook Pro 17″ | MacBookPro5,2 | 可开启     |
| Mac Pro                 | MacPro4,1     | 可开启     |
| iMac                    | iMac9,1       | 可开启     |
| Early 2009 Xserve       | Xserve3,1     | 默认      |
| Early 2009 Mac mini     | Macmini3,1    | 可开启     |

Amit Singh与Allen Dunahoo声称early 2009 Mac Mini 和 Early 2009 MacBook 13"
机型有可能可以开启64位内核。若使用[OnyX](https://zh.wikipedia.org/wiki/OnyX "wikilink")，也可以让Unibody
MacBook使用64位内核\[8\]。

### Grand Central Dispatch

[Grand Central
Dispatch可以利用新的Mac上的](https://zh.wikipedia.org/wiki/Grand_Central_Dispatch "wikilink")[多核处理器取得更好的性能](https://zh.wikipedia.org/wiki/多核处理器 "wikilink")。由于为多核CPU进行[程序优化的技术难度](https://zh.wikipedia.org/wiki/程序优化 "wikilink")，多数程序并没有有效的利用多核的特性\[9\]，因此，多核处理器的能力常常没有得到完全的应用。Grand
Central
Dispatch包含一些可以帮助开发者有效的利用多核特性进行[并行计算](../Page/并行计算.md "wikilink")的[API](https://zh.wikipedia.org/wiki/API "wikilink")。

Grand Central
Dispatch将线程编程的焦点移到了编程自身，而将开发者从原有的将任务平均分配到各个核上、清除无用线程使用的内存等繁琐过程中解放出来，使优化性能变得更为容易。Apple也给出了用于开发者编写的程序的Grand
Central Dispatch API，也允许开发者分析Grand Central Dispatch程序中特定模块的性能。\[10\]

一种称为「[块](../Page/块_\(C语言扩展\).md "wikilink")」（blocks）新的[C语言和](https://zh.wikipedia.org/wiki/C语言 "wikilink")[Objective-C](../Page/Objective-C.md "wikilink")语言特性使得开发者可以更简便的优化程序，以应用Grand
Central Dispatch的优点。\[11\]\[12\]\[13\]

### OpenCL

[OpenCL](../Page/OpenCL.md "wikilink")允许在任意程序中利用[GPU的运算能力](https://zh.wikipedia.org/wiki/GPU "wikilink")，而不限于类似于3D游戏的偏重图形的程序。OpenCL自动的为Mac中的GPU种类而优化，并利用可用的运算能力。OpenCL提供了连续的数值精度，并修正了妨碍基于GPU编程的一个问题。\[14\]

OpenCL的目的与[Nvidia的C语言框架](https://zh.wikipedia.org/wiki/Nvidia "wikilink")[CUDA](../Page/CUDA.md "wikilink")以及[微软](../Page/微软.md "wikilink")的[Direct3D
11计算技术相似](https://zh.wikipedia.org/wiki/Direct3D#Direct3D_11 "wikilink")。

OpenCL只能在下列GPU上工作： NVIDIA GeForce 320M, GT 330M, 9400M, 9600M GT, 8600M
GT, GT 120, GT 130, GTX 285, 8800 GT, 8800 GS, Quadro FX 4800, FX 5600
and ATI Radeon HD 4670, HD 4850, HD 4870, HD 5670, HD 5750, HD 5770, HD
5870.\[15\]

### CUPS

[CUPS](../Page/CUPS.md "wikilink")
（是在许多[类Unix系统上应用的打印系统](https://zh.wikipedia.org/wiki/类Unix "wikilink")）被升级到了1.4版，提供了改进的驱动，网络，[Kerberos](../Page/Kerberos.md "wikilink")支持以及一些性能改进。CUPS
1.4也是第一个支持[互联网列印协定](https://zh.wikipedia.org/wiki/互联网列印协定 "wikilink")2.1版的实现。\[16\]

### 电源管理

电源管理也有所改进，包含了支持了更多硬件[按需唤醒功能的实现](https://zh.wikipedia.org/wiki/按需唤醒 "wikilink")。\[17\]
按需唤醒利用了一些在[AirPort](../Page/AirPort.md "wikilink")与[Time
Capsule等路由设备](https://zh.wikipedia.org/wiki/Time_Capsule "wikilink")[Sleep
proxy
service中实现的优点](https://zh.wikipedia.org/wiki/Sleep_proxy_service "wikilink")，\[18\]因此计算机可以在路由器响应[mDNS请求时睡眠](https://zh.wikipedia.org/wiki/mDNS "wikilink")。若请求需要唤醒主机，则路由会向睡眠的计算机发送必要的特殊[唤醒封包](https://zh.wikipedia.org/wiki/网路唤醒#魔法封包 "wikilink")\[19\]
。

## 發行版本

<table>
<thead>
<tr class="header">
<th><p>|版本</p></th>
<th><p>|Build</p></th>
<th><p>|日期</p></th>
<th><p>|<a href="https://zh.wikipedia.org/wiki/uname" title="wikilink">系统名称</a></p></th>
<th><p>|备注</p></th>
<th><p>|下载</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>10.6</p></td>
<td><p>10A432</p></td>
<td><p>2009年8月28日</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Apple_Darwin" title="wikilink">Darwin</a> 10.0</p></td>
<td><p>第一個零售版本</p></td>
<td><p>rowspan=2 </p></td>
</tr>
<tr class="even">
<td><p>10A433</p></td>
<td><p>第一個伺服器零售版本</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>10.6.1</p></td>
<td><p>10B504</p></td>
<td><p>2009年9月10日</p></td>
<td><p>Darwin 10.1</p></td>
<td><p><a href="http://support.apple.com/kb/HT3810">About the Mac OS X v10.6.1 Update</a></p></td>
<td><p><a href="http://support.apple.com/kb/DL930">Mac OS X v10.6.1 Update</a></p></td>
</tr>
<tr class="even">
<td><p>10.6.2</p></td>
<td><p>10C540</p></td>
<td><p>2009年11月9日</p></td>
<td><p>Darwin 10.2</p></td>
<td><p><a href="http://support.apple.com/kb/HT3874">About the Mac OS X v10.6.2 Update</a></p></td>
<td><p><a href="http://support.apple.com/kb/DL958">Mac OS X v10.6.2 Update</a></p></td>
</tr>
<tr class="odd">
<td><p>10.6.3</p></td>
<td><p>10D573</p></td>
<td><p>2010年3月29日</p></td>
<td><p>Darwin 10.3</p></td>
<td><p><a href="http://support.apple.com/kb/HT4014">About the Mac OS X v10.6.3 Update</a></p></td>
<td><p><a href="http://support.apple.com/kb/DL1018">Mac OS X v10.6.3 Update</a></p></td>
</tr>
<tr class="even">
<td><p>10D575</p></td>
<td></td>
<td><p>第二零售發佈版本</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>10D578</p></td>
<td><p>2010年4月13日</p></td>
<td><p><a href="http://support.apple.com/kb/HT4014">About the Mac OS X v10.6.3 Update</a>; v1.1</p></td>
<td><p><a href="http://support.apple.com/kb/DL1017">Mac OS X v10.6.3 v1.1 Update (Combo)</a></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>10.6.4</p></td>
<td><p>10F569</p></td>
<td><p>2010年6月15日</p></td>
<td><p>Darwin 10.4</p></td>
<td><p><a href="http://support.apple.com/kb/HT4150">About the Mac OS X v10.6.4 Update</a></p></td>
<td><p><a href="http://support.apple.com/kb/DL1048">Mac OS X v10.6.4 Update (Combo)</a></p></td>
</tr>
<tr class="odd">
<td><p>10.6.5</p></td>
<td><p>10H574</p></td>
<td><p>2010年11月11日</p></td>
<td><p>Darwin 10.5</p></td>
<td><p><a href="http://support.apple.com/kb/HT4250">About the Mac OS X v10.6.5 Update</a></p></td>
<td><p><a href="http://support.apple.com/kb/DL1324">Mac OS X v10.6.5 Update (Combo)</a></p></td>
</tr>
<tr class="even">
<td><p>10.6.6</p></td>
<td><p>10J567</p></td>
<td><p>2011年1月6日</p></td>
<td><p>Darwin 10.6</p></td>
<td><p><a href="http://support.apple.com/kb/HT4459">About the Mac OS X v10.6.6 Update</a></p></td>
<td><p><a href="http://support.apple.com/kb/DL1349">Mac OS X v10.6.6 Update (Combo)</a></p></td>
</tr>
<tr class="odd">
<td><p>10.6.7</p></td>
<td><p>10J869</p></td>
<td><p>2011年3月21日</p></td>
<td><p>Darwin 10.7</p></td>
<td><p><a href="http://support.apple.com/kb/HT4472">About the Mac OS X v10.6.7 Update</a></p></td>
<td><p><a href="http://support.apple.com/kb/DL1361">Mac OS X v10.6.7 Update (Combo)</a></p></td>
</tr>
<tr class="even">
<td><p>10.6.8</p></td>
<td><p>10K540</p></td>
<td><p>2011年6月23日</p></td>
<td><p>Darwin 10.8</p></td>
<td><p><a href="http://support.apple.com/kb/HT4561">About the Mac OS X v10.6.8 Update</a></p></td>
<td><p>Mac OS X v10.6.8 Update (Combo)</p></td>
</tr>
<tr class="odd">
<td><p>10K549</p></td>
<td><p>2011年7月25日</p></td>
<td><p><a href="http://support.apple.com/kb/HT4561">About the Mac OS X v10.6.8 Update</a>; v1.1</p></td>
<td><p><a href="http://support.apple.com/kb/DL1399">Mac OS X v10.6.8 v1.1 Update (Combo)</a></p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 参考文献

[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")
[Category:2009年软件](https://zh.wikipedia.org/wiki/Category:2009年软件 "wikilink")
[Category:苹果操作系统](https://zh.wikipedia.org/wiki/Category:苹果操作系统 "wikilink")

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
13.
14.
15.
16.
17.
18.
19. Note: The networking industry nomenclature for a wake-up-packet is
    [Magic
    Packet](https://zh.wikipedia.org/wiki/Wake-on-LAN#Magic_Packet "wikilink")