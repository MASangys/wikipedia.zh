**Spark
RDD**（，弹性分布式数据集）是一种数据存储集合。只能由它支持的数据源或是由其他RDD经过一定的转换（Transformation）来产生。在RDD上可以执行的操作有两种转换（Transformation）和行动（Action），每个
RDD 都记录了自己是如何由持久化存储中的源数据计算得出的，即其血统（Lineage）。

## 转换

  - map(func)：返回一个新的分布式数据集，由每个原元素经过func函数处理后的新元素组成

<!-- end list -->

  - filter(func)：返回一个新的数据集，由经过func函数处理后返回值为true的原元素组成

<!-- end list -->

  - flatMap(func)：类似于map，但是每一个输入元素，会被映射为0个或多个输出元素，因此，func函数的返回值是一个seq，而不是单一元素

## 行动

  - reduce(func)：通过函数func聚集数据集中的所有元素，这个函数必须是关联性的，确保可以被正确的并发执行

<!-- end list -->

  - collect()：在driver的程序中，以数组的形式，返回数据集的所有元素，这通常会在使用filter或者其它操作后，返回一个足够小的数据子集再使用

## 依赖

  - 宽依赖：父RDD中的分片可能被子 RDD 中的多个分片所依赖
  - 窄依赖：父RDD的每个分片至多被子 RDD 中的一个分片所依赖

## 参考文献

[Category:Apache软件基金会项目](https://zh.wikipedia.org/wiki/Category:Apache软件基金会项目 "wikilink")