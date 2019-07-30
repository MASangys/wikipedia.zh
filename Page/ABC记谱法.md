**ABC记谱法**是19世纪出现的一种[记谱法](https://zh.wikipedia.org/wiki/记谱法 "wikilink")，以[A](../Page/A.md "wikilink")到[G的](https://zh.wikipedia.org/wiki/G "wikilink")[字母](../Page/字母.md "wikilink")记录[音高](../Page/音高.md "wikilink")，再配以其他[符号](../Page/符号.md "wikilink")用来记录变化音、音长等，由克里斯·瓦尔莎发明。后来由于计算机使用[ASCII](../Page/ASCII.md "wikilink")字符集又要处理[音乐](../Page/音乐.md "wikilink")，ABC记谱法再度受重视，并成为一部分音乐[软件](../Page/软件.md "wikilink")的信息存储法。

## 例子

下面是ABC记谱法

``` ABC
 X:1
 T:The Legacy Jig
 M:6/8
 L:1/8
 R:jig
 K:G
 GFG BAB | gfg gab | GFG BAB | d2A AFD |
 GFG BAB | gfg gab | age edB |1 dBA AFD :|2 dBA ABd |:
 efe edB | dBA ABd | efe edB | gdB ABd |
 efe edB | d2d def | gfe edB |1 dBA ABd :|2 dBA AFD |]
```

第一行代表去掉，由字母开始，冒号结束，indicate various aspects of the tune such as the index, when there are more than one tune in a file (X:), the title (T:), the time signature (M:), the default note length (L:), the type of tune (R:) and the key (K:). Lines following the key designation represent the tune. This example can be translated into traditional music notation using one of the abc conversion tools. For example, abcm2ps software produces output that looks like the following image:

<score lang="ABC">

`X:1`
`T:The Legacy Jig`
`M:6/8`
`L:1/8`
`R:jig`
`K:G`
`GFG BAB | gfg gab | GFG BAB | d2A AFD |`
`GFG BAB | gfg gab | age edB |1 dBA AFD :|2 dBA ABd |:`
`efe edB | dBA ABd | efe edB | gdB ABd |`
`efe edB | d2d def | gfe edB |1 dBA ABd :|2 dBA AFD |]`

</score>

更多例子请看[Chris Walshaw's abc examples page](http://abcnotation.com/examples.html) which displays almost extensively abc basic features, except rest that are noted "z".

下面是《Frere Jacques》的ABC记谱法例子。

```
 X:1
 T:Frère Jacques
 M:4/4
 L:1/8
 K:F
 F2 G2 A2 F2 | F2 G2 A2 F2 | A2 B2 c4 | A2 B2 c4 |
 cd cB A2 F2 | cd cB A2 F2 | G2 C2 F4 | G2 C2 F4 ||
```

X表示序号（大概意思）

T表示歌名（此例中为其原来的法语）

M表示拍号

L表示最短音符

K表示调号

用“CDEFGAB”表示1\~7（[简谱](https://zh.wikipedia.org/wiki/简谱 "wikilink")）。2表示最短音符的二倍，3表示三倍。|表示小节线，||或|\]表示终止线，|:和:|表示反复。高音用小写字母，在高就加撇号（'），低音加逗号（,）。

<score lang="ABC"> X:1 T:Frère Jacques M:4/4 L:1/8 K:F F2 G2 A2 F2 | F2 G2 A2 F2 | A2 B2 c4 | A2 B2 c4 | cd cB A2 F2 | cd cB A2 F2 | G2 C2 F4 | G2 C2 F4 || </score>

[Category:記譜法](https://zh.wikipedia.org/wiki/Category:記譜法 "wikilink") [Category:樂譜檔案格式](https://zh.wikipedia.org/wiki/Category:樂譜檔案格式 "wikilink")