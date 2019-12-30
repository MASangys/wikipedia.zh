**Motion JPEG**（**M-JPEG**或**MJPEG**，Motion Joint Photographic Experts Group，[FourCC](https://zh.wikipedia.org/wiki/FourCC "wikilink"):MJPG）是一种影像压缩格式，其中每一[帧](../Page/帧.md "wikilink")[图像](../Page/图像.md "wikilink")都分别使用[JPEG](../Page/JPEG.md "wikilink")编码。M-JPEG常用在[数码相机](../Page/数码相机.md "wikilink")和[摄像头](../Page/摄像头.md "wikilink")之类的图像采集设备上，[非线性剪辑系统也常用这种格式](https://zh.wikipedia.org/wiki/非线性剪辑 "wikilink")。[QuickTime](../Page/QuickTime.md "wikilink")播放器和包括[Mozilla Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")，[Google Chrome](../Page/Google_Chrome.md "wikilink")，[Safari](../Page/Safari.md "wikilink")在内许多[网页浏览器](../Page/网页浏览器.md "wikilink")原生支持M-JPEG。

## 编码

M-JPEG只使用[帧内压缩](https://zh.wikipedia.org/wiki/帧内压缩 "wikilink")（区别于算法更复杂的[帧间压缩](../Page/运动补偿.md "wikilink")），只单独的对某一帧进行压缩，而不考虑影像畫面中不同帧之间的变化。因此压缩效率比较低，一般低于1:20，而使用了帧间压缩的现代影像压缩格式（如[MPEG1](https://zh.wikipedia.org/wiki/MPEG1 "wikilink")、[MPEG2和](https://zh.wikipedia.org/wiki/MPEG2 "wikilink")[H.264/MPEG-4 AVC](https://zh.wikipedia.org/wiki/H.264/MPEG-4_AVC "wikilink")）一般能超过1:50.由于各帧直接是相互独立的，M-JPEG的编解码在对运算能力和内存的要求较低。

由于M-JPEG是纯粹的帧内压缩，每帧画面的质量只与编码率和画面的空域复杂度有关。包含大面积平滑变化或者单色区域的帧压缩效果较好，而包含复杂纹理、细线条（如文字）的区域容易产生由于[离散余弦变换](../Page/离散余弦变换.md "wikilink")产生的噪声。M-JPEG的压缩效果与影像的时域复杂度无关。

对于[QuickTime](../Page/QuickTime.md "wikilink")格式，[苹果公司定义了两种类型的编码](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")：MJPEG-A和MJPEG-B。MJPEG-B的帧不保存完整的[JFIF格式](https://zh.wikipedia.org/wiki/JFIF "wikilink")，在把MJPEG-B的帧保存成单独的JPEG文件是需要添加JFIF文件头。

## 应用

M-JPEG被广泛应用在网页浏览器，媒体播放器，数码相机，摄像头，[流媒体](../Page/流媒体.md "wikilink")服务器和[非线性剪辑系统中](https://zh.wikipedia.org/wiki/非线性剪辑 "wikilink")。

### 影像錄製與剪辑

由于M-JPEG中的帧可以随机存取，影像錄製与非线性编辑系统普遍支持这种格式。

### 数码相机

在[MPEG-4](../Page/MPEG-4.md "wikilink")编码在消费电子设备上普及之前，数码相机普遍采用M-JPEG编码来保存录制的影像，这样就可以利用相机上的JPEG压缩硬件。但由于录制的音频一般是低[采样率](../Page/采样率.md "wikilink")、未压缩的自适应差分[PCM编码](https://zh.wikipedia.org/wiki/PCM "wikilink")，这样的影像檔案大小仍然比大小相似的[MPEG](../Page/MPEG.md "wikilink")文件差。

### DV

[DV使用类似的帧内压缩方法](https://zh.wikipedia.org/wiki/DV "wikilink")。

## 参见

  - [JPEG](../Page/JPEG.md "wikilink")
  - [MPEG](../Page/MPEG.md "wikilink")
  - [QuickTime](../Page/QuickTime.md "wikilink")

[Category:影像科技](https://zh.wikipedia.org/wiki/Category:影像科技 "wikilink") [Category:影像编解码器](https://zh.wikipedia.org/wiki/Category:影像编解码器 "wikilink") [Category:影像壓縮技術](https://zh.wikipedia.org/wiki/Category:影像壓縮技術 "wikilink")