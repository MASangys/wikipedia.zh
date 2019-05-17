[C++程序设计语言中](https://zh.wikipedia.org/wiki/C++程序设计语言 "wikilink")，**`unordered_map`**、**`unordered_multimap`**、**`unordered_set`**、**`unordered_multiset`**是[标准模板库](../Page/标准模板库.md "wikilink")（STL）提供的一类**无序关联容器**（unordered
associative
containers）。是通过[哈希表实现的](../Page/哈希表.md "wikilink")[数据结构](../Page/数据结构.md "wikilink")。无序是指元素的名字（或者键值）的存储是无序的；这与用[平衡二叉树实现的元素名字是有序存储的](https://zh.wikipedia.org/wiki/平衡二叉树 "wikilink")“[关联容器](../Page/关联数组.md "wikilink")”是相对概念。

## 历史

[SGI的](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink")[STL提供了](../Page/标准模板库.md "wikilink")`hash_map`,
`hash_set`, `hash_multimap`,
`hash_multiset`等类模板。\[1\]由于其有用性，很快其它的C++编译器也支持了这一特性，如[GCC](https://zh.wikipedia.org/wiki/GNU_Compiler_Collection "wikilink")、
[libstdc++](https://zh.wikipedia.org/wiki/libstdc++ "wikilink")\[2\]
以及[MSVC](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")
（在stdext[命名空间](../Page/命名空间.md "wikilink")）。

[C++
TR1语言标准中提出了增加](../Page/C++_Technical_Report_1.md "wikilink")`hash_*`类模板\[3\]，最终接受为`unordered_*`。
\[4\] [Boost C++
Libraries也提供了一种实现](../Page/Boost_C++_Libraries.md "wikilink")。`<boost/unordered_map.hpp>`.\[5\]

## 类成员函数

头文件<unordered_map>中定义了类模板`unordered_map`。并满足[容器](http://www.sgi.com/tech/stl/Container.html)[概念](https://zh.wikipedia.org/wiki/concept_\(generic_programming\) "wikilink")，这意味着它支持`begin()`、`end()`、`size()`、`max_size()`、`empty()`、
`swap()`等方法。

<table>
<thead>
<tr class="header">
<th></th>
<th><p><code>unordered_set</code><br />
(<a href="../Page/C++11.md" title="wikilink">C++11</a>)</p></th>
<th><p><code>unordered_map</code><br />
(<a href="../Page/C++11.md" title="wikilink">C++11</a>)</p></th>
<th><p><code>unordered_multiset</code><br />
(<a href="../Page/C++11.md" title="wikilink">C++11</a>)</p></th>
<th><p><code>unordered_multimap</code><br />
(<a href="../Page/C++11.md" title="wikilink">C++11</a>)</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/unordered_set">(constructor)</a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/unordered_map">(constructor)</a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/unordered_multiset">(constructor)</a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/unordered_multimap">(constructor)</a></p></td>
<td><p>构造函数包括缺省构造、拷贝构造、移动构造等</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/~unordered_set">(destructor)</a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/~unordered_map">(destructor)</a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/~unordered_multiset">(destructor)</a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/~unordered_multimap">(destructor)</a></p></td>
<td><p>析构函数</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/operator="><code>operator=</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/operator="><code>operator=</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/operator="><code>operator=</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/operator="><code>operator=</code></a></p></td>
<td><p>赋值运算符</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/get_allocator"><code>get_allocator</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/get_allocator"><code>get_allocator</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/get_allocator"><code>get_allocator</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/get_allocator"><code>get_allocator</code></a></p></td>
<td><p>返回分配器，用于给容器元素分配内存</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Element access</p></td>
<td></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/at"><code>at</code></a></p></td>
<td></td>
<td></td>
<td><p>带边界检查的返回元素（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/operator_at"><code>operator[]</code></a></p></td>
<td></td>
<td></td>
<td><p>不带边界检查的返回元素，可用于插入元素</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Iterators</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/begin"><code>begin,cbegin</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/begin"><code>begin,cbegin</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/begin"><code>begin,cbegin</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/begin"><code>begin,cbegin</code></a></p></td>
<td><p>返回指向哈希表指定条目（bucket）所包含的首元素的迭代器 （<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/end"><code>end</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/end"><code>end</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/end"><code>end</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/end"><code>end</code></a></p></td>
<td><p>指向容器末尾的迭代器</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Capacity</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/empty"><code>empty</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/empty"><code>empty</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/empty"><code>empty</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/empty"><code>empty</code></a></p></td>
<td><p>检查容器是否为空</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/size"><code>size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/size"><code>size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/size"><code>size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/size"><code>size</code></a></p></td>
<td><p>返回容器元素的数量。</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/max_size"><code>max_size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/max_size"><code>max_size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/max_size"><code>max_size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/max_size"><code>max_size</code></a></p></td>
<td><p>返回受系统与库的实现所限，容器元素的最大可能数量</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Modifiers</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/clear"><code>clear</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/clear"><code>clear</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/clear"><code>clear</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/clear"><code>clear</code></a></p></td>
<td><p>清空容器</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/insert"><code>insert</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/insert"><code>insert</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/insert"><code>insert</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/insert"><code>insert</code></a></p></td>
<td><p>插入元素</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/emplace"><code>emplace</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/emplace"><code>emplace</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/emplace"><code>emplace</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/emplace"><code>emplace</code></a></p></td>
<td><p>原位构造 (<a href="../Page/C++11.md" title="wikilink">C++11</a>)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/emplace_hint"><code>emplace_hint</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/emplace_hint"><code>emplace_hint</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/emplace_hint"><code>emplace_hint</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/emplace_hint"><code>emplace_hint</code></a></p></td>
<td><p>使用hint原位构造 (<a href="../Page/C++11.md" title="wikilink">C++11</a>)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/try_emplace"><code>try_emplace</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/try_emplace"><code>try_emplace</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/try_emplace"><code>try_emplace</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/try_emplace"><code>try_emplace</code></a></p></td>
<td><p>如果给定的key在容器中不存在，原位构造一个元素 (<a href="../Page/C++17.md" title="wikilink">C++17</a>)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/erase"><code>erase</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/erase"><code>erase</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/erase"><code>erase</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/erase"><code>erase</code></a></p></td>
<td><p>擦除元素</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/swap"><code>swap</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/swap"><code>swap</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/swap"><code>swap</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/swap"><code>swap</code></a></p></td>
<td><p>两个容器交换内容</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Lookup</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/count"><code>count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/count"><code>count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/count"><code>count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/count"><code>count</code></a></p></td>
<td><p>返回匹配指定键值的元素数量</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/find"><code>find</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/find"><code>find</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/find"><code>find</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/find"><code>find</code></a></p></td>
<td><p>发现具有指定键值的元素</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/equal_range"><code>equal_range</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/equal_range"><code>equal_range</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/equal_range"><code>equal_range</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/equal_range"><code>equal_range</code></a></p></td>
<td><p>返回匹配指定键值的元素范围</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/reserve"><code>reserve</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/reserve"><code>reserve</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/reserve"><code>reserve</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/reserve"><code>reserve</code></a></p></td>
<td><p>扩展容器的容量（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Bucket接口</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/bucket_size"><code>bucket_size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/bucket_size"><code>bucket_size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/bucket_size"><code>bucket_size</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/bucket_size"><code>bucket_size</code></a></p></td>
<td><p>返回指定索引的哈希表条目所容纳的容器元素的数量（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
</tr>
<tr class="even">
<td><p>哈希策略</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/hash_function"><code>hash_function</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/hash_function"><code>hash_function</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/hash_function"><code>hash_function</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/hash_function"><code>hash_function</code></a></p></td>
<td><p>返回用于创制键值hash的函数对象</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/key_eq"><code>key_eq</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/key_eq"><code>key_eq</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/key_eq"><code>key_eq</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/key_eq"><code>key_eq</code></a></p></td>
<td><p>返回键值比较函数对象（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/rehash"><code>rehash</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/rehash"><code>rehash</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/rehash"><code>rehash</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/rehash"><code>rehash</code></a></p></td>
<td><p>设定哈希表的条目（bucket）数量并重新生成哈希表（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/max_load_factor"><code>max_load_factor</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/max_load_factor"><code>max_load_factor</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/max_load_factor"><code>max_load_factor</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/max_load_factor"><code>max_load_factor</code></a></p></td>
<td><p>返回或者设置哈希表的每个条目能容纳的容器元素的最大数量（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/load_factor"><code>load_factor</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/load_factor"><code>load_factor</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/load_factor"><code>load_factor</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/load_factor"><code>load_factor</code></a></p></td>
<td><p>返回哈希表的每个条目容纳的容器元素的平均数量（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/max_bucket_count"><code>max_bucket_count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/max_bucket_count"><code>max_bucket_count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/max_bucket_count"><code>max_bucket_count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/max_bucket_count"><code>max_bucket_count</code></a></p></td>
<td><p>返回由于系统及库的实现所能支持的哈希表条目的最大可能数量（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/bucket_count"><code>bucket_count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/bucket_count"><code>bucket_count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/bucket_count"><code>bucket_count</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/bucket_count"><code>bucket_count</code></a></p></td>
<td><p>返回容器中的哈希表条目的数量（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/bucket"><code>bucket</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/bucket"><code>bucket</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/bucket"><code>bucket</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/bucket"><code>bucket</code></a></p></td>
<td><p>返回指定键值所匹配的哈希表条目的索引（<a href="../Page/C++11.md" title="wikilink">C++11</a>）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Observers</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_set/operator_cmp"><code>operator==,!=</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_map/operator_cmp"><code>operator==,!=</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multiset/operator_cmp"><code>operator==,!=</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/container/unordered_multimap/operator_cmp"><code>operator==,!=</code></a></p></td>
<td><p>两个容器的内容是否相同</p></td>
</tr>
</tbody>
</table>

## 例子

``` cpp
#include <iostream>
#include <string>
#include <unordered_map>

int main()
{
    std::unordered_map<std::string, int> months;
    months["january"] = 31;
    months["february"] = 28;
    months["march"] = 31;
    months["april"] = 30;
    months["may"] = 31;
    months["june"] = 30;
    months["july"] = 31;
    months["august"] = 31;
    months["september"] = 30;
    months["october"] = 31;
    months["november"] = 30;
    months["december"] = 31;
    std::cout << "september -> " << months["september"] << std::endl;
    std::cout << "april     -> " << months["april"] << std::endl;
    std::cout << "december  -> " << months["december"] << std::endl;
    std::cout << "february  -> " << months["february"] << std::endl;

    //判断map中是否包含一个键值，没有直接做此事的成员函数。类似其他的STL容器，解决办法是：
    if( months.find("no_value") == months.end() )
    {
          printf("No such key in the map.");
    }
    return 0;
}
```

## 定制哈希函数

定制的哈希函数的参数为到定制类型的const引用，返回类型为size_t

``` cpp
struct X{int i,j,k;};

struct hash_X{
  size_t operator()(const X &x) const{
    return hash<int>()(x.i) ^ hash<int>()(x.j) ^ hash<int>()(x.k);
  }
};
```

定制哈希函数作为std::unordered_map的模板参数使用。

``` cpp
 std::unordered_map<X,int,hash_X> my_map;
```

或者通过特化std::hash来使用。

``` cpp
namespace std {
    template <>
        class hash<X>{
        public :
        size_t operator()(const X &x ) const{
            return hash<int>()(x.i) ^ hash<int>()(x.j) ^ hash<int>()(x.k);
        }
    };
}

//...
 std::unordered_map<X,int> my_map;
```

## 参考文献

[Category:C++標準函式庫](https://zh.wikipedia.org/wiki/Category:C++標準函式庫 "wikilink")

1.
2.
3.
4.
5.