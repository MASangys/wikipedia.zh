**MurmurHash**
是一种非[加密型](https://zh.wikipedia.org/wiki/加密 "wikilink")[哈希函数](https://zh.wikipedia.org/wiki/哈希函数 "wikilink")，适用于一般的哈希检索操作。\[1\]\[2\]\[3\]由Austin
Appleby在2008年发明，\[4\]\[5\] 并出现了多个变种，\[6\]
都已经发布到了[公有领域](../Page/公有领域.md "wikilink")(public
domain)。与其它流行的哈希函数相比，对于规律性较强的key，MurmurHash的随机分布特征表现更良好。\[7\]

## 变种

当前的版本是MurmurHash3，\[8\]\[9\] 能够产生出32-bit或128-bit哈希值。

较早的MurmurHash2\[10\]能产生32-bit或64-bit哈希值。对于大端存储和强制对齐的硬件环境有一个较慢的MurmurHash2可以用。MurmurHash2A
变种增加了[Merkle–Damgård
构造](https://zh.wikipedia.org/wiki/Merkle–Damgård_构造 "wikilink")，所以能够以增量方式调用。
有两个变种产生64-bit哈希值：MurmurHash64A，为64位处理器做了优化；MurmurHash64B，为32位处理器做了优化。MurmurHash2-160用于产生160-bit
哈希值，而MurmurHash1已经不再使用。

## 实现

最初的实现是[C++的](../Page/C++.md "wikilink")，但是被移植到了其他的流行语言上，包括
[Python](../Page/Python.md "wikilink"),\[11\]
[C](https://zh.wikipedia.org/wiki/C语言 "wikilink"),\[12\]
[C\#](../Page/C♯.md "wikilink"),\[13\]\[14\]
[Perl](../Page/Perl.md "wikilink"),\[15\]
[Ruby](../Page/Ruby.md "wikilink"),\[16\]
[PHP](../Page/PHP.md "wikilink"),\[17\]
[Haskell](../Page/Haskell.md "wikilink"),\[18\]、[Scala](../Page/Scala.md "wikilink")\[19\]、[Java](../Page/Java.md "wikilink")\[20\]\[21\]和[JavaScript](../Page/JavaScript.md "wikilink")\[22\]\[23\]等。

这个算法已经被若干开源计划所采纳，最重要的有libstdc++
(4.6版)、Perl\[24\]、[nginx](https://zh.wikipedia.org/wiki/nginx "wikilink")
(不早于1.0.1版)\[25\]、[Rubinius](https://zh.wikipedia.org/wiki/Rubinius "wikilink")\[26\]、
libmemcached
([Memcached的](../Page/Memcached.md "wikilink")[C语言客户端驱动](https://zh.wikipedia.org/wiki/C语言 "wikilink"))\[27\]、maatkit\[28\]、[Hadoop](https://zh.wikipedia.org/wiki/Hadoop "wikilink")\[29\]、Kyoto
Cabinet\[30\]以及[RaptorDB](https://zh.wikipedia.org/wiki/RaptorDB "wikilink")\[31\]。

## 算法

`Murmur3_32(`*`key`*`, `*`len`*`, `*`seed`*`)`
`    `*`c1`*` `\(\gets\)` 0xcc9e2d51`
`    `*`c2`*` `\(\gets\)` 0x1b873593`
`    `*`r1`*` `\(\gets\)` 15`
`    `*`r2`*` `\(\gets\)` 13`
`    `*`m`*` `\(\gets\)` 5`
`    `*`n`*` `\(\gets\)` 0xe6546b64`
` `
`    `*`hash`*` `\(\gets\)` seed`

`    for each fourByteChunk of key`
`        k `\(\gets\)` fourByteChunk`

`        k `\(\gets\)` k * c1`
`        k `\(\gets\)` (k << r1) `**`OR`**` (k >> (32-r1))`
`        k `\(\gets\)` k * c2`

`        hash `\(\gets\)` hash `**`XOR`**` k`
`        hash `\(\gets\)` (hash << r2) `**`OR`**` (hash >> (32-r2))`
`        hash `\(\gets\)` hash * m + n`

`    with any remainingBytesInKey`
`        remainingBytes `\(\gets\)` SwapEndianOrderOf(remainingBytesInKey)`
`        remainingBytes `\(\gets\)` remainingBytes * c1`
`        remainingBytes `\(\gets\)` (remainingBytes << r1) `**`OR`**` (remainingBytes >> (32 - r1))`
`        remainingBytes `\(\gets\)` remainingBytes * c2`

`        hash `\(\gets\)` hash `**`XOR`**` remainingBytes`
` `
`    hash `\(\gets\)` hash `**`XOR`**` len`

`    hash `\(\gets\)` hash `**`XOR`**` (hash >> 16)`
`    hash `\(\gets\)` hash * 0x85ebca6b`
`    hash `\(\gets\)` hash `**`XOR`**` (hash >> 13)`
`    hash `\(\gets\)` hash * 0xc2b2ae35`
`    hash `\(\gets\)` hash `**`XOR`**` (hash >> 16)`

## 参考

[Category:散列函数](https://zh.wikipedia.org/wiki/Category:散列函数 "wikilink")

1.

2.  [Chouza et
    al](http://laboratorios.fi.uba.ar/lsi/chouza-tesisingenieriainformatica.pdf).

3.

4.

5.

6.

7.

8.

9.

10.

11.

12.

13.
14.

15.

16.

17.

18.

19.

20. [MurmurHash3 in
    Java](http://docs.guava-libraries.googlecode.com/git/javadoc/com/google/common/hash/Hashing.html)
    , part of Guava

21. [Derek Young in
    Java](http://dmy999.com/article/50/murmurhash-2-java-port) , public
    domain

22.

23.

24.

25.

26.

27. [libmemcached](http://libmemcached.org/libMemcached.html)

28.

29.
30.

31.