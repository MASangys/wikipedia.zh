（，擴增二进式十进交換碼），为[IBM於](../Page/IBM.md "wikilink")1963年－1964年间推出的字元编码表，根据早期[打孔机式的](../Page/打孔卡.md "wikilink")**[二进化十进数](../Page/二進碼十進數.md "wikilink")**（*BCD*，*Bindary
Coded Decimal*）排列而成。是IBM迷尔級以上電腦的標準碼。

它的缺点是：英文字母不是连续地排列，中间出现多次断续，为撰写程式的人带来了一些困难。

## 字符对应

EBCDIC编码表本来有58个字符，如下图<span style="background-color:#e8e8e8;">灰色底</span>所示。后来于各版本的编码表中，加入了其他字符，以符合各地使用者所需。

以下是其中两个版本的EBCDIC编码表：CP037（英语）及CP500（多语言\#5）。

| **EBCDIC CP037** |
| ---------------- |
|                  |
| 0x               |
| 1x               |
| 2x               |
| 3x               |
| 4x               |
| 5x               |
| 6x               |
| 7x               |
| 8x               |
| 9x               |
| Ax               |
| Bx               |
| Cx               |
| Dx               |
| Ex               |
| Fx               |

| **EBCDIC CP500** |
| ---------------- |
|                  |
| 0x               |
| 1x               |
| 2x               |
| 3x               |
| 4x               |
| 5x               |
| 6x               |
| 7x               |
| 8x               |
| 9x               |
| Ax               |
| Bx               |
| Cx               |
| Dx               |
| Ex               |
| Fx               |

於编码表中，0x00 - 0x3F及0xFF为控制字元，0x40为空格，0x41为不换行空格（no-break
space），0xCA为选择性连字号（soft hyphen）。

## 参见

  - [ASCII](../Page/ASCII.md "wikilink")
  - [Unicode](../Page/Unicode.md "wikilink")

## 外部链接

  - [F.0 Appendix F. Code
    Pages](http://publib.boulder.ibm.com/cgi-bin/bookmgr/BOOKS/QB3AQ501/F.0)
    from [AS/400 International Application Development
    V4R2](http://publib.boulder.ibm.com/cgi-bin/bookmgr/BOOKS/QB3AQ501/CCONTENTS)
  - [ICU Character Mapping
    Tables](http://www.icu-project.org/charts/charset/)
    包含EBCDIC与Unicode的对应表
  - [LegacyJ- EBCDIC
    Table](https://web.archive.org/web/20041208161204/http://www.legacyj.com/cobol/ebcdic.html)
  - [Computer Character Set
    Table](https://web.archive.org/web/20031021033105/http://www.geocities.com/mikes_javascript/hex_table_ascii.html)
  - [Unicode Technical Report \#16:
    UTF-EBCDIC](http://www.unicode.org/reports/tr16/#Table%201)

[Category:字符集](https://zh.wikipedia.org/wiki/Category:字符集 "wikilink")