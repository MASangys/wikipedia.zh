> 本文内容由[Wireshark](https://zh.wikipedia.org/wiki/Wireshark)转换而来。


**Wireshark**（前稱**Ethereal**）是一個免費開源的網路[封包分析軟體](https://zh.wikipedia.org/wiki/封包 "wikilink")。網路封包分析軟體的功能是截取網路封包，並盡可能顯示出最為詳細的網路封包資料。

在[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")的保障範圍底下，使用者可以以免費的代價取得軟體與其程式碼，並擁有針對其原始碼修改及客製化的權利。Wireshark是目前全世界最廣泛的網路封包分析軟體之一。

## 發展簡史

1997年底，Gerald Combs需要一個能夠追蹤網路流量的工具軟體作為其工作上的輔助。因此他開始撰寫Ethereal軟體。

Ethereal 在經過幾次中斷開發的事件過後，終於在1998年7月釋出其第一個版本 v0.2.0。自此之後，Combs收到了來自全世界的修補程式、錯誤回報與鼓勵信件。Ethereal的發展就此開始。不久之後，Gilbert Ramirez 看到了這套軟體的開發潛力並開始參予低階程式的開發。1998年10月，來自 Network Appliance 公司的 Guy Harris 在尋找一套比 [tcpview](https://zh.wikipedia.org/wiki/tcpview "wikilink")（另外一套網路封包擷取程式）更好的軟體。於是他也開始參與Ethereal的開發工作。

1998年底，一位在教授 [TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink") 課程的講師 Richard Sharpe，看到了這套軟體的發展潛力，而後開始參與開發與加入新協定的功能。在當時，新的通訊協定的制定並不複雜，因此他開始在Ethereal上新增的封包擷取功能，幾乎包含了當時所有[通訊協定](https://zh.wikipedia.org/wiki/通訊協定 "wikilink")。

自此之後，數以千計的人開始參與Ethereal的開發，多半是因為希望能讓Ethereal擷取特定的，尚未包含在Ethereal預設的網路協定的封包而參予新的開發。

2006年6月，因為商標的問題，Ethereal更名為Wireshark。

## 軟體簡介

### Wireshark使用目的

以下是一些使用Wireshark目的的例子：

  - 網路管理員使用Wireshark來檢測網路問題
  - 網路安全工程師使用Wireshark來檢查[資訊安全相關問題](https://zh.wikipedia.org/wiki/資訊安全 "wikilink")
  - 開發者使用Wireshark來為新的[通訊協定除錯](https://zh.wikipedia.org/wiki/通訊協定 "wikilink")
  - 普通使用者使用Wireshark來學習網路協定的相關知識

### Wireshark不是...

  - Wireshark不是[入侵偵測軟體](https://zh.wikipedia.org/wiki/IDS "wikilink")（Intrusion Detection Software, IDS）。對於網路上的異常流量行為，Wireshark不會產生警示或是任何提示。然而，仔細分析Wireshark擷取的封包能夠幫助使用者對於網路行為有更清楚的了解。
  - Wireshark不會對網路封包產生內容的修改 - 它只會反映出目前流通的封包資訊。 Wireshark本身也不會送出封包至網路上。

## 另見

  - [Pcap](https://zh.wikipedia.org/wiki/Pcap "wikilink")：與Wireshark搭配使用的封包截取程式
  - [tcpdump](https://zh.wikipedia.org/wiki/tcpdump "wikilink")：命令行下的封包分析工具。

## 延伸導讀

  - 《實戰封包分析：使用Wireshark》ISBN 9789862765210

## 外部連結

  - [www.wireshark.org](http://www.wireshark.org/)
  - [www.ethereal.com](http://www.ethereal.com/)
  - [中文Wireshark技术网站](http://www.cnpaf.net/Class/Ethereal)
  - [Wireshark User's Guide（英文）](http://www.wireshark.org/docs/wsug_html_chunked/)
  - [Wireshark用户手册（中文，较旧）](http://man.lupaworld.com/content/network/wireshark/)

## 注释

[Category:SourceForge专案](https://zh.wikipedia.org/wiki/Category:SourceForge专案 "wikilink") [Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink") [Category:網絡分析器](https://zh.wikipedia.org/wiki/Category:網絡分析器 "wikilink")