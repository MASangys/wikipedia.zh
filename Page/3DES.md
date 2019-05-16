[密码学中](../Page/密码学.md "wikilink")，**三重数据加密算法**（，縮寫為TDEA，Triple
DEA），或稱**3DES**（），是一種[對稱密鑰加密](../Page/對稱密鑰加密.md "wikilink")[块密码](https://zh.wikipedia.org/wiki/块密码 "wikilink")，相当于是对每个数据块应用三次[資料加密標準](../Page/資料加密標準.md "wikilink")（DES）算法。由于计算机运算能力的增强，原版DES密码的[密钥长度变得容易被](https://zh.wikipedia.org/wiki/密钥长度 "wikilink")[暴力破解](https://zh.wikipedia.org/wiki/暴力破解 "wikilink")；3DES即是设计用来提供一种相对简单的方法，即通过增加DES的密钥长度来避免类似的攻击，而不是设计一种全新的块密码算法。

## 标准中的定义

TDEA算法在以下标准中被定义：

  - ANS X9.52-1998 *三重数据加密算法的工作模式* (已失效)

  - [FIPS PUB 46-3 *数据加密标准
    (DES)*](http://csrc.nist.gov/publications/fips/fips46-3/fips46-3.pdf)
    (PDF) (已失效\[1\])

  -
  - [ISO/IEC 18033-3:2005
    *信息技术—安全技术—加密算法—第三部分：块密码*](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=37972)

## 算法的名称

最早的定义了该算法的标准（ANS X9.52，1998年发布）将其描述为“三重数据加密算法（TDEA）” — 即ANSI
X3.92中定义的数据加密算法（[DEA](https://zh.wikipedia.org/wiki/DEA "wikilink")）的三次重复操作
— 而完全没有使用术语“3DES”或“DES”。FIPS PUB
46-3（1999）定义了“三重数据加密算法”（TDEA），也使用了术语“Triple
DES”和“DES”。该标准中互换的使用“数据加密算法”（DEA）和“DES”的概念，其中以此开始DES的定义：  NIST SP
800-67（2004，2008）主要使用术语TDEA，但也提到了“Triple DES（TDEA）”。ISO/IEC
18033-3（2005）使用“TDEA”，但其中提到：

没有一个定义了本算法的标准使用术语“3DES”。

## 算法

3DES使用“密钥包”，其包含3个DES[密钥](https://zh.wikipedia.org/wiki/密钥 "wikilink")，K<sub>1</sub>，K<sub>2</sub>和K<sub>3</sub>，均为56位（除去[奇偶校验位](../Page/奇偶校验位.md "wikilink")）。加密算法为：

  -
    密文 = E<sub>K3</sub>(D<sub>K2</sub>(E<sub>K1</sub>(明文)))

也就是说，使用K<sub>1</sub>为密钥进行DES加密，再用K<sub>2</sub>为密钥进行DES“解密”，最后以K<sub>3</sub>进行DES加密。

而解密则为其反过程：

  -
    明文 = D<sub>K1</sub>(E<sub>K2</sub>(D<sub>K3</sub>(密文)))

即以K<sub>3</sub>解密，以K<sub>2</sub>“加密”，最后以K<sub>1</sub>解密。

每次加密操作都只处理64位数据，称为一块。

无论是加密还是解密，中间一步都是前后两步的逆。这种做法提高了使用[密钥选项](https://zh.wikipedia.org/wiki/#密钥选项 "wikilink")2时的算法强度，并在使用密钥选项3时与DES[兼容](../Page/向下兼容.md "wikilink")。

## 密钥选项

标准定义了三种密钥选项：

  - 密钥选项1：三个密钥是独立的。
  - 密钥选项2：K<sub>1</sub>和K<sub>2</sub>是独立的，而K<sub>3</sub>=K<sub>1</sub>
  - 密钥选项3：三个密钥均相等，即K<sub>1</sub>=K<sub>2</sub>=K<sub>3</sub>

密钥选项1的强度最高，拥有3 x 56 = 168个独立的密钥位。

密钥选项2的安全性稍低，拥有2 x 56 =
112个独立的密钥位。该选项比简单的应用DES两次的强度较高，即使用K<sub>1</sub>和K<sub>2</sub>，因为它可以防御[中途相遇攻击](https://zh.wikipedia.org/wiki/中途相遇攻击 "wikilink")。

密钥选项3等同与DES，只有56个密钥位。这个选项提供了与DES的兼容性，因为第1和第2次DES操作相互抵消了。该选项不再为[国家标准科技协会](https://zh.wikipedia.org/wiki/国家标准科技协会 "wikilink")（NIST）所建议\[2\]，亦不为ISO/IEC
18033-3所支持。

### 其它用于指代密钥选项的术语

“密钥选项*n*”是标准中(X9.52, FIPS PUB 46-3, SP 800-67, ISO/IEC
18033-3)定义的TDEA的术语。然而，其它标准中，推荐和通用描述中也使用了其它术语。

  - 密钥选项1：
      - 3TDEA, NIST SP 800-57\[3\]与SP 800-78-2\[4\]中
      - 三倍长度密钥，常用名称\[5\]\[6\]

<!-- end list -->

  - 密钥选项2:
      - 2TDEA，NIST SP 800-57\[7\]和SP 800-78-1\[8\]中
      - 双倍长度密钥，常用名称\[9\]\[10\]

## 对多于一个块的加密

与其它的块密码一样，对多个数据块的加密和解密可以使用多种[工作模式进行](https://zh.wikipedia.org/wiki/块密码的工作模式 "wikilink")，而模式的定义可以与块密码算法相独立。然而，ANS
X9.52和NIST SP 800-67（通过SP
800-38A\[11\]）确定了某些模式只能在特定限制下应用，而无需普遍的应用。例如，ANS
X9.52提出对于[CBC模式](https://zh.wikipedia.org/wiki/CBC "wikilink")，[初始化向量每次应当不同](https://zh.wikipedia.org/wiki/初始化向量 "wikilink")，而ISO/IEC
10116没有类似规定\[12\]。FIPS PUB 46-3和ISO/IEC
18033-3只定义了单块密码，而并没有对多块的工作模式做出限制。

## 安全性

普遍而言，有3个独立密钥的3DES（[密钥选项](https://zh.wikipedia.org/wiki/#密钥选项 "wikilink")1）的密钥长度为168位（三个56位的DES密钥），但由於[中途相遇攻击](https://zh.wikipedia.org/wiki/中途相遇攻击 "wikilink")，它的有效安全性仅为112位。密钥选项2将密钥长度缩短到了112位，但该选项对特定的[选择明文攻击和](https://zh.wikipedia.org/wiki/选择明文攻击 "wikilink")[已知明文攻击的强度较弱](https://zh.wikipedia.org/wiki/已知明文攻击 "wikilink")\[13\]\[14\]，因此NIST认定它只有80位的安全性\[15\]。

对密钥选项1的已知最佳攻击需要约2<sup>32</sup>组已知明文，2<sup>113</sup>部，2<sup>90</sup>次DES加密以及2<sup>88</sup>位内存\[16\]（该论文提到了时间和内存的其它分配方案）。这在现在是不现实的，因此NIST认为密钥选项1可以使用到2030年\[17\]。若攻击者试图在一些可能的（而不是全部的）密钥中找到正确的，有一种在内存效率上较高的攻击方法可以用每个密钥对应的少数选择明文和约2<sup>84</sup>次加密操作找到2<sup>28</sup>个目标密钥中的一个\[18\]。

## 使用

[电子货币业界普遍使用](https://zh.wikipedia.org/wiki/电子货币 "wikilink")3DES，并持续开发和宣传基于其的标准（例如[EMV](../Page/EMV.md "wikilink")）\[19\]\[20\]。

[Microsoft OneNote和](../Page/Microsoft_OneNote.md "wikilink")[Microsoft
Outlook](../Page/Microsoft_Outlook.md "wikilink")
2007使用3DES以密码保护用户数据\[21\]\[22\]。

## 注释

## 参考文献

## 参见

  - [DES](https://zh.wikipedia.org/wiki/DES "wikilink")
  - [DES-X](https://zh.wikipedia.org/wiki/DES-X "wikilink")
  - [AES](https://zh.wikipedia.org/wiki/AES "wikilink")
  - [Horst
    Feistel](https://zh.wikipedia.org/wiki/Horst_Feistel "wikilink")
  - [Walter
    Tuchman](https://zh.wikipedia.org/wiki/Walter_Tuchman "wikilink")

[de:Data Encryption
Standard\#Triple-DES](https://zh.wikipedia.org/wiki/de:Data_Encryption_Standard#Triple-DES "wikilink")

[Category:已攻破的分组密码](https://zh.wikipedia.org/wiki/Category:已攻破的分组密码 "wikilink")
[Category:数据加密标准](https://zh.wikipedia.org/wiki/Category:数据加密标准 "wikilink")

1.  Federal Register vol 70, number 96,
    [*宣告联邦信息处理标准（FIPS）46-3，“数据加密标准”（DES）；FIPS 74，“实现和使用NBS数据加密标准指导”；FIPS 81，“DES的工作模式”的失效*](http://csrc.nist.gov/publications/fips/05-9945-DES-Withdrawl.pdf)
     (PDF)

2.  NIST SP 800-67

3.  [NIST Special Publication 800-57 *密钥管理的建议\&mdash；第一部分：综述 (修订版)*,
    2007年3月](http://csrc.nist.gov/publications/nistpubs/800-57/sp800-57-Part1-revised2_Mar08-2007.pdf)
     (PDF)

4.  [NIST Special Publication 800-78-2, *个人身份认证的密码学算法与密钥长度*,
    2010年2月](http://csrc.nist.gov/publications/nistpubs/800-78-2/sp800-78-2.pdf)
     (PDF)

5.

6.

7.
8.
9.
10.
11. [NIST Special Publication 800-38A, *块密码工作模式的建议，方法和技术*,
    2001版](http://csrc.nist.gov/publications/nistpubs/800-38a/sp800-38a.pdf)
    (PDF)

12. [ISO/IEC 10116:2006 *信息技术 — 安全技术 —
    n位块密码的工作模式*](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=38761)

13. [Ralph
    Merkle](https://zh.wikipedia.org/wiki/Ralph_Merkle "wikilink"),
    [Martin
    Hellman](https://zh.wikipedia.org/wiki/Martin_Hellman "wikilink"):
    [*关于多加密的安全性*](http://www.cs.purdue.edu/homes/ninghui/courses/Spring04/homeworks/p465-merkle.pdf)
     ([PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")),
    [Communications of the
    ACM](https://zh.wikipedia.org/wiki/Communications_of_the_ACM "wikilink"),
    Vol 24, No 7, pp 465–467, July 1981.

14. [Paul van
    Oorschot](https://zh.wikipedia.org/wiki/Paul_van_Oorschot "wikilink"),
    [Michael J.
    Wiener](https://zh.wikipedia.org/wiki/Michael_J._Wiener "wikilink"),
    *一种针对双密钥三次加密的已知明文攻击*,
    [EUROCRYPT](https://zh.wikipedia.org/wiki/EUROCRYPT "wikilink")'90,
    LNCS 473, 1990, pp 318–325.

15.
16. [Stefan
    Lucks](https://zh.wikipedia.org/wiki/Stefan_Lucks "wikilink"):
    [*攻击三次加密*](http://th.informatik.uni-mannheim.de/People/Lucks/papers/pdf/3des.pdf.gz)
     ([PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")), [Fast
    Software
    Encryption](https://zh.wikipedia.org/wiki/Fast_Software_Encryption "wikilink")
    1998, pp 239–253.

17.
18. [Eli Biham](https://zh.wikipedia.org/wiki/Eli_Biham "wikilink"):
    [*如何使用2<sup>28</sup>步解密DES加密的消息*](http://www.cs.technion.ac.il/users/wwwb/cgi-bin/tr-get.cgi/1996/CS/CS0884.ps.gz)
     ([PostScript](../Page/PostScript.md "wikilink")), 1996.

19. [EMV 4.2 Specifications, *第二部 - 安全性和密钥管理*, 4.2版,
    2008年6月](http://www.emvco.com/specifications.aspx?id=155)

20. [VISA](http://www.visa.com/cisp)

21. [Daniel Escapa's OneNote Blog - Encryption for Password Protected
    Sections,
    November 2006](http://blogs.msdn.com/descapa/archive/2006/11/09/encryption-for-password-protected-sections.aspx)

22. [Microsoft - Encrypt E-mail Messages,
    Outlook 2007](http://office.microsoft.com/en-us/outlook/HP012305361033.aspx)