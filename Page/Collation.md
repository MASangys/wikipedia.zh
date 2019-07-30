**collation**，没有公认的译名，或译作“文字排序”，是指在[计算机科学](../Page/计算机科学.md "wikilink")与[图书馆学](../Page/图书馆学.md "wikilink")、词典编撰中书写信息的标准排序。如或者 。形式上说，collation方法对所有可能的标识符（即）集合定义了一个[全序](https://zh.wikipedia.org/wiki/全序 "wikilink")，因此在信息项的集合上产生了一个（因为具有相同的的信息项没有预定次序）。

一个collation算法例如定义如何比较两个字符串确定何者在先。

## 数值序或者编年序

表示数值（或时间）的字符串按照其表示的数值，例如： "-4", "2.5", "10", "89", "30,000". 注意可能会存在偏序情况，如"2"与"2.0"，"2e3"与"2000"。

## 字母序

**字母序**，也称**词典序**。常见问题有：

  - （如空格符）如何处理；

  - [附加符号](../Page/附加符号.md "wikilink")。法语中把带附加符号的字符都当作基本字符来排序。德语的“电话簿序”中，Ä, Ö, Ü应当作为 "ae", "oe", "ue" 来排序。因此，姓Müller/Mueller具有相同的排序位置。西班牙语的Ñ作为一个单独字母排在N之后.

  - 姓名排序时，不论书写或印刷时的姓与名谁在先，可能需要先按照姓，再按照名排序。

  - 以常见词（如"the" 或 "a"）开头的信息项，排序时可能会忽略或者把这些前缀词移动到最后来排序。

  - 爱尔兰与苏格兰姓的常见前缀M'或Mc，可视作是MaC的缩写，排序时按照非缩写形式。如McKinley被视作Mackintosh

  - [连字](https://zh.wikipedia.org/wiki/连字 "wikilink")（ligature），在英语中不被视作不同的字符，如Æ或Œ，排序时当作ae或ce。但在1994年之前的[西班牙语](../Page/西班牙语.md "wikilink")， "CH"与"LL"作为单个字母，分别排在字母C与L之后，因此会如此排序“cinco, credo, chispa”或者“lomo, luz, llama”. [威尔士语](../Page/威尔士语.md "wikilink")中，CH, DD, FF, NG, LL, PH, RH, TH都作为单独的字母，排在其字符对的第一个字母之后（NG例外，排在G之后），因此有如下排序：A, B, C, CH, D, DD, E, F, FF, G, NG, H.

  - 字母与数字混排，有时可按照先数字后字母，或者把数字用字母拼写后排序，如：1776按照"seventeen seventy-six"排序。

## 参见

  -
## 注释

## 参考文献

  - [Unicode Collation Algorithm](http://www.unicode.org/unicode/reports/tr10/): Unicode Technical Standard \#10
  - [Collation in Spanish](http://spanish.about.com/library/weekly/aa092099.htm#letters)
  - [Collation of the names of the member states of the United Nations](https://web.archive.org/web/20061022200845/http://www.un.org/Overview/unmember.html)
  - [Typographical collation for many languages](http://www.w3.org/TR/css3-lists), as proposed in the List module of [Cascading Style Sheets](https://zh.wikipedia.org/wiki/Cascading_Style_Sheet "wikilink").
  - [Collation Charts](http://www.collation-charts.org/): Charts demonstrating language-specific sorting orders in various operating systems and DBMS
  - [ICU Locale Explorer](http://demo.icu-project.org/icu-bin/locexp?_=en_US&x=col): An online demonstration of sorting in different languages that uses the [Unicode Collation Algorithm](https://zh.wikipedia.org/wiki/Unicode_Collation_Algorithm "wikilink") with [International Components for Unicode](https://zh.wikipedia.org/wiki/International_Components_for_Unicode "wikilink")

[Category:排序算法](https://zh.wikipedia.org/wiki/Category:排序算法 "wikilink")