**語言标签**是[語言代碼的缩写表示](https://zh.wikipedia.org/wiki/語言代碼 "wikilink")，例如*en*表示英语，*pt-BR*表示巴西葡萄牙语。由[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")
(IETF)的“ 47”文档系列定义。现在标准化为RFC 5646 (引用了相关的RFC 5645)与RFC 4647,
*[IANA语言子标签登记](../Page/互联网号码分配局.md "wikilink")*。\[1\]\[2\]\[3\]\[4\]使用的各成分来自[ISO
639](../Page/ISO_639.md "wikilink"), [ISO
15924](../Page/ISO_15924.md "wikilink"), [ISO
3166-1](../Page/ISO_3166-1.md "wikilink"), [UN
M.49](../Page/UN_M.49.md "wikilink").

这种语言标签用于许多现代的计算标准，包括IETF的互联网协议如[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink"),\[5\]\[6\]
[XML](../Page/XML.md "wikilink")\[7\]
以及[PNG](../Page/PNG.md "wikilink"),\[8\]，[SGML](../Page/SGML.md "wikilink")，[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，[ANSI](https://zh.wikipedia.org/wiki/ANSI "wikilink")，[ECMA](https://zh.wikipedia.org/wiki/Ecma_International "wikilink")。Microsoft的Windows操作系统使用它代替过时的LCID，来表示[locale](https://zh.wikipedia.org/wiki/locale "wikilink")。

## 历史

IETF语言标签的最早版本是1995年3月发布的RFC 1766。使用ISO 639的2字母语言代码，ISO
3166的2字母国家地区代码，允许登记的标签携带variant或书写文字子标签。

2001年1月发布RFC 3066, 使用ISO 639-2的3字母语言代码。

2006年9月发布RFC 4646 (规范的主体)与RFC 4647 (处理匹配行为)。RFC 4646增加了使用ISO 15924
的4字母书写文字代码与UN M.49的3数字地理分区码。

2009年9月发布RFC 5646，引入了3字符码的ISO 639-3与639-5作为语言子标签。\[9\]

## 语言标签的语法

语言标签由一个或多个子标签（subtags）组成，用连字号(-)分隔。子标签只能由基本拉丁字母或数字组成。子标签出现顺序：

  - 一个主语言子标签（primary language subtag），[ISO
    639-1](../Page/ISO_639-1.md "wikilink") (2002)的2字母语言代码，[ISO
    639-2](../Page/ISO_639-2.md "wikilink") (1998)或[ISO
    639-3](../Page/ISO_639-3.md "wikilink") (2007)或[ISO
    639-5](https://zh.wikipedia.org/wiki/ISO_639-5 "wikilink")
    (2008)的3字母语言代码, BCP 47登记的5到8个字母的语言代码。应保持同样的大小写。
  - 最多3个可选的*extended language subtags*，每个由3字母组成。实际上还没有使用。
  - 1个可选的脚本子标签（script subtag），[ISO
    15924的](../Page/ISO_15924.md "wikilink")4字母书写文字代码，通常是title case。
  - 1个可选的地区子标签（region subtag），[ISO 3166-1
    alpha-2的](https://zh.wikipedia.org/wiki/ISO_3166-1_alpha-2 "wikilink")2字母地区代码(通常大写)，或[UN
    M.49的](../Page/UN_M.49.md "wikilink")3数字地理区代码。
  - 可选的*variant subtags*，每个为5至8个字母，或者4字母后跟1个数字。由IANA登记。
  - 可选的*extension
    subtags*，每个为单字符（不允许“x”）开始（这称为singleton），后跟连字符与2至8个字符组成的文本。\[10\]<sup>,</sup>\[11\]
  - 1个可选的*private-use subtag*, 每个为*x-*后跟1至8个字符组成文本。

例外情况是*x-*前缀开头的私用语言标签，向后兼容的grandfathered语言标签（包括*i-*前缀与以前登记的老的语言标签）。

上述未指明的子标签应该小写。实际上整个语言标签是大小写无关的。

可选的script与region子标签如果没有提供可辨识信息，则将被忽略。例如拉丁字母拼写的西班牙语*es-Latn*，日本的日语*ja-JP*。

并不是所有语言区域都有有效的区域子标签：主语言的国内方言区被登记为variant子标签。例如，*valencia*
variant子标签用于[加泰罗尼亚语的](../Page/加泰罗尼亚语.md "wikilink")[巴倫西亞語方言](../Page/巴倫西亞語.md "wikilink")。由于该方言几乎只用于西班牙国内，区域子标签*ES*通常忽略。

宏语言（macrolanguage）中的语言代码或者直接用语言子标签表示，如普通话*cmn*；或者用语言-扩展子标签的组合，如*zh-cmn*。

手語用扩展子标签，前缀为*sgn*。

## 与其他国际标准的关系

虽然源自[ISO或](https://zh.wikipedia.org/wiki/International_Organization_for_Standardization "wikilink")[UN的标准](https://zh.wikipedia.org/wiki/United_Nations "wikilink")，但并不是严格遵循。特别是[ISO
639](../Page/ISO_639.md "wikilink"), [ISO
15924](../Page/ISO_15924.md "wikilink"), [ISO
3166](../Page/ISO_3166.md "wikilink"), [UN
M.49等标准撤回某些编码](../Page/UN_M.49.md "wikilink")，甚至改变某些编码所指的时候，RFC
4646规定语言标签仍然保持最初含义不变。

### ISO 639-3 与 ISO 639-1

RFC
4646之前登记的语言标签现在分为"grandfathered"或"redundant"，视其是否满足目前的语法而定。并且是过时的。现在采用ISO
639-3语言子标签。例如，*nan*取代了*zh-min-nan*表示[闽南语](https://zh.wikipedia.org/wiki/闽南语 "wikilink")；*hak*取代了*i-hak*、*zh-hakka*表示[客家话](https://zh.wikipedia.org/wiki/客家话 "wikilink")；*ase*取代了*sgn-US*表示[美國手語](../Page/美國手語.md "wikilink")。

### ISO 639-5 与 ISO 639-2

[ISO
639-5使用](https://zh.wikipedia.org/wiki/ISO_639-5 "wikilink")3字母表示一个语言群中所有的语言。而ISO
639-2使用3字母表示一个语言群中没有独立语言标签的那些语言。例如，ISO 639-2代码*afa*表示"Afro-Asiatic
(Other)"，不包含阿拉伯语。而ISO 639-5中的这个代码表示"Afro-Asiatic
languages"，包含亚非语系所有语言。这一变化发生在2009年。\[12\]

ISO 639-5为了向后兼容ISO 639-2，对于这些老的代码，定义了grouping type attribute。

BCP 47定义了"Scope"属性用于语言集子标签的辨别。但是没有定义任何inclusive或exclusive属性，也没有使用ISO
639-5的grouping type attribute。

ISO 639-5没有定义哪些语言属于某个语言集。因此RFC 5646不建议使用语言集，除非是那些非特定的语言集，如"Multiple
languages"与 "Undetermined"。

### ISO 15924, ISO/IEC 10646 与 Unicode

某些主语言子标签携带了属性"Suppress-Script"，通常某个书写系统适用于该语言。因此会忽略script子标签。例如，*yi*取代了*yi-Hebr*
，因为[意地绪语总是使用希伯来字母书写](https://zh.wikipedia.org/wiki/意地绪语 "wikilink")。

另一个例子，*zh-Hans-SG*可被认为等价于*zh-Hans*，因为新加坡简体中文与其他简体中文几乎一样。但是，这里的script子标签显然是有意义的。

### ISO 3166-1 与 UN M.49

当语言的地区方言有专门的子标签，这比使用地区子标签更优。例如，*ar-DZ*应该被*arq*代替来表示[阿爾及利亞阿拉伯語](https://zh.wikipedia.org/wiki/阿爾及利亞阿拉伯語 "wikilink")。

## 扩展

*Extension*子标签（不要与*extended*语言子标签混淆）允许附加额外的信息，如locale，calendar，currency。

至2014年1月已经分配了两种扩展。

### Extension T

2012年2月，[Unicode Consortium在RFC](../Page/統一碼聯盟.md "wikilink")
6497发布了Extension
T用于语言标签包含信息关于音译（transliterated），转写（transcribed），变换（transformed）。例如，*en-t-jp*用于从日语翻译到英语。

### Extension U (Unicode Locale)

2010年12月，[Unicode Consortium在RFC](../Page/統一碼聯盟.md "wikilink")
6067发布了Extension U，允许在(CLDR)中嵌入了宽属性，表示很多locale数据集。

例如：

  - *ar-u-nu-latn*表示阿拉伯语使用[阿拉伯数字](../Page/阿拉伯数字.md "wikilink")
    (0至9)代替[阿拉伯文数字](../Page/阿拉伯文数字.md "wikilink") (٠至٩)
  - *he-IL-u-ca-hebrew-tz-jeruslm*表示以色列的希伯来语，使用[希伯來曆](../Page/希伯來曆.md "wikilink")，[时区信息数据库中的](../Page/时区信息数据库.md "wikilink")"Asia/Jerusalem"时区。

## Windows操作系统的使用

Windows Vista及以后版本，采用RFC 4646作为locale标签，字符串最大长度85，包含了结尾的零字符。

只有语言子标签，称为中立locale（neutral locale）。加上地区子标签，称为specific
locale。格式为<language>-

<Script>

\-<REGION>，例如"uz-Latn-UZ"表示乌兹别克斯坦的使用拉丁字母的乌兹别克语。

排序规则应写为<language>-

<Script>

\-<REGION>_<sort order>

## 参见

  - [国际化与本地化](../Page/国际化与本地化.md "wikilink")
  - [Locale](https://zh.wikipedia.org/wiki/Locale "wikilink")
  - [語言代碼](https://zh.wikipedia.org/wiki/語言代碼 "wikilink")

## 参考文献

## 外部链接

  - [BCP 47 Language Tags](http://tools.ietf.org/rfc/bcp/bcp47.txt) –
    current specification (contains two RFCs, RFC 5646 and RFC 4647
    published separately at different dates, but concatenated in a
    single document)
      - (also referencing the related informational RFC 5645, which
        complements the previous informational RFC 4645, as well other
        individual registration forms published separately by others for
        each language added or modified in the Registry between these
        BCP 47 revisions)
  - [Language Subtag
    Registry](http://www.iana.org/assignments/language-subtag-registry)
    – maintained by IANA
  - [Language Subtag Registry
    Search](https://r12a.github.io/app-subtags/) – find subtags and view
    entries in the Registry
  - [Language tags in HTML and
    XML](http://www.w3.org/International/articles/language-tags/Overview.en.php)
    – from the W3C
  - <http://www.langtag.net/>

[Category:ISO标准](https://zh.wikipedia.org/wiki/Category:ISO标准 "wikilink")
[Category:语言](https://zh.wikipedia.org/wiki/Category:语言 "wikilink")
[Category:Unique_identifiers](https://zh.wikipedia.org/wiki/Category:Unique_identifiers "wikilink")

1.  <http://www.iana.org/assignments/language-subtag-registry>
2.
3.  <http://www.iana.org/assignments/language-tag-extensions-registry>
4.
5.
6.
7.
8.
9.  [Language Tag Registry Update
    charter](http://www.ietf.org/html.charters/ltru-charter.html)
10.
11.
12.