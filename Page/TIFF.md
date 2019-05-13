**标签图像文件格式**（**Tagged Image File
Format**，简写为**TIFF**）是一种灵活的[位图格式](../Page/栅格图像.md "wikilink")，主要用来存储包括照片和艺术图在内的图像。它最初由[Aldus公司与](../Page/Aldus.md "wikilink")[微软公司一起为](../Page/微软公司.md "wikilink")[PostScript打印开发](../Page/PostScript.md "wikilink")。TIFF与[JPEG和](../Page/JPEG.md "wikilink")[PNG一起成为流行的高位彩色图像格式](../Page/PNG.md "wikilink")。TIFF格式在业界得到了广泛的支持，如[Adobe公司的](../Page/Adobe.md "wikilink")[Photoshop](../Page/Photoshop.md "wikilink")、The
GIMP Team的[GIMP](../Page/GIMP.md "wikilink")、[Ulead
PhotoImpact和](../Page/Ulead_PhotoImpact.md "wikilink")[Paint Shop
Pro等图像处理应用](../Page/Paint_Shop_Pro.md "wikilink")、[QuarkXPress和](../Page/QuarkXPress.md "wikilink")[Adobe
InDesign这样的桌面印刷和页面排版应用](../Page/Adobe_InDesign.md "wikilink")，[扫描](../Page/扫描.md "wikilink")、[传真](../Page/传真.md "wikilink")、[文字处理](../Page/文字处理.md "wikilink")、[光学字符识别和其它一些应用等都支持这种格式](../Page/光学字符识别.md "wikilink")。如今Adobe公司从Aldus获得了印刷应用程序-[PageMaker之后控制著TIFF的规范](../Page/PageMaker.md "wikilink")。

术语“Tagged Image File Format”或者“Tag Image File
Format”在一些早期的TIFF规范中是作为副标题存在的。目前的TIFF规范[TIFF
6.0不再使用这些术语](../Page/TIFF_6.0.md "wikilink")，现在的名字仅仅叫做“TIFF”。

TIFF最初的设计目的是为了1980年代中期桌面扫描仪厂商达成一个公用的扫描图像文件格式，而不是每个厂商使用自己专有的格式。在刚开始的时候，TIFF只是一个二值图像格式，因为当时的桌面扫描仪只能处理这种格式。随着扫描仪的功能愈来愈强大，并且桌面计算机的磁盘空间越来越大，TIFF逐渐支持灰阶图像和彩色图像。

## 灵活的选项

TIFF是一个灵活适应性强的文件格式。通过在文件標头中使用“标签”，它能够在一个文件中处理多幅图像和数据。标签能够标明图像的如图像大小这样的基本几何尺寸，或者定义图像数据是如何排列的，或者是否使用了各种各样的[图像压缩选项](../Page/图像压缩.md "wikilink")。例如，TIFF可以包含JPEG和[行程长度编码压缩的图像](../Page/RLE.md "wikilink")。TIFF文件也可以包含基于[矢量的裁剪区域](../Page/矢量.md "wikilink")（剪切或者构成主体图像的轮廓）。使用[无损格式存储图像的能力使TIFF文件成为图像存档的有效方法](../Page/无损数据压缩.md "wikilink")。与JPEG不同，TIFF文件可以编辑然后重新存储而不会有压缩损失。其它的一些TIFF文件选项包括多层或者多页。

尽管现今它是一种被广泛接受的标准格式，当TIFF最初出现的时候，它的可扩展性带来了很多兼容问题。程序员可以随意定义新的标签和选项，但是并不是所有的实现程序都能支持这些所有这些创造出的标签。结果就是，它的一个最小特性集成为了“这个”TIFF，即使是在今天大量的TIFF文件和读取它们的代码都是基于简单的32位非压缩图像。

TIFF有一个使用[LZW压缩的选项](../Page/LZW.md "wikilink")，这是一种减小文件大小的无损技术，但是这项技术在不同的司法权限内为几个专利所涵盖。到了2005年，除了一个之外这些专利都已经到期，其中包括[Unisys所拥有的广为人知又有很多争议的专利](../Page/Unisys.md "wikilink")。另外一个著名的专利是[IBM拥有的在](../Page/IBM.md "wikilink")2006年8月11日到期的专利，IBM也没有要执行它的意思（who
has shown no interest to date in enforcing it）。

每个TIFF文件都是从指示[字节序的两个](../Page/字节序.md "wikilink")[字节开始的](../Page/字节.md "wikilink")。“II”表示小端序、“MM”表示大端序。后面的两个字节表示数字[42](../Page/42.md "wikilink")。数字42是“为了它[深远的哲学意味](../Page/生命、宇宙以及任何事情的终极答案.md "wikilink")”而选择的。42的读法取决于头两个字节所表示的字节顺序。整个文件根据所指出的字节顺序进行读取。

字节顺序在Apple
Macintosh和微软视窗程序之间可能产生兼容性的问题，它们通常为TIFF文件使用不同的字节顺序。一些程序提供了保存为Mac或者是Windows字节顺序的选项以使文件能在交叉平台使用。

## 文档图像中的TIFF

TIFF格式是文档图像和文档管理系统中的标准格式。在这种环境中它通常使用支持黑白（也称为二值或者单色）图像的[CCITT](../Page/CCITT.md "wikilink")
Group IV
2D压缩。在大量生产的环境中，文档通常扫描成黑白图像（而不是彩色或者灰阶图像）以节约存储空间。A4大小200[dpi](../Page/dpi.md "wikilink")（每英寸点数分辨率）扫描结果平均大小是30KB，而300dpi的扫描结果是50KB。300dpi比200dpi更加常用。

由于TIFF格式支持多页，多页文件能够存在一个TIFF文件中而不是让每个扫描页存在一系列的文件中。

## 参见

  - [图形文件格式比较](../Page/图形文件格式比较.md "wikilink")
  - [Imaging for Windows](../Page/Imaging_for_Windows.md "wikilink")
  - [CPC View](../Page/CPC_View.md "wikilink")
  - [Windows相片圖庫](../Page/Windows相片圖庫.md "wikilink")
  - [GeoTIFF](../Page/GeoTIFF.md "wikilink")

## 外部链接

  - [Adobe TIFF Resources
    page](https://web.archive.org/web/20060615022002/http://partners.adobe.com/public/developer/tiff/index.html)：Adobe公司TIFF规范和主要TIFF资源链接
  - [LibTIFF Home
    Page](https://web.archive.org/web/20040916044904/http://www.remotesensing.org/libtiff/)：读写TIFF文件最常用的库
  - [TIFF File Format FAQ and TIFF Tag
    Reference](http://www.awaresystems.be/imaging/tiff.html)：所有想知道但却不敢问的与TIFF文件格式有关的内容
  - [The BigTIFF File Format
    Proposal](http://www.awaresystems.be/imaging/tiff/bigtiff.html)：超过4GB边界
  - [TIFF
    description](http://www.digitalpreservation.gov/formats/fdd/fdd000022.shtml)：Digital
    Preservation（国会图书馆）
  - [TIFF
    Revision 4.0](http://palimpsest.stanford.edu/bytopic/imaging/std/tiff4.html)：HTML格式的TIFF规范4.0。
  - [TIFF
    Revision 5.0](http://palimpsest.stanford.edu/bytopic/imaging/std/tiff5.html)：HTML格式的TIFF规范5.0。
  - [TIFF
    Revision 6.0](https://www.webcitation.org/68fwWWiVz?url=http://partners.adobe.com/public/developer/en/tiff/TIFF6.pdf)：PDF的TIFF规范6.0。

[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")