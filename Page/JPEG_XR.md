> 本文内容由[JPEG XR](https://zh.wikipedia.org/wiki/JPEG_XR)转换而来。


**JPEG XR**（旧称**HD Photo**及**Windows Media Photo**）是一种[连续色调静止图像压缩算法和文件格式](https://zh.wikipedia.org/wiki/连续色调 "wikilink")，由[Microsoft开发](https://zh.wikipedia.org/wiki/Microsoft "wikilink")，属于[Windows Media家族的一部分](../Page/Windows_Media.md "wikilink")。它支持[有损数据压缩](../Page/有损数据压缩.md "wikilink")以及[无损数据压缩](../Page/无损数据压缩.md "wikilink")，并且是微软的[XPS文档的首选图像格式](https://zh.wikipedia.org/wiki/XPS "wikilink")。目前支持的软件包括[.NET Framework](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")（3.0 or newer），[Windows Vista](../Page/Windows_Vista.md "wikilink")/[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")、[Internet Explorer 9](../Page/Internet_Explorer_9.md "wikilink")，[Flashplayer 11等](https://zh.wikipedia.org/wiki/Flash_player "wikilink")。

## 描述

JPEG XR是一款可以实现高动态范围图像编码，而且在压缩与解压时只需要整数运算的图像编解码器。它支持单色、[RGB](https://zh.wikipedia.org/wiki/RGB "wikilink")、[CMYK](https://zh.wikipedia.org/wiki/CMYK "wikilink")、甚至支持16位无符号整数或者32位定点或者浮点数表示的多通道彩色，并且它还支持RGBE [Radiance](https://zh.wikipedia.org/wiki/Radiance_\(software\) "wikilink")。它可以选择嵌入[ICC彩色profile以实现不同设备上的色彩一致性](https://zh.wikipedia.org/wiki/ICC "wikilink")。[阿尔法通道可以表示透明](https://zh.wikipedia.org/wiki/阿尔法通道 "wikilink")，同时支持[EXIF](../Page/EXIF.md "wikilink")、[XMP](../Page/XMP.md "wikilink")[元数据](../Page/元数据.md "wikilink")格式。这种格式还支持在一个文件中包含多幅图像。支持只对图像的进行部分解码，对于一些特定的操作如裁剪、downsampling、水平竖直翻转或者cardinal旋转都无需对整幅图像进行解码。

所有的颜色表示都转换成一种内部的色彩表示，这个变换过程是完全可逆的，因此使用合适的不同量化器可以实现有损或者无损数据压缩。

## 压缩算法

JPEG XR使用一个可逆的[色彩空间变换](https://zh.wikipedia.org/wiki/色彩空间 "wikilink")、一个可逆的重叠[双正交变换以及一个非算数](https://zh.wikipedia.org/wiki/双正交变换 "wikilink")[熵编码机制](https://zh.wikipedia.org/wiki/熵编码 "wikilink")，这样可以非常高效地保存高频率的图像数据，使得这个算法能够在高[压缩率的情况下保持很好的图像质量](https://zh.wikipedia.org/wiki/压缩率 "wikilink")。JPEG XR按照16x16的块处理图像。

JPEG XR支持不同的颜色格式以及多种定点与浮点数字表示，这样可以使用多种压缩配置。为了保证不同在不同设备上的兼容性，它分为基本与高级两种格式。对于数字照片来说基本格式已经足够了，但是像[三维渲染或者高级图像处理的场合则需要使用高级格式](https://zh.wikipedia.org/wiki/三维渲染 "wikilink")。

微软公司宣称JPEG XR“使用与[JPEG](../Page/JPEG.md "wikilink")算法相当的计算量与内存消耗可以得到明显的与[JPEG 2000相当的图像质量](../Page/JPEG_2000.md "wikilink")。在有损压缩的情况下可以得到明显比JPEG好的质量并且文件大小减小一半

## 容器格式

JPEG XR使用类似于[TIFF](../Page/TIFF.md "wikilink")的文件容器在Image File Directory标签表中保存图像数据。JPEG XR文件包含用IFD标签表示的图像数据、可选的阿尔法通道数据、JPEG XR元数据、可选的保存为[XML](../Page/XML.md "wikilink")的XMP元数据以及可选的[EXIF](../Page/EXIF.md "wikilink")元数据。图像数据是相邻的自包含的大块数据。可选的[阿尔法通道压缩成一个单独的图像记录](https://zh.wikipedia.org/wiki/阿尔法通道 "wikilink")，这样在不支持透明的应用程序中可以独立于透明数据对图像数据进行解码。

由于是类TIFF的格式，这种格式也有TIFF格式的缺点，如4GB文件大小的限制。根据\[1\]的描述，将来的版本将会解决这个问题。

## 许可

微软公司拥有JPEG XR技术的[专利](../Page/专利.md "wikilink")，但微软允许任何人实现JPEG XR的编解码，并承诺不会对其中侵犯的任何专利进行起诉\[2\]。此外微软公司向外界提供一个附带授权协议的“HD Photo Device Porting Kit 1.0”以鼓励人们使用这种产品，但微软禁止将此工具包用于任何使用强[copyleft的开源产品中](https://zh.wikipedia.org/wiki/copyleft "wikilink")\[3\]，因此GPL等许可的软件无法使用该工具包而必须采用其他的JPEG XR实现。

## 引用

<references />

## 参见

  - [圖形文件格式比較](https://zh.wikipedia.org/wiki/圖形文件格式比較 "wikilink")
  - [JPEG 2000](../Page/JPEG_2000.md "wikilink")
  - [TIFF](../Page/TIFF.md "wikilink")
  - [PNG](../Page/PNG.md "wikilink")
  - [Windows Vista新功能](https://zh.wikipedia.org/wiki/Windows_Vista#新特性 "wikilink")

## 外部链接

  - [HD Photo Specification](http://www.microsoft.com/whdc/xps/wmphotodwn.mspx)（仅仅定义了container的格式与API，没有定义图像格式规范）
  - [Windows Media Photo comparison with modern JPEG-2000 implementations](http://www.compression.ru/video/codec_comparison/wmp_codecs_comparison_en.html)（9 JPEG-2000 codecs was compared with WMP）
  - [Microsoft shows off JPEG rival](https://archive.is/20130102084920/http://news.com.com/2100-1025_3-6076650.html)，CNET News, 24 May 2006
  - [Vista to give HD Photo format more exposure](https://archive.is/20130102104645/http://news.com.com/2100-1045_3-6153730.html)，CNET News, 26 January 2007
  - [Bill Crow's Windows Media Photo Blog](http://blogs.msdn.com/billcrow/)解释使用许可、技术细节以及提供了编解码器的下载。

[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")

1.  {{ cite web | url=<http://www.microsoft.com/whdc/xps/wmphoto.mspx> | title=Windows Media Photo Specification | accessdate=2006-06-29 }}
2.
3.