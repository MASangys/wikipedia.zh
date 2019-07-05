**H.261**是1990年[ITU-T制定的一个](https://zh.wikipedia.org/wiki/ITU-T "wikilink")[影片编码标准](https://zh.wikipedia.org/wiki/影片 "wikilink")，属于[影片编解码器](https://zh.wikipedia.org/wiki/影片编解码器 "wikilink")。

## 设计与技术细节

设计的目的是能够在带宽为64kbps的倍数的[综合业务数字网](../Page/综合业务数字网.md "wikilink")（ISDN for
Integrated Services Digital
Network）上传输质量可接受的影片信号。编码程序设计的码率是能够在40kbps到2Mbps之间工作，能够对[CIF和](https://zh.wikipedia.org/wiki/CIF "wikilink")[QCIF分辨率的影片进行编码](https://zh.wikipedia.org/wiki/QCIF "wikilink")，即亮度分辨率分别是352x288和176x144，色度采用[4:2:0采样](https://zh.wikipedia.org/wiki/4:2:0 "wikilink")，分辨率分别是176x144和88x72。在1994年的时候，H.261使用向后兼容的技巧加入了一个能够发送分辨率为704x576的静止图像的技术。

H.261是第一个实用的[数字影片编码标准](https://zh.wikipedia.org/wiki/数字影片 "wikilink")。H.261的设计相当成功，之后的影片编码[国际标准基本上都是基于H](https://zh.wikipedia.org/wiki/国际标准 "wikilink").261相同的设计框架，包括[MPEG-1](../Page/MPEG-1.md "wikilink")，[MPEG-2](../Page/MPEG-2.md "wikilink")／[H.262](../Page/H.262.md "wikilink")，[H.263](../Page/H.263.md "wikilink")，甚至
[H.264](https://zh.wikipedia.org/wiki/H.264 "wikilink")。同样，H.261开发委员会（由Sakae
Okubo领导，他的日文姓名是大久保榮）的基本的运作方式也被之后的影片编码标准开发组织所继承。H.261使用了混合编码框架，包括了基于[运动补偿的帧间预测](../Page/运动补偿.md "wikilink")，基于[离散余弦变换的空域](../Page/离散余弦变换.md "wikilink")[变换编码](https://zh.wikipedia.org/wiki/变换编码 "wikilink")，[量化](../Page/量化_\(信号处理\).md "wikilink")，[zig-zag扫描和](https://zh.wikipedia.org/wiki/zig-zag扫描 "wikilink")[熵编码](https://zh.wikipedia.org/wiki/熵编码 "wikilink")。

H.261编码时基本的操作单位称为[宏块](https://zh.wikipedia.org/wiki/宏块 "wikilink")。H.261使用YCbCr颜色空间，并采用[4:2:0色度抽样](https://zh.wikipedia.org/wiki/4:2:0 "wikilink")，每个宏块包括16x16的亮度抽样值和两个相应的8x8的色度抽样值。

H.261使用帧间预测来消除空域冗余，并使用了[运动矢量来进行](https://zh.wikipedia.org/wiki/运动矢量 "wikilink")[运动补偿](../Page/运动补偿.md "wikilink")。[变换编码部分使用了一个](https://zh.wikipedia.org/wiki/变换编码 "wikilink")8x8的[离散余弦变换来消除空域的冗余](../Page/离散余弦变换.md "wikilink")，然后对变换后的系数进行阶梯量化（这一步是有损压缩），之后对量化后的变换系数进行[Zig-zag扫描](https://zh.wikipedia.org/wiki/Zig-zag扫描 "wikilink")，并进行[熵编码](https://zh.wikipedia.org/wiki/熵编码 "wikilink")（使用Run-Level[变长编码](https://zh.wikipedia.org/wiki/变长编码 "wikilink")）来消除统计冗余。

实际上H.261标准仅仅规定了如何进行影片的解码（后继的各个影片编码标准也继承了这种做法）。这样的话，实际上开发者在编码器的设计上拥有相当的自由来设计编码算法，只要他们的编码器产生的码流能够被所有按照H.261规范制造的解码器解码就可以了。编码器可以按照自己的需要对输入的影片进行任何预处理，解码器也有自由对输出的影片在显示之前进行任何后处理。去块效应滤波器是一个有效的后处理技术，它能明显的减轻因为使用分块[运动补偿编码造成的块效应](../Page/运动补偿.md "wikilink")（马赛克）--在观看低码率影片（例如网站上的影片新闻）的时候我们都会注意到这种讨厌的效应。因此，在之后的影片编码标准如[H.264中就把去块效应滤波器加为标准的一部分](https://zh.wikipedia.org/wiki/H.264 "wikilink")（即使在使用H.264的时候，再完成解码后再增加一个标准外的去块效应滤波器也能提高主观影片质量）。

后来的影片编码标准都可以说是在H.261的基础上进行逐步改进，引入新功能得到的。现在的影片编码标准比起H.261来在各性能方面都有了很大的提高，这使得H.261成为了过时的标准，除了在一些[影片会议系统和](https://zh.wikipedia.org/wiki/影片会议 "wikilink")[网络影片中为了](https://zh.wikipedia.org/wiki/网络影片 "wikilink")[向后兼容还支持H](https://zh.wikipedia.org/wiki/向后兼容 "wikilink").261，已经基本上看不到使用H.261的产品了。但是这并不妨碍H.261成为[影片编码领域一个重要的里程碑式的标准](https://zh.wikipedia.org/wiki/影片编码 "wikilink")。

## 参见

  - [影片压缩](https://zh.wikipedia.org/wiki/影片压缩 "wikilink")
  - [通用影像傳輸格式](https://zh.wikipedia.org/wiki/通用影像傳輸格式 "wikilink")（CIF
    for Common Intermediate Format）
  - [影片编解码器](https://zh.wikipedia.org/wiki/影片编解码器 "wikilink")

[Category:影片编解码器](https://zh.wikipedia.org/wiki/Category:影片编解码器 "wikilink")
[Category:ITU-T标准](https://zh.wikipedia.org/wiki/Category:ITU-T标准 "wikilink")
[Category:影片壓縮技術](https://zh.wikipedia.org/wiki/Category:影片壓縮技術 "wikilink")