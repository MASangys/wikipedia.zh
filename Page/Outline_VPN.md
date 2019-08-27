**Outline VPN**是一个[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")，用于在多个[云服务上快速部署](../Page/雲端運算.md "wikilink")[Shadowsocks](../Page/Shadowsocks.md "wikilink")服务器\[1\]\[2\]。该软件还包括多平台的[客户端软件](https://zh.wikipedia.org/wiki/客户端 "wikilink")。 Outline是由[Google](../Page/Google.md "wikilink")创建的[技术孵化器](../Page/企业孵化器.md "wikilink")[Jigsaw](../Page/Jigsaw.md "wikilink")开发的。

Outline Server不僅可以在私人伺服器中使用，也可以在包括[DigitalOcean](../Page/DigitalOcean.md "wikilink")、[Rackspace](../Page/Rackspace.md "wikilink")、[Google雲端平台](../Page/Google雲端平台.md "wikilink")和[Amazon EC2在等雲服務上安裝使用](../Page/Amazon_EC2.md "wikilink")。\[3\]安装時可用[命令行或](../Page/命令行界面.md "wikilink")[圖形界面](../Page/图形用户界面.md "wikilink")（僅限[DigitalOcean](../Page/DigitalOcean.md "wikilink")）。

## 組成

Outline由3個主要的部分組成：\[4\]

  - Outline Server充當[代理服务器](../Page/代理服务器.md "wikilink")，並在客戶端和他們想要訪問的站點之間作爲中繼連接。Outline Server基於[Shadowsocks](../Page/Shadowsocks.md "wikilink")，並提供了一個[REST API](../Page/表现层状态转换.md "wikilink")，讓Outline Manager管理伺服器。
  - Outline Manager是一個[圖形應用程序](../Page/图形用户界面.md "wikilink")，用於[部署和管理對Outline](https://zh.wikipedia.org/wiki/软件部署 "wikilink") Server的訪問，Outline Manager支持[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[macOS和](https://zh.wikipedia.org/wiki/macOS "wikilink")[Linux](../Page/Linux.md "wikilink")。
  - Outline Client則是客戶端通過Outline伺服器連接到[互联网](../Page/互联网.md "wikilink")，Outline Client支持[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")、[Chrome OS](../Page/Chrome_OS.md "wikilink")、[Android](../Page/Android.md "wikilink")和[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")。

## 安全和隱私

Outline使用[Shadowsocks](../Page/Shadowsocks.md "wikilink")協議在客戶端和伺服器之間的通信，對流量使用[IETF](../Page/互联网工程任务组.md "wikilink") [ChaCha20](https://zh.wikipedia.org/wiki/Salsa20#ChaCha20 "wikilink")[流密码](../Page/流密码.md "wikilink")（[密鑰](../Page/公开密钥加密.md "wikilink")）\[5\]進行加密，並使用[IETF](../Page/互联网工程任务组.md "wikilink") [Poly1305](../Page/Poly1305.md "wikilink")身份驗證器進行身份驗證。\[6\]

Outline是[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")，根據[Apache许可证](../Page/Apache许可证.md "wikilink") 2.0許可，並由Radically Open Security審核，同時也聲稱不會[記錄用戶的](../Page/日志文件.md "wikilink")[網絡流量](https://zh.wikipedia.org/wiki/網站流量 "wikilink")\[7\]\[8\]。Outline Server支持無人值守升級。

Outline不是一個[匿名](../Page/匿名.md "wikilink")工具，它沒有提供與[Tor](../Page/Tor.md "wikilink")相同程度的匿名保護（[Tor](../Page/Tor.md "wikilink")通過三個而不僅僅是一個[路由](../Page/路由.md "wikilink")流量，並且還可以防止[瀏覽器指紋識別等攻擊](../Page/裝置指紋.md "wikilink")）。

從版本1.2開始，Outline的[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")、[Chrome OS](../Page/Chrome_OS.md "wikilink")、[Android](../Page/Android.md "wikilink")以及[iOS客戶端界面上出現了](https://zh.wikipedia.org/wiki/iOS "wikilink")'Beta'的字樣，有效地開始加密來自設備的所有流量。

## 評價

2018年3月，的Max Eddy表示，Outline VPN的預覽版本“非常容易使用（*startlingly easy to use*）”以及“消除了與VPN公司相關的隱私問題（*removes privacy concerns associated with VPN companies*）”。然而，Eddy批評該軟件沒有加密[Windows上的所有流量](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，並警告用戶“與大型VPN公司相比，個人使用可能缺乏一些匿名性（*individual use may lack some anonymity compared \[to\] large VPN companies*）”。\[9\]

## 參見

  -
  - [网络隐私](../Page/网络隐私.md "wikilink")

## 参考文献

## 外部链接

  -
[Category:虛擬私人網路](https://zh.wikipedia.org/wiki/Category:虛擬私人網路 "wikilink") [Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink") [Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink") [Category:自由代理服务器](https://zh.wikipedia.org/wiki/Category:自由代理服务器 "wikilink") [Category:Alphabet](https://zh.wikipedia.org/wiki/Category:Alphabet "wikilink") [Category:翻墙软件](https://zh.wikipedia.org/wiki/Category:翻墙软件 "wikilink")

1.
2.
3.
4.
5.   ZDNet|last=Tung|first=Liam|work=ZDNet|access-date=2018-07-02|language=en}}
6.
7.
8.
9.