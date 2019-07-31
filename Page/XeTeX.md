****（或\[1\]，文本模式下写作XeTeX）是一种使用[Unicode的](https://zh.wikipedia.org/wiki/Unicode "wikilink")[TeX](../Page/TeX.md "wikilink")[排版](../Page/排版.md "wikilink")引擎，并支持一些现代字体技术，例如[OpenType](../Page/OpenType.md "wikilink")、[Graphite](../Page/Graphite.md "wikilink")和[Apple Advanced Typography](https://zh.wikipedia.org/wiki/Apple_Advanced_Typography "wikilink")（AAT）。其作者和维护者是Jonathan Kew，并以[X11自由软件许可证发布](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")\[2\]。

虽然最初只是为[Mac OS X所开发](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，但它现在在各主要平台上都可以运作。它原生支持Unicode，并默认其输入文件为[UTF-8](../Page/UTF-8.md "wikilink")编码。可以在不进行额外配置的情况下直接使用操作系统中安装的字体，因此可以直接利用OpenType、Graphite中的高级特性，例如额外的[字形](../Page/字形.md "wikilink")，[花体](https://zh.wikipedia.org/wiki/花体 "wikilink")，[合字](../Page/合字.md "wikilink")，可变的文本粗细等等。提供了对OpenType中本地排版约定（`locl`标签）的支持，也允许向字体传递OpenType的元标签。它亦支持使用包含特殊数学字符的Unicode字体排版数学公式，例如使用[Cambria Math或](https://zh.wikipedia.org/wiki/Cambria#Cambria_Math "wikilink")[Asana Math字体代替传统的TeX字体](https://zh.wikipedia.org/wiki/Asana_Math "wikilink")。

## 历史

2004年4月，发布了的第一个版本，这个版本只支持[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，并包括了内建的[ATT和](https://zh.wikipedia.org/wiki/Apple_Advanced_Typography "wikilink")[Unicode支持](https://zh.wikipedia.org/wiki/Unicode "wikilink")。2005年，加入了对OpenType的支持。在2006年BachoTeX期间，发布了第一个支持[Linux](../Page/Linux.md "wikilink")的版本，并在数月后由Akira Kakuto移植到了[Microsoft Windows上](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，其跨平台版本最终包含在[ Live](../Page/TeX_Live.md "wikilink") 2007中。另外，从2.7版开始，[MiK也包含了](https://zh.wikipedia.org/wiki/MiKTeX "wikilink")。

作为[ Live的一部分](../Page/TeX_Live.md "wikilink")，支持大多数为[](https://zh.wikipedia.org/wiki/LaTeX "wikilink")、[OpenType](../Page/OpenType.md "wikilink")、[TrueType](../Page/TrueType.md "wikilink")和[PostScript](../Page/PostScript.md "wikilink")字体开发的巨集包，而无需特别的安装和设定。

[BachoTeX](https://zh.wikipedia.org/wiki/BachoTeX "wikilink") 2008上宣布发行0.998版本，通过`\XeTeXinputnormalization`命令支持[Unicode正规化](https://zh.wikipedia.org/wiki/Unicode正规化 "wikilink")。

2013年5月发布0.9999，为了[OpenType](../Page/OpenType.md "wikilink")排版从[ICU排版引擎转换到](https://zh.wikipedia.org/wiki/International_Components_for_Unicode "wikilink")[HarfBuzz](../Page/HarfBuzz.md "wikilink")，为[Graphite](../Page/Graphite.md "wikilink")排版输出增添Graphite2，并在Mac OS X以[Core Text取代](https://zh.wikipedia.org/wiki/Core_Text "wikilink")[ATSUI](https://zh.wikipedia.org/wiki/ATSUI "wikilink")。

## 工作过程

[Rare_and_ancient_ligatures_in_XeTeX.svg](https://zh.wikipedia.org/wiki/File:Rare_and_ancient_ligatures_in_XeTeX.svg "fig:Rare_and_ancient_ligatures_in_XeTeX.svg")字体（[Hoefler Text](https://zh.wikipedia.org/wiki/Hoefler_Text "wikilink")）渲染[合字](../Page/合字.md "wikilink")\]\]

分两个阶段处理输入文件。在第一阶段中，输出扩展DVI （`xdv`）文件，然后由驱动转换为[PDF文件](https://zh.wikipedia.org/wiki/PDF "wikilink")。在默认模式下，`xdv`文件被直接通过管道送入驱动，不产生任何用户可见的中间文件。同时，也可以只运行的第一阶段，保存`xdv`文件，但在尚无可以阅读这种格式的阅读器。

有两种后端驱动可以从`xdv`文件产生PDF文件：

  - `xdv2pdf`：它使用技术（Apple Advanced Typography），只能在[Mac OS X上工作](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。
  - `xdvipdfmx`：它是的修改版。它在标准的[FreeType](../Page/FreeType.md "wikilink")和[fontconfig上采用了修改版本的Unicode国际化组件](https://zh.wikipedia.org/wiki/fontconfig "wikilink")（ICU），可以在所有平台上工作。

从0.997版开始，所有平台上的默认驱动都是`xdvipdfmx`。在0.9999版中xdv2pdf不再得到支持，其开发也被中止。\[3\]

可以很好的支持[和](https://zh.wikipedia.org/wiki/LaTeX "wikilink")[巨集](../Page/巨集.md "wikilink")包。其中，LaTeX部分以`xelatex`的方式引用。并通常与`fontspec`一起使用，该巨集包提供字体的配置方式，并允许重新命名复杂的字体名称以便于再利用\[4\]。

包含在[ Live](../Page/TeX_Live.md "wikilink")、和[MiK发行包中](https://zh.wikipedia.org/wiki/MiKTeX "wikilink")。

## 示例

下面的例子包括了源代码和渲染结果。例子中使用了开源字体[文泉驿微米黑](https://zh.wikipedia.org/wiki/文泉驿微米黑 "wikilink")（WenQuanYi Micro Hei）显示Unicode字符，使用了以[SIL开源字体授权](../Page/SIL开源字体授权.md "wikilink")发布的[Linux Libertine O字体显示](https://zh.wikipedia.org/wiki/Linux_Libertine_O "wikilink")[OpenType](../Page/OpenType.md "wikilink")字体的连字及旧式数字样式。以命令处理。

<table>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode latex"><code class="sourceCode latex"><span id="cb1-1"><a href="#cb1-1"></a><span class="co">%!Tex Program = xelatex</span></span>
<span id="cb1-2"><a href="#cb1-2"></a><span class="bu">\documentclass</span>[a4paper]{<span class="ex">article</span>}</span>
<span id="cb1-3"><a href="#cb1-3"></a><span class="bu">\usepackage</span>{<span class="ex">xltxtra</span>}</span>
<span id="cb1-4"><a href="#cb1-4"></a><span class="fu">\setmainfont</span>[Mapping=tex-text]{WenQuanYi Micro Hei}</span>
<span id="cb1-5"><a href="#cb1-5"></a><span class="kw">\begin</span>{<span class="ex">document</span>}<span class="fu">\pagestyle</span>{empty}</span>
<span id="cb1-6"><a href="#cb1-6"></a><span class="kw">\section</span>{Unicode support}</span>
<span id="cb1-7"><a href="#cb1-7"></a> </span>
<span id="cb1-8"><a href="#cb1-8"></a><span class="kw">\subsection</span>{English}</span>
<span id="cb1-9"><a href="#cb1-9"></a>All human beings are born free and equal in dignity and rights.</span>
<span id="cb1-10"><a href="#cb1-10"></a> </span>
<span id="cb1-11"><a href="#cb1-11"></a><span class="kw">\subsection</span>{Íslenska}</span>
<span id="cb1-12"><a href="#cb1-12"></a>Hver maður er borinn frjáls og jafn öðrum að virðingu og réttindum.</span>
<span id="cb1-13"><a href="#cb1-13"></a> </span>
<span id="cb1-14"><a href="#cb1-14"></a><span class="kw">\subsection</span>{Русский}  </span>
<span id="cb1-15"><a href="#cb1-15"></a>Все люди рождаются свободными</span>
<span id="cb1-16"><a href="#cb1-16"></a>и равными в своем достоинстве и </span>
<span id="cb1-17"><a href="#cb1-17"></a>правах.</span>
<span id="cb1-18"><a href="#cb1-18"></a> </span>
<span id="cb1-19"><a href="#cb1-19"></a><span class="kw">\subsection</span>{Tiếng Việt}</span>
<span id="cb1-20"><a href="#cb1-20"></a>Tất cả mọi người sinh ra đều được tự do và bình đẳng về nhân phẩm và </span>
<span id="cb1-21"><a href="#cb1-21"></a>quyền lợi.</span>
<span id="cb1-22"><a href="#cb1-22"></a></span>
<span id="cb1-23"><a href="#cb1-23"></a><span class="kw">\subsection</span>{简体中文}</span>
<span id="cb1-24"><a href="#cb1-24"></a>每个人生来平等，享有相同的地位和权利。</span>
<span id="cb1-25"><a href="#cb1-25"></a></span>
<span id="cb1-26"><a href="#cb1-26"></a><span class="kw">\subsection</span>{繁體中文}</span>
<span id="cb1-27"><a href="#cb1-27"></a>每個人生來平等，享有相同的地位和權利。</span>
<span id="cb1-28"><a href="#cb1-28"></a></span>
<span id="cb1-29"><a href="#cb1-29"></a><span class="kw">\subsection</span>{日本語}</span>
<span id="cb1-30"><a href="#cb1-30"></a>すべての人間は自由であり、かつ、尊厳と権利とについて平等である。</span>
<span id="cb1-31"><a href="#cb1-31"></a></span>
<span id="cb1-32"><a href="#cb1-32"></a><span class="kw">\section</span>{Legacy syntax}</span>
<span id="cb1-33"><a href="#cb1-33"></a>When he goes---``Hello World!&#39;&#39;<span class="fu">\\</span></span>
<span id="cb1-34"><a href="#cb1-34"></a>She replies—“Hello dear!”</span>
<span id="cb1-35"><a href="#cb1-35"></a> </span>
<span id="cb1-36"><a href="#cb1-36"></a><span class="kw">\section</span>{Ligatures}</span>
<span id="cb1-37"><a href="#cb1-37"></a><span class="fu">\fontspec</span>[Ligatures={Common, Historical}]{Linux Libertine O Italic}</span>
<span id="cb1-38"><a href="#cb1-38"></a><span class="fu">\fontsize</span>{12pt}{18pt}<span class="fu">\selectfont</span> Questo è strano assai!</span>
<span id="cb1-39"><a href="#cb1-39"></a> </span>
<span id="cb1-40"><a href="#cb1-40"></a><span class="kw">\section</span>{Numerals}</span>
<span id="cb1-41"><a href="#cb1-41"></a><span class="fu">\fontspec</span>[Numbers={OldStyle}]{Linux Libertine O}Old style: 1234567<span class="fu">\\</span></span>
<span id="cb1-42"><a href="#cb1-42"></a><span class="fu">\fontspec</span>[Numbers={Lining}]{Linux Libertine O}Lining: 1234567</span>
<span id="cb1-43"><a href="#cb1-43"></a> </span>
<span id="cb1-44"><a href="#cb1-44"></a><span class="kw">\end</span>{<span class="ex">document</span>}</span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:XeTeX样例.png" title="fig:XeTeX样例.png">XeTeX样例.png</a></p></td>
</tr>
</tbody>
</table>

### 阿拉伯文字支持

在中使用阿拉伯文字的一个解决方案是使用arabxetex软件包。为此，你需要在下列文本中插入阿拉伯文字：

``` latex
\begin{arab}[utf]
.
.
.
\end{arab}
```

用下列代码举例说明：

<table>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode latex"><code class="sourceCode latex"><span id="cb1-1"><a href="#cb1-1"></a><span class="bu">\documentclass</span>[12pt,fleqn,titlepage,twoside,a4paper]{<span class="ex">book</span>}</span>
<span id="cb1-2"><a href="#cb1-2"></a><span class="bu">\usepackage</span>{<span class="ex">etex</span>}</span>
<span id="cb1-3"><a href="#cb1-3"></a><span class="bu">\usepackage</span>{<span class="ex">amsfonts,amsmath,amssymb,graphicx</span>}</span>
<span id="cb1-4"><a href="#cb1-4"></a><span class="bu">\usepackage</span>{<span class="ex">txfonts</span>}</span>
<span id="cb1-5"><a href="#cb1-5"></a><span class="bu">\usepackage</span>[centering,includeheadfoot,margin=1in]{<span class="ex">geometry</span>}</span>
<span id="cb1-6"><a href="#cb1-6"></a><span class="bu">\usepackage</span>{<span class="ex">tabvar</span>}</span>
<span id="cb1-7"><a href="#cb1-7"></a><span class="bu">\usepackage</span>{<span class="ex">arabxetex</span>}</span>
<span id="cb1-8"><a href="#cb1-8"></a><span class="co">%\newfontfamily{\arabicfont}[Script=Arabic,Scale=1.5]{Traditional Arabic}</span></span>
<span id="cb1-9"><a href="#cb1-9"></a></span>
<span id="cb1-10"><a href="#cb1-10"></a><span class="fu">\parindent</span> = 0pt</span>
<span id="cb1-11"><a href="#cb1-11"></a></span>
<span id="cb1-12"><a href="#cb1-12"></a><span class="kw">\begin</span>{<span class="ex">document</span>}</span>
<span id="cb1-13"><a href="#cb1-13"></a></span>
<span id="cb1-14"><a href="#cb1-14"></a><span class="kw">\begin</span>{<span class="ex">arab</span>}[utf]</span>
<span id="cb1-15"><a href="#cb1-15"></a><span class="kw">\chapter*</span>{<span class="fu">\textarab</span>[utf]{ حِكَم من تَجمـيعي }}</span>
<span id="cb1-16"><a href="#cb1-16"></a><span class="kw">\section*</span>{<span class="fu">\textarab</span>[utf]{   شِعر    }}</span>
<span id="cb1-17"><a href="#cb1-17"></a></span>
<span id="cb1-18"><a href="#cb1-18"></a>  أديـن بدين الحـــب أنـى تــوجـهت ركـائبه <span class="fu">\qquad</span> فالحـــب دينــي و إيماني<span class="fu">\\</span></span>
<span id="cb1-19"><a href="#cb1-19"></a> لنا أسوة في بشر هند و اختها و قيس و ليلى <span class="fu">\qquad</span> ثـــــم مـــــي و غـــيــــلان</span>
<span id="cb1-20"><a href="#cb1-20"></a><span class="kw">\end</span>{<span class="ex">arab</span>}</span>
<span id="cb1-21"><a href="#cb1-21"></a></span>
<span id="cb1-22"><a href="#cb1-22"></a><span class="kw">\end</span>{<span class="ex">document</span>}</span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:Xetex_arabic_text.png" title="fig:Xetex_arabic_text.png">Xetex_arabic_text.png</a></p></td>
</tr>
</tbody>
</table>

## 参见

  - [](../Page/TeX.md "wikilink")
  - [](https://zh.wikipedia.org/wiki/LaTeX "wikilink")
  - [Lua](../Page/LuaTeX.md "wikilink")
  - [字体](../Page/字体.md "wikilink")

## 参考文献

## 延伸阅读

  - M. Goossens (Ed.) (2008) [The XeTeX Companion: TeX meets OpenType and Unicode](http://xml.web.cern.ch/XML/lgc2/xetexmain.pdf).

## 外部链接

  -
  - [The Beauty of LaTeX](http://nitens.org/taraborelli/latex)：用专业字体演示 XeTeX。

  - [TeX Catalogue Entry for fontspec](https://web.archive.org/web/20090401183546/http://ctan.org/tex-archive/help/Catalogue/entries/fontspec.html).

  - [TeX Catalogue Entry for xltxtra](https://web.archive.org/web/20080730073155/http://www.ctan.org/tex-archive/help/Catalogue/entries/xltxtra.html).

  - [TeX Catalogue Entry for xunicode](https://web.archive.org/web/20100311182043/http://www.ctan.org/tex-archive/help/Catalogue/entries/xunicode.html).

  - [TUG上的XeTeX作品展](http://www.tug.org/xetexshowcase/)

[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink") [Category:数码字体排印](https://zh.wikipedia.org/wiki/Category:数码字体排印 "wikilink") [Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:自由PDF软件](https://zh.wikipedia.org/wiki/Category:自由PDF软件 "wikilink") [Category:自由TeX软件](https://zh.wikipedia.org/wiki/Category:自由TeX软件 "wikilink")

1.
2.
3.
4.