[Hue_alpha.png](https://zh.wikipedia.org/wiki/File:Hue_alpha.png "fig:Hue_alpha.png")
**RGBA**是代表**R**ed（[紅色](https://zh.wikipedia.org/wiki/紅色 "wikilink")）**G**reen（[綠色](../Page/綠色.md "wikilink")）**B**lue（[藍色](../Page/藍色.md "wikilink")）和**A**lpha的[色彩空間](../Page/色彩空間.md "wikilink")。虽然它有的时候被描述为一个颜色空间，但是它其实仅仅是[RGB模型的附加了额外的信息](https://zh.wikipedia.org/wiki/RGB "wikilink")。采用的颜色是RGB，可以属于任何一种RGB[颜色空间](https://zh.wikipedia.org/wiki/颜色空间 "wikilink")，但是[Catmull和](https://zh.wikipedia.org/wiki/Edwin_Catmull "wikilink")[Smith在](https://zh.wikipedia.org/wiki/Alvy_Ray_Smith "wikilink")1971至1972年间提出了这个不可或缺的alpha数值，使得[alpha渲染和](https://zh.wikipedia.org/wiki/alpha渲染 "wikilink")[alpha合成变得可能](https://zh.wikipedia.org/wiki/alpha合成 "wikilink")。提出者以*alpha*来命名是源于经典的[线性插值](../Page/线性插值.md "wikilink")方程αA
+ (1-α)B所用的就是这个[希腊字母](../Page/希腊字母.md "wikilink")。

**alpha通道**一般用作不透明度参数。如果一个像素的alpha通道数值为0%，那它就是完全透明的（也就是看不见的），而数值为100%则意味着一个完全不透明的像素（传统的-{zh:数字;zh-cn:数字;zh-tw:數位;}-图像）。在0%和100%之间的值则使得像素可以透过背景显示出来，就像透过玻璃（半透明性），这种效果是简单的二元透明性（透明或不透明）做不到的。它使[数码合成变得容易](https://zh.wikipedia.org/wiki/数码合成 "wikilink")。alpha通道值可以用百分比、整数或者像RGB参数那样用0到1的实数表示。

有时它也被写成**ARGB**（像RGBA一样，但是第一个数据是alpha），是[Macromedia](../Page/Macromedia.md "wikilink")的产品使用的术语。比如，0x80FFFF00是50%透明的黄色，因为所有的参数都在0到255的范围内表示。0x80是128，大约是255的一半。

[PNG](../Page/PNG.md "wikilink")是一种使用**RGBA**的图像格式。

## 关于Alpha通道与RGBA的关系

在电影工业中，常常需要前景和背景合成，无论是传统胶片电影还是现在的-{zh:数字电影;zh-cn:数字电影;zh-tw:數位電影;}-，合成都是必须的。在-{zh:数字电影;zh-cn:数字电影;zh-tw:數位電影;}-出现之前，从事传统胶片电影制作和合成的人们积累了大量的传统合成经验，例如蓝屏，Matte
Creation等。

随着计算机图形学的发展，后来出现了-{zh:数字电影;zh-cn:数字电影;zh-tw:數位電影;}-。这样人们开始通过电脑来模拟传统电影合成的一些技巧，如蓝屏，Matte，Mask等，但这些并没有为-{zh:数字;zh-cn:数字;zh-tw:數位;}-合成真正的作出贡献，只不过是将化学、光学操作转换为计算机计算而已，虽说可以比传统的合成操作有所提高，但基本概念没有改变。

Mask是Matte的一种特例。在Mask里，只有两种透明度，1和0，即完全透明和完全不透明。Mask的产生是为了去除合成时的锯齿而设计的，但锯齿没了，不过合成痕跡太明显，显得很不真实。而Matte则可以包含很多层次的透明度，图像中每个像素都可以有自己的透明度，这些像素的透明度有着丰富的层级，可以合成、融合。
Alpha通道的产生是对-{zh:数字;zh-cn:数字;zh-tw:數位;}-合成的一大贡献。因为在传统电影合成操作中，为了制作Matte，通常需要两盘独立的胶片，一盘记录运动影像，一盘则记录Matte信息。合成时，需要背景胶片、前景胶片、Matte胶片。也就是说Matte信息和图像信息独立存在。而Catmull/Smith小组开发的Alpha通道概念就方便了很多，而且可以让任何人使用Alpha通道。他们首次推出**RGBA**概念，即将Alpha通道和RGB通道并列，并一同存储在图像信息中。这样随着一幅图像的建立（这里说的是CGI），其Alpha通道也会随之产生或者存储。这样Alpha通道其实是Matte的概念，但它和图像信息一并存储和移动，这样Matte信息就变成影像的一部分，而不像传统电影合成时，需要单独的一盘胶片提供Matte信息，这也是**RGBA**的优势所在。有了**RGBA**的概念，-{zh:数字;zh-cn:数字;zh-tw:數位;}-合成变得更加轻松容易。当然为了提高合成效率，后来Catmull
/ Smith小组又在Integral Alpha的基础上提出Premultiplied Alpha。

[Category:色彩空間](https://zh.wikipedia.org/wiki/Category:色彩空間 "wikilink")