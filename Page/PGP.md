**PGP**（，中文翻译「优良保密协议」）是一套用于讯息加密、验证的应用程式，采用[IDEA的散列](../Page/國際資料加密演算法.md "wikilink")[演算法作为加密和验证之用](https://zh.wikipedia.org/wiki/演算法 "wikilink")。

PGP的主要开发者是[菲尔·齐默曼](https://zh.wikipedia.org/wiki/菲尔·齐默曼 "wikilink")。齐默曼于1991年将PGP在互联网上免费发布。PGP本身是商业应用程序；[开源并具有同类功能的工具名为](../Page/开源软件.md "wikilink")[GnuPG](../Page/GnuPG.md "wikilink")（GPG）。PGP及其同类产品均遵守[OpenPGP数据加解密标准](https://zh.wikipedia.org/wiki/#OpenPGP "wikilink")（RFC 4880）。

## PGP加密如何工作

PGP[加密由一系列](https://zh.wikipedia.org/wiki/加密 "wikilink")[散列](https://zh.wikipedia.org/wiki/加密散列函数 "wikilink")、[数据压缩](../Page/数据压缩.md "wikilink")、[对称密钥加密](https://zh.wikipedia.org/wiki/对称密钥加密 "wikilink")，以及[公钥加密的算法组合而成](https://zh.wikipedia.org/wiki/公钥加密 "wikilink")。每个步骤均支持几种[算法](../Page/算法.md "wikilink")，用户可以选择一个使用。每个公钥均绑定一个用户名和/或者[E-mail地址](https://zh.wikipedia.org/wiki/E-mail "wikilink")。该系统的最初版本通常称为可信网或[X.509](../Page/X.509.md "wikilink")系统；[X.509](../Page/X.509.md "wikilink")系统使用的是基于[数字证书认证机构的分层方案](https://zh.wikipedia.org/wiki/数字证书认证机构 "wikilink")，该方案后来被加入到PGP的实现中。当前的PGP加密版本通过一个自动密钥管理服务器来进行密钥的可靠存放。\[1\]

### 兼容性

[PGP_diagram_zh-CN.svg](https://zh.wikipedia.org/wiki/File:PGP_diagram_zh-CN.svg "fig:PGP_diagram_zh-CN.svg")

随着PGP的发展，支持更新功能和算法的版本能够创建旧PGP系统无法解密的加密消息，即使使用有效的私钥也是如此。因此，PGP通信中的伙伴必须了解彼此的能力或至少就PGP设置达成一致。

### 机密性

PGP可用于发送机密消息。为此，PGP结合了对称密钥加密和公钥加密。PGP使用对称加密算法对消息进行加密，该算法需要对称密钥。每个对称密钥也称为会话密钥仅被使用一次。消息及其会话密钥被发送到接收方。 会话密钥必须被发送给接收方以解密消息，但是为了在传输过程中保护它，它使用接收方的公钥进行加密。只有属于接收方的私钥才能解密会话密钥。

### 数字签名

PGP支持消息身份认证和完整性检查。后者被用来检查消息在传输过程中是否被修改过（即验证**消息完整性**），而消息身份认证则是被用来决定消息是否由声称为发送者的个人或实体发出（即[数字签名验证](https://zh.wikipedia.org/wiki/数字签名 "wikilink")）。由于消息的内容是加密的，因此更改任何消息中的内容都将导致密钥解密失败。在PGP中，这些特性默认是和消息加密同时开启的，而且同样可以被应用到[明文的验证](https://zh.wikipedia.org/wiki/明文 "wikilink")。发送者只需使用PGP为消息建立一个数字签名（签名算法采用[RSA或](../Page/RSA加密演算法.md "wikilink")）。具体步骤为：PGP以数据或信息建立一个散列（参见[消息摘要](https://zh.wikipedia.org/wiki/消息摘要 "wikilink")），然后使用发送者的私钥利用散列生成数字签名。

### 信赖网路

不管是在加密消息时还是在验证签名时，都需要注意用来发送消息的公钥是否确实属于期望的接收者。简单的从某个位置下载一个公钥是没有保障的，故意（或偶然）的假冒是有可能发生的。PGP从它的第一个版本起，在'[身份证书](https://zh.wikipedia.org/wiki/身份证书 "wikilink")'中发布用户公钥，身份证书也是以加密方式构造的，所以任何的篡改或意外的变动都可以被迅速的检测出来。但是仅仅有一个任何对于证书的修改都会被检测出来的机制不够的，这样的检测机制只能在证书创建之后用于避免篡改，而不是创建之前。用户还必须用某种形式确保证书中的公钥真正的属于特定的人/实体。从第一个发行版开始，PGP产品就包含一个内部的'审查方案'来协助它，一个被叫做[信赖网路](https://zh.wikipedia.org/wiki/信任网络 "wikilink")（Web of Trust）的信任模型。对于一个给定的公钥（具体来说就是一个用户名到对应其密钥的绑定信息）可以被第三方用户数字签名，来证明某人（实指用户名）和一个密钥的关联，而该签名中包含对该关联不同程度的信任度。虽然有许多程序都会读写这个信息，而只有少数会通过信任度来决定是否信任一个密钥。

信赖网路协议（Trusted-Web Protocol）在1992年的PGP 2.0手册中被[菲利普·齐默曼](https://zh.wikipedia.org/wiki/菲利普·齐默曼 "wikilink")（Philip R. Zimmermann）首次提及并描述为：

信赖网路机制比[S/MIME方案的集中管理的](https://zh.wikipedia.org/wiki/S/MIME "wikilink")[公钥基础设施有优势](https://zh.wikipedia.org/wiki/公钥基础设施 "wikilink")，但是没有被网络普通大众普遍采用，一般只在[Unix-like的爱好者](https://zh.wikipedia.org/wiki/Unix "wikilink")、[開源軟體界](https://zh.wikipedia.org/wiki/開源軟體 "wikilink")、和对隐私特別注意而且有电脑知识的人群之间使用。如何使一般用户容易并且乐意使用、接收证书然后手动的验证它们的有效性，这些潜在的推广阻碍目前还没有满意的解决方案。

### 证书

在最近的OpenPGP规范里，信任签名可被用于支持[受信任的证书颁发机构](https://zh.wikipedia.org/wiki/920119 "wikilink")，一个信任签名表示公钥属于其声明的所有者，并且公钥的所有者签署的下一级公钥也是可信的。 零级签名与信赖网络签名相当，因为只有其公钥的有效性得到认证。一级签名类似于证书颁发机构，因为拥有一级公钥者能够发出无限数量的零级签名。 二级签名非常类似于用户在使用默认证书颁发机构列表时必须依赖的信任假设（如Web浏览器中包含的那些）;它允许密钥的所有者制作其他公钥证书颁发机构。

所有版本的PGP都包含一种取消（“撤销”）证书的方法。如果该用户的私钥丢失或者被破解则他必须采用这种取消证书的方法以继续保证通信的安全性。这种方式基本等同于集中式PKI方案的证书撤销列表。最新的的PGP版本也支持设置证书的自动过期日期。

并不仅是PGP有如何正确判断特定公钥属于特定的用户的问题。所有采用公钥/私钥加密的加密系统都有这个问题，并且目前并没有令人满意的解决方案。最初的PGP方案至少可以让用户选择是否使用其背书/审批系统，而对于其他PKI方案，它们要求用户必须采信所有被中央证书颁发机构证实的证书。

## 历史

### 早期历史

[菲利普·齐默曼](https://zh.wikipedia.org/wiki/菲利普·齐默曼 "wikilink")（Philip R. Zimmermann）在1991年创造了第一个版本的PGP，其名称“Pretty Good Privacy”的灵感来自于一个名为“Ralph's Pretty Good Grocery”的杂货店——电台主播[Garrison Keillor虚构出来的一个名为](https://zh.wikipedia.org/wiki/Garrison_Keillor "wikilink")[Lake Wobegon的城市的一个杂货店](https://zh.wikipedia.org/wiki/Lake_Wobegon "wikilink")。

软件第一个版本包含一个齐默曼自己设计的[对称密钥算法](https://zh.wikipedia.org/wiki/对称密钥算法 "wikilink")，与[周六夜现场的一个小品](https://zh.wikipedia.org/wiki/周六夜现场 "wikilink")[BassOmatic同名](https://zh.wikipedia.org/wiki/BassOmatic "wikilink")。作为一个老牌的[反核能活跃分子](https://zh.wikipedia.org/wiki/反核能活跃分子 "wikilink")，齐默曼为了让所有有相似倾向的人们可以安全的使用BBS并且安全存储消息和文件而创造了PGP加密。在非商业用途上是不需要授权的，无须任何费用，并且在所有的发行中附带了完整的[源代码](../Page/源代码.md "wikilink")。

在2001年6月5号发表的一篇标题为"PGP 10周年" \[2\]的文章中，齐默曼描述了他最初开发PGP时的情景：

PGP在[互联网](../Page/互联网.md "wikilink")上传播开来，并且在这个世界上获得了非常多的拥护者。PGP用户和支持者也包括在极权主义国家持不同政见的人们（一些给齐默曼的感人信件被发表了，其中一些在美国国会之前被包括到证据中）。在世界其它地方的[自由意志主义支持者](https://zh.wikipedia.org/wiki/自由意志主义支持者 "wikilink")（参考齐默曼在各个听政会上发表的证据），以及“自由通讯”激进主义分子，他们称他们自己为[加密爱好者](https://zh.wikipedia.org/wiki/加密爱好者 "wikilink")，进行宣传和分发。

### 刑事侦察

在发行后不久，PGP加密走出了[美国](../Page/美国.md "wikilink")，在1993年二月，齐默尔曼变成了[美国政府针对](https://zh.wikipedia.org/wiki/美国政府 "wikilink")“没有授权的军需品出口”犯罪调查的正式目标。根据美国出口管理法案中的定义，加密系统使用大于[40位的密钥将被认为是军需品](https://zh.wikipedia.org/wiki/40位加密 "wikilink")。PGP从没有使用小于128位的密钥，因此在那时被如此认定。如果被判有罪，这将会是严重的罪行。几年后，对齐默尔曼的调查未经备案即被关闭，也没有提起针对他本人或其他任何人的刑事指控。

齐默曼使用了一种富有想象力的方法来对抗这一规定。他将PGP的全套[源代码](../Page/源代码.md "wikilink")出版成一本书，\[3\]由发行，受到了广泛欢迎。任何想要构建自己的PGP版本的人只需买下这本60美元的书，切掉封面，分离页面，然后使用[OCR](https://zh.wikipedia.org/wiki/OCR "wikilink")（文字扫描识别）程序进行扫描和文字识别（或者直接输入），生成一系列的源代码文本文档。接下来便可以使用自由分发的[GCC](../Page/GCC.md "wikilink")来编译程序。PGP就是这样在全世界变得可用。声明的原则很简单：对军需品——枪支、炸药、飞机和软件的出口是被限制的，然而书本出口受到[第一修正案](https://zh.wikipedia.org/wiki/第一修正案 "wikilink")（言论自由部分）的保护。这个问题从未再在法庭中检查过。

## 商業應用

PGP一般在[企业资源规划](https://zh.wikipedia.org/wiki/企业资源规划 "wikilink")（即ERP）软件连接到银行系统时使用，防止信息在传输过程中被删改或盗取，从而减少商业秘密泄露和遭遇诈骗的风险。

## OpenPGP

1997年7月，PGP Inc.与齐默尔曼同意[IETF制定一项公开的](https://zh.wikipedia.org/wiki/IETF "wikilink")[互联网标准](https://zh.wikipedia.org/wiki/互联网标准 "wikilink")，称作OpenPGP，任何支持这一标准的程序也被允许称作OpenPGP。\[4\]

许多电子邮件系统提供了OpenPGP兼容的安全性，由RFC 3156来描述。2007年11月发布的规范RFC 4880作为RFC 2440的替代版，指出一套算法，包括非对称的[ElGamal加密算法](../Page/ElGamal加密算法.md "wikilink"), , [三重資料加密演算法以及](https://zh.wikipedia.org/wiki/三重資料加密演算法 "wikilink")[SHA-1](../Page/SHA-1.md "wikilink"). 标准还建议使用[PKCS \#1](https://zh.wikipedia.org/wiki/PKCS_#1 "wikilink") v1.5 描述的[RSA加密演算法](../Page/RSA加密演算法.md "wikilink")用作加密与签名，以及[AES-128](../Page/高级加密标准.md "wikilink"), ，[IDEA等对称加密算法](../Page/國際資料加密演算法.md "wikilink")。许多其他加密算法也被支持。 2009年发布的RFC 5581支持[Camellia](../Page/Camellia.md "wikilink")加密。 基于[椭圆曲线密码学](../Page/椭圆曲线密码学.md "wikilink") ([ECDSA](https://zh.wikipedia.org/wiki/ECDSA "wikilink"), [ECDH](../Page/橢圓曲線迪菲-赫爾曼金鑰交換.md "wikilink"))的RFC 6637发布于2012年。支持被2014年发布的标准支持。 [draft-koch-eddsa-for-openpgp-00](http://tools.ietf.org/html/draft-koch-eddsa-for-openpgp-00)

[自由软件基金会](../Page/自由软件基金会.md "wikilink")开发的OpenPGP程序叫做[GnuPG](../Page/GnuPG.md "wikilink")，并有多个图形用户界面版本的软件实现，如[KGPG](https://zh.wikipedia.org/wiki/KGPG "wikilink"), , [MacGPG](https://zh.wikipedia.org/wiki/MacGPG "wikilink"). 也有一些商用OpenPGP软件。

使用[JavaScript](../Page/JavaScript.md "wikilink")编写的开源库OpenPGPjs,\[5\]用于网页程序，如[ProtonMail](../Page/ProtonMail.md "wikilink"), [Mailfence](https://zh.wikipedia.org/wiki/Mailfence "wikilink"), [GlobaLeaks](../Page/GlobaLeaks.md "wikilink"), and [Mailvelope](https://zh.wikipedia.org/wiki/Mailvelope "wikilink").

iOS或Android平台上的OpenPGP应用程序有iPGMail\[6\] ，OpenKeychain\[7\]。

### [互联网标准](https://zh.wikipedia.org/wiki/互联网标准 "wikilink")

  - PGP
      - RFC 1991 PGP Message Exchange Formats (obsolete)\[8\]
  - OpenPGP
      - RFC 2440 OpenPGP Message Format (obsolete)\[9\]
      - RFC 4880 OpenPGP Message Format
      - RFC 5581 The Camellia Cipher in OpenPGP
      - RFC 6637 Elliptic Curve Cryptography (ECC) in OpenPGP
      - \[//tools.ietf.org/html/draft-koch-eddsa-for-openpgp draft-koch-eddsa-for-openpgp\] EdDSA for OpenPGP
  - PGP/MIME
      - RFC 2015 MIME Security with Pretty Good Privacy (PGP)
      - RFC 3156 MIME Security with OpenPGP

## 参考文献

<div class="references-small">

<references>

</references>

</div>

## 外部链接

  - [PGP公司网站](https://web.archive.org/web/20041230152556/http://www.pgp.com/)
  - [The International PGP Home Page](http://www.pgpi.org/)
  - [Web-based PGP Encryption Software](http://www.ezpgp.com)

[Category:网络隐私](https://zh.wikipedia.org/wiki/Category:网络隐私 "wikilink") [Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink") [Category:公開標準](https://zh.wikipedia.org/wiki/Category:公開標準 "wikilink") [Category:电子商务](https://zh.wikipedia.org/wiki/Category:电子商务 "wikilink") [Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink")

1.

2.

3.

4.  By Eric Geier, PCWorld. “[How to use OpenPGP to encrypt your email messages and files in the cloud](http://www.pcworld.com/article/2472771/how-to-use-openpgp-to-encrypt-your-email-messages-and-files-in-the-cloud.html).” August 22, 2014. September 3, 2014.

5.

6.

7.

8.  <http://tools.ietf.org/html/rfc4880>

9.