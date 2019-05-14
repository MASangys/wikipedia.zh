**Pandoc**是由[John
MacFarlane](http://johnmacfarlane.net/)开发的[标记语言转换工具](https://zh.wikipedia.org/wiki/标记语言 "wikilink")，可实现不同标记语言间的格式转换，堪称该领域中的“[瑞士军刀](https://zh.wikipedia.org/wiki/瑞士军刀 "wikilink")”\[1\]。Pandoc使用[Haskell语言编写](../Page/Haskell.md "wikilink")，以[命令行形式实现与用户的交互](https://zh.wikipedia.org/wiki/命令行 "wikilink")，可支持多种操作系统；Pandoc采用[GNU
GPL授权协议发布](https://zh.wikipedia.org/wiki/GNU_GPL "wikilink")，属于[自由软件](../Page/自由软件.md "wikilink")。

## Pandoc支持的标记语言格式

<table>
<thead>
<tr class="header">
<th><p>Pandoc可读取的源格式</p></th>
<th><p>Pandoc可生成的目标格式</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ul>
<li><a href="https://zh.wikipedia.org/wiki/Markdown" title="wikilink">Markdown</a></li>
<li><a href="https://zh.wikipedia.org/wiki/reStructuredText" title="wikilink">reStructuredText</a></li>
<li><a href="https://zh.wikipedia.org/wiki/textile" title="wikilink">textile</a></li>
<li><a href="../Page/HTML.md" title="wikilink">HTML</a></li>
<li><a href="../Page/DocBook.md" title="wikilink">DocBook</a></li>
<li><a href="https://zh.wikipedia.org/wiki/LaTeX" title="wikilink">LaTeX</a></li>
<li><a href="../Page/MediaWiki.md" title="wikilink">MediaWiki标记语言</a></li>
<li><a href="https://zh.wikipedia.org/wiki/OPML" title="wikilink">OPML</a></li>
<li><a href="../Page/Org-模式.md" title="wikilink">Org-Mode</a></li>
<li><a href="https://zh.wikipedia.org/wiki/Haddock" title="wikilink">Haddock</a></li>
</ul></td>
<td><ul>
<li>HTML格式：包括<a href="../Page/XHTML.md" title="wikilink">XHTML</a>，<a href="../Page/HTML5.md" title="wikilink">HTML5及</a><a href="https://zh.wikipedia.org/wiki/HTML_slide" title="wikilink">HTML slide</a></li>
<li>文字处理软件格式：包括<a href="https://zh.wikipedia.org/wiki/docx" title="wikilink">docx</a>、<a href="../Page/开放文档格式.md" title="wikilink">odt</a>、<a href="https://zh.wikipedia.org/wiki/OpenDocument_XML" title="wikilink">OpenDocument XML</a></li>
<li>电子书格式：包括<a href="../Page/EPUB.md" title="wikilink">EPUB</a>（第2版及第3版）、<a href="../Page/FictionBook.md" title="wikilink">FictionBook2</a></li>
<li>技术文档格式：包括<a href="../Page/DocBook.md" title="wikilink">DocBook</a>、<a href="https://zh.wikipedia.org/wiki/GNU_TexInfo" title="wikilink">GNU TexInfo</a>、<a href="../Page/手册页.md" title="wikilink">Groff manpages</a>、<a href="https://zh.wikipedia.org/wiki/Haddock" title="wikilink">Haddock</a></li>
<li>页面布局格式：<a href="https://zh.wikipedia.org/wiki/InDesign_ICML" title="wikilink">InDesign ICML</a></li>
<li>大纲处理标记语言格式：<a href="https://zh.wikipedia.org/wiki/OPML" title="wikilink">OPML</a></li>
<li>TeX格式：包括<a href="https://zh.wikipedia.org/wiki/LaTeX" title="wikilink">LaTeX</a>、<a href="https://zh.wikipedia.org/wiki/ConTeXt" title="wikilink">ConTeXt</a>、<a href="../Page/Beamer_(LaTeX).md" title="wikilink">LaTeX Beamer</a></li>
<li>PDF格式：需要LaTeX支持</li>
<li>轻量级标记语言格式：包括<a href="https://zh.wikipedia.org/wiki/Markdown" title="wikilink">Markdown</a>、<a href="https://zh.wikipedia.org/wiki/reStructuredText" title="wikilink">reStructuredText</a>、<a href="https://zh.wikipedia.org/wiki/textile" title="wikilink">textile</a>、<a href="../Page/Org-模式.md" title="wikilink">Org-Mode</a>、<a href="../Page/MediaWiki.md" title="wikilink">MediaWiki标记语言</a>、<a href="https://zh.wikipedia.org/wiki/AsciiDoc" title="wikilink">AsciiDoc</a></li>
<li>自定义格式：可使用<a href="../Page/lua.md" title="wikilink">lua自定义转换规则</a></li>
</ul></td>
</tr>
</tbody>
</table>

更详细的格式信息可参见项目主页上的[图示](http://johnmacfarlane.net/pandoc/diagram.png)。

## Pandoc的安装

Pandoc提供以下安装方式\[2\]（如果需要输出PDF文档，则除Pandoc本身以外，还应另外安装[LaTeX套件](https://zh.wikipedia.org/wiki/LaTeX "wikilink")）：

### Windows及Mac OS X

  - 下载[安装包](https://github.com/jgm/pandoc/releases)并执行安装程序。

### Linux

  - 尝试使用Linux发行版的软件管理工具安装，目前Pandoc已加入[Debian](../Page/Debian.md "wikilink")、[Ubuntu](../Page/Ubuntu.md "wikilink")、[Slackware](../Page/Slackware.md "wikilink")、[Arch](https://zh.wikipedia.org/wiki/Arch "wikilink")、[Fedora](../Page/Fedora.md "wikilink")、[NiXOS和](https://zh.wikipedia.org/wiki/NiXOS "wikilink")[gentoo的软件仓库](https://zh.wikipedia.org/wiki/gentoo "wikilink")。
  - 如果无法通过软件管理工具直接安装Pandoc，则可采取下面介绍的全平台安装方式，即首先安装Haskell平台，再在其基础上安装Pandoc。绝大多数Linux发行版的软件仓库中都包含Haskell平台。

### BSD

  - [FreeBSD和](../Page/FreeBSD.md "wikilink")[NetBSD的软件仓库中已包含Pandoc](../Page/NetBSD.md "wikilink")，可直接安装。

### 全平台

  - 首先安装[Haskell平台](http://www.haskell.org/platform/)，之后使用cabal工具安装最新版本的Pandoc：

<!-- end list -->

``` bash
cabal update
cabal install pandoc
```

## Pandoc的使用

Pandoc的基本指令格式是\[3\]：

``` bash
pandoc [options] [input-file] ...
```

简单的格式转换指令：

``` bash
pandoc -o output.html input.md
```

其中`-o ouput.html`表示输出文件为output.html，input.md是输入文件。

Pandoc会根据文件的后缀名自动判断格式，用户也可以显式地指定输入文件和输出文件格式：

``` bash
pandoc -f markdown -t html -o output.html input.md
```

其中`-f markdown`表示输入文件格式为Markdown，`-t html`表示输出文件格式为HTML。

详细的指令参数请参见[Pandoc用户手册](http://johnmacfarlane.net/pandoc/README.html)。

## 参考资料

## 外部链接

  - [Pandoc用户手册（HTML格式）](http://johnmacfarlane.net/pandoc/README.html)
  - [Pandoc用户手册（PDF格式）](http://johnmacfarlane.net/pandoc/demo/example14.pdf)
  - [在线试用Pandoc](http://johnmacfarlane.net/pandoc/try/)
  - [Pandoc转换示例](http://johnmacfarlane.net/pandoc/demos.html)
  - [Haskell库中的Pandoc包](http://hackage.haskell.org/package/pandoc)
  - [Pandoc项目的Github页面](https://github.com/jgm/pandoc)
  - [Pandoc项目的Google
    Code页面](https://code.google.com/p/pandoc/)（自1.12.3版本后已移至Github）
  - [支持Pandoc绑定或插件的文本编辑器列表](https://github.com/jgm/pandoc/wiki/Pandoc-Extras#editors)
  - [Pandoc版Markdown语法说明（中文）](http://pages.tzengyuxio.me/pandoc/)（Pandoc对原始的Markdown语法进行了扩充，由此形成了Pandoc版本的Markdown）
  - [Pandoc与Multimarkdown的比较](https://github.com/jgm/pandoc/wiki/Pandoc-vs-Multimarkdown)
  - [在Raspberry
    Pi上安装使用Pandoc](https://github.com/jgm/pandoc/wiki/Pandoc-Extras#building-pandoc-on-a-raspberry-pi)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.
2.

3.