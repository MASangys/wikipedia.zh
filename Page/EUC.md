**EUC**全名为**Extended Unix Code**，是一个使用8[位编码来表示](https://zh.wikipedia.org/wiki/位 "wikilink")[字符](../Page/字符.md "wikilink")的方法。

EUC最初是针对Unix系统，由一些Unix公司所开发，于1991年标准化。EUC基于[ISO/IEC 2022的](https://zh.wikipedia.org/wiki/ISO/IEC_2022 "wikilink")7位编码标准，因此单字节的编码空间为94，双字节的编码空间（区位码）为94x94。把每个区位加上0xA0来表示，以便符合ISO 2022。它主要用于表示及储存[汉语](../Page/汉语.md "wikilink")文字、[日语](../Page/日语.md "wikilink")文字及[朝鲜文字](https://zh.wikipedia.org/wiki/韓語 "wikilink")。

EUC定义了4个单独的码集（code set）。码集0总是对应于7位的[ASCII](../Page/ASCII.md "wikilink")（或其它的各国定义的[ISO 646](https://zh.wikipedia.org/wiki/ISO_646 "wikilink")），包括了ISO 2022定义的C0与G0空间的值。码集1, 2, 3表示G1空间的值。其中，码集1表示一些未经修饰（unadorned）的字符。码集2的字符编码以0x8E（属于C1控制字符，或称SS2）为第一字节。码集3的字符编码以0x8F（另一个属于C1的控制字符，或称SS3）为第一字节。码集0总是编码为单字节；码集2、3总是编码为至少2个字节；码集1编码为1-3个字节。

## EUC-CN

**EUC-CN**是[GB 2312最常用的表示方法](../Page/GB_2312.md "wikilink")。[浏览器编码表上的](../Page/网页浏览器.md "wikilink")“GB2312”，通常都是指“EUC-CN”表示法。

ASCII字符，范围为0x21-0x7E，直接用单字节表示。这是码集0.

GB 2312字元使用两个字节来表示。这是码集1.

  -
    “第一位字节”使用0xA1-0xFE
    “第二位字节”使用0xA1-0xFE

GB2312没有使用码集2、码集3部分。

举例来说，“啊”字是GB 2312之中的第一个汉字，它的区位码是1601。

在EUC-CN之中，它把0xA0+16=0xB0,0xA0+1=0xA1，得出0xB0A1。

## EUC-JP

**EUC-JP**用来储存[日本](../Page/日本.md "wikilink")[JIS X 0208](../Page/JIS_X_0208.md "wikilink")（旧称JIS C 6226）及[JIS X 0212字集的字符](https://zh.wikipedia.org/wiki/JIS_X_0212 "wikilink")，主要影响了类Unix操作系统的日文表示与处理。但是，日文Windows操作系统较多使用[ISO-2022-JP或](https://zh.wikipedia.org/wiki/ISO/IEC_2022 "wikilink")[Shift JIS的方法来表示](../Page/Shift_JIS.md "wikilink")。

ASCII字符，范围为0x21-0x7E，直接用单字节表示。这是码集0.

[半角片假名使用两个字节来表示](../Page/JIS_X_0201.md "wikilink")。这是码集2

  -
    “第一位字节”使用0x8E
    “第二位字节”使用0xA1-0xDF

JIS X 0208字元使用两个字节来表示。这是码集1.

  -
    “第一位字节”使用0xA1-0xFE
    “第二位字节”使用0xA1-0xFE

JIS X 0212字元使用三个字节来表示。这是码集3

  -
    “第一位字节”使用0x8F
    “第二位字节”使用0xA1-0xFE
    “第三位字节”使用0xA1-0xFE

### EUC-JISX0213

**EUC-JISX0213**是一个制定中的EUC规格，用来表示[JIS X 0213字集的字符](https://zh.wikipedia.org/wiki/JIS_X_0213 "wikilink")。

半角片假名使用两个字节来表示。

  -
    “第一位字节”使用0x8E
    “第二位字节”使用0xA1-0xDF

JIS X 0213第一字面字元使用两个字节来表示。

  -
    “第一位字节”使用0xA1-0xFE
    “第二位字节”使用0xA1-0xFE

JIS X 0213第二字面字元使用三个字节来表示。

  -
    “第一位字节”使用0x8F
    “第二位字节”使用0xA1-0xFE
    “第三位字节”使用0xA1-0xFE

## EUC-KR

**EUC-KR**用来储存[韩国](https://zh.wikipedia.org/wiki/韩国 "wikilink")[KS X 1001字集](../Page/KS_X_1001.md "wikilink")（旧称KS C 5601）的字符。此规格由[KS X 2901](https://zh.wikipedia.org/wiki/KS_X_2901 "wikilink")（旧称KS C 5861）定义。

KS X 1001字元使用两个字节来表示。

  -
    “高位字节”使用0xA1-0xFE
    “低位字节”使用0xA1-0xFE

## EUC-TW

**EUC-TW**為台灣使用的漢字編碼方法之一，以[CNS 11643字表为基础](https://zh.wikipedia.org/wiki/國家標準中文交換碼 "wikilink")；但是台湾普遍使用[大五碼](../Page/大五碼.md "wikilink")，EUC-TW甚少使用。

CNS 11643第一字面的字元使用两个字节来表示。

  -
    “第一位字节”使用0xA1-0xFE
    “第二位字节”使用0xA1-0xFE

CNS 11643其他字面的字元使用四个字节来表示。

  -
    “第一位字节”使用0x8E
    “第二位字节”使用0xA1-0xB0（0xA1-0xA7分别代表第1至第7个字面，其余未定义）
    “第三位字节”使用0xA1-0xFE
    “第四位字节”使用0xA1-0xFE

（CNS 11643第一字面可选择使用两个字节或四个字节来表示）

## 参看

  - [ISO/IEC 2022](https://zh.wikipedia.org/wiki/ISO/IEC_2022 "wikilink")
  - [JIS X 0201](../Page/JIS_X_0201.md "wikilink")
  - [GB 2312](../Page/GB_2312.md "wikilink")
  - [CNS 11643](https://zh.wikipedia.org/wiki/國家標準中文交換碼 "wikilink")

## 参考文献

  - [小林劍](../Page/小林劍.md "wikilink")，（1999年）. *CJKV Information Processing*. First Edition. O'Reilly and Associates, Inc. ISBN 1-56592-224-7；中文版，鄭褚璋譯，（2002年）*中日韓越資訊處理* 第一版，台北市，美商歐萊禮股份有限公司。 ISBN 986-7794-03-6

[Category:中文信息处理](https://zh.wikipedia.org/wiki/Category:中文信息处理 "wikilink") [Category:字符集](https://zh.wikipedia.org/wiki/Category:字符集 "wikilink") [Category:日語編碼](https://zh.wikipedia.org/wiki/Category:日語編碼 "wikilink")