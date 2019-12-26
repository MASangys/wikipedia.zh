**HTTP Live Streaming**（缩写是**HLS**）是由[苹果公司提出基于](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[HTTP的](https://zh.wikipedia.org/wiki/HTTP "wikilink")[流媒体](../Page/流媒体.md "wikilink")[网络传输协议](../Page/网络传输协议.md "wikilink")。是苹果公司[QuickTime X和](https://zh.wikipedia.org/wiki/QuickTime_X "wikilink")[iPhone软件系统的一部分](https://zh.wikipedia.org/wiki/iPhone "wikilink")。它的工作原理是把整个流分成一个个小的基于HTTP的文件来下载，每次只下载一些。当媒体流正在播放时，客户端可以选择从许多不同的备用源中以不同的速率下载同样的资源，允许流媒体会话适应不同的数据速率。在开始一个流媒体会话时，客户端会下载一个包含元数据的[extended M3U (m3u8)](https://zh.wikipedia.org/wiki/extended_M3U "wikilink") [playlist文件](https://zh.wikipedia.org/wiki/playlist "wikilink")，用于寻找可用的媒体流。

HLS只请求基本的HTTP报文，与[实时传输协议](../Page/实时传输协议.md "wikilink")（RTP）不同，HLS可以穿过任何允许HTTP数据通过的[防火墙](../Page/防火墙.md "wikilink")或者[代理服务器](../Page/代理服务器.md "wikilink")。它也很容易使用[内容分發网络来传输媒体流](https://zh.wikipedia.org/wiki/内容分發网络 "wikilink")。

苹果公司把HLS协议作为一个[互联网草案](https://zh.wikipedia.org/wiki/Internet-Draft "wikilink")（逐步提交），在第一阶段中已作为一个非正式的标准提交到[IETF](https://zh.wikipedia.org/wiki/IETF "wikilink")。2017年8月，RFC 8216發佈，描述了HLS協議第7版的定義。\[1\]

## 服务器支持

  - [Adobe Flash Media Server](https://zh.wikipedia.org/wiki/Adobe_Flash_Media_Server "wikilink")：从4.5开始支持HLS、Protected HLS（PHLS）。5.0改名为[Adobe Media Server](https://zh.wikipedia.org/wiki/Adobe_Media_Server "wikilink")
  - [Flussonic Media Server](http://www.flussonic.com/)：2009年1月21日，版本3.0开始支持VOD、HLS、时移等。
  - RealNetworks的[Helix Universal Server](https://zh.wikipedia.org/wiki/Helix_Universal_Server "wikilink")：2010年4月，版本15.0开始支持iPhone, iPad和iPod的HTTP直播、点播H.264/AAC内容，最新更新在2012年11月。
  - 微软的[IIS Media Services](https://zh.wikipedia.org/wiki/IIS_Media_Services "wikilink")：从4.0开始支持HLS。
  - [Nginx RTMP Module](https://zh.wikipedia.org/wiki/Nginx_RTMP_Module "wikilink")：支持直播模式的HLS。
  - [Nimble Streamer](https://wmspanel.com/nimble)
  - [Unified Streaming Platform](http://www.unified-streaming.com/)
  - [VLC Media Player](https://zh.wikipedia.org/wiki/VLC_Media_Player "wikilink")：从2.0开始支持直播和点播HLS。
  - [Wowza Media Server](https://zh.wikipedia.org/wiki/Wowza_Media_Server "wikilink")：2009年12月9日发布2.0，开始全面支持HLS。
  - [VODOBOX Live Server](https://zh.wikipedia.org/wiki/VODOBOX_Live_Server "wikilink")：始支持HLS。
  - [Gstreamill](http://github.com/i4tv/gstreamill)是一个支持hls输出的，基于gstreamer的实时编码器。

## 客户端支持

  - iOS从3.0开始成为标准功能。
  - Adobe Flash Player从11.0开始支持HLS。
  - [Google](../Page/Google.md "wikilink")的[Android](../Page/Android.md "wikilink")自Honeycomb（3.0）开始支持HLS。
  - VODOBOX HLS Player (Android,iOS, Adobe Flash Player)
  - JWPlayer (Adobe Flash)
  - Flowplayer (Adobe Flash,使用hlsjs版本不使用Adobe Flash)
  - Windows 10 的 EDGE 瀏覽器開始支持HLS。

## 参见

  - [自適性串流](../Page/自適性串流.md "wikilink")

## 参考书目

## 外部链接

  -
  -
  - [Internet-Draft: HTTP Live Streaming: draft-pantos-http-live-streaming](http://tools.ietf.org/html/draft-pantos-http-live-streaming)

  - [Backbone Networks supports http live streaming in its Internet Radio Automation system](http://www.prweb.com/releases/http-live-streaming/shoutcast/prweb2972154.htm)

  - [Apple to Provide Live Video Streaming of September 1 Event](http://www.apple.com/pr/library/2010/08/31alert.html).

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink") [Category:多媒体](https://zh.wikipedia.org/wiki/Category:多媒体 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:蘋果公司軟體](https://zh.wikipedia.org/wiki/Category:蘋果公司軟體 "wikilink")

1.