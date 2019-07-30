**ICER**是[美国国家航空航天局](../Page/美国国家航空航天局.md "wikilink")（NASA）[火星车上使用的一种基于](https://zh.wikipedia.org/wiki/火星车 "wikilink")[小波分析](../Page/小波分析.md "wikilink")的[图像压缩](../Page/图像压缩.md "wikilink")文件格式，兼备[有损压缩和](https://zh.wikipedia.org/wiki/有损压缩 "wikilink")[无损压缩模式](../Page/无损数据压缩.md "wikilink")。

[火星](../Page/火星.md "wikilink")探测器[勇气号](../Page/勇气号火星探测器.md "wikilink")（MER-A）和[机遇号](https://zh.wikipedia.org/wiki/机遇号 "wikilink")（MER-B）都使用了ICER。探测器上的图像压缩利用了此算法以充分利用下行链路资源。[火星科学实验室](../Page/火星科学实验室.md "wikilink")支持将ICER用于其，不过其他相机都使用了其他文件格式。

美国许多火星探测器都使用ICER进行图像压缩。也有些火星探测器使用修改过的低复杂度无损压缩（Low Complexity Lossless Compression，缩写LOCO）软件，它是ICER的一个无损子模式。

ICER是一种基于小波的图像压缩器，允许在压缩量（像素所占位元）与图像质量降低（失真率）之间进行适当折衷。就选择小波运算而言，ICER与[JPEG 2000有一些相似之处](../Page/JPEG_2000.md "wikilink")。

ICER的发展受到了实现高压缩表现的愿望推动，同时要满足[深空应用的特殊需求](../Page/外层空间.md "wikilink")。

## 实际考量

为控制ICER中的图像质量与压缩量，用户需指定一个字节配额（用于存储已压缩图像的标称字节数）和一个质量水平参数（实质是一个质量目标）。

  - ICER会尝试用尽可能少的已压缩字节来生成符合质量水平的已压缩图像。
  - ICER会在质量水平或字节配额满足要求时停止生成压缩字节，以先达到者为准。

## 与JPEG 2000压缩器设计的共同点

## ICER与JPEG 2000的差异

JPEG2000与ICER有多处重要的内部差异

## ICER与ICER 3D的选择

## ICER 3D

## 参考资料

## 外部链接

  - [The ICER Progressive Wavelet Image Compressor](http://ipnpr.jpl.nasa.gov/progress_report/42-155/155J.pdf)

  - [Lossy Image Compression from Mars Rovers](http://tmo.jpl.nasa.gov/progress_report/42-168/168D.pdf)

  - [ICER 3D](http://tmo.jpl.nasa.gov/progress_report/42-164/164A.pdf)

  -
[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink") [Category:ISO標準](https://zh.wikipedia.org/wiki/Category:ISO標準 "wikilink") [Category:小波分析](https://zh.wikipedia.org/wiki/Category:小波分析 "wikilink") [Category:航天技术](https://zh.wikipedia.org/wiki/Category:航天技术 "wikilink")