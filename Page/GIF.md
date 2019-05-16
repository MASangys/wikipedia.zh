**图像互换格式**（GIF，Graphics Interchange
Format）是一种[位图](../Page/位图.md "wikilink")[图形文件格式](https://zh.wikipedia.org/wiki/图形文件格式 "wikilink")，以8位色（即256种颜色）重现[真彩色的图像](../Page/真彩色.md "wikilink")。它实际上是一种[压缩文档](../Page/数据压缩.md "wikilink")，采用[LZW压缩算法进行编码](../Page/LZW.md "wikilink")，有效地减少了图像文件在网络上传输的时间。它是目前[全球資訊網广泛应用的](https://zh.wikipedia.org/wiki/全球資訊網 "wikilink")[网络传输图像格式之一](https://zh.wikipedia.org/wiki/网络传输 "wikilink")。

## 歷史

图像互换格式格式自1987年由[CompuServe公司引入后](../Page/CompuServe.md "wikilink")，因其体积小而成像相对清晰，特别适合于初期慢速的[互联网](../Page/互联网.md "wikilink")，而从此大受欢迎。它采用[无损压缩技术](https://zh.wikipedia.org/wiki/无损压缩 "wikilink")，只要图像不多于256色，则可既减少文件的大小，又保持成像的质量。（当然，现在也存在一些*hack*技术，在一定的条件下克服256色的限制）然而，256色的限制大大局限了GIF文件的应用范围，如彩色相机等。（当然采用无损压缩技术的彩色相机照片亦不适合通过网络传输。）另一方面，在高彩图片上有着不俗表现的[JPG格式却在简单的折线上效果不如人意](https://zh.wikipedia.org/wiki/JPG "wikilink")。因此图像互换格式格式普遍适用于图表，按钮等等只需少量颜色的图像（如黑白照片）。

圖像互換格式格式的原始版本叫做**87a**。1989年，CompuServe發布了一個名為**89a**的增強版本，在这个版本中，为图像互换格式文档扩充了[图形控制区块](https://zh.wikipedia.org/wiki/图形控制区块 "wikilink")、[备注](https://zh.wikipedia.org/wiki/备注 "wikilink")、[说明](https://zh.wikipedia.org/wiki/说明 "wikilink")、[应用程序接口等四个区块](../Page/应用程序接口.md "wikilink")，并提供了对[透明色和](https://zh.wikipedia.org/wiki/透明色 "wikilink")[多帧动画的支持](https://zh.wikipedia.org/wiki/多帧动画 "wikilink")。現在我們一般所說的GIF動畫都是指89a的格式\[1\]。

1995年9月，[Netscape
Navigator](https://zh.wikipedia.org/wiki/Netscape_Navigator "wikilink")
2.0支援讓動畫GIF無限循環的功能\[2\]。

2015年5月，Facebook添加了GIF支持，尽管他们最初不支持在他们的网站上使用GIF。\[3\]\[4\]

## 專利

在早期，图像互换格式所用的LZW压缩算法是[CompuServe所开发的一种免费算法](../Page/CompuServe.md "wikilink")。然而令很多软件开发商感到意外的是，图像互换格式文件所采用的压缩算法忽然成了[Unisys公司的](https://zh.wikipedia.org/wiki/Unisys "wikilink")[专利](../Page/专利.md "wikilink")。据[Unisys公司称](https://zh.wikipedia.org/wiki/Unisys "wikilink")，他们已注册了[LZW算法中的](https://zh.wikipedia.org/wiki/藍波-立夫-衛曲編碼法 "wikilink")**W**部分。如果要开发生成（或显示）图像互换格式文件的程序，则需向该公司支付版税。在專利失效前曾引起部份開放原始碼社群發起「Burn
all
GIFs」的運動抵制使用图像互换格式格式。因此，人们开始寻求一种新技术，以减少开发成本。[PNG](../Page/PNG.md "wikilink")（Portable
Network
Graphics，便携网络图形）标准就在这个背景下应运而生了。它一方面满足了市场对更少的法规限制的需要，另一方面也带来了更少的技术上的限制，如颜色的数量等。

在2003年6月20日，LZW算法在美国的专利权已到期而失效。在[欧洲](../Page/欧洲.md "wikilink")、[日本及](../Page/日本.md "wikilink")[加拿大的专利权亦已分别在](../Page/加拿大.md "wikilink")2004年的6月18日、6月20日和7月7日到期失效。尽管如此，PNG文件格式凭着其技术上的优势，已然跻身于网络上第三广泛应用格式。与图像互换格式相关的专利将于2006年8月11日过期。[1](http://www.gnu.org/philosophy/gif.html)

## 特性

[Zt2005.jpg](https://zh.wikipedia.org/wiki/File:Zt2005.jpg "fig:Zt2005.jpg")
[Zt2012.gif](https://zh.wikipedia.org/wiki/File:Zt2012.gif "fig:Zt2012.gif")

1.  优秀的压缩算法使其在一定程度上保证图像质量的同时将体积变得很小。
2.  可插入多帧，从而实现[动画效果](../Page/动画.md "wikilink")。
3.  可设置透明色以产生对象浮现于背景之上的效果。
4.  由于采用了8位元压缩，最多-{只}-能处理256种颜色，故不宜应用于[真彩色圖片](../Page/真彩色.md "wikilink")。

## 技术简介

图像互换格式主要是为数据流而设计的一种传输格式，而不是作为文件的存储格式。它具有顺序组织形式而不是随机组织形式。

图像互换格式有五个主要部分以固定顺序出现，所有部分均由一个或多个區块（block）组成。每个块由第一个字节中的标识码或特征码标识。这些部分的顺序为：头块、逻辑屏幕描述块、可选的“全局”色彩表块（调色板）、各图像数据块（或专用的块）以及尾块（结束码）。下面是这些部分的内容：

1.  起头為一个區块，它识别数据流为图像互换格式，并指示如何解释后面的数据所需的最早版本的图像互换格式解码程序（87a或89a）。
2.  逻辑程序描述块定义了：所有后面图像的图像平面的大小、纵横尺寸比以及色彩深度（它类似于产生图像的监视器屏幕）。它还指明后面跟随的是否为“全局”色彩表。
3.  全局色彩表（如果存在）构成一个24位RGB元组的调色板（每种底色为一个字节）。如果后面的像没有其自己的“局部”调色板，那么全局色表就是缺省调色板。
4.  后续数据作为“图形”或“专用”块出现。图形块典型地包含一个或多个位图图像，也可能是覆盖的文本。专用块或者包含一个专用应用程序码，或者包含一句不可打印的注释。
5.  最后的尾块指示值为3B（十六进制）的一个字节，表示数据流已结束。

注意：文件中的图像互换格式数据流可能根本就不包含任何位图数据，这时，它只是要传输全局色彩表，作为没有自己调色板的后续数据流的缺省调色板。

## 参考资料

## 外部链接

  - [The GIFLIB project](http://giflib.sourceforge.net/)
  - [spec-gif89a.txt](http://www.w3.org/Graphics/GIF/spec-gif89a.txt)
    GIF 89a specification on [万维网联盟](../Page/万维网联盟.md "wikilink")
  - [GIF 89a specification reformatted into
    HTML](https://web.archive.org/web/20160304075538/http://qalle.net/gif89a.php)
  - [LZW and GIF
    explained](http://www.cis.udel.edu/%7Eamer/CISC651/lzw.and.gif.explained.html)
  - [Animated GIFs](http://video.pbs.org/video/2207348428): a 6-minute
    documentary produced by

[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")
[Category:公開格式](https://zh.wikipedia.org/wiki/Category:公開格式 "wikilink")

1.
2.
3.
4.