**SlimTrie** 类似于[Trie](../Page/Trie.md "wikilink"),
是一种有序的[树](../Page/树_\(数据结构\).md "wikilink")，用于**索引**[关联数组](../Page/关联数组.md "wikilink")，其中的键通常是[字符串](../Page/字符串.md "wikilink")。
SlimTrie与[Trie的不同之处在于](../Page/Trie.md "wikilink"), 它不保存完整键的信息,
而只保存用于定位一个**键**的关键信息, 因此SlimTrie具有的内存占用非常低,
对每个键平均占用6个byte。

SlimTrie
的创建过程首先基于一个[Trie](../Page/Trie.md "wikilink")，通过对Trie的数据进行分析，压缩和去除分支无关信息，生成一个SlimTrie。

SlimTrie的结构非常依赖于它的生成[Trie的结构](../Page/Trie.md "wikilink")，对原始Trie的一个修改可能会导致最终SlimTrie的数据的巨大变化，因此SlimTrie更适合静态数据的索引。对SlimTrie的更新操作，一般通过整体替换SlimTrie的方式进行。

## 应用场景

### 静态数据索引

数据生成之后在使用阶段不修改, 依赖于这个假设我们可以对索引进行更多的优化: 预先对所有的key进行扫描, 提取特征, 大大降低索引信息的量。
在存储系统中, 需要被索引的数据大部分是静态的: 数据的更新是通过Append 和 Compact这2个操作完成的.
一般不需要随机插入一条记录.

  - SlimTrie保证存在的key被正确的定位

只对存在的key给出正确返回。对于不存在的key不保证返回的结果正确，可能直接返回没被定位到，也可能返回一个存储存在的key的信息，这样的设计是为了可以去掉更多与定位一个key无关的信息。

  - 允许被索引到的key不一定存在

索引的目的在于快速定位一个对象, 但不保证定位到的对象一定存在，就像Btree的中间节点, 用来确定key的范围,
但要查找的key是否真的存在, 需要在Btree的叶子节点(真实数据)上来确定。

  - SlimTrie支持顺序遍历存在的key

索引很多情况下需要支持范围查询，SlimTrie 作为索引的数据结构，一定是支持顺序遍历的特点。SlimTrie
在结构上与树形结构有相似点，顺序遍历的实现并不难。

  - SlimTrie的内存开销只与key的个数n相关，不依赖于key的长度k.

<!-- end list -->

  - SlimTrie支持最大16KB的key.

<!-- end list -->

  - SlimTrie查询速度要快.

### 作为通用关关联数组

### 作为磁盘数据索引

## 术语

  - n: key的总数: 1 - 2^32
  - k: key的平均长度 1 - 2^16
  - k\[i\]: 某个key的长度 1 - 2^16
  - userdata: 要索引的用户数据, 这里userdata是一组(offset, size)
  - leaf: SlimTrie中的叶子节点, 每个leaf对应一个存在的key
  - inner: SlimTrie中的非叶子节点

## 算法

SlimTrie的生成分为三部分。

  - 先用一个Trie来做所有key的索引, 并在Trie的基础上做裁剪, 将索引数据的量级从O(n \* k)降低到O(n)。
  - Trie的压缩, 通过一个compacted array来存储整个Trie的数据结构, 在实现上将内存开销降低。
  - 对小文件的优化, 将多个相邻的小文件用1条索引来标识, 平衡IO开销和内存开销。

### 中间节点剪裁

### 叶子节点剪裁

### 压缩数组

### 4bit word

## 时间空间效率分析

## 参考资料

## 外部链接

  - [SlimTrie at github](https://github.com/bsc-s2/slimtrie)

[分类:数据结构](https://zh.wikipedia.org/wiki/分类:数据结构 "wikilink")

[Category:使用创建条目精灵建立的页面](https://zh.wikipedia.org/wiki/Category:使用创建条目精灵建立的页面 "wikilink")
[Category:数据结构](https://zh.wikipedia.org/wiki/Category:数据结构 "wikilink")