**iBeacon**是[蘋果公司提出的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")“一种可以让附近手持电子设备检测到的一种新的低功耗、低成本信号传送器”的一套可用于室内定位系统的协议。\[1\]\[2\]\[3\]\[4\]\[5\]
这种技术可以使一个智能手机或其他装置在一个iBeacon基站的感应范围内执行相应的命令。\[6\]

这是帮助智能手机确定他们大概位置或环境的一个应用程序。在一个iBeacon基站的帮助下，智能手机的软件能大概找到它和这个iBeacon基站的相对位置。iBeacon能让手机收到附近售卖商品的通知，也可以让消费者不用拿出钱包或信用卡就能在销售点的POS机上完成支付。iBeacon技术通过[蓝牙低功耗](../Page/蓝牙低功耗.md "wikilink")（BLE），也就是智能蓝牙来实现。\[7\]

iBeacon為利用低功耗藍牙可以近距離感測的功能來傳輸通用唯一識別碼的一個app或作業系統。\[8\]
这个识别码可以在网上被查找到用以确定设备的物理位置\[9\]或者可以在设备上触发一个动作比如在社交媒体签到或者推送通知。

各种供应商创造了不同形式的iBeacon硬件设备，包括小硬币电池设备，隨身碟和蓝牙4.0通用加密狗。\[10\]
[缩略图](https://zh.wikipedia.org/wiki/File:An_assortment_of_iBeacon_from_different_vendors.jpg "fig:缩略图")

## 功能

一套iBeacon的部署由一个或多个在一定范围内发射传输他们唯一的识别码iBeacon信标设备组成。接收设备上的软件可以查找iBeacon并实现多种功能，比如通知用户，接收设备也可以通过链接iBeacons从iBeacon的通用属性配置服务来恢复价值。iBeacons不推送通知给接收设备（除了他们自己的ID），然而，手机软件可以使用从iBeacons接收到的信号来获取推送通知。\[11\]

### 区域监测

区域监测仅限20个区域，可以在后台运行，即使app在后台运行或者手机锁屏，依然有不同的应用通知监听app（用户）进入/退出该区。区域监测也给了关闭的app一个反应的机会，在进入相关区域时允许弹出小窗口。

### 分类

分类工作仅应用在前端，但是将返回数组iBeacons的所有属性（UUID等）。\[12\]

一个iOS设备接收一个iBeacon的传输可以近乎于iBeacon的距离，iBeacon的传输距离分为3个不同的范围：\[13\]

  - 最近：几公分
  - 中距：几米
  - 远距：大于10米

iBeacon广播可以估算用户的活动状态：进入、退出亦或是在iBeacon区域内移动。根据用户和iBeacon的距离可产生三种不同的交互。\[14\]

iBeacon传输的最大射程将取决于位置、现场布置、环境障碍物及设备放置在何处(例如在一个皮手包或者厚箱子里)。标准信号有大约70米的传输距离，长程信号可达450米。

## 功耗

[缩略图](https://zh.wikipedia.org/wiki/File:Battery_Life_of_iBeacons.png "fig:缩略图")

相比于传统蓝牙，低功耗蓝牙在功耗和效率方面有显著提高。许多芯片组制造商，如德州仪器（[Texas
Instruments](https://zh.wikipedia.org/wiki/Texas_Instruments "wikilink")）和[Nordic
Semiconductor已针对iBeacon将他们的芯片组进行了优化](https://zh.wikipedia.org/wiki/Nordic_Semiconductor "wikilink")。iBeacon的功耗取决于其广播间隔和发送功率。一项覆盖了16个不同的iBeacon厂商的研究报告称，iBeacon的电池寿命在1到24个月之间。以苹果公司的推荐设置（100ms的广播间隔）为例，一枚纽扣电池可使设备工作1到3个月。而如果将广播间隔提升至900ms，则可使该设备工作2到3年。\[15\]

在手机应用部署 iBeacon
技术时，手机电池的消耗是一个必须要考虑的因素。最新的报告显示附近有iBeacon时，旧的手机会消耗更多的电量，然而新一点的手机在同样的环境下则更加高效。\[16\]
除了浏览手机消耗的时间，扫描附近的浏览量和信标数依然是电池消耗很重要的因素，正如Aislelabs指出的报告一样。\[17\]
在后续的报告中，Aislelabs发现了iPhone 5s、iPhone 5c和舊版的iPhone
4s在电池消耗方面的一个大幅的改善。在10个iBeacon的周围，iPhone 4s每小时消耗了11%的电量而iPhone
5s则每小时比它少消耗5%的电量。 \[18\] 一个高效节能的iBeacon应用程序需要考虑这些方面去保持应用的响应性和电池消耗之间的平衡。

## 最新进展

2013年中苹果公司介绍了iBeacons，专家撰写了文章表示iBeacons怎样通过简化支付提供现场支持来帮助零售业。随着[iOS
7的推出](https://zh.wikipedia.org/wiki/iOS_7 "wikilink")，零售商和其他中小型企业将能够更好的利用蓝牙4.0技术。据报道，2013年12月6日苹果在其254个零售店中使用了iBeacons。\[19\]

截至2014年5月，只需花最低5美金就可购买不同的iBeacons硬件设备。\[20\]
每一个不同的设备的默认发射功率和广播频率都有不同的默认设置。一些硬件的广播频率可以快到每100毫秒一次，而有的可能是
1 秒一次。 iBeacon技术还在襁褓期，有报道指出一个软件存在的
Bug，使得最新安卓系统的蓝牙堆栈在遇到过多iBeacons时会崩溃。\[21\]

## 兼容设备

  - 支持蓝牙4.0的iOS设备（iPhone 4s及以上，iPad第三代及以上，iPad mini第一代及以上，iPod
    Touch第五代）。\[22\]\[23\]
  - 支持[OS X](../Page/MacOS.md "wikilink")
    [Mavericks](../Page/OS_X_Mavericks.md "wikilink")
    10.9操作系统和蓝牙4.0的苹果计算机。
  - 安卓4.3及以上（如三星 Galaxy S3/S4/S4 Mini, 三星 Galaxy Note 2/3, HTC One,
    Google/LG Nexus 7 2013 version/Nexus 4/Nexus 5, HTC Butterfly,
    OnePlus One）
  - 支持Lumia Cyan及以上更新服务的Windows Phone设备（报告显示，不包含Windows Phone 8.1）

## 引用

  - [What is iBeacon? A Guide to
    iBeacon](http://www.ibeacon.com/what-is-ibeacon-a-guide-to-beacons/)
  - [The Hitchhikers Guide to iBeacon Hardware: A Comprehensive Report
    by Aislelabs](http://www.aislelabs.com/reports/beacon-guide/)
  - [iBeacon: What is it and why should I
    care?](http://www.independent.co.uk/life-style/gadgets-and-tech/news/ibeacon-what-is-it-and-why-should-i-care-9311014.html)
  - [How Apple's iBeacon is turning location sensing inside
    out](https://web.archive.org/web/20140430092725/http://www.networkworld.com/news/2014/021014-apple-ibeacon-278571.html)
  - [Mobile Commerce: iBeacon vs.
    NFC](http://www.getelastic.com/mobile-commerce-ibeacon-vs-nfc-infographics/)
  - [iOS 8 updates iBeacon functionality: iBeacon &
    iOS 8](http://www.footmarks.com/beacons-ios8/)

## 參考資料

[Category:RFID](https://zh.wikipedia.org/wiki/Category:RFID "wikilink")
[Category:無線電導航](https://zh.wikipedia.org/wiki/Category:無線電導航 "wikilink")

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
19.
20.
21.
22.
23.