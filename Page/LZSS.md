**Lempel–Ziv–Storer–Szymanski**（**LZSS**）是一个[无损数据压缩](../Page/无损数据压缩.md "wikilink")[算法](../Page/算法.md "wikilink")，属于[LZ77的派生](../Page/LZ77与LZ78.md "wikilink")，1982年由James
Storer和创建。LZSS发布于《Journal of the ACM》\[1\]的“Data compression via textual
substitution”。\[2\]

LZSS是一种字典编码技术。它会尝试以符号字符串替换相同字符串为一个字典位置的引用。

LZ77与LZSS的主要区别是，LZ77的字典引用可能比被替换的字符串更长。在LZSS中，如果长度小于“盈亏平衡”点，引用会被省略。此外，LZSS使用单比特标志标记下一个数据块是原文（字节）还是引用的偏移与长度。

## 例子

此例是Dr. Seuss所著《**》的开头，每行开头的已有字符总数是为方便所设。

`  0: I am Sam`
`  9:`
` 10: Sam I am`
` 19:`
` 20: That Sam-I-am!`
` 35: That Sam-I-am!`
` 50: I do not like`
` 64: that Sam-I-am!`
` 79: `
` 80: Do you like green eggs and ham?`
`112:`
`113: I do not like them, Sam-I-am.`
`143: I do not like green eggs and ham.`

这是该段文本在未压缩形式的177字节。假设盈亏平衡点是2字节（并因此是2字节的指针/偏移对），那么加上一字节的新行字符，此文本使用LZSS压缩后将变为94字节：

` 0: I am Sam`
` 9:`
`10: (5,3) (0,4)`
`16:`
`17: That(4,4)-I-am!(19,16)I do not like`
`45: t(21,14)`
`49: Do you(58,5) green eggs and ham?`
`78: (49,14) them,(24,9).(112,15)(93,18).`

注意：这不包括标记下一个文本块是指针或原文的12字节。如果加上它，该段文本变为106字节，仍会少于原文的177字节。

## 实现

许多流行的存档格式如、[ARJ](../Page/ARJ.md "wikilink")、[RAR](../Page/RAR.md "wikilink")、、[LHarc都使用LZSS而不是LZ](../Page/LHA_\(檔案格式\).md "wikilink")77作为主要的压缩算法；原文字符和长度距离对的编码方式各有不同，最常见的选项是[霍夫曼编码](../Page/霍夫曼编码.md "wikilink")。大多数实现源于1989年Haruhiko
Okumura的代码。\[3\]\[4\][Allegro程序库第四版可以编码和解码LZSS格式](../Page/Allegro.md "wikilink")\[5\]，但该特性在第五版中被去除。[Game
Boy Advance](../Page/Game_Boy_Advance.md "wikilink")
BIOS可以解码一个稍作修改的LZSS格式。\[6\]

## 参见

  - [LZ77](../Page/LZ77.md "wikilink")
  - [LZW](../Page/LZW.md "wikilink")

## 参考资料

[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")

1.  （1982年，928页至951页）
2.  <cite class="citation journal">Storer, James A.; Szymanski, Thomas
    G. (October 1982). </cite>
3.  Simtel.net mirror.
4.  Haruhiko Okumura.
5.  Hargreaves, Shawn, et al.
6.  Korth, Martin.