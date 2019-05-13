**Luhn算法**（Luhn algorithm），也称为“**模10**”（Mod
10）[算法](../Page/算法.md "wikilink")，是一种简单的[校验和算法](https://zh.wikipedia.org/wiki/校验和 "wikilink")，一般用于验证身份识别码，例如[发卡行识别码](../Page/发卡行识别码.md "wikilink")、[国际移动设备辨识码](https://zh.wikipedia.org/wiki/IMEI "wikilink")（IMEI），美国号码，或是。该算法由[IBM科学家](../Page/IBM.md "wikilink")创造，专利于1954年1月6日申请，1960年8月23日颁证，美国专利号2950048\[1\]。

该算法现已属于[公有领域并得到了广泛的应用](../Page/公有领域.md "wikilink")，例如[ISO/IEC
7812](https://zh.wikipedia.org/wiki/ISO/IEC_7812 "wikilink")-1\[2\]。它不是一种安全的加密[哈希函数](https://zh.wikipedia.org/wiki/哈希函数 "wikilink")，设计它的目的只是防止意外出错而不是恶意攻击。

## 描述

Luhn算法会通过[校验码对一串数字进行验证](https://zh.wikipedia.org/wiki/校验码 "wikilink")，校验码通常会被加到这串数字的末尾处，从而得到一个完整的身份识别码。

我们以数字“7992739871”为例，计算其校验位：

1.  从校验位开始，从右往左，偶数位乘2（例如，7\*2=14），然后将两位数字的个位与十位相加（例如，10：1+0=1，14：1+4=5）；
2.  把得到的数字加在一起（本例中得到67）；
3.  将数字的和取模10（本例中得到7），再用10去减（本例中得到3），得到校验位。

| 原始数字  | 7 | 9  | 9 | 2 | 7 | 3 | 9 | 8  | 7 | 1 | x        |
| ----- | - | -- | - | - | - | - | - | -- | - | - | -------- |
| 偶数位乘2 | 7 | 18 | 9 | 4 | 7 | 6 | 9 | 16 | 7 | 2 | x        |
| 将数字相加 | 7 | 9  | 9 | 4 | 7 | 6 | 9 | 7  | 7 | 2 | \=6**7** |

另一种方法是：

1.  从校验位开始，从右往左，偶数位乘2，然后将两位数字的个位与十位相加；
2.  计算所有数字的和（67）；
3.  乘以9（603）；
4.  取其个位数字（3），得到校验位。

## 优缺点

Luhn算法可以发现某一位的错误。 Luhn算法几乎可以发现所有由于邻位上数字被交换产生的错误。
但是，它只能发现数字交换产生的错误中的7/10，不会发现22 ↔
55, 33 ↔ 66 或 44 ↔ 77。

## 参考文献

[Category:同余](https://zh.wikipedia.org/wiki/Category:同余 "wikilink")
[Category:校验和算法](https://zh.wikipedia.org/wiki/Category:校验和算法 "wikilink")
[Category:错误检测与校正](https://zh.wikipedia.org/wiki/Category:错误检测与校正 "wikilink")

1.  [专利 US2950048 - COMPUTER FOR VERIFYING NUMBERS - Google
    专利](http://www.google.com/patents?id=Y7leAAAAEBAJ)
2.  [ISO/IEC 7812-1:2006 Identification cards -- Identification of
    issuers -- Part 1: Numbering
    system](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=39698)