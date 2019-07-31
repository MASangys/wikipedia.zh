**可移植像素图格式**（PPM），**可移植灰度图格式**（PGM）和**可移植位图格式**（PBM）是便于[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[图像格式](https://zh.wikipedia.org/wiki/图像格式 "wikilink")。有时候也被统称为[PNM格式](https://zh.wikipedia.org/wiki/PNM格式 "wikilink")\[1\]。

## 历史

PBM格式由Jef Poskanzer在20世纪80年代发明，为了便于通过[电子邮件](../Page/电子邮件.md "wikilink")，用[ASCII码表示单色](https://zh.wikipedia.org/wiki/ASCII码 "wikilink")[位图](../Page/位图.md "wikilink")，能够承受一般的[文本格式的变动](https://zh.wikipedia.org/wiki/文本格式 "wikilink")。

第一个处理PBM格式的工具库是[Pbmplus](https://zh.wikipedia.org/wiki/Pbmplus "wikilink")。它由这个格式的发明人Jef Poskanzer开发，在1988年发布。主要包含Jef编写的将PBM转化为已存在的其他图像格式的工具。在1988年末，Jef开发出PGM、PPM格式以及相关工具，并加入Pbmplus中。Pbmplus的最终发布日期是1991年12月10日。

在1993年，Netpbm库开始开发，用来替代不再维护的Pbmplus。它是Pbmplus的简单的重新包装，附加全世界开发者提供的额外功能和修订，可能是目前用的最普遍的处理PBM、PGM和PPM格式的工具库。\[2\]

## 文件格式描述

这三种格式在颜色的表示上有差异。PBM是单色，PGM是灰度图，PPM使用RGB颜色。

每个文件的开头两个字节（ASCII码）作为文件描述子，指出具体格式和编码形式。具体见下表。

| 文件描述子 | 类型  | 编码    |
| ----- | --- | ----- |
| `P1`  | 位图  | ASCII |
| `P2`  | 灰度图 | ASCII |
| `P3`  | 像素图 | ASCII |
| `P4`  | 位图  | 二进制   |
| `P5`  | 灰度图 | 二进制   |
| `P6`  | 像素图 | 二进制   |

基于[ASCII](../Page/ASCII.md "wikilink")的格式使人可读，并且能够很容易的移植到其他格式。但是二进制格式更有效，不仅因为他节约空间，而且因为他更容易被解析（因为很少有空格）

当使用二进制格式的时候，PBM每像素使用一个比特空间，PGM每个像素使用8个比特空间，PPM每像素使用24比特空间（8比特红色、8比特绿色、8比特蓝色）。

### PBM例子

下面是一个简单的例子

  -
    P1
    \# This is an example bitmap of the letter "J"
    6 10
    0 0 0 0 1 0
    0 0 0 0 1 0
    0 0 0 0 1 0
    0 0 0 0 1 0
    0 0 0 0 1 0
    0 0 0 0 1 0
    1 0 0 0 1 0
    0 1 1 1 0 0
    0 0 0 0 0 0
    0 0 0 0 0 0

P1表示文件格式。\#符号表示一个注释。接下来两个数是宽度和高度。接下来的矩阵是每个[像素](../Page/像素.md "wikilink")的值。（在这里单色格式，只有0和1）

### PGM例子

  -
    P2
    6 6
    255
    0 0 0 150 0 0
    0 0 0 150 0 0
    0 0 0 150 0 0
    0 150 0 150 0 0
    0 150 150 150 0 0
    0 0 0 0 0 0

### PPM例子

  -
    P3
    4 4
    15
    0 0 0 0 0 0 0 0 0 15 0 15
    0 0 0 0 15 7 0 0 0 0 0 0
    0 0 0 0 0 0 0 15 7 0 0 0
    15 0 15 0 0 0 0 0 0 0 0 0

## 16位扩展

  -
    P2
    6 6
    65535
    0 0 0 30000 0 0
    0 0 0 30000 0 0
    0 0 0 30000 0 0
    0 0 0 30000 0 0
    0 30000 30000 30000 0 0
    0 0 0 0 0 0

## 参考资料

## 外部链接

  - [各种格式ppm文件的示例](http://people.sc.fsu.edu/~jburkardt/data/data.html)

[Category:圖形文件格式](https://zh.wikipedia.org/wiki/Category:圖形文件格式 "wikilink")

1.  [PBM, PGM, PNM, and PPM: Summary](http://www.fileformat.info/format/pbm/egff.htm)
2.  [Netpbm history](http://netpbm.sourceforge.net/history.html)