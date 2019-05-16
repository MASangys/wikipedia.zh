[Mpeg.svg](https://zh.wikipedia.org/wiki/File:Mpeg.svg "fig:Mpeg.svg")，以及，皆屬於[容器格式](https://zh.wikipedia.org/wiki/容器格式 "wikilink")。\]\]
**MPEG-2**是[MPEG工作组于](../Page/MPEG.md "wikilink")1994年发布的[視訊和](https://zh.wikipedia.org/wiki/視訊 "wikilink")[音频压缩国际标准](https://zh.wikipedia.org/wiki/音频 "wikilink")。MPEG-2通常用来为广播信号提供-{zh-tw:視訊;
zh-hk:視頻;
zh-cn:视频;}-和音频[编码](https://zh.wikipedia.org/wiki/编码 "wikilink")，包括[卫星电视](../Page/卫星电视.md "wikilink")、[有线电视等](../Page/有线电视.md "wikilink")。MPEG-2经过少量修改后，也成为[DVD产品的核心技术](https://zh.wikipedia.org/wiki/DVD "wikilink")。

MPEG-2的系统描述部分（第1部分）定义了传输流，它用来一套在非可靠介质上传输數位-{zh-tw:視訊; zh-hk:視頻;
zh-cn:视频;}-信号和音频信号的机制，主要用在广播电视领域。

MPEG-2的第二部分即-{zh-tw:視訊; zh-hk:視頻;
zh-cn:视频;}-部分和[MPEG-1类似](../Page/MPEG-1.md "wikilink")，但是它提供对[隔行扫描](../Page/隔行扫描.md "wikilink")-{zh-tw:視訊;
zh-hk:視頻;
zh-cn:视频;}-显示模式的支持（[隔行扫描广泛应用在广播电视领域](../Page/隔行扫描.md "wikilink")）。MPEG-2-{zh-tw:視訊;
zh-hk:視頻;
zh-cn:视频;}-并没有对低位元速率（小于1Mbps）进行优化，在3Mbit/s及以上位元速率情况下，MPEG-2明显优于[MPEG-1](../Page/MPEG-1.md "wikilink")。MPEG-2向后兼容，也即是说，所有符合标准的MPEG-2解码器也能够正常播放[MPEG-1视频流](../Page/MPEG-1.md "wikilink")。

MPEG-2技术也应用在了[HDTV传输系统和蓝光光盘中](https://zh.wikipedia.org/wiki/HDTV "wikilink")。

MPEG-2的第三部分定义了[音频压缩标准](https://zh.wikipedia.org/wiki/音频压缩 "wikilink")。该部分改进了MPEG-1的音频压缩，支持两通道以上的音频。MPEG-2音频压缩部分也保持了向后兼容的特点。

MPEG-2的第七部分定义了不能向后兼容的[音频压缩](https://zh.wikipedia.org/wiki/音频压缩 "wikilink")。该部分提供了更强的音频功能。通常我们所说的MPEG-2[AAC指的就是这一部分](https://zh.wikipedia.org/wiki/Advanced_Audio_Coding "wikilink")。

## 标准技术细节

一个MPEG-2系统流一般包括两个基本元素：

  - \-{zh-tw:視訊; zh-hk:視頻; zh-cn:视频;}-数据 + 时间戳
  - 音频数据 + 时间戳

## \-{zh-tw:視訊; zh-hk:視頻; zh-cn:视频;}-编码概述

MPEG-2图像压缩的原理是利用了图像中的两种特性：空间相关性和时间相关性。这两种相关性使得图像中存在大量的冗余信息。如果我们能将这些冗余信息去除，只保留少量非相关信息进行传输，就可以大大节省传输频带。而接收机利用这些非相关信息，按照一定的解码算法，可以在保证一定的图像质量的前提下恢复原始图像。

MPEG-2-{zh-tw:視訊; zh-hk:視頻;
zh-cn:视频;}-通常包含多个[GOP](https://zh.wikipedia.org/wiki/GOP "wikilink")（Group
Of Pictures），每一个GOP包含多个帧（frame）。帧的帧类（frame
type）通常包括I-帧（I-frame）、P-帧（P-frame）和B-帧（B-frame）。其中I-帧采用帧内编码，P-帧采用前向估计，B-帧采用双向估计。

I帧图像采用帧内编码方式，即只利用了单帧图像内的空间相关性，而没有利用时间相关性。I帧使用帧内压缩，不使用运动补偿，由于I帧不依赖其它帧，所以是随机存取的入点，同时是解码的基准帧。I帧主要用于接收机的初始化和信道的获取，以及节目的切换和插入，I帧图像的压缩倍数相对较低。I帧图像是周期性出现在图像序列中的，出现频率可由编码器选择。

P帧和B帧图像采用帧间编码方式，即同时利用了空间和时间上的相关性。P帧图像只采用前向时间预测，可以提高压缩效率和图像质量。P帧图像中可以包含帧内编码的部分，即P帧中的每一个宏块可以是前向预测，也可以是帧内编码。

B帧图像采用双向时间预测，可以大大提高压缩倍数。值得注意的是，由于B帧图像采用了未来帧作为参考，因此MPEG-2编码码流中图像帧的传输顺序和显示顺序是不同的。

MPEG-2的编码码流分为六个层次。为更好地表示编码数据，MPEG-2用句法规定了一个层次性结构。它分为六层，从上至下依次为：视频序列层（Sequence），图像组层（GOP:
Group of Picture），图像层（Picture），像条层（Slice），宏块层（Macro
Block）和像块层（Block）。可以看到，除宏块层和像块层外，上面四层中都有相应的起始码（Start
Code，SC），可用于因误码或其它原因收发两端失步时，解码器重新捕捉同步。因此一次失步将至少丢失一个像条的数据。

一般来说输入-{zh-tw:視訊; zh-hk:視頻;
zh-cn:视频;}-格式是25（[CCIR标准](https://zh.wikipedia.org/wiki/CCIR "wikilink")）或者29.97（[FCC](https://zh.wikipedia.org/wiki/FCC "wikilink")）帧／秒。

MPEG-2支持[隔行扫描和](../Page/隔行扫描.md "wikilink")[逐行扫描](https://zh.wikipedia.org/wiki/逐行扫描 "wikilink")。在[逐行扫描模式下](https://zh.wikipedia.org/wiki/逐行扫描 "wikilink")，编码的基本单元是[帧](../Page/帧.md "wikilink")。在[隔行扫描模式下](../Page/隔行扫描.md "wikilink")，基本编码可以是帧，也可以是[场](https://zh.wikipedia.org/wiki/场 "wikilink")（[field](https://zh.wikipedia.org/wiki/field "wikilink")）。

原始输入图像首先被转换到[YCbCr](../Page/YCbCr.md "wikilink")[色彩空间](https://zh.wikipedia.org/wiki/色彩空间 "wikilink")。其中Y是亮度，Cb和Cr是两个色度通道。对于每一通道，首先采用块分割，然后形成“宏块”（macroblocks），宏块构成了编码的基本单元。每一个宏块再分割成8x8的小块。色度通道分割成小块的数目取决于初始参数设置。例如，在常用的4:2:0格式下，每个色度宏块只采样出一个小块，所以三个通道宏块能够分割成的小块数目是4+1+1=6个。

对于I-帧，整幅图像直接进入编码过程。对于P-帧和B-帧，首先做[运动补偿](../Page/运动补偿.md "wikilink")。通常来说，由于相邻帧之间的相关性很强，宏块可以在前帧和后帧中对应相近的位置找到相似的区域匹配的比较好，这个偏移量作为[运动向量被记录下来](https://zh.wikipedia.org/wiki/运动向量 "wikilink")，[运动估计重构的区域的误差被送到编码器中编码](https://zh.wikipedia.org/wiki/运动估计 "wikilink")。

对于每一个8×8小块，[离散余弦变换把图像从空间域转换到频域](../Page/离散余弦变换.md "wikilink")。得到的变换系数被[量化并重新组织排列顺序](https://zh.wikipedia.org/wiki/量化（信号处理） "wikilink")，从而增加长零的可能性。之后做[游程编码](../Page/游程编码.md "wikilink")（run-length
code）。最后作[哈夫曼编码](https://zh.wikipedia.org/wiki/哈夫曼编码 "wikilink")（Huffman
Encoding）。

I帧编码是为了减少空间域冗余，P帧和B帧是为了减少时间域冗余。

[GOP是由固定模式的一系列I帧](https://zh.wikipedia.org/wiki/GOP "wikilink")、P帧、B帧组成。常用的结构由15个帧组成，具有以下形式IBBPBBPBBPBBPBB。GOP中各个帧的比例的选取和带宽、图像的质量要求有一定关系。例如因为B帧的压缩时间可能是I帧的三倍，所以对于计算能力不强的某些实时系统，可能需要减少B帧的比例。

MPEG-2输出的比特流可以是匀速或者变速的。最大比特率，例如在DVD应用上，可达10.4
Mbit/s。如果要使用固定比特率，量化尺度就需要不断的调节以产生匀速的比特流。但是，提高量化尺度可能带来可视的失真效果。比如[马赛克现象](https://zh.wikipedia.org/wiki/马赛克 "wikilink")。

## 音频编码

MPEG-2的音频编码包括：

  - 使用一半的取樣速率處理低位元速率的音頻。
  - 多通道编码達到5.1個通道
  - 提供MPEG-2
    [AAC](https://zh.wikipedia.org/wiki/AAC "wikilink")，且不能向後兼容。

## MPEG-2在DVD上的应用

[DVD中采用了MPEG](https://zh.wikipedia.org/wiki/DVD "wikilink")-2标准并引入如下技术参数限制：

  - 分辨率
      - 720×480, 704×480, 352×480, 352×240
        [像素](../Page/像素.md "wikilink")（[NTSC制式](https://zh.wikipedia.org/wiki/NTSC "wikilink")）
      - 720×576, 704×576, 352×576, 352×288
        [像素](../Page/像素.md "wikilink")（[PAL制式](../Page/PAL制式.md "wikilink")）
  - 纵横比
      - 4:3
      - 16:9
  - 帧率（帧播放速度）
      - 59.94场／秒，23.976帧／秒，29.97帧／秒（NTSC）
      - 50场／秒，25帧／秒（PAL）
  - \-{zh-tw:視訊; zh-hk:視頻; zh-cn:视频;}-+音频比特率
      - 平均最大缓冲区9.8 Mbit/s
      - 峰值15 Mbit/s
      - 最小值300 Kbit/s
  - [YUV](../Page/YUV.md "wikilink") 4:2:0
  - [字幕支持](../Page/字幕.md "wikilink")
  - [内嵌字幕支持](https://zh.wikipedia.org/wiki/内嵌字幕 "wikilink")（NTSC only）
  - 音频
      - [LPCM编码](https://zh.wikipedia.org/wiki/LPCM "wikilink")：48kHz或96kHz；16或24-bit；最多可达6声道
      - [MPEG Layer
        2](https://zh.wikipedia.org/wiki/MPEG_Layer_2 "wikilink")（MP2）：48
        kHz，可达5.1声道
      - [杜比数字](../Page/杜比数字.md "wikilink")-Dolby Digital（DD，也称为AC-3）：48
        kHz，32-448 kbit/s，可达5.1声道
      - [数字家庭影院系统](https://zh.wikipedia.org/wiki/数字家庭影院系统 "wikilink")-Digital
        Theater Systems（DTS）：754 kbit/s或1510 kbit/s
      - [NTSC制式](https://zh.wikipedia.org/wiki/NTSC "wikilink")[DVD必须包含至少一道](https://zh.wikipedia.org/wiki/DVD "wikilink")[LPCM或](https://zh.wikipedia.org/wiki/LPCM "wikilink")[Dolby
        Digital](https://zh.wikipedia.org/wiki/Dolby_Digital "wikilink")
      - [PAL制式](https://zh.wikipedia.org/wiki/PAL "wikilink")[DVD必须包含至少一道MPEG](https://zh.wikipedia.org/wiki/DVD "wikilink")
        Layer 2、LPCM或者[Dolby
        Digital](https://zh.wikipedia.org/wiki/Dolby_Digital "wikilink")
  - GOP结构
      - 必须为GOP提供序列的头信息
      - GOP最大可含帧数目：18（NTSC）/15（PAL）

## MPEG-2在DVB下应用

[DVB-MPEG相关技术参数](../Page/DVB.md "wikilink")：

  - 標清電視（SDTV）必须符合以下一种分辨率：
      - 720×480像素，24/1.001，24，30/1.001或30帧／秒
      - 640×480像素，24/1.001，24，30/1.001或30帧／秒
      - 544×480像素，24/1.001，24，30/1.001或30帧／秒
      - 480×480像素，24/1.001，24，30/1.001或30帧／秒
      - 352×480像素，24/1.001，24，30/1.001或30帧／秒
      - 352×240像素，24/1.001，24，30/1.001或30帧／秒
      - 720×576像素，25帧／秒
      - 544×576像素，25帧／秒
      - 480×576像素，25帧／秒
      - 352×576像素，25帧／秒
      - 352×288像素，25帧／秒
  - 高清電視（HDTV）必须符合以下一种分辨率：
      - 720×576×50幀／秒逐行掃描（576p50）
      - 1280×720×25或50幀／秒逐行掃描（720p50）
      - 1440或1920×1080×25幀／秒逐行掃描（1080p25 = 電影模式）
      - 1440或1920×1080×25幀／秒隔行掃描（1080i50）

## MPEG-2和ATSC

  - 必须符合以下一种分辨率：
      - 1920 ×
        1080像素，最多60帧／秒（[1080i](https://zh.wikipedia.org/wiki/1080i "wikilink")）
      - 1280 × 720像素，最多60帧／秒（[720p](../Page/720p.md "wikilink")）
      - 720 ×
        576像素，最多50帧／秒，25帧／秒（[576i](https://zh.wikipedia.org/wiki/576i "wikilink")，[576p](https://zh.wikipedia.org/wiki/576p "wikilink")）
      - 720 ×
        480像素，最多60帧／秒，30帧／秒（[480i](https://zh.wikipedia.org/wiki/480i "wikilink")，[480p](https://zh.wikipedia.org/wiki/480p "wikilink")）
      - 640 × 480像素，最多60帧／秒

注：[1080i按](https://zh.wikipedia.org/wiki/1080i "wikilink")1920×1080像素编码，但是最后8行在显示时抛弃。

## MPEG-2标准文档号码

  - ISO/IEC 13818-1：系统-描述视频和音频的同步和多路技术
  - ISO/IEC 13818-2：视频-视频压缩
  - ISO/IEC 13818-3：音频-音频压缩，包括多通道的[MP3扩展](../Page/MP3.md "wikilink")。
  - ISO/IEC 13818-4：测试规范
  - ISO/IEC 13818-5：仿真软件
  - ISO/IEC 13818-6：DSM-CC（Digital Storage Media Command and Control）扩展
  - ISO/IEC 13818-7：[Advanced Audio
    Coding](https://zh.wikipedia.org/wiki/Advanced_Audio_Coding "wikilink")（AAC）
  - ISO/IEC 13818-9：实时接口扩展
  - ISO/IEC 13818-10：DSM-CC规范
  - ISO/IEC 13818-11: IPMP on MPEG-2 systems

## 专利持有者

  - MPEG-2核心技术大约涉及640个[专利](../Page/专利.md "wikilink")
  - 这些专利主要集中在20间[公司和一间](../Page/公司.md "wikilink")[大学](https://zh.wikipedia.org/wiki/大学 "wikilink")
      - [Alcatel](https://zh.wikipedia.org/wiki/Alcatel "wikilink")
      - [佳能](../Page/佳能.md "wikilink")
      - [哥倫比亞大學](https://zh.wikipedia.org/wiki/哥倫比亞大學 "wikilink")
      - [法國電信](https://zh.wikipedia.org/wiki/法國電信 "wikilink")（[CNET](https://zh.wikipedia.org/wiki/法國電信 "wikilink")）
      - [富士通](../Page/富士通.md "wikilink")
      - [General
        Electric](https://zh.wikipedia.org/wiki/General_Electric "wikilink")
        Capital Corporation
      - [General
        Instrument](https://zh.wikipedia.org/wiki/General_Instrument "wikilink")
        Corp.
      - [GE](https://zh.wikipedia.org/wiki/General_Electric "wikilink")
        Technology Development, Inc.
      - [日立](https://zh.wikipedia.org/wiki/日立 "wikilink")
      - [KDDI](../Page/KDDI.md "wikilink")
      - [朗訊科技](https://zh.wikipedia.org/wiki/朗訊科技 "wikilink")
      - [樂喜金星集團](https://zh.wikipedia.org/wiki/樂喜金星集團 "wikilink")（LG）
      - [松下電器](../Page/松下電器.md "wikilink")
      - [三菱](https://zh.wikipedia.org/wiki/三菱 "wikilink")
      - [日本電信電話](../Page/日本電信電話.md "wikilink")（[NTT](../Page/日本電信電話.md "wikilink")）
      - [Philips](https://zh.wikipedia.org/wiki/Philips "wikilink")
      - [Robert
        Bosch](https://zh.wikipedia.org/wiki/Robert_Bosch "wikilink")
        GmbH
      - [三星](../Page/三星電子.md "wikilink")
      - [三洋電器](https://zh.wikipedia.org/wiki/三洋電器 "wikilink")
      - [Scientific
        Atlanta](https://zh.wikipedia.org/wiki/Scientific_Atlanta "wikilink")
      - [夏普](https://zh.wikipedia.org/wiki/夏普 "wikilink")
      - [索尼](../Page/索尼.md "wikilink")
      - Thomson Licensing S.A.
      - [東芝](https://zh.wikipedia.org/wiki/東芝 "wikilink")
      - [JVC](../Page/JVC.md "wikilink")

## 参见

  - [MPEG-2授权](https://zh.wikipedia.org/wiki/MPEG-2授权 "wikilink")
  - [MPEG-1](../Page/MPEG-1.md "wikilink")
  - [MPEG-4](../Page/MPEG-4.md "wikilink")
  - [H.261](../Page/H.261.md "wikilink")
  - [H.263](../Page/H.263.md "wikilink")
  - [ISDB](../Page/ISDB.md "wikilink")

## 參考資料

  - [《剖析MPEG系列标准的演变过程》李光白文利](http://www.cnki.com.cn/Article/CJFDTOTAL-YXDJ200413010.htm)（有线电视技术2004年13期第32-35页）

[nl:MPEG\#MPEG-2](https://zh.wikipedia.org/wiki/nl:MPEG#MPEG-2 "wikilink")

[Category:影像科技](https://zh.wikipedia.org/wiki/Category:影像科技 "wikilink")
[Category:電腦術語](https://zh.wikipedia.org/wiki/Category:電腦術語 "wikilink")
[Category:影像编解码器](https://zh.wikipedia.org/wiki/Category:影像编解码器 "wikilink")
[Category:音频编解码器](https://zh.wikipedia.org/wiki/Category:音频编解码器 "wikilink")
[Category:MPEG](https://zh.wikipedia.org/wiki/Category:MPEG "wikilink")
[Category:影像壓縮技術](https://zh.wikipedia.org/wiki/Category:影像壓縮技術 "wikilink")