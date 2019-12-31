> 本文内容由[RAW](https://zh.wikipedia.org/wiki/RAW)转换而来。


**原始图像文件**包含从[数码相机](https://zh.wikipedia.org/wiki/数码照相机 "wikilink")、[扫描器或](../Page/影像掃描器.md "wikilink")[电影胶片扫描仪的](https://zh.wikipedia.org/wiki/电影胶片 "wikilink")[图像传感器所处理数据](https://zh.wikipedia.org/wiki/图像传感器 "wikilink")。之所以这样命名，是因为他们尚未被处理，未被[打印或用于编辑](https://zh.wikipedia.org/wiki/打印 "wikilink")。通常情况下，原始图像有宽[色域](../Page/色域.md "wikilink")的内部色彩，可以进行精确的调整，可以在转换之前作出一些简单修改，如[TIFF](../Page/TIFF.md "wikilink")或[JPEG](../Page/JPEG.md "wikilink")文件格式存储。方便打印，或进一步的处理。这些编码往往依赖于色彩图像的设备。这些图像常常被形容为*“RAW* 图像文件”，虽然实际上不是指单一的原始文件格式。其实有几十种不同型号的数码设备在使用这种格式（常见于数码相机或胶片扫描仪）。 \[1\] 原始图像文件，有时也被称为**数字底片**，因为它们充当与电影[底片](../Page/底片.md "wikilink")相同的角色，并不是作为图像直接使用，而是创建一个包含所有信息的图像。同样，转换成可视格式原始图像文件的过程中，有时也被称为渲染原始图像，相当于电影发展过程中用于[感光胶片转换成可视图像的比喻](../Page/底片.md "wikilink")。图像渲染是[白平衡和色彩分级的过程中的一部分](https://zh.wikipedia.org/wiki/白平衡 "wikilink")。

就像照相底片一样，原始的数字图像可以有更宽的[动态范围比](https://zh.wikipedia.org/wiki/动态范围 "wikilink")，最终的最终图像格式或色域，它保留了大部分拍摄的图像信息。原始图像格式的目的是保存信息的损失降到最低，从传感器获得的数据，和周围捕获的图像（[元数据](../Page/元数据.md "wikilink")）的条件。

## 原理

RAW图像文件有时被描述为“数字负片”。虽然它们不是负片，但它们与胶片摄影中负片的作用完全相同：负片不能直接用作图像，但它包含了创建图像所需的全部信息。 跟胶片摄影一样，将RAW图像文件转换成可视格式的过程有时称为“显影”，类似于将胶片冲洗成可视印刷品的胶片显影过程。 图像渲染时的各项选择是白平衡和颜色分级的一部分。

像胶片摄影的负片一样，RAW格式数字图像的动态范围或色域可能比最终图像格式更宽，而且它保留了捕获图像的大部分信息。 使用RAW图像格式的目的是以最小的信息损失保存从传感器获得的数据，以及捕获图像时的状况（元数据）。

RAW图像格式的目的是尽可能地捕捉（即特定传感器的最好性能）现场的拍摄特性，也就是说，包含有关场景的光照强度和颜色的物理信息。 大多数RAW图像文件格式存储的传感器信息是按照传感器的各个光接收元件（有时称为像素）的几何排布，而不是最终图像中的点的位置来排列的。 例如：元素呈六边形排列的传感器记录的是每个六边形放置的单元接受的信息，而解码软件最终将在“数字显影”期间转换为矩形网格排列。

## 文件内容

RAW文件包含创建一个可视图像所必须的相机传感器数据信息。RAW文件的结构，包括ISO标准的RAW图像格式ISO 12234-2 ，TIFF / EP，往往遵循一个共同的模式，那就是：

  - 一个短的文件头，它通常包含文件的[字节顺序](../Page/字节序.md "wikilink")，文件标识符和主数据的文件偏移量
  - 摄像传感器[元数据](../Page/元数据.md "wikilink")，用来描述图像传感器的数据，包括传感器的尺寸， 颜色滤波矩阵(color filter array)的属性和它的颜色配置文件
  - 列入任何[CMS环境或](../Page/内容管理系统.md "wikilink")[数据库](../Page/数据库.md "wikilink")中需要的图像[元数据](../Page/元数据.md "wikilink")。这些措施包括曝光设定，相机/扫描仪/镜头模型，拍摄/扫描日期（和可选的位置信息），创作信息和其他。一些原始文件包含可交换图像格式的标准化元数据节。
  - 图像缩略图
  - 可选的JPEG格式缩小尺寸的图像，可用于快速预览
  - 在电影胶片扫描中，无论是文件序列的时间码，序列码或帧编号都代表在扫描卷轴中的帧顺序。这个项目允许文件被被按帧顺序排列（不依赖于它的文件名）
  - 传感器图像数据

许多RAW格式, 包括 3FR ([Hasselblad](../Page/哈苏.md "wikilink")), DCR, K25, KDC (Kodak), IIQ (), CR2 ([Canon](../Page/佳能.md "wikilink")), ERF (Epson), MEF ([Mamiya](../Page/玛米亚.md "wikilink")), MOS (Leaf), NEF ([Nikon](../Page/尼康.md "wikilink")), ORF ([Olympus](../Page/奧林巴斯.md "wikilink")), PEF ([Pentax](../Page/賓得士.md "wikilink")), RW2 (Panasonic) and ARW, SRF, SR2 ([Sony](../Page/索尼.md "wikilink")), 都是基于TIFF格式.\[2\] 这些文件可能在许多方面偏离TIFF标准，包括使用一个非标准的文件头，列入额外的图像标记和一些标签的数据加密。

松下的RAW转换器可以通过Raw文件中的必要的更正信息来纠正类似[LX3相机的几何畸变和](https://zh.wikipedia.org/wiki/Lumix "wikilink")[色差](../Page/色差.md "wikilink")。 \[3\] \[4\] \[5\]第一阶段的原始转换器捕捉一个还提供修正几何失真， [色差](../Page/色差.md "wikilink") ，紫边和梯形校正仿真软件倾斜移位 ，来自100多个不同的相机最原始的文件。 \[6\] \[7\]这同样适用于佳能的的应用，至少像所有的单反相机的紧凑型相机的Ğ<N>系列更昂贵的相机。

.dng是 Adobe 数码底片格式，DNG格式 ，是一个6.0的TIFF格式的扩展和兼容TIFF / EP，并使用各种[开放格式和](../Page/自由檔案格式.md "wikilink")/或标准 ，包括 [Exif元数据](../Page/EXIF.md "wikilink") ，XMP元数据 ，IPTC元数据 [，CIE XYZ坐标](../Page/CIE1931色彩空间.md "wikilink") ， ICC配置文件和[.JPEG。](../Page/JPEG.md "wikilink") <ref name="DNGspecification"> ;：

[DNG格式规范](http://www.adobe.com/products/dng/pdfs/dng_spec_1_3_0_0.pdf)</ref>

### 传感器的图像数据

在[数码摄影中](https://zh.wikipedia.org/wiki/数码摄影 "wikilink") ，原始文件的读取， [照相胶片在胶片摄影中扮演的角色](../Page/底片.md "wikilink")。因此，原始数据文件包含全分辨率（通常是12 -位或14位）数据读取每个相机的[图像传感器](https://zh.wikipedia.org/wiki/图像传感器 "wikilink") [像素](../Page/像素.md "wikilink")点。

几乎无一例外地覆盖彩色滤光阵列组成的镶嵌的红，绿，蓝和（二）绿色过滤器2x2矩阵，通常是拜耳过滤器或者其他的相机传感器。

拜耳过滤器上的变化之一是索尼的[Cyber-shot](https://zh.wikipedia.org/wiki/Cyber-shot "wikilink") DSC-F828，在RG行交换“ 翡翠 ”绿色的RGBE滤波器 \[8\] （ 蓝绿色 \[9\]或[青色](../Page/青色.md "wikilink") \[10\] \[ 颜色值 \]）。其他类型的传感器，例如像Foveon X3，它会直接在RGB格式上捕捉信息（每个位置上会使用3个像素传感器）。这些RGB的原始数据仍需要被处理成图像文件，因为原始的RGB值对应于传感器的反应，并不同於[sRGB的标准色彩空间](../Page/SRGB色彩空间.md "wikilink")。然而这些数据也不再需要去马赛克。

[平板和胶片扫描仪传感器通常是直窄的RGB或RGBI](../Page/影像掃描器.md "wikilink")（其中“I”是强度）席卷整个图像的线。HDRI格式的原始数据是能够储存红外线的原始数据，可以使用红外线清洗作为一个额外的16位通道。 讨论有关原始文件的剩余部分，以及适用于他们。（有些扫描仪不容许的主机系统访问所有的原始数据，如速度妥协。原始数据的处理非常迅速扫描仪挑选出最好的一部分可用的动态范围，因此只有结果传递到永久存储的计算机内，减少传输的数据量，因此，对于任何给定的速度带宽要求图像的吞吐量）。

要获得原始文件的图像，这种镶嵌数据必须转换成标准的RGB形式。这通常被称为“RAW发展”。绿从四个传感器2x2的拜耳矩阵将RGB像素的原始形式转换时，是用来控制处理的输出像素的亮度细节，而红色和蓝色，其中有许多样品的一半，主要用于越慢变图像的色度分量。

如果原始格式的数据是可用的，它可以用在高动态范围影像转换，捕捉三个 独立的图像，一个一个正确和一个曝光过度的和曝光不足，曝光多的HDI方法作为一种简单的替代，和“叠加”其他方面。

## 好处

几乎所有的数码相机可以处理来自[传感器的使用设置白平衡](https://zh.wikipedia.org/wiki/電荷耦合元件 "wikilink")， 色彩饱和度，对比度，清晰度，自动选择或由摄影师拍摄照片前，进入到一个JPEG文件图像。相机产生的原始数据文件保存在文件中的这些设置，但推迟处理。这个结果在摄影师的一个额外的步骤，使原料通常只打算时使用额外的计算机处理。然而，生有众多的JPEG上的优势，如：

  - 更高的图像质量。因为所有的计算（如伽玛校正 ，去马赛克 ，白平衡， [亮度](https://zh.wikipedia.org/wiki/明度 "wikilink") ，对比度，等等......）用于生成像素值（对于大多数图像的RGB格式）进行一步的基础数据，由此产生的像素值将更加准确，并表现出以下的[色调分离](https://zh.wikipedia.org/wiki/色調分離 "wikilink") 。
  - 绕过相机内不受欢迎的处理步骤，例如锐化和降噪
  - 通常使用一种有损压缩格式（虽然现在提供一种无损JPEG压缩）保存JPEG图像。RAW格式是典型的无压缩或使用无损压缩，即相机在拍摄中得到的数据不会产生任何损失，相机记录下什么，RAW格式就记录什么。
  - 更精细的控制。RAW转换软件，允许用户操纵更多的参数（如亮度 ，白平衡， [色调](../Page/色相.md "wikilink") ，饱和度，等等。）和更大的可变性这样做。白点，例如，可以设置为任意值，如“日光”或“白炽灯”不只是离散的预设值。用户通常可以看到预览的同时，调整这些参数。
  - 相机原始文件的有12或14位的强度信息，而不是γ-8压缩JPEG文件存储位（通常在处理TIFF文件存储）;由于数据尚未呈现和裁剪到一个色彩空间 [的色域](../Page/色域.md "wikilink") ，更精确可能是亮点，阴影，色彩饱和度。
  - 可以设置为任何需要的色彩空间 。
  - 不同的去马赛克算法可以使用，而不仅仅是编码的相机。
  - 原始文件的内容，包括更多的信息，有可能提供更高的质量比转换的结果，在其中渲染参数是固定的，色域裁剪，并有可能成为量化和压缩失真的数据，如增加较少时，从原始数据进行比已经呈现的图像文件时，可见文物的一个显着曝光不足的照片，结果曝光的大变革。原始数据更正和艺术手法留下更多的余地，而不产生的图像中可见的缺陷，如[色调分离](https://zh.wikipedia.org/wiki/色調分離 "wikilink") 。
  - 所有的RAW图像文件所做的更改，非破坏性的，也就是说，只有控制渲染的元数据被改变，使不同的输出版本，离开原来的数据不变。
  - 在一定程度上的RAW摄影无需使用HDRI的技术，让现场强度范围映射到输出的色调范围超过了更好的控制，自动映射到[JPEG](../Page/JPEG.md "wikilink")或其他8位表示的过程。

## 缺点

  - 相机原始文件的大小通常比JPEG文件尺寸大2至6倍\[11\]，但使用RAW格式能避免压缩为JPEG格式的图像质量损失。一个存储卡只能存储少量的RAW文件，不过现代记忆卡的大尺寸和低价格一定程度上可以减轻负担。
  - 最原始的格式，使用压缩或不影响图像质量的情况下，实现光的[无损数据压缩](../Page/无损数据压缩.md "wikilink") ，以减少文件的大小。但有些人使用有损数据压缩对图像数据进行量化和滤波。 \[12\] \<ref

name="majid.info"\></ref>新近的尼康相机，可以让摄影师选择他们的原始图像为无压缩，无损压缩或有损压缩。

  - 没有被广泛接受的标准的原始图像格式（ISO 12234-2的TIFF / EP）。DNG格式 ，是潜在的候选，一个新的标准格式尚未被许多大相机公司的选择。（见“ 标准化 ”一节）。\[13\]许多不同的RAW格式目前正在使用和新的RAW格式不断出现，而其他被遗弃。
  - 由于缺乏一个标准的原始格式的广泛采用，更专门的软件，可能需要打开原始文件为标准格式，如JPEG或TIFF。软件开发人员必须经常更新他们的产品，以支持最新的相机，但像dcraw的使更容易的开源实现RAW格式。
  - 在图像的工作流程所花费的时间是一个重要因素，在.raw和准备使用的图像格式之间进行选择。需要更多的时间来处理原始图像与现代的照片编辑软件已经大大降低，但它在工作流程仍然需要许多额外的步骤。

## 软件支持

相机支持RAW文件通常与[专有软件](../Page/专有软件.md "wikilink")转换成标准的RGB图像的原始图像数据。已批准从相机制造商或[反向工程](../Page/逆向工程.md "wikilink") ，尤其是RAW格式的技术，并提供自己的处理算法的供应商提供的其他处理和转换[程序和](../Page/计算机程序.md "wikilink")[插件](../Page/插件.md "wikilink") 。

ACDSEE PRO是一个丰富 的照片管理和编辑软件，不断增加其支持RAW格式的清单。 \[14\]

[Adobe Photoshop中包含版本为CS](../Page/Adobe_Photoshop.md "wikilink")2 RAW格式的广泛支持，如[Adobe的Photoshop Lightroom](../Page/Adobe_Photoshop_Lightroom.md "wikilink") 。

捕获一个支持来自单反相机的原始图像文件（佳能，尼康，松下，索尼等）和中画幅相机（ Phase One, Leaf, Mamiya 等）广大范围。 \[15\]

Paint Shop Pro的同样包含RAW的支持，虽然在大多数编辑更新程序的情况下可能是必要的，他们被释放，达到新的RAW格式的兼容性。

[Picasa](../Page/Picasa.md "wikilink")是一个开源软件，支持大多数RAW文件。[IrfanView](../Page/IrfanView.md "wikilink")的同样是一个免费软件/共享软件支持大多数RAW文

件的基本编辑。如微软的2006数字图像识别和组织的原始图像格式。CRW，CR2，NEF，这是由佳能和尼康，产生的文件格式但该产品是在2007年停产。 <ref>

[微软数字图像主页](http://www.microsoft.com/products/imaging/default.mspx)</ref>

微软提供免费软件适用[于](../Page/Windows_XP.md "wikilink") Windows [XP集成到系统的其他照片工具查看和打印](../Page/Windows_XP.md "wikilink");然而，这个软件是在2005年最后一次更新，不支持从许多释放其后相机原始文件<ref>

\[<http://www.microsoft.com/downloads/details.aspx?familyid=D48E808E-B10D-4CE4-A141->

5866FD4A3286\&displaylang=en Microsoft RAW Image Thumbnailer and Viewer for Windows XP\]</ref> 在Windows相机解码包可以从120数码单反相机从多个厂家在Windows Explorer和Windows Live照片库[，Windows Vista](../Page/Windows_Vista.md "wikilink") [和](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") Windows [7，RAW格式文件的本地观看](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")。 <ref>

[1](http://www.microsoft.com/download/en/details.aspx?id=26829) Windows Camera Codec pack</ref>

Windows XP和Vista都支持WIC编解码标准。如[Konvertor](https://zh.wikipedia.org/wiki/Konvertor "wikilink")，[Windows 相片圖庫](https://zh.wikipedia.org/wiki/Windows_相片圖庫 "wikilink")，[Windows Live 影像中心和](https://zh.wikipedia.org/wiki/Windows_Live_影像中心 "wikilink")[FastPictureViewer等专业产品](https://zh.wikipedia.org/wiki/FastPictureViewer "wikilink")<ref>

[FastPictureViewer的图像格式兼容性图表](http://www.fastpictureviewer.com/formats/)</ref>可以查看RAW格式，安装必要的WIC编解码器 。相机厂商[佳能](../Page/佳能.md "wikilink") ， [尼康](../Page/尼康.md "wikilink") ， [索尼](../Page/索尼.md "wikilink") ， [奥林巴斯和](../Page/奧林巴斯.md "wikilink")[宾得已发布WIC编解码器](../Page/賓得士.md "wikilink")，但也有一些制造商只提供32位版本Vista的编解码器支持。 <ref> [了解Windows Vista中的RAW图像支持：Windows Vista团队博客](http://windowsvistablog.com/blogs/windowsvista/archive/2007/02/15/understanding-raw-image-support-in-windows-vista.aspx)

[Windows 8更可以查看RAW格式](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")，而廠商支援的编解码器可以透過[Windows Update來更新RAW支援格式](../Page/Windows_Update.md "wikilink")。

</ref>商业DNG格式编解码器也是可用从Ardfry， \[16\]而，FastPictureViewer厂商已经发布了WIC解码包，增加22 RAW格式的支持在32位和64位版本的Windows为donationware， <ref>

[FastPictureViewer 32/64-bit原始编解码器包用于Windows](http://www.fastpictureviewer.com/codecs/)

</ref>

2005年， [苹果电脑公司推出了几种产品](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")，提供原始文件支持。在1月，苹果发布[的iPhoto](../Page/IPhoto.md "wikilink") 5，提供了许多原始的文件格式查看和编辑的基本支持。在这一年的4月，苹果推出了新版本，其操作系统[，Mac OS X v10.4的中](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.4 "wikilink") ，增加了原料直接支持的操作系统的ImageIO框架，增加了原材料的支持自动大多数的Mac的一部分OS X的应用，从苹果公司（如Mac OS X的预览，PDF和图像浏览应用程序和[光圈](../Page/Aperture.md "wikilink") ，照片后期制作专业人员的软件包）以及所有的第三方应用程序使用的ImageIO框架。一般包括半定期更新到OS X更新为相机生产商的干预个月推出的新的原始文件格式的支持。

有许多其他的“原始工作流应用程序”，旨在为客户提供高效的处理和后处理的原始图像，包括赫利过滤器 ，DxO Labs公司 DXO OPTICS PRO， [哈苏](../Page/哈苏.md "wikilink")的PHOCUS比博实验室的比博临 。[苹果光圈](../Page/Aperture.md "wikilink") [，Adobe公司的Photoshop和Lightroom中](../Page/Adobe_Photoshop.md "wikilink")，LaserSoft成像的的SilverFast，并PhotoLine一样，这些方案提供了先进的控制处理存储在原始文件中的信息和原始数据文件转换成JPEG或TIFF [的Picasa，1免费图像编辑和编目](../Page/Picasa.md "wikilink")[从谷歌计划](../Page/Google.md "wikilink")，可以读取和显示许多原始的格式，但一样的iPhoto，Picasa提供原始文件的数据处理工具只有有限的。

简单的照片编辑软件LightZone，提供本地编辑RAW格式的能力。大多数工具是原始转换器，但LightZone允许用户编辑的原始文件，如果是TIFF或JPEG。

### 开源软件

便携式开源计划DcRaw最原始的格式，可以作出不支持大多数商业软件（ [如](../Page/UNIX.md "wikilink") Unix）操作系统上运行。libraw \[17\]是一个API库的基础上的，提供了更方便的接口用于读取和转换RAW文件。PhotoStudio中的HDR和AZImage \[18\]的商业使用Libraw的应用。Jrawio是另一个API库，纯Java代码和符合标准的Java图像的I/O API编写。darktable是一个开放源码的Linux和其他开放的类Unix操作系统的RAW工作流程工具。特点在[Lab色彩空间](../Page/Lab色彩空间.md "wikilink")和插件架构的原生32位浮点处理。

DigiKam的是一个开放源码的先进的数字照片软件，应用于Linux，Windows和Mac OSX，支持RAW处理管理中的应用。ExifTool支持读取，处理和编辑原始图像文件的元数据。ExifTool支持EXIF，GPS， 国际报业电信委员会 的[XMP，JFIF](https://zh.wikipedia.org/wiki/XMP，JFIF "wikilink") 的 ，GeoTIFF的 ICC配置文件 ，Photoshop的内部评级法的Flashpix，AFCP和ID3，以及许多数码相机的制造商注意到许多元数据，包括不同类型。

最新版本的[GIMP](../Page/GIMP.md "wikilink")，一个免费的开源的照片编辑包，许多进口原材料的格式。旧版本有一个插件，允许读取和转换RAW文件。

[ImageMagick](../Page/ImageMagick.md "wikilink")的图像处理和转换，一个流行的软件套件，读了许多不同的原始文件格式。

\[19\][ImageMagick](../Page/ImageMagick.md "wikilink")是可用于Linux / Unix系统，Mac OS中，Windows中，和其他平台。

photivo与非破坏性的16位处理的灵活性，旨在管道的原料是一个开放源码的处理器。它运行在Linux，Mac OSX和Windows紧密集成使用[GIMP](../Page/GIMP.md "wikilink")。

rawstudio是另一个开源的程序来读取和处理图像从数码相机。主要的重点是精简的接口上，以便快速审查和处理大图像集合。 RawTherapee是一个开放源码的RAW转换器，支持Linux，Mac OS和Windows操作系统。

ufraw的是自由软件的基础上修改的。它可以用来作为一个[GIMP](../Page/GIMP.md "wikilink")插件和大多数操作系统。

## 标准化

提供详细的原始文件的内容和简要说明很大的问题。原始格式没有统一的标准，各种格式可以相似或完全不同。不同的厂商使用自己专有的和通常不公开文档格式，但它们都统称为原始格式。而且在通常情况下，在相机型号更新时他们也会更改格式。几个主要的相机厂商，包括[尼康](../Page/尼康.md "wikilink")、[佳能](../Page/佳能.md "wikilink")、[索尼](../Page/索尼.md "wikilink")，[加密](../Page/加密.md "wikilink")的文件部分在试图阻止第三方工具访问它们。\[20\]

这种全行业的格式不一致的情况被许多摄影师关注，他们担心他们宝贵的原始照片可能有一天会再也无法打开，比如电脑操作系统和软件程序变得过时而新的软件放弃了过时的原始格式。提供高品质的[开源软件解码的原始图像格式](../Page/开放源代码.md "wikilink")，特别是dcraw，有助于缓解这些问题。一个由和克林斯曼施佩希特的文章说：“有两个解决方案：一，由相机生产商公开原始格式的文档；二，过去、现在和未来，更可能采取一个通用的原始格式。”\[21\]“美国国会图书馆规划集”辨识原始文件为“不太理想的文件格式”，辨识DNG作为建议替代格式。\[22\]

DNG是为全行业的正在寻找的原始图像格式。它是根据与ISO标准的原始图像格式的 ISO 12234-2兼容，并正在为通过ISO标准修订。

ISO标准的原始图像格式是ISO 12234-2，更好地为TIFF/EP。（TIFF/EP还支持“非原始的”或“处理过的”图像）。TIFF/EP提供了相机的原始图像格式的基础上。例如，[尼康](../Page/尼康.md "wikilink")的NEF原始文件基于TIFF/EP，包括标签标识的TIFF/EP的版本，他们根据\[23\]Adobe公司的DNG（数字负片）原始文件格式的TIFF/EP的基础上的DNG规范规定“DNG格式是兼容的TIFF-EP标准”。<ref>Adobe: [DNG 1.3.0.0 Specification (June 2009)](http://www.adobe.com/products/dng/index.html)

(scroll down a bit)</ref>几个相机使用他们的原始图像格式DNG格式，所以在一些方面，他们也使用的TIFF/EP。\[24\]

[奥多比系统公司](https://zh.wikipedia.org/wiki/奥多比系统公司 "wikilink")（Adobe）在2004年9月推出了DNG原始图像格式。2006年9月，很多相机制造商宣布已开始在新型号的相机提供对DNG格式的支持，包括[徕卡](https://zh.wikipedia.org/wiki/徕卡 "wikilink")、[三星](https://zh.wikipedia.org/wiki/三星集团 "wikilink")、[理光](../Page/理光.md "wikilink")、[宾得](../Page/賓得士.md "wikilink")、[哈苏](../Page/哈苏.md "wikilink")（相机原生支持）和（导出）。\[25\]徕卡数码MODUL-R（DMR）是第一个使用其原生格式为DNG格式。 \[26\]2009年9月就没有已知的知识产权障碍或DNG格式的许可证要求。\[27\]（有一个“数字负片（DNG）规范专利许可证”，\[28\]但不实际拥有， *有* DNG格式上举行的任何专利，2009年9月说，至少4年后才能得到这个出版许可证）。

TIFF/EP在2006年开始，其5年的修订周期。\[29\]Adobe向ISO提供了DNG规范是ISO的修订TIFF/EP标准的一部分。\[30\]\[31\]从国际标准化组织于2008年10月的进展情况，有关修订的TIFF/EP报告指出，目前包括修订“......两个”互通型材，“IP 1”处理后的图像数据，使用“。TIF“的延伸，”IP 2“的”.raw“图像数据”。DNG格式的“延伸”。\[32\]这是“IP2”，这是与此有关。在2009年9月的进度报告认为，“这种格式为DNG 1.3，出发点是相似的。”\[33\]

DNG格式已利用开放源码的开发。 \[34\]相机制造商的使用不同：最大的公司，如[佳能](../Page/佳能.md "wikilink")、[尼康](../Page/尼康.md "wikilink")、[索尼](../Page/索尼.md "wikilink")以及其它一些不使用DNG，但规模较小的公司，和“利基”的相机，否则可能会遇到困难，从软件公司的支持，经常制造商使用作为他们的母语的原始图像格式DNG格式。（或[宾得情况下](../Page/賓得士.md "wikilink")，作为一个可选的替代品，以自己的原始图像格式）。有15个或更多这样的公司的订单，甚至包括一些专门在电影摄影机。 \[35\]

## 文件的处理

要查看或打印这些图片，需要从相机的[图像传感器的输出进行处理](https://zh.wikipedia.org/wiki/图像传感器 "wikilink")，转换到照片渲染，然后储存在一个标准的[光栅图形格式中](../Page/位图.md "wikilink")，如[.JPEG这种处理](../Page/JPEG.md "wikilink")，无论是在相机或以后在原始文件转换器中所涉及的操作，典型的有： \[36\] \[37\]

  - 解码 - 原始文件的图像数据通常编码压缩的目的，而且还经常混淆的目的（如佳能或尼康相机的原始文件）。
  - 坏点去除-从附近地点在显著的坏点位置的数据与插值替换
  - 白平衡 -被用于调节光[色温](../Page/色温.md "wikilink")的照片
  - 去马赛克 -插值从一个矩阵彩色像素的颜色替换一些从图像传感器接收到的部分原始数据。
  - 降噪 -消除小波动，平滑细节
  - 颜色转换 -从本地相机图像传感器的光谱灵敏度转换为输出色彩空间（通常为JPEG

[的sRGB）的](../Page/SRGB色彩空间.md "wikilink")[颜色空间](../Page/色彩空間.md "wikilink")

  - 色调重现<ref>

</ref> \[38\] -相机传感器捕获并存储在原始文件中的一个典型的10位或更多位的动态范围场景的亮度需要美观效果和正确观看上呈现低动态范围内的显示器或打印;色调再现通常包括单独的[色调映射](../Page/色调映射.md "wikilink")和伽玛压缩步骤。

  - [压缩](https://zh.wikipedia.org/wiki/影像壓縮 "wikilink") -例如JPEG压缩

请注意，只有CFA传感器可以进行[去马赛克处理](../Page/去馬賽克.md "wikilink")，但它不适合[3CCD或](https://zh.wikipedia.org/wiki/3CCD "wikilink")[FOVEON X3传感器](https://zh.wikipedia.org/wiki/FOVEON_X3 "wikilink")。

相机和图像处理软件也可以执行后期的处理，以提高图像质量，例如：

  - 去除系统噪点- 反偏见帧和[平场校正](https://zh.wikipedia.org/wiki/平场校正 "wikilink")
  - 暗帧减法
  - 光学矫正- 镜头失真校正， [暗角校正和色彩边缘校正](../Page/暈影.md "wikilink")
  - 对比度增强
  - 反锐化掩模来提高清晰度

[动态范围压缩，减轻阴影区域表现出的亮点](../Page/高动态范围成像.md "wikilink") 当相机保存原始文件，它推迟处理;通常只有执行的处理是有缺陷的像素（有缺陷的像素被删除之前创建的文件的DNG规范要求拆除\[39\]保存原始文件之前，一些相机厂商做额外的处理;例如，尼康已经由[天文摄影批评降噪申请之前保存的原始文件](https://zh.wikipedia.org/wiki/天文攝影 "wikilink")。 \[40\]

某些RAW格式还允许非线性量化 。 \[41\] \[42\]这种非线性使不可见的图像退化消除无形的和不相关的信息，从图像的原始数据压缩。尽管噪点可以减少，但还是有些噪点不可避免。

## 注释清单的文件扩展名

  - .3FR（ [哈苏](../Page/哈苏.md "wikilink") ）
  - .ARI（ARRIFLEX）
  - .ARW.SRF.SR2（ [索尼](../Page/索尼.md "wikilink") ）
  - .bay（ [卡西欧](../Page/卡西歐.md "wikilink") ）
  - .crw.cr2（ [佳能](../Page/佳能.md "wikilink") ）
  - .cap.iiq.eip（Phase_One）
  - .dcs.dcr.drf.k25.kdc（ 柯达 ）
  - .DNG（ [奥多比](https://zh.wikipedia.org/wiki/奥多比 "wikilink") ）
  - .ERF（ 爱普生 ）
  - .FFF（ 易迈康 ）
  - .MEF（ [玛米亚](../Page/玛米亚.md "wikilink") ）
  - .MOS（ leaf ）
  - .MRW（ [美能达](../Page/美能達.md "wikilink") ）
  - .NEF.NRW（ [尼康](../Page/尼康.md "wikilink") ）
  - .ORF（ [奥林巴斯](../Page/奧林巴斯.md "wikilink") ）
  - .PEF.PTX（ [宾得](../Page/賓得士.md "wikilink") ）
  - .PXN（ [罗技](../Page/羅技.md "wikilink") ）
  - .R3D（ Red ）
  - .raf（ [富士](../Page/富士胶片.md "wikilink") ）
  - .raw.rw2（ 松下 ）
  - .raw.rwl.dng（ [莱卡](https://zh.wikipedia.org/wiki/徕卡 "wikilink") ）
  - .rwz（Rawzor）
  - .srw（ 三星 ）
  - [.X3F（西格玛](../Page/適馬.md "wikilink")）

## 参见

  - [图像文件格式](https://zh.wikipedia.org/wiki/图像文件格式 "wikilink")

## 参考文献

[Category:數位攝影](https://zh.wikipedia.org/wiki/Category:數位攝影 "wikilink") [Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")

1.  [解码原始Linux中的数码照片](http://www.cybercom.net/%7Edcoffin/dcraw/#i18n)
2.
3.  [在线摄影师：松下LX3桶形失真争议](http://theonlinephotographer.typepad.com/the_online_photographer/2008/12/panasonic-lx3-b.html)
4.  [松下LX3镜头畸变](http://www.imaging-resource.com/PRODS/LX3/LX3A4.HTM)
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16. [DNG格式的缩略图和预览支持Windows Photo Gallery和Windows Live照片库](http://www.ardfry.com/dng-codec)
17.
18.
19.
20.  Dave Coffin, creator of the dcraw program, discusses some of his successful reverse-engineering in this interview, and mentions his enthusiasm for the DNG format.
21. The Luminous Landscape: [The RAW Flaw by Michael Reichmann and Juergen Specht](http://www.luminous-landscape.com/essays/raw-flaw.shtml)
22. 美国国会馆藏图书馆规划：[偏好摘要](http://www.digitalpreservation.gov/formats/content/still_preferences.shtml)
23. Barry Pearson: [What is in a raw file?](http://www.barrypearson.co.uk/articles/dng/raw.htm#contents)
24. 巴里·皮尔森：[以某种方式使用DNG格式的相机厂商的产品](http://www.barrypearson.co.uk/articles/dng/products.htm#manufacturers)
25. Barry Pearson: [DNG support, to end-September 2006](http://www.barrypearson.co.uk/articles/dng/products_y2.htm)
26. 巴里·皮尔森： [一个DNG格式的简短历史](http://www.barrypearson.co.uk/articles/dng/history.htm)
27. Adobe Labs: [CinemaDNG](http://labs.adobe.com/technologies/cinemadng/) (final bullet point)
28. Adobe: [Digital Negative (DNG) Specification Patent License](http://www.adobe.com/products/dng/license.html)
29. I3A (International Imaging Industry Association): [WG18, Ad Hoc groups and JWG 20/22/23 Meet in Tokyo](http://www.i3a.org/news/newsletters/eye-on-standards/eye_on_standards_v3_n2#director)
30. Web archive of widely distributed email: [Forwarded Message from a member of the ISO TC42 (technical committee for photography) working group 18 (electronic imaging) standards group](http://archives.free.net.ph/message/20070418.233346.5ae65389.en.html)
31. DPReview: [Adobe seeks International recognition for DNG](http://www.dpreview.com/news/0805/08051503adobeDNG.asp)
32. I3A (International Imaging Industry Association): [ISO 12234 Part 2 – TIFF/EP](http://www.i3a.org/news/newsletters/eye-on-standards/eye-on-standards-october-2008/#working_group_reports)  (scroll down a bit)
33. NPES: [Minutes of ISO/TC 130/WG2, 39th Meeting](http://www.npes.org/pdf/TC130WG2N1363_Minutes-Beijing-Sept09.pdf), see 14f
34.
35.
36.
37.
38.
39.
40.
41.
42.