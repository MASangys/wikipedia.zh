**YDbDr**是[SECAM制式](../Page/SECAM制式.md "wikilink")規格[電視所采用的](https://zh.wikipedia.org/wiki/電視 "wikilink")[色彩空間](../Page/色彩空間.md "wikilink")。

1966年[法国提出SECAM彩色电视制式](https://zh.wikipedia.org/wiki/法国 "wikilink")，並制度YDbDr。

## [公式](https://zh.wikipedia.org/wiki/公式 "wikilink")

Y, Db和Dr訊號是產生自RGB [三原色](https://zh.wikipedia.org/wiki/三原色 "wikilink")。R, G和B的權重儲存於Y信号，所代表的是该点亮度.

[RGB](https://zh.wikipedia.org/wiki/RGB "wikilink") 色彩空间和YDbDr轉換之近似公式。

|                                         |
| --------------------------------------- |
| \(R, G, B, Y \in \left[ 0, 1 \right]\)  |
| \(Db \in \left[ -1.333, 1.333 \right]\) |
| \(Dr \in \left[ -1.333, 1.333 \right]\) |

從RGB至YDbDr:

|          |             |             |             |
| -------: | ----------: | ----------: | ----------: |
|  \(Y =\) |  \(0.299R\) | \(+0.587G\) | \(+0.114B\) |
| \(Db =\) | \(-0.450R\) | \(-0.883G\) | \(+1.333B\) |
| \(Dr =\) | \(-1.333R\) | \(+1.116G\) | \(+0.217B\) |

从YDbDr至RGB:

|         |       |                          |                          |
| ------: | ----: | -----------------------: | -----------------------: |
| \(R =\) | \(Y\) | \(+0.000092303716148Db\) | \(-0.525912630661865Dr\) |
| \(G =\) | \(Y\) | \(-0.129132898890509Db\) | \(+0.267899328207599Dr\) |
| \(B =\) | \(Y\) | \(+0.664679059978955Db\) | \(-0.000079202543533Dr\) |

或者:

\(\begin{bmatrix} Y \\ Db \\ Dr \end{bmatrix}
=
\begin{bmatrix} 0.299 & 0.587 & 0.114 \\ -0.450 & -0.883 & 1.333 \\ -1.333 & 1.116 & 0.217 \end{bmatrix}
\begin{bmatrix} R \\ G \\ B \end{bmatrix}\)

\(\begin{bmatrix} R \\ G \\ B \end{bmatrix}
=
\begin{bmatrix} 1 & 0.000092303716148 & -0.525912630661865 \\ 1 & -0.129132898890509 & 0.267899328207599 \\ 1 & 0.664679059978955 & -0.000079202543533 \end{bmatrix}
\begin{bmatrix} Y \\ Db \\ Dr \end{bmatrix}\)

你可能會發現YDbDr的Y分量等同於YUV的分量。Db和Dr也類似於U和V如下：

|          |              |
| -------: | -----------: |
| \(Db =\) | \(+ 3.059U\) |
| \(Dr =\) | \(- 2.169V\) |

## 參考書目

  - Shi, Yun Q. and Sun, Huifang *Image and Video Compression for Multimedia Engineering*, CRC Press, 2000 ISBN 0-8493-3491-8