> 本文内容由[LZX](https://zh.wikipedia.org/wiki/LZX)转换而来。


**LZX**是[LZ77](../Page/LZ77与LZ78.md "wikilink")[数据压缩](../Page/数据压缩.md "wikilink")[算法](../Page/算法.md "wikilink")中的一种，它也是同名的一个[归档工具](https://zh.wikipedia.org/wiki/归档工具 "wikilink")，它们都是由[Jonathan Forbes与](https://zh.wikipedia.org/wiki/Jonathan_Forbes "wikilink")[Tomi Poutanen一起开发的](https://zh.wikipedia.org/wiki/Tomi_Poutanen "wikilink")。

## 使用LZX算法的实例

### Amiga LZX

LZX最初是1995年作为[Amiga](../Page/Amiga.md "wikilink")归档工具公开发布的，当时作者正在[加拿大](../Page/加拿大.md "wikilink")[沃特卢大学学习](https://zh.wikipedia.org/wiki/沃特卢大学 "wikilink")。当时这个软件作为[共享软件发布](https://zh.wikipedia.org/wiki/共享软件 "wikilink")，这也是当时许多压缩软件采用的方式。注册版本中包含评估版本中没有的错误修改及改进。1997年，由于他们停止了在归档工具上的开发工作并且不再接受注册，所以作者发布了一个免费的解码文件，允许任何人都可以使用注册版本。

### [微软CAB文件](../Page/CAB.md "wikilink")

1997年，Jonathan开始到[微软](../Page/微软.md "wikilink")工作，微软的[CAB](../Page/CAB.md "wikilink")归档工具进行了改进以增加LZX压缩方法。这些改进包括可变的查找窗口大小；Amiga LZX的查找窗口为固定的64 [KB](https://zh.wikipedia.org/wiki/KB "wikilink")，微软LZX可以在从32到2048字节的2的指数之间变化。其中加入了一段特殊的[预处理程序以检测](https://zh.wikipedia.org/wiki/预处理程序 "wikilink")[英特尔](../Page/英特尔.md "wikilink")[80x86的](https://zh.wikipedia.org/wiki/80x86 "wikilink")“JMP”指令，这个指令将[操作数从相对寻址转成绝对寻址](https://zh.wikipedia.org/wiki/操作数 "wikilink")，这样跳转到同一位置就可以得到压缩器可以匹配的重复字符串，从而提高80x86二进制码的压缩率。

### [微软压缩HTML帮助](https://zh.wikipedia.org/wiki/HTML_Help "wikilink")（CHM）文件

当微软公司决定替换传统的帮助文件格式的时候，他们选择了LZX算法压缩所有的HTML数据。但是，为了提高随机访问速度，压缩器进行了更改，在每个64K字节间隔压缩器都会进行复位并且每16K字节间隔都会重新排列到16位边界。这样HTMLHelp软件可以立刻定位到最近的64K字节间隔并且从那一点开始解压，而不需要每次都从整个压缩数据流的起始进行解码。

### [Microsoft EBook Reader](https://zh.wikipedia.org/wiki/Microsoft_Reader "wikilink")（LIT）文件

微软LIT文件是CHM文件的简单扩展，所以也用LZX压缩。

### [微软映像格式](https://zh.wikipedia.org/wiki/WIM "wikilink")（WIM）文件

据说将在[微软Vista安装文件格式中使用的微软映像格式文件将LZX作为压缩方法之一](https://zh.wikipedia.org/wiki/微软Vista "wikilink")[1](https://web.archive.org/web/20060819005213/http://www.apcstart.com/site/jbannan/2006/07/759/build-your-own-vista-install-dvd).

## 解压LZX文件

**unlzx**程序可以解压Amiga LZX文档，**cabextract**可以用LZX方法解压微软CAB文档，如在[CHM文章中所介绍的那样](https://zh.wikipedia.org/wiki/CHM "wikilink")，有许多交叉平台的工具可以解压、浏览CHM文件。LIT文件可以使用**Convert LIT**软件解压。

## 参见

  - [归档格式列表](https://zh.wikipedia.org/wiki/归档格式列表 "wikilink")
  - [归档工具列表](https://zh.wikipedia.org/wiki/归档工具列表 "wikilink")
  - [归档工具比较](https://zh.wikipedia.org/wiki/归档工具比较 "wikilink")

## 外部链接

  - [LZX页面，包括许多版本的Amiga LZX归档工具](http://xavprods.free.fr/lzx/)
  - [unlzx源代码](http://main.aminet.net/misc/unix/unlzx.c.gz)
  - [cabextract（包括源代码）](http://www.kyz.uklinux.net/cabextract.php)
  - [Convert LIT（包括源代码）](http://www.convertlit.com/)

[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")