**DEFLATE**是同时使用了[LZ77算法与](../Page/LZ77与LZ78.md "wikilink")[哈夫曼编码](https://zh.wikipedia.org/wiki/哈夫曼编码 "wikilink")（Huffman
Coding）的一个[无损数据压缩](../Page/无损数据压缩.md "wikilink")[算法](../Page/算法.md "wikilink")。它最初是由[菲尔·卡茨](../Page/菲尔·卡茨.md "wikilink")（Phil
Katz）为他的[PKZIP软件第二版所定义的](https://zh.wikipedia.org/wiki/PKZIP "wikilink")，后来被[RFC 1951](https://tools.ietf.org/html/rfc1951)标准化。

[菲尔·卡茨及其所拥有的](../Page/菲尔·卡茨.md "wikilink")为该算法申请了[美国专利5051745号](https://www.google.com/patents/US5051745)。人们普遍认为DEFLATE不受任何[专利所覆盖](../Page/专利.md "wikilink")，并且在[LZW](../Page/LZW.md "wikilink")（[GIF文件格式使用](../Page/GIF.md "wikilink")）相关的专利失效之前，这种格式除了在[ZIP文件格式中得到应用之外也在](https://zh.wikipedia.org/wiki/ZIP_\(文件格式\) "wikilink")[gzip压缩文件以及](https://zh.wikipedia.org/wiki/gzip "wikilink")[PNG图像文件中得到了应用](../Page/PNG.md "wikilink")。

DEFLATE压缩与解压的源代码可以在自由、通用的压缩库[zlib上找到](https://zh.wikipedia.org/wiki/zlib "wikilink")。

更高压缩率的DEFLATE是[7-zip所实现的](https://zh.wikipedia.org/wiki/7-zip "wikilink")。[AdvanceCOMP也使用这种实现](https://zh.wikipedia.org/wiki/AdvanceCOMP "wikilink")，它可以对[gzip](https://zh.wikipedia.org/wiki/gzip "wikilink")、[PNG](../Page/PNG.md "wikilink")、[MNG以及](https://zh.wikipedia.org/wiki/MNG "wikilink")[ZIP文件进行压缩从而得到比](https://zh.wikipedia.org/wiki/ZIP_\(文件格式\) "wikilink")[zlib更小的文件大小](https://zh.wikipedia.org/wiki/zlib "wikilink")。在Ken
Silverman的KZIP与PNGOUT中使用了一种更加高效同时要求更多用户输入的DEFLATE程序。

## 流格式

Deflate流是指比特流。也即，我们首先把它看作字节流，然后对每个字节，确定其比特顺序。对于[X86这样的](../Page/X86.md "wikilink")[小端序平台](https://zh.wikipedia.org/wiki/小端序 "wikilink")，就是按照字节内部[最不显著比特](https://zh.wikipedia.org/wiki/最不显著比特 "wikilink")（Least
Significant Bit）
到[最显著比特](https://zh.wikipedia.org/wiki/最显著比特 "wikilink")（Most
Significant Bit）的顺序。例如，对于字节0x15，它的比特序列是10101000。

Deflate流包含一系列数据块。每块以3比特的头部开始:

  - 第1比特: Last-block-in-stream marker:
      - `1`: 流的最后一块
      - `0`: 不是流的最后一块
  - 第2、第3比特: 编码方法
      - `00`: 无压缩的stored/raw/literal, 长度在0至65,535字节
      - `01`:
        静态霍夫曼压缩。采用事先定义（因而无须存储在流中）的[霍夫曼树](https://zh.wikipedia.org/wiki/霍夫曼树 "wikilink")
      - `10`: 动态霍夫曼树
      - `11`: 保留，未使用

## 编程接口

Deflate可以免费在很多编程语言中使用。C语言通常使用zlib库。[C++语言可以使用](../Page/C++.md "wikilink")[7-Zip](../Page/7-Zip.md "wikilink")/[AdvanceCOMP](https://zh.wikipedia.org/wiki/AdvanceCOMP "wikilink")。Java语言包含在标准库java.util.zip中。[Microsoft
.NET
Framework](https://zh.wikipedia.org/wiki/Microsoft_.NET_Framework "wikilink")
2.0包含在System.IO.Compression命名空间中。

  - [PKZIP](https://zh.wikipedia.org/wiki/PKZIP "wikilink"): 该算法最早的实现。
  - [zlib](https://zh.wikipedia.org/wiki/zlib "wikilink")/[gzip](https://zh.wikipedia.org/wiki/gzip "wikilink"):
    标准参考实现（standard reference implementation），由于其公共可用性，得到了及其广泛的使用。
  - [Crypto++](https://zh.wikipedia.org/wiki/Crypto++ "wikilink"):
    [C++开源实现](../Page/C++.md "wikilink").
  - [7-Zip](../Page/7-Zip.md "wikilink")/[AdvanceCOMP](https://zh.wikipedia.org/wiki/AdvanceCOMP "wikilink"):
    Igor Pavlov的[C++开源自由实现](../Page/C++.md "wikilink")
  - [PuTTY](../Page/PuTTY.md "wikilink") ‘sshzlib.c’: 一份单独实现
  - [Plan 9 from Bell
    Labs](https://zh.wikipedia.org/wiki/Plan_9_from_Bell_Labs "wikilink")
    的[libflate](http://plan9.bell-labs.com/sources/plan9/sys/src/libflate/)
  - [Hyperbac](https://zh.wikipedia.org/wiki/Red_Gate_Software#HyperBac "wikilink"):
    C++与汇编实现
  - [Zopfli](../Page/Zopfli.md "wikilink"): Google的C实现

## 参见

  - [归档格式列表](https://zh.wikipedia.org/wiki/归档格式列表 "wikilink")
  - [压缩软件列表](../Page/压缩软件列表.md "wikilink")
  - [压缩软件比较](https://zh.wikipedia.org/wiki/压缩软件比较 "wikilink")

## 参考文献

## 外部链接

  - [PKWARE,
    Inc.](https://zh.wikipedia.org/wiki/PKWARE,_Inc. "wikilink")'s
    `appnote.txt`, [*.ZIP File Format
    Specification*](http://www.pkware.com/documents/casestudies/APPNOTE.TXT);
    Section 10, *X. Deflating – Method 8*.
  - RFC 1951 – *Deflate Compressed Data Format Specification version
    1.3*
  - [zlib Home Page](http://www.zlib.net)
  - [*An Explanation of the Deflate
    Algorithm*](http://zlib.net/feldspar.html) – by Antaeus Feldspar
  - [*Extended Application of Suffix Trees to Data
    Compression*](http://www.larsson.dogma.net/dccpaper.pdf) – an
    excellent algorithm to implement Deflate by Jesper Larsson

[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")