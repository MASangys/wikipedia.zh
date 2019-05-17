在[计算机科学中](../Page/计算机科学.md "wikilink")，**MSI协议**是一个在多处理器系统中运行的基本的[缓存一致性协议](https://zh.wikipedia.org/wiki/快取一致性 "wikilink")。与其他缓存一致性协议一样，协议名称中“M，S，I”三个字母表明高速缓存行可能的状态。

## 概述

在MSI中，缓存中包含的每个块可能处于以下三种状态之一：

  - **M**odified（已修改）：块已在[缓存中已被修改](../Page/缓存.md "wikilink")，缓存中的数据与后备存储器（例如[内存](https://zh.wikipedia.org/wiki/内存 "wikilink")）中的数据不一致。具有“M”状态的块的缓存在该块被替换时需要将其中的内容写回后备存储。
  - **S**hared（共享）：块未被修改，并在至少一个处理器的缓存中以只读状态存在。高速缓存可以将其替换而不将其中的数据写回后备存储。
  - **I**nvalid（无效）：该块不存在于当前缓存中，或者因为总线请求而被标记为无效。如果要将某个块存储在该缓存中，则必须首先从内存或另一个高速缓存中获取该块。\[1\]

这些一致性状态通过高速缓存和后备存储之间的通信进行维护。
当缓存中的某个块被读或写时，或者当缓存通过总线接收到其他缓存发出的读写信号时，它需要据此来做出动作并调整自己的状态。

当缓存收到读取请求时，如果一个块处于“M”或“S”状态，则它会直接提供数据。但如果块尚未被装入缓存(处于“I”状态)，则在装入该块之前，必须先要保证该地址的数据不会在其他缓存的缓存块中处于“M”状态。不同的缓存架构处理这个问题的方式是不同的。例如，总线架构通常使用[总线监听来解决此问题](https://zh.wikipedia.org/wiki/总线监听 "wikilink")，此时读取请求将广播给所有的缓存。其他架构，例如[缓存目录](https://zh.wikipedia.org/wiki/缓存目录 "wikilink")，则通过一个中介（例如目录）来获取哪一个缓存拥有缓存块的最新副本。如果另一个缓存中有处于“M”状态的块，则它必须将数据写回后备存储，并回到“S”或“I”状态。在数据写回之后，缓存可以通过后备存储或者其他缓存中处于“S”状态的对应块获取内容。之后缓存会答复读取请求。在提供的数据后,缓存块处于“S”状态。

当缓存收到读取请求时，如果一个块处于"M"状态，则缓只需要修改本地的数据。
如果块处于"S"状态，则缓存必须通知其他的具有处于“S”状态的同样的块的高速缓存将其换出。和上文所述类似，这种通知可以通过总线监听或缓存目录来进行。接下来缓存会修改本地的数据。
如果块处于"I"状态，则缓存必须通知其他的具有处于“S”或“M”状态的同样的块的高速缓存将其换出。如果块在另一个缓存中处于"M"状态，那么它必须将数据写回后备存储或者将其提供给请求数据的缓存。如果此时缓存尚未装载该块的数据，则修改前要先将其从后备存储读入。在数据被修改之后，缓块块处于"M"的状态。

对于任何给定的两个缓存，如果他们具有对应相同地址的缓存行，则允许的状态如下表所示：

<table>
<thead>
<tr class="header">
<th></th>
<th><p> M </p></th>
<th><p> S </p></th>
<th><p> I </p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p> M </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p> S </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p> I </p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 状态机

[缩略图](https://zh.wikipedia.org/wiki/File:State_diagram_for_processor_transactions.png "fig:缩略图")
处理器向高速缓存发出的请求包括：

  - PrRd：处理器请求读取一个缓存块。
  - PrWr：处理器请求改写一个缓存块。

[缩略图](https://zh.wikipedia.org/wiki/File:State_diagram_for_bus_transactions.png "fig:缩略图")
此外，还有总线方面的请求。 包括：

  - BusRd：当某个处理器的高速缓存的读操作出现未命中，它会向总线发送一个BusRd请求，并预期能够收到该缓存块的数据。
  - BusRdX：当某个处理器的高速缓存的写操作出现未命中，它会向总线发送一个BusRdX请求，预期能够收到该缓存块的数据，并且使其他处理器中对应相同地址的缓存块无效。
  - BusUpgr：当某个处理器的高速缓存的写操作命中时，它它会向总线发送一个BusUpgr，使其他处理器中对应相同地址的缓存块无效。
  - Flush：该请求表明一个缓存块正在被写回内存。

状态转移：

  - 处于Invalid（无效）状态的缓存块：
      - 在PrRd，BusRd发出时，状态变为Shared（共享）。
      - 在PrWr，BusRdX发出时，状态变为Modified（已修改）。
      - 在BusRd，BusRdX或BusUpg发出时，状态保持Invalid（无效）。
  - 处于Shared（共享）状态的缓存块：
      - 在PrRd，BusRd发出时，状态保持Shared（共享）。
      - 在PrWr，BusUpgr发出时，状态变为Modified（已修改）。
      - 在BusRdX或BusUpgr发出时，状态变为Invalid（无效）。
  - 处于Modified（已修改）状态的缓存块
      - 在PrRd或PrWr发出时，状态保持Modified（已修改）。
      - 在BusRd发出时，缓存块被写回，状态变为Shared（共享）。
      - 在BusRdX发出时，缓存块被写回，状态变为Invalid（无效）。\[2\]

## 使用

该协议类似于[SGI](../Page/硅谷图形公司.md "wikilink") 4D使用的总线协议。\[3\]

## 变种

现代化的系统使用的MSI协议的变种以减少保持缓存一致性所需要的通信量。MESI协议增加了一个Exclusive（独占）状态，以减少对于只存在于一个高速缓存的块的写操作造成的通信。MOSI协议增加了一个Owned（持有）状态，以减少对于被其他缓存读取过的高速缓存的块的写回操作造成的通信。MOESI协议同时做了这两件事情。

## 相关条目

  - [协调一致协议](https://zh.wikipedia.org/wiki/快取一致性 "wikilink")
  - [MESI协议](https://zh.wikipedia.org/wiki/MESI协议 "wikilink")
  - [MOSI协议](https://zh.wikipedia.org/wiki/MOSI协议 "wikilink")
  - [MOESI协议](https://zh.wikipedia.org/wiki/MOESI协议 "wikilink")
  - [MESIF协议](https://zh.wikipedia.org/wiki/MESIF协议 "wikilink")

## 参考文献

[Category:快取一致性](https://zh.wikipedia.org/wiki/Category:快取一致性 "wikilink")

1.
2.
3.