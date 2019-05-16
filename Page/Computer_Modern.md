**Computer
Modern**是排版程序[TeX使用的原创](../Page/TeX.md "wikilink")[字体系列](../Page/字体.md "wikilink")。它是由[高德纳](../Page/高德纳.md "wikilink")（）用他的[Metafont程序创建的](../Page/METAFONT.md "wikilink")，最近的一次更新为1992年。\[1\]
Computer
Modern或其变体在科学出版中，尤其在经常使用[數學符號的学科中仍然被广泛使用](../Page/數學符號.md "wikilink")。

## 设计

正如这个名字所暗示的，Computer
Modern是一种“[现代](https://zh.wikipedia.org/wiki/Didone_\(typography\) "wikilink")”[衬线字体](../Page/衬线体.md "wikilink")，是18世纪末期出现的一种类型，与之前的更不规则的设计形成鲜明对比。现代或“[Didone](https://zh.wikipedia.org/wiki/Didone_\(typography\) "wikilink")”，字体在粗细元素之间具有较高的对比度，其“强调”或加粗的轴线完全垂直。具体来说，Computer
Modern是基于[Monotype](../Page/蒙納公司.md "wikilink") Modern
8a，就像它的直接模型，它的[X字高相对于](https://zh.wikipedia.org/wiki/X字高 "wikilink")[升部和](https://zh.wikipedia.org/wiki/升部 "wikilink")[降部的长度来说是较大的](https://zh.wikipedia.org/wiki/降部 "wikilink")。在[Times
New
Roman字体出现之前](../Page/Times_New_Roman.md "wikilink")，数学排版中广泛使用Monotype
Modern字体，而在20世纪50年代后，出版商就开始用Times New Roman进行排版了。\[2\]\[3\]\[4\]
它被选为TeX的默认字体显示了Knuth渴望回归经典金属印刷的辉煌。\[5\]

然而，Computer
Modern最不寻常的特点是，它是用[Metafont系统设计的一个完整的字类](../Page/METAFONT.md "wikilink")。Computer
Modern源文件由62个不同的参数控制，这些参数控制着各种元素的宽度和高度，以及[衬线或](../Page/衬线体.md "wikilink")[古风体数字是否出现](../Page/不齐线数字.md "wikilink")、字符"i"上的点是方的还是圆的，还有"g"和"o"等小写字母的碗型的“[超级](../Page/超橢圓.md "wikilink")”程度。这就让Metafont的设计可以用不寻常的方式进行处理；Knuth在演示中已经展示了变形等效果，对于一段文字，令其从一种字体慢慢地转变为另一种字体。\[6\]
Computer Modern绝对不是唯一一种Metafont设计的字体，但它是目前最成熟、应用最广泛的。

## 派生版本

[CMU_Fonts.svg](https://zh.wikipedia.org/wiki/File:CMU_Fonts.svg "fig:CMU_Fonts.svg")
Knuth使用[Metafont生成了他原始的Computer](../Page/METAFONT.md "wikilink")
Modern字体，该程序读取基于笔画的字形定义，并将直接可以使用的字体输出为位图图像文件。

出版技术的进步（PostScript、PDF、激光打印机）减少了对位图字体的需求。现在首选格式是轮廓字体，如[Type
1](https://zh.wikipedia.org/wiki/Type_1_font "wikilink")、[TrueType或](../Page/TrueType.md "wikilink")[OpenType](../Page/OpenType.md "wikilink")，可以以任意分辨率高效渲染，并使用打印机固件或屏幕文档查看器的复杂抗锯齿技术。于是，多个其他项目把Computer
Modern字体移植到了这些格式。一些项目还在Computer Modern上加入了

  - 附加字符（欧元、重音字符、西里尔和希腊字母手写体）
  - 不同的字体编码（以克服Knuth原始的8位字符集的问题）
  - 额外的字体样式

现在，这些衍生字体已得到广泛应用，并包含在现代TeX发行版[TeX
Live中](https://zh.wikipedia.org/wiki/TeX_Live "wikilink")。

目前，以通用的[OpenType格式发布的Computer](../Page/OpenType.md "wikilink")
Modern字类—— CMU发行版（下方有链接）包括：

  - CMU Serif，Computer Modern主要字体。这包括四种传统风格的字体（常规、斜体、粗体、粗斜体）以及：
      - CMU Serif upright
        italic，类似于直立的手写体的[直立意大利体风格](../Page/意大利体.md "wikilink")
      - CMU Serif bold non-extended，粗体字重但与标准风格字宽相同
      - CMU Serif roman与bold
        slanted，两种[伪斜体风格](../Page/伪斜体.md "wikilink")
      - CMU Classical Serif，略微简单的[衬线设计的斜体设计](../Page/衬线体.md "wikilink")
  - [Concrete
    Roman](https://zh.wikipedia.org/wiki/Concrete_Roman "wikilink"),
    包括四种标准风格的一种[粗衬线字体](../Page/粗衬线体.md "wikilink")
  - CMU Typewriter，一种打印机风格的粗衬线字体
  - CMU Sans Serif，一个补充的[无衬线字体](../Page/无衬线体.md "wikilink")，还有CMU
    Bright，是同一设计较轻风格的一个字体
      - CMU Sans demi-condensed，同一设计的紧缩风格

### BlueSky

Computer Modern在1988年被BlueSky公司首次转换为PostScript [Type
3字体格式](https://zh.wikipedia.org/wiki/PostScript_fonts "wikilink")，然后在1992年转换为Type
1，以包含[字体微调](https://zh.wikipedia.org/wiki/字体微调 "wikilink")。\[7\] 此后，Type
1版本已捐赠给[美國數學學會](../Page/美國數學學會.md "wikilink")（AMS），根据开放字体许可证自由分发。\[8\]
在大多数标准TeX发行版中都有。

### Latin Modern

由Bogusław Jackowski和Janusz M. Nowacki维护的Latin
Modern实现，现在是[TeX社区的标准](../Page/TeX.md "wikilink")，它是用[Metafont](../Page/METAFONT.md "wikilink")/[MetaPost的派生版本](../Page/MetaPost.md "wikilink")[METATYPE1制作的](https://zh.wikipedia.org/wiki/METATYPE1 "wikilink")。该字体从BlueSky
Type 1字体派生，基于METATYPE1程序转回轮廓，并开发了扩展的Type1和OpenType Latin
Modern字体。[ConTeXt使用Latin](https://zh.wikipedia.org/wiki/ConTeXt "wikilink")
Modern作为默认字体，而不是Computer Modern 。\[9\]

Latin Modern字体制作中涉及到的Type 1到METATYPE1到Type
1往返转换过程的确尝试保留了BlueSky字体的微调信息，但是它增加了在低像素尺寸下影响提示质量的舍入误差。因此，Latin
Modern的屏幕显示会比BlueSky字体，在字距调整和字符高度上更不均匀。\[10\]

综合项目[TeX
Gyre以同样的过程制作了一些自由PostScript字体克隆](https://zh.wikipedia.org/wiki/TeX_Gyre "wikilink")。\[11\]

Latin
Modern字体也获得了[OpenType数学字符表](../Page/OpenType.md "wikilink")。\[12\]\[13\]

### 其他

  - EC字体 – 看起来很像Computer
    Modern，不过指标上略有不同。这些是第一个使用“[Cork编码](https://zh.wikipedia.org/wiki/Cork_encoding "wikilink")”（LaTeX也称为T1编码）的TeX字体，它为西欧语言提供了预设的字形。原始EC字体只有Metafont生成的位图。
  - TC字体 – 提供了许多通常用于文本的附加符号的TeX Companion字体。
  - BaKoMa字体 – 另一个由Basil K. Malyshev自动生成的Computer Modern的Type1版本。
  - CM-super\[14\] – Computer Modern的一个非常大的扩展，可用于各种编码。这些字体自动从Computer
    Modern或EC字体位图向量化，因此缺少BlueSky字体中的微调信息。
  - CM-LGC – 拉丁、希腊、西里尔字母扩展
  - GUST \[15\] – 加了许多变音符和越南语

## 参见

  - ，创建与[Times New
    Roman兼容的数学字体的项目](../Page/Times_New_Roman.md "wikilink")。在[SIL开源字体授权下开源](../Page/SIL开源字体授权.md "wikilink")。

  - [Surveyor](https://zh.wikipedia.org/wiki/Surveyor_\(typeface\) "wikilink")，[Tobias
    Frere-Jones开发的一种通用商业字体](https://zh.wikipedia.org/wiki/Tobias_Frere-Jones "wikilink")。与Computer
    Modern Serif风格相同，但样式、字重和[字型更为广泛](../Page/字型.md "wikilink")。\[16\]

## 参考文献

## 延伸阅读

  - Donald E. Knuth, *Computers and Typesetting Volume E: The Computer
    Modern Fonts*, Addison-Wesley, Reading, Mass. 1986 Hardcover: ,
    Softcover:

## 外部链接

  - [Computer Modern release, for general use (select
    otf)](http://cm-unicode.sourceforge.net/download.html)

[Category:字体](https://zh.wikipedia.org/wiki/Category:字体 "wikilink")
[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink")

1.
2.  Daniel Rhatigan, [The Monotype 4-line System for Setting
    Mathematics](http://www.typeculture.com/academic_resource/articles_essays/)

3.  Daniel Rhatigan, [Three Typefaces for Setting
    Mathematics](http://www.typeculture.com/academic_resource/articles_essays/)

4.  T. W. Chaundy, P. R. Barett, Charles Batey, *The Printing of
    Mathematics*, Oxford University Press (1954, 1957)
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
16.