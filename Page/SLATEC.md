**SLATEC公用数学库**（）是包含1400多个数学及统计程序的[FORTRAN 77程序库](https://zh.wikipedia.org/wiki/FORTRAN "wikilink")。其由[美国政府的多个研究实验室开发](https://zh.wikipedia.org/wiki/美国政府 "wikilink")，故代码属于[公有领域](../Page/公有领域.md "wikilink")。

“SLATEC”是[桑迪亚](../Page/桑迪亚国家实验室.md "wikilink")（）、[洛斯阿拉莫斯](../Page/洛斯阿拉莫斯国家实验室.md "wikilink")（）及[空军武器](https://zh.wikipedia.org/wiki/空军研究实验室 "wikilink")（）实验室技术交换委员会（）的缩写。该组织成立于1974年，致力于美国政府各实验室的计算机中心之间技术信息的交换。

## 内容

SLATAC库的所有程序都属于其13个子库中的一个。其中一些子库（如[BLAS](../Page/BLAS.md "wikilink")、[EIPACK](https://zh.wikipedia.org/wiki/EIPACK "wikilink")、[FFTPACK](../Page/FFTPACK.md "wikilink")、[LINPACK](../Page/LINPACK.md "wikilink")、[QUADPACK等](https://zh.wikipedia.org/wiki/QUADPACK "wikilink")）是知名的独立FORTRAN程序库。下表列出了其所有子库的信息：

|                                          |      |                                                                   |                                                                                                           |
| ---------------------------------------- | ---- | ----------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| 子库                                       | 程序数量 | [Netlib是否提供独立版本](https://zh.wikipedia.org/wiki/Netlib "wikilink") | 目的                                                                                                        |
| [BLAS](../Page/BLAS.md "wikilink")       | 114  | 是                                                                 | 基本[线性代数](../Page/线性代数.md "wikilink")                                                                      |
| DASSL                                    | 16   | 否                                                                 | 解微分/代数方程组                                                                                                 |
| DEPAC                                    | 10   | 否                                                                 | 解 [常微分方程](../Page/常微分方程.md "wikilink")（[龙格－库塔法](../Page/龙格－库塔法.md "wikilink")等）                           |
| EISPACK                                  | 71   | 是                                                                 | [特征值与](https://zh.wikipedia.org/wiki/特征值 "wikilink")[特征向量](https://zh.wikipedia.org/wiki/特征向量 "wikilink") |
| [FFTPACK](../Page/FFTPACK.md "wikilink") | 48   | 是                                                                 | [快速傅立叶变换](https://zh.wikipedia.org/wiki/快速傅立叶变换 "wikilink")                                               |
| FISHPACK                                 | 19   | 是                                                                 | 使用[循环约化法解二阶与四阶有限差分方程](https://zh.wikipedia.org/wiki/循环约化法 "wikilink")（不同坐标系下可分离显式编微分方程的近似）\[1\]           |
| FNLIB                                    | 161  | 是（名为FN）                                                           | [特殊方程](https://zh.wikipedia.org/wiki/特殊方程 "wikilink")                                                     |
| LINPACK                                  | 128  | 是                                                                 | [线性代数](../Page/线性代数.md "wikilink")（已过时\[2\]）                                                              |
| PCHIP                                    | 41   | 否                                                                 | 分段三次Hermite插值                                                                                             |
| QUADPACK                                 | 59   | 是                                                                 | 一维函数的数值积分                                                                                                 |
| SDRIVE                                   | 36   | 否                                                                 | 解[常微分方程](../Page/常微分方程.md "wikilink")                                                                     |
| SLAP                                     | 124  | 是                                                                 | [稀疏](../Page/稀疏矩阵.md "wikilink")[线性代数](../Page/线性代数.md "wikilink")库                                       |
| XERROR                                   | 17   | 否                                                                 | 错误处理                                                                                                      |

## 参考文献

[Category:计算机程序库](https://zh.wikipedia.org/wiki/Category:计算机程序库 "wikilink") [Category:数值软件](https://zh.wikipedia.org/wiki/Category:数值软件 "wikilink")

1.  <http://www.cisl.ucar.edu/css/software/fishpack/>,
2.  如 <http://www.netlib.org/linpack> 所说，LINPACK基本已被[LAPACK](../Page/LAPACK.md "wikilink")替代。