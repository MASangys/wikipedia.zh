**DNS沉洞**（），又名**沉洞服务器**、**网络**[沉洞或者](https://zh.wikipedia.org/wiki/沉洞 "wikilink")**黑洞DNS**\[1\]指[DNS服务器给出错误信息](https://zh.wikipedia.org/wiki/DNS "wikilink")，从而防止访问特定[域名](../Page/域名.md "wikilink")。

## 運作情形

查詢域名的DNS解析信息時，DNS沉洞會提供錯誤的結果，以便讓攻擊者將系統重定向到潛在的惡意攻擊目標。
此外，DNS沉洞歷來也常被用於非惡意目的。

當計算機訪問DNS源以解析域名時，提供者將盡可能給出結果，如果沒結果，計算機會再次嘗試將解析請求發送給更高級別的提供者。 此鏈中的DNS
Sinkhole越高，它接收的請求將更多，產生的影響也越大。

一台沉洞服务器并不意味着一定是一台大型DNS服务器，其只需要存储于域名解析链中即可。

### 网络级禁止

沉洞服务器是被配置为对于沉洞列表内域名分发不可路由地址的标准DNS服务器，这样所有使用此服务器作为DNS的主机将会无法访问真实的网站。\[2\]DNS服务器所在的层级越高，被阻挡的主机就会越多。使用跨越整个互联网的TLD沉洞技术可以使得一些大型的[僵尸网络无法使用](https://zh.wikipedia.org/wiki/僵尸网络 "wikilink")。\[3\]DNS沉洞技术在检测并阻挡有害流量、自动程序以及不需要的流量方面十分有用。

### 主机级禁止

存储于[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Unix和](../Page/UNIX.md "wikilink")[Linux等平台上的](../Page/Linux.md "wikilink")[hosts文件可优先于DNS服务器进行解析](https://zh.wikipedia.org/wiki/hosts文件 "wikilink")，此技术同样可用于限制访问网站。

## 应用

沉洞技术既可以是建设性的，比如牵制[WannaCry病毒的蔓延](../Page/WannaCry.md "wikilink")\[4\]；也可以像[DoS攻击中对DNS服务器进行攻击一样具有摧枯拉朽的威力](https://zh.wikipedia.org/wiki/DoS "wikilink")。

它的其中一种应用方式是用于防止[僵尸网络](https://zh.wikipedia.org/wiki/僵尸网络 "wikilink")，具体为限制僵尸网络用于协调的DNS域名。基于hosts的方法则常用于屏蔽广告服务器\[5\]与[突破网络封锁](https://zh.wikipedia.org/wiki/突破网络封锁 "wikilink")。

## 参考资料

[Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink")

1.
2.
3.
4.  <https://gist.github.com/rain-1/989428fa5504f378b993ee6efbc0b168>
5.