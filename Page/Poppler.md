**Poppler**（或称为 libpoppler）是一个用来渲染 [PDF 文档的自由程序库](https://zh.wikipedia.org/wiki/Pdf文档 "wikilink")，其开发受 [freedesktop.org](https://zh.wikipedia.org/wiki/freedesktop.org "wikilink") 支持。它是 [GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink") 系统上同类程序库中最为常用的\[1\]，并被开源桌面环境 [GNOME](../Page/GNOME.md "wikilink") 和 [KDE](../Page/KDE.md "wikilink") 上的 PDF 阅读器所使用。

项目发起者 Kristian Høgsberg 有两个目标：\[2\]

1.  以一个程序库的方式提供PDF渲染功能，集中维护力量。
2.  超过[Xpdf](../Page/Xpdf.md "wikilink")的目标，并与现代操作系统所提供的功能结合。

到了2011年0.18版释出，Poppler库完整实现了PDF格式标准 ，还是第一个支持表单和注释的主流的自由 PDF 程序库。\[3\]

Poppler本身是Xpdf-3.0，一个由来自Glyph and Cog, LLC 的 Derek Noonburg 开发的 PDF 阅读器的分支。\[4\]\[5\]

项目名称“Poppler”来自动画《[Futurama](https://zh.wikipedia.org/wiki/Futurama "wikilink")》“The Problem with Popplers”一集。\[6\]

## 应用

许多自由软件使用 Poppler 渲染 PDF 文档。\[7\]

<table>
<thead>
<tr class="header">
<th><p>应用程序</p></th>
<th><p>图形库</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Evince.md" title="wikilink">Evince</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GTK+" title="wikilink">GTK+</a></p></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/FLTK.md" title="wikilink">FLTK</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/KPDF.md" title="wikilink">KPDF</a></p></td>
<td><p><a href="../Page/Qt.md" title="wikilink">Qt</a></p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/LibreOffice" title="wikilink">LibreOffice</a> 6.0</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GTK+" title="wikilink">GTK+</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Inkscape.md" title="wikilink">Inkscape</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GTK+" title="wikilink">GTK+</a></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Okular.md" title="wikilink">Okular</a></p></td>
<td><p><a href="../Page/Qt.md" title="wikilink">Qt</a></p></td>
</tr>
<tr class="odd">
<td><p>, pdftohtml 等</p></td>
<td><p>无</p></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/Qt.md" title="wikilink">Qt</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/TeXstudio.md" title="wikilink">TeXstudio</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GTK+" title="wikilink">GTK+</a></p></td>
</tr>
<tr class="even">
<td><p>VPDF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GTK+" title="wikilink">GTK+</a></p></td>
</tr>
<tr class="odd">
<td><p>Xournal</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GTK+" title="wikilink">GTK+</a></p></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GTK+" title="wikilink">GTK+</a></p></td>
</tr>
</tbody>
</table>

## 特性

Poppler可以使用[Cairo和Splash两个后端绘制PDF文档](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink")，而它的特性又取决于所使用的后端。一个基于[Qt](../Page/Qt.md "wikilink")4绘制框架的第三方后端“Arthur”也是可用的，但是并不完整，而且已不再是活跃开发状态了。\[8\] [Glib](https://zh.wikipedia.org/wiki/Glib "wikilink")，Qt3和Qt4的绑定提供了对Poppler后端的交互界面。尽管Qt3和Qt4绑定仅仅支持Splash后端，有一组可用的补丁支持使用Cairo后端的Qt4绑定。\[9\]然而，Poppler 项目现在依然不希望将这个特性添加到 Poppler 库中。\[10\]

后端的一些特点包括：

  - Cairo:矢量图形反锯齿，以及透明物件渲染。\[11\]
      - Cairo并不对诸如扫描文档的位图进行平滑处理。
      - Cairo并不依赖于[X Window环境](https://zh.wikipedia.org/wiki/X_Window "wikilink")，因此Poppler得以像[Wayland](../Page/Wayland.md "wikilink")一样在不同平台如[Windows或](https://zh.wikipedia.org/wiki/Windows "wikilink")[Mac OS上运行](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")。

<!-- end list -->

  - Splash:支持位图的微小滤波 。\[12\]

Poppler还有一个文字渲染后端，可以从[命令行实用程序](../Page/命令行界面.md "wikilink") pdftotext 调用。它可以用来在命令行下从 PDF 文件中搜索字符串（比如说同 [`grep`](https://zh.wikipedia.org/wiki/grep "wikilink")连用）。\[13\]

具体的方法示例：

``` bash
pdftotext file.pdf - | grep string
```

Poppler支持使用[JavaScript](../Page/JavaScript.md "wikilink")，注释和表单的可交互式文档，\[14\] 但还不支持呈现完整的XFA表单。\[15\]

## 参考文献

<references />

[Category:C++函式庫](https://zh.wikipedia.org/wiki/Category:C++函式庫 "wikilink") [Category:PDF閱讀器](https://zh.wikipedia.org/wiki/Category:PDF閱讀器 "wikilink") [Category:C++軟體](https://zh.wikipedia.org/wiki/Category:C++軟體 "wikilink") [Category:自由PDF软件](https://zh.wikipedia.org/wiki/Category:自由PDF软件 "wikilink")

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