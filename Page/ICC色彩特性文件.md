[DigiKam_ICC_profile.png](https://zh.wikipedia.org/wiki/File:DigiKam_ICC_profile.png "fig:DigiKam_ICC_profile.png")**ICC色彩特性文件**（ICC
Profile）是一组用来描述色彩输入、输出设备或者某种[色彩空间的特性的数据集合](https://zh.wikipedia.org/wiki/色彩空间 "wikilink")，因由[国际色彩联盟](../Page/国际色彩联盟.md "wikilink")（ICC）主持制定其规范而得名。该类文件被广泛用于[色彩管理](../Page/色彩管理.md "wikilink")，以实现让颜色在设备和[文档之间保持一致](https://zh.wikipedia.org/wiki/文档 "wikilink")，从而在目标设备上提供最佳的色彩表现、或者在其他设备上模拟文档在目标设备上的色彩表现。此类文件的[扩展名通常为](https://zh.wikipedia.org/wiki/扩展名 "wikilink").icm。

## 技术原理

[Color_calibration_curve.jpg](https://zh.wikipedia.org/wiki/File:Color_calibration_curve.jpg "fig:Color_calibration_curve.jpg")
ICC色彩特性文件通过定义目标设备或色彩空间相对于特性文件相关空间（Profile Connection
Space，PCS，通常是[CIELAB](https://zh.wikipedia.org/wiki/CIELAB "wikilink")（L\*a\*b\*）或者[CIEXYZ](https://zh.wikipedia.org/wiki/CIEXYZ "wikilink")）之间应该如何进行[色彩转换来工作](https://zh.wikipedia.org/wiki/色彩转换 "wikilink")。色彩转换的具体方式在文件中以表格形式进行标记，未被标记的则通过[插值或者其它参数来进行转换](../Page/插值.md "wikilink")。

以从[RGB色彩空间转换到](https://zh.wikipedia.org/wiki/RGB "wikilink")[CMYK色彩空间的过程为例](https://zh.wikipedia.org/wiki/CMYK "wikilink")。首先取得两者的ICC色彩色性文件。然后按照RGB的ICC文件中的定义将其RGB值转换至特性文件相关空间（Profile
Connection
Space，PCS）。当有需要时将PCS中的数值在L\*a\*b\*和CIEXYZ之间变换（该变换过程已被正确定义）。最后将PCS中的数值转换成目标的C、M、Y、K四个数值。

在一个色彩特性文件中可以按照[渲染目的](../Page/色彩管理.md "wikilink")（Rendering
Intent）的不同来可以定义多个色彩转换方式。如Perceptual（按可感知度）、Relative
colorimetric（按相对色度）、Saturation（按饱和度）、Absolute
colorimetric（按绝对色度）等。在不同的色彩空间之间转换时可以在这些方式之间选择最合适的方式。

特性文件相关空间的参考光源是标准光源[D50](https://zh.wikipedia.org/wiki/D50 "wikilink")\[1\]的16位分数近似值。[白点坐标是XYZ](https://zh.wikipedia.org/wiki/白点 "wikilink")=(0.9642,
1.000, 0.8249)。当转换源和转换目标的白点不一致时，使用布拉福德变换（Bradford
transform）进行[色彩匹配](https://zh.wikipedia.org/wiki/色彩匹配 "wikilink")（Chromatic
adaptation）来确定白点。\[2\]

## 应用形式

ICC色彩特性文件通过[操作系统与硬件设备关联](../Page/操作系统.md "wikilink")、通过[应用软件模拟](https://zh.wikipedia.org/wiki/应用软件 "wikilink")、通过嵌入在图像文件中被应用软件读取等方式生效。每一个独立的能显示或者读取色彩的设备都可以有一份专属的ICC色彩特性文件。一些厂商为他们的硬件设备提供了ICC文件的下载服务\[3\]。用户也可以通过[色度计和](https://zh.wikipedia.org/wiki/色度计 "wikilink")[分光仪为自己的设备生成该文件](https://zh.wikipedia.org/wiki/分光仪 "wikilink")。

## 技术规范

国际色彩联盟（ICC）制定了ICC色彩特性文件的有关规范，对该类文件的格式有着精确的定义，但并没有规定具体的算法和其他细节来处理这些文件，从而为各类应用和系统如何处理ICC文件留下了多样化的空间。当前最新版（2009年）的ICC色彩特性文件规范是版本4.2\[4\]但绝大多数设备只能支持版本2。

ICC色彩特性文件的规范目前正作为[ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")
15076-1:2005\[5\]\[6\]在被审议的过程中。目前已经被多种其他规范用作参考。下述的标准包括这些国际标准和业内的事实标准。

### 国际标准

<small>

  - ISO/IEC 10918-1: Coding of still pictures -
    [JPEG](../Page/JPEG.md "wikilink")
  - ISO 12234-4: Photography - Electronic still-picture imaging – Part
    4: Exchangeable image file format
    ([Exif](../Page/Exif.md "wikilink") 2.2) (ISO TC42)
  - ISO 12639:2004 Graphic technology — Prepress digital data exchange —
    Taged Image File Format for Image Technology
    ([TIFF](../Page/TIFF.md "wikilink")/IT) (ISO TC130)
  - ISO/DIS 12647-1: Graphic Technology - Process control for the
    production of halftone color separations, proof and production
    prints – part 1: Parameters and measurement methods (Revision under
    way in ISO TC130)
  - ISO/DIS 12647-2: Graphic Technology – Process control for the
    production of halftone color separations, proof and production
    prints – part 2: Offset processes (Revision under way in ISO TC130)
  - ISO/CD 12647-3: Graphic technology - Process control for the
    production of half-tone color separations, proofs and production
    prints - Part 3: Coldset offset lithography on newsprint
  - ISO/CD 12647-3: Graphic technology — Process control for the
    production of half-tone color separations, proof and production
    prints — Part 4: Publication gravure printing
  - ISO/CD 12647-6: Graphic technology – Process control for the
    production of half-tone color separations, proof and production
    prints – Part 6: Flexographic printing
  - ISO/IEC 15948: [Portable Network
    Graphics](https://zh.wikipedia.org/wiki/Portable_Network_Graphics "wikilink")
    file format (jointly defined with W3C – see
    www.libpng.org/pub/png/spec/iso)
  - ISO/IEC15444: Coding of still pictures -
    [JPEG2000](https://zh.wikipedia.org/wiki/JPEG2000 "wikilink") (ISO
    JTC 1/SC 2)
  - ISO 15930-1:2001 Graphic technology — Prepress digital data exchange
    — Use of PDF. Part 1: Complete exchange using CMYK data
    ([PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")/X-1 and
    PDF/X-1a) (ISO TC130)
  - ISO 15930-3:2002 Graphic technology — Prepress digital data exchange
    — Use of PDF. Part 3: Complete exchange suitable for color managed
    workflows (PDF/X-3) (ISO TC130)
  - ISO 15930-4:2003 Graphic technology - Prepress digital data exchange
    using PDF - Part 4: Complete exchange of CMYK and spot color
    printing data using PDF 1.4 (PDF/X-1a)
  - ISO 15930-5:2003 Graphic technology - Prepress digital data exchange
    using PDF - Part 5: Partial exchange of printing data using PDF 1.4
    (PDF/X-2)
  - ISO 15930-6:2003 Graphic technology - Prepress digital data exchange
    using PDF - Part 6: Complete exchange of printing data suitable for
    color-managed workflows using PDF 1.4 (PDF/X-3)
  - ISO 22028-1:2004 Photography and Graphic Technology – Extended color
    encodings for digital image storage, manipulation and interchange –
    Part 1: Architecture and requirements (ISO TC42)
  - ISO 12052 / NEMA PS3
    [醫療數位影像傳輸協定](https://zh.wikipedia.org/wiki/醫療數位影像傳輸協定 "wikilink")
    ([DICOM](../Page/DICOM.md "wikilink"))

</small>

### 事实标准

  - [PICT标准规范](https://zh.wikipedia.org/wiki/PICT "wikilink")（[苹果公司发行的一种文件格式](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")）
  - [PostScript语言](../Page/PostScript.md "wikilink")（[Adobe公司发行的EPS文件格式](../Page/Adobe.md "wikilink")）
  - [PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")（Adobe公司发行的文件格式）
  - [JDF](https://zh.wikipedia.org/wiki/JDF "wikilink")（CIP4联合会发行的工作定义文件格式）
  - [SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")（W3C发行的文件格式
    <http://www.w3.org/TR/SVG>）
  - [SWOP](https://zh.wikipedia.org/wiki/SWOP "wikilink")（用于CMYK印刷的规范，广泛用于北美）

## 参见

  - [色彩管理](../Page/色彩管理.md "wikilink")
  - [国际色彩联盟](../Page/国际色彩联盟.md "wikilink")

## 参考资料

<references/>

## 外部链接

  - [ICC常见问题解答](http://www.color.org/faqs.xalter)
  - [ICC色彩特性文件规范](http://www.color.org/icc_specs2.html)
  - [ICC官方用于测试[网页浏览器对于ICC色彩特性文件支持能力的页面](../Page/网页浏览器.md "wikilink")](http://www.color.org/version4html.xalter)
  - [ICC色彩特性文件在Adobe
    Photoshop中的相关文档](https://web.archive.org/web/20090220094202/http://kb.adobe.com/selfservice/viewContent.do?externalId=321382&sliceId=1)
  - [ICC色彩特性文件在Fast Picture
    Viewer中的常见问题](http://www.fastpictureviewer.com/faq/#cms)
  - [为CMYK系统设计的ICC色彩特性文件](http://www.color.org/drsection1.xalter)
  - [Argyll CMS，一个开源的色彩管理软件工具集](http://www.argyllcms.com/)
  - [dispcalGUI，Argyll
    CMS的图形化前端，用于创建和管理ICC色彩特性文件](http://hoech.net/dispcalGUI/)
  - [CoCa，一个开源的ICC色彩特性文件创建工具](http://www.nla.gov.au/preserve/dohm/coca.html)

[Category:色彩空间](https://zh.wikipedia.org/wiki/Category:色彩空间 "wikilink")

1.  [Specification ICC.1:2004-10 (Profile
    version 4.2.0.0)](http://www.color.org/ICC1V42.pdf) Image technology
    colour management — Architecture, profile format, and data
    structure;

2.
3.  [icc profiles
    download](http://www.image2output-support.com/profiles/icc/)

4.  [Version 4 ICC Specification](http://www.color.org/v4spec.xalter)

5.  [ICC profile specification published as
    ISO 15076-1:2005](http://www.color.org/News/060208.xalter)

6.  ISO 15076-1:2005. [Image technology colour management–Architecture,
    profile format and data structure–Part 1: Based on
    ICC.1:2004-10](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=40317)