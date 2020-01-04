> 本文内容由[VP9](https://zh.wikipedia.org/wiki/VP9)转换而来。


**VP9**是[谷歌公司为了替换老旧的](../Page/Google.md "wikilink")[VP8](../Page/VP8.md "wikilink")影像编码格式并与[动态专家图像组（MPEG）主導的](../Page/MPEG.md "wikilink")[高效率视频编码（H.265/HEVC）競爭所開發的免费](https://zh.wikipedia.org/wiki/High_Efficiency_Video_Coding "wikilink")、开源的影像編碼格式。

VP9主要被用於Google旗下著名的影音分享網站[YouTube](../Page/YouTube.md "wikilink")。\[1\]\[2\]VP9一般与[Opus音频编码一起以](https://zh.wikipedia.org/wiki/Opus_codec "wikilink")[WebM](../Page/WebM.md "wikilink")格式封裝。\[3\]

相比于高效率视频编码，许多浏览器都支持VP9视频格式，截止2018年6月，约有4/5的浏览器（包括移动设备）支持WebM封装容器和VP9视频编码，例如[Chromium](../Page/Chromium.md "wikilink")、[Chrome](../Page/Google_Chrome.md "wikilink")、[Microsoft Edge](../Page/Microsoft_Edge.md "wikilink")、[Firefox](../Page/Firefox.md "wikilink")、[Opera等浏览器都内置了VP](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")9解码器，可在[HTML5](../Page/HTML5.md "wikilink")播放器中播放VP9影像格式。[Windows 10作業系統也内置了WebM分离器和VP](../Page/Windows_10.md "wikilink")9解码器。

随着[开放媒体联盟的出现和Google参与到VP](https://zh.wikipedia.org/wiki/开放媒体联盟 "wikilink")9下一代格式[AV1的开发中](../Page/AOMedia_Video_1.md "wikilink")，人们对VP9产生了更浓厚的兴趣。\[4\]VP10视频编码的技術被收录在開放媒體聯盟所領導的AV1編碼中\[5\]，因此Google表示不會在內部部署或正式發布VP10。

Google持有VP9视频格式的部分專利，但Google保證在互惠的條件下（例如使用者避免參與專利訴訟）可免費使用。\[6\]

## 開發歷史

VP9是谷歌在2010年以1.34亿美元收購创建它的[On2 Technologies公司時一起收購的TrueMotion系列视频格式的最后一個官方版本](../Page/On2_Technologies.md "wikilink")。

VP9的開發從2011年第三季度開始\[7\]\[8\]，初期开发代號为Next Gen Open Video（NGOV）和VP-Next，VP9的目標是在同畫質下比VP8編碼減少50%的文件大小\[9\]并在編碼效率上超越由動態專家圖像組主導開發的高效率視頻編碼\[10\]。

2013年6月，VP9的“Profile 0”最终确定\[11\]\[12\]\[13\]。谷歌的[Chrome浏览器在兩個月后宣佈支持VP](https://zh.wikipedia.org/wiki/Chrome "wikilink")9视频播放\[14\]。同年10月，一个原生的VP9解码器被添加到[FFmpeg](../Page/FFmpeg.md "wikilink")和六周后更新的Libav。 [Mozilla](../Page/Mozilla.md "wikilink")則于2014年3月向[Firefox](../Page/Firefox.md "wikilink")添加了VP9支持\[15\]。

2013年，谷歌发布了WebM格式的更新版本，正式支持VP9和[Opus音频](https://zh.wikipedia.org/wiki/Opus "wikilink")。

2014年，谷歌向VP9添加了两个高色彩深度Profile：Profile 2和Profile 3。

在VP9的整个開發过程中，谷歌与硬件供应商合作，将VP9解碼支持加入到芯片。 2014年1月，Ittiam与[ARM和谷歌合作](https://zh.wikipedia.org/wiki/ARM "wikilink")，展示了其针对ARM Cortex架構的VP9解码器，該解碼器使用[圖形處理器通用計算技术](https://zh.wikipedia.org/wiki/GPGPU "wikilink")，能够在上以30[幀每秒的速度播放](https://zh.wikipedia.org/wiki/幀 "wikilink")1080p[分辨率](../Page/分辨率.md "wikilink")的VP9視頻。2015年初，Nvidia在其[圖睿X1中添加了VP](https://zh.wikipedia.org/wiki/圖睿 "wikilink")9解碼支持，而[芯原微电子](../Page/芯原微电子.md "wikilink")也在其Hantro G2v2解码器中添加了VP9 Profile 2支持。

2015年4月3日，谷歌發布libvpx1.4.0，增加了對10位和12位[色彩深度](../Page/色彩深度.md "wikilink")、4:2:2和4:4:4[色度抽样](../Page/色度抽样.md "wikilink")以及[多线程](../Page/多线程.md "wikilink")編解碼的支持。

2015年12月，[Netflix](../Page/Netflix.md "wikilink")發表了一份草案，希望将VP9视频格式纳入带有MPEG公共加密的[MP4](../Page/MP4.md "wikilink")封裝容器的註冊格式中。

2016年1月，Ittiam展示了基于[OpenCL](../Page/OpenCL.md "wikilink")的VP9编码器。该编码器针对ARM Mali移动GPU，并在三星Galaxy S6上进行了演示。

而後VP9解碼器被添加到[微軟開發的Web浏览器](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Edge](../Page/Microsoft_Edge.md "wikilink")，EdgeHTML 14.14291及之後的开发版本均支持VP9解碼，并最終于2016年夏季正式发布搭載VP9解碼器的Edge瀏覽器。

2017年3月，Ittiam宣布完成了一项旨在提高libvpx编码速度的项目。其稱VP9的編碼速度將會因此提升50-70％，代码將會“作为libvpx的一部分公开發佈”。

## 技術細節

相對於前一代的VP8編碼，VP9做了許多改進：VP9支援32×32的編碼區塊，且將來會擴充到64×64的規格，此外VP9還支援以下的[色彩空間](../Page/色彩空間.md "wikilink")：[Rec. 601](../Page/BT.601.md "wikilink")、[Rec. 709](https://zh.wikipedia.org/wiki/Rec._709 "wikilink")、Rec. 2020、SMPTE-170、SMPTE-240和[sRGB](https://zh.wikipedia.org/wiki/sRGB "wikilink")\[16\]\[17\]。

### 編碼格式設定

VP9標準支援四種編碼格式設定（Profiles）：profile 0、profile 1、profile 2及profile 3。Profile 0支援4:2:0的[色度抽樣](https://zh.wikipedia.org/wiki/色度抽樣 "wikilink")；Profile 1針對硬體播放環境，支援新增支援4:2:2的色度抽樣、4:4:4色度抽樣、alpha channel支援和depth channel支援；Profile 2及Profile 3則支援10位元[色彩深度](../Page/色彩深度.md "wikilink")的編碼格式設定\[18\]。

## 參見

  - [High Efficiency Video Coding](https://zh.wikipedia.org/wiki/High_Efficiency_Video_Coding "wikilink")（HEVC）
  - [WebM](../Page/WebM.md "wikilink")
  - [AOMedia Video 1](../Page/AOMedia_Video_1.md "wikilink")

## 參考資料

## 外部链接

  - .

[Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink") [Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink") [Category:电脑术语](https://zh.wikipedia.org/wiki/Category:电脑术语 "wikilink") [Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink")

1.  Alex Converse (Google), 19 September 2015: \[//www.youtube.com/watch?v=gkz1ZvejmEc New video compression techniques under consideration for VP10\] – presentation at the VideoLAN Dev Days 2015 in Paris
2.  Anja Schmoll-Trautmann (CNET), April 8, 2015: \[//www.cnet.de/88148309/ Youtube: Kompression mit Codec VP9 gestartet\] (german)
3.
4.
5.
6.  [VP8 Bitstream Specification License](https://www.webmproject.org/license/bitstream/)
7.
8.
9.
10.
11.
12.
13.
14.
15. [1](https://www.mozilla.org/en-US/firefox/28.0/releasenotes/)
16.
17.
18.