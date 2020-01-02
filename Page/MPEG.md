> 本文内容由[MPEG](https://zh.wikipedia.org/wiki/MPEG)转换而来。


[Mpeg.svg](https://zh.wikipedia.org/wiki/File:Mpeg.svg "fig:Mpeg.svg")

**MPEG**正式审核程序是Moving Picture Experts Group的简称。这个名字本来的含义是指一个研究[视频](../Page/视频.md "wikilink")和[音频编码标准的](https://zh.wikipedia.org/wiki/音频 "wikilink")“动态图像专家组”组织，成立于1988年，致力开发视频、音频的压缩编码技术。现在我们所说的MPEG泛指由该小组制定的一系列[视频编码标准正式审核程序](https://zh.wikipedia.org/wiki/视频编码 "wikilink")。该小组于1988年组成，至今已经制定了[MPEG-1](../Page/MPEG-1.md "wikilink")、[MPEG-2](../Page/MPEG-2.md "wikilink")、[MPEG-3](https://zh.wikipedia.org/wiki/MPEG-3 "wikilink")、[MPEG-4](../Page/MPEG-4.md "wikilink")、[MPEG-7等多个标准](https://zh.wikipedia.org/wiki/MPEG-7 "wikilink")，[MPEG-21](../Page/MPEG-21.md "wikilink")正在制定中。MPEG是[ISO和](https://zh.wikipedia.org/wiki/ISO "wikilink")[IEC的工作组](https://zh.wikipedia.org/wiki/IEC "wikilink")，它的官方头衔为：第一技术委员会第二十九子委员会第十一号工作组正式审核程序，英文头衔为ISO/IEC JTC1/SC29 WG11。MPEG大约每2-3个月举行一次会议，每次会议大约持续5天，在会议期间，新的建议和技术细节先在小组中讨论，成熟后进入标准化的正式审核程序。与MPEG工作组相关的其他几个视频标准化工作组包括[ITU-T VCEG以及](https://zh.wikipedia.org/wiki/ITU-T_VCEG "wikilink")[JVT](https://zh.wikipedia.org/wiki/JVT "wikilink")。

## MPEG相关标准

到目前为止，已有以下和视频相关的标准：

  - [MPEG-1](../Page/MPEG-1.md "wikilink")：第一个官方的视訊音訊压缩标准，随后在[Video CD中被采用](https://zh.wikipedia.org/wiki/Video_CD "wikilink")，其中的音訊压缩的第三级（MPEG-1 Layer 3）简称[MP3](../Page/MP3.md "wikilink")，成为比较流行的音訊压缩格式。
  - [MPEG-2](../Page/MPEG-2.md "wikilink")：广播质量的视訊、音訊和传输协议。被用于無線[數位電視](https://zh.wikipedia.org/wiki/數位電視 "wikilink")-[ATSC](../Page/ATSC.md "wikilink")、[DVB](../Page/DVB.md "wikilink")以及[ISDB](../Page/ISDB.md "wikilink")、数字卫星电视（例如[DirecTV](../Page/DirecTV.md "wikilink")）、数字[有线电视](../Page/有线电视.md "wikilink")信号，以及[DVD视频光盘技术中](https://zh.wikipedia.org/wiki/DVD "wikilink")。
  - [MPEG-3](https://zh.wikipedia.org/wiki/MPEG-3 "wikilink")：原本目标是为[高解析度电视](https://zh.wikipedia.org/wiki/高解析度电视 "wikilink")（[HDTV](https://zh.wikipedia.org/wiki/HDTV "wikilink")）设计，随后發現MPEG-2已足夠HDTV應用，故MPEG-3的研發便中止。
  - [MPEG-4](../Page/MPEG-4.md "wikilink")：2003年发布的视訊压缩标准，主要是扩展MPEG-1、MPEG-2等標準以支援視訊／音訊物件（video/audio "objects"）的編碼、3D內容、低位元率編碼（low bitrate encoding）和[數位版權管理](https://zh.wikipedia.org/wiki/數位版權管理 "wikilink")（Digital Rights Management），其中第10部分由ISO/IEC和ITU-T联合发布，称为[H.264/MPEG-4 Part 10](https://zh.wikipedia.org/wiki/H.264 "wikilink")。
  - [MPEG-7](https://zh.wikipedia.org/wiki/MPEG-7 "wikilink")：MPEG-7并不是一个视訊压缩标准，它是一个多媒体内容的描述标准。
  - [MPEG-21](../Page/MPEG-21.md "wikilink")：MPEG-21是一个正在制定中的标准，它的目标是为未来多媒体的应用提供一个完整的平台。

## MPEG工作原理

MPEG（通常指MPEG-1）影像编码是基于变换的[有损压缩](https://zh.wikipedia.org/wiki/有损压缩 "wikilink")。光学信号线经过[采样形成视频信号](https://zh.wikipedia.org/wiki/采样 "wikilink")，视频信号基本的单位叫做[影格](https://zh.wikipedia.org/wiki/影格 "wikilink")，一个影格就是一个独立的[图像](../Page/图像.md "wikilink")，然后[影格被分割成小块做](https://zh.wikipedia.org/wiki/影格 "wikilink")[变换编码](https://zh.wikipedia.org/wiki/变换编码 "wikilink")，然后[量化](../Page/量化_\(信号处理\).md "wikilink")，最后进行[熵编码](https://zh.wikipedia.org/wiki/熵编码 "wikilink")。请参见[MPEG-1](../Page/MPEG-1.md "wikilink")

[MPEG-1](../Page/MPEG-1.md "wikilink")、[MPEG-2](../Page/MPEG-2.md "wikilink")、[MPEG-4](../Page/MPEG-4.md "wikilink")實際上採用了的[動量估計和](https://zh.wikipedia.org/wiki/動量估計 "wikilink")[動量補償技術](https://zh.wikipedia.org/wiki/動量補償 "wikilink")。在利用了[動量補償的](https://zh.wikipedia.org/wiki/動量補償 "wikilink")[帧](../Page/帧.md "wikilink")（圖像）中，被編碼的是經過動量補償的參考幀與目前圖像的差。与传统影像编码技术不同，MPEG并不是每格影像进行压缩，而是以一秒时段作为单位，将时段内的每一格影像做比较，由于一般视频内容都是背景变化小、主体变化大，MPEG技术就应用这个特点，以一幅影像为主图，其余影像格只记录参考资料及变化数据，更有效记录动态影像。从MPEG-1到MPEG-4，其核心技术仍然离不开这个原理，之间的分别主要在于比较的过程和分析的复杂性等。

MPEG只規定[位元流](../Page/位元流.md "wikilink")的格式與解碼精確度（即规定解码的方法），而任何人可依照MPEG標準以不同方式實現編碼器（程式）。除了可減少因编码專利造成的商業利益糾紛外，MPEG標準的主要目的在於確保不同的編碼器所產生的位元流可被其他解碼器正確的解碼，只要此位元流符合標準。

## 参见

  - [影像编码器](https://zh.wikipedia.org/wiki/影像编码器 "wikilink")
  - [影像编码器](https://zh.wikipedia.org/wiki/影像编码器 "wikilink")
  - [影像压缩](https://zh.wikipedia.org/wiki/影像压缩 "wikilink")
  - [JPEG](../Page/JPEG.md "wikilink")

## 外部链接

  - [MPEG Pointers & Resources](https://web.archive.org/web/20080218040444/http://www.mpeg.org/)

[Category:影像科技](https://zh.wikipedia.org/wiki/Category:影像科技 "wikilink") [Category:電腦術語](https://zh.wikipedia.org/wiki/Category:電腦術語 "wikilink") [Category:MPEG](https://zh.wikipedia.org/wiki/Category:MPEG "wikilink") [Category:ISO](https://zh.wikipedia.org/wiki/Category:ISO "wikilink") [Category:标准制订机构](https://zh.wikipedia.org/wiki/Category:标准制订机构 "wikilink")