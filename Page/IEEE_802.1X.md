> 本文内容由[IEEE 802.1X](https://zh.wikipedia.org/wiki/IEEE_802.1X)转换而来。


**IEEE 802.1X**是[IEEE制定关于用户接入网络的认证标准](https://zh.wikipedia.org/wiki/IEEE "wikilink")（注意：此处X是大写\[1\]），全称是“基于端口的网络接入控制”，属于[IEEE 802.1网络协议组的一部分](https://zh.wikipedia.org/wiki/IEEE_802.1 "wikilink")。于2001年标准化，之后为了配合无线网络的接入进行修订改版，于2004年完成。它为想要连接到[LAN或](https://zh.wikipedia.org/wiki/LAN "wikilink")[WLAN的设备提供了一种](https://zh.wikipedia.org/wiki/WLAN "wikilink")[认证机制](https://zh.wikipedia.org/wiki/身份验证 "wikilink")。

IEEE 802.1X协议在用户接入网络（可以是[以太网](../Page/以太网.md "wikilink")／[802.3或者](https://zh.wikipedia.org/wiki/802.3 "wikilink")[WLAN网](https://zh.wikipedia.org/wiki/WLAN "wikilink")）之前运行，运行于网络中的[数据链路层](../Page/数据链路层.md "wikilink")，[EAP](../Page/EAP.md "wikilink")协议[RADIUS协议](https://zh.wikipedia.org/wiki/RADIUS "wikilink")。

IEEE 802.1X定义了在[IEEE 802上运行](../Page/IEEE_802.md "wikilink")[扩展认证协议](../Page/扩展认证协议.md "wikilink")（EAP，即"EAP over LAN"或EAPOL\[2\]）的封装方式\[3\]\[4\]。EAPOL最初被定义在802.1X-2001，设计对象为[IEEE 802.3以太网](https://zh.wikipedia.org/wiki/IEEE_802.3 "wikilink")，但是后来为了适应其他IEEE 802 LAN技术，如[IEEE 802.11无线和](../Page/IEEE_802.11.md "wikilink")[光纤分布式数据接口](../Page/光纤分布式数据接口.md "wikilink")（FDDI）（ISO 9314-2），在802.1X-2004中又做了澄清\[5\]。为了与[IEEE 802.1AE](https://zh.wikipedia.org/wiki/IEEE_802.1AE "wikilink") (“MACsec”)和[IEEE 802.1AR](https://zh.wikipedia.org/wiki/IEEE_802.1AR "wikilink") (Secure Device Identity, DevID)一起使用，EAPOL协议在802.1X-2010中还进行了修改\[6\]\[7\]，以支持服务识别和在本地LAN段上的可选点对点加密。

## 概述

[802.1X_wired_protocols.png](https://zh.wikipedia.org/wiki/File:802.1X_wired_protocols.png "fig:802.1X_wired_protocols.png") 802.1X验证涉及到三个部分：申请者、验证者和验证服务器。申请者是一个需要连接到LAN/WAN的客户端设备（如便携机），同时也可以指运行在客户端上，提供凭据给验证者的软件。验证者是一个网络设备，如以太网交换机或无线接入点。验证服务器通常是一个运行着支持[RADIUS和](https://zh.wikipedia.org/wiki/RADIUS "wikilink")[EAP](../Page/EAP.md "wikilink")协议的主机。 验证者就像是一个受保护网络的警卫。申请者（如客户端设备）不允许通过验证者访问到受保护一侧的网络，直到申请者的身分被验证和授权。这就像是允许进入一个国家之前要在机场的入境处提供一个有效的签证一样。使用802.1X基于端口的验证，申请者向验证者提供凭据，如用户名/密码或者数字证书，验证者将凭据转发给验证服务器来进行验证。如果验证服务器认为凭据有效，则申请者（客户端设备）就被允许访问被保护侧网络的资源\[8\]。

## 参考資料

<div class="references-small">

<references />

</div>

## 外部連結

  - [Get IEEE 802®](http://standards.ieee.org/getieee802/download/802.1X-2004.pdf)

  - [WIRE1x](http://wire.cs.nctu.edu.tw/wire1x/)

[Category:IEEE_802](https://zh.wikipedia.org/wiki/Category:IEEE_802 "wikilink")

1.  [IEEE关于命名的解释](http://standards.ieee.org/getieee802/802.1.html)
2.  IEEE 802.1X-2001, § 7
3.  RFC 3748, § 3.3
4.  RFC 3748, § 7.12
5.  IEEE 802.1X-2004, § 3.2.2
6.  IEEE 802.1X-2010, page iv
7.  IEEE 802.1X-2010, § 5
8.