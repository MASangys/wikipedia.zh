**Burrows–Wheeler Transform**（简称BWT，也称作**块排序压缩**），是一个被应用在[数据压缩](../Page/数据压缩.md "wikilink")技术（如[bzip2](https://zh.wikipedia.org/wiki/bzip2 "wikilink")）中的[算法](../Page/算法.md "wikilink")。该算法于1994年被和在位于加利福尼亚州帕洛阿尔托的发明\[1\]。它的基础是之前Wheeler在1983年发明的一种没有公开的转换方法。

当一个[字符串](../Page/字符串.md "wikilink")用该算法转换时，算法只改变这个字符串中字符的顺序而并不改变其字符。如果原字符串有几个出现多次的[子串](../Page/子串.md "wikilink")，那么转换过的字符串上就会有一些连续重复的字符，这对压缩是很有用的。该方法能使得基于处理字符串中连续重复字符的技术（如[MTF变换和](https://zh.wikipedia.org/wiki/:move-to-front_transform "wikilink")[游程编码](../Page/游程编码.md "wikilink")）的编码更容易被压缩。

举个例子：

| 算法输入 | `SIX.MIXED.PIXIES.SIFT.SIXTY.PIXIE.DUST.BOXES` |
| ---- | ---------------------------------------------- |
| 算法输出 | `TEXYDST.E.IXIXIXXSSMPPS.B..E.S.EUSFXDIIOIIIT` |

该算法的输出因为有更多的重复字符而更容易被压缩了。

## Burrows–Wheeler变换过程

算法将输入字符串的所有[循环字符串按照](https://zh.wikipedia.org/wiki/循环字符串 "wikilink")[字典序](../Page/字典序.md "wikilink")[排序](https://zh.wikipedia.org/wiki/排序 "wikilink")，并以排序后字符串形成的矩阵的最后一列为其输出。

| Burrows–Wheeler变换过程 |
| ------------------- |
| 输入                  |
| `banana`            |

## Burrows–Wheeler变换的还原过程

  - 基于上述的BWT变换过程，以字符串“banana”为例，我们得到了变换结果“annb$aa”。其还原过程见以下过程：

<!-- end list -->

1.  1 基于原字符串矩阵的最后一列为“annb$aa”，我们进行该列进行排序，得到“annb$aa”,并将其作为还原矩阵的第一列

| Burrows–Wheeler 还原过程 1 |
| ---------------------- |
| 输入                     |

1.  2 经过1.1的转移、排序和组合，我们得到了7对邻接字符串：\<a$\> <na> <na> <ba> \<$b\> <an> <an>，将这7对邻接字符串进行排序后，得到\<$b\> \<a$\> <an> <an> <ba> <na> <na>，由此，我们得到了还原矩阵的第二列“b$nnaaa”

| Burrows–Wheeler 还原过程 2 |
| ---------------------- |
| 输入                     |

1.  3 经过1.2的转移、排序和组合，我们得到了7对邻接字符串：\<a$b\> \<na$\> <nan> <ban> \<$ba\> <ana> <ana>，将这7对邻接字符串进行排序后，得到\<$ba\> \<a$b\> <ana> <ana> <ban> \<na$\> <nan>，由此，我们得到了还原矩阵的第三列“abaan$n”

| Burrows–Wheeler 还原过程 3 |
| ---------------------- |
| 输入                     |

1.  4 经过1.3的转移、排序和组合，我们得到了7对邻接字符串：\<a$ba\> \<na$b\> <nana> <bana> \<$ban\> \<ana$\> <anan>，将这7对邻接字符串进行排序后，得到\<$ban\> \< a$ba \> \<ana$\> \< anan \> \< bana \> \< na$b \> \< nana \>，由此，我们得到了还原矩阵的第四列“na$naba”

| Burrows–Wheeler 还原过程 4 |
| ---------------------- |
| 输入                     |

1.  5 经过1.4的转移、排序和组合，我们得到了7对邻接字符串：\<a$ban\> \<na$ba\> \<nana$\> <banan> \<$bana\> \<ana$b\> <anana>，将这7对邻接字符串进行排序后，得到\<$bana\> \<a$ban\> \< ana$b \> <anana> <banan> \<na$ba\> \<nana$\>，由此，我们得到了还原矩阵的第五列“anbana$”

| Burrows–Wheeler 还原过程 5 |
| ---------------------- |
| 输入                     |

1.  6 经过1.5的转移、排序和组合，我们得到了7对邻接字符串：\<a$bana\> \<na$ban\> \<nana$b\> <banaan> \<$banan\> \<ana$ba\> \<anana$\>，将这7对邻接字符串进行排序后，得到\<$banan\> \<a$bana\> \< ana$ba\> \<anana$\> <banana> \<na$ban\> \<nana$b\>，由此，我们得到了还原矩阵的第六列“naa$anb”。

| Burrows–Wheeler 还原过程 5 |
| ---------------------- |
| 输入                     |

经过六次排序转移与组合，还原出了原有的字符串即“$banana”。

## python实现(基于next值方式)

``` python
def bwt(s):
    """对字符串进行Burrows-Wheeler变换 不使用唯一字符('EOF')做标记 返回索引值列表"""
    #创建所有循环字符串
    table = [s[i:] + s[:i] for i in range(len(s))]
    #获取排序后的结果
    table_sorted = table[:]
    table_sorted.sort()
    #获取已排序表每个字符串在未排序表中对应字符串的下一个字符串在已排序表中的索引值
    indexlist = []
    for t in table_sorted:
        index1 = table.index(t)
        index1 = index1+1 if index1 < len(s)-1 else 0
        index2 = table_sorted.index(table[index1])
        indexlist.append(index2)
    #取排序后结果的最后一列作为结果字符串
    r = ''.join([row[-1] for row in table_sorted])
    return r, indexlist

def ibwt(r,indexlist):
    """对字符串进行反Burrows-Wheeler变换 有索引值的反变换比使用唯一标记的反变换简单很多"""
    s=''
    x = indexlist[0]
    for _ in r:
        s = s + r[x]
        x = indexlist[x]
    return s

```

## python实现(基于末尾添加唯一字符方式)

通过在末尾添加唯一字符(不与输入字串中任何字符相同)后再进行变换，可以不需要传递索引值列表，不过逆变换的时候要做更多计算。

下面的伪代码提供了一个逆过程的朴素实现（输入字符串s为原过程之输出）：

` `**`function`**` inverseBWT(`*`string`*` s)   `
`   生成length（s）个空串`
`   `**`repeat`**` length(s) `**`times`**
`       将字符串s作为一列插入每个字符串的串首`
`       对所有字符串排序`
`   返回结尾为EOF的行`

``` python
END = '\1'  #必须不与原字符串中任何字符相同

def bwt(s):
    """对字符串进行Burrows-Wheeler变换"""
    s = s + END
    #创建所有循环字符串
    table = [s[i:] + s[:i] for i in range(len(s))]
    #获取排序后的结果
    table_sorted = table[:]
    table_sorted.sort()
    #取排序后结果的最后一列作为结果字符串
    return ''.join([row[-1] for row in table_sorted])

def ibwt(r):
    table = [''] * len(r)
    for _ in r:
        table = sorted([r[m] + table[m] for m in range(len(r))])
    s = [row for row in table if row.endswith(END)][0]
    return s.rstrip(END)
```

## 参考资料

<references />

## 外部链接

  - [Compression comparison of BWT based file compressors](http://compressionratings.com/bwt.html)
  - [Article by Mark Nelson on the BWT](http://marknelson.us/1996/09/01/bwt/)
  - [A Bijective String-Sorting Transform, by Gil and Scott](http://bijective.dogma.net/00yyy.pdf)
  - [Yuta's openbwt-v1.5.zip contains source code for various BWT routines including BWTS for bijective version](http://encode.ru/attachment.php?attachmentid=959&d=1249146089)
  - [On Bijective Variants of the Burrows–Wheeler Transform, by Kufleitner](http://arxiv.org/abs/0908.0239)
  - [Blog post](http://google-opensource.blogspot.com/2008/06/debuting-dcs-bwt-experimental-burrows.html) and [project page](https://code.google.com/p/dcs-bwt-compressor/) for an open-source compression program and library based on the Burrows–Wheeler algorithm
  - [MIT open courseware lecture on BWT (Foundations of Computational and Systems Biology)](https://www.youtube.com/watch?v=P3ORBMon8aw)

[Category:Lossless_compression_algorithms](https://zh.wikipedia.org/wiki/Category:Lossless_compression_algorithms "wikilink") [Category:Transforms](https://zh.wikipedia.org/wiki/Category:Transforms "wikilink") [Category:Articles_with_example_pseudocode](https://zh.wikipedia.org/wiki/Category:Articles_with_example_pseudocode "wikilink") [Category:Articles_with_example_Python_code](https://zh.wikipedia.org/wiki/Category:Articles_with_example_Python_code "wikilink")

1.  [Compression comparison of BWT based file compressors](http://compressionratings.com/bwt.html)（英文）。