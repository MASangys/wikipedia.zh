> 本文内容由[Move-to-front transform](https://zh.wikipedia.org/wiki/Move-to-front_transform)转换而来。


**MTF**（**Move-To-Front**）是一种数据编码方式，作为一个额外的步骤，用于提高[数据压缩](../Page/数据压缩.md "wikilink")技术效果。MTF主要使用的是数据“空间局部性”，也就是最近出现过的字符很可能在接下来的文本附近再次出现。

## MTF的主要思想

（1）首先维护一个文本字符集大小的栈表，“recently used symbols”（最近访问过的字符），其中每个不同的字符在其中占一个位置，位置从0开始编号。（2）扫描需要重新编码的文本数据，对于每个扫描到的字符，使用该字符在“recently used symbols”中的index替换，并将该字符提到“recently used symbols”的栈顶的位置(index为0的位置)。重复上一步骤，直到文本扫描结束。

## MTF的压缩过程

以字符串“annbaa”为例（“annbaa”在这里为字符串“banana”经过BWT变换后的结果[:Bzip2](https://zh.wikipedia.org/wiki/:Bzip2 "wikilink") [:Burrows-Wheeler变换](https://zh.wikipedia.org/wiki/:Burrows-Wheeler变换 "wikilink")）。基于recently used symbols，设立一个栈表“abcdefghijklmnopqrstuvwxyz”。

| Move-To-Front 压缩过程 |
| ------------------ |
| 迭代                 |

## MTF的压还原过程

以序列“0, 13, 0, 2, 2, 0”为例（“0, 13, 0, 2, 2, 0”在这里为字符串“aaabnn”经过MVT压缩后的结果）。基于栈表“nbacdefghijklmopqrstuvwxyz”，n的指数为0，z的指数为25。

| Move-To-Front 压缩过程 |
| ------------------ |
| 序列                 |

## 外部链接

  -
[Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")