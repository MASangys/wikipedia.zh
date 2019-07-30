[缩略图](https://zh.wikipedia.org/wiki/File:Datamatrix.svg "fig:缩略图") **Data Matrix**（数据矩阵），是一种由[黑色](../Page/黑色.md "wikilink")、[白色](../Page/白色.md "wikilink")的色块（单元格）以[正方形](../Page/正方形.md "wikilink")或[长方形组成的](../Page/矩形.md "wikilink")[二维条码](../Page/条形码.md "wikilink")（也可称[矩阵](../Page/矩阵.md "wikilink")），于1994年8月由美国国际资料公司所研发出，主要用于零件、[印制电路板等等](https://zh.wikipedia.org/wiki/印制电路板 "wikilink")，美国国际资料公司于2008年被Microscan公司收购。\[1\]\[2\]\[3\]被编码的信息可能是文本或数字数据。数据大小通常是几个至1556[字节](../Page/字节.md "wikilink")。被编码数据的长度决定了矩阵中色块的数量。编码时经常使用[纠错码来增加可靠性](../Page/前向錯誤更正.md "wikilink")：即便一个或多个色块被损坏而不可读，里面的信息仍然可被读取。一个数据矩阵可以存储最多2,335个[数字或字母](https://zh.wikipedia.org/wiki/文數字 "wikilink")。

## 应用

[缩略图](https://zh.wikipedia.org/wiki/File:Intelwireless-datamatrix.jpg "fig:缩略图")板卡上的数据矩阵，编码了序列号15C06E115AZC72983004\]\] Data Matrix最流行的应用是小物件的标签，因为该编码能在2或3[平方](../Page/平方.md "wikilink")毫米的面积上编码50个字符，且在20%对比度下仍然可读。\[4\]Data Matrix的大小不受限制，商业应用的图像包括小至300[微米](../Page/微米.md "wikilink")（在一台600微米[硅](../Page/硅.md "wikilink")装置上激光蚀刻）和大至1[米](../Page/米_\(单位\).md "wikilink")（涂在[棚车](../Page/棚车.md "wikilink")顶上）的平面。绘制与读取系统的保真度是其唯一的限制。

美国[电子工业联盟](https://zh.wikipedia.org/wiki/电子工业联盟 "wikilink")（EIA）建议使用Data Matrix标注小型[电子元件](https://zh.wikipedia.org/wiki/电子元件 "wikilink")。\[5\]

将Data Matrix编码打印在或[书信](../Page/书信.md "wikilink")上正日益普遍。使用一台即可快速读取该编码，从而便于跟踪物品，例如跟踪包裹的邮递。 [左](https://zh.wikipedia.org/wiki/File:Matrix-46.PNG "fig:左") 对工业工程来说，此条码也可直接在组件上标记，从而使用Data Matrix编码数据来识别组件。厂商可以用各种方法在在组件上完成，但在[航空航天](../Page/航空航天.md "wikilink")工业中，条码通常以工业喷墨、点阵打标、激光打标和电解化学蚀刻（ECE）完成，使用这些方法来得到可延续到组件寿命的永久性标记。

Data Matrix编码通常使用专业摄像设备及软件进行验证。这种验证确保编码符合相关标准，并确保组件使用寿命期间的可读性。在组件投入使用后，该代码仍可被读取镜头读取、解码，解码后的信息可用于多种目的，例如移动跟踪和库存检查。 [缩略图](https://zh.wikipedia.org/wiki/File:Semapedia.jpg "fig:缩略图")项目）\]\] Data Matrix编码与其他开源编码（例如1D Barcodes）一样，也可以在手机上使用特定的移动应用来读取。

### 食品工业

### 艺术

2006年5月，德国计算机程序员BerndHopfengärtner创作了一个大型的数据矩阵[麥田圈](../Page/麥田圈.md "wikilink")，内藏信息为：“[Hello, World\!](../Page/Hello_World.md "wikilink")”。\[6\]

## 技术规格

[缩略图](https://zh.wikipedia.org/wiki/File:Datamatrix-modulecolours.png "fig:缩略图")

### Data Matrix ECC 200

1826 DFR50-IC-U

### Data Matrix ECC 000–140

## 标准

Data Matrix was invented by International Data Matrix, Inc. (ID Matrix) which was merged into /, who were acquired by [Siemens](../Page/西门子公司.md "wikilink") AG in October, 2005 and  in September 2008. Data Matrix is covered today by several [ISO](../Page/國際標準化組織.md "wikilink")/[IEC](../Page/国际电工委员会.md "wikilink") standards and is in the public domain for many applications, which means it can be used free of any licensing or royalties.

  - ISO/IEC 16022:2006—Data Matrix bar code symbology specification
  - ISO/IEC 15415—2-D Print Quality Standard
  - ISO/IEC 15418:2009—Symbol Data Format Semantics (GS1 Application Identifiers and ASC MH10 Data Identifiers and maintenance)
  - ISO/IEC 15424:2008—Data Carrier Identifiers (including Symbology Identifiers) \[IDs for distinguishing different bar code types\]
  - ISO/IEC 15434:2006—Syntax for high-capacity ADC media (format of data transferred from scanner to software, etc.)
  - ISO/IEC 15459—Unique Identifiers

## 编码

[缩略图](https://zh.wikipedia.org/wiki/File:SiemensDMCeq.JPG "fig:缩略图")

### 文字模型

| Code  | C40   | Text  | X12   |
| ----- | ----- | ----- | ----- |
| set 0 | set 1 | set 2 | set 3 |
| 0     | set 1 | NUL   | \!    |
| 1     | set 2 | SOH   | "     |
| 2     | set 3 | STX   | \#    |
| 3     | space | ETX   | $     |
| 4     | 0     | EOT   | %     |
| 5     | 1     | ENQ   | &     |
| 6     | 2     | ACK   | ‘     |
| 7     | 3     | BEL   | (     |
| 8     | 4     | BS    | )     |
| 9     | 5     | HT    | \*    |
| 10    | 6     | LF    | \+    |
| 11    | 7     | VT    | ,     |
| 12    | 8     | FF    | \-    |
| 13    | 9     | CR    | .     |
| 14    | A     | SO    | /     |
| 15    | B     | SI    | :     |
| 16    | C     | DLE   | ;     |
| 17    | D     | DC1   | \<    |
| 18    | E     | DC2   | \=    |
| 19    | F     | DC3   | \>    |
| 20    | G     | DC4   | ?     |
| 21    | H     | NAK   | @     |
| 22    | I     | SYN   | \[    |
| 23    | J     | ETB   | \\    |
| 24    | K     | CAN   | \]    |
| 25    | L     | EM    | ^     |
| 26    | M     | SUB   | _    |
| 27    | N     | ESC   | FNC1  |
| 28    | O     | FS    | |     |
| 29    | P     | GS    | }     |
| 30    | Q     | RS    | hibit |
| 31    | R     | US    | DEL   |
| 32    | S     | s     | S     |
| 33    | T     | t     | T     |
| 34    | U     | u     | U     |
| 35    | V     | v     | V     |
| 36    | W     | w     | W     |
| 37    | X     | x     | X     |
| 38    | Y     | y     | Y     |
| 39    | Z     | z     | Z     |

### EDIFACT模式

模式为每个字符使用6个位元，每4个字符封装在3个字节。它可以存储数字、大写字母以及许多标点符号，但不支持小写字母。

| 代码      | 含义              |
| ------- | --------------- |
| 0 – 30  | ASCII代码 64 – 94 |
| 31      | 返回ASCII模式       |
| 32 – 63 | ASCII代码32 – 63  |

### 基本256模式

## 专利问题

## 参见

  - [QR碼](../Page/QR碼.md "wikilink")

  - [PDF417条码](../Page/PDF417条码.md "wikilink")

  - [彩色條碼](https://zh.wikipedia.org/wiki/彩色條碼 "wikilink")

  -
  -
  -
  -
  -
  -
## 参考资料

## 外部链接

  - [GS1 DataMatrix Guideline: Overview and technical introduction to the use of GS1 DataMatrix](http://www.gs1.org/docs/barcodes/GS1_DataMatrix_Guideline.pdf)
  - [什么是 Data Matrix 码？ - 基恩士](http://china.keyence.com/ss/products/auto_id/barcode_lecture/basic_2d/datamatrix/)

[Category:條碼](https://zh.wikipedia.org/wiki/Category:條碼 "wikilink")

1.  [Microscan Celebrates 20 Years of Data Matrix Codes August 13, 2014](http://files.microscan.com/_att/a3450f5d-686d-4a57-a168-aa65c5f2699d/2014-08-13_Data-Matrix-20-years.pdf)
2.  [Microscan Celebrates 20 Years of Data Matrix Codes](http://www.prweb.com/releases/2014/08/prweb12091371.htm)
3.  Michael, Katina, etc (2009), Innovative Automatic Identification and Location-Based Services: From Bar Codes to Chip Implants 1st Edition pg.92, IGI Global, ISBN 978-1599047959.
4.
5.
6.