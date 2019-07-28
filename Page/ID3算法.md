**ID3**算法（Iterative Dichotomiser 3 迭代二叉树3代）是一个由[Ross
Quinlan发明的用于](https://zh.wikipedia.org/wiki/Ross_Quinlan "wikilink")[决策树](../Page/决策树.md "wikilink")的[算法](../Page/算法.md "wikilink")。

这个算法是建立在[奥卡姆剃刀](../Page/奥卡姆剃刀.md "wikilink")的基础上：越是小型的决策树越优于大的决策树（简单理论）。尽管如此，该算法也不是总是生成最小的树形结构。而是一个[启发式算法](https://zh.wikipedia.org/wiki/启发式算法 "wikilink")。奥卡姆剃刀阐述了一个[信息熵的概念](https://zh.wikipedia.org/wiki/信息熵 "wikilink")：

\[I_{E}(i) = - \sum^{m}_{j=1}  f (i,j) \log_{2} f (i, j).\]

这个ID3算法可以归纳为以下几点：

1.  使用所有没有使用的属性并计算与之相关的样本熵值
2.  选取其中熵值最小的属性
3.  生成包含该属性的节点

关于ID3算法的实现可以参考[C4.5算法](../Page/C4.5算法.md "wikilink")，它同时也是ID3的升级版。

## 相关主题

  - [C4.5算法](../Page/C4.5算法.md "wikilink")

## 参考文献

  - Mitchell, Tom M. *Machine Learning*. McGraw-Hill, 1997.

## 外部链接

  - Seminars -
    [<http://www2.cs.uregina.ca/>](http://www2.cs.uregina.ca/~hamilton/courses/831/notes/ml/dtrees/4_dtrees1.html)
  - Description and examples -
    [<http://www.cise.ufl.edu/>](http://www.cise.ufl.edu/~ddd/cap6635/Fall-97/Short-papers/2.htm)
  - Description and examples -
    [<http://www.cis.temple.edu/>](http://www.cis.temple.edu/~ingargio/cis587/readings/id3-c45.html)
  - [An implementation of ID3 in
    Python](http://www.onlamp.com/pub/a/python/2006/02/09/ai_decision_trees.html)
  - [An implementation of ID3 in
    Ruby](https://web.archive.org/web/20081016040703/http://ai4r.rubyforge.org/machineLearning.html)
  - [An implementation of ID3 in Common
    Lisp](http://www.pvv.ntnu.no/~oyvinht/static/OSS/cl-id3/)
  - Implementation of ID3 algorithm in C\# -
    <https://web.archive.org/web/20061109050158/http://www.codeproject.com/cs/algorithms/id3.asp>
  - [An implementation of ID3 in
    Perl](http://search.cpan.org/~kwilliams/AI-DecisionTree)

[Category:决策树](https://zh.wikipedia.org/wiki/Category:决策树 "wikilink")
[Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")
[Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")