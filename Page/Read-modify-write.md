**读-修改-写**（read-modify-write）是计算机科学中的一个原子操作（atomic operation，类似的还有[test-and-set](https://zh.wikipedia.org/wiki/test-and-set "wikilink"), [fetch-and-add](https://zh.wikipedia.org/wiki/fetch-and-add "wikilink"), [compare-and-swap等](https://zh.wikipedia.org/wiki/compare-and-swap "wikilink")），操作过程是读一个内存位置（或IO端口），修改其值，再写回原位置。\[1\]\[2\]

必须要先读操作的一个原因是，系统架构往往只允许字（word）级的读写，必须先读出那些不做修改的比特，保持不变再写回。写成[C语言语句类似于](https://zh.wikipedia.org/wiki/C语言 "wikilink")：

`*pRegister |= SOME_BIT;`

Read-modify-write指令用于IO端口时，可能会产生出乎意料的结果，如无法给一个比特置位。这往往是因为写操作并不影响到读操作的源寄存器。\[3\]

[RAID](../Page/RAID.md "wikilink")也使用这一术语描述原子操作的read-modify-write序列。\[4\] Such RAID levels include [RAID 4](https://zh.wikipedia.org/wiki/RAID_4 "wikilink"), [RAID 5](https://zh.wikipedia.org/wiki/RAID_5 "wikilink") and [RAID 6](https://zh.wikipedia.org/wiki/RAID_6 "wikilink").

## 参见

  -
  -
## 参考文献

[Category:協同控制](https://zh.wikipedia.org/wiki/Category:協同控制 "wikilink")

1.  ["Writing Lock-Free Code: A Corrected Queue"](http://www.ddj.com/embedded/210604448?pgno=3) by [Herb Sutter](https://zh.wikipedia.org/wiki/Herb_Sutter "wikilink"): "Compare-and-swap (CAS) is ... widely available ... However, some systems instead provide the equivalently powerful load-linked/store-conditional (LL/SC) instead."
2.
3.  [Massmind: "The read–modify–write problem"](http://techref.massmind.org/techref/readmodwrite.htm)
4.