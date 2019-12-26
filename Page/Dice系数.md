**Dice系数**, 根据 [Lee Raymond Dice](https://zh.wikipedia.org/wiki/Lee_Raymond_Dice "wikilink")\[1\] 命名，是一种集合相似度度量函数，通常用于计算两个样本的相似度：

\[s = \frac{2 | X \cap Y |}{| X | + | Y |}\]

它和[Sørensen 相似度指数相同](https://zh.wikipedia.org/wiki/Sørensen_相似度指数 "wikilink"), 也称作Sørensen-Dice系数。 它在形式上和[Jaccard指数没多大区别](https://zh.wikipedia.org/wiki/Jaccard指数 "wikilink")，但是有些不同的性质。

和Jaccard类似，它的范围为0到1。 与Jaccard不同的是，相应的差异函数

\[d = 1 -  \frac{2 | X \cap Y |}{| X | + | Y |}\]

不是一个合适的距离度量措施，因为它没有三角形不等性的性质。例如给定 {a}, {b}, 和 {a,b}, 前两个集合的距离为1， 而第三个集合和其他任意两个集合的距离为三分之一。

与Jaccard类似, 集合操作可以用两个向量 *A* 和*B*的操作来表示:

\(s_v = \frac{2 | A \cdot B |}{| A |^2 + | B |^2}\)

上式给出了两个向量的距离输出，也给出了更一般情况下向量之间的相似度度量措施。 Dice 系数可以计算两个字符串的相似度：Dice（s1,s2）=2\*comm(s1,s2)/(leng(s1)+leng(s2))。 其中，comm (s1,s2)是s1、s2 中相同字符的个数leng(s1)，leng(s2)是字符串s1、s2 的长度。

在[信息检索中](https://zh.wikipedia.org/wiki/信息检索 "wikilink"), 给定关键词集合*X* 和*Y* ，相似度定义为两倍的共同信息(重叠部分)除以基数的总和 :\[2\]

当作为字符串之间的相似度度量时, 计算两个字符串之间的系数, *x* 和*y*，使用 [bigrams](https://zh.wikipedia.org/wiki/bigram "wikilink") 公式如下:\[3\]

\[s = \frac{2 n_t}{n_x + n_y}\]

其中*n*<sub>*t*</sub> 是两个字符串共有的bigrams的个数, *n*<sub>*x*</sub> 是 *x*中bigrams的个数 ，*n*<sub>*y*</sub> 是 *y*中bigrams的个数。例如要计算下面两个字符串之间的相似度:

  -
    `night`
    `nacht`

我们可以在各个单词中得出如下bigrams集合:

  -
    {`ni`,`ig`,`gh`,`ht`}
    {`na`,`ac`,`ch`,`ht`}

每个集合有4个元素, 这个两个集合只有一个相同的元素: `ht`.

代入公式我们可以计算出, *s* = (2 · 1) / (4 + 4) = 0.25.

## 同见

  - [雅卡爾指數](https://zh.wikipedia.org/wiki/雅卡爾指數 "wikilink")（Jaccard index）, 等同于: \(D=2J/(1+J)\) and \(J=D/(2-D)\)
  - [Tversky index](https://zh.wikipedia.org/wiki/Tversky_index "wikilink")
  - [Levenshtein distance](https://zh.wikipedia.org/wiki/Levenshtein_distance "wikilink")
  - [Sørensen similarity index](https://zh.wikipedia.org/wiki/Sørensen_similarity_index "wikilink")

## 参考文献

## 参考资料

<references />

[Category:Information_retrieval](https://zh.wikipedia.org/wiki/Category:Information_retrieval "wikilink") [Category:String_similarity_measures](https://zh.wikipedia.org/wiki/Category:String_similarity_measures "wikilink") [Category:Measure_theory](https://zh.wikipedia.org/wiki/Category:Measure_theory "wikilink")

1.
2.
3.