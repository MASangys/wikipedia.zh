****（或\[1\]，文本模式下写作XeTeX）是一种使用[Unicode的](../Page/Unicode.md "wikilink")[TeX](../Page/TeX.md "wikilink")[排版引擎](../Page/排版.md "wikilink")，并支持一些现代字体技术，例如[OpenType](../Page/OpenType.md "wikilink")、[Graphite和](../Page/Graphite.md "wikilink")[Apple
Advanced
Typography](../Page/Apple_Advanced_Typography.md "wikilink")（AAT）。其作者和维护者是Jonathan
Kew，并以[X11自由软件许可证发布](../Page/MIT许可证.md "wikilink")\[2\]。

虽然最初只是为[Mac OS
X所开发](../Page/Mac_OS_X.md "wikilink")，但它现在在各主要平台上都可以运作。它原生支持Unicode，并默认其输入文件为[UTF-8编码](../Page/UTF-8.md "wikilink")。可以在不进行额外配置的情况下直接使用操作系统中安装的字体，因此可以直接利用OpenType、Graphite中的高级特性，例如额外的[字形](../Page/字形.md "wikilink")，[花体](../Page/花体.md "wikilink")，[合字](../Page/合字.md "wikilink")，可变的文本粗细等等。提供了对OpenType中本地排版约定（`locl`标签）的支持，也允许向字体传递OpenType的元标签。它亦支持使用包含特殊数学字符的Unicode字体排版数学公式，例如使用[Cambria
Math或](../Page/Cambria#Cambria_Math.md "wikilink")[Asana
Math字体代替传统的TeX字体](../Page/Asana_Math.md "wikilink")。

## 历史

2004年4月，发布了的第一个版本，这个版本只支持[Mac OS
X](../Page/Mac_OS_X.md "wikilink")，并包括了内建的[ATT和](../Page/Apple_Advanced_Typography.md "wikilink")[Unicode支持](../Page/Unicode.md "wikilink")。2005年，加入了对OpenType的支持。在2006年BachoTeX期间，发布了第一个支持[Linux的版本](../Page/Linux.md "wikilink")，并在数月后由Akira
Kakuto移植到了[Microsoft
Windows上](../Page/Microsoft_Windows.md "wikilink")，其跨平台版本最终包含在[
Live](../Page/TeX_Live.md "wikilink")
2007中。另外，从2.7版开始，[MiK也包含了](../Page/MiKTeX.md "wikilink")。

作为[
Live的一部分](../Page/TeX_Live.md "wikilink")，支持大多数为[](../Page/LaTeX.md "wikilink")、[OpenType](../Page/OpenType.md "wikilink")、[TrueType和](../Page/TrueType.md "wikilink")[PostScript字体开发的巨集包](../Page/PostScript.md "wikilink")，而无需特别的安装和设定。

[BachoTeX](../Page/BachoTeX.md "wikilink")
2008上宣布发行0.998版本，通过`\XeTeXinputnormalization`命令支持[Unicode正规化](../Page/Unicode正规化.md "wikilink")。

2013年5月发布0.9999，为了[OpenType排版从](../Page/OpenType.md "wikilink")[ICU排版引擎转换到](../Page/International_Components_for_Unicode.md "wikilink")[HarfBuzz](../Page/HarfBuzz.md "wikilink")，为[Graphite排版输出增添Graphite](../Page/Graphite.md "wikilink")2，并在Mac
OS X以[Core
Text取代](../Page/Core_Text.md "wikilink")[ATSUI](../Page/ATSUI.md "wikilink")。

## 工作过程

[Rare_and_ancient_ligatures_in_XeTeX.svg](https://zh.wikipedia.org/wiki/File:Rare_and_ancient_ligatures_in_XeTeX.svg "fig:Rare_and_ancient_ligatures_in_XeTeX.svg")字体（[Hoefler
Text](../Page/Hoefler_Text.md "wikilink")）渲染[合字](../Page/合字.md "wikilink")\]\]

分两个阶段处理输入文件。在第一阶段中，输出扩展DVI
（`xdv`）文件，然后由驱动转换为[PDF文件](../Page/PDF.md "wikilink")。在默认模式下，`xdv`文件被直接通过管道送入驱动，不产生任何用户可见的中间文件。同时，也可以只运行的第一阶段，保存`xdv`文件，但在尚无可以阅读这种格式的阅读器。

有两种后端驱动可以从`xdv`文件产生PDF文件：

  - `xdv2pdf`：它使用技术（Apple Advanced Typography），只能在[Mac OS
    X上工作](../Page/Mac_OS_X.md "wikilink")。
  - `xdvipdfmx`：它是的修改版。它在标准的[FreeType和](../Page/FreeType.md "wikilink")[fontconfig上采用了修改版本的Unicode国际化组件](../Page/fontconfig.md "wikilink")（ICU），可以在所有平台上工作。

从0.997版开始，所有平台上的默认驱动都是`xdvipdfmx`。在0.9999版中xdv2pdf不再得到支持，其开发也被中止。\[3\]

可以很好的支持[和](../Page/LaTeX.md "wikilink")[巨集包](../Page/巨集.md "wikilink")。其中，LaTeX部分以`xelatex`的方式引用。并通常与`fontspec`一起使用，该巨集包提供字体的配置方式，并允许重新命名复杂的字体名称以便于再利用\[4\]。

包含在[
Live](../Page/TeX_Live.md "wikilink")、和[MiK发行包中](../Page/MiKTeX.md "wikilink")。

## 示例

下面的例子包括了源代码和渲染结果。例子中使用了开源字体[文泉驿微米黑](../Page/文泉驿微米黑.md "wikilink")（WenQuanYi
Micro
Hei）显示Unicode字符，使用了以[SIL开源字体授权发布的](../Page/SIL开源字体授权.md "wikilink")[Linux
Libertine
O字体显示](../Page/Linux_Libertine_O.md "wikilink")[OpenType字体的连字及旧式数字样式](../Page/OpenType.md "wikilink")。以命令处理。

<table>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode latex"><code class="sourceCode latex"><a class="sourceLine" id="cb1-1" title="1"><span class="co">%!Tex Program = xelatex</span></a>
<a class="sourceLine" id="cb1-2" title="2"><span class="bu">\documentclass</span>[a4paper]{<span class="ex">article</span>}</a>
<a class="sourceLine" id="cb1-3" title="3"><span class="bu">\usepackage</span>{<span class="ex">xltxtra</span>}</a>
<a class="sourceLine" id="cb1-4" title="4"><span class="fu">\setmainfont</span>[Mapping=tex-text]{WenQuanYi Micro Hei}</a>
<a class="sourceLine" id="cb1-5" title="5"><span class="kw">\begin</span>{<span class="ex">document</span>}<span class="fu">\pagestyle</span>{empty}</a>
<a class="sourceLine" id="cb1-6" title="6"><span class="kw">\section</span>{Unicode support}</a>
<a class="sourceLine" id="cb1-7" title="7"> </a>
<a class="sourceLine" id="cb1-8" title="8"><span class="kw">\subsection</span>{English}</a>
<a class="sourceLine" id="cb1-9" title="9">All human beings are born free and equal in dignity and rights.</a>
<a class="sourceLine" id="cb1-10" title="10"> </a>
<a class="sourceLine" id="cb1-11" title="11"><span class="kw">\subsection</span>{Íslenska}</a>
<a class="sourceLine" id="cb1-12" title="12">Hver maður er borinn frjáls og jafn öðrum að virðingu og réttindum.</a>
<a class="sourceLine" id="cb1-13" title="13"> </a>
<a class="sourceLine" id="cb1-14" title="14"><span class="kw">\subsection</span>{Русский}  </a>
<a class="sourceLine" id="cb1-15" title="15">Все люди рождаются свободными</a>
<a class="sourceLine" id="cb1-16" title="16">и равными в своем достоинстве и </a>
<a class="sourceLine" id="cb1-17" title="17">правах.</a>
<a class="sourceLine" id="cb1-18" title="18"> </a>
<a class="sourceLine" id="cb1-19" title="19"><span class="kw">\subsection</span>{Tiếng Việt}</a>
<a class="sourceLine" id="cb1-20" title="20">Tất cả mọi người sinh ra đều được tự do và bình đẳng về nhân phẩm và </a>
<a class="sourceLine" id="cb1-21" title="21">quyền lợi.</a>
<a class="sourceLine" id="cb1-22" title="22"></a>
<a class="sourceLine" id="cb1-23" title="23"><span class="kw">\subsection</span>{简体中文}</a>
<a class="sourceLine" id="cb1-24" title="24">每个人生来平等，享有相同的地位和权利。</a>
<a class="sourceLine" id="cb1-25" title="25"></a>
<a class="sourceLine" id="cb1-26" title="26"><span class="kw">\subsection</span>{繁體中文}</a>
<a class="sourceLine" id="cb1-27" title="27">每個人生來平等，享有相同的地位和權利。</a>
<a class="sourceLine" id="cb1-28" title="28"></a>
<a class="sourceLine" id="cb1-29" title="29"><span class="kw">\subsection</span>{日本語}</a>
<a class="sourceLine" id="cb1-30" title="30">すべての人間は自由であり、かつ、尊厳と権利とについて平等である。</a>
<a class="sourceLine" id="cb1-31" title="31"></a>
<a class="sourceLine" id="cb1-32" title="32"><span class="kw">\section</span>{Legacy syntax}</a>
<a class="sourceLine" id="cb1-33" title="33">When he goes---``Hello World!&#39;&#39;<span class="fu">\\</span></a>
<a class="sourceLine" id="cb1-34" title="34">She replies—“Hello dear!”</a>
<a class="sourceLine" id="cb1-35" title="35"> </a>
<a class="sourceLine" id="cb1-36" title="36"><span class="kw">\section</span>{Ligatures}</a>
<a class="sourceLine" id="cb1-37" title="37"><span class="fu">\fontspec</span>[Ligatures={Common, Historical}]{Linux Libertine O Italic}</a>
<a class="sourceLine" id="cb1-38" title="38"><span class="fu">\fontsize</span>{12pt}{18pt}<span class="fu">\selectfont</span> Questo è strano assai!</a>
<a class="sourceLine" id="cb1-39" title="39"> </a>
<a class="sourceLine" id="cb1-40" title="40"><span class="kw">\section</span>{Numerals}</a>
<a class="sourceLine" id="cb1-41" title="41"><span class="fu">\fontspec</span>[Numbers={OldStyle}]{Linux Libertine O}Old style: 1234567<span class="fu">\\</span></a>
<a class="sourceLine" id="cb1-42" title="42"><span class="fu">\fontspec</span>[Numbers={Lining}]{Linux Libertine O}Lining: 1234567</a>
<a class="sourceLine" id="cb1-43" title="43"> </a>
<a class="sourceLine" id="cb1-44" title="44"><span class="kw">\end</span>{<span class="ex">document</span>}</a></code></pre></div></td>
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
<td><div class="sourceCode" id="cb1"><pre class="sourceCode latex"><code class="sourceCode latex"><a class="sourceLine" id="cb1-1" title="1"><span class="bu">\documentclass</span>[12pt,fleqn,titlepage,twoside,a4paper]{<span class="ex">book</span>}</a>
<a class="sourceLine" id="cb1-2" title="2"><span class="bu">\usepackage</span>{<span class="ex">etex</span>}</a>
<a class="sourceLine" id="cb1-3" title="3"><span class="bu">\usepackage</span>{<span class="ex">amsfonts,amsmath,amssymb,graphicx</span>}</a>
<a class="sourceLine" id="cb1-4" title="4"><span class="bu">\usepackage</span>{<span class="ex">txfonts</span>}</a>
<a class="sourceLine" id="cb1-5" title="5"><span class="bu">\usepackage</span>[centering,includeheadfoot,margin=1in]{<span class="ex">geometry</span>}</a>
<a class="sourceLine" id="cb1-6" title="6"><span class="bu">\usepackage</span>{<span class="ex">tabvar</span>}</a>
<a class="sourceLine" id="cb1-7" title="7"><span class="bu">\usepackage</span>{<span class="ex">arabxetex</span>}</a>
<a class="sourceLine" id="cb1-8" title="8"><span class="co">%\newfontfamily{\arabicfont}[Script=Arabic,Scale=1.5]{Traditional Arabic}</span></a>
<a class="sourceLine" id="cb1-9" title="9"></a>
<a class="sourceLine" id="cb1-10" title="10"><span class="fu">\parindent</span> = 0pt</a>
<a class="sourceLine" id="cb1-11" title="11"></a>
<a class="sourceLine" id="cb1-12" title="12"><span class="kw">\begin</span>{<span class="ex">document</span>}</a>
<a class="sourceLine" id="cb1-13" title="13"></a>
<a class="sourceLine" id="cb1-14" title="14"><span class="kw">\begin</span>{<span class="ex">arab</span>}[utf]</a>
<a class="sourceLine" id="cb1-15" title="15"><span class="kw">\chapter*</span>{<span class="fu">\textarab</span>[utf]{ حِكَم من تَجمـيعي }}</a>
<a class="sourceLine" id="cb1-16" title="16"><span class="kw">\section*</span>{<span class="fu">\textarab</span>[utf]{   شِعر    }}</a>
<a class="sourceLine" id="cb1-17" title="17"></a>
<a class="sourceLine" id="cb1-18" title="18">  أديـن بدين الحـــب أنـى تــوجـهت ركـائبه <span class="fu">\qquad</span> فالحـــب دينــي و إيماني<span class="fu">\\</span></a>
<a class="sourceLine" id="cb1-19" title="19"> لنا أسوة في بشر هند و اختها و قيس و ليلى <span class="fu">\qquad</span> ثـــــم مـــــي و غـــيــــلان</a>
<a class="sourceLine" id="cb1-20" title="20"><span class="kw">\end</span>{<span class="ex">arab</span>}</a>
<a class="sourceLine" id="cb1-21" title="21"></a>
<a class="sourceLine" id="cb1-22" title="22"><span class="kw">\end</span>{<span class="ex">document</span>}</a></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:Xetex_arabic_text.png" title="fig:Xetex_arabic_text.png">Xetex_arabic_text.png</a></p></td>
</tr>
</tbody>
</table>

## 参见

  - [](../Page/TeX.md "wikilink")
  - [](../Page/LaTeX.md "wikilink")
  - [Lua](../Page/LuaTeX.md "wikilink")
  - [字体](../Page/字体.md "wikilink")

## 参考文献

## 延伸阅读

  - M. Goossens (Ed.) (2008) [The XeTeX Companion: TeX meets OpenType
    and Unicode](http://xml.web.cern.ch/XML/lgc2/xetexmain.pdf).

## 外部链接

  -
  - [The Beauty of LaTeX](http://nitens.org/taraborelli/latex)：用专业字体演示
    XeTeX。

  - [TeX Catalogue Entry for
    fontspec](https://web.archive.org/web/20090401183546/http://ctan.org/tex-archive/help/Catalogue/entries/fontspec.html).

  - [TeX Catalogue Entry for
    xltxtra](https://web.archive.org/web/20080730073155/http://www.ctan.org/tex-archive/help/Catalogue/entries/xltxtra.html).

  - [TeX Catalogue Entry for
    xunicode](https://web.archive.org/web/20100311182043/http://www.ctan.org/tex-archive/help/Catalogue/entries/xunicode.html).

  - [TUG上的XeTeX作品展](http://www.tug.org/xetexshowcase/)

[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink")
[Category:数码字体排印](https://zh.wikipedia.org/wiki/Category:数码字体排印 "wikilink")
[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")
[Category:自由PDF软件](https://zh.wikipedia.org/wiki/Category:自由PDF软件 "wikilink")
[Category:自由TeX软件](https://zh.wikipedia.org/wiki/Category:自由TeX软件 "wikilink")

1.
2.
3.
4.