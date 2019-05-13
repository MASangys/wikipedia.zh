**B堆**（）是一个用来保证子树在一个内存页的[二叉堆](../Page/二叉堆.md "wikilink")。这样可以在使用[虚拟内存时减少访问很大堆时内存页的访问](../Page/虚拟内存.md "wikilink")。传统的实现中，元素位置的映射（几乎）每一级都放在不同的内存页中。

也有其他非常高效实用虚拟内存和缓存的堆的变种，例如、k堆、\[1\]和。\[2\]

## 参见

  -
## 参考文献

## 外部链接

  - 实现： https://archive.is/20130416023425/http://www.varnish-cache.org/trac/browser/lib/libvarnish/binary_heap.c
    and <http://phk.freebsd.dk/B-Heap/binheap.c>
  - [Generic heap implementation with B-heap
    support](https://github.com/valyala/gheap).
  - 更多参见：van Emde Boas layouts see Benjamin Sach [Descent into
    Cache-Oblivion](http://www.cs.bris.ac.uk/Research/Seminars/departmental/2008-03-13_DeptSeminar_BenSach.pdf)
    or [Cache-oblivious data
    structures](http://blogs.msdn.com/b/devdev/archive/2007/06/12/cache-oblivious-data-structures.aspx).

[Category:堆](https://zh.wikipedia.org/wiki/Category:堆 "wikilink")

1.
2.