**便携式网络图形**（，**PNG**）是一种[无损压缩的](https://zh.wikipedia.org/wiki/无损压缩 "wikilink")[位图图形格式](../Page/位图.md "wikilink")，支持索引、[灰度](https://zh.wikipedia.org/wiki/灰度 "wikilink")、[RGB三种颜色方案以及](https://zh.wikipedia.org/wiki/RGB "wikilink")[Alpha通道等特性](https://zh.wikipedia.org/wiki/Alpha通道 "wikilink")。PNG的开发目标是改善并取代[GIF作为适合网络传输的格式而不需专利许可](../Page/GIF.md "wikilink")，所以被广泛应用于[互联网及其他方面上](../Page/互联网.md "wikilink")。

PNG另一个非正式的名称来源为[递归缩写](../Page/递归缩写.md "wikilink")：“**P**NG is **N**ot
**G**IF”。

PNG圖片大多數都使用作为扩展名，其[互联网媒体类型为](../Page/互联网媒体类型.md "wikilink")`image/png`。\[1\]PNG于1997年3月作为知识性RFC
2083发布，于2004年作为ISO/IEC标准发布。

## 特性

  - 支持256色[调色板技术以产生小体积文件](https://zh.wikipedia.org/wiki/调色板技术 "wikilink")
  - 最高支持24位[真彩色图像以及](../Page/真彩色.md "wikilink")8位[灰度图像](../Page/灰度图像.md "wikilink")。
  - 支持[Alpha通道的透明](https://zh.wikipedia.org/wiki/Alpha通道 "wikilink")/半透明特性。
  - 支持图像亮度的[Gamma校准信息](https://zh.wikipedia.org/wiki/Gamma校准 "wikilink")。
  - 支持存储附加文本信息，以保留图像名称、作者、[版权](https://zh.wikipedia.org/wiki/版权 "wikilink")、创作时间、注释等信息。
  - 使用无损压缩。
  - 渐近显示和流式读写，适合在[网络传输中快速显示预览效果后再展示全貌](https://zh.wikipedia.org/wiki/网络 "wikilink")。
  - 使用[CRC防止文件出错](https://zh.wikipedia.org/wiki/循环冗余校验 "wikilink")。
  - 最新的PNG标准允许在一个文件内存储多幅图像。

## 版本及历史

1995年早期，[Unisys公司根据它在GIF格式中使用的](https://zh.wikipedia.org/wiki/Unisys "wikilink")[LZW](../Page/LZW.md "wikilink")[数据压缩算法的](../Page/数据压缩.md "wikilink")[软件](../Page/软件.md "wikilink")[专利](../Page/专利.md "wikilink")（[美国
第4558302号](http://worldwide.espacenet.com/publicationDetails/biblio?CC=US&NR=4558302&KC=&FT=E&locale=en_EP)）开始[商业收费](../Page/商业.md "wikilink")。为避免专利影响，用于表现单张图像的PNG、用于表现动画的[Multiple-image
Network
Graphics图形文件格式被同时创建出来](https://zh.wikipedia.org/wiki/MNG "wikilink")。1999年8月，Unisys公司进一步中止了对[自由软件和非商用软件开发者的GIF专利免费许可](../Page/自由软件.md "wikilink")，从而使PNG格式获得了更多的关注。

在PNG传播过程中，很多[网络浏览器经过很长时间才开始完全支持PNG格式](https://zh.wikipedia.org/wiki/网络浏览器 "wikilink")；如[Microsoft
Windows預設的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Internet
Explorer浏览器一直到](../Page/Internet_Explorer.md "wikilink")7.0版才支持PNG格式中的半透明效果，較早期的版本（如6.0
SP1）需要下載Hotfix \[2\]或由網站提供額外的Script去支援。\[3\]这造成PNG格式并没有得到广泛的认知。

  - PNG的1.0版本规范于1996年7月1日发布，后来被称为RFC
    2083标准，并在1996年10月1日成为[W3C建议](https://zh.wikipedia.org/wiki/W3C "wikilink")。
  - PNG的1.1版本进行了部分小幅修改并增加了三个新的数据块定义，于1998年12月31日发布。
  - PNG的1.2版本增加了另外一个数据块，于1999年8月11日发布。
  - PNG现行版本是国际标准（[ISO](../Page/國際標準化組織.md "wikilink")／[IEC](../Page/国际电工委员会.md "wikilink")
    15948:2003），并在2003年11月10日作为[W3C建议发布](https://zh.wikipedia.org/wiki/W3C "wikilink")。这个版本与1.2版仅有细微差别。

此外也产生了基于PNG的动画格式：1996年6月提出PNF（Portable Network
Frame）草案，当年8月改名为[MNG](https://zh.wikipedia.org/wiki/MNG "wikilink")（Multiple-image
Network Graphics）。[1](http://www.libpng.org/pub/mng/)

2004年末，PNG的动画扩展——[APNG](https://zh.wikipedia.org/wiki/APNG "wikilink")，被提出来。这是一个相对于[MNG更简单的动画实现方案](https://zh.wikipedia.org/wiki/MNG "wikilink")，不识别APNG格式的PNG解码器至少能够正常回放第一幅普通PNG画面。

## 文件结构

PNG图像格式文件由一个8字节的PNG文件标识（file signature）域和3个以上的后续数据块（IHDR、IDAT、IEND）组成。

PNG文件包括8字节文件署名（89 50 4E 47 0D 0A 1A
0A，[十六进制](../Page/十六进制.md "wikilink")），用来识别PNG格式。

| 十六进制     | 含义                                                             |
| -------- | -------------------------------------------------------------- |
| 89       | 用于检测传输系统是否支持8位的字符编码（8 bit data），用以减少将文本文件被错误的识别成PNG文件的机会，反之亦然。 |
| 50 4E 47 | PNG每个字母对应的ASCII，让用户可以使用文本编辑器查看时，识别出是PNG文件。                     |
| 0D 0A    | DOS风格的换行符（CRLF）。用于DOS-Unix数据的换行符转换。                            |
| 1A       | 在DOS命令行下，用于阻止文件显示的文件结束符。                                       |
| 0A       | Unix风格的换行符（LF）。用于Unix-DOS换行符的转换。                               |

PNG定义了两种类型的数据块：一种是PNG文件必须包含、读写软件也都必须要支持的关键块（critical
chunk）；另一种叫做辅助块（ancillary
chunks），PNG允许软件忽略它不认识的附加块。这种基于数据块的设计，允许PNG格式在扩展时仍能保持与旧版本[兼容](https://zh.wikipedia.org/wiki/兼容 "wikilink")。

关键数据块中有4个标准数据块：

  - 文件头数据块IHDR（header chunk）：包含有图像基本信息，作为第一个数据块出现并只出现一次。
  - 调色板数据块PLTE（palette chunk）：必须放在图像数据块之前。
  - 图像数据块IDAT（image data chunk）：存储实际图像数据。PNG数据允许包含多个连续的图像数据块。
  - 图像结束数据IEND（image trailer chunk）：放在文件尾部，表示PNG数据流结束。

## 与其他格式相比

### 与GIF相比

  - 一般情况下将静态GIF图像无损转换为PNG后可以压缩率会略为提高（前提是同样采用8位索引模式）。
  - PNG可提供更大颜色深度的支持，包括24位（8位3通道）和48位（16位3通道）真彩色。加入[Alpha通道后可进一步支持每像素](https://zh.wikipedia.org/wiki/Alpha通道 "wikilink")64位的表示。
  - 超过8位色深的PNG图像转换为GIF时，图像质量会由于分色（颜色数减少）而下降。
  - GIF原生支持动态图像，PNG只能通过非标准实现，在PNG的基础上另有发展出支持动画的[APNG和](https://zh.wikipedia.org/wiki/APNG "wikilink")[MNG格式](https://zh.wikipedia.org/wiki/MNG "wikilink")，但目前普及度不高。

PNG在[IE6等旧代浏览器上的支持较差](https://zh.wikipedia.org/wiki/IE6 "wikilink")。

### 与JPEG相比

[JPEG可以对照片](../Page/JPEG.md "wikilink")（或类似）图像生成更小的文件，这是由于JPEG采用了一种针对照片图像的特定有损编码方法，这种编码适用于低对比，图像颜色过渡平滑，雜訊多，且结构不规则的情况下。如果在这种情况下用PNG代替JPEG，文件尺寸增大很多，而图像质量的提高有限。相应的，如果保存文本，线条或类似的边缘清晰，有大块相同颜色区域的图像，PNG格式的压缩效果就要比JPEG好很多，并且不会出现JPEG那样的高对比度区域的图像失真。如果图像既有清晰边缘，又有照片图像的特点，就需要在这两种格式之间权衡一下了。JPEG不支持透明度。

由于JPEG是有损压缩，会产生迭代失真，在重复压缩和解码的过程中会不断丢失信息使图像质量下降。由于PNG是无损的，保存将要被编辑的图像来说更加合适。虽然PNG压缩照片图像也有效，但有专门针对照片图像设计的无损压缩格式，比如无损[JPEG2000](https://zh.wikipedia.org/wiki/JPEG2000 "wikilink")，[Adobe
DNG](http://en.wikipedia.org/wiki/Digital_Negative)等。总的来说这些格式都不能做到适用所有图像。对于将要发布的图像可以保存成JPEG，用JPEG编码一次不会造成明显的图像失真。

### 与JPEG-LS相比

是一个“几乎”无损压缩格式，相对于上面提到的有损JPEG压缩，它的知名度不高。它可以直接和PNG相比较，使用一组标准的测试图像。在Waterloo
Repertoire
ColorSet（一组标准测试图像）下，JPEG-LS通常表现要比PNG好10%-15%，但其中有一些图像PNG表现明显更好一些，大约50%-75%。所以，如果这两种格式都支持而且对图像文件大小很敏感的话，可以用这两种格式都试试，和图像数据本身有比较大关系。

### 与TIFF相比

[TIFF是一个相当多方案结合的格式](../Page/TIFF.md "wikilink")。它被广泛用作专业图像编辑软件之间图像交换的中间格式，因此它不断-{zh-cn:支持;zh-tw:支援}-更多-{zh-cn:应用程序;zh-tw:應用程式}-所需的功能，而对-{zh-cn:应用程序;zh-tw:應用程式}-不关心的图像操作部分-{zh-cn:支持;zh-tw:支援}-不多。这也意味着许多-{zh-cn:应用程序;zh-tw:應用程式}-只能识别TIFF的一个子集，而产生更多的潜在混淆之处。

TIFF使用的最通用的无损压缩算法是LZW。这种算法--GIF中也在使用，直到2003年一直在专利保护之中。有一种TIFF变种使用与PNG相同的压缩算法，但是没有被许多专利程序所-{zh-cn:支持;zh-tw:支援}-。TIFF也提供了一种特殊的无损压缩算法，类似[CCITT](https://zh.wikipedia.org/wiki/CCITT "wikilink")
Group IV，可以对二值图像（比如传真或黑白文本）比PNG有更好的压缩效果。

PNG只-{zh-cn:支持;zh-tw:支援}-非自左乘α，而TIFF也-{zh-cn:支持;zh-tw:支援}-联合（自左乘）α。

PNG规范中不包含嵌入式[EXIF](../Page/EXIF.md "wikilink")（可交换图像文件格式）图像数据的标准，比如-{zh-cn:数码像机;zh-tw:數位相機}-拍得的图像。而TIFF，JPEG
2000, DNG都-{zh-cn:支持;zh-tw:支援}-EXIF。

早期的浏览器不-{zh-cn:支持;zh-tw:支援}-PNG图像；JPEG和GIF是主流图像格式。由于GIF的颜色深度限制，网页中的有颜色过渡的图像都是使用JPEG。不管怎样，JPEG压缩都会导致图像的轻微模糊。而PNG可以做到在相应颜色深度下的尽可能精确，同时保持图像文件不大。PNG已经渐渐成为一种对于小的梯度图像的较好的选择，众多浏览器都已经对PNG有了很好的-{zh-cn:支持;zh-tw:支援}-。

## 参考文献

## 外部链接

  - [PNG文件格式](http://dev.gameres.com/Program/Visual/Other/PNGFormat.htm)
  - [PNG规范第二版](http://www.w3.org/TR/2003/REC-PNG-20031110/)，2003年11月10日[W3C建议](https://zh.wikipedia.org/wiki/W3C "wikilink")
  - [PNG官方站](http://www.libpng.org/pub/png/)
  - [PNG的故事](http://www.libpng.org/pub/png/slashpng-1999.html)

{{-}}

[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")
[Category:ISO標準](https://zh.wikipedia.org/wiki/Category:ISO標準 "wikilink")
[Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink")

1.
2.  Microsoft技術支援服務 - [You cannot view some PNG images in Internet
    Explorer 6](http://support.microsoft.com/kb/822071)，於2009年6月1日查閱。
3.  [The PNG problem in Windows Internet
    Explorer](http://homepage.ntlworld.com/bobosola/index.htm)
    ，於2009年6月1日查閱。