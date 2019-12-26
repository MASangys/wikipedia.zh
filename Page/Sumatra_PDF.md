**Sumatra PDF**，又叫**Sumatra**，是一款专为[Microsoft Windows开发的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[开放源代码](../Page/开放源代码.md "wikilink")[PDF阅读器](https://zh.wikipedia.org/wiki/PDF "wikilink")。该程序也可以打开[开放XML纸张规范](https://zh.wikipedia.org/wiki/开放XML纸张规范 "wikilink")、[DjVu](../Page/DjVu.md "wikilink")、[EPUB](../Page/EPUB.md "wikilink")、[XPS](../Page/XML纸张规范.md "wikilink")、[CHM](https://zh.wikipedia.org/wiki/编译的HTML帮助文件 "wikilink")、[CB7、CBR、CBT、CBZ](https://zh.wikipedia.org/wiki/Comic_Book_Archive "wikilink")、[MOBI和PRC文件](https://zh.wikipedia.org/wiki/MOBI "wikilink")。由两位贡献者最先编写：[Krzysztof Kowalczyk和Simon](https://zh.wikipedia.org/wiki/Krzysztof_Kowalczyk "wikilink") Bünzli。\[1\]\[2\]

## 特性

Sumatra具有简约的设计，具有对其广泛特性的付出的简单实现。对于PDF的渲染使用[MuPDF](../Page/MuPDF.md "wikilink")库。

Sumatra被设计用于便携式用途，由没有外部组件的单个文件构成，使之可以在外部的USB驱动上运行。\[3\]该软件被视为[便携软件](https://zh.wikipedia.org/wiki/便携软件 "wikilink")。\[4\]

作为多数便携软件的特性，Sumatra占有很小的硬盘空间。\[5\]2009年，Sumatra 1.0有1.21 MB安装文件，\[6\]相比较于[Adobe Reader](https://zh.wikipedia.org/wiki/Adobe_Reader "wikilink") 9.5的32 MB。\[7\]安装后的大小为8.2 MB，而Adobe Reader XI要求320 MB的可用硬盘空间。\[8\]目前，Sumatra有4.96 MB安装文件（64位）而Adobe Reader DC的安装文件达65.4 MB\[9\]。

重新打开文档时，文档打开时最后一刻的旋转、缩放、窗口大小等会被记录，使之比起别的PDF阅读器更像[电子阅读器](https://zh.wikipedia.org/wiki/电子阅读器 "wikilink")。

Sumatra不[锁定PDF文件](../Page/文件锁定.md "wikilink")。用户可以覆盖保存PDF并按R键重新载入PDF文档而不需要将其关闭。例如一个[PDFTeX用户可以找到这个有用的功能](https://zh.wikipedia.org/wiki/PDFTeX "wikilink")，在重编译已更改的[TeX](../Page/TeX.md "wikilink")源代码后，直须按R并查看改动后的文档。该功能在启用中文输入法的情况下会无法使用。

PDF格式的[使用限制在Sumatra](https://zh.wikipedia.org/wiki/PDF#使用限制和显示 "wikilink") 0.6中得到实现，\[10\]一种阻止用户从文档作者限制的文档中复制或者打印的[数字版权管理](../Page/数字版权管理.md "wikilink")形式。Kowalczyk声称“I decided that \[Sumatra\] will honor PDF creator's wishes（我决定（Sumatra）将尊重PDF创建者的愿望）”。\[11\]\[12\]\[13\]其他开源阅读器如[Okular](../Page/Okular.md "wikilink")及[Evince](../Page/Evince.md "wikilink")做出了实现限制功能但默认不启用的选择，而且[Debian](../Page/Debian.md "wikilink")发布软件补丁以去除这些限制，以遵循互用性及再利用的开源准则。\[14\]

直到Sumatra 1.1，打印通过把任意PDF页面转变为位图的方式实现。这造成了大型的缓冲文件及打印速度可能变慢。\[15\]\[16\]

从Sumatra 0.9.1开始，PDF文档嵌入的超链接也被支持。\[17\]

Sumatra是[多语言的](https://zh.wikipedia.org/wiki/多语言 "wikilink")，有69种社区贡献的翻译。\[18\]

Sumatra支持[SyncTeX](https://zh.wikipedia.org/wiki/SyncTeX "wikilink")，一种同步[TeX](../Page/TeX.md "wikilink")源码并由[pdfTeX或](https://zh.wikipedia.org/wiki/pdfTeX "wikilink")[XeTeX](../Page/XeTeX.md "wikilink")生成PDF的两用性的方法。

从0.9.4版本起，Sumatra支持[JPEG 2000格式](../Page/JPEG_2000.md "wikilink")。

## 开发

SumatraPDF以[C++](../Page/C++.md "wikilink")编程语言编写（一些部件以[C语言编写](https://zh.wikipedia.org/wiki/C语言 "wikilink")）而且源代码提供对[Microsoft Visual Studio的支持](../Page/Microsoft_Visual_Studio.md "wikilink")。\[19\]

在为[Windows XP设计的时候](../Page/Windows_XP.md "wikilink")，Sumatra有一些对Windows早期版本的兼容性问题。对[Windows 95](../Page/Windows_95.md "wikilink")、[98及](../Page/Windows_98.md "wikilink")[Me的支持在其完全消失的时候实现](../Page/Windows_Me.md "wikilink")。\[20\]

Kowalczyk起初没有发布Sumatra的64位版本，指出这可能要求明显更快的速度及更多可用的内存，当时他相信这会加大用户的顾虑而且不大于潜在的成本效应。\[21\]然而，一些用户要求提供64位的Sumatra，而且一些开发者完成了非官方的64位的Sumatra版本，\[22\]比32位版本加载文件速度更快。但官方版本的开发者要求非官方版本不能用Sumatra的名字。\[23\]2015年10月推出官方的64位版本。\[24\]

源代码可以通过其[Subversion](../Page/Subversion.md "wikilink")开发库或者作为[tarball下载](https://zh.wikipedia.org/wiki/tar "wikilink")。\[25\]\[26\]

Sumatra源代码原寄存于[Google Code](https://zh.wikipedia.org/wiki/Google_Code "wikilink")，并且因为美国出口法规规定而不适用于“列入美国海外资产监管局制裁名单的国家，包括古巴、伊朗、朝鲜、苏丹和叙利亚。”\[27\]\[28\]现已移至[GitHub](../Page/GitHub.md "wikilink")。

## 历史

Sumatra PDF的第一版0.1基于[Xpdf](../Page/Xpdf.md "wikilink") 0.2，并于2006年6月1日发布。从0.2版转入[Poppler](../Page/Poppler.md "wikilink")。0.4版本改用[MuPDF](../Page/MuPDF.md "wikilink")，因其速度的提升\[29\]及对Windows的更好的支持，自从Poppler决定集中于Unix平台集成。Poppler仍然暂时作为替代渲染引擎，而且从0.6到0.8版本在MuPDF载入失败的时候自动转用渲染页面。Poppler在0.9版被移除，这一版于2008年8月10日发布。

1.0版本在3年持续开发之后于2009年11月17日发布，2012年4月2日发布2.0版，距1.0版的发布有2年。\[30\]

第一个非官方的翻译在2007由Lars Wohlfahrt发布，\[31\]在Sumatra PDF获得官方的多语言支持之前。

2015年10月，3.1版在原始的32位版本之外新增64位版。\[32\]\[33\]

## 名称及插图

[Sumatra_PDF_Logo.png](https://zh.wikipedia.org/wiki/File:Sumatra_PDF_Logo.png "fig:Sumatra_PDF_Logo.png") 作者指出选择名称“Sumatra”不是出于对[苏门答腊岛或者](https://zh.wikipedia.org/wiki/苏门答腊岛 "wikilink")[咖啡的敬意](../Page/小果咖啡.md "wikilink")，称其命名背后没有特定的理由。\[34\]

Sumatra的图形设计是对艾伦·摩尔和大卫·吉布斯的漫画《[守護者](../Page/守護者_\(漫畫\).md "wikilink")》致敬。\[35\]

## 批评性的接受

Sumatra以其快速与简易\[36\]、[快捷键](../Page/快捷键.md "wikilink")以及[开放源代码](../Page/开放源代码.md "wikilink")的开发受到好评。\[37\]

有一段时间推荐Sumatra PDF，但在2014年2月删除了他们的推荐，因为Sumatra里面出现了非自由许可的[unrar代码](https://zh.wikipedia.org/wiki/unrar "wikilink")。欧洲自由软件基金会代表Heiki Ojasild解释道：“while they continue to make use of the non-free library, SumatraPDF cannot be recognised as Free Software（在他们还在使用非自由库的代码的时候，SumatraPDF不能认为是自由软件）”。\[38\]\[39\]\[40\]\[41\]Unrar最终在3.0版本以自由替代品替代，使之成为了100%自由软件。\[42\]

## 参考文献

<div class="references-small">

<references />

</div>

## 外部链接

  - [官方網站](http://www.sumatrapdfreader.org)
  - [Google Code主页](http://code.google.com/p/sumatrapdf/)
  - [GitHub主页](https://github.com/sumatrapdfreader/sumatrapdf/)

[Category:PDF閱讀器](https://zh.wikipedia.org/wiki/Category:PDF閱讀器 "wikilink") [Category:自由PDF软件](https://zh.wikipedia.org/wiki/Category:自由PDF软件 "wikilink")

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
14. [Okular, Debian, and copy restrictions](https://lwn.net/Articles/335415/)
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
35.
36.
37.
38.
39.
40.
41.
42.