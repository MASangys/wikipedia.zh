**NGB
TVOS**，全称****，是[中华人民共和国](https://zh.wikipedia.org/wiki/中华人民共和国 "wikilink")[国家新闻出版广电总局科技司带头研发的基于](https://zh.wikipedia.org/wiki/国家新闻出版广电总局 "wikilink")[Linux](../Page/Linux.md "wikilink")和[安卓系统的一套应用于网络电视的操作系统](https://zh.wikipedia.org/wiki/安卓 "wikilink")。其开发者自称“兼顾现有操作系统的技术，比如Linux、安卓”，并增加[信息安全模块](https://zh.wikipedia.org/wiki/信息安全模块 "wikilink")，加强用户的信息安全保障，是专门针对电视终端的[操作系统](../Page/操作系统.md "wikilink")。\[1\]但当局强制在互联网电视领域推广该系统，引起了网民的反感。

## 历史

2008年12月，合作協議書被簽署。\[2\]

2012年3月，国家新闻出版广电总局科技司组织国内科研院所、设备开发商、网络运营商等17家组织，成立NGB TVOS合作开发组，开展NGB
TVOS的研发工作。其原型系统于2013年7月实现1.0版本。\[3\]

2014年6月中旬，广电总局针对互联网电视牌照商，下发《关于立即关闭互联网电视终端产品中违规视频软件下载通道》的“关闭函”，点名批评[华数传媒](../Page/华数传媒.md "wikilink")和[阿里巴巴](../Page/阿里巴巴.md "wikilink")合作推出的“天猫魔盒”和[百视通](../Page/百视通.md "wikilink")的“小红互联网机顶盒”，要求立即进行整顿。数天后，广电总局马上召开发布记者会，宣布TVOS正式发布。\[4\]

但该系统的发布却遭到了媒体质疑其很难成为行业标准，电视厂商也因为集成第三方程序过于麻烦而没有安装计划。\[5\]亦有媒体质疑它的真面目到底是什么，因为即使是参与开发厂商的网站也没有公布其实际界面图片。\[6\]而互联网的[OTT厂商如](https://zh.wikipedia.org/wiki/OTT "wikilink")[乐视更明确表示不会使用TVOS系统](https://zh.wikipedia.org/wiki/乐视 "wikilink")，因为其自身的电视系统已经非常成熟并产生盈利系统。\[7\]

## 系统架构

TVOS向上承载Java和HTML应用，其架构分为应用框架层、执行环境层、功能组件层、硬件抽象层（HAL，Hardware Abstract
Layer）和Linux内核层。\[8\]

应用框架层提供Java应用框架和Web应用框架。执行环境层提供Java和Web两种应用执行环境，其中Web应用执行环境的核心能力由[WebKit](../Page/WebKit.md "wikilink")支持。功能组件层由以C/C++代码实现，提供DTV、DCAS、VOD、AV设置等服务，有窗口管理、事件管理、人机交互等基本GUI服务，有应用管理、安装包管理、内容管理等系统服务。硬件抽象层对应WiFi、USB、视频解码器、音频解码器、摄像头、电源管理器、调谐解调器等硬件进行HAL封装。Linux内核层采用Linux
3.0.31作为基线版本，继承沿用由Android的Binder机制。\[9\]

针对用户安全问题，NGB TVOS制定全局的安全管理框架，在每个软件层植入安全模块，任何部件都可以按照此框架的设计与安全模块对接。\[10\]

## 参考

<references/>

[Category:电视操作系统](https://zh.wikipedia.org/wiki/Category:电视操作系统 "wikilink")
[Category:定制Android固件](https://zh.wikipedia.org/wiki/Category:定制Android固件 "wikilink")

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