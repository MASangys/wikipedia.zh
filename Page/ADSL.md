> 本文内容由[ADSL](https://zh.wikipedia.org/wiki/ADSL)转换而来。


[Alcatel_T07AW_of_Chunghwa_Telecom_2007-02-27.jpg](https://zh.wikipedia.org/wiki/File:Alcatel_T07AW_of_Chunghwa_Telecom_2007-02-27.jpg "fig:Alcatel_T07AW_of_Chunghwa_Telecom_2007-02-27.jpg")採用的[ATU-R](https://zh.wikipedia.org/wiki/ATU-R "wikilink")（ADSL數據機）「T07AW」內含[WLAN功能](https://zh.wikipedia.org/wiki/WLAN "wikilink")\]\] **非對稱[數位用戶線路](https://zh.wikipedia.org/wiki/數位用戶線路 "wikilink")(英文：Asymmetric Digital Subscriber)**又称**非對稱-{zh-hans:数字用户环路;zh-hk:數碼用戶回路;zh-tw:數位用戶回路;}-**（**Asymmetric Digital Subscriber Loop**）,简称**ADSL**。

## 介绍

[ADSL_Connection_zh-cn.png](https://zh.wikipedia.org/wiki/File:ADSL_Connection_zh-cn.png "fig:ADSL_Connection_zh-cn.png") ADSL因为上行（从用户到电信服务提供商方向，如上傳动作）和下行（从电信服务提供商到用户的方向，如下載动作）頻寬不对称（即上行和下行的速率不相同）因此称为非对称数字用户线路。它采用[频分多路复用](../Page/频分多路复用.md "wikilink")技术把普通的电话线分成了电话、上行和下行三个相对独立的信道，从而避免了相互之间的干扰。通常ADSL在不影响正常电话通信的情况下可以提供最高3.5Mbps的上行速度和最高24Mbps的下行速度。 [ADSL_modem_router_internals_labeled.jpg](https://zh.wikipedia.org/wiki/File:ADSL_modem_router_internals_labeled.jpg "fig:ADSL_modem_router_internals_labeled.jpg") DG632 ADSL内部结构图\]\]

## 设备

ADSL是一种[异步传输模式](https://zh.wikipedia.org/wiki/异步传输模式 "wikilink")（ATM）。

在电信服务提供商端，需要将每条开通ADSL业务的电话线路连接在[数字用户线路访问多路复用器](https://zh.wikipedia.org/wiki/DSLAM "wikilink")（DSLAM）上。而在用户端，用户需要使用一个ADSL终端（和传统的[调制解调器](../Page/调制解调器.md "wikilink")（Modem）类似）来连接电话线路。由于ADSL使用高频信号，所以在两端还都要使用ADSL信号分离器（splitter）将ADSL数据信号和普通音频电话信号分离出来，避免打电话的时候出现噪音干扰。

通常的ADSL终端有一个电话Line-In，一个[-{zh-hans:以太网;zh-hk:以太網;zh-tw:乙太網;}-口](https://zh.wikipedia.org/wiki/乙太網 "wikilink")，有些终端集成了ADSL信号分离器，还提供一个连接的Phone接口。

某些ADSL调制解调器使用USB接口与电脑相连，需要在电脑上安装指定的软件以添加虚拟网卡来进行通信。

[ADSL_frequency_plan.svg](https://zh.wikipedia.org/wiki/File:ADSL_frequency_plan.svg "fig:ADSL_frequency_plan.svg")為一般語音通話使用，Upstream為ADSL上行頻段，Downstream為ADSL下行頻段\]\]

## 标准

### 传输标准

由于受到传输高频信号的限制，ADSL需要电信服务提供商端接入设备和用户终端之间的距离不能超过5公里，也就是用户的电话线连到电话局的距离不能超过5公里。

ADSL设备在传输中需要遵循以下标准之一：

  - ITU-T G.992.1（G.dmt）
      - G.dmt：全速率，下行8Mbps，上行896Kbps
  - ITU-T G.992.2（G.lite）
      - G.lite：下行1.5Mbps，上行512Kbps
  - ITU-T G.994.1（G.hs）
      - 可变比特率（VBR）
  - ANSI T1.413 Issue \#2
      - 下行8Mbps，上行896Kbps

还有一些更快更新的标准，但是目前還很少有電信服務提供商使用：

  - ITU G.992.3/4
      - ADSL2下行12Mbps，上行1.0Mbps
  - ITU G.992.3/4
      - Annex J ADSL2下行12Mbps，上行3.5Mbps
  - ITU G.992.5
      - ADSL2+ 下行24Mbps，上行1.0Mbps
  - ITU G.992.5
      - Annex M ADSL2+ 下行24Mbps，上行3.5Mbps

ADSL2+还可以支持线路bonding的方式，也就是给终端用户提供多个线路，总带宽是单个线路带宽的累计.支持bonding方式的应用很少，技术方面详见G.998.x或G.bonding

当电信服务提供商的设备端和用户终端之间距离小于1.3公里的时候，还可以使用速率更高的[VDSL](../Page/VDSL.md "wikilink")，它的速率可以达到下行55.2Mbps，上行19.2Mbps。

### 网络登录标准

ADSL通常提供三种网络登录方式：

  - [桥接](https://zh.wikipedia.org/wiki/桥接 "wikilink")，直接提供静态[IP](https://zh.wikipedia.org/wiki/IP "wikilink")
  - [PPPoA](https://zh.wikipedia.org/wiki/PPPoA "wikilink")，基于ATM的-{zh-hans:端对端; zh-hk:點對點;}-协议
  - [PPPoE](../Page/PPPoE.md "wikilink")，基于-{zh-hans:以太网;zh-hk:乙太網;zh-tw:乙太網;}-的-{zh-hans:端对端; zh-hk:點對點;}-协议

後两种通常不提供静态IP，而是动态的给用户分配网络地址。

## 参见

  - [电话](../Page/电话.md "wikilink")
  - [ISDN](https://zh.wikipedia.org/wiki/ISDN "wikilink")（综合服务-{zh-hans:数字;zh-hk:數碼;zh-tw:數位;}-网）
  - [DSL](https://zh.wikipedia.org/wiki/DSL "wikilink")（數-{zh-hans:字;zh-hk:碼;zh-tw:位;}-用户線路）
  - [VDSL](../Page/VDSL.md "wikilink")（超高速數位用戶線路）

## 外部链接

  - [DSL论坛，促进ADSL標準制定的组织](http://www.dslforum.org/)
  - [ADSL常见故障及维护_调制解调器故障_电脑维修网](https://web.archive.org/web/20080601235132/http://www.5cha.org/article/sort02/sort026/info-225.html)
  - [有问必答ADSL常见疑难问题FAQ](http://net.zdnet.com.cn/network_security_zone/2008/0528/889710.shtml)
  - [ADSL应用面面俱到专题](https://web.archive.org/web/20080609080614/http://www.qqread.com/z/network/adsl/index.html)

[sv:Digital Subscriber Line\#ADSL](https://zh.wikipedia.org/wiki/sv:Digital_Subscriber_Line#ADSL "wikilink")

[Category:數字用戶線路](https://zh.wikipedia.org/wiki/Category:數字用戶線路 "wikilink")