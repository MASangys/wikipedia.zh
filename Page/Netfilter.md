{{ Infobox Software | name =
[Linux內核](https://zh.wikipedia.org/wiki/Linux內核 "wikilink") | title
= Netfilter | logo = | screenshot = | caption = | developer = | status =
Active | author = | frequently_updated = yes | operating system =
[Linux](../Page/Linux.md "wikilink") | programming language =
[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink") | genre =  |
license = [GNU General Public
License](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")
| website =  }}
**Netfilter**，在[Linux內核中的一個](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")[軟體框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")，用於管理網路封包。不僅具有[網路位址轉換](../Page/网络地址转换.md "wikilink")（NAT）的功能，也具備封包內容修改、以及封包過濾等[防火牆功能](https://zh.wikipedia.org/wiki/防火牆 "wikilink")。利用運作於[使用者空間的應用軟體](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")，如[iptables](https://zh.wikipedia.org/wiki/iptables "wikilink")、[ebtables和](https://zh.wikipedia.org/wiki/ebtables "wikilink")[arptables等](https://zh.wikipedia.org/wiki/arptables "wikilink")，來控制Netfilter，系統管理者可以管理通過Linux作業系統的各種網路封包。1990年代，Netfilter在Linux
2.3.15版時進入Linux內核，正式應用於Linux 2.4版。

現今許多市面上許多的IP分享器或無線網路路由器（Wireless
router），多是嵌入式Linux平台，並利用Netfilter的封包處理能力，提供NAT以及防火牆的功能。此外，Netfilter平台的模組化設計使得功能具可擴充性，以及Linux核心本身屬於開放的原始碼，能夠免費取得原始碼進行修改與擴充。Netfilter平台中制定了五個封包的掛載點（Hook），分別是PRE_ROUTING、INPUT、OUTPUT、FORWARD與POST_ROUTING。

## 歷史

## 參考資料

  - 學術會議論文：結合深度封包檢測之網路區域聯防機制，第十七屆行動運算研討會，桃園，台灣，2012

## 外部連結

  - [Netfilter官方網站](http://www.netfilter.org)

[Category:防火墙软件](https://zh.wikipedia.org/wiki/Category:防火墙软件 "wikilink")
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")