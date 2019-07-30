**BIRCH**（英文全称：balanced iterative reducing and clustering using hierarchies，中文：利用层次方法的平衡迭代规约和聚类）\[1\]是一个[非监督式](https://zh.wikipedia.org/wiki/非監督式學習 "wikilink")[分层聚类算法](../Page/聚类分析.md "wikilink")，于1996年由 Tian Zhang 提出。算法的优势在于能够利用有限的内存资源完成对大数据集的高质量的聚类。\[2\]该算法通过构建聚类特征树（Clustering Feature Tree，简称CF Tree），在接下来的聚类过程中，直接对聚类特征进行聚类，而无需对原始数据集进行聚类。\[3\]因此在多数情况下只需要扫描一次[数据库](../Page/数据库.md "wikilink")即可进行聚类，IO成本与数据集尺寸呈线性关系。\[4\]

## 聚类特征树

算法利用构建聚类特征树进行计算，树上的节点称作**聚类特征**（CF）。 聚类特征为一个三维[向量](../Page/向量.md "wikilink")(n,LS,SS)\[5\]，n表示子类中节点的数目，LS表示n个点的线性和，SS表示n个点的平方和。

## 参考资料

[Category:数据挖掘](https://zh.wikipedia.org/wiki/Category:数据挖掘 "wikilink") [Category:聚类分析](https://zh.wikipedia.org/wiki/Category:聚类分析 "wikilink") [Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")

1.
2.
3.
4.
5.