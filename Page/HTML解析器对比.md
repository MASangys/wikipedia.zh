[解析HTML是一项自动化工作](https://zh.wikipedia.org/wiki/语法分析器 "wikilink")，由（所谓的）**HTML解析器**执行。它们有两个主要目的：

  - HTML遍历：为程序员提供一个接口，来轻松地访问和修改“HTML代码”。典型例子：[DOM解析器](https://zh.wikipedia.org/wiki/文档对象模型#库 "wikilink")。
  - HTML清理：修正有语法错误的HTML，改善结果标记的布局和缩进样式。典型例子：[HTML Tidy](https://zh.wikipedia.org/wiki/HTML_Tidy "wikilink")。

<table>
<thead>
<tr class="header">
<th><p>解析器</p></th>
<th><p><a href="../Page/软件许可证.md" title="wikilink">许可证</a></p></th>
<th><p>实现语言</p></th>
<th><p>最新日期*</p></th>
<th><p>HTML解析[1]</p></th>
<th><p>清理HTML**</p></th>
<th><p>升级HTML***</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Beautiful_Soup.md" title="wikilink">Beautiful Soup</a>[2]</p></td>
<td><p><a href="../Page/Python软件基金会许可证.md" title="wikilink">Python S. F. L.</a></p></td>
<td><p><a href="../Page/Python.md" title="wikilink">Python</a></p></td>
<td><p>2013-05-31</p></td>
<td></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="even">
<td><p><a href="https://github.com/google/gumbo-parser">Gumbo</a></p></td>
<td><p><a href="../Page/Apache许可证.md" title="wikilink">Apache许可证</a>2.0</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C语言" title="wikilink">C</a></p></td>
<td><p>2013-08-13</p></td>
<td></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://github.com/html5lib/html5lib-python">html5lib</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/MIT许可证" title="wikilink">MIT许可证</a></p></td>
<td><p><a href="../Page/Python.md" title="wikilink">Python</a>和<a href="../Page/PHP.md" title="wikilink">PHP</a></p></td>
<td><p>2013-12-23[3]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>[<a href="https://metacpan.org/module/HTML">https://metacpan.org/module/HTML</a>::Parser HTML::Parser]</p></td>
<td><p><a href="../Page/艺术许可协议.md" title="wikilink">艺术许可协议</a></p></td>
<td><p><a href="../Page/Perl.md" title="wikilink">Perl</a></p></td>
<td><p>2013-03-28</p></td>
<td><p>[4]</p></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://htmlpurifier.org/">htmlPurifier</a></p></td>
<td><p><a href="../Page/GNU宽通用公共许可证.md" title="wikilink">GNU宽GPL</a></p></td>
<td><p><a href="../Page/PHP.md" title="wikilink">PHP</a></p></td>
<td><p>2009-03-25[5]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/HTML_Tidy" title="wikilink">HTML Tidy</a></p></td>
<td></td>
<td><p><a href="../Page/ANSI_C.md" title="wikilink">ANSI C</a></p></td>
<td><p>2009-03-25[6]</p></td>
<td><p>[7]</p></td>
<td></td>
<td><p>？</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://htmlcleaner.sourceforge.net/">HtmlCleaner</a></p></td>
<td><p><a href="../Page/BSD许可证.md" title="wikilink">BSD许可证</a>[8]</p></td>
<td><p><a href="../Page/Java.md" title="wikilink">Java</a></p></td>
<td><p>2013-09-05</p></td>
<td></td>
<td></td>
<td><p>？</p></td>
</tr>
<tr class="even">
<td><p><a href="http://www.netsurf-browser.org/projects/hubbub/">Hubbub</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/MIT许可证" title="wikilink">MIT许可证</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C语言" title="wikilink">C</a></p></td>
<td><p>2013-04-19</p></td>
<td></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://jaunt-api.com/">Jaunt API</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Jaunt_Beta许可证" title="wikilink">Jaunt Beta许可证</a></p></td>
<td><p><a href="../Page/Java.md" title="wikilink">Java</a></p></td>
<td><p>2013-08-01</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://jerichohtml.sourceforge.net/">Jericho HTML Parser</a></p></td>
<td><p><a href="../Page/Eclipse公共许可证.md" title="wikilink">Eclipse公共许可证</a></p></td>
<td><p><a href="../Page/Java.md" title="wikilink">Java</a></p></td>
<td><p>2012-10-30[9]</p></td>
<td><p>？？</p></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://npmjs.org/package/jsdom">jsdom</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/MIT许可证" title="wikilink">MIT许可证</a></p></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a></p></td>
<td><p>2013-07-21</p></td>
<td></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/jsoup" title="wikilink">jsoup</a>[10]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/MIT许可证" title="wikilink">MIT许可证</a></p></td>
<td><p><a href="../Page/Java.md" title="wikilink">Java</a></p></td>
<td><p>2013-01-27[11]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://jtidy.sourceforge.net/">JTidy</a></p></td>
<td><p><a href="http://jtidy.sourceforge.net/license.html">JTidy许可证</a></p></td>
<td><p><a href="../Page/Java.md" title="wikilink">Java</a></p></td>
<td><p>2009-12-01[12]</p></td>
<td></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/libxml2" title="wikilink">libxml2</a> <a href="http://www.xmlsoft.org/html/libxml-HTMLparser.html">HTMLparser</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/MIT许可证" title="wikilink">MIT许可证</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C语言" title="wikilink">C</a></p></td>
<td><p>2012-09-11[13]</p></td>
<td></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://nekohtml.sourceforge.net/">NekoHTML</a></p></td>
<td><p><a href="../Page/Apache许可证.md" title="wikilink">Apache许可证</a>2.0</p></td>
<td><p><a href="../Page/Java.md" title="wikilink">Java</a></p></td>
<td><p>2013-02-27[14]</p></td>
<td></td>
<td></td>
<td><p>？</p></td>
</tr>
<tr class="even">
<td><p><a href="https://web.archive.org/web/20120814133448/http://ccil.org/~cowan/XML/tagsoup/">TagSoup</a></p></td>
<td><p><a href="../Page/Apache许可证.md" title="wikilink">Apache许可证</a>2.0</p></td>
<td><p><a href="../Page/Java.md" title="wikilink">Java</a></p></td>
<td><p>2011-07-07</p></td>
<td></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://about.validator.nu/htmlparser/">Validator.nu HTML Parser</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/MIT许可证" title="wikilink">MIT许可证</a></p></td>
<td><p><a href="../Page/Java.md" title="wikilink">Java</a></p></td>
<td><p>2012-06-05</p></td>
<td></td>
<td><p>？</p></td>
<td><p>？</p></td>
</tr>
<tr class="even">
<td><p><a href="https://github.com/avplayer/avhtml">AVHTML</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/LGPL" title="wikilink">LGPL</a></p></td>
<td><p><a href="../Page/C++.md" title="wikilink">C++</a></p></td>
<td><p>2015-07-17</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>解析器</p></td>
<td><p><a href="../Page/软件许可证.md" title="wikilink">许可证</a></p></td>
<td><p>实现语言</p></td>
<td><p>最新日期*</p></td>
<td><p>HTML解析</p></td>
<td><p>清理HTML**</p></td>
<td><p>升级HTML***</p></td>
</tr>
</tbody>
</table>

  -
    \* （有重要更新的）最新版本日期。
    \*\* *规范*（生成标准兼容的网页，减少垃圾信息，等）和*清理*（剥离过剩的表达标签，移除XSS代码，等）HTML代码。
    \*\*\* 将HTML4.X升级到XHTML或HTML5，将废弃的标签（如CENTER）转换为有效的标签（如带有`style="text-align:center;"`的DIV）。

## 参考资料

[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink") [Category:比较学](https://zh.wikipedia.org/wiki/Category:比较学 "wikilink")

1.  [12.2 解析HTML文档——HTML标准](http://www.whatwg.org/specs/web-apps/current-work/multipage/parsing.html)
2.  基于lxml和html5lib，http://www.crummy.com/software/BeautifulSoup/
3.  [版本·html5lib/html5lib-python](https://github.com/html5lib/html5lib-python/releases)
4.  [HTML-Parser：HTML 5的缺陷\#53300](https://rt.cpan.org/Public/Bug/Display.html?id=53300)
5.  [Windows的HTML Tidy](http://www.paehl.com/open_source/?HTML_Tidy_for_Windows)
6.  [Windows的HTML Tidy](http://www.paehl.com/open_source/?HTML_Tidy_for_Windows)
7.  Tidy解析器举例：[PHP的class.tidynode](http://www.php.net/manual/zh/class.tidynode.php)
8.  [HtmlCleaner以BSD许可证分发](http://htmlcleaner.sourceforge.net/license.php)
9.  [Jericho HTML Parser——在SourceForge.net浏览/jericho-html/3.3](http://sourceforge.net/projects/jerichohtml/files/jericho-html/3.3/)
10.
11. [在master的jsoup/CHANGES·jhy/jsoup·GitHub](https://github.com/jhy/jsoup/blob/master/CHANGES)
12. [JTidy—在SourceForge.net浏览/JTidy](http://sourceforge.net/projects/jtidy/files/JTidy/)
13. [libxml2版本](http://xmlsoft.org/news.html)
14. [NekoHTML | 变更历史](http://nekohtml.sourceforge.net/changes.html)