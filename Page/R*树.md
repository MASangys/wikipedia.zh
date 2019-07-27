**R\*树**是[R树](../Page/R树.md "wikilink")的一种变体，可用来建立。R\*树的构造花费比标准R树略高。例如数据可能需要被重新插入，但这通常能获得更好的查询性能。像标准R树一样，它能存储点和空间数据。它在1990年由Norbert
Beckmann，Hans-Peter Kriegel，Ralf Schneider，和Bernhard Seeger提出。\[1\]

## R\*树和R树的不同

[RTree_2D.svg](https://zh.wikipedia.org/wiki/File:RTree_2D.svg "fig:RTree_2D.svg"))。
这颗树的重叠较少，因此有很好的查询性能。 红的和蓝的MBRs是索引页，绿的MBRs是叶节点。\]\]
coverage和重叠的最小化对于R树的性能至关重要。重叠意味着，对于数据查询和插入，多于一个的树分支需要被扩展（由于这个方法数据将被分裂到许多可能重叠的区域）。
一个最小化的 coverage 改进修剪性能，经常允许从搜索排除 所有页面，特别是负值范围的查询。

在节点溢出时，R\*树尝试减少 both, using a combination of a revised 节点分裂算法和强制重插的概念。
这基于观察 that R树结构 are highly susceptible to the order in which their
entries are inserted, so an insertion-built (rather than bulk-loaded)
structure is likely to be sub-optimal.
entries的删除和重插允许他们在树中“找”到一个比原来更适合的位置。

当一个节点溢出，它的一部分entries会被移除并重新插入到树。 (为了避免被随后的节点溢出引起 an indefinite cascade
of 重插，重插例程可能只被调用一次 in 树的每一级 when 插入任一新的entry。) This has the effect of
producing more well-clustered groups of entries in nodes, 减少节点coverage。
此外， actual node splits are often postponed, causing average node
occupancy to rise. 重插能被看作增长树的一种优化方法, 它在节点溢出时被触发。

## 性能

  - Improved split heuristic produces pages that are more rectangular
    and thus better for 许多应用。
  - 重插方法优化已经存在的树，但增加了复杂性。
  - 同时高效地支持点和空间数据。

## 算法和复杂性

  - R\*树的查询和删除操作使用和正规[R树](../Page/R树.md "wikilink")一样的算法。
  - 插入时，R\*树使用一种组合策略。对于叶节点，重叠被最小化，而对于内节点，则enlargement和area被最小化。
  - 分裂时，R\*树使用一种拓扑分裂，其选择一条基于perimeter的分裂轴，然后最小化重叠。
  - 除改良的分裂策略外，R\*树也尝试通过重插对象和子树来避免分裂，灵感来自平衡一颗[B树](../Page/B树.md "wikilink")的概念。

显然，最坏情况下R\*树的查询和删除复杂度与R树相当。R\*树的插入策略具有\(\mathcal{O}(M \log M)\)的复杂度，它比R树线性分裂策略的复杂度高（\(\mathcal{O}(M)\)），但比R树取页大小为\(M\)时的二次分裂策略（\(\mathcal{O}(M^2)\)）复杂度低，并且对总复杂度没有太大的影响。R\*树总的插入复杂性仍与R树相当。重插至多影响一个树支，因此重插操作具有\(\mathcal{O}(\log n)\)的复杂度，这与正规R树的分裂操作相当。总体而言，R\*树的复杂度与正规R树处于同一数量级。

一个完整的算法实现必须考虑诸多未在此处涉及的[邊角案例与特殊情况](https://zh.wikipedia.org/wiki/邊角案例 "wikilink")。

## 参考资料

## 外部链接

包含R\*树的库：

  - [Boost.Geometry rtree
    documentation](http://www.boost.org/doc/libs/release/libs/geometry/doc/html/geometry/reference/spatial_indexes/boost__geometry__index__rtree.html)
    (C++, maybe R-tree only)
  - [ELKI R\*-tree package
    documentation](http://elki.dbs.ifi.lmu.de/releases/release0.6.0/doc/de/lmu/ifi/dbs/elki/index/tree/spatial/rstarvariants/rstar/package-summary.html)
    (Java)
  - [Spatial Index Library](http://libspatialindex.github.io/) (C++)
  - [SQLite R\*-tree module](http://sqlite.org/rtree.html) (C)
  - [TPIE Library](http://www.madalgo.au.dk/tpie) (C++)
  - [XXL Library](https://code.google.com/p/xxl/) (Java, maybe R-tree
    only)

示例代码：

  - [A header-only C++ R\* Tree
    Implementation](http://www.virtualroadside.com/blog/index.php/2008/10/04/r-tree-implementation-for-cpp/)
    (probably buggy and it does not generate a R\*-tree, but a freely
    defined (by the code author) variation of the original definition)
  - [A 2D R\*-tree implementation
    (C/C++)](https://archive.is/20140726151319/http://www.ics.uci.edu/~salsubai/rstartree.html)
  - [R-tree Demo Applet (requires
    Java)](http://donar.umiacs.umd.edu/quadtree/points/rtrees.html)

[Category:R树](https://zh.wikipedia.org/wiki/Category:R树 "wikilink")
[Category:数据库索引技术](https://zh.wikipedia.org/wiki/Category:数据库索引技术 "wikilink")

1.