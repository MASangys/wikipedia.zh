**JPEG Network
Graphics**（缩写**JNG**，)）是一个基于[JPEG的](../Page/JPEG.md "wikilink")[图形文件格式](https://zh.wikipedia.org/wiki/图形文件格式 "wikilink")，但它与[PNG也密切相关](../Page/PNG.md "wikilink")：它使用PNG文件结构（使用不同的签名）作为包装JPEG编码的图像数据的[容器格式](../Page/视频文件格式.md "wikilink")。

## 格式

JNG被作为[MNG动画格式的附件创建](https://zh.wikipedia.org/wiki/MNG "wikilink")，但也可用作独立格式。JNG文件嵌入一个8位元或12位元的JPEG数据流来存储颜色数据，并可能嵌入另一个数据流（1,
2, 4, 8, 16-bit PNG, or 8-bit JPEG grayscale
image）存储透明度信息。但是，一个JNG可能为颜色信息包含两个独立的JPEG数据流（一个8位元**及**一个12位元）以允许不能（或不希望）解码12位元数据流的解码器显示8位元的数据流。

JNG规范1.0版本发布于2001年1月31日（最初作为MNG规范的一部分）。通常来说，所有支持MNG文件格式的应用程序也都可以处理JNG文件。例如，[Konqueror原生支持MNG](../Page/Konqueror.md "wikilink")/JNG，[Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")、[Internet
Explorer和](../Page/Internet_Explorer.md "wikilink")[Mozilla
Firefox也都有MNG](../Page/Firefox.md "wikilink")/JNG插件可用。[Mozilla
Application
Suite](../Page/Mozilla_Application_Suite.md "wikilink")（[Netscape继任者](../Page/網景_\(瀏覽器\).md "wikilink")）原本支持MNG/JNG，但原生支持已于Mozilla
1.5a中被开发者移除，Mozilla自此不再支持该格式。[Safari不支持MNG](../Page/Safari.md "wikilink")/JNG。

通过支持透明度、两个连续的彩色流（一个8位元与一个12位元）以及其他有用的PNG特性（例如颜色校正、伽马校正、嵌入颜色配置文件、PNG式元数据、校验和等），JNG增强了[JFIF格式](https://zh.wikipedia.org/wiki/JFIF "wikilink")（普通的JPEG文件格式）的能力。JNG文件内的透明度信息（作为一个[阿尔法通道](https://zh.wikipedia.org/wiki/阿尔法通道 "wikilink")）可以保存在无损的PNG格式或有损的JPEG格式。因此，用户可以受益于JPEG的压缩效果，并同时保持无损（PNG压缩）的透明度信息。

基于块结构的JNG文件基本上与PNG文件相同，区别仅在于略有不同的签名和不同的块使用。

| 名称                                 | 签名                                     |
| ---------------------------------- | -------------------------------------- |
| [十六进制](../Page/十六进制.md "wikilink") | [ASCII](../Page/ASCII.md "wikilink") + |
| PNG                                | `89 50 4E 47 0D 0A 1A 0A`              |
| MNG                                | `8A 4D 4E 47 0D 0A 1A 0A`              |
| JNG                                | `8B 4A 4E 47 0D 0A 1A 0A`              |

网络图形签名

JNG没有已注册的[互联网媒体类型](../Page/互联网媒体类型.md "wikilink")，但可以使用`image/x-jng`。\[1\]

## 备选方案

由于JNG和MNK格式缺乏广泛使用，它已不再使用，应使用其他具有类似质量但仍被积极开发的格式：

  - [JPEG
    XR](../Page/JPEG_XR.md "wikilink")：支持宽色彩空间和一个有透明度的有损格式（JNG竞争者，已标准化）
  - [WebP](../Page/WebP.md "wikilink")：支持透明度和动画的有损格式（JNG/MNG竞争者，尚未标准化）

## 备注

<references />

## 外部链接

  - [JNG 1.0规范](http://www.libpng.org/pub/mng/spec/jng.html)
  - [Photoshop插件（适用于Photoshop7.0或更高）](http://www.libpng.org/pub/mng/bin/JNG_Plugin-0.8-photoshop7-win32.zip)
  - [Amiga数据类型（适用于AmigaOS 4.0或更高）](http://www.unsatisfactorysoftware.co.uk/download.php?file=jng_dt)

[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")

1.  [JNG官方规范](http://www.libpng.org/pub/mng/spec/jng.html)，段落1