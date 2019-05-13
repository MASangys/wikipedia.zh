**MPEG-1**是[MPEG组织制定的第一个](../Page/MPEG.md "wikilink")[视频和](../Page/视频.md "wikilink")[音频有损压缩标准](../Page/音频.md "wikilink")，也是最早推出及应用在市场上的MPEG技术，其原来主要-{zh-hans:目标;zh-hant:目標}-是在[CD光盘上记录影像](../Page/CD.md "wikilink")，后来被广泛应用在[VCD光盘](../Page/VCD.md "wikilink")。[视频压缩算法于](../Page/视频压缩.md "wikilink")1990年定义完成。1992年底，MPEG-1正式被批准成为国际标准。

## MPEG-1概述

MPEG-1是为[CD](../Page/CD.md "wikilink")[光盘介质定制的视频和音频压缩格式](../Page/光盘.md "wikilink")。一张70分钟的CD光盘传输速率大约在1.4Mbps。而MPEG-1采用了块方式的[运动补偿](../Page/运动补偿.md "wikilink")、[离散余弦变换](../Page/离散余弦变换.md "wikilink")（[DCT](../Page/DCT.md "wikilink")）、量化等技术，并为1.2Mbps传输速率进行了优化。MPEG-1随后被[Video
CD采用作为核心技术](../Page/Video_CD.md "wikilink")。VCD的解析度只有约352×240，并使用固定的比特率（1.15Mbps），因此在播放快速动作的视频时，由于数据量不足，令压缩时[宏区块无法全面调整](../Page/宏区块.md "wikilink")，结果使视频画面出现模糊的方块。因此MPEG-1的输出质量大约和传统录像机[VCR相当](../Page/video_cassette_recorder.md "wikilink")，这也许是[Video
CD在发达国家未获成功的原因](../Page/Video_CD.md "wikilink")。MPEG-1音频分三代，其中最著名的第三代协议被称为MPEG-1
Layer
3，简称[MP3](../Page/MP3.md "wikilink")，目前已经成为广泛流传的音频压缩技术。MPEG-1音频技术在每一代之间，在保留相同的输出质量之外，压缩率都比上一代高。第一代协议MP1被应用在LD作为记录数字音频以及飞利浦公司的DGC上；而第二代协议MP2后来被应用于欧洲版的DVD音频层之一。

MPEG-1具有以下特点：

  - 随机访问
  - 灵活的帧率
  - 可变的图像尺寸
  - 定义了[I-帧](../Page/I-帧.md "wikilink")、[P-帧和](../Page/P-帧.md "wikilink")[B-帧](../Page/B-帧.md "wikilink")
  - [运动补偿可跨越多个](../Page/运动补偿.md "wikilink")[帧](../Page/帧.md "wikilink")
  - 半像素精度的[运动向量](../Page/运动向量.md "wikilink")
  - 量化矩阵
  - [GOP结构](../Page/GOP结构.md "wikilink")
  - [slice结构](../Page/slice.md "wikilink")

## 技术细节

### 输入视频格式

MPEG-1规定了以下几个参数限制：

  - 最大[像素数](../Page/像素.md "wikilink")／行：768
  - 最大行数／影格：576
  - 最大影格／秒：30
  - 最大[宏块](../Page/宏块.md "wikilink")／影格：396
  - 最大[宏块](../Page/宏块.md "wikilink")／秒：9900
  - 最大位元率：1 856 000bps
  - 最大解码缓冲区尺寸：327680bit。

### 数据结构和压缩模式

MPEG-1可以按照分层的概念来理解，一个MPEG-1视频序列，包含多个[GOP](../Page/GOP.md "wikilink")，每个[GOP包含多个](../Page/GOP.md "wikilink")[帧](../Page/帧.md "wikilink")，每个[帧包含多个](../Page/帧.md "wikilink")[slice](../Page/slice.md "wikilink")。

[影格是MPEG](../Page/影格.md "wikilink")-1的一个重要基本元素，一个[影格就是一个完整的显示图像](../Page/影格.md "wikilink")。影格的种类有四种：

  - I-圖像／影格（節點編碼圖像，intra coded
    picture）參考圖像，相當於一個固定影像，且獨立於其它的圖像類型。每個圖像群組由此類型的圖像開始。编码时独立编码，仅适用帧内编码技术，因而解码时不参考其他帧，类似[JPEG编码](../Page/JPEG.md "wikilink")。
  - P-圖像／影格（預測編碼圖像，predictive coded
    picture）包含來自先前的I或P-畫格的差異資訊。编码时使用[运动补偿和](../Page/运动补偿.md "wikilink")[运动估计](../Page/运动估计.md "wikilink")，採用[前向估计](../Page/前向估计.md "wikilink")，参考之前的I-帧或者P-帧去預測該P格。
  - B-圖像／影格（前後預測編碼圖像，bidirectionally predictive coded
    pictures）包含來自先前和／或之後的I或P-畫格的差異資訊。编码也使用[运动补偿和](../Page/运动补偿.md "wikilink")[运动估计](../Page/运动估计.md "wikilink")，預估採用[前向估计](../Page/前向估计.md "wikilink")、[后向估计或是](../Page/后向估计.md "wikilink")[双向估计](../Page/双向估计.md "wikilink")，主要参考前面的或者后面的I格或者P格。
  - D-圖像／影格（指示編碼圖像，DC direct coded
    picture）用於快速進帶。仅由[DC直流分量构造的图像](../Page/DC.md "wikilink")，可在低比特率的时候做浏览用。实际编码中很少使用。

### 影格内编码模式

### 影格间编码模式

### 音频编码

Reference: [ISO/IEC
JTC1/SC29/WG11](http://www.chiariglione.org/mpeg/standards/mpeg-1/mpeg-1.htm)
(June 1996)

## 参见

  - [MPEG-2](../Page/MPEG-2.md "wikilink")
  - [MPEG-4](../Page/MPEG-4.md "wikilink")
  - [MP3](../Page/MP3.md "wikilink")
  - [H.261](../Page/H.261.md "wikilink")
  - [H.263](../Page/H.263.md "wikilink")
  - [H.264](../Page/H.264.md "wikilink")
  - [H.265](../Page/H.265.md "wikilink")
  - [MPEG-1简介（英文）](https://web.archive.org/web/20050324041934/http://www.chiariglione.org/mpeg/standards/mpeg-1/mpeg-1.htm)

[Category:影像科技](https://zh.wikipedia.org/wiki/Category:影像科技 "wikilink")
[Category:電腦術語](https://zh.wikipedia.org/wiki/Category:電腦術語 "wikilink")
[Category:影片编解码器](https://zh.wikipedia.org/wiki/Category:影片编解码器 "wikilink")
[Category:音频编解码器](https://zh.wikipedia.org/wiki/Category:音频编解码器 "wikilink")
[Category:MPEG](https://zh.wikipedia.org/wiki/Category:MPEG "wikilink")
[Category:影片壓縮技術](https://zh.wikipedia.org/wiki/Category:影片壓縮技術 "wikilink")