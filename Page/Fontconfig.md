**Fontconfig**是字體相關的[计算机程序库](https://zh.wikipedia.org/wiki/计算机程序库 "wikilink")，用于配置、定制全系统的[字体](https://zh.wikipedia.org/wiki/电脑字体 "wikilink")，或將字體提供給应用程序使用。此庫最初是由[Keith
Packard开发维护的](https://zh.wikipedia.org/wiki/Keith_Packard "wikilink")，现由维护。

Fontconfig是[自由软件](../Page/自由软件.md "wikilink")，采用[宽松开放版权许可证](../Page/寬鬆自由軟體授權條款.md "wikilink")。\[1\]

## 用法

应用程序可以通過兩種方式從fontconfig獲得字體：

1.  查询
2.  模式匹配。 Fontconfig 将返回和指定模式最匹配的字体。

为了进行字体匹配，fontconfig
保存所有已经安装字体的大量排版信息，例如[字体名称](../Page/字体.md "wikilink")、风格、大小、[DPI](https://zh.wikipedia.org/wiki/dpi "wikilink")、[Unicode覆盖范围等](https://zh.wikipedia.org/wiki/Unicode "wikilink")。这些信息也被用来执行字体替换。

## 文件

Fontconfig使用[XML格式的配置文件](../Page/XML.md "wikilink")。
Fontconfig的[DTD文件通常位于](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")`/etc/fonts/fonts.dtd`。

主配置文件是`/etc/fonts/fonts.conf`，引用少量的其他配置文件（有可能不存在）:

  - /etc/fonts/local.conf
  - /etc/fonts/conf.d directory
  - \~/.fonts.conf

一个简单的配置文件例子：

``` xml
 <?xml version="1.0"?>
 <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
 <fontconfig>
   <!-- Enable antialiasing for all fonts -->
   <match target="font">
     <edit mode="assign" name="antialias"><bool>true</bool></edit>
   </match>
 </fontconfig>
```

更多细节，请参见[fontconfig manual](http://fontconfig.org/fontconfig-user.html)
。

## 工具包

fontconfig提供了8个命令行工具来管理字体配置：

  - *fc-list*：列出fontconfig知道的所有和模式匹配的字体。
  - *fc-match*：匹配字体模式（默认为空模式），使用正常的fontconfig匹配规则来寻找最合适的字体。
  - *fc-cache*：创建一个所有[FreeType于指定目录](../Page/FreeType.md "wikilink")（或者[配置文件中指定的所有目录](https://zh.wikipedia.org/wiki/#文件 "wikilink")）中可读字体的[缓存](https://zh.wikipedia.org/wiki/Cache "wikilink")。
  - *fc-cat*：从缓存文件或者相关字体目录中读取字体信息，并且以[ASCII格式输出](../Page/ASCII.md "wikilink")。
  - *fc-query*：查询字体文件并报告产生的模式。
  - *fc-scan*：扫描字体文件和目录并报告产生的模式。
  - *fc-pattern*：列举匹配提供模式的最佳字体。
  - *fc-validate*：验证字体文件并报告结果。

Fontconfig建立在[FreeType](../Page/FreeType.md "wikilink")（一个字体渲染器）和[expat](https://zh.wikipedia.org/wiki/Expat_\(XML\) "wikilink")（一个XML解析库）之上，这两个都是[自由软件](../Page/自由软件.md "wikilink")。

[Fontmatrix](https://zh.wikipedia.org/wiki/Fontmatrix "wikilink")
是一个有[图形用户接口的交互工具](https://zh.wikipedia.org/wiki/GUI "wikilink")，可以使用fontconfig列出可用的字体以及显示信息。

## 版本號說明

當fontconfig接近發布時，最末位版本號用大于等于90的數字表示。

## 外部链接

  - [fontconfig 网站](http://fontconfig.org/)
  - [Fontconfig設置](https://web.archive.org/web/20030828050556/http://fractal.csie.org/~eric/wiki/Fontconfig)
  - [使用Fontconfig設定字體](http://wiki.ubuntu-tw.org/index.php?title=HowtoCustomFontswithFontconfig)
  - [为开源系统配置和定制字体（PDF）](http://keithp.com/~keithp/talks/guadec2002/fontconfig.pdf)

## 参见

  - （英文）

## 引用

[Category:Freedesktop.org](https://zh.wikipedia.org/wiki/Category:Freedesktop.org "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")

1.