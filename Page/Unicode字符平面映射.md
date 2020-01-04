> 本文内容由[Unicode字符平面映射](https://zh.wikipedia.org/wiki/Unicode字符平面映射)转换而来。


目前的[Unicode字元分為](https://zh.wikipedia.org/wiki/Unicode "wikilink")17組編排，每組稱為**平面**（Plane），而每平面擁有65536（即2<sup>16</sup>）個代碼點。然而目前只用了少數平面。

<table>
<thead>
<tr class="header">
<th><p>平面</p></th>
<th><p>始末字元值</p></th>
<th><p>中文名稱</p></th>
<th><p>英文名稱</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0號平面</p></td>
<td><p>U+0000 - U+FFFF</p></td>
<td><p><strong>基本多文種平面</strong></p></td>
<td><p>Basic Multilingual Plane，簡稱<strong>BMP</strong></p></td>
</tr>
<tr class="even">
<td><p>1號平面</p></td>
<td><p>U+10000 - U+1FFFF</p></td>
<td><p><strong>多文種補充平面</strong></p></td>
<td><p>Supplementary Multilingual Plane，簡稱<strong>SMP</strong></p></td>
</tr>
<tr class="odd">
<td><p>2號平面</p></td>
<td><p>U+20000 - U+2FFFF</p></td>
<td><p><strong>表意文字補充平面</strong></p></td>
<td><p>Supplementary Ideographic Plane，簡稱<strong>SIP</strong></p></td>
</tr>
<tr class="even">
<td><p>3號平面</p></td>
<td><p>U+30000 - U+3FFFF</p></td>
<td><p><strong>表意文字第三平面</strong>（未正式使用[1]）</p></td>
<td><p>Tertiary Ideographic Plane，簡稱<strong>TIP</strong></p></td>
</tr>
<tr class="odd">
<td><p>4號平面<br />
至<br />
13號平面</p></td>
<td><p>U+40000 - U+DFFFF</p></td>
<td><p>（尚未使用）</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>14號平面</p></td>
<td><p>U+E0000 - U+EFFFF</p></td>
<td><p><strong>特別用途補充平面</strong></p></td>
<td><p>Supplementary Special-purpose Plane，簡稱<strong>SSP</strong></p></td>
</tr>
<tr class="odd">
<td><p>15號平面</p></td>
<td><p>U+F0000 - U+FFFFF</p></td>
<td><p>保留作為<strong>私人使用區（A區）</strong>[2]</p></td>
<td><p>Private Use Area-A，簡稱<strong>PUA-A</strong></p></td>
</tr>
<tr class="even">
<td><p>16號平面</p></td>
<td><p>U+100000 - U+10FFFF</p></td>
<td><p>保留作為<strong>私人使用區（B區）</strong>[3]</p></td>
<td><p>Private Use Area-B，簡稱<strong>PUA-B</strong></p></td>
</tr>
</tbody>
</table>

要有更詳細的描述，請參閱：[基本多文種平面與](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")[補充平面](https://zh.wikipedia.org/wiki/輔助平面 "wikilink")。

## 基本多文种平面

[Roadmap_to_Unicode_BMP.svg](https://zh.wikipedia.org/wiki/File:Roadmap_to_Unicode_BMP.svg "fig:Roadmap_to_Unicode_BMP.svg") **基本多文种平面**（Basic Multilingual Plane, BMP），或称**第0平面**或**0號平面**（Plane 0），是[Unicode中的一个编码区段](https://zh.wikipedia.org/wiki/Unicode "wikilink")。编码从U+0000至U+FFFF。

现版本为修订12.1.0版，2019年5月7日出版。已分配编码区段为：

<table>
<thead>
<tr class="header">
<th><p>编码范围</p></th>
<th><p>中文名称</p></th>
<th><p>英语名称</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0000-007F</p></td>
<td><p>基本<a href="../Page/拉丁字母.md" title="wikilink">拉丁文</a></p></td>
<td><p>Basic Latin</p></td>
</tr>
<tr class="even">
<td><p>0080-00FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/拉丁文-1补充" title="wikilink">拉丁文-1补充</a></p></td>
<td><p>Latin-1 Supplement</p></td>
</tr>
<tr class="odd">
<td><p>0100-017F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/拉丁文扩展-A" title="wikilink">拉丁文扩展-A</a></p></td>
<td><p>Latin Extended-A</p></td>
</tr>
<tr class="even">
<td><p>0180-024F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/拉丁文扩展-B" title="wikilink">拉丁文扩展-B</a></p></td>
<td><p>Latin Extended-B</p></td>
</tr>
<tr class="odd">
<td><p>0250-02AF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/国际音标" title="wikilink">国际音标扩展</a></p></td>
<td><p>IPA Extensions</p></td>
</tr>
<tr class="even">
<td><p>02B0-02FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/占位修饰符号" title="wikilink">占位修饰符号</a></p></td>
<td><p>Spacing Modifier Letters</p></td>
</tr>
<tr class="odd">
<td><p>0300-036F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/结合附加符号" title="wikilink">结合附加符号</a></p></td>
<td><p>Combining Diacritics Marks</p></td>
</tr>
<tr class="even">
<td><p>0370-03FF</p></td>
<td><p><a href="../Page/希腊字母.md" title="wikilink">希腊字母</a>及<a href="../Page/科普特字母.md" title="wikilink">科普特字母</a></p></td>
<td><p>Greek and Coptic</p></td>
</tr>
<tr class="odd">
<td><p>0400-04FF</p></td>
<td><p><a href="../Page/西里尔字母.md" title="wikilink">西里尔字母</a></p></td>
<td><p>Cyrillic</p></td>
</tr>
<tr class="even">
<td><p>0500-052F</p></td>
<td><p>西里尔字母补充</p></td>
<td><p>Cyrillic Supplement</p></td>
</tr>
<tr class="odd">
<td><p>0530-058F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/亚美尼亚字母" title="wikilink">亚美尼亚字母</a></p></td>
<td><p>Armenian</p></td>
</tr>
<tr class="even">
<td><p>0590-05FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/希伯来文" title="wikilink">希伯来文</a></p></td>
<td><p>Hebrew</p></td>
</tr>
<tr class="odd">
<td><p>0600-06FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/阿拉伯文" title="wikilink">阿拉伯文</a></p></td>
<td><p>Arabic</p></td>
</tr>
<tr class="even">
<td><p>0700-074F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/叙利亚文" title="wikilink">叙利亚文</a></p></td>
<td><p>Syriac</p></td>
</tr>
<tr class="odd">
<td><p>0750-077F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/阿拉伯文补充" title="wikilink">阿拉伯文补充</a></p></td>
<td><p>Arabic Supplement</p></td>
</tr>
<tr class="even">
<td><p>0780-07BF</p></td>
<td><p><a href="../Page/它拿字母.md" title="wikilink">它拿字母</a></p></td>
<td><p>Thaana</p></td>
</tr>
<tr class="odd">
<td><p>07C0-07FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/西非書面文字" title="wikilink">西非書面文字</a></p></td>
<td><p>N'Ko</p></td>
</tr>
<tr class="even">
<td><p>0800-083F</p></td>
<td></td>
<td><p>Samaritan</p></td>
</tr>
<tr class="odd">
<td><p>0840-085F</p></td>
<td></td>
<td><p>Mandaic</p></td>
</tr>
<tr class="even">
<td><p>0860-086F</p></td>
<td><p>叙利亚文补充</p></td>
<td><p>Syriac Supplement</p></td>
</tr>
<tr class="odd">
<td><p>08A0-08FF</p></td>
<td><p>阿拉伯文扩展-A</p></td>
<td><p>Arabic Extended-A</p></td>
</tr>
<tr class="even">
<td><p>0900-097F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/天城文" title="wikilink">天城文</a></p></td>
<td><p>Devanagari</p></td>
</tr>
<tr class="odd">
<td><p>0980-09FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/孟加拉文" title="wikilink">孟加拉文</a></p></td>
<td><p>Bengali</p></td>
</tr>
<tr class="even">
<td><p>0A00-0A7F</p></td>
<td><p><a href="../Page/古木基文.md" title="wikilink">古木基文</a></p></td>
<td><p>Gurmukhi</p></td>
</tr>
<tr class="odd">
<td><p>0A80-0AFF</p></td>
<td><p><a href="../Page/古吉拉特文.md" title="wikilink">古吉拉特文</a></p></td>
<td><p>Gujarati</p></td>
</tr>
<tr class="even">
<td><p>0B00-0B7F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/奥里亚文" title="wikilink">奥里亚文</a></p></td>
<td><p>Oriya</p></td>
</tr>
<tr class="odd">
<td><p>0B80-0BFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/泰米尔文" title="wikilink">泰米尔文</a></p></td>
<td><p>Tamil</p></td>
</tr>
<tr class="even">
<td><p>0C00-0C7F</p></td>
<td><p><a href="../Page/泰卢固文.md" title="wikilink">泰卢固文</a></p></td>
<td><p>Telugu</p></td>
</tr>
<tr class="odd">
<td><p>0C80-0CFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/卡纳达文" title="wikilink">卡纳达文</a></p></td>
<td><p>Kannada</p></td>
</tr>
<tr class="even">
<td><p>0D00-0D7F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/马拉雅拉姆文" title="wikilink">马拉雅拉姆文</a></p></td>
<td><p>Malayalam</p></td>
</tr>
<tr class="odd">
<td><p>0D80-0DFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/僧伽罗文" title="wikilink">僧伽罗文</a></p></td>
<td><p>Sinhala</p></td>
</tr>
<tr class="even">
<td><p>0E00-0E7F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/泰文" title="wikilink">泰文</a></p></td>
<td><p>Thai</p></td>
</tr>
<tr class="odd">
<td><p>0E80-0EFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/老挝文" title="wikilink">老挝文</a></p></td>
<td><p>Lao</p></td>
</tr>
<tr class="even">
<td><p>0F00-0FFF</p></td>
<td><p><a href="../Page/藏文.md" title="wikilink">藏文</a></p></td>
<td><p>Tibetan</p></td>
</tr>
<tr class="odd">
<td><p>1000-109F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/缅甸文" title="wikilink">缅甸文</a></p></td>
<td><p>Myanmar</p></td>
</tr>
<tr class="even">
<td><p>10A0-10FF</p></td>
<td><p><a href="../Page/格鲁吉亚字母.md" title="wikilink">格鲁吉亚字母</a></p></td>
<td><p>Georgian</p></td>
</tr>
<tr class="odd">
<td><p>1100-11FF</p></td>
<td><p><a href="../Page/諺文.md" title="wikilink">諺文</a>字母</p></td>
<td><p>Hangul Jamo</p></td>
</tr>
<tr class="even">
<td><p>1200-137F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/吉兹字母" title="wikilink">吉兹字母</a></p></td>
<td><p>Ethiopic</p></td>
</tr>
<tr class="odd">
<td><p>1380-139F</p></td>
<td><p>吉兹字母补充</p></td>
<td><p>Ethiopic Supplement</p></td>
</tr>
<tr class="even">
<td><p>13A0-13FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/切罗基语" title="wikilink">切罗基字母</a></p></td>
<td><p>Cherokee</p></td>
</tr>
<tr class="odd">
<td><p>1400-167F</p></td>
<td><p>统一<a href="../Page/加拿大原住民音節文字.md" title="wikilink">加拿大原住民音節文字</a></p></td>
<td><p>Unified Canadian Aboriginal Syllabics</p></td>
</tr>
<tr class="even">
<td><p>1680-169F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/欧甘字母" title="wikilink">欧甘字母</a></p></td>
<td><p>Ogham</p></td>
</tr>
<tr class="odd">
<td><p>16A0-16FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/卢恩字母" title="wikilink">卢恩字母</a></p></td>
<td><p>Runic</p></td>
</tr>
<tr class="even">
<td><p>1700-171F</p></td>
<td></td>
<td><p>Tagalog</p></td>
</tr>
<tr class="odd">
<td><p>1720-173F</p></td>
<td></td>
<td><p>Hanunóo</p></td>
</tr>
<tr class="even">
<td><p>1740-175F</p></td>
<td><p><a href="../Page/布希德文.md" title="wikilink">布希德文</a></p></td>
<td><p>Buhid</p></td>
</tr>
<tr class="odd">
<td><p>1760-177F</p></td>
<td></td>
<td><p>Tagbanwa</p></td>
</tr>
<tr class="even">
<td><p>1780-17FF</p></td>
<td><p><a href="../Page/高棉文.md" title="wikilink">高棉文</a></p></td>
<td><p>Khmer</p></td>
</tr>
<tr class="odd">
<td><p>1800-18AF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/蒙古字母" title="wikilink">蒙古文</a></p></td>
<td><p>Mongolian</p></td>
</tr>
<tr class="even">
<td><p>18B0-18FF</p></td>
<td><p><a href="../Page/加拿大原住民音節文字.md" title="wikilink">加拿大原住民音節文字</a>扩展</p></td>
<td><p>Unified Canadian Aboriginal Syllabics Extended</p></td>
</tr>
<tr class="odd">
<td><p>1900-194F</p></td>
<td></td>
<td><p>Limbu</p></td>
</tr>
<tr class="even">
<td><p>1950-197F</p></td>
<td><p><a href="../Page/德宏傣文.md" title="wikilink">德宏傣文</a></p></td>
<td><p>Tai Le</p></td>
</tr>
<tr class="odd">
<td><p>1980-19DF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/新傣仂文" title="wikilink">新傣仂文</a></p></td>
<td><p>New Tai Lue</p></td>
</tr>
<tr class="even">
<td><p>19E0-19FF</p></td>
<td><p>高棉文符号</p></td>
<td><p>Khmer Symbols</p></td>
</tr>
<tr class="odd">
<td><p>1A00-1A1F</p></td>
<td></td>
<td><p>Buginese</p></td>
</tr>
<tr class="even">
<td><p>1A20-1AAF</p></td>
<td><p><a href="../Page/老傣文.md" title="wikilink">老傣文</a></p></td>
<td><p>Tai Tham</p></td>
</tr>
<tr class="odd">
<td><p>1AB0-1AFF</p></td>
<td><p>组合<a href="https://zh.wikipedia.org/wiki/变音标记" title="wikilink">变音标记扩展</a></p></td>
<td><p>Combining Diacritical Marks Extended</p></td>
</tr>
<tr class="even">
<td><p>1B00-1B7F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/巴厘字母" title="wikilink">巴厘字母</a></p></td>
<td><p>Balinese</p></td>
</tr>
<tr class="odd">
<td><p>1B80-1BBF</p></td>
<td></td>
<td><p>Sundanese</p></td>
</tr>
<tr class="even">
<td><p>1BC0-1BFF</p></td>
<td></td>
<td><p>Batak</p></td>
</tr>
<tr class="odd">
<td><p>1C00-1C4F</p></td>
<td></td>
<td><p>Lepcha</p></td>
</tr>
<tr class="even">
<td><p>1C50-1C7F</p></td>
<td></td>
<td><p>Ol Chiki</p></td>
</tr>
<tr class="odd">
<td><p>1C80-1C8F</p></td>
<td><p>西里尔字母扩充-C</p></td>
<td><p>Cyrillic Extended-C</p></td>
</tr>
<tr class="even">
<td><p>1C90-1CBF</p></td>
<td><p>格鲁吉亚字母扩展</p></td>
<td><p>Georgian Extended</p></td>
</tr>
<tr class="odd">
<td><p>1CC0-1CCF</p></td>
<td><p>巽他字母补充</p></td>
<td><p>Sudanese Supplement</p></td>
</tr>
<tr class="even">
<td><p>1CD0-1CFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/梵文" title="wikilink">梵文</a><a href="../Page/吠陀.md" title="wikilink">吠陀</a>扩展</p></td>
<td><p>Vedic Extensions</p></td>
</tr>
<tr class="odd">
<td><p>1D00-1D7F</p></td>
<td><p>音标扩展</p></td>
<td><p>Phonetic Extensions</p></td>
</tr>
<tr class="even">
<td><p>1D80-1DBF</p></td>
<td><p>音标扩展补充</p></td>
<td><p>Phonetic Extensions Supplement</p></td>
</tr>
<tr class="odd">
<td><p>1DC0-1DFF</p></td>
<td><p>结合附加符号补充</p></td>
<td><p>Combining Diacritics Marks Supplement</p></td>
</tr>
<tr class="even">
<td><p>1E00-1EFF</p></td>
<td><p>拉丁文扩展附加</p></td>
<td><p>Latin Extended Additional</p></td>
</tr>
<tr class="odd">
<td><p>1F00-1FFF</p></td>
<td><p>希腊文扩展</p></td>
<td><p>Greek Extended</p></td>
</tr>
<tr class="even">
<td><p>2000-206F</p></td>
<td><p>常用标点</p></td>
<td><p>General Punctuation</p></td>
</tr>
<tr class="odd">
<td><p>2070-209F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/上标" title="wikilink">上标及</a><a href="https://zh.wikipedia.org/wiki/下标" title="wikilink">下标</a></p></td>
<td><p>Superscripts and Subscripts</p></td>
</tr>
<tr class="even">
<td><p>20A0-20CF</p></td>
<td><p><a href="../Page/货币符号.md" title="wikilink">货币符号</a></p></td>
<td><p>Currency Symbols</p></td>
</tr>
<tr class="odd">
<td><p>20D0-20FF</p></td>
<td><p>组合用记号</p></td>
<td><p>Combining Diacritics Marks for Symbols</p></td>
</tr>
<tr class="even">
<td><p>2100-214F</p></td>
<td><p>字母式符号</p></td>
<td><p>Letterlike Symbols</p></td>
</tr>
<tr class="odd">
<td><p>2150-218F</p></td>
<td><p>数字形式</p></td>
<td><p>Number Forms</p></td>
</tr>
<tr class="even">
<td><p>2190-21FF</p></td>
<td><p><a href="../Page/箭头.md" title="wikilink">箭头</a></p></td>
<td><p>Arrows</p></td>
</tr>
<tr class="odd">
<td><p>2200-22FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/数学运算符" title="wikilink">数学运算符</a></p></td>
<td><p>Mathematical Operators</p></td>
</tr>
<tr class="even">
<td><p>2300-23FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/杂项工业符号" title="wikilink">杂项工业符号</a></p></td>
<td><p>Miscellaneous Technical</p></td>
</tr>
<tr class="odd">
<td><p>2400-243F</p></td>
<td></td>
<td><p>Control Pictures</p></td>
</tr>
<tr class="even">
<td><p>2440-245F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/光学识别符" title="wikilink">光学识别符</a></p></td>
<td><p>Optical Character Recognition</p></td>
</tr>
<tr class="odd">
<td><p>2460-24FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/带圈字母和数字" title="wikilink">带圈字母和数字</a></p></td>
<td><p>Enclosed Alphanumerics</p></td>
</tr>
<tr class="even">
<td><p>2500-257F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/制表符" title="wikilink">制表符</a></p></td>
<td><p>Box Drawing</p></td>
</tr>
<tr class="odd">
<td><p>2580-259F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/方块元素" title="wikilink">方块元素</a></p></td>
<td><p>Block Elements</p></td>
</tr>
<tr class="even">
<td><p>25A0-25FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/几何图形" title="wikilink">几何图形</a></p></td>
<td><p>Geometric Shapes</p></td>
</tr>
<tr class="odd">
<td><p>2600-26FF</p></td>
<td><p>杂项符号</p></td>
<td><p>Miscellaneous Symbols</p></td>
</tr>
<tr class="even">
<td><p>2700-27BF</p></td>
<td><p><a href="../Page/Dingbat.md" title="wikilink">装饰符号</a></p></td>
<td><p>Dingbats</p></td>
</tr>
<tr class="odd">
<td><p>27C0-27EF</p></td>
<td><p>杂项数学符号-A</p></td>
<td><p>Miscellaneous Mathematical Symbols-A</p></td>
</tr>
<tr class="even">
<td><p>27F0-27FF</p></td>
<td><p>追加箭头-A</p></td>
<td><p>Supplemental Arrows-A</p></td>
</tr>
<tr class="odd">
<td><p>2800-28FF</p></td>
<td><p><a href="../Page/盲文.md" title="wikilink">盲文</a>点字模型</p></td>
<td><p>Braille Patterns</p></td>
</tr>
<tr class="even">
<td><p>2900-297F</p></td>
<td><p>追加箭头-B</p></td>
<td><p>Supplemental Arrows-B</p></td>
</tr>
<tr class="odd">
<td><p>2980-29FF</p></td>
<td><p>杂项<a href="https://zh.wikipedia.org/wiki/数学符号" title="wikilink">数学符号</a>-B</p></td>
<td><p>Miscellaneous Mathematical Symbols-B</p></td>
</tr>
<tr class="even">
<td><p>2A00-2AFF</p></td>
<td><p>追加数学运算符</p></td>
<td><p>Supplemental Mathematical Operator</p></td>
</tr>
<tr class="odd">
<td><p>2B00-2BFF</p></td>
<td><p>杂项符号和箭头</p></td>
<td><p>Miscellaneous Symbols and Arrows</p></td>
</tr>
<tr class="even">
<td><p>2C00-2C5F</p></td>
<td><p><a href="../Page/格拉哥里字母.md" title="wikilink">格拉哥里字母</a></p></td>
<td><p>Glagolitic</p></td>
</tr>
<tr class="odd">
<td><p>2C60-2C7F</p></td>
<td><p>拉丁文扩展-C</p></td>
<td><p>Latin Extended-C</p></td>
</tr>
<tr class="even">
<td><p>2C80-2CFF</p></td>
<td><p><a href="../Page/科普特字母.md" title="wikilink">科普特字母</a></p></td>
<td><p>Coptic</p></td>
</tr>
<tr class="odd">
<td><p>2D00-2D2F</p></td>
<td><p><a href="../Page/格鲁吉亚字母.md" title="wikilink">格鲁吉亚字母</a>补充</p></td>
<td><p>Georgian Supplement</p></td>
</tr>
<tr class="even">
<td><p>2D30-2D7F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/提非纳文" title="wikilink">提非纳文</a></p></td>
<td><p>Tifinagh</p></td>
</tr>
<tr class="odd">
<td><p>2D80-2DDF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/吉兹字母" title="wikilink">吉兹字母扩展</a></p></td>
<td><p>Ethiopic Extended</p></td>
</tr>
<tr class="even">
<td><p>2DE0-2DFF</p></td>
<td><p>西里尔字母扩展-A</p></td>
<td><p>Cyrillic Extended-A</p></td>
</tr>
<tr class="odd">
<td><p>2E00-2E7F</p></td>
<td><p>追加标点</p></td>
<td><p>Supplemental Punctuation</p></td>
</tr>
<tr class="even">
<td><p>2E80-2EFF</p></td>
<td><p>中日韩汉字<a href="../Page/部首.md" title="wikilink">部首</a>补充</p></td>
<td><p>CJK Radicals Supplement</p></td>
</tr>
<tr class="odd">
<td><p>2F00-2FDF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/康熙部首" title="wikilink">康熙部首</a></p></td>
<td><p>Kangxi Radicals</p></td>
</tr>
<tr class="even">
<td><p>2FF0-2FFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/表意文字序列" title="wikilink">表意文字序列</a></p></td>
<td><p>Ideographic Description Characters</p></td>
</tr>
<tr class="odd">
<td><p>3000-303F</p></td>
<td><p>中日韩符号和标点</p></td>
<td><p>CJK Symbols and Punctuation</p></td>
</tr>
<tr class="even">
<td><p>3040-309F</p></td>
<td><p>日文<a href="../Page/平假名.md" title="wikilink">平假名</a></p></td>
<td><p>Hiragana</p></td>
</tr>
<tr class="odd">
<td><p>30A0-30FF</p></td>
<td><p>日文<a href="../Page/片假名.md" title="wikilink">片假名</a></p></td>
<td><p>Katakana</p></td>
</tr>
<tr class="even">
<td><p>3100-312F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/注音符号" title="wikilink">注音符号</a></p></td>
<td><p>Bopomofo</p></td>
</tr>
<tr class="odd">
<td><p>3130-318F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/谚文" title="wikilink">谚文兼容字母</a></p></td>
<td><p>Hangul Compatibility Jamo</p></td>
</tr>
<tr class="even">
<td><p>3190-319F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/汉文训读" title="wikilink">汉文注释标志</a></p></td>
<td><p>Kanbun</p></td>
</tr>
<tr class="odd">
<td><p>31A0-31BF</p></td>
<td><p>注音字母扩展</p></td>
<td><p>Bopomofo Extended</p></td>
</tr>
<tr class="even">
<td><p>31C0-31EF</p></td>
<td><p>中日韩<a href="../Page/笔画.md" title="wikilink">笔画</a></p></td>
<td><p>CJK Strokes</p></td>
</tr>
<tr class="odd">
<td><p>31F0-31FF</p></td>
<td><p>日文片假名拼音扩展</p></td>
<td><p>Katakana Phonetic Extensions</p></td>
</tr>
<tr class="even">
<td><p>3200-32FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/带圈的CJK字符及月份" title="wikilink">带圈的CJK字符及月份</a></p></td>
<td><p>Enclosed CJK Letters and Months</p></td>
</tr>
<tr class="odd">
<td><p>3300-33FF</p></td>
<td><p><a href="../Page/中日韓相容字元.md" title="wikilink">中日韩兼容字符</a></p></td>
<td><p>CJK Compatibility</p></td>
</tr>
<tr class="even">
<td><p>3400-4DBF</p></td>
<td><p><a href="../Page/中日韓統一表意文字擴展區A.md" title="wikilink">中日韓統一表意文字擴展區A</a></p></td>
<td><p>CJK Unified Ideographs Extension A</p></td>
</tr>
<tr class="odd">
<td><p>4DC0-4DFF</p></td>
<td><p>易经<a href="../Page/六十四卦.md" title="wikilink">六十四卦</a>符号</p></td>
<td><p>Yijing Hexagrams Symbols</p></td>
</tr>
<tr class="even">
<td><p>4E00-9FFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/中日韩统一表意文字" title="wikilink">中日韩统一表意文字</a></p></td>
<td><p>CJK Unified Ideographs</p></td>
</tr>
<tr class="odd">
<td><p>A000-A48F</p></td>
<td><p><a href="../Page/彝文.md" title="wikilink">彝文</a>音节</p></td>
<td><p>Yi Syllables</p></td>
</tr>
<tr class="even">
<td><p>A490-A4CF</p></td>
<td><p><a href="../Page/彝文.md" title="wikilink">彝文</a>字根</p></td>
<td><p>Yi Radicals</p></td>
</tr>
<tr class="odd">
<td><p>A4D0-A4FF</p></td>
<td><p><a href="../Page/老傈僳文.md" title="wikilink">老傈僳文</a></p></td>
<td><p>Lisu</p></td>
</tr>
<tr class="even">
<td><p>A500-A63F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/瓦伊语" title="wikilink">瓦伊语</a></p></td>
<td><p>Vai</p></td>
</tr>
<tr class="odd">
<td><p>A640-A69F</p></td>
<td><p><a href="../Page/西里尔字母.md" title="wikilink">西里尔字母</a>扩展-B</p></td>
<td><p>Cyrillic Extended-B</p></td>
</tr>
<tr class="even">
<td><p>A6A0-A6FF</p></td>
<td><p><a href="../Page/巴姆穆文字.md" title="wikilink">巴姆穆文字</a></p></td>
<td><p>Bamum</p></td>
</tr>
<tr class="odd">
<td><p>A700-A71F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/修饰用声调符号" title="wikilink">修饰用声调符号</a></p></td>
<td><p>Modifier Tone Letters</p></td>
</tr>
<tr class="even">
<td><p>A720-A7FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/拉丁文" title="wikilink">拉丁文扩展</a>-D</p></td>
<td><p>Latin Extended-D</p></td>
</tr>
<tr class="odd">
<td><p>A800-A82F</p></td>
<td></td>
<td><p>Syloti Nagri</p></td>
</tr>
<tr class="even">
<td><p>A830-A83F</p></td>
<td><p>通用<a href="https://zh.wikipedia.org/wiki/印度数字" title="wikilink">印度数字格式</a></p></td>
<td><p>Common Indic Number Forms</p></td>
</tr>
<tr class="odd">
<td><p>A840-A87F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/八思巴字" title="wikilink">八思巴字</a></p></td>
<td><p>Phags-pa</p></td>
</tr>
<tr class="even">
<td><p>A880-A8DF</p></td>
<td></td>
<td><p>Saurashtra</p></td>
</tr>
<tr class="odd">
<td><p>A8E0-A8FF</p></td>
<td><p>天城文扩展</p></td>
<td><p>Devanagari Extended</p></td>
</tr>
<tr class="even">
<td><p>A900-A92F</p></td>
<td></td>
<td><p>Kayah Li</p></td>
</tr>
<tr class="odd">
<td><p>A930-A95F</p></td>
<td></td>
<td><p>Rejang</p></td>
</tr>
<tr class="even">
<td><p>A960-A97F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/谚文" title="wikilink">谚文扩展</a>-A</p></td>
<td><p>Hangul Jamo Extended-A</p></td>
</tr>
<tr class="odd">
<td><p>A980-A9DF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/爪哇字母" title="wikilink">爪哇字母</a></p></td>
<td><p>Javanese</p></td>
</tr>
<tr class="even">
<td><p>A9E0-A9FF</p></td>
<td><p>缅甸文扩展-B</p></td>
<td><p>Myanmar Extended-B</p></td>
</tr>
<tr class="odd">
<td><p>AA00-AA5F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/占语字母" title="wikilink">占语字母</a></p></td>
<td><p>Cham</p></td>
</tr>
<tr class="even">
<td><p>AA60-AA7F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/缅甸文" title="wikilink">缅甸文扩展</a>-A</p></td>
<td><p>Myanmar Extended-A</p></td>
</tr>
<tr class="odd">
<td><p>AA80-AADF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/傣担语" title="wikilink">越南傣文</a></p></td>
<td><p>Tai Viet</p></td>
</tr>
<tr class="even">
<td><p>AAE0-AAFF</p></td>
<td><p>扩展</p></td>
<td><p>Meetei Mayek Extensions</p></td>
</tr>
<tr class="odd">
<td><p>AB00-AB2F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/吉兹字母" title="wikilink">吉兹字母扩展</a>-A</p></td>
<td><p>Ethiopic Extended-A</p></td>
</tr>
<tr class="even">
<td><p>AB30-AB6F</p></td>
<td><p>拉丁文扩展-E</p></td>
<td><p>Latin Extended-E</p></td>
</tr>
<tr class="odd">
<td><p>AB70-ABBF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/切罗基语" title="wikilink">切罗基语补充</a></p></td>
<td><p>Cherokee Supplement</p></td>
</tr>
<tr class="even">
<td><p>ABC0-ABFF</p></td>
<td></td>
<td><p>Meetei Mayek</p></td>
</tr>
<tr class="odd">
<td><p>AC00-D7AF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/谚文" title="wikilink">谚文音节</a></p></td>
<td><p>Hangul Syllables</p></td>
</tr>
<tr class="even">
<td><p>D7B0-D7FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/谚文" title="wikilink">谚文字母扩展</a>-B</p></td>
<td><p>Hangul Jamo Extended-B</p></td>
</tr>
<tr class="odd">
<td><p>D800-DBFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/UTF-16" title="wikilink">UTF-16的高半区</a></p></td>
<td><p>High-half zone of UTF-16</p></td>
</tr>
<tr class="even">
<td><p>DC00-DFFF</p></td>
<td><p>UTF-16的低半区</p></td>
<td><p>Low-half zone of UTF-16</p></td>
</tr>
<tr class="odd">
<td><p>E000-F8FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/私用区" title="wikilink">私用区</a></p></td>
<td><p>Private Use Area</p></td>
</tr>
<tr class="even">
<td><p>F900-FAFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/中日韩兼容表意文字" title="wikilink">中日韩兼容表意文字</a></p></td>
<td><p>CJK Compatibility Ideographs</p></td>
</tr>
<tr class="odd">
<td><p>FB00-FB4F</p></td>
<td><p>字母表達形式（<a href="../Page/拉丁字母.md" title="wikilink">拉丁字母</a><a href="https://zh.wikipedia.org/wiki/连字" title="wikilink">连字</a>、<a href="https://zh.wikipedia.org/wiki/亚美尼亚字母" title="wikilink">亚美尼亚字母连字</a>、<a href="https://zh.wikipedia.org/wiki/希伯来文" title="wikilink">希伯来文表现形式</a>）</p></td>
<td><p>Alphabetic Presentation Forms</p></td>
</tr>
<tr class="even">
<td><p>nowrap|FB50-FDFF[4]</p></td>
<td><p><a href="../Page/阿拉伯字母.md" title="wikilink">阿拉伯字母</a>表達形式-A</p></td>
<td><p>Arabic Presentation Forms A</p></td>
</tr>
<tr class="odd">
<td><p>FE00-FE0F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/異體字选择器" title="wikilink">異體字选择器</a></p></td>
<td><p>Variation Selector</p></td>
</tr>
<tr class="even">
<td><p>FE10-FE1F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/竖排" title="wikilink">竖排形式</a></p></td>
<td><p>Vertical Forms</p></td>
</tr>
<tr class="odd">
<td><p>FE20-FE2F</p></td>
<td><p>组合用半符号</p></td>
<td><p>Combining Half Marks</p></td>
</tr>
<tr class="even">
<td><p>FE30-FE4F</p></td>
<td><p><a href="../Page/中日韩兼容形式.md" title="wikilink">中日韩兼容形式</a></p></td>
<td><p>CJK Compatibility Forms</p></td>
</tr>
<tr class="odd">
<td><p>FE50-FE6F</p></td>
<td><p>小寫变体形式</p></td>
<td><p>Small Form Variants</p></td>
</tr>
<tr class="even">
<td><p>FE70-FEFF</p></td>
<td><p>阿拉伯文表達形式-B</p></td>
<td><p>Arabic Presentation Forms B</p></td>
</tr>
<tr class="odd">
<td><p>FF00-FFEF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/半形" title="wikilink">半形及</a><a href="https://zh.wikipedia.org/wiki/全形" title="wikilink">全形字符</a></p></td>
<td><p>Halfwidth and Fullwidth Forms</p></td>
</tr>
<tr class="even">
<td><p>FFF0-FFFF</p></td>
<td></td>
<td><p>Specials</p></td>
</tr>
</tbody>
</table>

以下為第0平面的編碼表：

<center>

**Unicode第0平面**

</center>

<center>

[0000-0FFF](../Page/Unicode一覽表_0000-0FFF.md "wikilink"){{.w}}[1000-1FFF](../Page/Unicode一覽表_1000-1FFF.md "wikilink"){{.w}}[2000-2FFF](../Page/Unicode一覽表_2000-2FFF.md "wikilink"){{.w}}[3000-3FFF](../Page/Unicode一覽表_3000-3FFF.md "wikilink")
[4000-4FFF](../Page/Unicode一覽表_4000-4FFF.md "wikilink"){{.w}}[5000-5FFF](../Page/Unicode一覽表_5000-5FFF.md "wikilink"){{.w}}[6000-6FFF](../Page/Unicode一覽表_6000-6FFF.md "wikilink"){{.w}}[7000-7FFF](../Page/Unicode一覽表_7000-7FFF.md "wikilink")
[8000-8FFF](../Page/Unicode一覽表_8000-8FFF.md "wikilink"){{.w}}[9000-9FFF](../Page/Unicode一覽表_9000-9FFF.md "wikilink"){{.w}}[A000-AFFF](../Page/Unicode一覽表_A000-AFFF.md "wikilink"){{.w}}[B000-BFFF](../Page/Unicode一覽表_B000-BFFF.md "wikilink")
[C000-CFFF](../Page/Unicode一覽表_C000-CFFF.md "wikilink"){{.w}}[D000-DFFF](../Page/Unicode一覽表_D000-DFFF.md "wikilink"){{.w}}[E000-EFFF](../Page/Unicode一覽表_E000-EFFF.md "wikilink"){{.w}}[F000-FFFF](../Page/Unicode一覽表_F000-FFFF.md "wikilink")

</center>

<center>

**基本平面**{{.w}}[第一輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第一輔助平面 "wikilink"){{.w}}[第二輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第二輔助平面 "wikilink"){{.w}}[第三輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第三輔助平面 "wikilink"){{.w}}[…](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第四至十三輔助平面 "wikilink"){{.w}}[第十四輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十四輔助平面 "wikilink"){{.w}}[第十五輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink"){{.w}}[第十六輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink")

</center>

## 第一輔助平面

[Roadmap_to_the_Unicode_SMP.svg](https://zh.wikipedia.org/wiki/File:Roadmap_to_the_Unicode_SMP.svg "fig:Roadmap_to_the_Unicode_SMP.svg") 第一輔助平面又稱**多文種補充平面**（**S**upplementary **M**ultilingual **P**lane，縮寫**SMP**，或簡稱**Plane 1**），擺放拼音文字（主要為現時已不再使用的古老文字）、[手写文字](https://zh.wikipedia.org/wiki/手写 "wikilink")、[音符](../Page/音符.md "wikilink")、[繪文字](../Page/繪文字.md "wikilink")和其他圖形符號。用于学者的专业论文中使用的古老或过时的语言书写符号，以及网络通信等使用的表情符号。範圍在U+10000～U+1FFFD。计划分配如下。

<table>
<thead>
<tr class="header">
<th><p>编码范围</p></th>
<th><p>中文名称</p></th>
<th><p>英语名称</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>10000-1007F</p></td>
<td><p><a href="../Page/线形文字B.md" title="wikilink">线形文字B</a>音节文字</p></td>
<td><p>Linear B Syllabary</p></td>
</tr>
<tr class="even">
<td><p>10080-100FF</p></td>
<td><p>线形文字B表意文字</p></td>
<td><p>Linear B Ideograms</p></td>
</tr>
<tr class="odd">
<td><p>10100-1013F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/爱琴数字" title="wikilink">爱琴海数字</a></p></td>
<td><p>Aegean Numbers</p></td>
</tr>
<tr class="even">
<td><p>10140-1018F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古希腊数字" title="wikilink">古希腊数字</a></p></td>
<td><p>Ancient Greek Numbers</p></td>
</tr>
<tr class="odd">
<td><p>10190-101CF</p></td>
<td><p>古代记数系统</p></td>
<td><p>Ancient Symbols</p></td>
</tr>
<tr class="even">
<td><p>101D0-101FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/费斯托斯圆盘" title="wikilink">费斯托斯圆盘</a></p></td>
<td><p>Phaistos Disc</p></td>
</tr>
<tr class="odd">
<td><p>10280-1029F</p></td>
<td></td>
<td><p>Lycian</p></td>
</tr>
<tr class="even">
<td><p>102A0-102DF</p></td>
<td></td>
<td><p>Carian</p></td>
</tr>
<tr class="odd">
<td><p>102E0-102FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/科普特闰余数字" title="wikilink">科普特闰余数字</a></p></td>
<td><p>Coptic Epact Numbers</p></td>
</tr>
<tr class="even">
<td><p>10300-1032F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古意大利字母" title="wikilink">古意大利字母</a></p></td>
<td><p>Old Italic</p></td>
</tr>
<tr class="odd">
<td><p>10330-1034F</p></td>
<td><p><a href="../Page/哥德字母.md" title="wikilink">哥特字母</a></p></td>
<td><p>Gothic</p></td>
</tr>
<tr class="even">
<td><p>10350-1037F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古彼尔姆文" title="wikilink">古彼尔姆文</a></p></td>
<td><p>Old Permic</p></td>
</tr>
<tr class="odd">
<td><p>10380-1039F</p></td>
<td><p><a href="../Page/乌加里特字母.md" title="wikilink">乌加里特字母</a></p></td>
<td><p>Ugaritic</p></td>
</tr>
<tr class="even">
<td><p>103A0-103DF</p></td>
<td><p><a href="../Page/古波斯楔形文字.md" title="wikilink">古波斯楔形文字</a></p></td>
<td><p>Old Persian</p></td>
</tr>
<tr class="odd">
<td><p>10400-1044F</p></td>
<td></td>
<td><p>Deseret</p></td>
</tr>
<tr class="even">
<td><p>10450-1047F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/萧伯纳字母" title="wikilink">萧伯纳字母</a></p></td>
<td><p>Shavian</p></td>
</tr>
<tr class="odd">
<td><p>10480-104AF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/奥斯曼亚字母" title="wikilink">奥斯曼亚字母</a></p></td>
<td><p>Osmanya</p></td>
</tr>
<tr class="even">
<td><p>104B0-104FF</p></td>
<td></td>
<td><p>Osage</p></td>
</tr>
<tr class="odd">
<td><p>10500-1052F</p></td>
<td></td>
<td><p>Elbasan</p></td>
</tr>
<tr class="even">
<td><p>10530-1056F</p></td>
<td></td>
<td><p>Caucasian Albanian</p></td>
</tr>
<tr class="odd">
<td><p>10600-1077F</p></td>
<td><p><a href="../Page/线形文字A.md" title="wikilink">线形文字A</a></p></td>
<td><p>Linear A</p></td>
</tr>
<tr class="even">
<td><p>10800-1083F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/塞浦路斯音节文字" title="wikilink">塞浦路斯音节文字</a></p></td>
<td><p>Cypriot Syllabary</p></td>
</tr>
<tr class="odd">
<td><p>10840-1085F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/亚兰字母" title="wikilink">帝国亚兰文字</a></p></td>
<td><p>Imperial Aramaic</p></td>
</tr>
<tr class="even">
<td><p>10860-1087F</p></td>
<td></td>
<td><p>Palmyrene</p></td>
</tr>
<tr class="odd">
<td><p>10880-108AF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/纳巴泰字母" title="wikilink">纳巴泰字母</a></p></td>
<td><p>Nabataean</p></td>
</tr>
<tr class="even">
<td><p>108E0-108FF</p></td>
<td></td>
<td><p>Hatran</p></td>
</tr>
<tr class="odd">
<td><p>10900-1091F</p></td>
<td><p><a href="../Page/腓尼基字母.md" title="wikilink">腓尼基字母</a></p></td>
<td><p>Phoenician</p></td>
</tr>
<tr class="even">
<td><p>10920-1093F</p></td>
<td></td>
<td><p>Lydian</p></td>
</tr>
<tr class="odd">
<td><p>10980-1099F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/麦罗埃文" title="wikilink">麦罗埃文圣书体</a></p></td>
<td><p>Meroitic Hieroglyphs</p></td>
</tr>
<tr class="even">
<td><p>109A0-109FF</p></td>
<td><p>麦罗埃文草书体</p></td>
<td><p>Meroitic Cursive</p></td>
</tr>
<tr class="odd">
<td><p>10A00-10A5F</p></td>
<td><p><a href="../Page/佉卢文.md" title="wikilink">佉卢文</a></p></td>
<td><p>Kharoshthi</p></td>
</tr>
<tr class="even">
<td><p>10A60-10A7F</p></td>
<td><p><a href="../Page/南阿拉伯字母.md" title="wikilink">古南阿拉伯字母</a></p></td>
<td><p>Old South Arabian</p></td>
</tr>
<tr class="odd">
<td><p>10A80-10A9F</p></td>
<td></td>
<td><p>Old North Arabian</p></td>
</tr>
<tr class="even">
<td><p>10AC0-10AFF</p></td>
<td><p><a href="../Page/摩尼字母.md" title="wikilink">摩尼字母</a></p></td>
<td><p>Manichaean</p></td>
</tr>
<tr class="odd">
<td><p>10B00-10B3F</p></td>
<td></td>
<td><p>Avestan</p></td>
</tr>
<tr class="even">
<td><p>10B40-10B5F</p></td>
<td><p>碑刻<a href="https://zh.wikipedia.org/wiki/帕提亚文" title="wikilink">帕提亚文</a></p></td>
<td><p>Inscriptional Parthian</p></td>
</tr>
<tr class="odd">
<td><p>10B60-10B7F</p></td>
<td><p>碑刻</p></td>
<td><p>Inscriptional Pahlavi</p></td>
</tr>
<tr class="even">
<td><p>10B80-10BAF</p></td>
<td><p>诗篇巴列维文</p></td>
<td><p>Psalter Pahlavi</p></td>
</tr>
<tr class="odd">
<td><p>10C00-10C4F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古突厥文" title="wikilink">古突厥文</a></p></td>
<td><p>Old Turkic</p></td>
</tr>
<tr class="even">
<td><p>10D00-10D3F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/哈乃斐罗兴亚文字" title="wikilink">哈乃斐罗兴亚文字</a></p></td>
<td><p>Hanifi Rohingya</p></td>
</tr>
<tr class="odd">
<td><p>10C80-10CFF</p></td>
<td><p><a href="../Page/古匈牙利字母.md" title="wikilink">古匈牙利字母</a></p></td>
<td><p>Old Hungarian</p></td>
</tr>
<tr class="even">
<td><p>10E60-10E7F</p></td>
<td></td>
<td><p>Rumi Numeral Symbols</p></td>
</tr>
<tr class="odd">
<td><p>10F00-10F2F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古粟特字母" title="wikilink">古粟特字母</a></p></td>
<td><p>Old Sogdian</p></td>
</tr>
<tr class="even">
<td><p>10F30-10F6F</p></td>
<td><p><a href="../Page/粟特字母.md" title="wikilink">粟特字母</a></p></td>
<td><p>Sogdian</p></td>
</tr>
<tr class="odd">
<td><p>10FE0-10FFF</p></td>
<td></td>
<td><p>Elymaic</p></td>
</tr>
<tr class="even">
<td><p>11000-1107F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/婆罗米文字" title="wikilink">婆罗米文字</a></p></td>
<td><p>Brahmi</p></td>
</tr>
<tr class="odd">
<td><p>11080-110CF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/凯提文" title="wikilink">凯提文</a></p></td>
<td><p>Kaithi</p></td>
</tr>
<tr class="even">
<td><p>110D0-110FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/索拉僧平文字" title="wikilink">索拉僧平文字</a></p></td>
<td><p>Sora Sompeng</p></td>
</tr>
<tr class="odd">
<td><p>11100-1114F</p></td>
<td></td>
<td><p>Chakma</p></td>
</tr>
<tr class="even">
<td><p>11150-1117F</p></td>
<td></td>
<td><p>Mahajani</p></td>
</tr>
<tr class="odd">
<td><p>11180-111DF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/夏拉达文" title="wikilink">夏拉达文</a></p></td>
<td><p>Sharada</p></td>
</tr>
<tr class="even">
<td><p>111E0-111FF</p></td>
<td><p>古僧伽罗文数字</p></td>
<td><p>Sinhala Archaic Numbers</p></td>
</tr>
<tr class="odd">
<td><p>11200-1124F</p></td>
<td></td>
<td><p>Khojki</p></td>
</tr>
<tr class="even">
<td><p>11280-112AF</p></td>
<td></td>
<td><p>Multani</p></td>
</tr>
<tr class="odd">
<td><p>112B0-112FF</p></td>
<td></td>
<td><p>Khudawadi</p></td>
</tr>
<tr class="even">
<td><p>11300-1137F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古兰塔文" title="wikilink">古兰塔文</a></p></td>
<td><p>Grantha</p></td>
</tr>
<tr class="odd">
<td><p>11400-1147F</p></td>
<td></td>
<td><p>Newa</p></td>
</tr>
<tr class="even">
<td><p>11480-114DF</p></td>
<td></td>
<td><p>Tirhuta</p></td>
</tr>
<tr class="odd">
<td><p>11580-115FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/悉昙文字" title="wikilink">悉昙文字</a></p></td>
<td><p>Siddham</p></td>
</tr>
<tr class="even">
<td><p>11600-1165F</p></td>
<td></td>
<td><p>Modi</p></td>
</tr>
<tr class="odd">
<td><p>11660-1167F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/蒙古文" title="wikilink">蒙古文补充</a></p></td>
<td><p>Mongolian Supplement</p></td>
</tr>
<tr class="even">
<td><p>11680-116CF</p></td>
<td></td>
<td><p>Takri</p></td>
</tr>
<tr class="odd">
<td><p>11700-1173F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/阿洪姆文" title="wikilink">阿洪姆文</a></p></td>
<td><p>Ahom</p></td>
</tr>
<tr class="even">
<td><p>11800-1184F</p></td>
<td><p><a href="../Page/多格拉语.md" title="wikilink">多格拉文</a></p></td>
<td><p>Dogra</p></td>
</tr>
<tr class="odd">
<td><p>118A0-118FF</p></td>
<td></td>
<td><p>Warang Citi</p></td>
</tr>
<tr class="even">
<td><p>119A0-119FF</p></td>
<td></td>
<td><p>Nandinagari</p></td>
</tr>
<tr class="odd">
<td><p>11A00-11A4F</p></td>
<td><p><a href="../Page/札那巴札尔方形字母.md" title="wikilink">札那巴札尔方形字母</a></p></td>
<td><p>Zanabazar Square</p></td>
</tr>
<tr class="even">
<td><p>11A50-11AAF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/索永布文字" title="wikilink">索永布文字</a></p></td>
<td><p>Soyombo</p></td>
</tr>
<tr class="odd">
<td><p>11AC0-11AFF</p></td>
<td></td>
<td><p>Pau Cin Hau</p></td>
</tr>
<tr class="even">
<td><p>11C00-11C6F</p></td>
<td></td>
<td><p>Bhaiksuki</p></td>
</tr>
<tr class="odd">
<td><p>11C70-11CBF</p></td>
<td><p><a href="../Page/象雄语.md" title="wikilink">玛钦文</a></p></td>
<td><p>Marchen</p></td>
</tr>
<tr class="even">
<td><p>11D00-11D5F</p></td>
<td></td>
<td><p>Masaram Gondi</p></td>
</tr>
<tr class="odd">
<td><p>11D60-11DAF</p></td>
<td></td>
<td><p>Gunjala Gondi</p></td>
</tr>
<tr class="even">
<td><p>11EE0-11EFF</p></td>
<td></td>
<td><p>Makasar</p></td>
</tr>
<tr class="odd">
<td><p>11FC0-11FFF</p></td>
<td><p>泰米尔文补充</p></td>
<td><p>Tamil Supplement</p></td>
</tr>
<tr class="even">
<td><p>12000-123FF</p></td>
<td><p><a href="../Page/楔形文字.md" title="wikilink">楔形文字</a></p></td>
<td><p>Cuneiform</p></td>
</tr>
<tr class="odd">
<td><p>12400-1247F</p></td>
<td><p>楔形文字数字和标点符号</p></td>
<td><p>Cuneiform Numbers and Punctuation</p></td>
</tr>
<tr class="even">
<td><p>12480-1254F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/早期王朝楔形文字" title="wikilink">早期王朝楔形文字</a></p></td>
<td><p>Early Dynastic Cuneiform</p></td>
</tr>
<tr class="odd">
<td><p>13000-1342F</p></td>
<td><p>埃及<a href="https://zh.wikipedia.org/wiki/圣书体" title="wikilink">圣书体</a></p></td>
<td><p>Egyptian Hieroglyphs</p></td>
</tr>
<tr class="even">
<td><p>13430-1343F</p></td>
<td><p>埃及圣书体格式控制</p></td>
<td><p>Egyptian Hieroglyphs Format Controls</p></td>
</tr>
<tr class="odd">
<td><p>14400-1467F</p></td>
<td></td>
<td><p>Anatolian Hieroglyphs</p></td>
</tr>
<tr class="even">
<td><p>16800-16A3F</p></td>
<td><p><a href="../Page/巴姆穆文字.md" title="wikilink">巴姆穆文字</a>补充</p></td>
<td><p>Bamum Supplement</p></td>
</tr>
<tr class="odd">
<td><p>16A40-16A6F</p></td>
<td></td>
<td><p>Mro</p></td>
</tr>
<tr class="even">
<td><p>16AD0-16AFF</p></td>
<td></td>
<td><p>Bassa Vah</p></td>
</tr>
<tr class="odd">
<td><p>16B00-16B8F</p></td>
<td><p><a href="../Page/救世苗文.md" title="wikilink">救世苗文</a></p></td>
<td><p>Pahawh Hmong</p></td>
</tr>
<tr class="even">
<td><p>16E40-16E9F</p></td>
<td></td>
<td><p>Medefaidrin</p></td>
</tr>
<tr class="odd">
<td><p>16F00-16F9F</p></td>
<td><p><a href="../Page/柏格理苗文.md" title="wikilink">柏格理苗文</a></p></td>
<td><p>Miao</p></td>
</tr>
<tr class="even">
<td><p>16FE0-16FFF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/表意符号" title="wikilink">表意符号和</a><a href="../Page/标点符号.md" title="wikilink">标点符号</a></p></td>
<td><p>Ideographic Symbols and Punctuation</p></td>
</tr>
<tr class="odd">
<td><p>17000-187FF</p></td>
<td><p><a href="../Page/西夏文.md" title="wikilink">西夏文</a></p></td>
<td><p>Tangut</p></td>
</tr>
<tr class="even">
<td><p>18800-18AFF</p></td>
<td><p>西夏文部首</p></td>
<td><p>Tangut Components</p></td>
</tr>
<tr class="odd">
<td><p>1B000-1B0FF</p></td>
<td><p>日文<a href="https://zh.wikipedia.org/wiki/假名" title="wikilink">假名补充</a></p></td>
<td><p>Kana Supplement</p></td>
</tr>
<tr class="even">
<td><p>1B100-1B12F</p></td>
<td><p>日文<a href="https://zh.wikipedia.org/wiki/假名" title="wikilink">假名扩展</a>-A</p></td>
<td><p>Kana Extended-A</p></td>
</tr>
<tr class="odd">
<td><p>1B130-1B16F</p></td>
<td><p>小假名扩充</p></td>
<td><p>Small Kana Extension</p></td>
</tr>
<tr class="even">
<td><p>1B170-1B2FF</p></td>
<td><p><a href="../Page/女书.md" title="wikilink">女书</a></p></td>
<td><p>Nushu</p></td>
</tr>
<tr class="odd">
<td><p>1BC00-1BC9F</p></td>
<td></td>
<td><p>Duployan</p></td>
</tr>
<tr class="even">
<td><p>1BCA0-1BCAF</p></td>
<td><p><a href="../Page/速记.md" title="wikilink">速记</a>格式控制符</p></td>
<td><p>Shorthand Format Controls</p></td>
</tr>
<tr class="odd">
<td><p>1D000-1D0FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/拜占庭音乐符号" title="wikilink">拜占庭音乐符号</a></p></td>
<td><p>Byzantine Musical Symbols</p></td>
</tr>
<tr class="even">
<td><p>1D100-1D1FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/音乐符号" title="wikilink">音乐符号</a></p></td>
<td><p>Musical Symbols</p></td>
</tr>
<tr class="odd">
<td><p>1D200-1D24F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古希腊音乐记号" title="wikilink">古希腊音乐记号</a></p></td>
<td><p>Ancient Greek Musical Notation</p></td>
</tr>
<tr class="even">
<td><p>1D2E0-1D2FF</p></td>
<td><p><a href="../Page/玛雅数字.md" title="wikilink">玛雅数字</a></p></td>
<td><p>Mayan Numerals</p></td>
</tr>
<tr class="odd">
<td><p>1D300-1D35F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/太玄经" title="wikilink">太玄经符号</a></p></td>
<td><p>Tai Xuan Jing Symbols</p></td>
</tr>
<tr class="even">
<td><p>1D360-1D37F</p></td>
<td><p><a href="../Page/算筹.md" title="wikilink">算筹</a></p></td>
<td><p>Counting Rod Numerals</p></td>
</tr>
<tr class="odd">
<td><p>1D400-1D7FF</p></td>
<td><p><a href="../Page/数学字母数字符号.md" title="wikilink">数学字母数字符号</a></p></td>
<td><p>Mathematical Alphanumeric Symbols</p></td>
</tr>
<tr class="even">
<td><p>1D800-1DAAF</p></td>
<td><p>萨顿</p></td>
<td><p>Sutton SignWriting</p></td>
</tr>
<tr class="odd">
<td><p>1E000-1E02F</p></td>
<td><p><a href="../Page/格拉哥里字母.md" title="wikilink">格拉哥里字母</a>补充</p></td>
<td><p>Glagolitic Supplement</p></td>
</tr>
<tr class="even">
<td><p>1E100-1E14F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/创世纪苗文" title="wikilink">创世纪苗文</a></p></td>
<td><p>Nyiakeng Puachue Hmong</p></td>
</tr>
<tr class="odd">
<td><p>1E2C0-1E2FF</p></td>
<td></td>
<td><p>Wancho</p></td>
</tr>
<tr class="even">
<td><p>1E800-1E8DF</p></td>
<td></td>
<td><p>Mende Kikakui</p></td>
</tr>
<tr class="odd">
<td><p>1E900-1E95F</p></td>
<td></td>
<td><p>Adlam</p></td>
</tr>
<tr class="even">
<td><p>1EC70-1ECBF</p></td>
<td><p>印度西亚克数字</p></td>
<td><p>Indic Siyaq Numbers</p></td>
</tr>
<tr class="odd">
<td><p>1ED00-1ED4F</p></td>
<td><p>奥斯曼西亚克数字</p></td>
<td><p>Ottoman Siyaq Numbers</p></td>
</tr>
<tr class="even">
<td><p>1EE00-1EEFF</p></td>
<td><p>阿拉伯字母数字符号</p></td>
<td><p>Arabic Mathematical Alphanumeric Symbols</p></td>
</tr>
<tr class="odd">
<td><p>1F000-1F02F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/麻将牌" title="wikilink">麻将牌</a></p></td>
<td><p>Mahjong Tiles</p></td>
</tr>
<tr class="even">
<td><p>1F030-1F09F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/多米诺骨牌" title="wikilink">多米诺骨牌</a></p></td>
<td><p>Domino Tiles</p></td>
</tr>
<tr class="odd">
<td><p>1F0A0-1F0FF</p></td>
<td><p><a href="../Page/扑克牌.md" title="wikilink">扑克牌</a></p></td>
<td><p>Playing Cards</p></td>
</tr>
<tr class="even">
<td><p>1F100-1F1FF</p></td>
<td><p>带圈字母数字补充</p></td>
<td><p>Enclosed Alphanumeric Supplement</p></td>
</tr>
<tr class="odd">
<td><p>1F200-1F2FF</p></td>
<td><p>带圈<a href="https://zh.wikipedia.org/wiki/表意文字" title="wikilink">表意文字补充</a></p></td>
<td><p>Enclosed Ideographic Supplement</p></td>
</tr>
<tr class="even">
<td><p>1F300-1F5FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/杂项符号" title="wikilink">杂项符号和</a><a href="../Page/象形文字.md" title="wikilink">象形文字</a></p></td>
<td><p>Miscellaneous Symbols And Pictographs</p></td>
</tr>
<tr class="odd">
<td><p>1F600-1F64F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/表情符号" title="wikilink">表情符号</a></p></td>
<td><p>Emotions</p></td>
</tr>
<tr class="even">
<td><p>1F650-1F67F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/装饰符号" title="wikilink">装饰符号</a></p></td>
<td><p>Ornamental Dingbats</p></td>
</tr>
<tr class="odd">
<td><p>1F680-1F6FF</p></td>
<td><p>交通和地图符号</p></td>
<td><p>Transport And Map Symbols</p></td>
</tr>
<tr class="even">
<td><p>1F700-1F77F</p></td>
<td><p><a href="../Page/炼金术.md" title="wikilink">炼金术</a>符号</p></td>
<td><p>Alchemical Symbols</p></td>
</tr>
<tr class="odd">
<td><p>1F780-1F7FF</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/几何图形" title="wikilink">几何图形扩展</a></p></td>
<td><p>Geometric Shapes Extended</p></td>
</tr>
<tr class="even">
<td><p>1F800-1F8FF</p></td>
<td><p>追加<a href="../Page/箭头.md" title="wikilink">箭头</a>-C</p></td>
<td><p>Supplemental Arrows-C</p></td>
</tr>
<tr class="odd">
<td><p>1F900-1F9FF</p></td>
<td><p>補充符號和象形文字</p></td>
<td><p>Supplemental Symbols and Pictographs</p></td>
</tr>
<tr class="even">
<td><p>1FA00-1FA6F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/西洋棋" title="wikilink">西洋棋符号</a></p></td>
<td><p>Chess Symbols</p></td>
</tr>
<tr class="odd">
<td><p>1FA70-1FAFF</p></td>
<td><p>符号和象形文字扩展-A</p></td>
<td><p>Symbols and Pictographs Extended-A</p></td>
</tr>
</tbody>
</table>

以下為第一輔助平面的編碼表：

<center>

**Unicode第一輔助平面**

</center>

<center>

[10000-10FFF](../Page/Unicode一覽表_10000-10FFF.md "wikilink"){{.w}}[11000-11FFF](../Page/Unicode一覽表_11000-11FFF.md "wikilink"){{.w}}[12000-12FFF](../Page/Unicode一覽表_12000-12FFF.md "wikilink"){{.w}}[13000-13FFF](../Page/Unicode一覽表_13000-13FFF.md "wikilink")
[14000-14FFF](../Page/Unicode一覽表_14000-14FFF.md "wikilink"){{.w}}[15000-15FFF](../Page/Unicode一覽表_15000-15FFF.md "wikilink"){{.w}}[16000-16FFF](../Page/Unicode一覽表_16000-16FFF.md "wikilink"){{.w}}[17000-17FFF](../Page/Unicode一覽表_17000-17FFF.md "wikilink")
[18000-18FFF](../Page/Unicode一覽表_18000-18FFF.md "wikilink"){{.w}}[19000-19FFF](../Page/Unicode一覽表_19000-19FFF.md "wikilink"){{.w}}[1A000-1AFFF](../Page/Unicode一覽表_1A000-1AFFF.md "wikilink"){{.w}}[1B000-1BFFF](../Page/Unicode一覽表_1B000-1BFFF.md "wikilink")
[1C000-1CFFF](../Page/Unicode一覽表_1C000-1CFFF.md "wikilink"){{.w}}[1D000-1DFFF](../Page/Unicode一覽表_1D000-1DFFF.md "wikilink"){{.w}}[1E000-1EFFF](../Page/Unicode一覽表_1E000-1EFFF.md "wikilink"){{.w}}[1F000-1FFFF](../Page/Unicode一覽表_1F000-1FFFF.md "wikilink")

</center>

<center>

[第0平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#基本多文種平面 "wikilink"){{.w}}**第一輔助平面**{{.w}}[第二輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第二輔助平面 "wikilink"){{.w}}[第三輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第三輔助平面 "wikilink"){{.w}}[…](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第四至十三輔助平面 "wikilink"){{.w}}[第十四輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十四輔助平面 "wikilink"){{.w}}[第十五輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink"){{.w}}[第十六輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink")

</center>

## 第二輔助平面

[Roadmap_to_Unicode_SIP.svg](https://zh.wikipedia.org/wiki/File:Roadmap_to_Unicode_SIP.svg "fig:Roadmap_to_Unicode_SIP.svg") 第二輔助平面又稱為**表意文字補充平面**（**S**upplementary **I**deographic **P**lane，縮寫**SIP**，或簡稱**Plane 2**），整個範圍在U+20000～U+2FFFD。整個平面配置的都是一些罕用的[汉字](../Page/汉字.md "wikilink")或地區的方言用字，如[粵語用字及](https://zh.wikipedia.org/wiki/粵語 "wikilink")[越南語的](https://zh.wikipedia.org/wiki/越南語 "wikilink")[字喃](https://zh.wikipedia.org/wiki/字喃 "wikilink")。現時擺放了「[中日韓統一表意文字](../Page/中日韓統一表意文字.md "wikilink")擴展B區」（4萬3253個[汉字](../Page/汉字.md "wikilink")）、「中日韓統一表意文字擴展C區」（4149個[汉字](../Page/汉字.md "wikilink")）、「中日韓統一表意文字擴展D區」（222個[汉字](../Page/汉字.md "wikilink")）、「中日韓統一表意文字擴展E區」（5762个汉字）、「中日韓統一表意文字擴展F區」（7473个汉字）以及中日韓兼容表意文字增補（CJK Compatibility Ideographs Supplement）。

已分配的編碼區段為：

| 编码范围        | 中文名称                                                                 | 英语名称                                    |
| ----------- | -------------------------------------------------------------------- | --------------------------------------- |
| 20000-2A6DF | [中日韓統一表意文字擴展B區](../Page/中日韓統一表意文字擴展區B.md "wikilink")                 | CJK Unified Ideographs Extension B      |
| 2A700-2B73F | [中日韓統一表意文字擴展C區](../Page/中日韓統一表意文字擴展區C.md "wikilink")                 | CJK Unified Ideographs Extension C      |
| 2B740-2B81F | [中日韓統一表意文字擴展D區](../Page/中日韓統一表意文字擴展區D.md "wikilink")                 | CJK Unified Ideographs Extension D      |
| 2B820-2CEAF | [中日韓統一表意文字擴展E區](../Page/中日韓統一表意文字擴展區E.md "wikilink")                 | CJK Unified Ideographs Extension E      |
| 2CEB0-2EBEF | [中日韓統一表意文字擴展F區](../Page/中日韓統一表意文字擴展區F.md "wikilink")                 | CJK Unified Ideographs Extension F      |
| 2F800-2FA1F | [中日韓兼容表意文字增補](https://zh.wikipedia.org/wiki/中日韓相容表意文字補充區 "wikilink") | CJK Compatibility Ideographs Supplement |

以下為第二輔助平面的編碼表：

<center>

**Unicode第二輔助平面**

</center>

<center>

[20000-20FFF](../Page/Unicode一覽表_20000-20FFF.md "wikilink"){{.w}}[21000-21FFF](../Page/Unicode一覽表_21000-21FFF.md "wikilink"){{.w}}[22000-22FFF](../Page/Unicode一覽表_22000-22FFF.md "wikilink"){{.w}}[23000-23FFF](../Page/Unicode一覽表_23000-23FFF.md "wikilink")
[24000-24FFF](../Page/Unicode一覽表_24000-24FFF.md "wikilink"){{.w}}[25000-25FFF](../Page/Unicode一覽表_25000-25FFF.md "wikilink"){{.w}}[26000-26FFF](../Page/Unicode一覽表_26000-26FFF.md "wikilink"){{.w}}[27000-27FFF](../Page/Unicode一覽表_27000-27FFF.md "wikilink")
[28000-28FFF](../Page/Unicode一覽表_28000-28FFF.md "wikilink"){{.w}}[29000-29FFF](../Page/Unicode一覽表_29000-29FFF.md "wikilink"){{.w}}[2A000-2AFFF](../Page/Unicode一覽表_2A000-2AFFF.md "wikilink"){{.w}}[2B000-2BFFF](../Page/Unicode一覽表_2B000-2BFFF.md "wikilink")
[2C000-2CFFF](../Page/Unicode一覽表_2C000-2CFFF.md "wikilink"){{.w}}[2D000-2DFFF](../Page/Unicode一覽表_2D000-2DFFF.md "wikilink"){{.w}}[2E000-2EFFF](../Page/Unicode一覽表_2E000-2EFFF.md "wikilink"){{.w}}[2F000-2FFFF](../Page/Unicode一覽表_2F000-2FFFF.md "wikilink")

</center>

<center>

[第0平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#基本多文種平面 "wikilink"){{.w}}[第一輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第一輔助平面 "wikilink"){{.w}}**第二輔助平面**{{.w}}[第三輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第三輔助平面 "wikilink"){{.w}}[…](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第四至十三輔助平面 "wikilink"){{.w}}[第十四輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十四輔助平面 "wikilink"){{.w}}[第十五輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink"){{.w}}[第十六輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink")

</center>

## 第三輔助平面

第三輔助平面尚未使用，但已提出相关编码提案。本平面打算用來擺放汉字扩展区G、[甲骨文](../Page/甲骨文.md "wikilink")、[金文](../Page/金文.md "wikilink")、[小篆](../Page/小篆.md "wikilink")、[中國戰國時期文字等](../Page/戰國.md "wikilink")。按Unicode官网的路线图，計劃分配的編碼區段為：

  - U+30000至U+31389：扩展区G（提案已被接受）。
  - U+31400至U+33D1F：小篆（提案已提交）。
  - U+33E00至U+355FF：甲骨文（提案已提交）。\[5\]

以下為第三輔助平面的編碼表：

<center>

**Unicode第三輔助平面**

</center>

<center>

[30000-30FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_30000-30FFF "wikilink"){{.w}}[31000-31FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_31000-31FFF "wikilink"){{.w}}[32000-32FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_32000-33FFF "wikilink"){{.w}}[33000-33FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_33000-33FFF "wikilink")
[34000-34FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_34000-34FFF "wikilink"){{.w}}[35000-35FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_35000-35FFF "wikilink"){{.w}}[36000-36FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_36000-36FFF "wikilink"){{.w}}[37000-37FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_37000-37FFF "wikilink")
[38000-38FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_38000-38FFF "wikilink"){{.w}}[39000-39FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_39000-39FFF "wikilink"){{.w}}[3A000-3AFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_3A000-3AFFF "wikilink"){{.w}}[3B000-3BFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_3B000-3BFFF "wikilink")
[3C000-3CFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_3C000-3CFFF "wikilink"){{.w}}[3D000-3DFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_3D000-3DFFF "wikilink"){{.w}}[3E000-3EFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_3E000-3EFFF "wikilink"){{.w}}[3F000-3FFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_3F000-3FFFF "wikilink")

</center>

<center>

[第0平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#基本多文種平面 "wikilink"){{.w}}[第一輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第一輔助平面 "wikilink"){{.w}}[第二輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第二輔助平面 "wikilink"){{.w}}**第三輔助平面**{{.w}}[…](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第四至十三輔助平面 "wikilink"){{.w}}[第十四輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十四輔助平面 "wikilink"){{.w}}[第十五輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink"){{.w}}[第十六輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink")

</center>

## 第四至十三輔助平面

第四至第十三輔助平面尚无使用计划。

## 第十四輔助平面

第十四輔助平面又稱**特別用途補充平面**（**S**upplementary **S**pecial-purpose **P**lane，簡稱**SSP**），目前僅擺放「語言編碼標籤」和「字形變換選取器」，它們都是[控制字符](../Page/控制字符.md "wikilink")。範圍在U+E0000～U+E01FF。

| 编码范围        | 中文名称                                              | 英语名称                           |
| ----------- | ------------------------------------------------- | ------------------------------ |
| E0000-E007F | [标签](https://zh.wikipedia.org/wiki/标签 "wikilink") | Tags                           |
| E0100-E01EF | 选择器变化补充                                           | Variation Selectors Supplement |

以下為第十四輔助平面的編碼表：

<center>

**Unicode第十四輔助平面**

</center>

<center>

[E0000-E0FFF](../Page/Unicode一覽表_E0000-E0FFF.md "wikilink"){{.w}}[E1000-E1FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E1000-E1FFF "wikilink"){{.w}}[E2000-E2FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E2000-EEFFF "wikilink"){{.w}}[E3000-E3FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E3000-E3FFF "wikilink")
[E4000-E4FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E4000-E4FFF "wikilink"){{.w}}[E5000-E5FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E5000-E5FFF "wikilink"){{.w}}[E6000-E6FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E6000-E6FFF "wikilink"){{.w}}[E7000-E7FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E7000-E7FFF "wikilink")
[E8000-E8FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E8000-E8FFF "wikilink"){{.w}}[E9000-E9FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_E9000-E9FFF "wikilink"){{.w}}[EA000-EAFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_EA000-EAFFF "wikilink"){{.w}}[EB000-EBFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_EB000-EBFFF "wikilink")
[EC000-ECFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_EC000-ECFFF "wikilink"){{.w}}[ED000-EDFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_ED000-EDFFF "wikilink"){{.w}}[EE000-EEFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_EE000-EEFFF "wikilink"){{.w}}[EF000-EFFFF](../Page/Unicode一覽表_EF000-EFFFF.md "wikilink")

</center>

<center>

[第0平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#基本多文種平面 "wikilink"){{.w}}[第一輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第一輔助平面 "wikilink"){{.w}}[第二輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第二輔助平面 "wikilink"){{.w}}[第三輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第三輔助平面 "wikilink"){{.w}}[…](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第四至十三輔助平面 "wikilink"){{.w}}**第十四輔助平面**{{.w}}[第十五輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink"){{.w}}[第十六輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十五至十六輔助平面 "wikilink")

</center>

## 第十五至十六輔助平面

第十五至十六輔助平面都是私人使用區。它們的範圍是U+F0000～U+FFFFD及U+100000～U+10FFFD.

以下為第十五、十六輔助平面的編碼表：

<center>

**Unicode第十五、十六輔助平面**

</center>

<center>

[F0000-F0FFF](../Page/Unicode一覽表_F0000-F0FFF.md "wikilink"){{.w}}[F1000-F1FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F1000-F1FFF "wikilink"){{.w}}[F2000-F2FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F2000-FFFFF "wikilink"){{.w}}[F3000-F3FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F3000-F3FFF "wikilink")
[F4000-F4FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F4000-F4FFF "wikilink"){{.w}}[F5000-F5FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F5000-F5FFF "wikilink"){{.w}}[F6000-F6FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F6000-F6FFF "wikilink"){{.w}}[F7000-F7FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F7000-F7FFF "wikilink")
[F8000-F8FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F8000-F8FFF "wikilink"){{.w}}[F9000-F9FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_F9000-F9FFF "wikilink"){{.w}}[FA000-FAFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_FA000-FAFFF "wikilink"){{.w}}[FB000-FBFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_FB000-FBFFF "wikilink")
[FC000-FCFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_FC000-FCFFF "wikilink"){{.w}}[FD000-FDFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_FD000-FDFFF "wikilink"){{.w}}[FE000-FEFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_FE000-FEFFF "wikilink"){{.w}}[FF000-FFFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_FF000-FFFFF "wikilink")

</center>

<center>

[100000-100FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_100000-100FFF "wikilink"){{.w}}[101000-101FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_101000-101FFF "wikilink"){{.w}}[102000-102FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_102000-102FFF "wikilink"){{.w}}[103000-103FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_103000-103FFF "wikilink")
[104000-104FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_104000-104FFF "wikilink"){{.w}}[105000-105FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_105000-105FFF "wikilink"){{.w}}[106000-106FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_106000-106FFF "wikilink"){{.w}}[107000-7FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_107000-7FFF "wikilink")
[108000-108FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_108000-108FFF "wikilink"){{.w}}[109000-109FFF](https://zh.wikipedia.org/wiki/Unicode一覽表_109000-109FFF "wikilink"){{.w}}[10A000-10AFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_10A000-10AFFF "wikilink"){{.w}}[10B000-10BFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_10B000-10BFFF "wikilink")
[10C000-10CFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_10C000-10CFFF "wikilink"){{.w}}[10D000-10DFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_10D000-10DFFF "wikilink"){{.w}}[10E000-10EFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_10E000-10EFFF "wikilink"){{.w}}[10F000-10FFFF](https://zh.wikipedia.org/wiki/Unicode一覽表_10F000-10FFFF "wikilink")

</center>

<center>

[第0平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#基本多文種平面 "wikilink"){{.w}}[第一輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第一輔助平面 "wikilink"){{.w}}[第二輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第二輔助平面 "wikilink"){{.w}}[第三輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第三輔助平面 "wikilink"){{.w}}[…](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第四至十三輔助平面 "wikilink"){{.w}}[第十四輔助平面](https://zh.wikipedia.org/wiki/Unicode字符平面映射#第十四輔助平面 "wikilink"){{.w}}**第十五輔助平面**{{.w}}**第十六輔助平面**

</center>

## 參見

  - [Unicode區段](../Page/Unicode區段.md "wikilink")
  - [基本多文種平面](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")
  - [中日韓統一表意文字](../Page/中日韓統一表意文字.md "wikilink")
  - [Unicode/Character reference](http://en.wikibooks.org/wiki/Unicode/Character_reference)

## 注记

<references />

## 外部链接

  - [Unicode準則指南](http://www.unicode.org/roadmaps/index.html)
  - [基本多文种平面路线图](http://www.unicode.org/roadmaps/bmp/)

[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink")

1.  [TIP Roadmap](http://unicode.org/roadmaps/tip/)
2.  最初的「私人使用區」（Private Use Area，簡稱**PUA**）位於U+E000至U+F8FF
3.
4.  其中FDD0-FDEF段为“非字符”（Noncharacter）。
5.