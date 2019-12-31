> 本文内容由[Timsort](https://zh.wikipedia.org/wiki/Timsort)转换而来。


**Timsort** 是一种混合稳定的[排序算法](../Page/排序算法.md "wikilink")，源自[合并排序和](../Page/归并排序.md "wikilink")[插入排序](../Page/插入排序.md "wikilink")，旨在较好地处理真实世界中各种各样的数据。它使用了 [Peter Mcllroy](https://zh.wikipedia.org/wiki/彼得*麦克罗伊 "wikilink") 的"乐观排序和信息理论上复杂性"中的技术，参见 *第四届年度ACM-SIAM离散算法研讨会论文集*，第467-474页，1993年。 它由 Tim Peters 在2002年实现，并应用于 [Python](../Page/Python.md "wikilink")编程语言。该算法通过查找已经排好序的数据子序列，在此基础上对剩余部分更有效地排序。 该算法通过不断地将特定子序列（称为一个 run ）与现有的 run 合并，直到满足某些条件为止来达成的更有效的排序。 从 2.3 版本起，Timsort 一直是 Python 的标准排序算法。 它还被 [Java SE7](../Page/Java版本歷史.md "wikilink")\[1\], [Android platform](../Page/Android.md "wikilink")\[2\], [GNU Octave](../Page/GNU_Octave.md "wikilink"),\[3\] [谷歌浏览器](../Page/Google_Chrome.md "wikilink"),\[4\] 和 [Swift](../Page/Swift_\(程式語言\).md "wikilink")\[5\] 用于对非原始类型的数组排序。

## 参考文献

[Category:排序算法](https://zh.wikipedia.org/wiki/Category:排序算法 "wikilink") [Category:稳定排序](https://zh.wikipedia.org/wiki/Category:稳定排序 "wikilink") [Category:比较排序](https://zh.wikipedia.org/wiki/Category:比较排序 "wikilink")

1.
2.
3.
4.
5.