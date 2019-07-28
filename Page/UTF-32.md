**UTF-32**是32位[Unicode转换格式](https://zh.wikipedia.org/wiki/Unicode "wikilink")（Unicode
Transformation Formats，
或UTF）的缩写。**UTF-32**是一种用于编码[Unicode的协定](https://zh.wikipedia.org/wiki/Unicode "wikilink")，该协定使用32位比特对每个Unicode[码位进行编码](https://zh.wikipedia.org/wiki/码位 "wikilink")（但前导比特数必须为零，故仅能表示2<sup>21</sup>个Unicode[码位](https://zh.wikipedia.org/wiki/码位 "wikilink")）。与其他可变长度的Unicode转换格式（UTF）相比，UTF-32编码长度是固定的，UTF-32中的每个32位值代表一个Unicode码位，并且与该码位的数值完全一致。

UTF-32的主要优点是可以直接由Unicode码位来索引。在编码序列中查找第N个编码是一个[常数时间操作](https://zh.wikipedia.org/wiki/常数时间 "wikilink")。相比之下，其他可变长度编码需要进行[循序存取操作才能在编码序列中找到第N个编码](https://zh.wikipedia.org/wiki/循序存取 "wikilink")。这使得在计算机程序设计中，编码序列中的字符位置可以用一个整数来表示，整数加一即可得到下一个字符的位置，就和ASCII字符串一样简单。

UTF-32的主要缺点是每个码位使用四个字节，空间浪费较多。在大多数文本中，非[基本多文種平面的字符非常罕见](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")，这使得UTF-32所需空间接近[UTF-16的两倍和](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")[UTF-8](../Page/UTF-8.md "wikilink")的四倍（具体取决于文本中ASCII字符的比例）。

尽管每一個碼位使用固定長度的位元組看似方便，但UTF-32並不如其它Unicode編碼使用廣泛。與[UTF-8](../Page/UTF-8.md "wikilink")及[UTF-16相比](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")，UTF-32更容易遭到截斷。即使使用了"定寬"字型，在大多数情况下用UTF-32計算顯示字串的寬度也并不比其他编码更加容易。主要原因是，存在著一個字符位置會有多於一種可能的碼點（[結合字符](https://zh.wikipedia.org/wiki/結合字符 "wikilink")）或一個碼點用多於一個字符位置（如[CJK表意字符](https://zh.wikipedia.org/wiki/CJK "wikilink")）。結合符號也意味著，文書編輯者不能將一個码位視同一個編輯上的單位。

## 歷史

原本[ISO
10646標準定義了一個](https://zh.wikipedia.org/wiki/ISO_10646 "wikilink")32位元的*編碼形式*，稱作**UCS-4**，[通用字符集](../Page/通用字符集.md "wikilink")（UCS）的每一個字符由0到[十六進制的](https://zh.wikipedia.org/wiki/十六進制 "wikilink")7FFFFFFF的31位数值表示（符号位未使用且零）。UCS-4足以用來表示所有的Unicode的字碼空間，其最大的碼位為十六進制的7FFFFFFF，所以其空間約20亿個碼位。2003年11月，由于[UTF-16编码形式的限制](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")，RFC
3629标准将Unicode限制为仅支持U+10FFFF以内的[码位](https://zh.wikipedia.org/wiki/码位 "wikilink")（另外U+D800到U+DFFF范围内也被保留使用）\[1\]\[2\]。虽然在之前的ISO标准（1998年的Unicode
2.1）中0xE00000到0xFFFFFF和0x60000000到0x7FFFFFFF这些区域被分配给“保留私人使用”，但这些区域也在后续版本中被删除。在
ISO/IEC JTC 1/SC 2
WG2申明中规定UCS-4将来所有的字符分配将被限制在Unicode范围内，所以UTF-32和UCS4能表示的字符是相同的。

## 註釋

## 外部連結

  - [（英文）The Unicode
    Standard 4.1，第三章](http://www.unicode.org/versions/Unicode4.0.0/ch03.pdf)
    - 在§3.10, D43-D4中正式定義 UTF-32
  - [（英文）Unicode Standard Annex
    \#19](http://www.unicode.org/reports/tr19/tr19-9.html) - Unicode 3.x
    中正式定義的 UTF-32（2001 年三月；最後更新於 2002 年三月）
  - [（英文）註冊新字集：UTF-32, UTF-32BE,
    UTF-32LE](https://web.archive.org/web/20050330110411/http://mail.apps.ietf.org/ietf/charsets/msg01095.html)
    - IANA 字符集新增 UTF-32的宣言（2002 年四月）

[Category:Unicode轉換格式](https://zh.wikipedia.org/wiki/Category:Unicode轉換格式 "wikilink")
[Category:字符編碼](https://zh.wikipedia.org/wiki/Category:字符編碼 "wikilink")

1.  [ISO/IEC 10646:2014](http://standards.iso.org/ittf/PubliclyAvailableStandards/index.html)
    Clause 9.4: "Because surrogate code points are not UCS scalar
    values, UTF-32 code units in the range 0000 D800-0000 DFFF are
    ill-formed". Clause 4.57: "\[UCS codespace\] consisting of the
    integers from 0 to 10 FFFF (hexadecimal)". Clause 4.58: "\[UCS
    scalar value\]  any UCS code point except high-surrogate and
    low-surrogate code points".
2.  [Mapping code points to Unicode encoding
    forms](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=IWS-AppendixA),
    § 1: UTF-32