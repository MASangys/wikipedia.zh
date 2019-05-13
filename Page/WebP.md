**WebP**（發音：*weppy*\[1\]\[2\]）是一種同時提供了[有損壓縮與](../Page/有損壓縮.md "wikilink")[無損壓縮](../Page/無損壓縮.md "wikilink")（可逆壓縮）的圖片檔案格式\[3\]，衍生自影像編碼格式[VP8](../Page/VP8.md "wikilink")\[4\]，被認為是WebM多媒體格式的姊妹項目，是由[Google在購買](../Page/Google.md "wikilink")[On2
Technologies後發展出來](../Page/On2_Technologies.md "wikilink")\[5\]，以[BSD授權條款釋出](../Page/BSD授權條款.md "wikilink")。\[6\]

WebP最初在2010年釋出，目標是減少檔案大小，但達到和[JPEG格式相同的圖片品質](../Page/JPEG.md "wikilink")，希望能夠減少圖片檔在網路上的傳送時間。\[7\]2011年11月8日，Google開始讓WebP支援無損壓縮和透明色（alpha通道）的功能，而在2012年8月16日的參考實做libwebp
0.2.0中正式支援\[8\]\[9\]。根據Google較早的測試，WebP的無損壓縮比網路上找到的PNG檔少了45％的檔案大小，即使這些PNG檔在使用[pngcrush和](../Page/pngcrush.md "wikilink")[PNGOUT處理過](../Page/PNGOUT.md "wikilink")，WebP還是可以減少28％的檔案大小\[10\]。

WebP支援的像素最大數量是16383x16383。有損壓縮的WebP僅支援8-bit的YUV
4:2:0格式。而無損壓縮（可逆壓縮）的WebP支援VP8L編碼與8-bit之ARGB色彩空間。又無論是有損或無損壓縮皆支援Alpha透明通道、ICC色彩配置、XMP詮釋資料。

WebP有靜態與動態兩種模式。動態WebP（Animated WebP）支援有損與無損壓縮、ICC色彩配置、XMP詮釋資料、Alpha透明通道。

## 技術

| 位       | 内容                               |
| ------- | -------------------------------- |
| ` 0- 3` | R                                |
| ` 4- 7` | *length+8*                       |
| ` 8-11` | W                                |
| `12-15` | V                                |
| `16-19` | *length* <small>(padded)</small> |
| `20- …` | *VP8关键帧*                         |
| *pad*   | ? <small>(even length)</small>   |

简单WebP

WebP的有损压缩算法是基于[VP8视频格式的](../Page/VP8.md "wikilink")\[11\]，并以[RIFF作为](../Page/資源交換檔案格式.md "wikilink")[容器格式](../Page/视频文件格式.md "wikilink")。\[12\]
因此，它是一个具有八位[色彩深度和以](../Page/色彩深度.md "wikilink")1:2的比例进行[色度子采样的](../Page/色度抽样.md "wikilink")[亮度-色度模型](../Page/YUV.md "wikilink")（[YCbCr](../Page/YCbCr.md "wikilink")
4:2:0）的基于块的转换方案。\[13\] 不含内容的情况下，RIFF容器要求只需20字节的开销，依然能保存额外的
[元数据](../Page/元数据.md "wikilink")(metadata)。\[14\]
WebP图像的边长限制为16383像素。\[15\]

WebP是基于块预测的。每个块都是根据它上面三个块的值和其左边一个块的值进行预测的（块解码以光栅扫描顺序完成：从左到右，从上到下）。块预测有四种基本模式：水平、垂直、DC（单色）和TrueMotion。利用[离散余弦变换或](../Page/离散余弦变换.md "wikilink")[沃尔什-阿达玛转换将预测错误的数据和未预测块压缩在](../Page/阿达马变换.md "wikilink")4×4像素子块中。这两种转换都是使用完成的，以避免舍入误差。输出使用[熵编码进行压缩](../Page/熵編碼法.md "wikilink")。\[16\]
WebP也明确支持并行解码。\[17\]

参考实现包含一个Linux[命令行程序的转换器](../Page/命令行界面.md "wikilink")，以及以及用于解码的[库](../Page/函式庫.md "wikilink")，与WebM相同。开源社区很快设法将转换器移植到其他平台，例如Windows。\[18\]

WebP的无损压缩采用先进的技术，例如用于不同颜色通道的专用熵代码，利用反向参考距离的2D位置和最近使用的颜色的颜色缓存。这补充了字典编码、[霍夫曼编码和颜色索引变换等基本技术](../Page/霍夫曼编码.md "wikilink")。\[19\]

## 支援

目前網頁瀏覽器當中，[Google
Chrome和](../Page/Google_Chrome.md "wikilink")[Opera原生支援靜態與動態的WebP格式](../Page/Opera.md "wikilink")\[20\]\[21\]，而Google
Chrome自12版開始支援WebP的漸進式解碼功能\[22\]。此外所有可以原生播放[WebM影像的瀏覽器](../Page/WebM.md "wikilink")，也可以透過javascript來顯示WebP影像\[23\]\[24\]。又Pale
Moon 26+瀏覽器僅支援靜態的WebP圖像。Firefox瀏覽器亦在65.0版本支援WebP圖像。\[25\]

網頁瀏覽器[GNOME
Web和](../Page/GNOME_Web.md "wikilink")[KDE圖片瀏覽器](../Page/KDE.md "wikilink")[Gwenview也支援Webp](../Page/Gwenview.md "wikilink")。

圖像軟體當中，[Picasa](../Page/Picasa.md "wikilink")（從3.9版本起）、[PhotoLine](../Page/PhotoLine.md "wikilink")、[Pixelmator](../Page/Pixelmator.md "wikilink")、[ImageMagick](../Page/ImageMagick.md "wikilink")、[XnView](../Page/XnView.md "wikilink")、[IrfanView](../Page/IrfanView.md "wikilink")、[GDAL](../Page/GDAL.md "wikilink")、Aseprite和[GIMP](../Page/GIMP.md "wikilink")（2.10起）皆原生支援WebP格式。

蘋果在macOS Sierra及iOS 10的早期beta版本中加入了WebP支援。\[26\]而在2016年9月7日釋出的iOS
10和macOS Sierra GM種子版本中卻移除了WebP的支援。

## 評論

[x264的開發者之一](../Page/x264.md "wikilink")：Jason
Garrett-Glaser，針對WebP做出了幾點評論\[27\]，根據和其他編碼器（JPEG、x264、[Theora](../Page/Theora.md "wikilink")）測試的結果，他認為WebP的影像品質是最差的，多數是在模糊度方面。他也評論Google應該等到WebP可以超越JPEG之後再發佈。不過在2011年4月20日，他提到新的WebP編碼器表現的非常好，超越JPEG指日可待。

## 相關條目

  - [MNG](../Page/Multiple-image_Network_Graphics.md "wikilink")
  - [APNG](../Page/APNG.md "wikilink")
  - [WebM](../Page/WebM.md "wikilink")
  - [VP8](../Page/VP8.md "wikilink")
  - [JPEG 2000](../Page/JPEG_2000.md "wikilink")
  - [JPEG XR](../Page/JPEG_XR.md "wikilink")
  - [BPG](../Page/Better_Portable_Graphics.md "wikilink")

## 參考文獻

## 外部連結

  -
  - [IMG2WebP.net](https://web.archive.org/web/20160316050430/http://img2webp.net/)：線上WebP圖像轉換工具

[Category:有损压缩算法](https://zh.wikipedia.org/wiki/Category:有损压缩算法 "wikilink")
[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")
[Category:影像科技](https://zh.wikipedia.org/wiki/Category:影像科技 "wikilink")
[Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink")
[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")

1.  [WebP Home](http://code.google.com/speed/webp/): "**Did you know?**
    WebP is pronounced 'weppy'. /（wĕpˈē）/"

2.

3.

4.

5.

6.

7.

8.  [WebP v0.2.0 decoder and encoder source
    tree](http://code.google.com/p/webp/downloads/detail?name=libwebp-0.2.0.tar.gz)


9.  [Google Developers Blog: Lossless and Transparency Modes in
    WebP](http://googledevelopers.blogspot.hu/2012/08/lossless-and-transparency-modes-in-webp.html)

10. [Google Code blog: Lossless and transparency encoding in
    WebP](http://googlecode.blogspot.com/2011/11/lossless-and-transparency-encoding-in.html)

11.

12.
13.

14.
15.
16.
17.
18.

19.
20.

21.

22.

23.

24.

25.

26.

27.