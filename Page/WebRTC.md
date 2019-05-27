**WebRTC**，名稱源自**網頁即時通訊**（）的縮寫，是一个支援[網頁浏览器进行实时语音对话或视频对话的](https://zh.wikipedia.org/wiki/網頁浏览器 "wikilink")[API](https://zh.wikipedia.org/wiki/API "wikilink")。它于2011年6月1日开源并在[Google](../Page/Google.md "wikilink")、[Mozilla](../Page/Mozilla基金會.md "wikilink")、[Opera支持下被納入](https://zh.wikipedia.org/wiki/Opera_Software "wikilink")[万维网联盟的](../Page/万维网联盟.md "wikilink")[W3C推荐标准](../Page/W3C推荐标准.md "wikilink")\[1\]\[2\]\[3\]。

## 瀏覽器支持

### 当前支持情况

WebRTC在以下浏览器版本中开始支持。

  - 桌上PC端
      - [Microsoft Edge](../Page/Microsoft_Edge.md "wikilink")
      - [Google Chrome](../Page/Google_Chrome.md "wikilink") 23
      - [Mozilla
        Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")
        22\[4\]
      - [Opera](https://zh.wikipedia.org/wiki/Opera "wikilink") 18\[5\]
      - [Safari](../Page/Safari.md "wikilink") 11\[6\]（仍处于开发者预览阶段）
  - Android端
      - Google Chrome 28（从版本29开始默认开启）
      - Mozilla Firefox 24\[7\]
      - Opera Mobile 12
  - [Google Chrome
    OS](https://zh.wikipedia.org/wiki/Google_Chrome_OS "wikilink")
  - [Firefox OS](../Page/Firefox_OS.md "wikilink")
  - iOS 11
  - Blackberry 10 内置瀏覽器
      - Bowser\[8\]

### 支持历史细节

  - [Google
    Chrome](../Page/Google_Chrome.md "wikilink")：2012年1月，將WebRTC整合進Dev
    Channel，同年6月又完成Stable
    Channel的20版的整合（2012年7月，PeerConnection與MediaStream仍必須透過<chrome://flags>`
    page `來開啟）\[9\]。
  - [Mozilla
    Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")：2012年初Mozilla整合WebRTC入Firefox
    Alpha，此一版本的Audio Mixing已完成於Media Stream\[10\]。
      - 2012年4月，Mozilla展示Firefox中WebRTC的視訊對話 \[11\]。
      - 2013年6月，發佈22.0版本正式整合及支援WebRTC\[12\]。
      - 2013年9月，發佈24.0版本，並宣佈[Firefox for
        Android](../Page/Firefox_for_Android.md "wikilink")（行動版）正式整合及支援WebRTC\[13\]。
  - [Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")：2012年1月，Opera初步整合WebRTC。
  - [Internet
    Explorer](../Page/Internet_Explorer.md "wikilink")：Microsoft開始開放API\[14\]。
  - [Ericsson](https://zh.wikipedia.org/wiki/Ericsson "wikilink")：2012年11月，Ericsson
    Labs做出了全世界第一個可以支援WebRTC的手機浏览器\[15\]。
  - [SeaMonkey](../Page/SeaMonkey.md "wikilink")：2013年1月發佈的15.0版本初步整合WebRTC。

## 歷史

2010年5月，Google以6820万美元收购VoIP软件开发商[Global IP
Solutions的GIPS引擎](../Page/Global_IP_Solutions.md "wikilink")\[16\]\[17\]\[18\]，並改為名为“WebRTC”。WebRTC使用GIPS引擎，实现了基于网页的视频会议，並支持722，PCM，ILBC，ISAC等编码，同時使用谷歌自家的[VP8影片解碼器](../Page/VP8.md "wikilink")；同時支持RTP/SRTP传输等。

2012年1月，谷歌已經把這款軟體整合到Chrome瀏覽器中。同時[FreeSWITCH專案宣稱支援iSAC](../Page/FreeSWITCH.md "wikilink")
audio codec\[19\]。

## 组成

  - 影像引擎（VideoEngine）
  - 音效引擎（VoiceEngine）
  - 會議管理（Session Management）
  - iSAC：音效壓縮
  - [VP8](../Page/VP8.md "wikilink")：Google自家的[WebM项目的影片编解码器](../Page/WebM.md "wikilink")
  - APIs（Native C++ API, Web API）

## 重要API

WebRTC原生APIs文件是基于WebRTC規格書\[20\]撰寫而成，這些API可分成Network Stream API、
RTCPeerConnection、Peer-to-peer Data API三类。

### Network Stream API

  - MediaStream：MediaStream用来表示一个媒体数据流。
  - MediaStreamTrack在浏览器中表示一个媒体源。

### RTCPeerConnection

  - RTCPeerConnection：一个RTCPeerConnection对象允许用户在两个浏览器之间直接通讯。
  - RTCIceCandidate：表示一个ICE协议的候选者。
  - RTCIceServer：表示一个ICE Server。

### Peer-to-peer Data API

  - DataChannel：数据通道（DataChannel）接口表示一个在两个节点之间的双向的数据通道。

## 安全性

**漏洞**

2015年，TorrentFreak报告了一个WebRTC的安全漏洞，该漏洞会致使安装有WebRTC的使用者泄露真实IP，即使用户已经使用虚拟私人网路。\[21\]

**解决方案**

Microsoft Edge:
在網址列输入“about:config”，搜索“開發人員設定”并點擊"在WebRTC上隱藏我的本機IP位址"，即可隱藏IP位址。
Mozilla
Firefox：在地址栏输入“about:config”，搜索“media.peerconnection.enabled”并双击将值改为“false”，WebRTC将被关闭。\[22\]

Google Chrome：在谷歌应用商店安装谷歌官方扩展“WebRTC Network Limiter”。

Opera：

**其它方案**

[uBlock
Origin](https://zh.wikipedia.org/wiki/uBlock_Origin "wikilink")：安装uBlock
Origin并在设置中启用“避免WebRTC 泄露本地IP地址”可以避免本地IP泄露。但需注意的是，该方案不适用于Firefox
41（或更低）、uBlock Origin 1.3.3（或更低）版本用户。\[23\]

[隐私獾](../Page/隐私獾.md "wikilink")：安装隐私獾并在设置中启用”避免 WebRTC 泄露本地 IP 地址
“可以获得额外防护，但未知具体效果。

## 相關條目

  - [Jingle](../Page/Jingle_\(协议\).md "wikilink")

  - [安全實時傳輸協議](https://zh.wikipedia.org/wiki/安全實時傳輸協議 "wikilink")

  -
## 參考資料

## 外部連結

  - [Is WebRTC ready yet?](http://iswebrtcreadyyet.com/) -
    各家網頁瀏覽器對WebRTC支援程度
  - [IP/DNS检测](http://ipleak.net/) - 检测您是否能够防御WebRTC泄露与DNS泄露并提供帮助

[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink")
[Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink")

1.  <http://www.h-online.com/open/news/item/Google-open-source-WebRTC-for-open-video-audio-chat-1253848.html>
2.  <https://sites.google.com/site/webrtc/home>
3.  <https://sites.google.com/site/webrtc/blog/introducingwebrtc-anopenreal-timecommunicationsproject>
4.  [Firefox Notes -
    Desktop](https://www.mozilla.org/en-US/firefox/22.0/releasenotes/).
    Mozilla.org (2013-06-25). Retrieved on 2014-04-11.
5.  [Dev.Opera](https://web.archive.org/web/20131119173936/http://my.opera.com/ODIN/blog/opera-desktop-18-released).
    My.opera.com. Retrieved on 2014-04-11.
6.
7.  [Firefox Notes -
    Desktop](https://www.mozilla.org/en-US/mobile/24.0/releasenotes/).
    Mozilla.org (2013-09-17). Retrieved on 2014-08-04.
8.  <http://www.openwebrtc.io/bowser/>
9.  <http://blog.chromium.org/2012/01/real-time-communications-in-chrome.html>
10. <http://www.webmonkey.com/2012/01/mozilla-demos-mediastream-processing-audio-mixing-in-firefox/>
11. <http://www.h-online.com/open/news/item/Mozilla-shows-WebRTC-browser-based-video-calling-1517803.html>
12.
13.
14. <http://html5labs.interoperabilitybridges.com/prototypes/media-capture-api-(2nd-updated)/media-capture-api-(2nd-update)/info>

15.
16. <https://sites.google.com/site/webrtc/license-rights>
17. <http://www.h-online.com/open/news/item/Google-open-source-WebRTC-for-open-video-audio-chat-1253848.html>
18. <https://sites.google.com/site/webrtc/faq>
19.
20. <http://www.iwebrtc.com/blog/webrtc1-0/>
21.
22.
23.