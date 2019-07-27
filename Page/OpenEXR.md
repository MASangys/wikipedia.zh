**OpenEXR**，或简称为exr格式，是一种[开放标准的](https://zh.wikipedia.org/wiki/开放标准 "wikilink")[高动态范围](../Page/高动态范围成像.md "wikilink")[图像格式](../Page/图形文件格式比较.md "wikilink")，在[计算机图形学](../Page/计算机图形学.md "wikilink")里被广泛用于存储图像数据，但也可以存储一些后期合成处理所需的数据。OpenEXR最早由[工业光魔开发](https://zh.wikipedia.org/wiki/工业光魔 "wikilink")，并在一个类似[BSD许可证](../Page/BSD许可证.md "wikilink")的[自由软件许可证下发布](https://zh.wikipedia.org/wiki/自由软件许可证 "wikilink")，其发布的软件包里带有一些处理exr图像格式的工具。\[1\]

最早使用OpenEXR格式的电影，是[哈利·波特与魔法石](https://zh.wikipedia.org/wiki/哈利·波特与魔法石_\(电影\) "wikilink")，从那以后，OpenEXR成了[-{zh-cn:工业光魔;zh-tw:光影魔幻工業;}-主要使用的](../Page/光影魔幻工業.md "wikilink")[图像文件格式](https://zh.wikipedia.org/wiki/图像文件格式 "wikilink")，工业光魔所有正在制作的影片都用到了这个图像格式。\[2\]

OpenEXR的多级分辨率和任意数据通道存储使其非常适合用于合成，它能把高光（specular）、漫射（diffuse）、阴影、[Alpha通道](https://zh.wikipedia.org/wiki/Alpha通道 "wikilink")、[RGB](../Page/三原色光模式.md "wikilink")、[法线](../Page/法线.md "wikilink")和其他对后期合成有用的数据存储于一个文件里，如果对三维渲染出来的图像画面高光或漫射不满意，合成师可以根据导演要求在合成软件里对指定的通道进行调整。

## OpenEXR特性

可存储比常规的8位和10位图像格式更高的动态范围和颜色精度。
支持16位[浮点数](../Page/浮点数.md "wikilink")、32位浮点数和32位整数的像素颜色值。16位浮点数格式，工业光魔称之为[半浮点数](../Page/半精度浮点数.md "wikilink")，它表示的颜色数值，由一个符号位，五个指数位和十个浮点数位组成，这使其能存储超过30级[曝光的动态图像亮度范围](../Page/焦比.md "wikilink")，它和[英伟达](../Page/英伟达.md "wikilink")的[Cg语言的半浮点数类型兼容](https://zh.wikipedia.org/wiki/Cg语言 "wikilink")，并且他们最新的[GeForce
FX和](https://zh.wikipedia.org/wiki/GeForce_FX "wikilink")[Quadro
FX](../Page/Quadro_FX.md "wikilink")
3D[图形卡也内置支持exr格式](https://zh.wikipedia.org/wiki/图形卡 "wikilink")。

OpenEXR支持多种[无损和](../Page/无损数据压缩.md "wikilink")[有损图像压缩算法](../Page/有损数据压缩.md "wikilink")，一些内置的编码，在压缩带有胶片颗粒的图像时，能达到2:1的无损压缩率。

### 支持的压缩算法

OpenEXR内置三种无损压缩算法，包括两种不同的[zip压缩算法](https://zh.wikipedia.org/wiki/zip "wikilink")，对于没有很多噪点的图像，这两种zip压缩方法最有效，而PIZ压缩算法则更适合于噪点较多的图像，渲染exr格式图像时通常有以下压缩选项：

  - None: 无压缩。
    [RLE](../Page/游程编码.md "wikilink"):
    这是一种和[TGA图像格式的标准压缩算法相似的一种压缩算法](https://zh.wikipedia.org/wiki/TGA "wikilink")。
    [zip](../Page/ZIP格式.md "wikilink")（单行）: 对单行像素信息使用zip方式的压缩。
    zip（16行像素块）: 这是对16行像素块进行的zip方式压缩，对胶片噪点不多的计算机绘制图像是最有效的压缩算法。
    PIZ（[小波压缩](../Page/小波分析.md "wikilink")）:
    这是一种新的结合小波和[霍夫曼编码](../Page/霍夫曼编码.md "wikilink")的压缩算法，对噪点比较多的图像最为有效。
    PXR24（24位数据转换后再进行zip压缩）:
    这个来自皮克斯的压缩算法，先把数据转换为24位，再进行zip压缩，它对于16位和32位整数值数据是无损的，但对于32位浮点数据则有轻微损失。
    B44: 这对半浮点数数据是有损的，对32位浮点数据则不进行压缩。
    B44A: 对相同颜色的区域进行进一步压缩，是对B44的扩展，常规B44压缩则无视图像的内容。

可扩展，通过扩展exr的C++类，可以支持新的压缩编码和图像类型；新的图像属性（字符串、矢量、整数等），可添加到exr图像的文件头里，而不破坏已有软件包的兼容性。

要了解OpenEXR的完整技术信息，请参阅openexr.org网站的技术文档。\[3\]

## OpenEXR源码组件

OpenEXR发布的源码里，包括以下几个部分：

  - IlmImf，一个读写exr图像的程序库；
  - Half，一个C++类，可以像操作其他C++内置数据类型那样，操作半浮点数值；
  - Imath，一个数学程序库，支持矩阵，二维和三维变换，线性、二次和三次方程组求解等；
  - exrdisplay，一个显示exr图像的示例程序。

## 历史

OpenEXR由工业光魔于2000年开发，并于2003年公开发布。\[4\]

2012年6月18日，第一个公开测试版OpenEXR
2.0发布，引入了支持，并支持把多个独立但相关的图像存储在单个文件里，并且可以单独读取各部分。\[5\]

2013年4月9日，工业光魔和[-{zh-tw:Weta數位;zh-cn:维塔数码;zh-hk:維塔數碼;}-一起发布了OpenEXR](../Page/维塔数码.md "wikilink")
2.0版。除了测试版引入的新功能外，OpenEXR
2.0还引入了名字空间支持，以避免不同软件包不同文件版本之间的冲突。有多家公司对这个版本的OpenEXR做出了贡献，[皮克斯在](https://zh.wikipedia.org/wiki/皮克斯 "wikilink")[微软公共许可证下贡献出了他们的DtexToExr转换工具代码](../Page/共享源代码.md "wikilink")，排除了可能的专利争议；[Autodesk](../Page/Autodesk.md "wikilink")为实时后期制作流程提供了优化。\[6\]

## 参考资料

## 外部链接

  - [OpenEXR.com](http://www.openexr.com/)
  - [OpenEXR文档](http://www.openexr.com/documentation.html)
  - [OpenEXR图像示例](http://www.openexr.com/samples.html)
  - [使用Python读写OpenEXR](http://www.excamera.com/sphinx/articles-openexr.html)
  - [exrtools incl. exrtoppm exe](http://scanline.ca/exrtools/)
  - [OpenEXR技术介绍（PDF）](https://web.archive.org/web/20110717152538/http://www.openexr.com/TechnicalIntroduction.pdf)
  - [读写OpenEXR图像（PDF）](https://web.archive.org/web/20070318004646/http://www.openexr.com/ReadingAndWritingImageFiles.pdf)
  - [exrtoppm exe/src for
    Windows](https://web.archive.org/web/20130210015533/http://cybertiggyr.com/gene/exrtoppm/)

[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")
[Category:自由圖像軟件](https://zh.wikipedia.org/wiki/Category:自由圖像軟件 "wikilink")

1.
2.
3.
4.
5.
6.