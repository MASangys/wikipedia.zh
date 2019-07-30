**PostScript字型**是由[Adobe Systems為專業](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink")[數字排版開發的](https://zh.wikipedia.org/wiki/桌面排版 "wikilink")[大綱字體規範編碼的字體文件](https://zh.wikipedia.org/wiki/計算機字體 "wikilink")。該系統使用[PostScript](../Page/PostScript.md "wikilink")文件格式來編碼字型信息。

PostScript字型也可以單獨用於指代PostScript系統中作為標準包括的基本字體集，例如[Times](https://zh.wikipedia.org/wiki/Times "wikilink")，[Helvetica](../Page/Helvetica.md "wikilink")和[Avant Garde](https://zh.wikipedia.org/wiki/ITC_Avant_Garde "wikilink")。

## 历史

[Adobe](../Page/Adobe.md "wikilink")在1984年的[PostScript](../Page/PostScript.md "wikilink")页面描述语言中定义了Type 1和Type 3字型格式。但在1985年3月支持PostScript的激光打印机[Apple LaserWriter面世](https://zh.wikipedia.org/wiki/LaserWriter "wikilink")，它才真正流行起来。在当时，轮廓字型只在打印机中使用，屏幕上依旧用位图字体（）。

尽管在最初，Type 1字型是作为PostScript的一部分出现的，其所采用的一组绘制操作要比普通的PostScript简单（和[PDF相类似](https://zh.wikipedia.org/wiki/PDF "wikilink")，循环和变量等编程特性被移除了），但是增加了[渲染提示](https://zh.wikipedia.org/wiki/字体微调 "wikilink")（）以提升低分辨率渲染效果。开始的时候，Adobe并没有公开渲染提示方案的细节，用一种简单的加密方案将Type 1轮廓数据和渲染提示保护了起来，加密也延续至今（尽管加密方案和密钥早已被Adobe公开）。但这一加密方案很快被业界同行的反向工程所破解。虽然如此，Adobe仍要求Type 1字型技术的使用者需要许可证授权。

许可证的要价在当时看来是颇高的，Adobe的坚守让价格居高不下。正因如此，苹果公司于1991年决定开发自己的[TrueType](../Page/TrueType.md "wikilink")格式。TrueType一经发布，Adobe就公开了Type 1字型格式的定义和说明。

Type 3字型支持PostScript语言的全部特性，但是没有标准的渲染提示实现，也没有加密方案。而Type 2字型成为了现代[OpenType](../Page/OpenType.md "wikilink")字型格式的基础之一。\[1\]

## 技术

字形（）通过[PostScript](../Page/PostScript.md "wikilink")（PS）语言用[三阶](../Page/三次平面曲线.md "wikilink")[贝塞尔曲线](https://zh.wikipedia.org/wiki/贝塞尔曲线 "wikilink")（[TrueType](../Page/TrueType.md "wikilink")使用[二阶](https://zh.wikipedia.org/wiki/二次平面曲线 "wikilink")[贝塞尔曲线](https://zh.wikipedia.org/wiki/贝塞尔曲线 "wikilink")）描述，字形因此可以通过简单的数学变换调整大小，然后被送到PostScript打印机中。因为Type 1数据描述的是字形的轮廓而不是栅格化的图像（即[位图](../Page/位图.md "wikilink")），Type 1字型通常被称为“轮廓字型”，以和位图字型（）相对比。为了满足需要在屏幕上预览字体的用户，利用[渲染提示](https://zh.wikipedia.org/wiki/字体微调 "wikilink")（）和[抗锯齿技术可以让文字显示效果变得平滑易认](https://zh.wikipedia.org/wiki/抗锯齿 "wikilink")。有时也会加入相同字体的位图版本优化屏幕显示。[Adobe Type Manager实用程序可以显示Type](https://zh.wikipedia.org/wiki/Adobe_Type_Manager "wikilink") 1字型。

## 字型格式

### CFF

**紧凑字型格式**（，亦称为Type 2字型格式，或CFF/Type2字型格式）是使用了Type 2字符串、对Type 1无损压缩的一种字型格式。\[2\]通过使用多参数的运算符、各种预定义的默认值、更有效的编码值分配、字型间（一个字体家族内）共享子例程，它相较于Type 1可以占用更小的空间。

所谓的PostScript或Type 1风格[OpenType](../Page/OpenType.md "wikilink")字体，亦称为OpenType CFF，在CFF表中写入了字形轮廓和渲染提示。

从PDF 1.2开始，CFF字体可以嵌入PDF文档。这已成为在PDF中显示Type 1字型的一般方法。

CID键字型（）可以在CFF表中用Type 2字符串表示。

Type 1字体可以无损地转换为CFF/Type 2字型，反之亦然。

### CID键字型

**CID键字型**（亦称CID字型、CID基础字型，；其中是的缩写，即“字符标识符字体”）原本是为[PostScript](../Page/PostScript.md "wikilink")开发的字体格式，设计用于制作字形数量庞大的字型。CID字型开发用于支持东亚文字集。

## 参考文献

## 外部链接

### 字型格式定义

  - [Adobe Type 1 Font Format (PDF: 445 KB)](http://wwwimages.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/T1_SPEC.pdf)
  - [Adobe Technical Note \#5015: Type 1 Font Format Supplement (PDF: 225 KB)](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5015.Type1_Supp.pdf)
  - [Adobe Technical Note \#5176: The CFF (Compact Font Format) Specification, (PDF: 251 KB)](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5176.CFF.pdf)
  - [Adobe Technical Note \#5177: Type 2 Charstring Format (PDF: 212 KB)](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5177.Type2.pdf)
  - [Adobe Technical Note \#5012: The Type 42 Font Format Specification](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5012.Type42_Spec.pdf)
  - [Adobe Technical Note \#5014: Adobe CMap and CIDFont Files Specification](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5014.CIDFont_Spec.pdf)
  - [Adobe Technical Note \#5004: Adobe Font Metrics (AFM) File Format Specification](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5004.AFM_Spec.pdf)

### 关于字型

  - [Font Formats Q\&A](http://www.adobe.com/products/type/adobe-type-references-tips/font-formats.html)
  - [Adobe font technical notes](http://www.adobe.com/devnet/font.html)
  - [Adobe CID fonts](http://www.adobe.com/products/postscript/pdfs/cid.pdf)
  - [Adobe Technical Note \#5092: CID-Keyed Font Technology Overview](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5092.CID_Overview.pdf)
  - [Adobe Technical Note \#5178: Building PFM Files for PostScript-Language CJK Fonts](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5178.PFM.pdf)
  - [Adobe Technical Note \#5641: Enabling PDF Font Embedding for CID-Keyed Fonts](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5641.CID_Embed.pdf)

### 字符集信息

  - [Common Character Sets](http://www.adobe.com/type/browser/info/charsets.html)
  - [Adobe Latin Character Sets](https://github.com/adobe-type-tools/adobe-latin-charsets)
  - [Adobe Greek Character Sets](https://github.com/adobe-type-tools/adobe-greek-charsets)
  - [Adobe Cyrillic Character Sets](https://github.com/adobe-type-tools/adobe-cyrillic-charsets)
  - [Adobe Technical Note \#5078: Adobe-Japan1-6 Character Collection for CID-Keyed Fonts](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5078.Adobe-Japan1-6.pdf)
  - [Adobe Technical Note \#5079: The Adobe-GB1-5 Character Collection](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5079.Adobe-GB1-5.pdf)
  - [Adobe Technical Note \#5080: The Adobe-CNS1-6 Character Collection](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5080.Adobe-CNS1-6.pdf)
  - [Adobe Technical Note \#5093: The Adobe-Korea1-2 Character Collection](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5093.Adobe-Korea1-2.pdf)
  - [Adobe Technical Note \#5094: Adobe CJKV Character Collections and CMaps for CID-Keyed Fonts](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5094.CJK_CID.pdf)
  - [Adobe Technical Note \#5097: Adobe-Japan2-0 Character Collection for CID-Keyed Fonts](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/5097.Adobe-Japan2-0.pdf)

### 关于核心字型

  - [PostScript Type 1 fonts](http://www.prepressure.com/fonts/basics/type1)
  - [Adobe Technical Note \#5609: PostScript 3 Core Font Set Overview](http://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/TN5609.PS3_Fonts.pdf)
  - [The Adobe PostScript 3 Font Set](http://www.adobe.com/products/postscript/pdfs/ps3fonts.pdf)
  - [Apache FOP: fonts](http://xmlgraphics.apache.org/fop/0.95/fonts.html)

### 杂项

  - [comp.fonts FAQ: OS/2 2.1 and beyond](http://nwalsh.com/comp.fonts/FAQ/cf_70.htm)
  - [comp.lang.postscript FAQ](https://web.archive.org/web/19990203024245/http://www.postscript.org/FAQs/language/FAQ.html)
  - [About Fonts](https://web.archive.org/web/20070929152910/http://www.asy.com/fonts.htm)
  - [Fonts, Fonts, and more Fonts\!](https://web.archive.org/web/20080216102351/http://www.ntg.nl/eurotex/KacvinskyFonts.pdf)

[Category:數碼字體排印](https://zh.wikipedia.org/wiki/Category:數碼字體排印 "wikilink")

1.
2.