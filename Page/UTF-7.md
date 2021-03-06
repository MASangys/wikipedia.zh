> 本文内容由[UTF-7](https://zh.wikipedia.org/wiki/UTF-7)转换而来。


**UTF-7**（全称：7位元Unicode轉換格式）是一種可變長度字元編碼方式，用以將[Unicode字元以](https://zh.wikipedia.org/wiki/Unicode "wikilink")[ASCII](../Page/ASCII.md "wikilink")編碼的字元串來呈現，可以應用在[電子郵件傳輸之類的應用](https://zh.wikipedia.org/wiki/電子郵件 "wikilink")。

[SMTP為基本的](https://zh.wikipedia.org/wiki/SMTP "wikilink")[電子郵件傳輸標準之一](https://zh.wikipedia.org/wiki/電子郵件 "wikilink")，其指明了傳輸格式為[US-ASCII](../Page/ASCII.md "wikilink")，並且不允許超過ASCII所定義的字元範圍以外的位元值，也就是說八位元的字串將無法正常的被傳輸。[MIME](https://zh.wikipedia.org/wiki/MIME "wikilink")（RFC 2045 \~ 2049）擴展了網路郵件以支援不同的[媒體類型以及](https://zh.wikipedia.org/wiki/媒體 "wikilink")[字元集](https://zh.wikipedia.org/wiki/字元集 "wikilink")，包含[UTF-8](../Page/UTF-8.md "wikilink")與[UTF-16的字元集皆可被指定使用](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")。但由於MIME並未明確將Unicode定義為可支援的字元集，並且也沒有說明其應如何編碼，這使得既有的SMTP傳輸架構下仍舊無法保證可正確的處理8位元資料。[base64編碼也有其問題](https://zh.wikipedia.org/wiki/base64 "wikilink")，例如甚至連純英文的[US-ASCII字元也可能會變成不可辨認](../Page/ASCII.md "wikilink")；至於像是UTF-8與[quoted-printable的編碼結合](https://zh.wikipedia.org/wiki/quoted-printable "wikilink")，則需要6～9個位元來為非ASCII的字元（Unicode的[基本多文種平面中定義的字元](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")）進行編碼，至於在基本多文種平面（BMP）以外的字原則需要多達12位元的長度才能完成編碼

## 簡介

UTF-7首次被提出是在一個實驗性的通訊協定裏（RFC 1642，A Mail-Safe Transformation Format of Unicode），這份[RFC](../Page/RFC.md "wikilink")（Request for Comments）提案後來因RFC 2152的提出而被取代（RFC 2152本身為新聞型（informational）的文案）。在RFC 2152當中明確的指出該份RFC本身不為網際網路的標準做出任何明確的定義（明列於文案前頭的Status of this Memo）。儘管這份RFC 2152在IANA（Internet Assigned Numbers Authority）的字元集列表裏被引述為UTF-7，然而UTF-7本身並非Unicode的標準之一，即使在目前最新的Unicode 5.0裏也僅列出UTF-8、UTF-16和UTF-32。

如同引言所提到的，由於在過去SMTP的傳輸僅能接受7位元的字元，而當時Unicode並無法直接滿足既有的SMTP傳輸限制，在這樣地背景下UTF-7被提出。嚴格來說UTF-7不能算是Unicode所定義的字元集之一，較精確的來說，UTF-7是提供了一種將Unicode轉換為7位元US-ASCII字元的轉換方式。

有些字元本身可以直接以單一的ASCII字元來呈現。第一個群組被稱作「direct characters」，其中包含了62個數字與英文字母，以及包含了九個符號字元：`' ( ) , - . / : ?`。這些「direct characters」被認為可以很安全的直接在文件裡呈現。另一個主要的群組稱作「optional direct characters」，其中包含了所有可被列印的字元，這些字元在U+0020～U+007E之間，除了`~ \ +`和空白字元以外。這些「optional direct characters」的使用雖可減少空間的使用也可增加人的可閱讀性，但卻會因為一些不良設計的郵件閘道而會產生一些錯誤，導致必須使用額外的跳脫字元。

空白字元、Tab字元、以及換行字元一般雖也可直接是為單一的ASCII字元來使用，然而，若是郵件中有使用了編碼過的字串，則必須特別注意這些字元有無被使用在其他地方。而加號字元`+`的一種編碼方式*可以*是`+-`。

其他的字元則必須被編碼成UTF-16然後轉換為[修改的Base64](https://zh.wikipedia.org/wiki/Base64#UTF-7 "wikilink")。這些區塊的開頭會以`+`符號來標示，結尾則以任何不在Base64裡定義的字元來標示。若是在Base64區塊之後使用`-`([連字暨減號](https://zh.wikipedia.org/wiki/連字暨減號 "wikilink"))標示為結束的話，則解碼器會從下個字元繼續解碼，反之則用此字元當非Base64的區塊的開頭繼續解碼。

## 範例

  - "`Hello, World!`"會被編碼為"`Hello, World!`"
  - "`1 + 1 = 2`"會被編碼為"`1 +- 1 +AD0 2`"
  - "`£1`"會被編碼為"`+AKM-1`".第一個字元£（英鎊的符號）的Unicode碼為U+00A3（在UTF-16即為`00A3`<sub>16</sub>），接著轉換至[修改的Base64格式](https://zh.wikipedia.org/wiki/Base64#UTF-7 "wikilink")，如同下表。表中可見有兩個位元多了出來，被以0填補上。

<!-- end list -->

  -
    {| border="1" cellpadding="5" cellspacing="0"

`| 16進位碼`
`| colspan="4" align="center"| 0`
`| colspan="4" align="center"| 0`
`| colspan="4" align="center"| A`
`| colspan="4" align="center"| 3`
`| colspan="2" |  `
`|-`
`| 2進位碼 ||0||0||0||0||0||0||0||0||1||0||1||0||0||0||1||1||0||0`
`|-`
`| 索引`
`| colspan="6" align="center"| 0`
`| colspan="6" align="center"| 10`
`| colspan="6" align="center"| 12`
`|-`
`| Base64編碼`
`| colspan="6" align="center"| A`
`| colspan="6" align="center"| K`
`| colspan="6" align="center"| M`
`|}`

## 手動編碼與解碼UTF-7的演算法

### 編碼

首先必須先決定哪些字元呈現為ASCII格式，哪些字元呈現在Unicode區塊。簡單的編碼器可以假設所有的字元皆可以很安全的被直接編碼。然而要將原本屬於Unicode區塊的字元視為ASCII來加以編碼的代價是需要額外的2⅔字元。

Unicode序列一旦被認定後，其必須以下面的程序來加以編碼，併以適當的符號加以標注：

我們將使用£† (0x00A3) (0x2020)字元序列來作為以下的範例。

1.  將字元的Unicode數值 (UTF-16)以二進位呈現：
    `0x00A3 → 0000 0000 1010 0011`
    `0x2020 → 0010 0000 0010 0000`
2.  將二進位序列合併
    `0000 0000 1010 0011 and 0010 0000 0010 0000 → 0000 0000 1010 0011 0010 0000 0010 0000`
3.  重新將二進位序列編組，以六位數為一組，由左開始：
    `0000 0000 1010 0011 0010 0000 0010 0000 → 000000 001010 001100 100000 001000 00`
4.  如果最後一組小於六位數，則不足的位數以0補足尾數：
    `0000 0000 1010 0011 0010 0000 0010 0000 → 000000 001010 001100 100000 001000 000000`
5.  將每一組六位數的數值以對應的Base64碼取代：
    `000000 001010 001100 100000 001000 000000 → AKMgIA`

### 解碼

首先訊息必須被拆分到純文字與Unicode區塊，緊接著Unicode區塊必須以下面的程序來進行解譯（使用上面提到的範例）：

1.  將每一個Base64碼以二進位序列來描述，如下：
    `AKMgIA → 000000 001010 001100 100000 001000 000000`
2.  重新將二進位編組，以使其16位數一組，從左開始：
    `000000 001010 001100 → 0000000010100011 0010000000100000 0000`
3.  若有其中一組無法完全編成16位數一組，則先排除它：
    `0000000010100011 0010000000100000`
4.  每一個16位元的一組二進位碼為Unicode（UTF-16）的數字字元並且可以被改寫為如下：
    `0000 0000 1010 0011 ≡ 0x00A3 ≡ 163`<sub>`10`</sub>

### 安全性

UTF-7由於允許將相同來源的字串從base64的模式被平移，而顯得安全性薄弱。現今的郵件與傳輸方式由於都已支援UTF-8，UTF-7則已走入歷史而很少再被使用。即便如此，現今的應用軟體仍應更加考量支援更安全的編碼方式。

然而，除了郵件傳輸之外，仍有不少傳輸是採用UTF-7編碼來進行傳輸。近期較著名的安全漏洞發生於[Google](../Page/Google.md "wikilink")的搜尋漏洞\[1\]，該漏洞肇因於不當的使用UTF-7編碼於網址資訊上，遠端的攻擊將可讀取或修改網頁內容。

### 尚未被完整開發的UTF-6和UTF-5

有些可應用於電信電報領域的UTF-6和UTF-5提案已經被提出\[2\]\[3\]，然而，截至2006年止，這些提案尚未被正式的制定出來。

這些提案與[Punycode並無相關](https://zh.wikipedia.org/wiki/Punycode "wikilink")。

## 參考

## 相關條目

[Category:Unicode轉換格式](https://zh.wikipedia.org/wiki/Category:Unicode轉換格式 "wikilink")

1.  <http://www.kb.cert.org/vuls/id/989144>, Vulnerability Note VU\#989144, Google Mini and Google Search Appliance vulnerable to cross-site scripting
2.  Seng, James, [UTF-5, a transformation format of Unicode and ISO 10646](http://www.watersprings.org/pub/id/draft-jseng-utf5-01.txt), 28 Jan 2000, retrieved 23 Aug 2007
3.