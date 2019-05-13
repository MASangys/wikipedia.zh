在[SGML](../Page/SGML.md "wikilink")、
[HTML与](../Page/HTML.md "wikilink")[XML文档](../Page/XML.md "wikilink")，如果某些[Unicode字符在文档的当前编码方式](https://zh.wikipedia.org/wiki/Unicode "wikilink")(如[ISO-8859-1](https://zh.wikipedia.org/wiki/ISO-8859-1 "wikilink"))中不能直接表示，那么可以通过[字符值引用或者](https://zh.wikipedia.org/wiki/字符值引用 "wikilink")[字符实体引用两种](../Page/字符实体引用.md "wikilink")[转义序列来表示这些不能直接编码的字符](https://zh.wikipedia.org/wiki/转义序列 "wikilink")。
下文列出在HTML与XML文档中有效的字符实体引用。 RAsUL9880408895RAsUL9880408895 the new album

## XML中的预定义实体

XML规范并不使用"字符实体"(character entity)或"字符实体引用"(character entity reference).
XML规范定义了5个"预定义实体"来表示特殊字符. XML也允许在每个文档定义任意数量的其它命名实体.

下表列出了5个XML预定义实体. 通过名字引用这些实体的格式为`&name;`，例如, `&` 将绘制为&.

| 名字   | 字符 | Unicode[码位](https://zh.wikipedia.org/wiki/码位 "wikilink")(十进制) | 标准      | 描述                                                  |
| ---- | -- | ------------------------------------------------------------- | ------- | --------------------------------------------------- |
| quot | "  | U+0022 (34)                                                   | XML 1.0 | [双引号](https://zh.wikipedia.org/wiki/双引号 "wikilink") |
| amp  | &  | U+0026 (38)                                                   | XML 1.0 | [&](https://zh.wikipedia.org/wiki/& "wikilink")     |
| apos | '  | U+0027 (39)                                                   | XML 1.0 | [撇号](../Page/撇号.md "wikilink")                      |
| lt   | \< | U+003C (60)                                                   | XML 1.0 | [小于号](https://zh.wikipedia.org/wiki/小于号 "wikilink") |
| gt   | \> | U+003E (62)                                                   | XML 1.0 | [大于号](https://zh.wikipedia.org/wiki/大于号 "wikilink") |

## HTML中的字符实体引用

HTML 4 DTD定义了252个命名实体。HTML 4规范要求使用标准DTD，并且不允许用户定義其它的命名实体.

下表中，"标准"栏指出该字符实体首次定义在哪个版本的HTML DTD中。HTML 4.01没有增加任何新的字符实体。

<table>
<thead>
<tr class="header">
<th><p>名字</p></th>
<th><p>字符</p></th>
<th><p>Unicode码位(十进制)</p></th>
<th><p>标准</p></th>
<th><p>DTD[1]</p></th>
<th><p>舊ISO子集[2]</p></th>
<th><p>描述[3]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>quot</p></td>
<td><p>"</p></td>
<td><p>U+0022 (34)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/双引号" title="wikilink">双引号</a></p></td>
</tr>
<tr class="even">
<td><p>amp</p></td>
<td><p>&amp;</p></td>
<td><p>U+0026 (38)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/&amp;" title="wikilink">&amp;</a></p></td>
</tr>
<tr class="odd">
<td><p>apos</p></td>
<td><p>'</p></td>
<td><p>U+0027 (39)</p></td>
<td><p>XHTML 1.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="../Page/撇号.md" title="wikilink">撇号</a>；参见<a href="https://zh.wikipedia.org/wiki/#XHTML中的特殊字符的实体表示" title="wikilink">下文</a></p></td>
</tr>
<tr class="even">
<td><p>lt</p></td>
<td><p>&lt;</p></td>
<td><p>U+003C (60)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/小于号" title="wikilink">小于号</a></p></td>
</tr>
<tr class="odd">
<td><p>gt</p></td>
<td><p>&gt;</p></td>
<td><p>U+003E (62)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/大于号" title="wikilink">大于号</a></p></td>
</tr>
<tr class="even">
<td><p>nbsp</p></td>
<td><p><span style="background-color:blue;white-space:pre"> </span></p></td>
<td><p>U+00A0 (160)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/不换行空格" title="wikilink">不换行空格</a>[4]</p></td>
</tr>
<tr class="odd">
<td><p>iexcl</p></td>
<td><p>¡</p></td>
<td><p>U+00A1 (161)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/倒置叹号" title="wikilink">倒置叹号</a></p></td>
</tr>
<tr class="even">
<td><p>cent</p></td>
<td><p>¢</p></td>
<td><p>U+00A2 (162)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/分_(貨幣)" title="wikilink">分 (货币符号)</a></p></td>
</tr>
<tr class="odd">
<td><p>pound</p></td>
<td><p>£</p></td>
<td><p>U+00A3 (163)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="../Page/£.md" title="wikilink">镑 (货币符号)</a></p></td>
</tr>
<tr class="even">
<td><p>curren</p></td>
<td><p>¤</p></td>
<td><p>U+00A4 (164)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/国际通货记号" title="wikilink">国际通货记号</a></p></td>
</tr>
<tr class="odd">
<td><p>yen</p></td>
<td><p>¥</p></td>
<td><p>U+00A5 (165)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="../Page/¥.md" title="wikilink">日元／人民幣符号</a></p></td>
</tr>
<tr class="even">
<td><p>brvbar</p></td>
<td><p>¦</p></td>
<td><p>U+00A6 (166)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/间断竖线" title="wikilink">间断竖线</a></p></td>
</tr>
<tr class="odd">
<td><p>sect</p></td>
<td><p>§</p></td>
<td><p>U+00A7 (167)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="../Page/分节符号.md" title="wikilink">节号</a></p></td>
</tr>
<tr class="even">
<td><p>uml</p></td>
<td><p>¨</p></td>
<td><p>U+00A8 (168)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOdia</p></td>
<td><p><a href="../Page/分音符.md" title="wikilink">分音符</a>；参见<a href="https://zh.wikipedia.org/wiki/元音变音" title="wikilink">元音变音</a></p></td>
</tr>
<tr class="odd">
<td><p>copy</p></td>
<td><p>©</p></td>
<td><p>U+00A9 (169)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/版权符号" title="wikilink">版权符</a></p></td>
</tr>
<tr class="even">
<td><p>ordf</p></td>
<td><p>ª</p></td>
<td><p>U+00AA (170)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>阴性<a href="https://zh.wikipedia.org/wiki/序数词指示符" title="wikilink">序数词指示符</a></p></td>
</tr>
<tr class="odd">
<td><p>laquo</p></td>
<td><p>«</p></td>
<td><p>U+00AB (171)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>左侧角引号（中文借用為<a href="../Page/书名号.md" title="wikilink">书名号</a>）</p></td>
</tr>
<tr class="even">
<td><p>not</p></td>
<td><p>¬</p></td>
<td><p>U+00AC (172)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="../Page/逻辑符号表.md" title="wikilink">逻辑非</a></p></td>
</tr>
<tr class="odd">
<td><p>shy</p></td>
<td><p> </p></td>
<td><p>U+00AD (173)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/软连字符" title="wikilink">软连字符</a></p></td>
</tr>
<tr class="even">
<td><p>reg</p></td>
<td><p>®</p></td>
<td><p>U+00AE (174)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/註冊商標符號" title="wikilink">注册商标符</a></p></td>
</tr>
<tr class="odd">
<td><p>macr</p></td>
<td><p>¯</p></td>
<td><p>U+00AF (175)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOdia</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/长音符" title="wikilink">长音符</a> <em>(上划线)</em></p></td>
</tr>
<tr class="even">
<td><p>deg</p></td>
<td><p>°</p></td>
<td><p>U+00B0 (176)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>plusmn</p></td>
<td><p>±</p></td>
<td><p>U+00B1 (177)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/正负号" title="wikilink">正负号</a></p></td>
</tr>
<tr class="even">
<td><p>sup2</p></td>
<td><p>²</p></td>
<td><p>U+00B2 (178)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>上角标2 <em>(平方符号)</em></p></td>
</tr>
<tr class="odd">
<td><p>sup3</p></td>
<td><p>³</p></td>
<td><p>U+00B3 (179)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>上角标3 <em>(立方符号)</em></p></td>
</tr>
<tr class="even">
<td><p>acute</p></td>
<td><p>´</p></td>
<td><p>U+00B4 (180)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOdia</p></td>
<td><p><a href="../Page/尖音符.md" title="wikilink">尖音符</a> <em>(= spacing acute)</em></p></td>
</tr>
<tr class="odd">
<td><p>micro</p></td>
<td><p>µ</p></td>
<td><p>U+00B5 (181)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/微" title="wikilink">微</a> （表示百万分之一的国际单位制词头）</p></td>
</tr>
<tr class="even">
<td><p>para</p></td>
<td><p>¶</p></td>
<td><p>U+00B6 (182)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="../Page/段落符号.md" title="wikilink">段落符号</a></p></td>
</tr>
<tr class="odd">
<td><p>middot</p></td>
<td><p>·</p></td>
<td><p>U+00B7 (183)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="../Page/间隔号.md" title="wikilink">间隔号</a> <em>(中点)</em></p></td>
</tr>
<tr class="even">
<td><p>cedil</p></td>
<td><p>¸</p></td>
<td><p>U+00B8 (184)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOdia</p></td>
<td><p><a href="../Page/软音符.md" title="wikilink">软音符</a></p></td>
</tr>
<tr class="odd">
<td><p>sup1</p></td>
<td><p>¹</p></td>
<td><p>U+00B9 (185)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>上角标1</p></td>
</tr>
<tr class="even">
<td><p>ordm</p></td>
<td><p>º</p></td>
<td><p>U+00BA (186)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>阳性<a href="https://zh.wikipedia.org/wiki/序数词指示符" title="wikilink">序数词指示符</a></p></td>
</tr>
<tr class="odd">
<td><p>raquo</p></td>
<td><p>»</p></td>
<td><p>U+00BB (187)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>右侧角引号（中文借用為書名號）</p></td>
</tr>
<tr class="even">
<td><p>frac14</p></td>
<td><p>¼</p></td>
<td><p>U+00BC (188)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>四分之一分数</p></td>
</tr>
<tr class="odd">
<td><p>frac12</p></td>
<td><p>½</p></td>
<td><p>U+00BD (189)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>二分之一分数</p></td>
</tr>
<tr class="even">
<td><p>frac34</p></td>
<td><p>¾</p></td>
<td><p>U+00BE (190)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p>四分之三分数</p></td>
</tr>
<tr class="odd">
<td><p>iquest</p></td>
<td><p>¿</p></td>
<td><p>U+00BF (191)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/倒置问号" title="wikilink">倒置问号</a></p></td>
</tr>
<tr class="even">
<td><p>Agrave</p></td>
<td><p>À</p></td>
<td><p>U+00C0 (192)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/À.md" title="wikilink">带重音符的字母A</a></p></td>
</tr>
<tr class="odd">
<td><p>Aacute</p></td>
<td><p>Á</p></td>
<td><p>U+00C1 (193)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Á.md" title="wikilink">带尖音符的字母A</a></p></td>
</tr>
<tr class="even">
<td><p>Acirc</p></td>
<td><p>Â</p></td>
<td><p>U+00C2 (194)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Â.md" title="wikilink">带抑扬符的字母A</a></p></td>
</tr>
<tr class="odd">
<td><p>Atilde</p></td>
<td><p>Ã</p></td>
<td><p>U+00C3 (195)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ã.md" title="wikilink">带颚化符的字母A</a></p></td>
</tr>
<tr class="even">
<td><p>Auml</p></td>
<td><p>Ä</p></td>
<td><p>U+00C4 (196)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ä.md" title="wikilink">带分音符的字母A</a></p></td>
</tr>
<tr class="odd">
<td><p>Aring</p></td>
<td><p>Å</p></td>
<td><p>U+00C5 (197)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Å.md" title="wikilink">带上圆圈的字母A</a></p></td>
</tr>
<tr class="even">
<td><p>AElig</p></td>
<td><p>Æ</p></td>
<td><p>U+00C6 (198)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Æ.md" title="wikilink">Æ</a>（连字符AE）</p></td>
</tr>
<tr class="odd">
<td><p>Ccedil</p></td>
<td><p>Ç</p></td>
<td><p>U+00C7 (199)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ç.md" title="wikilink">带软音符的字母C</a></p></td>
</tr>
<tr class="even">
<td><p>Egrave</p></td>
<td><p>È</p></td>
<td><p>U+00C8 (200)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/È.md" title="wikilink">带重音符的字母E</a></p></td>
</tr>
<tr class="odd">
<td><p>Eacute</p></td>
<td><p>É</p></td>
<td><p>U+00C9 (201)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/É.md" title="wikilink">带尖音符的字母E</a></p></td>
</tr>
<tr class="even">
<td><p>Ecirc</p></td>
<td><p>Ê</p></td>
<td><p>U+00CA (202)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ê.md" title="wikilink">带抑扬符的字母E</a></p></td>
</tr>
<tr class="odd">
<td><p>Euml</p></td>
<td><p>Ë</p></td>
<td><p>U+00CB (203)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ë.md" title="wikilink">带分音符的字母E</a></p></td>
</tr>
<tr class="even">
<td><p>Igrave</p></td>
<td><p>Ì</p></td>
<td><p>U+00CC (204)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ì.md" title="wikilink">带重音符的字母I</a></p></td>
</tr>
<tr class="odd">
<td><p>Iacute</p></td>
<td><p>Í</p></td>
<td><p>U+00CD (205)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Í.md" title="wikilink">带尖音符的字母I</a></p></td>
</tr>
<tr class="even">
<td><p>Icirc</p></td>
<td><p>Î</p></td>
<td><p>U+00CE (206)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Î" title="wikilink">带抑扬符的字母I</a></p></td>
</tr>
<tr class="odd">
<td><p>Iuml</p></td>
<td><p>Ï</p></td>
<td><p>U+00CF (207)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Ï" title="wikilink">带分音符的字母I</a></p></td>
</tr>
<tr class="even">
<td><p>ETH</p></td>
<td><p>Ð</p></td>
<td><p>U+00D0 (208)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ð.md" title="wikilink">带删节线的字母D</a></p></td>
</tr>
<tr class="odd">
<td><p>Ntilde</p></td>
<td><p>Ñ</p></td>
<td><p>U+00D1 (209)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ñ.md" title="wikilink">带颚化符的字母N</a></p></td>
</tr>
<tr class="even">
<td><p>Ograve</p></td>
<td><p>Ò</p></td>
<td><p>U+00D2 (210)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ò.md" title="wikilink">带重音符的字母O</a></p></td>
</tr>
<tr class="odd">
<td><p>Oacute</p></td>
<td><p>Ó</p></td>
<td><p>U+00D3 (211)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ó.md" title="wikilink">带尖音符的字母O</a></p></td>
</tr>
<tr class="even">
<td><p>Ocirc</p></td>
<td><p>Ô</p></td>
<td><p>U+00D4 (212)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ô.md" title="wikilink">带抑扬符的字母O</a></p></td>
</tr>
<tr class="odd">
<td><p>Otilde</p></td>
<td><p>Õ</p></td>
<td><p>U+00D5 (213)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Õ" title="wikilink">带颚化符的字母O</a></p></td>
</tr>
<tr class="even">
<td><p>Ouml</p></td>
<td><p>Ö</p></td>
<td><p>U+00D6 (214)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ö.md" title="wikilink">带分音符的字母O</a></p></td>
</tr>
<tr class="odd">
<td><p>times</p></td>
<td><p>×</p></td>
<td><p>U+00D7 (215)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/乘号" title="wikilink">乘号</a></p></td>
</tr>
<tr class="even">
<td><p>Oslash</p></td>
<td><p>Ø</p></td>
<td><p>U+00D8 (216)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ø.md" title="wikilink">带短斜线的字母O</a></p></td>
</tr>
<tr class="odd">
<td><p>Ugrave</p></td>
<td><p>Ù</p></td>
<td><p>U+00D9 (217)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Ù" title="wikilink">带重音符的字母U</a></p></td>
</tr>
<tr class="even">
<td><p>Uacute</p></td>
<td><p>Ú</p></td>
<td><p>U+00DA (218)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ú.md" title="wikilink">带尖音符的字母U</a></p></td>
</tr>
<tr class="odd">
<td><p>Ucirc</p></td>
<td><p>Û</p></td>
<td><p>U+00DB (219)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Û" title="wikilink">带抑扬符的字母U</a></p></td>
</tr>
<tr class="even">
<td><p>Uuml</p></td>
<td><p>Ü</p></td>
<td><p>U+00DC (220)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ü.md" title="wikilink">带分音符的字母U</a></p></td>
</tr>
<tr class="odd">
<td><p>Yacute</p></td>
<td><p>Ý</p></td>
<td><p>U+00DD (221)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/Ý.md" title="wikilink">带尖音符的字母Y</a></p></td>
</tr>
<tr class="even">
<td><p>THORN</p></td>
<td><p>Þ</p></td>
<td><p>U+00DE (222)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p>字母<a href="../Page/Þ.md" title="wikilink">Þ</a> 相当于th</p></td>
</tr>
<tr class="odd">
<td><p>szlig</p></td>
<td><p>ß</p></td>
<td><p>U+00DF (223)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ß.md" title="wikilink">ß</a> (德文中一个特殊的字母)</p></td>
</tr>
<tr class="even">
<td><p>agrave</p></td>
<td><p>à</p></td>
<td><p>U+00E0 (224)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/à.md" title="wikilink">带重音符的字母a</a></p></td>
</tr>
<tr class="odd">
<td><p>aacute</p></td>
<td><p>á</p></td>
<td><p>U+00E1 (225)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/á.md" title="wikilink">带尖音符的字母a</a></p></td>
</tr>
<tr class="even">
<td><p>acirc</p></td>
<td><p>â</p></td>
<td><p>U+00E2 (226)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/â.md" title="wikilink">带抑扬符的字母a</a></p></td>
</tr>
<tr class="odd">
<td><p>atilde</p></td>
<td><p>ã</p></td>
<td><p>U+00E3 (227)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ã.md" title="wikilink">带颚化符的字母a</a></p></td>
</tr>
<tr class="even">
<td><p>auml</p></td>
<td><p>ä</p></td>
<td><p>U+00E4 (228)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ä.md" title="wikilink">带分音符的字母a</a></p></td>
</tr>
<tr class="odd">
<td><p>aring</p></td>
<td><p>å</p></td>
<td><p>U+00E5 (229)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/å.md" title="wikilink">带圆圈的字母a</a></p></td>
</tr>
<tr class="even">
<td><p>aelig</p></td>
<td><p>æ</p></td>
<td><p>U+00E6 (230)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/æ.md" title="wikilink">字母ae的连写符号</a></p></td>
</tr>
<tr class="odd">
<td><p>ccedil</p></td>
<td><p>ç</p></td>
<td><p>U+00E7 (231)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ç.md" title="wikilink">带软音符的字母c</a></p></td>
</tr>
<tr class="even">
<td><p>egrave</p></td>
<td><p>è</p></td>
<td><p>U+00E8 (232)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/è.md" title="wikilink">带重音符的字母e</a></p></td>
</tr>
<tr class="odd">
<td><p>eacute</p></td>
<td><p>é</p></td>
<td><p>U+00E9 (233)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/é.md" title="wikilink">带尖音符的字母e</a></p></td>
</tr>
<tr class="even">
<td><p>ecirc</p></td>
<td><p>ê</p></td>
<td><p>U+00EA (234)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ê.md" title="wikilink">带抑扬符的字母e</a></p></td>
</tr>
<tr class="odd">
<td><p>euml</p></td>
<td><p>ë</p></td>
<td><p>U+00EB (235)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ë.md" title="wikilink">带分音符的字母e</a></p></td>
</tr>
<tr class="even">
<td><p>igrave</p></td>
<td><p>ì</p></td>
<td><p>U+00EC (236)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ì.md" title="wikilink">带重音符的字母i</a></p></td>
</tr>
<tr class="odd">
<td><p>iacute</p></td>
<td><p>í</p></td>
<td><p>U+00ED (237)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/í.md" title="wikilink">带尖音符的字母i</a></p></td>
</tr>
<tr class="even">
<td><p>icirc</p></td>
<td><p>î</p></td>
<td><p>U+00EE (238)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/î" title="wikilink">带抑扬符的字母i</a></p></td>
</tr>
<tr class="odd">
<td><p>iuml</p></td>
<td><p>ï</p></td>
<td><p>U+00EF (239)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/ï" title="wikilink">带分音符的字母i</a></p></td>
</tr>
<tr class="even">
<td><p>eth</p></td>
<td><p>ð</p></td>
<td><p>U+00F0 (240)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ð.md" title="wikilink">带短斜线的字母d</a></p></td>
</tr>
<tr class="odd">
<td><p>ntilde</p></td>
<td><p>ñ</p></td>
<td><p>U+00F1 (241)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ñ.md" title="wikilink">带颚化符的字母n</a></p></td>
</tr>
<tr class="even">
<td><p>ograve</p></td>
<td><p>ò</p></td>
<td><p>U+00F2 (242)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ò.md" title="wikilink">带重音符的字母o</a></p></td>
</tr>
<tr class="odd">
<td><p>oacute</p></td>
<td><p>ó</p></td>
<td><p>U+00F3 (243)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ó.md" title="wikilink">带尖音符的字母o</a></p></td>
</tr>
<tr class="even">
<td><p>ocirc</p></td>
<td><p>ô</p></td>
<td><p>U+00F4 (244)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ô.md" title="wikilink">带抑扬符的字母o</a></p></td>
</tr>
<tr class="odd">
<td><p>otilde</p></td>
<td><p>õ</p></td>
<td><p>U+00F5 (245)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/õ" title="wikilink">带颚化符的字母o</a></p></td>
</tr>
<tr class="even">
<td><p>ouml</p></td>
<td><p>ö</p></td>
<td><p>U+00F6 (246)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ö.md" title="wikilink">带分音符的字母o</a></p></td>
</tr>
<tr class="odd">
<td><p>divide</p></td>
<td><p>÷</p></td>
<td><p>U+00F7 (247)</p></td>
<td><p>HTML 3.2</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/除号" title="wikilink">除号</a></p></td>
</tr>
<tr class="even">
<td><p>oslash</p></td>
<td><p>ø</p></td>
<td><p>U+00F8 (248)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ø.md" title="wikilink">带短斜线的字母o</a></p></td>
</tr>
<tr class="odd">
<td><p>ugrave</p></td>
<td><p>ù</p></td>
<td><p>U+00F9 (249)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/ù" title="wikilink">带重音符的字母u</a></p></td>
</tr>
<tr class="even">
<td><p>uacute</p></td>
<td><p>ú</p></td>
<td><p>U+00FA (250)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ú.md" title="wikilink">带尖音符的字母u</a></p></td>
</tr>
<tr class="odd">
<td><p>ucirc</p></td>
<td><p>û</p></td>
<td><p>U+00FB (251)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/û" title="wikilink">带抑扬符的字母u</a></p></td>
</tr>
<tr class="even">
<td><p>uuml</p></td>
<td><p>ü</p></td>
<td><p>U+00FC (252)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ü.md" title="wikilink">带分音符的字母u</a></p></td>
</tr>
<tr class="odd">
<td><p>yacute</p></td>
<td><p>ý</p></td>
<td><p>U+00FD (253)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/ý.md" title="wikilink">带尖音符的字母y</a></p></td>
</tr>
<tr class="even">
<td><p>thorn</p></td>
<td><p>þ</p></td>
<td><p>U+00FE (254)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="../Page/þ.md" title="wikilink">þ</a></p></td>
</tr>
<tr class="odd">
<td><p>yuml</p></td>
<td><p>ÿ</p></td>
<td><p>U+00FF (255)</p></td>
<td><p>HTML 2.0</p></td>
<td><p>HTMLlat1</p></td>
<td><p>ISOlat1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/ÿ" title="wikilink">带分音符的字母y</a></p></td>
</tr>
<tr class="even">
<td><p>OElig</p></td>
<td><p>Œ</p></td>
<td><p>U+0152 (338)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOlat2</p></td>
<td><p><a href="../Page/Œ.md" title="wikilink">字母OE的连写符号</a>[5]</p></td>
</tr>
<tr class="odd">
<td><p>oelig</p></td>
<td><p>œ</p></td>
<td><p>U+0153 (339)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOlat2</p></td>
<td><p><a href="../Page/œ.md" title="wikilink">字母oe的连写符号</a>[6]</p></td>
</tr>
<tr class="even">
<td><p>Scaron</p></td>
<td><p>Š</p></td>
<td><p>U+0160 (352)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOlat2</p></td>
<td><p><a href="../Page/Š.md" title="wikilink">带扬抑符的字母S</a></p></td>
</tr>
<tr class="odd">
<td><p>scaron</p></td>
<td><p>š</p></td>
<td><p>U+0161 (353)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOlat2</p></td>
<td><p><a href="../Page/š.md" title="wikilink">带扬抑符的字母s</a></p></td>
</tr>
<tr class="even">
<td><p>Yuml</p></td>
<td><p>Ÿ</p></td>
<td><p>U+0178 (376)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOlat2</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Ÿ" title="wikilink">带分音符的字母Y</a></p></td>
</tr>
<tr class="odd">
<td><p>fnof</p></td>
<td><p>ƒ</p></td>
<td><p>U+0192 (402)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/ƒ" title="wikilink">字母f底部带一个钩子</a> (用于表示数学函数符号或匈牙利货币<a href="https://zh.wikipedia.org/wiki/福林" title="wikilink">福林</a>)</p></td>
</tr>
<tr class="even">
<td><p>circ</p></td>
<td><p>ˆ</p></td>
<td><p>U+02C6 (710)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/抑扬符" title="wikilink">抑扬符</a></p></td>
</tr>
<tr class="odd">
<td><p>tilde</p></td>
<td><p>˜</p></td>
<td><p>U+02DC (732)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOdia</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/颚音符" title="wikilink">颚音符</a></p></td>
</tr>
<tr class="even">
<td><p>Alpha</p></td>
<td><p>Α</p></td>
<td><p>U+0391 (913)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Α" title="wikilink">Α</a></p></td>
</tr>
<tr class="odd">
<td><p>Beta</p></td>
<td><p>Β</p></td>
<td><p>U+0392 (914)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="../Page/Β.md" title="wikilink">Β</a></p></td>
</tr>
<tr class="even">
<td><p>Gamma</p></td>
<td><p>Γ</p></td>
<td><p>U+0393 (915)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Γ" title="wikilink">Γ</a></p></td>
</tr>
<tr class="odd">
<td><p>Delta</p></td>
<td><p>Δ</p></td>
<td><p>U+0394 (916)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/Δ.md" title="wikilink">Δ</a></p></td>
</tr>
<tr class="even">
<td><p>Epsilon</p></td>
<td><p>Ε</p></td>
<td><p>U+0395 (917)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="../Page/Ε.md" title="wikilink">Ε</a></p></td>
</tr>
<tr class="odd">
<td><p>Zeta</p></td>
<td><p>Ζ</p></td>
<td><p>U+0396 (918)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Ζ" title="wikilink">Ζ</a></p></td>
</tr>
<tr class="even">
<td><p>Eta</p></td>
<td><p>Η</p></td>
<td><p>U+0397 (919)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Η" title="wikilink">Η</a></p></td>
</tr>
<tr class="odd">
<td><p>Theta</p></td>
<td><p>Θ</p></td>
<td><p>U+0398 (920)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Θ" title="wikilink">Θ</a></p></td>
</tr>
<tr class="even">
<td><p>Iota</p></td>
<td><p>Ι</p></td>
<td><p>U+0399 (921)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Ι" title="wikilink">Ι</a></p></td>
</tr>
<tr class="odd">
<td><p>Kappa</p></td>
<td><p>Κ</p></td>
<td><p>U+039A (922)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Κ" title="wikilink">Κ</a></p></td>
</tr>
<tr class="even">
<td><p>Lambda</p></td>
<td><p>Λ</p></td>
<td><p>U+039B (923)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Λ" title="wikilink">Λ</a></p></td>
</tr>
<tr class="odd">
<td><p>Mu</p></td>
<td><p>Μ</p></td>
<td><p>U+039C (924)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Μ" title="wikilink">Μ</a></p></td>
</tr>
<tr class="even">
<td><p>Nu</p></td>
<td><p>Ν</p></td>
<td><p>U+039D (925)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Ν" title="wikilink">Ν</a></p></td>
</tr>
<tr class="odd">
<td><p>Xi</p></td>
<td><p>Ξ</p></td>
<td><p>U+039E (926)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Ξ" title="wikilink">Ξ</a></p></td>
</tr>
<tr class="even">
<td><p>Omicron</p></td>
<td><p>Ο</p></td>
<td><p>U+039F (927)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Ο" title="wikilink">Ο</a></p></td>
</tr>
<tr class="odd">
<td><p>Pi</p></td>
<td><p>Π</p></td>
<td><p>U+03A0 (928)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Π" title="wikilink">Π</a></p></td>
</tr>
<tr class="even">
<td><p>Rho</p></td>
<td><p>Ρ</p></td>
<td><p>U+03A1 (929)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Ρ" title="wikilink">Ρ</a></p></td>
</tr>
<tr class="odd">
<td><p>Sigma</p></td>
<td><p>Σ</p></td>
<td><p>U+03A3 (931)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Σ" title="wikilink">Σ</a></p></td>
</tr>
<tr class="even">
<td><p>Tau</p></td>
<td><p>Τ</p></td>
<td><p>U+03A4 (932)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="../Page/Τ.md" title="wikilink">Τ</a></p></td>
</tr>
<tr class="odd">
<td><p>Upsilon</p></td>
<td><p>Υ</p></td>
<td><p>U+03A5 (933)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Υ" title="wikilink">Υ</a></p></td>
</tr>
<tr class="even">
<td><p>Phi</p></td>
<td><p>Φ</p></td>
<td><p>U+03A6 (934)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/Φ.md" title="wikilink">Φ</a></p></td>
</tr>
<tr class="odd">
<td><p>Chi</p></td>
<td><p>Χ</p></td>
<td><p>U+03A7 (935)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Χ" title="wikilink">Χ</a></p></td>
</tr>
<tr class="even">
<td><p>Psi</p></td>
<td><p>Ψ</p></td>
<td><p>U+03A8 (936)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/Ψ" title="wikilink">Ψ</a></p></td>
</tr>
<tr class="odd">
<td><p>Omega</p></td>
<td><p>Ω</p></td>
<td><p>U+03A9 (937)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/Ω.md" title="wikilink">Ω</a></p></td>
</tr>
<tr class="even">
<td><p>alpha</p></td>
<td><p>α</p></td>
<td><p>U+03B1 (945)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/α" title="wikilink">α</a></p></td>
</tr>
<tr class="odd">
<td><p>beta</p></td>
<td><p>β</p></td>
<td><p>U+03B2 (946)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/β.md" title="wikilink">β</a></p></td>
</tr>
<tr class="even">
<td><p>gamma</p></td>
<td><p>γ</p></td>
<td><p>U+03B3 (947)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/γ" title="wikilink">γ</a></p></td>
</tr>
<tr class="odd">
<td><p>delta</p></td>
<td><p>δ</p></td>
<td><p>U+03B4 (948)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/δ.md" title="wikilink">δ</a></p></td>
</tr>
<tr class="even">
<td><p>epsilon</p></td>
<td><p>ε</p></td>
<td><p>U+03B5 (949)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/ε.md" title="wikilink">ε</a></p></td>
</tr>
<tr class="odd">
<td><p>zeta</p></td>
<td><p>ζ</p></td>
<td><p>U+03B6 (950)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ζ" title="wikilink">ζ</a></p></td>
</tr>
<tr class="even">
<td><p>eta</p></td>
<td><p>η</p></td>
<td><p>U+03B7 (951)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/η" title="wikilink">η</a></p></td>
</tr>
<tr class="odd">
<td><p>theta</p></td>
<td><p>θ</p></td>
<td><p>U+03B8 (952)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/θ" title="wikilink">θ</a></p></td>
</tr>
<tr class="even">
<td><p>iota</p></td>
<td><p>ι</p></td>
<td><p>U+03B9 (953)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ι" title="wikilink">ι</a></p></td>
</tr>
<tr class="odd">
<td><p>kappa</p></td>
<td><p>κ</p></td>
<td><p>U+03BA (954)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/κ" title="wikilink">κ</a></p></td>
</tr>
<tr class="even">
<td><p>lambda</p></td>
<td><p>λ</p></td>
<td><p>U+03BB (955)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/λ" title="wikilink">λ</a></p></td>
</tr>
<tr class="odd">
<td><p>mu</p></td>
<td><p>μ</p></td>
<td><p>U+03BC (956)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/μ" title="wikilink">μ</a></p></td>
</tr>
<tr class="even">
<td><p>nu</p></td>
<td><p>ν</p></td>
<td><p>U+03BD (957)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ν" title="wikilink">ν</a></p></td>
</tr>
<tr class="odd">
<td><p>xi</p></td>
<td><p>ξ</p></td>
<td><p>U+03BE (958)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ξ" title="wikilink">ξ</a></p></td>
</tr>
<tr class="even">
<td><p>omicron</p></td>
<td><p>ο</p></td>
<td><p>U+03BF (959)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p><em>NEW</em></p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ο" title="wikilink">ο</a></p></td>
</tr>
<tr class="odd">
<td><p>pi</p></td>
<td><p>π</p></td>
<td><p>U+03C0 (960)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/π" title="wikilink">π</a></p></td>
</tr>
<tr class="even">
<td><p>rho</p></td>
<td><p>ρ</p></td>
<td><p>U+03C1 (961)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ρ" title="wikilink">ρ</a></p></td>
</tr>
<tr class="odd">
<td><p>sigmaf</p></td>
<td><p>ς</p></td>
<td><p>U+03C2 (962)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ς" title="wikilink">ς</a>, 用于词末尾，又称"final sigma"</p></td>
</tr>
<tr class="even">
<td><p>sigma</p></td>
<td><p>σ</p></td>
<td><p>U+03C3 (963)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/σ" title="wikilink">σ</a></p></td>
</tr>
<tr class="odd">
<td><p>tau</p></td>
<td><p>τ</p></td>
<td><p>U+03C4 (964)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/τ.md" title="wikilink">τ</a></p></td>
</tr>
<tr class="even">
<td><p>upsilon</p></td>
<td><p>υ</p></td>
<td><p>U+03C5 (965)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/υ" title="wikilink">υ</a></p></td>
</tr>
<tr class="odd">
<td><p>phi</p></td>
<td><p>φ</p></td>
<td><p>U+03C6 (966)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/φ.md" title="wikilink">φ</a></p></td>
</tr>
<tr class="even">
<td><p>chi</p></td>
<td><p>χ</p></td>
<td><p>U+03C7 (967)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/χ" title="wikilink">χ</a></p></td>
</tr>
<tr class="odd">
<td><p>psi</p></td>
<td><p>ψ</p></td>
<td><p>U+03C8 (968)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ψ" title="wikilink">ψ</a></p></td>
</tr>
<tr class="even">
<td><p>omega</p></td>
<td><p>ω</p></td>
<td><p>U+03C9 (969)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="../Page/ω.md" title="wikilink">ω</a></p></td>
</tr>
<tr class="odd">
<td><p>thetasym</p></td>
<td></td>
<td><p>U+03D1 (977)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p><em>NEW</em></p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ϑ" title="wikilink">ϑ</a>，手写体</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>U+03D2 (978)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p><em>NEW</em></p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ϒ" title="wikilink">ϒ</a>，笔画卷曲的<a href="../Page/字形.md" title="wikilink">字形</a></p></td>
</tr>
<tr class="odd">
<td><p>piv</p></td>
<td></td>
<td><p>U+03D6 (982)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOgrk3</p></td>
<td><p>希腊字母<a href="https://zh.wikipedia.org/wiki/ϖ" title="wikilink">ϖ</a>，古老的<a href="../Page/字形.md" title="wikilink">字形</a></p></td>
</tr>
<tr class="even">
<td><p>ensp</p></td>
<td><p><span style="background-color:blue;white-space:pre"></span></p></td>
<td><p>U+2002 (8194)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p>字母n宽度的空间[7]</p></td>
</tr>
<tr class="odd">
<td><p>emsp</p></td>
<td><p><span style="background-color:blue;white-space:pre"></span></p></td>
<td><p>U+2003 (8195)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p>字母m宽度的空间[8]</p></td>
</tr>
<tr class="even">
<td><p>thinsp</p></td>
<td><p><span style="background-color:blue;white-space:pre"></span></p></td>
<td><p>U+2009 (8201)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p>细空间[9]</p></td>
</tr>
<tr class="odd">
<td><p>zwnj</p></td>
<td><p> </p></td>
<td><p>U+200C (8204)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>NEW RFC 2070</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/零宽不连字" title="wikilink">零宽不连字</a></p></td>
</tr>
<tr class="even">
<td><p>zwj</p></td>
<td><p> </p></td>
<td><p>U+200D (8205)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>NEW RFC 2070</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/零宽连字" title="wikilink">零宽连字</a></p></td>
</tr>
<tr class="odd">
<td><p>lrm</p></td>
<td><p> </p></td>
<td><p>U+200E (8206)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>NEW RFC 2070</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/左至右符號" title="wikilink">左到右标志</a></p></td>
</tr>
<tr class="even">
<td><p>rlm</p></td>
<td><p> </p></td>
<td><p>U+200F (8207)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>NEW RFC 2070</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/右至左符號" title="wikilink">右到左标志</a></p></td>
</tr>
<tr class="odd">
<td><p>ndash</p></td>
<td><p>–</p></td>
<td><p>U+2013 (8211)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/En_dash" title="wikilink">n宽度连字号</a></p></td>
</tr>
<tr class="even">
<td><p>mdash</p></td>
<td><p>—</p></td>
<td><p>U+2014 (8212)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Em_dash" title="wikilink">m宽度连字号</a></p></td>
</tr>
<tr class="odd">
<td><p>lsquo</p></td>
<td><p>-{‘}-</p></td>
<td><p>U+2018 (8216)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p>左单<a href="https://zh.wikipedia.org/wiki/引号" title="wikilink">引号</a></p></td>
</tr>
<tr class="even">
<td><p>rsquo</p></td>
<td><p>-{’}-</p></td>
<td><p>U+2019 (8217)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p>右单<a href="https://zh.wikipedia.org/wiki/引号" title="wikilink">引号</a></p></td>
</tr>
<tr class="odd">
<td><p>sbquo</p></td>
<td><p>‚</p></td>
<td><p>U+201A (8218)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>NEW</em></p></td>
<td><p>下位单<a href="https://zh.wikipedia.org/wiki/引号" title="wikilink">引号</a></p></td>
</tr>
<tr class="even">
<td><p>ldquo</p></td>
<td><p>-{“}-</p></td>
<td><p>U+201C (8220)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p>左双<a href="https://zh.wikipedia.org/wiki/引号" title="wikilink">引号</a></p></td>
</tr>
<tr class="odd">
<td><p>rdquo</p></td>
<td><p>-{”}-</p></td>
<td><p>U+201D (8221)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOnum</p></td>
<td><p>右双<a href="https://zh.wikipedia.org/wiki/引号" title="wikilink">引号</a></p></td>
</tr>
<tr class="even">
<td><p>bdquo</p></td>
<td><p>„</p></td>
<td><p>U+201E (8222)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>NEW</em></p></td>
<td><p>下位双<a href="https://zh.wikipedia.org/wiki/引号" title="wikilink">引号</a></p></td>
</tr>
<tr class="odd">
<td><p>dagger</p></td>
<td><p>†</p></td>
<td><p>U+2020 (8224)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/剑号" title="wikilink">剑号</a></p></td>
</tr>
<tr class="even">
<td><p>Dagger</p></td>
<td><p>‡</p></td>
<td><p>U+2021 (8225)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/双剑号" title="wikilink">双剑号</a></p></td>
</tr>
<tr class="odd">
<td><p>bull</p></td>
<td><p>•</p></td>
<td><p>U+2022 (8226)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/项目符号" title="wikilink">项目符号</a> （粗黑点）</p></td>
</tr>
<tr class="even">
<td><p>hellip</p></td>
<td><p>…</p></td>
<td><p>U+2026 (8230)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="../Page/省略号.md" title="wikilink">省略号</a></p></td>
</tr>
<tr class="odd">
<td><p>permil</p></td>
<td><p>‰</p></td>
<td><p>U+2030 (8240)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/千分号" title="wikilink">千分号</a></p></td>
</tr>
<tr class="even">
<td><p>prime</p></td>
<td><p>′</p></td>
<td><p>U+2032 (8242)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="../Page/角分符号.md" title="wikilink">角分符号</a></p></td>
</tr>
<tr class="odd">
<td><p>Prime</p></td>
<td><p>″</p></td>
<td><p>U+2033 (8243)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/角秒符号" title="wikilink">角秒符号</a></p></td>
</tr>
<tr class="even">
<td><p>lsaquo</p></td>
<td><p>‹</p></td>
<td><p>U+2039 (8249)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>ISO proposed</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/角形引号" title="wikilink">角形左单引号</a>[10]</p></td>
</tr>
<tr class="odd">
<td><p>rsaquo</p></td>
<td><p>›</p></td>
<td><p>U+203A (8250)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>ISO proposed</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/角形引号" title="wikilink">角形右单引号</a>[11]</p></td>
</tr>
<tr class="even">
<td><p>oline</p></td>
<td><p>‾</p></td>
<td><p>U+203E (8254)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p><em>NEW</em></p></td>
<td><p>上划线</p></td>
</tr>
<tr class="odd">
<td><p>frasl</p></td>
<td><p>⁄</p></td>
<td><p>U+2044 (8260)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p><em>NEW</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/斜线" title="wikilink">分数斜线</a></p></td>
</tr>
<tr class="even">
<td><p>euro</p></td>
<td><p>€</p></td>
<td><p>U+20AC (8364)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLspecial</p></td>
<td><p><em>NEW</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/€" title="wikilink">欧元符号</a></p></td>
</tr>
<tr class="odd">
<td><p>image</p></td>
<td></td>
<td><p>U+2111 (8465)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamso</p></td>
<td><p>黑体大写字母I</p></td>
</tr>
<tr class="even">
<td><p>weierp</p></td>
<td></td>
<td><p>U+2118 (8472)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamso</p></td>
<td><p>手写体大写字母P，数学上表示<a href="https://zh.wikipedia.org/wiki/幂集" title="wikilink">幂集</a></p></td>
</tr>
<tr class="odd">
<td><p>real</p></td>
<td></td>
<td><p>U+211C (8476)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamso</p></td>
<td><p>黑体大写字母R，数学上表示实部</p></td>
</tr>
<tr class="even">
<td><p>trade</p></td>
<td><p>™</p></td>
<td><p>U+2122 (8482)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOnum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/商标符号" title="wikilink">商标符号</a></p></td>
</tr>
<tr class="odd">
<td><p>alefsym</p></td>
<td></td>
<td><p>U+2135 (8501)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p><em>NEW</em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/阿列夫数" title="wikilink">阿列夫符号</a>[12]</p></td>
</tr>
<tr class="even">
<td><p>larr</p></td>
<td><p>←</p></td>
<td><p>U+2190 (8592)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOnum</p></td>
<td><p>向左箭头</p></td>
</tr>
<tr class="odd">
<td><p>uarr</p></td>
<td><p>↑</p></td>
<td><p>U+2191 (8593)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOnum</p></td>
<td><p>向上箭头</p></td>
</tr>
<tr class="even">
<td><p>rarr</p></td>
<td><p>→</p></td>
<td><p>U+2192 (8594)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOnum</p></td>
<td><p>向右箭头</p></td>
</tr>
<tr class="odd">
<td><p>darr</p></td>
<td><p>↓</p></td>
<td><p>U+2193 (8595)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOnum</p></td>
<td><p>向下箭头</p></td>
</tr>
<tr class="even">
<td><p>harr</p></td>
<td><p>↔︎</p></td>
<td><p>U+2194 (8596)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsa</p></td>
<td><p>向左向右箭头</p></td>
</tr>
<tr class="odd">
<td><p>crarr</p></td>
<td></td>
<td><p>U+21B5 (8629)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p><em>NEW</em></p></td>
<td><p>向下再向左箭头 <em>(= 回车符)</em></p></td>
</tr>
<tr class="even">
<td><p>lArr</p></td>
<td></td>
<td><p>U+21D0 (8656)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>向左双线箭头[13]</p></td>
</tr>
<tr class="odd">
<td><p>uArr</p></td>
<td></td>
<td><p>U+21D1 (8657)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsa</p></td>
<td><p>向上双线箭头</p></td>
</tr>
<tr class="even">
<td><p>rArr</p></td>
<td><p>⇒</p></td>
<td><p>U+21D2 (8658)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOnum</p></td>
<td><p>向右双线箭头[14]</p></td>
</tr>
<tr class="odd">
<td><p>dArr</p></td>
<td></td>
<td><p>U+21D3 (8659)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsa</p></td>
<td><p>向下双线箭头</p></td>
</tr>
<tr class="even">
<td><p>hArr</p></td>
<td><p>⇔</p></td>
<td><p>U+21D4 (8660)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsa</p></td>
<td><p>向左向右双线箭头</p></td>
</tr>
<tr class="odd">
<td><p>forall</p></td>
<td><p>∀</p></td>
<td><p>U+2200 (8704)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/翻转的a" title="wikilink">全称量词</a></p></td>
</tr>
<tr class="even">
<td><p>part</p></td>
<td><p>∂</p></td>
<td><p>U+2202 (8706)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/偏微分" title="wikilink">偏微分符号</a></p></td>
</tr>
<tr class="odd">
<td><p>exist</p></td>
<td><p>∃</p></td>
<td><p>U+2203 (8707)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/存在量词" title="wikilink">存在量词</a></p></td>
</tr>
<tr class="even">
<td><p>empty</p></td>
<td></td>
<td><p>U+2205 (8709)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamso</p></td>
<td><p><a href="../Page/空集.md" title="wikilink">空集</a></p></td>
</tr>
<tr class="odd">
<td><p>nabla</p></td>
<td><p>∇</p></td>
<td><p>U+2207 (8711)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/劈形算子" title="wikilink">劈形算子</a>(倒三角算子)</p></td>
</tr>
<tr class="even">
<td><p>isin</p></td>
<td><p>∈</p></td>
<td><p>U+2208 (8712)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>属于，是...的元素</p></td>
</tr>
<tr class="odd">
<td><p>notin</p></td>
<td></td>
<td><p>U+2209 (8713)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>不属于，不是...的元素</p></td>
</tr>
<tr class="even">
<td><p>ni</p></td>
<td><p>∋</p></td>
<td><p>U+220B (8715)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>包含...作为元素</p></td>
</tr>
<tr class="odd">
<td><p>prod</p></td>
<td><p>∏</p></td>
<td><p>U+220F (8719)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsb</p></td>
<td><p><a href="../Page/乘法.md" title="wikilink">连乘符号</a> [15]</p></td>
</tr>
<tr class="even">
<td><p>sum</p></td>
<td><p>∑</p></td>
<td><p>U+2211 (8721)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsb</p></td>
<td><p><a href="../Page/级数.md" title="wikilink">求和符号</a>[16]</p></td>
</tr>
<tr class="odd">
<td><p>minus</p></td>
<td><p>−</p></td>
<td><p>U+2212 (8722)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>减号</p></td>
</tr>
<tr class="even">
<td><p>lowast</p></td>
<td></td>
<td><p>U+2217 (8727)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>星算符</p></td>
</tr>
<tr class="odd">
<td><p>radic</p></td>
<td><p>√</p></td>
<td><p>U+221A (8730)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/方根#符号" title="wikilink">平方根符号</a></p></td>
</tr>
<tr class="even">
<td><p>prop</p></td>
<td><p>∝</p></td>
<td><p>U+221D (8733)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>正比于</p></td>
</tr>
<tr class="odd">
<td><p>infin</p></td>
<td><p>∞</p></td>
<td><p>U+221E (8734)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="../Page/无穷.md" title="wikilink">无穷符号</a></p></td>
</tr>
<tr class="even">
<td><p>ang</p></td>
<td><p>∠</p></td>
<td><p>U+2220 (8736)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamso</p></td>
<td><p>角符号</p></td>
</tr>
<tr class="odd">
<td><p>and</p></td>
<td><p>∧</p></td>
<td><p>U+2227 (8743)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/逻辑合取" title="wikilink">逻辑合取符号</a> <em>(= wedge)</em></p></td>
</tr>
<tr class="even">
<td><p>or</p></td>
<td><p>∨</p></td>
<td><p>U+2228 (8744)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/逻辑析取" title="wikilink">逻辑析取符号</a> <em>(= vee)</em></p></td>
</tr>
<tr class="odd">
<td><p>cap</p></td>
<td><p>∩</p></td>
<td><p>U+2229 (8745)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="../Page/交集.md" title="wikilink">集合的交符号</a> <em>(= cap)</em></p></td>
</tr>
<tr class="even">
<td><p>cup</p></td>
<td><p>∪</p></td>
<td><p>U+222A (8746)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="../Page/并集.md" title="wikilink">集合的并符号</a> (<em>= cup)</em></p></td>
</tr>
<tr class="odd">
<td><p>int</p></td>
<td><p>∫</p></td>
<td><p>U+222B (8747)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="../Page/积分.md" title="wikilink">积分符号</a></p></td>
</tr>
<tr class="even">
<td><p>there4</p></td>
<td><p>∴</p></td>
<td><p>U+2234 (8756)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>所以符号</p></td>
</tr>
<tr class="odd">
<td><p>sim</p></td>
<td><p>∼</p></td>
<td><p>U+223C (8764)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>tilde算符 (等价于，渐进相等，近似等于，服从...概率分布))''[17]</p></td>
</tr>
<tr class="even">
<td><p>cong</p></td>
<td></td>
<td><p>U+2245 (8773)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>全等符号</p></td>
</tr>
<tr class="odd">
<td><p>asymp</p></td>
<td><p>≈</p></td>
<td><p>U+2248 (8776)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsr</p></td>
<td><p>渐近相等</p></td>
</tr>
<tr class="even">
<td><p>ne</p></td>
<td><p>≠</p></td>
<td><p>U+2260 (8800)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/不等式" title="wikilink">不等</a></p></td>
</tr>
<tr class="odd">
<td><p>equiv</p></td>
<td><p>≡</p></td>
<td><p>U+2261 (8801)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>等价</p></td>
</tr>
<tr class="even">
<td><p>le</p></td>
<td><p>≤</p></td>
<td><p>U+2264 (8804)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>小于等于</p></td>
</tr>
<tr class="odd">
<td><p>ge</p></td>
<td><p>≥</p></td>
<td><p>U+2265 (8805)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>大于等于</p></td>
</tr>
<tr class="even">
<td><p>sub</p></td>
<td><p>⊂</p></td>
<td><p>U+2282 (8834)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>是...的子集</p></td>
</tr>
<tr class="odd">
<td><p>sup</p></td>
<td><p>⊃</p></td>
<td><p>U+2283 (8835)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>是...的超集[18]</p></td>
</tr>
<tr class="even">
<td><p>nsub</p></td>
<td></td>
<td><p>U+2284 (8836)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsn</p></td>
<td><p>不是...的子集</p></td>
</tr>
<tr class="odd">
<td><p>sube</p></td>
<td><p>⊆</p></td>
<td><p>U+2286 (8838)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>是...的子集或相等</p></td>
</tr>
<tr class="even">
<td><p>supe</p></td>
<td><p>⊇</p></td>
<td><p>U+2287 (8839)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>是...的超集或相等</p></td>
</tr>
<tr class="odd">
<td><p>oplus</p></td>
<td><p>⊕</p></td>
<td><p>U+2295 (8853)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsb</p></td>
<td><p>圈加号 <em>(= 直和)</em></p></td>
</tr>
<tr class="even">
<td><p>otimes</p></td>
<td></td>
<td><p>U+2297 (8855)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsb</p></td>
<td><p>圈乘号 <em>(= 向量积符号)</em></p></td>
</tr>
<tr class="odd">
<td><p>perp</p></td>
<td><p>⊥</p></td>
<td><p>U+22A5 (8869)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>正交符号 = <a href="../Page/垂直.md" title="wikilink">垂直</a>)''[19]</p></td>
</tr>
<tr class="even">
<td><p>sdot</p></td>
<td></td>
<td><p>U+22C5 (8901)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsb</p></td>
<td><p>点算符[20]</p></td>
</tr>
<tr class="odd">
<td><p>lceil</p></td>
<td></td>
<td><p>U+2308 (8968)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsc</p></td>
<td><p>左天花板符号</p></td>
</tr>
<tr class="even">
<td><p>rceil</p></td>
<td></td>
<td><p>U+2309 (8969)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsc</p></td>
<td><p>右天花板符号</p></td>
</tr>
<tr class="odd">
<td><p>lfloor</p></td>
<td></td>
<td><p>U+230A (8970)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsc</p></td>
<td><p>左地板符号</p></td>
</tr>
<tr class="even">
<td><p>rfloor</p></td>
<td></td>
<td><p>U+230B (8971)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOamsc</p></td>
<td><p>右地板符号</p></td>
</tr>
<tr class="odd">
<td><p>lang</p></td>
<td></td>
<td><p>U+2329 (9001)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>角形左括号[21]</p></td>
</tr>
<tr class="even">
<td><p>rang</p></td>
<td></td>
<td><p>U+232A (9002)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOtech</p></td>
<td><p>角形右括号[22]</p></td>
</tr>
<tr class="odd">
<td><p>loz</p></td>
<td><p>◊</p></td>
<td><p>U+25CA (9674)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/菱形符号" title="wikilink">菱形符号</a>（钻石符号）</p></td>
</tr>
<tr class="even">
<td><p>spades</p></td>
<td><p>♠</p></td>
<td><p>U+2660 (9824)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/扑克牌" title="wikilink">黑桃符号</a>[23]</p></td>
</tr>
<tr class="odd">
<td><p>clubs</p></td>
<td><p>♣</p></td>
<td><p>U+2663 (9827)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/扑克牌" title="wikilink">梅花符号</a> <em>(= shamrock)</em>[24]</p></td>
</tr>
<tr class="even">
<td><p>hearts</p></td>
<td><p>♥</p></td>
<td><p>U+2665 (9829)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/扑克牌" title="wikilink">红桃符号</a> <em>(= valentine)</em>[25]</p></td>
</tr>
<tr class="odd">
<td><p>diams</p></td>
<td><p>♦</p></td>
<td><p>U+2666 (9830)</p></td>
<td><p>HTML 4.0</p></td>
<td><p>HTMLsymbol</p></td>
<td><p>ISOpub</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/扑克牌" title="wikilink">扑克牌方块符号</a>[26]</p></td>
</tr>
</tbody>
</table>

Notes:

## XHTML中的特殊字符的实体引用

在[XHTML](../Page/XHTML.md "wikilink")
[DTD中](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")，明确声明了253个字符实体(包括[5个XML
1.0的预定义实体](https://zh.wikipedia.org/wiki/#XML中的预定义实体 "wikilink")).
除了`'`实体这个例外，其它252个字符实体与[HTML中的252个字符实体引用一致](https://zh.wikipedia.org/wiki/#HTML中的字符实体引用 "wikilink").
每个XHTML文件实例还可以定义任意数目的字符实体。但是XHTML字符实体的可用性受到该文件的处理方式的影响:

  - 如果该文件由HTML处理器来处理, 那么只有252个 HTML字符实体可用。`'`或用户定义的实体引用可能不被支持，产生不可预测的效果.
  - 如果该文件由XML分析器来处理，只有5个XML预定义的字符实体能安全使用, 虽然定义在内部DTD子集中的其它实体也许可用。
  - 如果XML分析器能读外部实体，那么除了5个XML预定义的字符实体能安全使用，只要XML分析器能读取XHTML
    DTD，其它248个HTML字符实体也可以使用。声明在内部DTD子集中的实体也可以使用.

由于`'`不能在HTML处理器中一致的安全使用，实际上仅有`"`, `&`, `<`, and `>`4个字符实体可以在所有处理环境下通用。

## 参见

  - [HTML字符编码](https://zh.wikipedia.org/wiki/HTML字符编码 "wikilink")
  - [字符值引用](https://zh.wikipedia.org/wiki/字符值引用 "wikilink")
  - [SGML实体](../Page/SGML实体.md "wikilink")
  - [Unicode中的拉丁字母](../Page/Unicode中的拉丁字母.md "wikilink")

## 参考文献

  - [Unicode Consortium](http://www.unicode.org/). See also: [Unicode
    Consortium](https://zh.wikipedia.org/wiki/Unicode_Consortium "wikilink")
      - [UnicodeData.txt from the Unicode
        Consortium](http://www.unicode.org/Public/UNIDATA/UnicodeData.txt)
  - [World Wide Web Consortium](http://www.w3.org/). See also: [World
    Wide Web
    Consortium](https://zh.wikipedia.org/wiki/World_Wide_Web_Consortium "wikilink")
      - [XML 1.0 spec](http://www.w3.org/TR/REC-xml/)
      - [HTML 2.0
        spec](http://www.w3.org/MarkUp/html-spec/html-spec_toc.html)
      - [HTML 3.2 spec](http://www.w3.org/TR/REC-html32)
      - [HTML 4.0 spec](http://www.w3.org/TR/1998/REC-html40-19980424/)
      - [HTML 4.01 spec](http://www.w3.org/TR/REC-html40/)
      - [HTML5 Working Draft](http://www.w3.org/TR/html5/)
      - [XHTML 1.0 spec](http://www.w3.org/TR/xhtml1/)
      - [XML Entity Definitions for
        Characters](http://www.w3.org/TR/xml-entity-names/)
  - The normative reference to RFC 2070 (still found in DTDs defining
    the character entities for HTML or XHTML) is historic; this RFC
    (along with other RFC's related to different part of the HTML
    specification) has been deprecated in favor of the newer
    informational RFC 2854 which defines the "text/html" MIME type and
    references directly the W3C specifications for the actual HTML
    content.
  - [Numerical Reference of Unicode code
    points](https://zh.wikipedia.org/wiki/b:Unicode/Character_reference/0000-0FFF "wikilink")
    at Wikibooks

## 外部链接

  - [Character entity references in
    HTML 4](http://www.w3.org/TR/html4/sgml/entities.html) at the W3C
  - [Multilanguage special character entity
    list](http://www.seomister.com/characters) - List of special
    characters, entities and their names.
  - [HTML entities quick reference
    table](https://web.archive.org/web/20120328093353/http://www.html-entities.com/)

[ko:문자 참조](https://zh.wikipedia.org/wiki/ko:문자_참조 "wikilink") [nl:Lijst
van
HTML-entiteiten](https://zh.wikipedia.org/wiki/nl:Lijst_van_HTML-entiteiten "wikilink")

[Category:XHTML](https://zh.wikipedia.org/wiki/Category:XHTML "wikilink")
[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")
[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")
[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink")

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