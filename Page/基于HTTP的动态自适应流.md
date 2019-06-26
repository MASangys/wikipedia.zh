**基于HTTP的动态自适应流**（，缩写**DASH**，也称**MPEG-DASH**）是一种[自适应比特率串流技术](../Page/自適性串流.md "wikilink")，使高质量[流媒体可以通过传统的](../Page/流媒体.md "wikilink")[HTTP网络服务器以](../Page/超文本传输协议.md "wikilink")[互联网传递](../Page/互联网.md "wikilink")。类似[苹果公司的](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[HTTP
Live
Streaming](../Page/HTTP_Live_Streaming.md "wikilink")（HLS）方案，MPEG-DASH会将内容分解成一系列小型的基于HTTP的文件片段，每个片段包含很短长度的可播放内容，而内容总长度可能长达数小时（例如电影或体育赛事直播）。内容将被制成多种比特率的备选片段，以提供多种比特率的版本供选用。当内容被MPEG-DASH客户端回放时，客户端将根据当前网络条件自动选择下载和播放哪一个备选方案。客户端将选择可及时下载的最高比特率片段进行播放，从而避免播放卡顿或重新缓冲事件。也因如此，MPEG-DASH客户端可以无缝适应不断变化的网络条件并提供高质量的播放体验，拥有更少的卡顿与重新缓冲发生率。

MPEG-DASH是首个基于HTTP的自适应比特率串流解决方案，它也是一项国际标准。\[1\]MPEG-DASH不应该与传输协议混淆——MPEG-DASH使用TCP传输协议。

MPEG-DASH使用现有的HTTP网络服务器基础设施。它允许如[互联网电视](https://zh.wikipedia.org/wiki/互联网电视 "wikilink")、电视[机顶盒](https://zh.wikipedia.org/wiki/机顶盒 "wikilink")、[台式电脑](https://zh.wikipedia.org/wiki/台式电脑 "wikilink")、[智能手机](../Page/智能手机.md "wikilink")、[平板电脑等设备消费通过互联网传送的多媒体内容](https://zh.wikipedia.org/wiki/平板电脑 "wikilink")（如[视频](../Page/视频.md "wikilink")、[电视](../Page/电视.md "wikilink")、[广播等](https://zh.wikipedia.org/wiki/广播 "wikilink")），并可应对变动的互联网接收条件。自适应流解决方案的标准化是为向市场提供信心，使该解决方案可以用于通用部署，抗衡类似但更专有的解决方案，如微软Smooth
Streaming与Adobe的HDS。

不同于HLS、HDS和Smooth
Streaming，DASH不关心[编解码器](../Page/编解码器.md "wikilink")，因此它可以接受任何编码的内容，如[H.265](../Page/高效率视频编码.md "wikilink")、[H.264](https://zh.wikipedia.org/wiki/H.264/MPEG-4_AVC "wikilink")、[VP9等](../Page/VP9.md "wikilink")。\[2\]

## 标准化

MPEG-DASH技术在[MPEG之下开发](../Page/MPEG.md "wikilink")。对DASH的工作始于2010年。2011年1月，它成为一项国际标准草案，并在2011年11月成为国际标准。\[3\]MPEG-DASH标准已于2012年4月发布为[ISO/IEC 23009-1:2012](http://standards.iso.org/ittf/PubliclyAvailableStandards/c057623_ISO_IEC_23009-1_2012.zip)。

DASH是一项与[Adobe
Systems](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink") [HTTP
Dynamic
Streaming](../Page/自適性串流.md "wikilink")、[蘋果公司](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[HTTP
Live
Streaming](../Page/HTTP_Live_Streaming.md "wikilink")（HLS）[微软](../Page/微软.md "wikilink")[Smooth
Streaming相关的技术](../Page/自適性串流.md "wikilink")。DASH基于[3GPP第](../Page/3GPP.md "wikilink")9版中的Adaptive
HTTP streaming（AHS）和 Release 2中的HTTP Adaptive
Streaming（HAS）。\[4\]\[5\]作为与MPEG协作的一部分，3GPP Release
10采用DASH（具有特定的编解码器和操作模式）用于无线网络。\[6\]

DASH行业论坛（）\[7\]进一步促进和催化了MPEG-DASH的采用，并帮助将其从规范转变为实际业务。主要的流媒体和媒体公司，包括微软、Netflix、Google、爱立信、三星、Adobe等都在实际业务中尝试使用，并为不同使用环境创建了DASH使用指南。

MPEG-DASH也被集成在其他标准中，例如[HbbTV中的MPEG](https://zh.wikipedia.org/wiki/Hybrid_Broadcast_Broadband_TV "wikilink")-DASH支持（截至1.5版本）。\[8\]

## 概述

DASH是一项[自適性串流技术](../Page/自適性串流.md "wikilink")，其将[多媒体文件分割为一个或多个片段](../Page/多媒体.md "wikilink")，并使用[超文本传输协议传递给客户端](../Page/超文本传输协议.md "wikilink")。\[9\]
媒体演示描述（MPD）描述片段信息（计时、[统一资源定位符](../Page/统一资源定位符.md "wikilink")，以及媒体特征，例如视频分辨率和[比特率](../Page/比特率.md "wikilink")），并且可以根据使用环境以不同的方式组织，例如SegmentList,
SegmentTemplate, SegmentBase和SegmentTimeline。\[10\]
片段可以包含任何媒体数据，但是规范提供了与两种容器类型一起使用的特定指导和格式：（例如MP4文件格式）或[MPEG-2传输流](../Page/MPEG2-TS.md "wikilink")。

DASH不关心音频/视频的[编解码器](../Page/编解码器.md "wikilink")。多媒体文件通常有一种或多种表示（即不同分辨率或比特率版本），并可基于不同的[网络条件](../Page/计算机网络.md "wikilink")、设备功能和用户偏好进行选择，达到[自適性串流](../Page/自適性串流.md "wikilink")\[11\]和。\[12\]DASH也与底层的应用层协议无关，因此可以配合任何协议中使用。例如，基于的DASH。\[13\]

2015年7月27日，[MPEG
LA宣布呼吁与MPEG](../Page/MPEG_LA.md "wikilink")-DASH相关的专利，以便为该技术创建一个专利池。\[14\]

## 实现

通过ExoPlayer，MPEG-DASH在Android上可原生使用，如三星智能电视2012+、LG智能电视2012+、索尼电视2012+、飞利浦NetTV
4.1+、松下Viera
2013+和Chromecast。\[15\]YouTube以及Netflix已经支持MPEG-DASH，并且可使用多种MPEG-DASH播放器。\[16\]

虽然HTML5不直接支持MPEG-DASH，但是已有一些MPEG-DASH的JavaScript实现允许在网页浏览器中通过HTML5
[Media Source
Extensions](https://zh.wikipedia.org/wiki/Media_Source_Extensions "wikilink")（MSE）使用MPEG-DASH。\[17\]另有其他JavaScript实现，如bitdash播放器\[18\]支持使用HTML5[加密媒体扩展播放有](../Page/加密媒体扩展.md "wikilink")[DRM的MPEG](../Page/数字版权管理.md "wikilink")-DASH。\[19\]当WebGL结合使用，MPEG-DASH基于HTML5的自适应比特率流还可实现360°视频的实时和按需的高效流式传输。\[20\]

### 客户端和程序库

  - Dash.js是Dash行业论坛官方参考和生产播放器。\[21\]
  - Shaka是出自Google的开源dash播放器。\[22\]
  - [VLC多媒體播放器](../Page/VLC多媒體播放器.md "wikilink")3.0将为MP4/MPEG和实时流媒体发布一个新客户端插件。\[23\]\[24\]\[25\]
  - 跨平台FOSS多媒体框架[GStreamer自从至少](../Page/GStreamer.md "wikilink")1.4版本以来支持MPEG-DASH和WebM
    DASH。\[26\]
  - 开源程序库libdash\[27\]独立于平台，可在Android、iOS、Windows Phone等移动平台上运行。
  - bitmovin为HTML5和Flash提供了bitdash MPEG-DASH播放器。\[28\]
  - [THEOplayer](https://www.theoplayer.com/features/mpeg-dash)目前正在寻找伙伴来测试他们的MPEG-DASH视频播放器。\[29\]
  - Viblast Player支持HTML5中的MPEG-DASH，并为iOS和Android提供SDK。\[30\]
  - 巴黎电信学院中GPAC的OSMO4支持MPEG-DASH。\[31\]
  - 克拉根福大学ITEC中的DASH-JS支持MPEG-DASH。\[32\]
  - Radiant Media Player支持HTML5中的MPEG-DASH（DASH264和WebM DASH）。\[33\]
  - Videogular是AngularJS面向桌面和移动平台提供的一个视频应用框架，AngularJS为HTML5提供的视频播放器
  - [libndash](https://github.com/google/ndash)是一个开源（Apache许可证）的C++程序库，提供构建一个全功能MPEG-DASH媒体播放器所需的所有功能（不包括解码/渲染帧到显示器）。

### 服务器

请注意，除了Live Streaming外，DASH内容不需要服务器的特定支持。

  - 已支持MPEG-DASH transmuxing/transcoding。\[34\]

  - 视频处理解决方案支持DASH。

  - 已支持各种模式下的DASH。

  - nginx-rtmp-module支持生成MPEG-DASH实时流。\[35\]但在1.2.0版本以前，\[36\]只能使用dash.js的修改版本\[37\]和bitdash播放。\[38\]

  - nginx-ts-module支持实时MPEG-DASH\[39\]

  - 有实时和点播MPEG-DASH的支持。对点播来说，它支持H.265和H.264编解码器\[40\]

  - 支持MPEG-DASH。\[41\]\[42\]

### 服务

  - Amazon Web Services [Elastic
    Transcoder](https://aws.amazon.com/elastictranscoder/)已支持MPEG-DASH。\[43\]

  - [Level 3通信](../Page/Level_3通信.md "wikilink") CDN支持DASH。

  - [Akamai](https://zh.wikipedia.org/wiki/Akamai "wikilink")
    [CDN支持DASH](../Page/內容傳遞網路.md "wikilink")。\[44\]

  - [Amazon CloudFront](../Page/Amazon_CloudFront.md "wikilink")
    CDN支持DASH。

  - [Azure Media
    Services平台已支持MPEG](../Page/Microsoft_Azure.md "wikilink")-DASH。\[45\]

  - 提供的云转码服务bitcodin.com支持MPEG-DASH。\[46\]

  - CDN支持DASH。

  - CDN支持DASH。

  - 的混合CDN模型支持MPEG-DASH。

  - ScaleEngine Video CDN支持DASH。

### 内容生成器

  - ITEC的DASHEncoder。\[47\]
  - MP4Box及其来自Telecom ParisTech的GPAC的多媒体框架\[48\]
  - 巴黎电讯的dashcast支持MPEG-DASH实时流\[49\]
  - MediaGoom MPEG-DASH Packager\[50\]
  - Bento4开源工具和SDK\[51\]

### 其他

  - ITEC为MPEG-DASH媒体演示描述（MPD）文件提供验证服务
  - Alpen-Adria克拉根福大学的信息技术研究所（ITEC）、巴黎电信学院GPAC小组和Digital TV
    Labs已提供多个DASH数据集。\[52\]\[53\]\[54\]
  - BBC有DASH测试流，包括基于HTTP/2的DASH。\[55\]

## 参考资料

## 外部链接

  - [MPEG-DASH
    Standard](http://standards.iso.org/ittf/PubliclyAvailableStandards/c065274_ISO_IEC_23009-1_2014.zip)
  - [DASH subscription mailing
    list](http://lists.uni-klu.ac.at/mailman/listinfo/dash)
  - [DASH research at Alpen-Adria Universität
    Klagenfurt](http://dash.itec.aau.at/)
  - [Mailing list of the open-source DASH client library
    libdash](https://web.archive.org/web/20130624105147/http://vicky.bitmovin.net/mailman/listinfo/libdash-dev)

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")
[Category:MPEG](https://zh.wikipedia.org/wiki/Category:MPEG "wikilink")
[Category:多媒体](https://zh.wikipedia.org/wiki/Category:多媒体 "wikilink")
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")

1.

2.

3.  [ISO/IEC DIS 23009-1.2 Dynamic adaptive streaming over HTTP
    (DASH)](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=57623)

4.  ETSI 3GPP [3GPP TS 26.247; Transparent end-to-end packet-switched
    streaming service (PSS); Progressive Download and Dynamic Adaptive
    Streaming over HTTP
    (3GP-DASH)](http://www.3gpp.org/ftp/Specs/html-info/26247.htm)

5.  [Open IPTV Forum Solution Specification Volume 2a – HTTP Adaptive
    Streaming V2.1](http://www.oipf.tv/live/oipf/release_2.html)

6.
7.  [DASH Industry Forum](http://www.dash-if.org)

8.  [HbbTV
    Specification 1.5](http://www.hbbtv.org/pages/about_hbbtv/HbbTV-specification-1-5.pdf)


9.  [Overview of Dynamic Adaptive Streaming over HTTP
    (DASH)](http://mpeg.chiariglione.org/technologies/mpeg-b/mpb-dash/index.htm)

10. [MPEG-DASH
    Overview](http://www.bitcodin.com/blog/2015/04/mpeg-dash/)

11. [3GPP Dynamic Adaptive Streaming over HTTP – Standards and Design
    Principles](http://www.mmsys.org/?q=node/43#mmt1)  by T. Stockhammer

12. [Towards Network-wide QoE Fairness using OpenFlow-assisted Adaptive
    Video
    Streaming](https://scholar.google.com/citations?view_op=view_citation&citation_for_view=ZDbuOE4AAAAJ:hqOjcs7Dif8C)

13. [Y. Liu, J. Geurts, J.-P. Point, S. Lederer, B. Rainer, C. Mueller,
    C. Timmerer and H. Hellwagner, "Dynamic Adaptive Streaming over CCN:
    A Caching and Overhead Analysis", In Proceedings of the IEEE
    International Conference on Communication (ICC) 2013 –
    Next-Generation Networking Symposium, Budapest, Hungary,
    June, 2013](http://www-itec.uni-klu.ac.at/dash/?page_id=1097)

14. [MPEG LA Announces Call for Patents to Organize Joint License for
    MPEG-DASH](http://www.mpegla.com/Lists/MPEG%20LA%20News%20List/Attachments/96/n-15-07-27.pdf)


15. [Device
    Compatibility](http://www.bitcodin.com/blog/2015/03/mpeg-dash-device-compatibility)

16. [The Status of MPEG-DASH today, and why Youtube & Netflix use it in
    HTML5](http://www.dash-player.com/blog/2015/02/the-status-of-mpeg-dash-today-and-why-youtube-and-netflix-use-it-in-html5/)

17. [HTML5 Media Source
    Extensions](https://dvcs.w3.org/hg/html-media/raw-file/tip/media-source/media-source.html)

18. [bitdash DRM
    Testarea](http://www.dash-player.com/demo/drm-and-protection/)

19. [HTML5 Encrypted Media
    Extensions](https://w3c.github.io/encrypted-media/)

20. [360° Streaming in
    HTML5](https://bitmovin.com/tutorials/vr-360-video-encoding-playout/)

21. [A reference client implementation for the playback of MPEG DASH via
    Javascript and compliant
    browsers.](https://github.com/Dash-Industry-Forum/dash.js)

22.

23. [DASH at ITEC, VLC Plugin, DASHEncoder and
    Dataset](http://www-itec.uni-klu.ac.at/dash/) by C. Mueller, S.
    Lederer, C. Timmerer

24. [C. Müller and C. Timmerer, "A VLC Media Player Plugin enabling
    Dynamic Adaptive Streaming over HTTP", In Proceedings of the ACM
    Multimedia 2011 , Scottsdale, Arizona,
    November 28, 2011.](http://www-itec.uni-klu.ac.at/bib/files/p723-muller.pdf)

25.

26. [HTTP Adaptive streaming with
    GStreamer](https://coaxion.net/blog/2014/05/http-adaptive-streaming-with-gstreamer/)

27. [libdash: Open-source DASH client library](http://www.bitmovin.net/)
    by bitmovin Gmbh

28. [bitdash MPEG-DASH Player Feature
    Details](http://www.dash-player.com/feature-details/)

29.  THEOplayer|accessdate=2016-02-15|language=en-US}}

30. <https://www.theoplayer.com>

31. [OSMO4 Player of GPAC](http://gpac.wp.mines-telecom.fr/player/)

32. [DASH-JS at ITEC of Klagenfurt
    University](http://www-itec.uni-klu.ac.at/dash/?page_id=746)

33. [Radiant Media Player Compatibility
    Table](https://www.radiantmediaplayer.com/compatibility-table.html)

34.

35. [MPEG-DASH in
    nginx-rtmp-module 1.0.8](http://nginx-rtmp.blogspot.ru/2013/11/mpeg-dash-in-nginx-rtmp-module-108.html)

36. [MPEG-DASH improvements in
    nginx-rtmp-module 1.2.0](http://nginx-rtmp.blogspot.ru/2017/07/mpeg-dash-improvements-in-nginx-rtmp.html)

37. [MPEG-DASH live streaming in
    nginx-rtmp-module](http://nginx-rtmp.blogspot.ru/2013/11/mpeg-dash-live-streaming-in-nginx-rtmp.html)

38. [bitdash MPEG-DASH player for HTML5 and
    Flash](http://www.dash-player.com)

39. [Introducing nginx-ts-module for HLS and MPEG-DASH live
    streaming](http://nginx-rtmp.blogspot.ru/2017/07/introducing-nginx-ts-module-for-hls-and.html)

40. [MPEG-DASH support in Nimble
    Streamer](https://wmspanel.com/nimble/dash)

41. [Netview and Unified Streaming streaming
    DASH](http://www.streamingmedia.com/PressRelease/Netview-and-Unified-Streaming-streaming-DASH_27097.aspx)

42. [USP
    Factsheet](http://www.unified-streaming.com/products/factsheet/)

43.

44. [Akamai Announces Native MPEG-DASH and HDS Support for Live Video
    Workflows](http://www.akamai.com/html/about/press/releases/2014/press-040814.html)

45. \[<http://msdn.microsoft.com/en-us/library/ie/dn551370(v=vs.85>).aspx
    MPEG-DASH and streaming reference and resources\]

46. [bitcodin.com Supported
    Formats](http://www.bitcodin.com/supported-formats/)

47. [S. Lederer, C. Mueller and C. Timmerer, "Dynamic Adaptive Streaming
    over HTTP Dataset", In Proceedings of the ACM Multimedia Systems
    Conference 2012, Chapel Hill, North Carolina,
    February 22-24, 2012.](http://www-itec.uni-klu.ac.at/bib/files/p89-lederer.pdf)

48. [GPAC Telecom
    ParisTech](http://gpac.wp.mines-telecom.fr/2011/02/02/mp4box-fragmentation-segmentation-splitting-and-interleaving/)

49. [dashcast of Telecom
    ParisTech](http://gpac.wp.mines-telecom.fr/dashcast/)

50.

51. [Bento4 MPEG DASH
    Documentation](https://www.bento4.com/developers/dash/)

52. [MPEG DASH Dataset
    Overview](http://www.dash-player.com/blog/2015/04/10-free-public-mpeg-dash-teststreams-and-datasets/)

53. [S. Lederer, C. Mueller, C. Timmerer, C. Concolato, J. Le Feuvre and
    K. Fliegel, Distributed DASH Dataset, In Proceedings of the ACM
    Conference on Multimedia Systems (ACM MMSys) 2013, Oslo,
    Norway, 2013.](http://www-itec.uni-klu.ac.at/dash/?page_id=958)

54. [MPEG DASH Test
    Suite](http://digitaltv-labs.com/products/consumer_electronics/details/m-peg_dash)

55. [MPEG DASH Test
    Streams](http://www.bbc.co.uk/rd/blog/2013/09/mpeg-dash-test-streams)