**Tengine**是一個由[淘寶從](../Page/淘寶.md "wikilink")[Nginx](../Page/Nginx.md "wikilink")[複刻出來的](../Page/复刻_\(软件工程\).md "wikilink")[HTTP伺服器](../Page/HTTP伺服器.md "wikilink")\[1\]，現時版本為2.2.2\[2\]。Tengine對Nginx的修改版本是於2011年12月開始釋放出來成为开源项目\[3\]，两者配置兼容\[4\]。Tengine雖然從Nginx復刻出來，但不斷從Nginx继承其更新，所以目前的版本兼容Nginx最新版1.8.1的所有特性，亦有[HTTP2模块同步于Nginx](../Page/HTTP/2.md "wikilink")
1.11.6\[5\]。相比於Nginx目前佔整個HTTP伺服器市場接近四成的巨量，目前Tengine的市場佔有率只有0.2%\[6\]。

## 與Nginx的差異

淘寶的Tengine從原來的Nginx添加了下列各項內容\[7\]：

  - 透過對上传到HTTP后端服务器或FastCGI服务器的請求整流，以及透過增加一致性hash模块、会话保持模块，加上對伺服器的主动健康检查，根据服务器状态而自动加添或減少服务器的[实例](../Page/实例.md "wikilink")，大量减少對服务器机器的I/O压力，大大增強其负载均衡能力；
  - 支援[动态模块加载](../Page/动态模块加载.md "wikilink")（DSO）支持，透過把模塊編譯成為可共享程式庫，令伺服器增添模块後無需再把整個伺服器程式重新编译\[8\]；
  - 受到[Apache HTTP
    Server的](../Page/Apache_HTTP_Server.md "wikilink")*modconcat*功能啟導的CONCAT模塊，可组合多个CSS、JavaScript文件的访问请求变成一个请求\[9\]，以減少數據流量及提高壓縮比；
  - 輸入過濾器主體，以更方便地管理在防火牆和事件到HTTP級別之間的連接。
  - 模塊Sysguard，限制使用的存儲器或CPU資源時使用率超過某個閾值。

上列內容主要是從處理請求的效率及擴展性的增潤。這些修正，部分已為Nginx主流接納了。

## 主要使用者

  - [淘寶網](../Page/淘寶網.md "wikilink")，2018年4月在[Alexa排名全球第](../Page/Alexa.md "wikilink")10位、中國第3位\[10\]；
  - [全球速賣通](../Page/全球速賣通.md "wikilink")（[Aliexpress.com](../Page/Aliexpress.com.md "wikilink")），2018年4月在Alexa排名第52位、俄羅斯第10位\[11\]。
  - [華文詞源百科網站](../Page/華文詞源百科.md "wikilink")
  - [Bilibili彈幕網站](../Page/Bilibili.md "wikilink")

## 參考文獻

## 外部連結

  -
  -
  - [Launchpad](../Page/Launchpad.md "wikilink")：[Tengine Web
    Server](https://launchpad.net/~brightbox/+archive/ubuntu/tengine)

[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:自由代理服务器](https://zh.wikipedia.org/wiki/Category:自由代理服务器 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:Linux网络服务器软件](https://zh.wikipedia.org/wiki/Category:Linux网络服务器软件 "wikilink")
[Category:Linux代理服务器软件](https://zh.wikipedia.org/wiki/Category:Linux代理服务器软件 "wikilink")
[Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink")
[Category:反向代理](https://zh.wikipedia.org/wiki/Category:反向代理 "wikilink")
[Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink")

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

11.