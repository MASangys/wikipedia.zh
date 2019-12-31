> 本文内容由[R+树](https://zh.wikipedia.org/wiki/R+树)转换而来。


R+树可以用地址来查询数据。地址用坐标来表示，一般是(x, y)[轴坐标](../Page/坐標系.md "wikilink")，常用于[地理坐标](https://zh.wikipedia.org/wiki/地理 "wikilink")。单个地址查询问题早已被解决，而多地址查询，或者查询在坐标系上的附近地址则需要更巧妙的算法。

R+树本质上来说是[树结构](../Page/树_\(数据结构\).md "wikilink")，是R树的一个变体，也被用来检索空间信息。

## R+树和R树的区别

R+树是[R树](../Page/R树.md "wikilink")和[k-d树这两种空间检索方式的折中办法](https://zh.wikipedia.org/wiki/k-d树 "wikilink")。为了避免子节点重叠，R+树允许把同一个对象插入到多个叶子节点中。当对象跟多个子节点相交时，将其切割成多份，使每一份只跟一个子节点相交。根据具体情况，可以让每个分割持有完整或部分数据，或者把对象存储在其它地方，每个分割持有一个指向存储位置的标识符。定义**覆盖范围**为树上所有外接矩形覆盖的区域，**重叠范围**为所有存在至少两个外界矩形的区域\[1\]。让覆盖范围尽量小可以减少R树上节点涵盖的“无效区”，也就是不存在对象的区域。让重叠范围尽量小可以减少搜索路径。就减少访问时间而言，最小化重叠范围比最小化覆盖范围更关键。为了提高搜索性能，要让覆盖范围和重叠范围都尽量小。

R+树和R树的区别在于：R+树的节点并不保证至少填充一半，节点互不相交，并且指向同一个对象的标识符可能会存在于多个叶子节点中。

## 优势

因为节点互不相交，所以在搜索时最多只会有一个子树（子节点）覆盖一个点，因此R+树的点搜索操作性能极佳。在搜索一个点时，算法只需要沿着一条路径一直往下访问就可以了，这要比R树的访问量少很多。

## 劣势

因为一个对象的外接矩形可能会被分割成多份分别插入不同的节点，所以使用同样的数据集，R+树可能比R树需要更多空间。创建和维护R+树也比R树和其它R树的变体更加复杂。

## 注释

## 参考资料

  - T. Sellis, N. Roussopoulos, and C. Faloutsos. [The R+-Tree: A dynamic index for multi-dimensional objects](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.45.3272). In VLDB, 1987.

|                                                                                       |                                                                                                                                                          |
| ------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [替代=Stub icon](https://zh.wikipedia.org/wiki/File:Binary_tree.svg "fig:替代=Stub icon") | *这个[算法](../Page/算法.md "wikilink")或[数据结构](../Page/数据结构.md "wikilink")相关的文章是个[小作品](https://zh.wikipedia.org/wiki/Wikipedia:小作品 "wikilink")，你可以帮助维基扩充它的内容。* |

[Category:R树](https://zh.wikipedia.org/wiki/Category:R树 "wikilink") [Category:数据库索引技术](https://zh.wikipedia.org/wiki/Category:数据库索引技术 "wikilink") [Category:電腦科學小作品](https://zh.wikipedia.org/wiki/Category:電腦科學小作品 "wikilink")

1.