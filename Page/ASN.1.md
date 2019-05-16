在[电信和](../Page/电信.md "wikilink")[计算机网络领域](../Page/计算机网络.md "wikilink")，**ASN.1**（**Abstract
Syntax Notation One**)
是一套[标准](../Page/标准.md "wikilink")，是描述[数据的表示](https://zh.wikipedia.org/wiki/数据 "wikilink")、编码、传输、解码的灵活的记法。它提供了一套正式、无歧义和精确的规则以描述独立于特定计算机硬件的对象结构。

## 标准简介

ASN.1是[ISO和](https://zh.wikipedia.org/wiki/ISO "wikilink")[ITU-T的联合标准](https://zh.wikipedia.org/wiki/ITU-T "wikilink")，最初是1984年的[CCITT
X.409:1984的一部分](https://zh.wikipedia.org/wiki/CCITT_X.409:1984 "wikilink")。由于其广泛应用，1988年ASN.1移到独立标准**X.208**，1995年进行全面修订后变成**X.680**系列标准。

ASN.1本身只定义了表示信息的[抽象句法](https://zh.wikipedia.org/wiki/抽象句法 "wikilink")，但是没有限定其编码的方法。各种ASN.1编码规则提供了由ASN.1描述其抽象句法的数据的值的传送语法（具体表达）。标准的ASN.1编码规则有[基本编码规则](https://zh.wikipedia.org/wiki/BER "wikilink")（BER，Basic
Encoding
Rules）、[规范编码规则](https://zh.wikipedia.org/wiki/CER "wikilink")（CER，Canonical
Encoding
Rules）、[唯一编码规则](https://zh.wikipedia.org/wiki/DER "wikilink")（DER，Distinguished
Encoding
Rules）、[压缩编码规则](https://zh.wikipedia.org/wiki/PER "wikilink")（PER，Packed
Encoding
Rules）和[XML编码规则](https://zh.wikipedia.org/wiki/XER "wikilink")（XER，[XML](../Page/XML.md "wikilink")
Encoding
Rules）。为了使ASN.1能够描述一些原先没有使用ASN.1定义，因此不适用上述任一编码规则的数据传输和表示的应用和协议，另外制订了[ECN来扩展ASN](https://zh.wikipedia.org/wiki/ECN "wikilink").1的编码形式。ECN可以提供非常灵活的表明方法，但还没有得到普遍应用。

ASN.1与特定的ASN.1编码规则一起通过使用独立于计算机架构和编程语言的方法来描述数据结构，为结构化数据的交互提供了手段，特别是在网络环境的应用程序。

[应用层协议如](https://zh.wikipedia.org/wiki/应用层 "wikilink")[X.400](https://zh.wikipedia.org/wiki/X.400 "wikilink")（[email](https://zh.wikipedia.org/wiki/email "wikilink")）、[X.500和](https://zh.wikipedia.org/wiki/X.500 "wikilink")[LDAP](https://zh.wikipedia.org/wiki/LDAP "wikilink")（[目录服务](../Page/目录服务.md "wikilink")）、[H.323](../Page/H.323.md "wikilink")（[VoIP](../Page/VoIP.md "wikilink")）和[SNMP使用](https://zh.wikipedia.org/wiki/SNMP "wikilink")
ASN.1
描述它们交互的[协议数据单元](https://zh.wikipedia.org/wiki/PDU "wikilink")。在[UMTS的接入和非接入层也有广泛的应用](https://zh.wikipedia.org/wiki/UMTS "wikilink")。
ASN.1的其他应用领域参见此处[1](https://web.archive.org/web/20051023024910/http://asn1.elibel.tm.fr/en/uses/index.htm)。

这里\[[http://asn1.elibel.tm.fr/links/\#tools\]列举了很多ASN.1的自由或者商业的工具](http://asn1.elibel.tm.fr/links/#tools%5D列举了很多ASN.1的自由或者商业的工具)。

## 範例

[FooProtocol](https://zh.wikipedia.org/wiki/Foo "wikilink") 結構的定義係使用
ASN.1 表示法:

    FooProtocol DEFINITIONS ::= BEGIN

        FooQuestion ::= SEQUENCE {
            trackingNumber INTEGER,
            question       IA5String
        }

        FooAnswer ::= SEQUENCE {
            questionNumber INTEGER,
            answer         BOOLEAN
        }

    END

ASN.1沒有定義的談話流動。 這是協議的文本描述。

假設消息，符合與foo的協議將被發送到接收方。這種特定的消息（PDU）:

    myQuestion FooQuestion ::= {
        trackingNumber     5,
        question           "Anybody there?"
    }

要通過網絡發送上述消息，需要編碼成位元字串（string of
bits）。ASN.1定義了不同的算法來完成這項任務，被稱為編碼規則。有很多，最簡單的一個是DER.

Foo協議規範應明確名稱一套編碼規則的使用，Foo的協議，使用者 知道他們應該使用哪一個。

### DER的編碼範例

下面顯示DER編碼格式（皆16進位）的數據結構:

    30 -- 標籤說明 SEQUENCE
    13 -- octets長度

    02 -- 標籤說明 INTEGER
    01 -- octets長度
    05 -- value

    16 -- 標籤說明 IA5String
    0e -- octets長度
    41 6e 79 62 6f 64 79 20 74 68 65 72 65 3f -- value
    ("Anybody there?" in ASCII)

(Note: DER uses a pattern of  triplets)

人們實際上得到的是21個octets:

    30 13 02 01 05 16 0e 41 6e 79 62 6f 64 79 20 74 68 65 72 65 3f

ASN.1 的範圍與 DER 結束於此. It is possible to transmit the encoded message to
the party by any means (utilizing
[TCP](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink")
or any other protocol). The party should be able to decode the octets
back using DER.

### XER編碼的範例

另外，它是可能的編碼用XER (**ASN.1**) 來獲取更多人類可讀性 "over the wire". 可以產生下列的 108
octets:

    <FooQuestion>
        <trackingNumber>5</trackingNumber>
        <question>Anybody there?</question>
    </FooQuestion>

### PER 範例（未對齊）

另外，採用壓縮編碼規則（Packed Encoding Rules）, 會產生下列 122 bits (小於16 octets):

    01 05 0e 83 bb ce 2d f9 3c a0 e9 a3 2f 2c af c0

## 标准下载

（[从ITU-T网站免费下载](http://www.itu.int/ITU-T/studygroups/com17/languages/)）

描述ASN.1记法的标准：

  - ITU-T Rec. X.680 | ISO/IEC 8824-1
  - ITU-T Rec. X.681 | ISO/IEC 8824-2
  - ITU-T Rec. X.682 | ISO/IEC 8824-3
  - ITU-T Rec. X.683 | ISO/IEC 8824-4

描述ASN.1编码规则的标准

  - ITU-T Rec. X.690 | ISO/IEC 8825-1 (BER, CER and DER)
  - ITU-T Rec. X.691 | ISO/IEC 8825-2 (PER)
  - ITU-T Rec. X.692 | ISO/IEC 8825-3 (ECN)
  - ITU-T Rec. X.693 | ISO/IEC 8825-4 (XER)

[ASN.1标准列表](https://web.archive.org/web/20050930230347/http://asn1.elibel.tm.fr/standards/)

## 参见

  - [TTCN](https://zh.wikipedia.org/wiki/TTCN "wikilink")
  - [ECN](https://zh.wikipedia.org/wiki/ECN "wikilink")

## 参考

  - [Federal Standard
    1037C](https://zh.wikipedia.org/wiki/Federal_Standard_1037C "wikilink")
  - [MIL-STD-188](https://zh.wikipedia.org/wiki/MIL-STD-188 "wikilink")。

## 外部链接

  - [The ASN.1 Consortium](http://www.asn1.org/)
  - [ASN.1 C, C++, Java
    Tools](http://www.marben-products.com/asn.1/overview.html)
  - [](https://web.archive.org/web/20130608074223/http://www.marben-products.com/asn.1/services/decoder-asn1.html)
    Free online tool.
  - [ASN.1 IDE, Editor, Compilers](http://www.asnlab.com/products.html)
  - [ASN.1
    相关站点](https://web.archive.org/web/20051213194224/http://asn1.elibel.tm.fr/)
  - [参考资料](https://web.archive.org/web/20051023030019/http://asn1.elibel.tm.fr/fr/biblio/index.htm)
  - [其他](http://asn1.elibel.tm.fr/links/)
  - [ASN.1教程](https://web.archive.org/web/20051023025752/http://asn1.elibel.tm.fr/en/tools/tutorial/)
  - [微軟知識庫 《XGEN: A 简短简介 BER 和
    ASN 1》](http://support.microsoft.com/?scid=kb%3Bzh-cn%3B252648&x=12&y=9)

[Category:ITU-T标准](https://zh.wikipedia.org/wiki/Category:ITU-T标准 "wikilink")
[Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")