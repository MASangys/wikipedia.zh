> 本文内容由[Libjpeg](https://zh.wikipedia.org/wiki/Libjpeg)转换而来。


**libjpeg**是一个完全用[C语言编写的处理](https://zh.wikipedia.org/wiki/C语言 "wikilink")[JPEG](../Page/JPEG.md "wikilink")图像数据格式的自由[函式庫](../Page/函式庫.md "wikilink")。它包含一个JPEG[编解码器](../Page/编解码器.md "wikilink")的算法实现，以及用于处理JPEG数据的多种实用程序。

该套软件采用[C语言编写](https://zh.wikipedia.org/wiki/C语言 "wikilink")，并分发为附有[源代码](../Page/源代码.md "wikilink")的[自由软件](../Page/自由软件.md "wikilink")，采用自定义的[宽松](../Page/寬鬆自由軟體授權條款.md "wikilink")（[类BSD](../Page/BSD许可证.md "wikilink")）自由软件许可证，权利要求为。原始版本由独立JPEG工作组（IJG）维护和发布。此外，也有数个提供额外特性的[分叉（Fork）](https://zh.wikipedia.org/wiki/分叉_\(软件开发\) "wikilink")。

JPEG [JFIF图像在](../Page/JPEG文件交换格式.md "wikilink")[万维网](../Page/万维网.md "wikilink")上被广泛使用。它可以调整压缩量级以实现文件大小与视觉质量之间的期望与权衡。\[1\]

## 实用程序

下列实用程序随libjpeg提供：

  - cjpeg和djpeg：用于JPEG与其他流行的图像文件格式之间的转换。
  - rdjpgcom和wrjpgcom：用于在JPEG文件中插入和提取文字注释。
  - jpegtran：用于在不同JPEG格式之间进行无损转换的工具。

### jpegtran

[CropGUI_GTK_small.png](https://zh.wikipedia.org/wiki/File:CropGUI_GTK_small.png "fig:CropGUI_GTK_small.png") [命令列介面](../Page/命令行界面.md "wikilink") jpegtran提供了幾種功能，用於重新格式化和重新編碼DCT係數的表示，分別用於轉換實際圖像數據和丟棄JPEG文件中的輔助數據。 關於係數表示的變換包括：

  - 優化JPEG文件的[霍夫曼編碼層以增加壓縮](https://zh.wikipedia.org/wiki/霍夫曼編碼 "wikilink")。
  - 漸進和順序JPEG格式之間的轉換。
  - 霍夫曼和[算术编码](../Page/算术编码.md "wikilink")在[熵編碼法](../Page/熵編碼法.md "wikilink")層之間的轉換。\[2\]\[3\]\[4\]

這些轉變都是完全無損且可逆的。 對圖像數據的轉換包括：

  - 消除某些圖像程序插入的非標準應用程序特定數據，
  - 對文件執行某些轉換，例如：
      - 丟棄顏色通道（轉換為灰階），

      - 旋轉和90度，

      - 圖像塊邊框（8×8或16×16像素），

      - 縮放\[5\]

這些是[非破壞性資料壓縮並且對於保留的圖像數據是可逆的](../Page/无损数据压缩.md "wikilink")。重複轉檔時不重新壓縮現有資料解決重複編碼(修改)對資料進行二次壓縮導致多次的問題

有一个相关的Windows应用程序[Jpegcrop](http://sylvana.net/jpegcrop/)为“jpegtran”提供了一个用户界面。对于[Linux](../Page/Linux.md "wikilink")等[类Unix系统](../Page/类Unix系统.md "wikilink")，自由的[CropGUI](http://emergent.unpythonic.net/01248401946)能提供类似功能。 许多程序基于IJG的代码支持JPEG无损转换功能，部分名单见[Lossless Applications List](http://jpegclub.org/losslessapps.html)。

## 历史

独立JPEG工作组（IJG）的JPEG实现首次公开发布于，并在那是已相当完善。 开发主要由完成。 IJG的[开源是其中一个主要的开源包](../Page/开源软件.md "wikilink")，并且是JPEG标准的成功的关键。许多公司将其整合到各种产品中，如[图像编辑器和](https://zh.wikipedia.org/wiki/图像编辑器 "wikilink")[网络浏览器](https://zh.wikipedia.org/wiki/网络浏览器 "wikilink")。\[6\]

版本5发布于1994年9月24日，整个代码库被重写。它引入了名为rdjpgcom和wrjpgcom的实用程序用于处理嵌入的文字注释。

版本6于到来，支持渐进JPEG和第一版jpegtran实用程序。

### 摘要

<table>
<thead>
<tr class="header">
<th><p>主版本</p></th>
<th><p>新增文件格式特性</p></th>
<th><p>新增主记录项</p></th>
<th><p>参考资料</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>渐进式JPEG支持</p></td>
<td><p>progressive_mode ...</p></td>
<td><p>ITU-T Recommendation T.81<br />
ISO/IEC IS 10918-1</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>算术编码支持</p></td>
<td><p>scale_num/scale_denom for<br />
compression (encoding) ...</p></td>
<td><p>ITU-T JPEG-Plus Proposal ...[7]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>SmartScale<br />
（可变块大小）</p></td>
<td><p>block_size/lim_Se etc.</p></td>
<td><p>Evolution of JPEG[8]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>内部颜色转换<br />
（FF F8 LSE扩展标记）</p></td>
<td><p>color_transform</p></td>
<td><p>JPEG 9 Lossless Coding[9]<br />
<a href="http://www.infai.org/jpeg/">InfAI JPEG Development Site</a>[10]</p></td>
</tr>
</tbody>
</table>

### 时间线

<timeline> ImageSize = width:640 height:100 PlotArea = width:90% height:40% left:5% bottom:20% Period = from:1992 till:2006 TimeAxis = orientation:horizontal format:yyyy ScaleMajor = unit:year increment:1 start:1993 \# rough scale PlotData =

` color:dullyellow fontsize:S                 # setting standards`
` bar:ReleaseYear from:1992 till:1994 # version 4`
` bar:ReleaseYear from:1994 till:1995 color:yelloworange # version 5`
` bar:ReleaseYear from:1995 till:end # version 6`
` at:1993 shift:(-6,0)  text:"4a"`
` at:1994 shift:(-3,0)  text:"5"`
` at:1995 shift:(-3,0)  text:"6"`
` at:1998 shift:(-6,0)  text:"6b"`

TextData =

` pos:(20,80) fontsize:M text: Year of release of versions # position and text for the title`

</timeline> <timeline> ImageSize = width:640 height:100 PlotArea = width:90% height:40% left:5% bottom:45% Period = from:2006 till:2020 TimeAxis = orientation:horizontal format:yyyy ScaleMajor = unit:year increment:1 start:2007 \# rough scale PlotData =

` color:dullyellow fontsize:S                 # setting standards`
` bar:ReleaseYear from:2006 till:2009 # version 6`
` bar:ReleaseYear from:2009 till:2010 color:yelloworange # version 7`
` bar:ReleaseYear from:2010 till:2013 # version 8`
` bar:ReleaseYear from:2013 till:end  color:yelloworange # version 9`
` at:2009 shift:(-3,0)  text:"7"`
` at:2010 shift:(-3,0)  text:"8"`
` at:2012 shift:(-6,0)  text:"8d"`
` at:2013 shift:(-3,0)  text:"9"`
` at:2016 shift:(-6,0)  text:"9b"`

</timeline>

## 复刻

比较著名的复刻是libjpeg-turbo，它优化了执行的速度；还有mozjpeg，它的优化目标是更小的文件大小。除了这些以外，还有一个出自[國際標準化組織](../Page/國際標準化組織.md "wikilink")（ISO）的libjpeg，其目的是所有JPEG 1标准的完整实现。\[11\]

### libjpeg-turbo

libjpeg-turbo是libjpeg的一个[复刻](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")，它采用[单指令流多数据流](https://zh.wikipedia.org/wiki/单指令流多数据流 "wikilink")（SIMD）[指令来加速JPEG编码和解码基础效率](../Page/指令集架構.md "wikilink")。许多项目现在使用libjpeg-turbo而不是libjpeg，包括流行的GNU/Linux发行版（[Fedora](../Page/Fedora.md "wikilink")、[Debian](../Page/Debian.md "wikilink")、[Mageia](../Page/Mageia.md "wikilink")、[OpenSUSE](../Page/OpenSUSE.md "wikilink")等）、[Mozilla](../Page/Mozilla.md "wikilink")和[Chrome](../Page/Google_Chrome.md "wikilink")。\[12\]\[13\]\[14\]除了性能方面，部分项目也因它允许向后保留与旧的libjpeg v6b版本的[ABI兼容性而选择使用libjpeg](../Page/应用二进制接口.md "wikilink")-turbo。\[15\]libjpeg v7、v8和v9已打破与早期版本的ABI兼容性。\[16\]

libjpeg-turbo可以配置为与libjpeg v7或v8 ABI兼容，但，但它并没有实现IJG近期发布的完整的功能集，包括SmartScale格式的扩展名。\[17\]\[18\]因此，通过libjpeg v8和之后版本创建的SmartScale文件将不能被libjpeg-turbo正确解压。

### mozjpeg

mozjpeg是由Josh Aas和其他Mozilla Research人员完成的libjpeg-turbo的一个复刻。它旨在通过减少文件大小（约10%）来加快网页的加载时间，以及在不改变图像质量的前提下提高编码效率。为达到此目的，它在编码（不对称）方面使用更多处理能力，同时保持与JPEG标准的完全兼容性，不需要在解码器侧做任何改变。它实际通过优化[霍夫曼编码](../Page/霍夫曼编码.md "wikilink")树完成。

除了libjpeg-turbo，mozjpeg版本也建立在jpegcrush之上，这是Loren Merritt编写的一个[Perl](../Page/Perl.md "wikilink")脚本。\[19\]\[20\]

## 参见

  - [JPEG](../Page/JPEG.md "wikilink")
  - [无损数据压缩\#无损编辑](https://zh.wikipedia.org/wiki/无损数据压缩#无损编辑 "wikilink")
  - [有损数据压缩](../Page/有损数据压缩.md "wikilink")

## 参考资料

## 外部链接

  -
  - [JPEG FAQs](http://www.faqs.org/faqs/jpeg-faq/)

  - [JPEGclub](http://jpegclub.org/) – 为libjpeg提供额外特性

  - [libjpeg面向Windows的二进制包](http://gnuwin32.sourceforge.net/packages/jpeg.htm)（托管于SourceForge.net上的中）

  - [libjpeg-turbo](http://libjpeg-turbo.org/)，一个ABI及API兼容的libjpeg的复刻，它使用x86 SIMD指令实现参考实现的大幅加速。

  -
  - Josh Aas, Robert Nyman; August 2014： [使用mozjpeg创建高效JPEG](https://hacks.mozilla.org/2014/08/using-mozjpeg-to-create-efficient-jpegs/) – mozjpeg的实用性概述

  - [关于JPEG的那点事儿](https://fireattack.wordpress.com/2016/02/21/jpeg/)，2016/02/21

[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")

1.  [JPEG JFIF](http://www.w3.org/Graphics/JPEG/)
2.
3.
4.
5.
6.
7.  Contributed document - Word .doc file: [ITU-T JPEG-Plus Proposal R3](http://jpegclub.org/temp/ITU-T-JPEG-Plus-Proposal_R3.doc)
8.  Contributed document - Word .doc file: [Evolution of JPEG](http://jpegclub.org/temp/Evolution_of_JPEG.doc)
9.  Contributed document - Word .doc file: [JPEG 9 Lossless Coding](http://jpegclub.org/temp/JPEG_9_Lossless_Coding.doc)
10. News c't magazine 2012 issue 18 page 43, [Software Links](http://www.heise.de/ct/12/18/links/043.shtml)
11. <https://github.com/thorfdbg/libjpeg>
12.
13.
14.
15.
16.
17.
18.
19.
20.