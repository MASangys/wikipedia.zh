**SPDY**（發音如），一種[開放的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[網路傳輸協定](https://zh.wikipedia.org/wiki/網路傳輸協定 "wikilink")，由[Google](../Page/Google.md "wikilink")开发，用來傳送網頁內容。基于[传输控制协议](../Page/传输控制协议.md "wikilink")（TCP）的[应用层协议](https://zh.wikipedia.org/wiki/应用层 "wikilink")。SPDY也就是[HTTP/2的前身](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")。Google最早是在[Chromium](../Page/Chromium.md "wikilink")中提出的SPDY协议\[1\]。被用于[Google Chrome浏览器中来访问Google的SSL加密服务](../Page/Google_Chrome.md "wikilink")。SPDY并不是[首字母缩略字](https://zh.wikipedia.org/wiki/首字母缩略字 "wikilink")，而仅仅是"speedy"的缩写。SPDY现为Google的[商标](../Page/商标.md "wikilink")\[2\]。HTTP/2的關鍵功能主要來自SPDY技術，換言之，SPDY的成果被採納而最終演變為HTTP/2。

SPDY并不是一个标准协议，但SPDY的开发组推动SPDY成为正式标准，而成为了[互联网草案](https://zh.wikipedia.org/wiki/互联网草案 "wikilink")\[3\]。後來SPDY未能單獨成為正式標準，不過SPDY開發組的成員全程參與了[HTTP/2的制定過程](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")。[Google Chrome](../Page/Google_Chrome.md "wikilink")\[4\]、[Mozilla Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")、[Safari](../Page/Safari.md "wikilink")、[Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")、[Internet Explorer](../Page/Internet_Explorer.md "wikilink")\[5\]等主要瀏覽器均已經或曾經支持SPDY协议。SPDY协议类似于[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")，但旨在缩短[网页的加载时间和提高安全性](https://zh.wikipedia.org/wiki/网页 "wikilink")。SPDY协议通过压缩、[多路复用](../Page/多路复用.md "wikilink")和优先级来缩短加载时间\[6\]。HTTP/2協議完成之後，Google認為SPDY可以功成身退了\[7\]，於是最終Google Chrome淘汰對SPDY的支援，全面改為採用HTTP/2。

## 设计

设计SPDY的目的在于降低网页的加载时间\[8\]。通过优先级和[多路复用](../Page/多路复用.md "wikilink")，SPDY使得只需要建立一个[TCP连接即可传送网页内容及图片等资源](../Page/传输控制协议.md "wikilink")\[9\]\[10\]。SPDY中广泛应用了[TLS加密](https://zh.wikipedia.org/wiki/传输层安全 "wikilink")，传输内容也均以[gzip或](https://zh.wikipedia.org/wiki/gzip "wikilink")[DEFLATE](../Page/DEFLATE.md "wikilink")格式压缩（与HTTP不同，HTTP的头部并不会被压缩）。另外，除了像HTTP的网页服务器被动的等待浏览器发起请求外，SPDY的网页服务器还可以主动推送内容\[11\]。

## 与HTTP的关系

SPDY并不用于取代HTTP，它只是修改了HTTP的请求与应答在网络上传输的方式\[12\]；这意味着只需增加一个SPDY传输层，现有的所有服务端应用均不用做任何修改。 当使用SPDY的方式传输，HTTP请求会被处理、标记简化和压缩。比如，每一个SPDY端点会持续跟踪每一个在之前的请求中已经发送的HTTP报文头部，从而避免重复发送还未改变的头部。而还未发送的报文的数据部分将在被压缩后被发送。

## 浏览器支持

  - [Google Chrome和](../Page/Google_Chrome.md "wikilink")[Chromium](../Page/Chromium.md "wikilink")已经支持SPDY\[13\]\[14\]。
  - [Mozilla Firefox自](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")11.0开始内嵌支持SPDY，但默认并不使用\[15\]\[16\]。从Firefox 13开始默认开启对SPDY的支持\[17\]。
  - [Opera从](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")12.10开始支持SPDY\[18\]\[19\]\[20\]。
  - [Internet Explorer从](../Page/Internet_Explorer.md "wikilink")[IE 11开始支持SPDY](https://zh.wikipedia.org/wiki/IE_11 "wikilink")\[21\]。
  - [Safari](../Page/Safari.md "wikilink")從8.0（[OS X Yosemite及](../Page/OS_X_Yosemite.md "wikilink")[iOS 8](https://zh.wikipedia.org/wiki/iOS_8 "wikilink")）開始支援SPDY。

### Chrome 移除 SPDY

2015年9月，Google 宣布了计划，移除对SPDY的支持，拥抱 HTTP/2\[22\]，并将在Chrome 51中生效。\[23\]\[24\]

## 参见

  - [超文本传输协议](../Page/超文本传输协议.md "wikilink")
  - [HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")
  - [QUIC](https://zh.wikipedia.org/wiki/QUIC "wikilink")

## 参考文献

[Category:服务器](https://zh.wikipedia.org/wiki/Category:服务器 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:万维网](https://zh.wikipedia.org/wiki/Category:万维网 "wikilink") [Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink")

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
12.
13. [Chromium SPDY client implementation](http://src.chromium.org/viewvc/chrome/trunk/src/net/spdy/)

14. [Chromium: SPDY proxy examples](http://www.chromium.org/spdy/spdy-proxy-examples)

15.
16. Firefox中键入about:config，查找network.http.spdy.enabled并设置为true即可启用该功能。

17. [Mozilla Bug 724563](https://bugzilla.mozilla.org/show_bug.cgi?id=724563)

18. [Chromium SPDY client implementation](http://src.chromium.org/viewvc/chrome/trunk/src/net/spdy/).

19. [Chromium: SPDY proxy examples](http://www.chromium.org/spdy/spdy-proxy-examples).

20. [Opera 12.10 Changelog](http://www.opera.com/docs/changelogs/unified/1210/)

21.
22.

23.

24. <https://www.nginx.com/blog/supporting-http2-google-chrome-users/>