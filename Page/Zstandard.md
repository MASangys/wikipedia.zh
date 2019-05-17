**Zstandard**（或**Zstd**）是由[Facebook的](../Page/Facebook.md "wikilink")开发的一个[无损数据压缩算法](../Page/无损数据压缩.md "wikilink")。该名称也指其[C语言的参考实现](https://zh.wikipedia.org/wiki/C语言 "wikilink")。第1版的实现于2016年8月31日发布为[自由软件](../Page/自由软件.md "wikilink")\[1\]\[2\]\[3\]

## 特色

Zstandard在设计上与[DEFLATE](../Page/DEFLATE.md "wikilink")（[.zip](../Page/ZIP格式.md "wikilink")、[gzip](https://zh.wikipedia.org/wiki/gzip "wikilink")）算法有着差不多的压缩比，但有更高的压缩和解压缩速度。

Zstandard使用字典算法（[LZ77](../Page/LZ77与LZ78.md "wikilink")）结合[熵編碼法的](../Page/熵編碼法.md "wikilink")（）。

## 许可协议

参考实现以[BSD许可证授权](../Page/BSD许可证.md "wikilink")，发布在[GitHub上](../Page/GitHub.md "wikilink")。自1.0版本以来，它有额外的专利权许可。\[4\]

## 参见

  - [Brotli](../Page/Brotli.md "wikilink")
  - [LZFSE](https://zh.wikipedia.org/wiki/LZFSE "wikilink") -
    [蘋果公司自](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[iOS
    9和](https://zh.wikipedia.org/wiki/iOS_9 "wikilink")[OS
    X](https://zh.wikipedia.org/wiki/OS_X "wikilink")
    10.11开始使用类似的算法，并也于2016年6月开源。

## 参考资料

## 外部链接

  -
  -
  - "[Smaller and faster data compression with
    Zstandard](https://code.facebook.com/posts/1658392934479273/smaller-and-faster-data-compression-with-zstandard/)"，Yann
    Collet和Chip Turner，2016年8月31日，Facebook公告

  - [The Guardian is using ZStandard instead of
    zlib](https://www.theguardian.com/info/developer-blog/2016/dec/01/discover-new-compression-iinovations-brotli-and-zstandard)

[Category:2016年软件](https://zh.wikipedia.org/wiki/Category:2016年软件 "wikilink")
[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")
[Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink")
[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")
[Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink")

1.  Sergio De Simone, [Facebook Open-Sources New Compression Algorithm
    Outperforming
    Zlib](https://www.infoq.com/news/2016/09/facebook-zstandard-compression)
    / InfoQ, Sep 02, 2016
2.
3.
4.  [zstd/PATENTS](https://github.com/facebook/zstd/blob/dev/PATENTS)
    "Additional Grant of Patent Rights Version 2", Facebook