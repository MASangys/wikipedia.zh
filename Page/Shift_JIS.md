**Shift_JIS**是[日本](../Page/日本.md "wikilink")电脑系统常用的编码表，能容纳[全形及](https://zh.wikipedia.org/wiki/全形 "wikilink")[半形](https://zh.wikipedia.org/wiki/半形 "wikilink")[拉丁字母](../Page/拉丁字母.md "wikilink")、[平假名](../Page/平假名.md "wikilink")、[片假名](../Page/片假名.md "wikilink")、[符号](../Page/符号.md "wikilink")及[日语](../Page/日语.md "wikilink")汉字。

命名为Shift_JIS的原因，是在放置全形字符时，要避开原本在0xA1-0xDF放置的[半角假名字符](https://zh.wikipedia.org/wiki/半角假名 "wikilink")。

[微软](../Page/微软.md "wikilink")及[IBM](../Page/IBM.md "wikilink")的日语电脑系统即使用了这个编码表，称为**CP932**。

## 字节结构

以下字元在Shift_JIS使用一个字节来表示。

  -
    [ASCII](../Page/ASCII.md "wikilink")字符（0x20-0x7E），但“\\”被“¥”取代
    ASCII[控制字符](../Page/控制字符.md "wikilink")（0x00-0x1F、0x7F）
    [JIS X 0201标准内的半角标点及片假名](../Page/JIS_X_0201.md "wikilink")（0xA1-0xDF）
    在部分操作系统中，0xA0用来放置“不换行空格”。

以下字元在Shift_JIS使用两个字节来表示。

  -
    [JIS X 0208字集的所有字符](../Page/JIS_X_0208.md "wikilink")
      -
        “第一位字节”使用0x81-0x9F、0xE0-0xEF（共47个）
        “第二位字节”使用0x40-0x7E、0x80-0xFC（共188个）
    使用者定义区
      -
        “第一位字节”使用0xF0-0xFC（共13个）
        “第二位字节”使用0x40-0x7E、0x80-0xFC（共188个）

在Shift_JIS编码表中，并未使用0xFD、0xFE及0xFF。

在[微软](../Page/微软.md "wikilink")及[IBM](../Page/IBM.md "wikilink")的日语电脑系统中，在0xFA、0xFB及0xFC的两字节区域，加入了388个JIS X 0208没有收录的符号和汉字。

## Shift_JIS编码表

<table>
<tbody>
<tr class="odd">
<td><table>
<caption>第一字节</caption>
<thead>
<tr class="header">
<th></th>
<th><p>0</p></th>
<th><p>1</p></th>
<th><p>2</p></th>
<th><p>3</p></th>
<th><p>4</p></th>
<th><p>5</p></th>
<th><p>6</p></th>
<th><p>7</p></th>
<th><p>8</p></th>
<th><p>9</p></th>
<th><p>A</p></th>
<th><p>B</p></th>
<th><p>C</p></th>
<th><p>D</p></th>
<th><p>E</p></th>
<th><p>F</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>␀</p></td>
<td><p>␁</p></td>
<td><p>␂</p></td>
<td><p>␃</p></td>
<td><p>␄</p></td>
<td><p>␅</p></td>
<td><p>␆</p></td>
<td><p>␇</p></td>
<td><p>␈</p></td>
<td><p>␉</p></td>
<td><p>␊</p></td>
<td><p>␋</p></td>
<td><p>␌</p></td>
<td><p>␍</p></td>
<td><p>␎</p></td>
<td><p>␏</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>␐</p></td>
<td><p>␑</p></td>
<td><p>␒</p></td>
<td><p>␓</p></td>
<td><p>␔</p></td>
<td><p>␕</p></td>
<td><p>␖</p></td>
<td><p>␗</p></td>
<td><p>␘</p></td>
<td><p>␙</p></td>
<td><p>␚</p></td>
<td><p>␛</p></td>
<td><p>␜</p></td>
<td><p>␝</p></td>
<td><p>␞</p></td>
<td><p>␟</p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>␠</p></td>
<td><p>!</p></td>
<td><p>"</p></td>
<td><p>#</p></td>
<td><p>$</p></td>
<td><p>%</p></td>
<td><p>&amp;</p></td>
<td><p>"</p></td>
<td><p>(</p></td>
<td><p>)</p></td>
<td><p>*</p></td>
<td><p>+</p></td>
<td><p>,</p></td>
<td><p>-</p></td>
<td><p>.</p></td>
<td><p>/</p></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>0</p></td>
<td><p>1</p></td>
<td><p>2</p></td>
<td><p>3</p></td>
<td><p>4</p></td>
<td><p>5</p></td>
<td><p>6</p></td>
<td><p>7</p></td>
<td><p>8</p></td>
<td><p>9</p></td>
<td><p>:</p></td>
<td><p>;</p></td>
<td><p>&lt;</p></td>
<td><p>=</p></td>
<td><p>&gt;</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>@</p></td>
<td><p>A</p></td>
<td><p>B</p></td>
<td><p>C</p></td>
<td><p>D</p></td>
<td><p>E</p></td>
<td><p>F</p></td>
<td><p>G</p></td>
<td><p>H</p></td>
<td><p>I</p></td>
<td><p>J</p></td>
<td><p>K</p></td>
<td><p>L</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
<td><p>O</p></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>P</p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
<td><p>S</p></td>
<td><p>T</p></td>
<td><p>U</p></td>
<td><p>V</p></td>
<td><p>W</p></td>
<td><p>X</p></td>
<td><p>Y</p></td>
<td><p>Z</p></td>
<td><p>[</p></td>
<td><p>¥</p></td>
<td><p>]</p></td>
<td><p>^</p></td>
<td><p>_</p></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>`</p></td>
<td><p>a</p></td>
<td><p>b</p></td>
<td><p>c</p></td>
<td><p>d</p></td>
<td><p>e</p></td>
<td><p>f</p></td>
<td><p>g</p></td>
<td><p>h</p></td>
<td><p>i</p></td>
<td><p>j</p></td>
<td><p>k</p></td>
<td><p>l</p></td>
<td><p>m</p></td>
<td><p>n</p></td>
<td><p>o</p></td>
</tr>
<tr class="even">
<td><p>7</p></td>
<td><p>p</p></td>
<td><p>q</p></td>
<td><p>r</p></td>
<td><p>s</p></td>
<td><p>t</p></td>
<td><p>u</p></td>
<td><p>v</p></td>
<td><p>w</p></td>
<td><p>x</p></td>
<td><p>y</p></td>
<td><p>z</p></td>
<td><p>{</p></td>
<td><p>|</p></td>
<td><p>}</p></td>
<td><p>‾</p></td>
<td><p>␡</p></td>
</tr>
<tr class="odd">
<td><p>8</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>9</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A</p></td>
<td></td>
<td><p>｡</p></td>
<td><p>｢</p></td>
<td><p>｣</p></td>
<td><p>､</p></td>
<td><p>･</p></td>
<td><p>ｦ</p></td>
<td><p>ｧ</p></td>
<td><p>ｨ</p></td>
<td><p>ｩ</p></td>
<td><p>ｪ</p></td>
<td><p>ｫ</p></td>
<td><p>ｬ</p></td>
<td><p>ｭ</p></td>
<td><p>ｮ</p></td>
<td><p>ｯ</p></td>
</tr>
<tr class="even">
<td><p>B</p></td>
<td><p>ｰ</p></td>
<td><p>ｱ</p></td>
<td><p>ｲ</p></td>
<td><p>ｳ</p></td>
<td><p>ｴ</p></td>
<td><p>ｵ</p></td>
<td><p>ｶ</p></td>
<td><p>ｷ</p></td>
<td><p>ｸ</p></td>
<td><p>ｹ</p></td>
<td><p>ｺ</p></td>
<td><p>ｻ</p></td>
<td><p>ｼ</p></td>
<td><p>ｽ</p></td>
<td><p>ｾ</p></td>
<td><p>ｿ</p></td>
</tr>
<tr class="odd">
<td><p>C</p></td>
<td><p>ﾀ</p></td>
<td><p>ﾁ</p></td>
<td><p>ﾂ</p></td>
<td><p>ﾃ</p></td>
<td><p>ﾄ</p></td>
<td><p>ﾅ</p></td>
<td><p>ﾆ</p></td>
<td><p>ﾇ</p></td>
<td><p>ﾈ</p></td>
<td><p>ﾉ</p></td>
<td><p>ﾊ</p></td>
<td><p>ﾋ</p></td>
<td><p>ﾌ</p></td>
<td><p>ﾍ</p></td>
<td><p>ﾎ</p></td>
<td><p>ﾏ</p></td>
</tr>
<tr class="even">
<td><p>D</p></td>
<td><p>ﾐ</p></td>
<td><p>ﾑ</p></td>
<td><p>ﾒ</p></td>
<td><p>ﾓ</p></td>
<td><p>ﾔ</p></td>
<td><p>ﾕ</p></td>
<td><p>ﾖ</p></td>
<td><p>ﾗ</p></td>
<td><p>ﾘ</p></td>
<td><p>ﾙ</p></td>
<td><p>ﾚ</p></td>
<td><p>ﾛ</p></td>
<td><p>ﾜ</p></td>
<td><p>ﾝ</p></td>
<td><p>ﾞ</p></td>
<td><p>ﾟ</p></td>
</tr>
<tr class="odd">
<td><p>E</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>F</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><table>
<caption>第二字节</caption>
<thead>
<tr class="header">
<th></th>
<th><p>0</p></th>
<th><p>1</p></th>
<th><p>2</p></th>
<th><p>3</p></th>
<th><p>4</p></th>
<th><p>5</p></th>
<th><p>6</p></th>
<th><p>7</p></th>
<th><p>8</p></th>
<th><p>9</p></th>
<th><p>A</p></th>
<th><p>B</p></th>
<th><p>C</p></th>
<th><p>D</p></th>
<th><p>E</p></th>
<th><p>F</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>7</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>8</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>9</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>B</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>C</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>D</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>E</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>F</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="even">
<td><p> </p></td>
<td></td>
</tr>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td></td>
<td><p>不能印刷的ASCII字符</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>沒有改動過的ASCII字符</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>改動過的ASCII字符</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>1-字節半寬片假名</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2-字節JIS X 0208字符的第1個字節</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>不用作JIS X 0208字符的第1個字節</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>在第二字节的一个双字节字符的JIS X 0208在上之一半的JIS序列为奇数</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>在第二字节的一个双字节字符的JIS X 0208在上之一半的JIS序列为偶数</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>不用作JIS X 0208字符的第2個字節</p></td>
</tr>
</tbody>
</table></td>
<td></td>
</tr>
</tbody>
</table>

## JIS转换方法

  -
    <math>s_1 = \\begin{cases} \\left \\lfloor \\frac{j_1 + 1}{2} \\right \\rfloor + 112 & \\mbox{when } 33 \\le j_1 \\le 94 \\\\

`                          \left \lfloor \frac{j_1 + 1}{2} \right \rfloor + 176  & \mbox{when } 95 \le j_1 \le 126             \end{cases}`</math>

  -
    <math>s_2 = \\begin{cases} j_2 + 31 + \\left \\lfloor \\frac{j_2}{96} \\right \\rfloor & \\mbox{when } j_1 \\mbox{ is odd}\\\\

`                          j_2 + 126 & \mbox{when } j_1 \mbox{ is even}`
`            \end{cases}`</math>

## 参看

  - [ASCII](../Page/ASCII.md "wikilink")
  - [JIS X 0201](../Page/JIS_X_0201.md "wikilink")
  - [JIS X 0208](../Page/JIS_X_0208.md "wikilink")
  - [ISO/IEC 2022](https://zh.wikipedia.org/wiki/ISO/IEC_2022 "wikilink")
  - [EUC](../Page/EUC.md "wikilink")
  - [日本工業標準](https://zh.wikipedia.org/wiki/日本工業標準 "wikilink")

## 外部链接

  - [微软CP932编码表](http://www.microsoft.com/globaldev/reference/dbcs/932.htm)
  - [Ping: Japanese text encoding](http://lfw.org/text/jp.html)
  - [Shift_JIS中，非ASCII部分的编码表](http://www.rikai.com/library/kanjitables/kanji_codes.sjis.shtml)
  - Forms of Shift-JIS in ICU ([International Components for Unicode](https://zh.wikipedia.org/wiki/International_Components_for_Unicode "wikilink"))
      - [ibm-942 (sjis78)](http://demo.icu-project.org/icu-bin/convexp?conv=ibm-942)
      - [ibm-943 (Contains the \\u00A5 ↔ \\x5C mapping)](http://demo.icu-project.org/icu-bin/convexp?conv=ibm-943)
      - [Shift JIS (Contains the \\u005C ↔ \\x5C mapping)](http://demo.icu-project.org/icu-bin/convexp?conv=Shift_JIS)
  - [Shift_JIS的发展](http://www.atmarkit.co.jp/fjava/rensai3/mojibake02/mojibake02.html)

[Category:日語編碼](https://zh.wikipedia.org/wiki/Category:日語編碼 "wikilink") [Category:字符集](https://zh.wikipedia.org/wiki/Category:字符集 "wikilink")