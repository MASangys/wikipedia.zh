**Snappy**（以前称**Zippy**）是[Google基于](../Page/Google.md "wikilink")[LZ77的思路用](../Page/LZ77与LZ78.md "wikilink")[C++语言编写的快速](../Page/C++.md "wikilink")[数据压缩与解压](../Page/数据压缩.md "wikilink")[程序库](https://zh.wikipedia.org/wiki/程序库 "wikilink")，并在2011年[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")。\[1\]\[2\]它的目标并非最大压缩率或与其他压缩程序库的兼容性，而是非常高的速度和合理的压缩率。使用一个运行在[64位模式下的](../Page/X86-64.md "wikilink")[酷睿i7处理器的单个核心](https://zh.wikipedia.org/wiki/酷睿i7 "wikilink")，压缩速度250
[MB/s](../Page/码率单位.md "wikilink")，解压速度500
MB/s。压缩率比[gzip低](https://zh.wikipedia.org/wiki/gzip "wikilink")20-100%。\[3\]

Snappy广泛应用在Google的项目，例如[BigTable](https://zh.wikipedia.org/wiki/BigTable "wikilink")、[MapReduce和Google内部](../Page/MapReduce.md "wikilink")[RPC系统的压缩数据](../Page/遠程過程調用.md "wikilink")。它可在开源项目中使用，例如[Cassandra](../Page/Cassandra.md "wikilink")、[Hadoop](../Page/Apache_Hadoop.md "wikilink")、[LevelDB](../Page/LevelDB.md "wikilink")、[MongoDB](../Page/MongoDB.md "wikilink")、和[Lucene](../Page/Lucene.md "wikilink")。\[4\]解压缩时会检测压缩流中是否存在错误。Snappy不使用[内联汇编并且可移植](../Page/内联汇编.md "wikilink")。

## 接口

Snappy的分发包括C++和C绑定。第三方提供的绑定和移植包括：\[5\]

  - [C\#](../Page/C♯.md "wikilink")
  - [Common Lisp](../Page/Common_Lisp.md "wikilink")
  - [Erlang](../Page/Erlang.md "wikilink")
  - [Go](../Page/Go.md "wikilink")
  - [Haskell](../Page/Haskell.md "wikilink")
  - [Lua](../Page/Lua.md "wikilink")
  - [Java](../Page/Java.md "wikilink")
  - [Node.js](../Page/Node.js.md "wikilink")
  - [Perl](../Page/Perl.md "wikilink")
  - [PHP](../Page/PHP.md "wikilink")
  - [Python](../Page/Python.md "wikilink")
  - [R](../Page/R语言.md "wikilink")
  - [Ruby](../Page/Ruby.md "wikilink")
  - [Smalltalk](../Page/Smalltalk.md "wikilink")

## 参考资料

## 外部链接

  - [Snappy邮件列表](https://groups.google.com/forum/#!forum/snappy-compression)

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink")
[Category:C++函式庫](https://zh.wikipedia.org/wiki/Category:C++函式庫 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink")

1.
2.  [Google open sources MapReduce
    compression.](http://www.theregister.co.uk/2011/03/24/google_open_sources_snappy/)
3.
4.  [snappy.](https://google.github.io/snappy/)
5.  <https://google.github.io/snappy/>