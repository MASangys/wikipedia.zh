**zlib**是提供[資料壓縮之用的](https://zh.wikipedia.org/wiki/資料壓縮 "wikilink")[函式庫](../Page/函式庫.md "wikilink")，由Jean-loup
Gailly與Mark
Adler所開發，初版0.9版在1995年5月1日發表。zlib使用[抽象化的](https://zh.wikipedia.org/wiki/抽象化\(计算机科学\) "wikilink")[DEFLATE](../Page/DEFLATE.md "wikilink")[演算法](https://zh.wikipedia.org/wiki/演算法 "wikilink")，最初是為[libpng函式庫所寫的](https://zh.wikipedia.org/wiki/libpng "wikilink")，後來普遍為許多軟體所使用。此函式庫為[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")，使用zlib授權。

截至[2007年3月](../Page/2007年3月.md "wikilink")，zlib是包含在[Coverity的](https://zh.wikipedia.org/wiki/Coverity "wikilink")[美国国土安全部赞助者选择继续审查的开源项目](https://zh.wikipedia.org/wiki/美国国土安全部 "wikilink")\[1\]。

## 功能

### 数据头

zlib能使用gzip数据头（header）、zlib数据头或者不使用数据头压缩数据。通常情况下，数据压缩使用zlib数据头，因为这提供错误数据检测。当数据不使用数据头写入时，结果是没有任何错误检测的原始[DEFLATE数据](../Page/DEFLATE.md "wikilink")，那么解压缩软件的调用者知道压缩数据在什么地方结束。

gzip数据头比zlib数据头要大，因为它保存了文件名和其他文件系统信息，事实上这是广泛使用的[gzip文件的数据头格式](https://zh.wikipedia.org/wiki/gzip "wikilink")。注意zlib函式库本身不能创建一个gzip文件，但是它能够相当轻松地把压缩数据写入到一个有gzip文件头的文件中。

### 演算法

目前zlib仅支持一个[LZ77的变种算法](https://zh.wikipedia.org/wiki/LZ77 "wikilink")，[DEFLATE的算法](../Page/DEFLATE.md "wikilink")。

这个算法使用很少的系统资源，对各种数据提供很好的压缩效果。这也是在[ZIP檔案中无一例外地使用的算法](https://zh.wikipedia.org/wiki/ZIP_\(文件格式\) "wikilink")。（尽管zip文件格式也支持几种其他的算法）。

看起来zlib格式将不会被扩展使用任何其他算法，尽管数据头可以有这种可能性。

### 使用资源

函式库提供了对处理器和内存使用控制的能力。

不同的压缩级别数值可以指示不同的压缩执行速度。

还有内存控制管理的功能。这在一些诸如嵌入式系统这样内存有限制的环境中是有用的。

### 策略

压缩可以针对特定类型的数据进行优化。

若使用者总是使用zlib压缩特定类型的数据，那么使用有针对性的策略可以提高压缩效率和性能。例如，如果使用者的数据包含很长的重复数据，那么可以用[RLE](https://zh.wikipedia.org/wiki/RLE "wikilink")（运行长度编码）策略，可能会有更好的结果。

对于一般的数据，默认的策略是首选。

### 错误处理

错误可以被发现和跳过，数据混乱可以被检测（只要数据和zlib或者gzip数据头一起被写入）。

此外，如果全刷新点（full-flush
points）被写入到压缩后的数据流中，那么错误数据是可以被跳过的，并且解压缩将重新同步到下个全刷新点。（错误数据的无错恢复被提供）。全刷新点技术对于在不可靠的通道上的大数据流是很有用的，一些过去的数据丢失是不重要的（例如多媒体数据），但是建立太多的全刷新点会极大地影响速度和压缩。

### 数据长度

对于压缩和解压缩，没有数据长度的限制。重复调用库函数允许处理无限的数据块。一些辅助代码（计数变量）可能会溢出，但是不影响实际的压缩和解压缩。当压缩一个长（无限）数据流时，最好写入全刷新点。

## 使用zlib的軟體

今天，zlib是一种事实上的[业界标准](https://zh.wikipedia.org/wiki/de_facto "wikilink")，以至于在标准文档中，zlib和[DEFLATE常常互换使用](../Page/DEFLATE.md "wikilink")。数以千计的应用程序直接或间接依靠zlib压缩函式库，\[2\]，包括：

  - [Linux核心](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")：使用zlib以實作網路協定的壓縮、[檔案系統的壓縮以及開機時解壓縮自身的核心](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")。
  - [libpng](https://zh.wikipedia.org/wiki/libpng "wikilink")，用于[PNG图形格式的一个实现](../Page/PNG.md "wikilink")，对[bitmap数据规定了DEFLATE作为流压缩方法](https://zh.wikipedia.org/wiki/bitmap "wikilink")。
  - [Apache](../Page/Apache_HTTP_Server.md "wikilink")：使用zlib實作[http
    1.1](../Page/超文本传输协议.md "wikilink")。
  - [OpenSSH](../Page/OpenSSH.md "wikilink")、[OpenSSL](../Page/OpenSSL.md "wikilink")：以zlib達到最佳化加密網路傳輸。
  - [FFmpeg](../Page/FFmpeg.md "wikilink")：以zlib讀寫[Matroska等以DEFLATE演算法壓縮的](../Page/Matroska.md "wikilink")[多媒體](https://zh.wikipedia.org/wiki/多媒體 "wikilink")[串流格式](https://zh.wikipedia.org/wiki/串流格式 "wikilink")。
  - [rsync](https://zh.wikipedia.org/wiki/rsync "wikilink")：以zlib最佳化遠端同步時的傳輸。
  - [Subversion](../Page/Subversion.md "wikilink")、[Git和](../Page/Git.md "wikilink")[CVS等](https://zh.wikipedia.org/wiki/CVS "wikilink")[版本控制系统](../Page/版本控制.md "wikilink")，使用zlib来压缩和远端仓库的通讯流量。
  - [dpkg和](https://zh.wikipedia.org/wiki/dpkg "wikilink")[RPM等包管理软件](https://zh.wikipedia.org/wiki/RPM "wikilink")：以zlib解壓縮RPM或者其他封包。

因为其代码的可移植性，宽松的授權许可以及较小的内存占用，zlib在许多嵌入式设备中也有应用。

## 参见

  - [gzip](https://zh.wikipedia.org/wiki/gzip "wikilink")
  - [DEFLATE](../Page/DEFLATE.md "wikilink")
  - RFC 1950, RFC 1951, RFC 1952
  - [LZ77](https://zh.wikipedia.org/wiki/LZ77 "wikilink")
  - [ZIP (文件格式)](https://zh.wikipedia.org/wiki/ZIP_\(文件格式\) "wikilink")

## 参考资料

  - [自由軟體鑄造場](http://www.openfoundry.org/index.php?Itemid=192&id=36&option=com_content&task=view)

## 外部連結

  - [zlib官方網站](http://zlib.net/)
  - [php-zlib使用方法](https://archive.is/20130424170957/http://www.leapsoul.cn/?tag=php-zlib%E4%BD%BF%E7%94%A8%E6%96%B9%E6%B3%95)

[Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")
[Category:自由軟體](https://zh.wikipedia.org/wiki/Category:自由軟體 "wikilink")
[Category:数据压缩](https://zh.wikipedia.org/wiki/Category:数据压缩 "wikilink")
[Category:C函式库](https://zh.wikipedia.org/wiki/Category:C函式库 "wikilink")

1.  .
2.  .