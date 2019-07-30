**Gzip**是若干種[文件壓縮](https://zh.wikipedia.org/wiki/文件壓縮 "wikilink")[程序的簡稱](https://zh.wikipedia.org/wiki/程序 "wikilink")，通常指[GNU計劃](../Page/GNU計劃.md "wikilink")的實現，此處的gzip代表GNU zip。也經常用來表示gzip這種文件格式。軟件的作者是Jean-loup Gailly和Mark Adler。在1992年10月31日第一次公開發布，版本號0.1，1993年2月，发布了1.0版本。

[OpenBSD](../Page/OpenBSD.md "wikilink")中所包含的gzip版本實際上是`compress`程序，其對gzip文件的支持在OpenBSD 3.4中被添加，此處的g代表免費（）\[1\]。

## 文件格式

gzip的基础是[DEFLATE](../Page/DEFLATE.md "wikilink")，DEFLATE是[LZ77与](../Page/LZ77与LZ78.md "wikilink")[哈夫曼编码的一个组合体](https://zh.wikipedia.org/wiki/哈夫曼编码 "wikilink")。DEFLATE最初是作为[LZW](../Page/LZW.md "wikilink")以及其它受[专利](../Page/专利.md "wikilink")保护的[数据压缩](../Page/数据压缩.md "wikilink")[算法](../Page/算法.md "wikilink")的替代版本而设计的，当时那些专利限制了以及其它一些流行的归档工具的应用。

文件格式说明：

  - 10字节的头，包含[幻数](../Page/魔術數字_\(程式設計\).md "wikilink")、版本号以及时间戳
  - 可选的扩展头，如原文件名
  - 文件体，包括DEFLATE压缩的数据
  - 8字节的尾注，包括[CRC-32校验和以及未压缩的原始数据长度](https://zh.wikipedia.org/wiki/循环冗余校验 "wikilink")

尽管这种文件格式允许多个这样的数据拼接在一起，在解压时也能认出它们是拼接在一起的数据，但通常gzip仅用来压缩单个文件。多个文件的压缩归档通常是首先将这些文件合并成一个[tar文件](https://zh.wikipedia.org/wiki/tar_\(计算机科学\) "wikilink")，然后再使用gzip进行压缩，最后生成的`.tar.gz`或者`.tgz`文件就是所谓的“tar压缩包”或者“tarball”。

注意不要将gzip和[ZIP压缩格式混淆](https://zh.wikipedia.org/wiki/ZIP_\(文件格式\) "wikilink")。ZIP也使用DEFLATE算法，而且可移植性更好，不需要一个外部的归档工具就可以包容多个文件。但是，由于ZIP对每个文件进行单独压缩而没有利用文件间的冗余信息（即[固实压缩](https://zh.wikipedia.org/wiki/固实压缩 "wikilink")），所以ZIP的压缩率会稍逊于tar压缩包。

## gzip命令的常用选项

  - \-c，--stdout将解压缩的内容输出到[标准输出](https://zh.wikipedia.org/wiki/标准输出 "wikilink")，原文件保持不变
  - \-d，--decompress解压缩
  - \-f，--force强制覆盖旧文件
  - \-l，--list列出压缩包内储存的原始文件的信息（如，解压后的名字、压缩率等）
  - \-n，--no-name压缩时不保存原始文件的文件名和时间戳，解压缩时不恢复原始文件的文件名和时间戳（此时，解出来的文件，其文件名为压缩包的文件名）
  - \-N，--name压缩时保存原始文件的文件名和时间戳，解压缩时恢复原始文件的文件名和时间戳
  - \-q，--quiet抑制所有警告信息
  - \-r，--recursive递归
  - \-t，--test测试压缩文件完整性
  - \-v，--verbose冗余模式（即显示每一步的执行内容）
  - \-1、-2、...、-9压缩率依次增大，速度依次减慢，默认为-6

## 衍生品和其它应用

在大多数Linux发行版中，通过使用 zx 选项来提取.tar.gz格式的压缩文件，例如：tar -zxf file.tar.gz

[zlib是DEFLATE算法的实现库](https://zh.wikipedia.org/wiki/zlib "wikilink")，它的API同时支持gzip文件格式以及一个简化的数据流格式。zlib数据流格式、DEFLATE以及gzip文件格式均已被分别标准化为 RFC 1950、RFC 1951、RFC 1952。

gzip在[HTTP压缩](https://en.wikipedia.org/wiki/HTTP_compression)，一种在万维网中加速传输HTML和其他内容的技术。它是在 RFC 2016 中规定的三种标准HTTP压缩格式之一。这个RFC（征求意见稿）页定义了一种叫做"DEFLATE"的zlib格式，它和gzip格式相同，除了gzip添加了11字节头部和尾部的负载。但是，现在还是建议使用gzip而不是zlib，因为根据 RFC 1950, [IE](https://en.wikipedia.org/wiki/Internet_Explorer)还没有正确的实现该标准，还不能处理zlib格式。

zlib DEFLATE 已经在 [Protable Network Graphics](https://en.wikipedia.org/wiki/Portable_Network_Graphics)（PNG）格式中使用。

自20世纪90年代末期以来，一个基于数据块排序算法的文件压缩工具[bzip2作为gzip的替代者逐渐得到流行](https://zh.wikipedia.org/wiki/bzip2 "wikilink")，它可以生成相当小的压缩文件，尤其是对于源代码和其他结构化文本更是这样，但代价是最高达4倍的内存与处理器时间消耗。bzip2压缩的tar包传统上叫作`.tar.bz2`或`.tbz`。

和[7zip内部也有一个DEFLATE实现](https://zh.wikipedia.org/wiki/7zip "wikilink")，可以制作gzip兼容的压缩文件，与gzip相比有更高的压缩率，不过比较耗费处理器的处理时间。

gzip压缩文件对应的解压程序是**gunzip**。

## 参见

  - [归档格式列表](https://zh.wikipedia.org/wiki/归档格式列表 "wikilink")
  - [归档工具列表](https://zh.wikipedia.org/wiki/归档工具列表 "wikilink")
  - [归档工具比较](https://zh.wikipedia.org/wiki/归档工具比较 "wikilink")
  - [Unix程序列表](https://zh.wikipedia.org/wiki/Unix程序列表 "wikilink")
  - [.tar.gz.gpg](../Page/Tar.md "wikilink")
  - [自由文件格式](https://zh.wikipedia.org/wiki/自由文件格式 "wikilink")

## 参考资料

## 外部链接

  - gzip [文件格式规范](http://www.ietf.org/rfc/rfc1952.txt)
  - [gzip主页](https://www.gnu.org/software/gzip/gzip.html)以及http://www.gzip.org/
  - [Zlib主页](http://www.zlib.org/)
  - [GZIP相关的资源、教程及源码](http://www.compression-links.info/Gzip)
  - [gzip恢复工具箱](http://www.urbanophile.com/arenn/coding/gzrt/gzrt.html)
  - [The Online Marketing Benefits of gzip](https://web.archive.org/web/20060826120751/http://blog.usweb.com/archives/the-value-online-marketing-benefits-of-gzip)

[Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink") [Category:Unix归档和压缩相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix归档和压缩相关实用工具 "wikilink") [Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.