> 本文内容由[Zopfli](https://zh.wikipedia.org/wiki/Zopfli)转换而来。


**Zopfli**是一个[数据压缩](../Page/数据压缩.md "wikilink")算法，可以将数据压缩为[DEFLATE](../Page/DEFLATE.md "wikilink")、[gzip或](https://zh.wikipedia.org/wiki/gzip "wikilink")[zlib格式](https://zh.wikipedia.org/wiki/zlib "wikilink")。\[1\]Zopfli被认为是目前压缩率最高的DEFLATE压缩算法。\[2\]2013年2月，[Google](../Page/Google.md "wikilink")将Zopfli算法的一个参考实现以[Apache许可证](../Page/Apache许可证.md "wikilink")2.0发布为[自由软件](../Page/自由软件.md "wikilink")[程序库](../Page/函式庫.md "wikilink")。\[3\]名称Zöpfli是[瑞士德语](../Page/瑞士德语.md "wikilink")“[Zopf](https://zh.wikipedia.org/wiki/辫子面包 "wikilink")”（一种不加糖的花环面包）的[指小](../Page/指小.md "wikilink")形式。\[4\]

## 属性和使用案例

Zopfli可以输出DEFLATE原始数据流，也可以将DEFLATE数据封装为gzip或zlib格式。默认配置的15次迭代可被增加或减少，以平衡压缩耗时与效果。

在默认设置下，Zopfli的输出一般比zlib的最大压缩小3%至8%，但消耗约80倍时间。\[5\]\[6\]Zopfli的解压速度与zlib的解压速度不相上下。\[7\]

由于其压缩速度显著较慢，zopfli不太适合实时压缩，一般用于静态内容的一次性压缩。\[8\]\[9\]典型用途是提供[Web内容](https://zh.wikipedia.org/wiki/Web "wikilink")，包括基于DEFLATE的[HTTP压缩](../Page/HTTP压缩.md "wikilink")，或者使用在基于DEFLATE的文件格式，例如PNG和[WOFF字体文件](../Page/Web開放字型格式.md "wikilink")。\[10\]另一个用途是基于[ZIP的软件包文件下载和更新](https://zh.wikipedia.org/wiki/ZIP "wikilink")，例如[Android应用程序包](../Page/APK.md "wikilink")（APK）和[Java存档文件](../Page/JAR_\(文件格式\).md "wikilink")（JAR），尤其是用在移动网络。

## 技术

使用高消耗的压缩技术可取得更高数据密度。该方法基于迭代[熵建模](../Page/熵_\(信息论\).md "wikilink")，以及一个[最短路径搜索算法](../Page/最短路问题.md "wikilink")，凭借所有未压缩数据可能的DEFLATE表示法得到的[图](../Page/图_\(数学\).md "wikilink")，找到最低的位消耗路径。\[11\]

## 实现

Google发布了一个用[C语言编写的程序库参考实现](https://zh.wikipedia.org/wiki/C语言 "wikilink")。它可以按[Apache许可证](../Page/Apache许可证.md "wikilink")2.0的条款作为自由软件使用。\[12\]

为[PHP](../Page/PHP.md "wikilink")创建的：php_zopfli。\[13\]

一个用[C\#实现的Zopfli位于CompressSharper程序库的ZopfliDeflater](../Page/C♯.md "wikilink").cs。\[14\]

## 历史

Zopfli基于Jyrki Alakuijala的一个算法。Google员工Jyrki Alakuijala和Lode Vandevenne撰写了一个zopfli的参考实现，2013年2月首次向公众发布。版本1.0.0发布于2013年4月25日。\[15\]之后几个为PNG压缩的适配出现在[GitHub](../Page/GitHub.md "wikilink")，*ZopfliPNG*在2013年5月被提交到Google的zopfli参考实现。\[16\]

Zopfli的出现显示，Ken Silverman的KZIP是压缩率最有效的DEFLATE实现，以及[7-Zip](../Page/7-Zip.md "wikilink")的deflater是压缩率最有效的自由许可之一。

## PNG优化

因为PNG使用DEFLATE压缩层，Zopfli算法可用于压缩[PNG](../Page/PNG.md "wikilink")文件。Zopfli的作者创建了一个名为ZopfliPNG的PNG优化工具。Zopfli算法也已被集成到其他PNG压缩优化工具，例如工具套件中的advpng。\[17\]

ZopfliPNG是目前缩减PNG大小最有效的优化器。

## 参见

  - [Brotli](../Page/Brotli.md "wikilink")

## 参考资料

## 外部链接

  - [Project page](https://github.com/google/zopfli) on GitHub, [online implementation](http://zopfli.t0r.org)
  - [Google's Zopfli Compression Algorithm: Extract higher performance from your compressed files](http://www.techrepublic.com/blog/the-enterprise-cloud/googles-zopfli-compression-algorithm-extract-higher-performance-from-your-compressed-files/) – TechRepublic.com

[Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink") [Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")

1.
2.
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