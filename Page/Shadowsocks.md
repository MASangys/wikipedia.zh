[Shadowsocks_for_Android_(logo).png](https://zh.wikipedia.org/wiki/File:Shadowsocks_for_Android_\(logo\).png "fig:Shadowsocks_for_Android_(logo).png")
**Shadowsocks**（简称**SS**）是一種基於[Socks5代理方式的加密傳輸協定](https://zh.wikipedia.org/wiki/SOCKS#SOCK5 "wikilink")，也可以指實作這個協定的各種开发包。目前套件使用[Python](../Page/Python.md "wikilink")、[C](https://zh.wikipedia.org/wiki/C語言 "wikilink")、[C++](../Page/C++.md "wikilink")、[C\#](../Page/C♯.md "wikilink")、[Go语言等程式語言开发](https://zh.wikipedia.org/wiki/Go语言 "wikilink")，大部分主要實作（[iOS平台的除外](https://zh.wikipedia.org/wiki/iOS "wikilink")）採用[Apache许可证](../Page/Apache许可证.md "wikilink")、[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")、[MIT許可證等多種](../Page/MIT許可證.md "wikilink")[自由軟體許可協定](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")。Shadowsocks分为服务器端和客户端，在使用之前，需要先将服务器端程序部署到服务器上面，然后通过客户端连接并建立本地代理。

在中国大陆，本工具广泛用于突破[防火长城](../Page/防火长城.md "wikilink")（GFW），以浏览被封锁、遮蔽或干扰的内容。2015年8月22日，Shadowsocks原作者Clowwindy稱受到了[中国政府的压力](../Page/中华人民共和国网络审查.md "wikilink")，宣布停止维护此计划（项目）并移除其个人页面所存储的源代码\[1\]\[2\]。

为了避免[关键词过滤](https://zh.wikipedia.org/wiki/关键词过滤 "wikilink")，网民会根据[谐音将ShadowsocksR称为](https://zh.wikipedia.org/wiki/谐音_\(语言学\) "wikilink")“酸酸乳”（SSR），将Shadowsocks称为“酸酸”（SS）。

## 运行原理

[Shadowsocks_for_Android.png](https://zh.wikipedia.org/wiki/File:Shadowsocks_for_Android.png "fig:Shadowsocks_for_Android.png")
Shadowsocks的运行原理与其他代理工具基本相同，使用特定的中转服务器完成数据传输。例如，用户无法直接访问[Google](../Page/Google.md "wikilink")，但代理服务器可以访问，且用户可以直接连接代理服务器，那么用户就可以通过特定软件连接代理服务器，然后由代理服务器获取网站内容并回传给用户，从而实现代理上网的效果。另外用户在成功连接到服务器后，客户端会在本机构建一个本地Socks5代理（或VPN、透明代理等）。浏览网络时，网络流量需要先通过本地代理传递到客户端软件，然后才能发送到服务器端，反之亦然。

为防止流量被识别和拦截，服务器和客户端软件会要求提供密码和加密方式，并且在数据传输期间会对传入和传出流量进行加密。

### 特点

  - Shadowsocks使用自行设计的协议进行加密通信。\[3\]加密算法有[AES](../Page/高级加密标准.md "wikilink")、[Blowfish](https://zh.wikipedia.org/wiki/Blowfish_\(密码学\) "wikilink")、[IDEA](https://zh.wikipedia.org/wiki/IDEA算法 "wikilink")、[RC4等](../Page/RC4.md "wikilink")，除建立[TCP连接外无需](../Page/传输控制协议.md "wikilink")[握手](https://zh.wikipedia.org/wiki/握手_\(技术\) "wikilink")，每次请求只转发一个连接，無需保持「一直連線」的狀態，因此在移动设备上相對较爲省电。
  - 所有的流量都经过算法加密，允许自行选择算法。
  - Shadowsocks通过[异步I/O和事件驱动程序运行](https://zh.wikipedia.org/wiki/异步I/O "wikilink")，响应速度快。
  - 客户端覆盖多个主流操作系统和平台，包括[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[OS
    X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[Android](../Page/Android.md "wikilink")、[Linux和](../Page/Linux.md "wikilink")[iOS系统和路由器](https://zh.wikipedia.org/wiki/iOS "wikilink")（OpenWrt）等\[4\]。

### 安全性

Shadowsocks的最初设计目的只是为了绕过GFW，而不是提供密码学意义的安全，所以Shadowsocks自行设计的加密协议对双方的身份验证仅限于，亦无[完全前向保密](https://zh.wikipedia.org/wiki/完全前向保密 "wikilink")，也未曾有安全专家公开分析或评估协议及其实现。如果是監聽類型的國家內想進行科學上網，基本上Shadowsocks功能不夠完善，應該使用隱密性更高的工具。\[5\]

Shadowsocks本质上只是设置了密码的专用[网络代理协议](../Page/代理服务器.md "wikilink")，不能替代[TLS或者](https://zh.wikipedia.org/wiki/TLS "wikilink")[VPN](https://zh.wikipedia.org/wiki/VPN "wikilink")，不能用作[匿名通信方案](../Page/匿名.md "wikilink")，该协议的目标不在于提供完整的通信安全机制，主要是为了协助上网用户在[严苛的网络环境中突破封锁](../Page/互联网审查.md "wikilink")。

在某些极端的环境下，通过[深度包检测](../Page/深度包检测.md "wikilink")（DPI）也有可能识别出协议特征。为了确保安全，用户应做好额外的加密和验证措施，以免泄露信息，无论使用的服务器来源是否可靠。2017年9月21日，一篇名为《The
Random Forest based Detection of Shadowsock's
Traffic》的论文在[IEEE发表](https://zh.wikipedia.org/wiki/IEEE "wikilink")，该论文介绍了通过随机森林算法检测Shadowsocks流量的方法，并自称可达到85％的检测精度\[6\]，雖然該論文的有效性遭到网友质疑\[7\]，但[机器学习配合GFW已經實現的深度封包檢測來識別網路流量特徵的做法是實際可行的](../Page/机器学习.md "wikilink")，而且還適用於任何網路代理協定而不僅僅侷限於Shadowsocks。\[8\]

### 實作

目前Shadowsocks有多個實作支援，以自由軟體形式發佈的主要有原始Shadowsocks（以Python語言編寫）、Shadowsocks-libev（分支專案openwrt-Shadowsocks）、Shadowsocks-rust、Shadowsocks-go/go-Shadowsocks2、libQtShadowsocks、Shadowsocks-qt5（僅作爲客户端）、Shadowsocks-android（僅作爲客户端）、Shadowsocks-windows（僅作爲客户端）、ShadowsocksX-NG（僅作爲客户端）、Outline\[9\]、V2Ray、Brook\[10\]等等，還有爲數甚多的免費軟體及專有軟體。

## 项目转手

2015年8月22日，其作者Clowwindy在GitHub上稱，警察在兩日前要求他停止開發Shadowsocks專案並刪除其所有代碼。\[11\]之後，作者停止維護Shadowsocks，其[GitHub專案頁面已被清空](../Page/GitHub.md "wikilink")。\[12\]\[13\]消-{}-息传出后，许多中国和外国开发商，以及Shadowsocks用户，在GitHub中对作者表示了致谢，对已清空原始碼的项目頁面加星标，因此在当时Shadowsocks成为了GitHub上的热门项目（Trending）。\[14\]但另有消-{}-息，原作者曾作出的据称「透露中國社會現狀」的發言可能遭到某些中國政府支持者的檢舉，從而為後來被要求撤下專案原始碼的事件埋下伏筆，而類似的因個人網路發言不當而被檢舉的事件在中國大陸也「時有發生」。\[15\]

8月25日，另一个用于突破网络审查的[GoAgent项目也被作者自行删除](../Page/GoAgent.md "wikilink")。删除后几小时之内，[GitHub即遭到了来自中国的](../Page/GitHub.md "wikilink")[DDoS攻击](https://zh.wikipedia.org/wiki/DDoS "wikilink")，據報这次攻击与中国政府有关，因為當局此前曾要求Github移除兩個反對網絡審查的項目但沒有被接受。\[16\]

2015年8月28日，[电子前哨基金会针对Shadowsocks和GoAgent被删除一事发表评论](../Page/电子前哨基金会.md "wikilink")，对中国政府针对翻墙软件作者的打击表示“强烈谴责”。\[17\]

儘管如此，[Git倉庫的日誌顯示該項目被移除以前就有大量的復刻副本](../Page/Git.md "wikilink")，不少副本仍然有用戶維護。Shadowsocks專案頁本身也陸續恢復了內容，並转交由多人維護，各大[Linux套件的軟體倉庫均有各式Shadowsocks的實作的套件仍持續更新可用](https://zh.wikipedia.org/wiki/Linux套件 "wikilink")，目前的Shadowsocks更新基本上來自這些匿名作者執行，不過逐漸商業和封閉化的趨勢亦有批判。

## 主要项目分支

### ShadowsocksR

[ShadowsocksR_logo.png](https://zh.wikipedia.org/wiki/File:ShadowsocksR_logo.png "fig:ShadowsocksR_logo.png")
[ShadowsocksR_for_Android.png](https://zh.wikipedia.org/wiki/File:ShadowsocksR_for_Android.png "fig:ShadowsocksR_for_Android.png")
ShadowsocksR（简称SSR）是网名为breakwa11的用户發起的Shadowsocks分支，在Shadowsocks的基础上增加了一些資料混淆方式，称修复了部分安全问题并可以提高[QoS优先级](https://zh.wikipedia.org/wiki/QoS "wikilink")。\[18\]后来貢獻者Librehat也为Shadowsocks补上了一些此类特性，\[19\]甚至增加了类似[Tor的可插拔传输层功能](../Page/Tor.md "wikilink")。\[20\]

ShadowsocksR開始時曾有过违反[GPL](../Page/GNU通用公共许可证.md "wikilink")、发放二进制时不发放源码的争议，使得原開發作者不滿\[21\]不过后来ShadowsocksR项目由breakwa11转为了與Shadowsocks相同的GPL、Apache許可證、MIT許可證等多重自由軟體許可协-{}-议。

2017年7月19日，ShadowsocksR作者breakwa11在Telegram频道ShadowsocksR
news裡转发了深圳市启用SS协议检测的消息并被大量用户转发，引发恐慌\[22\]。7月24日，breakwa11发布了闭源的SS被动检测程序，引发争议\[23\]。7月27日，breakwa11遭到自称“ESU.TV”（恶俗维基TV）的不明身份人士人身攻击，对方宣称如果不停止开发并阻止用户讨论此事件将发布更多包含个人隐私的资料\[24\]，随后breakwa11表示遭到对方人肉搜索并公开个人资料的是无关人士，为了防止对方继续伤害无关人士，breakwa11将删除GitHub上的所有代码、解散相关交流群组，停止ShadowsocksR项目。但项目已被多人fork，并有人在其基础上继续发布新的版本，例如较为知名的[SSRR](https://github.com/shadowsocksrr)（ShadowsocksRR）。

## 參考資料

## 外部链接

  -
  - [Shadowsocks各平台的客户端-{列表}-](https://shadowsocks.org/en/download/clients.html)

  -
  - （已停止）

  - （ShadowsocksR的新版本）

[Category:2012年软件](https://zh.wikipedia.org/wiki/Category:2012年软件 "wikilink")
[Category:代理服务器](https://zh.wikipedia.org/wiki/Category:代理服务器 "wikilink")
[Category:代理软件](https://zh.wikipedia.org/wiki/Category:代理软件 "wikilink")
[Category:破网软件](https://zh.wikipedia.org/wiki/Category:破网软件 "wikilink")
[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")
[Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.   IT-eNews|date = 2015-08-20|accessdate = 2016-02-03}}

2.  <small>（[中文翻译](https://zh.wikipedia.org/wiki/s:Translation:Speech_that_Enables_Speech:_China_Takes_Aim_at_Its_Coders "wikilink")）</small>

3.

4.

5.  [关于一些基本问题的讨论：Shadowsocks有没有（以及要不要）提供密码学意义的安全？ · Issue \#64 ·
    shadowsocks/shadowsocks-org -
    GitHub](https://github.com/shadowsocks/shadowsocks-org/issues/64)

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