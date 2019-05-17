**n元语法**（）指文本中连续出现的n个语词。n元语法模型是基于(n-1)阶[马尔可夫链的一种概率](../Page/马尔可夫链.md "wikilink")[语言模型](https://zh.wikipedia.org/wiki/语言模型 "wikilink")，通过n个语词出现的概率来推断语句的结构。\[1\]\[2\]这一模型被广泛应用于[概率论](https://zh.wikipedia.org/wiki/概率论 "wikilink")、通信理论、[计算语言学](../Page/计算语言学.md "wikilink")（如基于统计的[自然语言处理](../Page/自然语言处理.md "wikilink")）、[计算生物学](../Page/计算生物学.md "wikilink")（如[序列分析](https://zh.wikipedia.org/wiki/序列分析 "wikilink")）、[数据压缩等领域](../Page/数据压缩.md "wikilink")。

当n分别为1、2、3时，又分别称为一元语法（）、[二元语法](https://zh.wikipedia.org/wiki/二元语法 "wikilink")（）与三元语法（）。\[3\]

## 示例

| 领域                                                      | 单位                                                | 示例                        | 一元语法                                                            | 二元语法                                                                               | 三元语法                                                                                                |
| ------------------------------------------------------- | ------------------------------------------------- | ------------------------- | --------------------------------------------------------------- | ---------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| [马尔可夫链阶数](../Page/马尔可夫链.md "wikilink")                  |                                                   |                           | 0                                                               | 1                                                                                  | 2                                                                                                   |
| [蛋白质测序](../Page/蛋白质.md "wikilink")                      | [氨基酸](../Page/氨基酸.md "wikilink")                  | … Cys-Gly-Leu-Ser-Trp …   | …, Cys, Gly, Leu, Ser, Trp, …                                   | …, Cys-Gly, Gly-Leu, Leu-Ser, Ser-Trp, …                                           | …, Cys-Gly-Leu, Gly-Leu-Ser, Leu-Ser-Trp, …                                                         |
| [DNA测序](https://zh.wikipedia.org/wiki/DNA测序 "wikilink") | [碱基对](../Page/碱基对.md "wikilink")                  | …AGCTTCGA…                | …, A, G, C, T, T, C, G, A, …                                    | …, AG, GC, CT, TT, TC, CG, GA, …                                                   | …, AGC, GCT, CTT, TTC, TCG, CGA, …                                                                  |
| [计算语言学](../Page/计算语言学.md "wikilink")                    | [字符](../Page/字符.md "wikilink")                    | …to_be_or_not_to_be… | …, t, o, _, b, e, _, o, r, _, n, o, t, _, t, o, _, b, e, … | …, to, o_, _b, be, e_, _o, or, r_, _n, no, ot, t_, _t, to, o_, _b, be, … | …, to_, o_b, _be, be_, e_o, _or, or_, r_n, _no, not, ot_, t_t, _to, to_, o_b, _be, … |
| [计算语言学](../Page/计算语言学.md "wikilink")                    | [单词](https://zh.wikipedia.org/wiki/单词 "wikilink") | … to be or not to be …    | …, to, be, or, not, to, be, …                                   | …, to be, be or, or not, not to, to be, …                                          | …, to be or, be or not, or not to, not to be, …                                                     |

不同领域中的*n*元语法示例

## 参考文献

[Category:機率模型](https://zh.wikipedia.org/wiki/Category:機率模型 "wikilink")
[Category:語言模型](https://zh.wikipedia.org/wiki/Category:語言模型 "wikilink")
[Category:计算语言学](https://zh.wikipedia.org/wiki/Category:计算语言学 "wikilink")
[Category:自然语言处理](https://zh.wikipedia.org/wiki/Category:自然语言处理 "wikilink")

1.  <https://class.coursera.org/nlp/lecture/17>

2.

3.