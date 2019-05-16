**[TCP重置攻击](https://zh.wikipedia.org/wiki/傳輸控制協定 "wikilink")**指的是使用伪造的TCP重置包干扰用户和网站的连接\[1\]。這個技術可以在善意的防火牆中運用\[2\]，但也可用于网络审查或是惡意攻擊。中國的[防火長城便運用了這個技術進行](https://zh.wikipedia.org/wiki/防火長城 "wikilink")[TCP關鍵字阻斷](https://zh.wikipedia.org/wiki/防火長城#主要技術 "wikilink")\[3\]\[4\]。使用[IPsec可以避免TCP重置攻击](../Page/IPsec.md "wikilink")。\[5\]也有研究认为通过连接双方配置适当的过滤来丢弃用于阻断的重置包来也可以维持连接的建立。

## 简介

**连接重置**是[TCP协议的一种消息](https://zh.wikipedia.org/wiki/TCP协议 "wikilink")。一般来说，例如[服务器端在没有](../Page/服务器.md "wikilink")[客户端请求的](https://zh.wikipedia.org/wiki/客户端 "wikilink")[端口或者其他连接信息不符时](../Page/通訊埠.md "wikilink")，系统的[TCP](../Page/传输控制协议.md "wikilink")[协议栈就会给客户端回复一个RESET通知消息](../Page/协议栈.md "wikilink")，可见连接重置功能本来用于应对例如服务器意外重启等情况。而发送连接重置包比直接将数据包丢弃要好，因为如果是直接丢弃数据包的话客户端并不知道具体网络状况，基于TCP协议的重发和超时机制，客户端就会不停地等待和重发。

## 参见

  - [域名服务器缓存污染](../Page/域名服务器缓存污染.md "wikilink")

## 參考資料

[Category:审查技术](https://zh.wikipedia.org/wiki/Category:审查技术 "wikilink")
[Category:封包](https://zh.wikipedia.org/wiki/Category:封包 "wikilink")
[Category:網絡戰](https://zh.wikipedia.org/wiki/Category:網絡戰 "wikilink")
[Category:保全漏洞](https://zh.wikipedia.org/wiki/Category:保全漏洞 "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:TCP协议](https://zh.wikipedia.org/wiki/Category:TCP协议 "wikilink")

1.
2.
3.  专利号2009100850310, 《一种阻断TCP连接的方法和装置》,
    <https://patents.google.com/patent/CN101902440A/zh>, 2018-04-24查阅.
4.
5.