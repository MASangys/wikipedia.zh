[FLARM_logo.png](https://zh.wikipedia.org/wiki/File:FLARM_logo.png "fig:FLARM_logo.png") **FLARM** 是一种用于小型飞机上的防碰撞警告设备，这一最初被设计用于装备在[滑翔机上的设备诞生于](https://zh.wikipedia.org/wiki/滑翔机 "wikilink")[瑞士](https://zh.wikipedia.org/wiki/瑞士 "wikilink")，但很快就引起了全世界的关注，并很快被接受。该设备大小如香烟盒，只需要很少的电量就能驱动。主要包括两部分，一部分为[GPS接收器](../Page/全球定位系统.md "wikilink")；另一部分为一个[数字](https://zh.wikipedia.org/wiki/数字信号 "wikilink")[无线电模块](https://zh.wikipedia.org/wiki/无线电 "wikilink")。数字无线电模块中有一个发射器，用于将该设备的当前位置传递给附近（几公里范围内）的其他FLARM设备，数字无线电模块内另外还有一个相应的接收器。所发射的数据通过预先设定的[频率传输](https://zh.wikipedia.org/wiki/頻率 "wikilink")（在欧洲地区为868.2 MHz和868.4 MHz）。

## 历史

三个年轻而充满热情的瑞士滑翔机飞行员设计与制造了第一台FLARM设备，并于2004年初把它投入了市场\[1\]。开发FLARM的动机主要是因为[滑翔](../Page/滑翔.md "wikilink")运动中的多起因为滑翔机空中相撞造成的死伤事故，虽然根据[可视飞行规则](https://zh.wikipedia.org/wiki/可视飞行规则 "wikilink")，要求飞行员“看到并回避”，但实际上仅仅通过视觉对空域保持全方位的注意基本上是不可能的。\[2\]Urs Rothacher 是一个电气工程师，Andrea Schlapbach是一个[苏黎世联邦理工学院](../Page/苏黎世联邦理工学院.md "wikilink")毕业的自然科学硕士，并且有2000小时以上的滑翔经验。Urban Mäder是苏黎世联邦理工学院的一名电气工程师。三个人目前都在Safemine公司（一家生产露天采矿设备的公司）全职工作。政府部门对项目非常支持，比如毫不官僚地批准了[频谱资源使用申请](../Page/无线电频谱.md "wikilink")，批准了所有必须的申请。众多瑞士滑翔协会也出乎意料地扮演了非常重要的角色，在系统的开发阶段就签署了订购意向并支付了费用，为项目提供了必要的资金。2006年，他们获得了OSTIV奖，该奖项每两年一次颁发给对滑翔飞行做出特别贡献的学术界人士。

## 工作原理

[FLARM_equipment.JPG](https://zh.wikipedia.org/wiki/File:FLARM_equipment.JPG "fig:FLARM_equipment.JPG")FLARM设备通过内置的一台高灵敏度GPS接收机和[高度计](../Page/高度计.md "wikilink")得到自己的实时位置与高度信息。再结合[速度](../Page/速度.md "wikilink")，[加速度](../Page/加速度.md "wikilink")，航向，航迹，转弯半径，风速，高度，垂直速度，预设的飞行器类型以及其他参数，就可以计算出一条非常精确的预测飞行路径。该路径信息经过[编码后通过一个](https://zh.wikipedia.org/wiki/编码 "wikilink")[加密](../Page/加密.md "wikilink")的[无线频道](../Page/信道.md "wikilink")，以最少每秒钟一次的频率，发送给所有附近的飞行器。\[3\]

同时，FLARM设备也接收附近所有飞行器上FLARM设备所发的编码飞行路径信息。把自己的飞行路径与接收到的其他飞行路径数据相结合，通过一个智能运动预测算法就能在一个综合风险模型的基础上，计算出与每一个接收到数据的飞行器之间的碰撞风险。如发现有碰撞的可能，FLARM设备就会将这一结果，以及危险飞行器的方向和高度差信息，发送到相连的FLARM信息显示器上。飞行员在得到视觉与语音警告信息后，就能够采取对应动作，避免可能的碰撞。\[4\]

## 另見

  - [TCAS](https://zh.wikipedia.org/wiki/TCAS "wikilink")
  - [GPWS](https://zh.wikipedia.org/wiki/GPWS "wikilink")

## 参考文献

<references />

## 外部链接

  - [Overview of collision avoidance systems](http://www.bas.uk.net/data6.html)
  - Enhancing the efficacy of Flarm radio communication protocol by computer simulation ([English](http://www.xirrus.ch/download/efficacy_warning_system_lds2007.pdf), [German](http://www.wsl.ch/publikationen/pdf/8250.pdf))
  - [Interview with Gerhard Wesp, Development Manager Avionics at Flarm Technology GmbH, March 2014](http://omegataupodcast.net/2014/03/143-collision-avoidance-with-flarm/)

[Category:航空电子学](https://zh.wikipedia.org/wiki/Category:航空电子学 "wikilink") [Category:預警系統](https://zh.wikipedia.org/wiki/Category:預警系統 "wikilink") [Category:飛機部件](https://zh.wikipedia.org/wiki/Category:飛機部件 "wikilink") [Category:航空儀表](https://zh.wikipedia.org/wiki/Category:航空儀表 "wikilink")

1.

2.
3.

4.