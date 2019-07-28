**NaN**（**N**ot **a**
**N**umber，非数）是[计算机科学](../Page/计算机科学.md "wikilink")中数值[数据类型的一类值](https://zh.wikipedia.org/wiki/数据类型 "wikilink")，表示未定义或不可表示的值。常在[浮点数](../Page/浮点数.md "wikilink")运算中使用。首次引入NaN的是1985年的[IEEE
754浮点数标准](../Page/IEEE_754.md "wikilink")。

## 浮点数

在浮点数运算中，NaN与[无穷](../Page/无穷.md "wikilink")大的概念不同，尽管两者均是以浮点数表示实数时的特殊值。无效操作（Invalid
Operation）同样也不同于[算術溢出](../Page/算術溢出.md "wikilink")（可能返回无穷大）和算术下溢出（可能返回最小的一般数值、特殊数值、零等）。

[IEEE
754-1985中](https://zh.wikipedia.org/wiki/IEEE_754-1985 "wikilink")，用指数部分全为1、小数部分非零表示NaN。以32位IEEE单精度浮点数的NaN为例，按位表示即：S111
1111 1AXX XXXX XXXX XXXX XXXX XXXX，S为符号位，符号位S的取值无关紧要；A是小数部分的最高位（the most
significant bit of the significand），其取值表示了NaN的类型：X不能全为0，并被称为NaN的payload；

  - 大多数处理器，包括[Intel与](https://zh.wikipedia.org/wiki/Intel "wikilink")[AMD的](https://zh.wikipedia.org/wiki/AMD "wikilink")[x86系列](https://zh.wikipedia.org/wiki/x86 "wikilink")、[Motorola](https://zh.wikipedia.org/wiki/Motorola "wikilink")
    、[AIM](https://zh.wikipedia.org/wiki/AIM联盟 "wikilink")
    [PowerPC](../Page/PowerPC.md "wikilink")系列、[ARM系列](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")、[Sun](../Page/昇陽電腦.md "wikilink")
    [SPARC](../Page/SPARC.md "wikilink")系列，采取了A为'is_quiet'标记位。即，如果A =
    1，则该数是quiet NaN；如果A为零、其余X部分非零，则是signaling NaN。**IEEE
    754-2008**标准采纳了这一方案。
  - [PA-RISC与](https://zh.wikipedia.org/wiki/PA-RISC "wikilink")[MIPS处理器](../Page/MIPS架構.md "wikilink")，采取了A为'is_signaling'标记位。恰与上述相反。

### 返回NaN的运算

返回NaN的运算有如下三种\[1\]：

  - 至少有一个[參数是NaN的运算](https://zh.wikipedia.org/wiki/參数 "wikilink")
  - [不定式](https://zh.wikipedia.org/wiki/不定式 "wikilink")
      - 下列[除法](../Page/除法.md "wikilink")运算：0/0、[∞](https://zh.wikipedia.org/wiki/∞ "wikilink")/∞、∞/(−∞)、(−∞)/∞、(−∞)/(−∞)
      - 下列[乘法](../Page/乘法.md "wikilink")运算：0×∞、0×−∞
      - 下列[加法](../Page/加法.md "wikilink")运算：∞ + (−∞)、(−∞) + ∞
      - 下列[减法运算](https://zh.wikipedia.org/wiki/减法 "wikilink")：∞ - ∞、(−∞)
        - (−∞)
      - 下列[指數運算](https://zh.wikipedia.org/wiki/指數 "wikilink")：0^0、∞^0、1^∞、∞^(−∞)
  - 产生[复数结果的实数运算](../Page/复数_\(数学\).md "wikilink")。例如：
      - 对[负数](../Page/负数.md "wikilink")进行[开偶次方的运算](https://zh.wikipedia.org/wiki/开方 "wikilink")
      - 对负数（包含−∞）进行[对数运算](https://zh.wikipedia.org/wiki/对数 "wikilink")
      - 对[正弦](../Page/正弦.md "wikilink")或[餘弦](../Page/餘弦.md "wikilink")[到达域](../Page/到达域.md "wikilink")以外的数进行[反正弦](../Page/反正弦.md "wikilink")或[反餘弦](../Page/反餘弦.md "wikilink")运算

## 整数的NaN

大多数定长的[整数](../Page/整数.md "wikilink")格式无法显式表示无效数据。

[Perl](../Page/Perl.md "wikilink")的BigInt包用“NaN”来表示不含有效整数数据字符串的处理结果。

`>perl -mMath::BigInt -e "print Math::BigInt->new('foo')"`

`NaN`

## 注释

## 参考文献

## 外部链接

  - <http://foldoc.org/?Not-a-Number>

[Category:数据类型](https://zh.wikipedia.org/wiki/Category:数据类型 "wikilink")
[Category:計算機算術](https://zh.wikipedia.org/wiki/Category:計算機算術 "wikilink")

1.  David Goldberg [What Every Computer Scientist Should Know About
    Floating-Point](http://docs.sun.com/source/806-3568/ncg_goldberg.html)