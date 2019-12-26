**JPEG文件交换格式**（**JPEG File Interchange Format**，**JFIF**）是一个[图像文件格式标准](https://zh.wikipedia.org/wiki/图像文件格式 "wikilink")。它是一种交换符合[JPEG](../Page/JPEG.md "wikilink")交换格式（JIF）标准的[JPEG](../Page/JPEG.md "wikilink")编码文件的格式。它解决了JIF在简单JPEG编码文件交换方面的一些限制。与所有符合JIF的文件一样，JFIF文件中的图像数据使用[JPEG](../Page/JPEG.md "wikilink")标准的技术压缩，因此JFIF有时被称为“JPEG/JFIF”。

## 目的

JFIF定义了JPEG Part1标准（[ISO](../Page/國際標準化組織.md "wikilink")/[IEC](../Page/国际电工委员会.md "wikilink") IS 10918-1，[ITU-T建议书T](../Page/國際電信聯盟電信標準化部門.md "wikilink").81\[1\]）中未指定的许多细节：

### 组件样本注册

JPEG允许多个组件（例如[YCbCr](../Page/YCbCr.md "wikilink")）有不同的分辨率，但它没有定义不同的样本数组应该如何对齐。JFIF标准要求样本定位“[色度抽样](../Page/色度抽样.md "wikilink")”，这使解码器可以将每个组件数组视为等大小矩形的像素中心点的采样表示，并且每个阵列与图像有相同的外部边界。这对于计算机很方便，但对齐没有在MPEG-2及许多视频应用程序中使用。

### 分辨率和宽高比

JPEG标准不包括对图像分辨率或宽高比进行编码的任何方法。JFIF提供了一个通过JPEG扩展-应用程序段提供分辨率或宽高比信息的方式。它使用应用程序段\#0（Application Segment \#0），段头“JFIF\\x00”，并规定这必须是文件中的第一个段，从而使识别JFIF文件更简单。数码相机记录的[EXIF](../Page/EXIF.md "wikilink")通常不包含该段，但在其他方面通常符合JFIF标准。

### 色彩空间

JPEG没有定义图像使用哪个[色彩空間](../Page/色彩空間.md "wikilink")。JFIF定义了使用的：无论Y=灰度，或者[CCIR 601定义的](../Page/BT.601.md "wikilink")[YCbCr](../Page/YCbCr.md "wikilink")。因为这不是一个[绝对色彩空间](../Page/色彩空間.md "wikilink")——除非已提供并解释一个[ICC配置文件](../Page/国际色彩联盟.md "wikilink")、色彩空间元数据或[sRGB标签](../Page/SRGB色彩空间.md "wikilink")，解码的JFIF图像将依赖于设备的RGB色彩空间。因此，JFIF本身不提供在互联网上精确传输经色彩管理的图像的机制。

## 文件格式结构

JFIF文件由一系列标记（marker）或标记段（marker segments）组成。标记在[JPEG](../Page/JPEG.md "wikilink")标准的第一部分中定义。\[2\]每个标记由两个字节组成：一个`FF`字节后跟一个不等于`00`或`FF`的字节，并指定标记的类型。一些标记是独立的，但大多数“标记段开始”的标示包含按以下模式的数据字节：

` FF  `*`xx`*`   `*`s1`*`   `*`s2`*`   `*`数据字节`*

字节*s1*和*s2*一同表示一个大端16位整数，指定之后“数据字节”的长度加上用于表示长度的2个字节。换句话说，s1和s2指定了之后的数据字节数量为：256 \* *s1* + *s2* - 2。

根据JPEG标准第一部分，应用程序可以使用APP标记和定义应用程序指定的特定含义数据。JFIF标准中定义了下列APP标记段：

  - JFIF APP0标记段（JFIF短标记）（强制性）
  - JFIF扩展APP0标记段（JFXX短标记）（可选）

它们的描述如下：

JFIF标准需要JFIF APP0标记段必须紧随SOI标记。如果一个JFIF扩展APP0标记段被使用，它必须紧随JFIF APP0标记段。\[3\]因此一个JFIF文件将具有下列结构：

<table>
<thead>
<tr class="header">
<th><p>JFIF文件结构</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>段</p></td>
</tr>
<tr class="even">
<td><p>SOI</p></td>
</tr>
<tr class="odd">
<td><p>JFIF-APP0</p></td>
</tr>
<tr class="even">
<td><p>JFXX-APP0</p></td>
</tr>
<tr class="odd">
<td><p>… 额外标记段<br />
（例如SOF、DHT、COM）</p></td>
</tr>
<tr class="even">
<td><p>SOS</p></td>
</tr>
<tr class="odd">
<td><p>压缩的图像数据</p></td>
</tr>
<tr class="even">
<td><p>EOI</p></td>
</tr>
</tbody>
</table>

### JFIF APP0标记段

在强制性JFIF APP0标记段中指定图像的参数。可选嵌入未压缩的缩略图。

| JFIF APP0标记段 |
| ------------ |
| 字段           |
| APP0标记       |
| 长度           |
| 标识符          |
| JFIF版本       |
| 密度单位         |
| Xdensity     |
| Ydensity     |
| Xthumbnail   |
| Ythumbnail   |
| 缩略图数据        |

### JFIF扩展APP0标记段

紧随JFIF APP0标记段的可能是JFIF扩展APP0标记段。此段可能仅存在于JFIF 1.02及更高版本。它允许以3种不同的格式嵌入缩略图。

| JFIF扩展APP0标记段 |
| ------------- |
| 字段            |
| APP0标记        |
| 长度            |
| 标识符           |
| 缩略图格式         |
| 缩略图数据         |

缩略图数据取决于缩略图格式，如下所示：

| 使用JPEG编码存储的缩略图 |
| -------------- |
| 字段             |
| SOI            |
| 可变             |
| EOI            |

| 每个像素使用一个字节存储的缩略图 |
| ---------------- |
| 字段               |
| Xthumbnail       |
| Ythumbnail       |
| 缩略图调色板           |
| 缩略图数据            |

| 每个像素使用三个字节存储的缩略图 |
| ---------------- |
| 字段               |
| Xthumbnail       |
| Ythumbnail       |
| 缩略图数据            |

## 兼容性

较新的[EXIF](../Page/EXIF.md "wikilink")与JFIF兼容，但这两个标准互不兼容。这是因为这两个标准都规定了它们特定的应用程序段（JFIF为APP0，Exif为APP1）必须紧随SOI标记。在实践中，许多程序和数码相机生成包括两个应用程序段的文件。这不会影响大多数解码器的图像解码，但设计不良的JFIF或Exif解析器可能无法正确识别文件。

JFIF与Adobe [Adobe Photoshop的JPEG](../Page/Adobe_Photoshop.md "wikilink")“信息资源块”扩展和元数据兼容，因为JFIF不排除其他应用程序段，并且Photoshop扩展不要求它在文件中的第一个段。但是，Photoshop一般将CMYK缓冲区保存为四组元“Adobe JPEGs”，这不符合JFIF。由于这些文件不是YCbCr色彩空间，它们不能被很多网页浏览器或其他互联网软件解码。

## 历史

该标准于1991年3月1日在C-Cube Microsystems的一个涉及许多公司代表的会议上建立，这些公司包括：C-Cube Microsystems、Radius、NeXT、Storm Tech、PD JPEG小组、Sun和Handmade软件。该标准似乎已失去了所有人，因为C-Cube Microsystems已停产，该标准的进一步发展已停滞。最新版本为v1.02，发布于1992年9月1日。\[4\]

JFIF已标准化为ISO/IEC 10918-5:2013，\[5\][ITU-T](../Page/國際電信聯盟電信標準化部門.md "wikilink") T.871\[6\]和[Ecma International](../Page/Ecma国际.md "wikilink") TR/98。\[7\]

1996年，[RFC](../Page/RFC.md "wikilink") 2046指定了在互联网上传输JPEG图像的图形格式应使用JFIF。[互联网媒体类型](../Page/互联网媒体类型.md "wikilink")“image/jpeg”必须编码为JFIF。但在具体实践中，几乎所有互联网软件都可以解码任何使用Y或YCbCr组件的JIF图像，无论其是否兼容JFIF。

## 参考资料

## 拓展阅读

### 书籍

  - Miano, John M., "Compressed Image File Formats." 1999, Addison-Wesley. ISBN 978-0-201-60443-6.
  - Pennebaker, William B. and Joan L. Mitchell: *JPEG still image data compression standard.* 3rd edition, 1993. Springer. ISBN 978-0-442-01272-4.

### 标准

  - Hamilton, Eric: [*JPEG File Interchange Format, Version 1.02.*](http://www.w3.org/Graphics/JPEG/jfif3.pdf) (PDF, 0,02 MB) 1992-09-01.
  - ITU-T Recommendation T.871: \[<https://www.itu.int/rec/dologin_pub.asp?lang=e&id=T-REC-T.871-201105-I>\!\!PDF-E\&type=items *TERMINALS FOR TELEMATIC SERVICES. Still-image compression – JPEG-1 extensions. Information technology – Digital compression and coding of continuous-tone still images: JPEG File Interchange Format (JFIF). 2011-05-14.*\] (PDF, 0,2 MB)
  - ITU-T Recommendation T.81: [*CCITT: TERMINAL EQUIPMENT AND PROTOCOLS FOR TELEMATIC SERVICES. INFORMATION TECHNOLOGY – DIGITAL COMPRESSION AND CODING OF CONTINUOUS-TONE STILL IMAGES – REQUIREMENTS AND GUIDELINES. 1992-09-18.*](http://www.w3.org/Graphics/JPEG/itu-t81.pdf) (PDF, 1,1 MB)

[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")

1.
2.
3.
4.
5.
6.
7.