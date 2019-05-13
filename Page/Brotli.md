**Brotli**是一个Jyrki
Alakuijala和开发的[开源](../Page/开源软件.md "wikilink")[数据压缩](../Page/数据压缩.md "wikilink")[程序库](../Page/程序库.md "wikilink")。\[1\]\[2\]Brotli基于[LZ77算法的一个现代变体](../Page/LZ77与LZ78.md "wikilink")、[霍夫曼编码和二阶](../Page/霍夫曼编码.md "wikilink")。

在[Chrome](../Page/Google_Chrome.md "wikilink")、[Opera和](../Page/Opera.md "wikilink")[Firefox中](../Page/Firefox.md "wikilink")，它已被用于加速[万维网的传输速度](../Page/万维网.md "wikilink")。\[3\]类似[Google的压缩算法](../Page/Google.md "wikilink")[zopfli](../Page/zopfli.md "wikilink")，brotli这个名字来自瑞士的烘培产品。\[4\]

## 演变

Brotli最初发布于2015年，用于[网络字体的离线压缩](../Page/Web開放字型格式.md "wikilink")。\[5\]Google软件工程师在2015年9月发布了包含通用[无损数据压缩的Brotli增强版本](../Page/无损数据压缩.md "wikilink")，特别侧重于[HTTP压缩](../Page/HTTP压缩.md "wikilink")。其中的编码器被部分改写以提高压缩比，编码器和解码器都提高了速度，流式API已被改进，增加更多压缩质量级别。新版本还展现了跨平台的性能改进，以及减少解码所需的内存。\[6\]

与常见的通用压缩算法不同，Brotli使用一个预定义的120[千字节字典](../Page/千字节.md "wikilink")。该字典包含超过13000个常用单词、短语和其他子字符串，这些来自一个文本和HTML文档的大型[语料库](../Page/语料库.md "wikilink")。\[7\]\[8\]预定义的算法可以提升较小文件的压缩密度。

使用brotli取代[deflate来对](../Page/DEFLATE.md "wikilink")[文本文件压缩通常可以增加](../Page/文本文件.md "wikilink")20%的压缩密度，而压缩与解压缩速度则大致不变。使用Brotli进行流压缩的[内容编码类型已被提议使用](../Page/HTTP压缩.md "wikilink")“br”。\[9\]

## 使用

  - [Mozilla Firefox在Firefox](../Page/Firefox.md "wikilink")
    44中实现Brotli。\[10\]\[11\]
  - [Google Chrome从Chrome](../Page/Google_Chrome.md "wikilink")
    49开始支持Brotli。\[12\]
  - [Opera从Opera](../Page/Opera.md "wikilink") 36开始支持Brotli。\[13\]

## 註解

## 参见

  - [SDCH](../Page/SDCH.md "wikilink")

## 参考资料

## 外部链接

  - [公告（在Google开源）](http://google-opensource.blogspot.com.ar/2015/09/introducing-brotli-new-compression.html)
  - [代码库](https://github.com/google/brotli)
  - [规范](https://web.archive.org/web/20160412054823/http://www.ietf.org/id/draft-alakuijala-brotli-08.txt)
  - [Google Chrome getting
    Brotli](https://www.phoronix.com/scan.php?page=news_item&px=Google-Chrome-Getting-Brotli)

[Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")
[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")

1.
2.
3.
4.  [Google Open Source Blog: Introducing Brotli: a new compression
    algorithm for the
    internet](http://google-opensource.blogspot.hu/2015/09/introducing-brotli-new-compression.html)
5.
6.  [Google Open Source Blog: Introducing Brotli: a new compression
    algorithm for the
    internet](http://google-opensource.blogspot.hu/2015/09/introducing-brotli-new-compression.html)
7.
8.
9.
10.
11.
12.
13.