**Google檔案系統**（，縮寫為**GFS**或GoogleFS），一種专有[分布式文件系统](https://zh.wikipedia.org/wiki/分布式文件系统 "wikilink")，由[Google公司开发](../Page/Google.md "wikilink")，運行於[Linux平台上](../Page/Linux.md "wikilink")\[1\]。尽管Google在2003年公布了该系统的一些技术细节，但Google并没有将该系统的软件部分作为开源软件发布\[2\]。

2013年，Google公布了Colossus專案，作為下一代的Google檔案系統\[3\]。

## 歷史

## 设计

GFS专门为Google的核心数据即[页面搜索的存储进行了优化](https://zh.wikipedia.org/wiki/Google_\(search_engine\) "wikilink")。[数据使用大到若干](https://zh.wikipedia.org/wiki/数据 "wikilink")[G字节的大文件持续存储](https://zh.wikipedia.org/wiki/gigabyte "wikilink")，而这些文件极少被删除、覆盖或者减小；通常只是进行添加或读取操作。它也是针对Google的计算机集群进行的设计和优化，这些节点是由廉价的“常用”计算机组成，这就意味着必须防止单个节点的高损害率和随之带来的数据丢失。其它设计理念包括高数据吞吐率，甚至这带来了[存取反应期变差](https://zh.wikipedia.org/wiki/Latency_\(engineerin\) "wikilink")。

节点分为两类：*主*节点和*Chunkservers*。Chunkservers存储数据文件，这些单个的文件象常见的文件系统中的簇或者扇区那样被分成固定大小的数据块（这也是名字的由来）。每个数据块有一个唯一的64位标签，维护从文件到组成的数据块的逻辑映射。每个数据块在网络上复制一个固定数量的次数，缺省次数是3次，对于常用文件如可执行文件的次数要更多。

主服务器通常并不存储实际的大块数据，而是存储与大块数据相关的元数据，这样的数据如映射表格将64位标签映射到大块数据位置及其组成的文件、大块数据副本位置、哪个进程正在读写特定的大数据块或者追踪复制大块数据的“快照”（通常在主服务器的激发下，当由于节点失败的时候，一个大数据块的副本数目降到了设定的数目下）。所有这些元数据通过主服务器周期性地接收从每个数据块服务器来的更新（“心跳消息”）保持最新状态。

操作的允许授权是通过限时的、倒计时“租期”系统来处理的，主服务器授权一个进程在有限的时间段内访问数据块，在这段时间内主服务器不会授权其它任何进程访问数据块。被更改的chunkserver——总是主要的数据块存储器，然后将更改复制到其它的chunkserver上。这些变化直到所有的chunkserver确认才存储起来，这样就保证了操作的完整性和[原子性](https://zh.wikipedia.org/wiki/Atomicity "wikilink")。

访问大数据块的程序首先查询主服务器得到所要数据块的位置，如果大数据块没有进行操作（没有重要的租约），主服务器回答大数据块的位置，然后程序就可以直接与chunkserver进行联系接收数据（类似于[Kazaa和它的超级节点](https://zh.wikipedia.org/wiki/Kazaa "wikilink")）。

## 批评意见

只能有一个主服务器——代码不允许存在多个主服务器。这看起来是限制系统可扩展性和可靠性的一个缺陷，因为系统的最大存储容量和正常工作时间受制于主服务器的容量和正常工作时间，也因为它要将所有的元数据进行编制，并且因为几乎所有的动作和请求都经过它；但是Google的工程师们辩解说事实并不是这样。元数据是非常紧凑的，仅仅只有数K到数M的大小，并且主服务器通常是网络上性能最好的节点之一；至于可靠性，通常有一个“影子”主服务器制作主服务器的[镜像](https://zh.wikipedia.org/wiki/mirror_\(computing\) "wikilink")，一旦主服务器失败它将接替工作。另外，主服务器极少成为瓶颈，因为客户端仅仅取得元数据然后将它们[缓存起来](../Page/缓存.md "wikilink")；随后的交互工作是直接与chunkservers进行。同样，使用单个的主服务器可以大幅度地降低软件的复杂性，如果有多个的主服务器，软件将变得复杂以能够保证数据完整性、自动操作、负载均衡和安全性。

## 参考文献

## 外部链接

  - [Google文件系统](http://research.google.com/archive/gfs.html)（[PDF](http://research.google.com/archive/gfs-sosp2003.pdf)）
  - [Google.com](http://www.google.com/)
  - [ZDnet上关于GFS的文章](http://cio.zhiding.cn/cio/2015/0115/3044353.shtml)

## 参见

  - [Hadoop](https://zh.wikipedia.org/wiki/Hadoop "wikilink")－[Apache軟件基金會的](https://zh.wikipedia.org/wiki/Apache軟件基金會 "wikilink")[開放源碼項目](https://zh.wikipedia.org/wiki/開放源碼 "wikilink")，提供與Google檔案系統類似的功能。
  - [Google产品列表](../Page/Google产品列表.md "wikilink")
  - Gmail文件系统[GmailFS使用一个可加载的Linux文件系统](../Page/GmailFS.md "wikilink")，它使用Gmail帐号作为存储媒介。

{{-}}

[Category:网络文件系统](https://zh.wikipedia.org/wiki/Category:网络文件系统 "wikilink")
[Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink")
[Category:并行计算](https://zh.wikipedia.org/wiki/Category:并行计算 "wikilink")
[Category:Linux内核支持的分布式文件系统](https://zh.wikipedia.org/wiki/Category:Linux内核支持的分布式文件系统 "wikilink")

1.  Google提供的论文[The Google File
    System](http://research.google.com/archive/gfs.html)中，多处提到
2.  "Despite having published details on technologies like the Google
    File System, Google has not released the software as open source and
    shows little interest in selling it. The only way it is available to
    another enterprise is in embedded form--if you buy a high-end
    version of the Google Search Appliance, one that is delivered as a
    rack of servers, you get Google's technology for managing that
    cluster as part of the package." ["How Google
    Works"](http://www.baselinemag.com/article2/0,1540,1985046,00.asp)
3.  .