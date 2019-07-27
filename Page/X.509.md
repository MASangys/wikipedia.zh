**X.509**是密码学里[公钥证书的格式标准](https://zh.wikipedia.org/wiki/公钥证书 "wikilink")。X.509证书已应用在包括[TLS/SSL在内的众多](https://zh.wikipedia.org/wiki/TLS/SSL "wikilink")[网络协议里](https://zh.wikipedia.org/wiki/网络协议 "wikilink")，同时它也用在很多非在线应用场景里，比如电子签名服务。X.509证书里含有公钥、身份信息（比如网络主机名，组织的名称或个体名称等）和签名信息（可以是证书签发机构CA的签名，也可以是自签名）。对于一份经由可信的证书签发机构签名或者可以通过其它方式验证的证书，证书的拥有者就可以用证书及相应的私钥来创建安全的通信，对文档进行[数字签名](https://zh.wikipedia.org/wiki/数字签名 "wikilink")。

另外除了证书本身功能，X.509还附带了[证书吊销列表和用于从最终对证书进行签名的证书签发机构直到最终可信点为止的](https://zh.wikipedia.org/wiki/证书吊销列表 "wikilink")[证书合法性验证算法](https://zh.wikipedia.org/wiki/证书合法性验证算法 "wikilink")。

X.509是[ITU-T标准化部门基于他们之前的](https://zh.wikipedia.org/wiki/ITU-T "wikilink")[ASN.1](../Page/ASN.1.md "wikilink")定义的一套证书标准。

## 历史及使用情况

X.509最早与X.500一起发布于1988年7月3日。它假设有一套严格的层次化的证书颁发机构（CA）。和[web信任模型相比较](https://zh.wikipedia.org/wiki/web信任 "wikilink")，[PGP](../Page/PGP.md "wikilink")采用的方案是任何人都可以签名，从而证明其他人密钥证书的有效性。X.509
v3证书设计非常弹性化，除了对[网桥拓扑架构网络的支持](https://zh.wikipedia.org/wiki/网桥 "wikilink")，还可以支持用于点对点方式的[Mesh网](https://zh.wikipedia.org/wiki/Mesh网 "wikilink")\[1\]类似与OpenPGP那样的web信任机制，不过这样方式在2004年之前很少使用。X.500系统仅由主权国家实施，以实现国家身份信息共享条约的实施目的；而[IETF的公钥基础设施](https://zh.wikipedia.org/wiki/IETF "wikilink")（X.509）简称PKIX工作组将该标准制定成适用于更灵活的互联网组织。而且事实上X.509认证指的是RFC5280里定义的X.509
v3，包括对IETF的PKIX证书和证书吊销列表，通常也称为公钥基础设施。

## 证书

在X.509里，组织机构通过发起证书签名请求（[CSR](https://zh.wikipedia.org/wiki/CSR "wikilink")）来得到一份签名的证书。首先需要生成一对钥匙对，然后用其中的私钥对CSR进行签名，并安全地保存私钥。CSR进而包含有请求发起者的身份信息、用来对此请求进行验真的的公钥以及所请求证书专有名称。CSR里还可能带有CA要求的其它有关身份证明的信息。然后CA对这个专有名称发布一份证书，并绑定一个公钥.
组织机构可以把受信的根证书分发给所有的成员，这样就可以使用公司的PKI系统了。像Firefox, IE, Opera, Safari
以及Google
Chrome都预装有早就确定的根证书列表，所以使用主流CA发布的证书SSL都直接可以正常使用。浏览器的开发者直接影响着它的用户对第三方的信任。FireFox就提供了一份csv/html格式的列表\[2\]
X.509也定义了CRL实现标准。另一种检查合法性的方式是OCSP。FireFox
3开始就默认打开了这项检查功能，Windows从Vista版本以后也一样。

### 证书组成结构

证书组成结构标准用[ASN.1](../Page/ASN.1.md "wikilink")（一种标准的语言）来进行描述. X.509 v3
[数字证书结构如下](https://zh.wikipedia.org/wiki/数字证书 "wikilink")：

  - 证书
      - 版本号
      - 序列号
      - 签名算法
      - 颁发者
      - 证书有效期
          - 此日期前无效
          - 此日期后无效
      - 主题
      - 主题公钥信息
          - 公钥算法
          - 主题公钥
      - 颁发者唯一身份信息（可选项）
      - 主题唯一身份信息（可选项）
      - 扩展信息（可选项）
          - ...
  - 证书签名算法
  - 数字签名

所有扩展都有一个ID，由[object
identifier来表达](https://zh.wikipedia.org/wiki/object_identifier "wikilink").它是一个集合，并且有一个标记用与指示这个扩展是不是决定性的。证书使用时，如果发现一份证书带有决定性标记的扩展，而这个系统并不清楚该扩展的用途，那么要拒绝使用它。但对于非决定性的扩展，不认识可以予以忽略。\[3\]
RFC 1422\[4\]给出了v1的证书结构
ITU-T在v2里增加了颁发者和主题唯一标识符，从而可以在一段时间后可以重用。重用的一个例子是当一个CA破产了，它的名称也在公共列表里清除掉了，一段时间之后另一个CA可以用相同的名称来注册，即使它与之前的并没有任何瓜葛。不过[IETF并不建议重用同名注册](https://zh.wikipedia.org/wiki/IETF "wikilink")。另外v2在Internet也没有多大范围的使用。
v3引入了扩展。CA使用扩展来发布一份特定使用目的的证书（比如说仅用于代码签名） 所有的版本中，同一个CA颁发的证书序列号都必须是唯一的。

### 扩展指定了证书的用途

（及后续版本）定义了一些扩展用来指定证书的用途。 它们的多数都来源于`joint-iso-ccitt(2) ds(5) id-ce(29)`
OID。在4.2.1里定义的几个常用扩展定义如下：

  - Basic Constraints， `{ id-ce 19 }`<ref>

` `

</ref> 用于指定一份证书是不是一个CA证书。

  - Key Usage, `{ id-ce 15 }`,<ref>

` `

</ref>指定了这份证书包含的公钥可以执行的密码操作。作为一个例子，它可以指定只能用于签名，而不能用来进行加密操作。

  - Extended Key Usage, `{ id-ce 37 }`,<ref>

` `

</ref>典型用法是用于叶子证书中的公钥的使用目的。它包括一系列的OID，每一个都指定一种用途。比如`{ id-pkix 3 1 }`
表示用于服务器端的TLS/SSL连接，而`{ id-pkix 3 4 }`用于email的安全操作。
通常情况下，一份证书有多个限制用途的扩展时，所有限制条件都应该满足才可以使用。RFC
5280里有对一个同时含有keyUsage和extendedKeyUsage的证书的例子，这样的证书只能用在两个扩展中都指定了的用途。比如[网络安全服务](../Page/网络安全服务.md "wikilink")决定证书用途时会同时对这两个扩展进行判断\[5\]

### 证书文件扩展名

X.509有多种常用的扩展名。不过其中的一些还用于其它用途，就是说具有这个扩展名的文件可能并不是证书，比如说可能只是保存了私钥。

  - `.pem` – （）
    编码的证书再进行[Base64](../Page/Base64.md "wikilink")编码的数据存放在"-----BEGIN
    CERTIFICATE-----"和"-----END CERTIFICATE-----"之中
  - `.cer`, `.crt`, `.der` – 通常是二进制格式的，但Base64编码后也很常见。
  - `.p7b`, `.p7c` – [PKCS\#7](../Page/公钥密码学标准.md "wikilink") SignedData
    structure without data, just certificate(s) or
    [CRL](https://zh.wikipedia.org/wiki/证书吊销列表 "wikilink")(s)
  - `.p12` –
    [PKCS\#12格式](../Page/公钥密码学标准.md "wikilink")，包含证书的同时可能还有带密码保护的私钥
  - `.pfx` –
    PFX，PKCS\#12之前的格式（通常用PKCS\#12格式，比如那些由[IIS产生的PFX文件](https://zh.wikipedia.org/wiki/IIS "wikilink")）

[PKCS\#7](../Page/公钥密码学标准.md "wikilink")
是签名或加密数据的格式标准，官方称之为容器。由于证书是可验真的签名数据，所以可以用SignedData结构表述。
`.P7C`文件是退化的SignedData结构，没有包括签名的数据。

[PKCS\#12](../Page/公钥密码学标准.md "wikilink") 由PFX进化而来的用于交换公共的和私有的对象的标准格式。

## 证书链和交叉认证

**证书链**（也就是RFC
5280里的证书路径)\[6\]是从终端使用者证书后跟着一系列的CA证书，而通常最后一个是自签名证书，并且有如下关系：

1.  在证书链上除最后一个证书外，证书颁发者等于其后一个证书的主题。
2.  除了最后一个证书，每个证书都是由其后的一个证书签名的。
3.  最后的证书是[信任主题](https://zh.wikipedia.org/wiki/信任主题 "wikilink")，由于是通过可信过程得到的，你可以信任它。

证书链用于检查目标证书（证书链里的第一个证书）里的公钥及其它数据是否属于其主题。检查是这么做的，用证书链中的下一个证书的公钥来验证它的签名，一直检查到证书链的尾端，如果所有验证都成功通过，那个这个证书就是可信的。

下面是对RFC
5280里定义的[证书路径合法性算法的一个简要介绍](https://zh.wikipedia.org/wiki/证书路径合法性算法 "wikilink")\[7\]，包括对证书的有效期、CRL等其它额外的检查。

[Cross-certification_diagram.svg](https://zh.wikipedia.org/wiki/File:Cross-certification_diagram.svg "fig:Cross-certification_diagram.svg")
[CA_certificate_renewal.png](https://zh.wikipedia.org/wiki/File:CA_certificate_renewal.png "fig:CA_certificate_renewal.png")

对于具体的证书来说，有一点需要注意的是它可能存在于很不一样的两条或多条证书链中，并且都是合法的。这是因为CA证书可以来自多个颁发者，或者来自相同颁发者但用不同的私钥签发，这样在CA证书上会出现分叉，从而可以出现多条证书链。这也是PKI之间交叉认证和其它应用的关键所在。
\[8\] 看下面的例子：

在这两个图里：

  - 方块代表证书，加黑的是证书的主题名字。
  - A → B 表示 "A是由B签发的" （更确切地说，A是由B中所载公钥对应的私钥签署的）
  - 相同颜色（透明色和白色除外）的证书具有相同的公钥

### 例1: 两个PKI之间的根证书交叉认证

为了让PKI2的用户证书也得到PKI1的信任，CA1生成一包含CA2公钥的证书cert2.1\[9\]
这时候cert2和cert2.1具体相同的主题及公钥，cert2.2 (User
2)就有了两条合法的证书链："cert2.2 → cert2" and "cert2.2 →
cert2.1 → cert1"。

CA2也可以生成类似的包含有CA1公钥的证书cert1.1，以便PKI1的用户(比如User 1)的证书能在PKI2得到认证。

### 例2: CA证书更新

假设cert1和cert3具有相同的公钥，对于cert5来说有两条合法的证书链，cert5 → cert1 和 cert5 → cert3 →
cert2, cert6的情况也类似。这样就允许老的用户证书可以在新旧两个根证书之间平滑转移。\[10\]

## X.509证书样例

下面是[GlobalSign](../Page/GlobalSign.md "wikilink")颁发的用于wikipedia.org以及一些其它Wikipedia网站X.509证书。证书颁发者填在颁发者(Issuer)字段，主题内容里是组织机构Wikipedia的描述，主题备用名称是那些采用该证书的服务器的主机名。主题公钥里的信息表明采用的是[椭圆曲线](../Page/椭圆曲线.md "wikilink")公共密钥，位于最后的签名算法表示它是由GlobalSign用其私钥并采用带[RSA加密的SHA](https://zh.wikipedia.org/wiki/RSA "wikilink")-256算法进行签名的。

### 最终实体证书（或者叫叶子证书）

`  证书:`
`          版本: 3 (0x2)`
`        序列号: 10:e6:fc:62:b7:41:8a:d5:00:5e:45:b6`
`      签名算法: sha256WithRSAEncryption`
`        颁发者: C=BE, O=GlobalSign nv-sa, CN=GlobalSign Organization Validation CA - SHA256 - G2`
`      此前无效: Nov 21 08:00:00 2016 GMT`
`      此后无效: Nov 22 07:59:59 2017 GMT`
`         主题: C=US, ST=California, L=San Francisco, O=Wikimedia Foundation, Inc., CN=*.wikipedia.org`
`  主题公钥信息:`
`            公钥算法: id-ecPublicKey`
`         256位的公钥:`
`                    04:c9:22:69:31:8a:d6:6c:ea:da:c3:7f:2c:ac:a5:`
`                    af:c0:02:ea:81:cb:65:b9:fd:0c:6d:46:5b:c9:1e:`
`                    ed:b2:ac:2a:1b:4a:ec:80:7b:e7:1a:51:e0:df:f7:`
`                    c7:4a:20:7b:91:4b:20:07:21:ce:cf:68:65:8c:c6:`
`                    9d:3b:ef:d5:c1`
`          ASN1 OID: prime256v1`
`          NIST CURVE: P-256`
`       扩展:`
`          密钥使用: `
`               关键:是`
`               使用:数字签名，密钥协商Key Agreement`
`       授权相关信息: `
`               关键:否`
`                颁发者URI:http://secure.globalsign.com/cacert/gsorganizationvalsha2g2r1.crt`
`  在线证书状态协议(OCSP)URI:http://ocsp2.globalsign.com/gsorganizationvalsha2g2`

`         证书策略: `
`               关键:否`
`          策略 ID#1: 1.3.6.1.4.1.4146.1.20`
`           CPS URI: https://www.globalsign.com/repository/`
`          策略 ID#2: 2.23.140.1.2.2`

`          基本限制: `
`                CA:FALSE`
`       CRL 分发点: `
`               关键:否`
`               URI:http://crl.globalsign.com/gs/gsorganizationvalsha2g2.crl`

`       主题备用名称: `
`               关键:否`
`               DNS:*.wikipedia.org, DNS:*.m.mediawiki.org, DNS:*.m.wikibooks.org, DNS:*.m.wikidata.org, DNS:*.m.wikimedia.org, DNS:*.m.wikimediafoundation.org, DNS:*.m.wikinews.org, DNS:*.m.wikipedia.org, DNS:*.m.wikiquote.org, DNS:*.m.wikisource.org, DNS:*.m.wikiversity.org, DNS:*.m.wikivoyage.org, DNS:*.m.wiktionary.org, DNS:*.mediawiki.org, DNS:*.planet.wikimedia.org, DNS:*.wikibooks.org, DNS:*.wikidata.org, DNS:*.wikimedia.org, DNS:*.wikimediafoundation.org, DNS:*.wikinews.org, DNS:*.wikiquote.org, DNS:*.wikisource.org, DNS:*.wikiversity.org, DNS:*.wikivoyage.org, DNS:*.wiktionary.org, DNS:*.wmfusercontent.org, DNS:*.zero.wikipedia.org, `<DNS:mediawiki.org>`, `<DNS:w.wiki>`, `<DNS:wikibooks.org>`, `<DNS:wikidata.org>`, `<DNS:wikimedia.org>`, `<DNS:wikimediafoundation.org>`, `<DNS:wikinews.org>`, `<DNS:wikiquote.org>`, `<DNS:wikisource.org>`, `<DNS:wikiversity.org>`, `<DNS:wikivoyage.org>`, `<DNS:wiktionary.org>`, `<DNS:wmfusercontent.org>`, `<DNS:wikipedia.org>
`    扩展的密钥使用目的:`
`               关键:否`
`              目的1:TLS Web服务器鉴定`
`              目的1:TLS Web客房端鉴定`
`    主题密钥标识符: `
`               关键:否`
`               密钥: 28:2A:26:2A:57:8B:3B:CE:B4:D6:AB:54:EF:D7:38:21:2C:49:5C:36`
`    授权密钥标识符: `
`               关键:否`
`               密钥:96:DE:61:F1:BD:1C:16:29:53:1C:C0:CC:7D:3B:83:00:40:E6:1A:7C`

`        签名算法: sha256WithRSAEncryption`
`             数字签名: 8b:c3:ed:d1:9d:39:6f:af:40:72:bd:1e:18:5e:30:54:23:35:`
`         ...`

要验证这个证书，我们需要一个跟该证书颁发者及授权密钥标识符

|         |                                                                                  |
| ------- | -------------------------------------------------------------------------------- |
| 颁发者     | C=BE, O=GlobalSign nv-sa, CN=GlobalSign Organization Validation CA - SHA256 - G2 |
| 授权密钥标识符 | 96:DE:61:F1:BD:1C:16:29:53:1C:C0:CC:7D:3B:83:00:40:E6:1A:7C                      |

都匹配的中间证书 配置正确的服务器可以在TLS连接建立的握手阶段同时提供其中间证书。但是也有可能需要根据证书里颁发者的URL去取得中间证书。

### 中间证书

下面是[证书颁发机构](../Page/证书颁发机构.md "wikilink")的证书示例。该证书是由下例根证书签名的用于颁发上例最终实体证书的证书。当然它的主题标识符跟上例证书的授权密钥标识符是相匹配的。

` 证书:`
`          版本: 3 (0x2)`
`        序列号: 04:00:00:00:00:01:44:4e:f0:42:47`
`      签名算法: sha256WithRSAEncryption`
`        颁发者: C=BE, O=GlobalSign nv-sa, OU=Root CA, CN=GlobalSign Root CA`
`      此前无效: Feb 20 10:00:00 2014 GMT`
`      此后无效: Feb 20 10:00:00 2024 GMT`
`         主题: C=BE, O=GlobalSign nv-sa, CN=GlobalSign Organization Validation CA - SHA256 - G2`
`  主题公钥信息:`
`            公钥算法: rsaEncryption`
`        2048位的公钥:`
`                    00:c7:0e:6c:3f:23:93:7f:cc:70:a5:9d:20:c3:0e:`
`                    ...`
`               指数: 65537 (0x10001)`
`  X509 v3扩展:`
`   X509v3 密钥使用: `
`               关键:是`
`               用于:证书签名, CRL签名`
`          基本约束:`
`               关键:是`
`        证书颁发机构:是`
`        路径长度限制:0`
`    主题密钥标识符: `
`               关键:否`
`                密钥: 96:DE:61:F1:BD:1C:16:29:53:1C:C0:CC:7D:3B:83:00:40:E6:1A:7C`
`                96:DE:61:F1:BD:1C:16:29:53:1C:C0:CC:7D:3B:83:00:40:E6:1A:7C`
`        证书策略:`
`               关键:否`
`               策略1: 任何策略标识符`
`            CPS URI: https://www.globalsign.com/repository/`

`     CRL 分发点:`
`               关键:否`
`                URI:http://crl.globalsign.net/root.crl`

`       授权相关信息: `
`               关键:否`
`  在线证书状态协议(OCSP)URI:http://ocsp.globalsign.com/rootr1`

`     授权密钥标识符:`
`               关键:否`
`                    密钥:60:7B:66:1A:45:0D:97:CA:89:50:2F:7D:04:CD:34:A8:FF:FC:FD:4B`

`        签名算法: sha256WithRSAEncryption`
`             数字签名:46:2a:ee:5e:bd:ae:01:60:37:31:11:86:71:74:b6:46:49:c8:`
`         ...`

### 根证书

下面是证书颁发机构的自签名根证书。它的颁发者和主题是相同的，可以用自身的公钥进行合法认证。证书认证过程也将在此终止。如果应用已经在它的可信公钥存贮里已经含有该公钥证书，那么TLS连接时的那个最终实体证书是可信的，否则就是不可信的。

` 证书:`
`          版本: 3 (0x2)`
`        序列号: 04:00:00:00:00:01:15:4b:5a:c3:94`
`    Signature Algorithm: sha1WithRSAEncryption`
`        Issuer: C=BE, O=GlobalSign nv-sa, OU=Root CA, CN=GlobalSign Root CA`
`        Validity`
`            Not Before: Sep  1 12:00:00 1998 GMT`
`            Not After : Jan 28 12:00:00 2028 GMT`
`        Subject: C=BE, O=GlobalSign nv-sa, OU=Root CA, CN=GlobalSign Root CA`
`        Subject Public Key Info:`
`            Public Key Algorithm: rsaEncryption`
`                Public-Key: (2048 bit)`
`                Modulus:`
`                    00:da:0e:e6:99:8d:ce:a3:e3:4f:8a:7e:fb:f1:8b:`
`                    ...`
`                Exponent: 65537 (0x10001)`
`        X509v3 extensions:`
`            X509v3 Key Usage: critical`
`                Certificate Sign, CRL Sign`
`            X509v3 Basic Constraints: critical`
`                CA:TRUE`
`            X509v3 Subject Key Identifier: `
`                60:7B:66:1A:45:0D:97:CA:89:50:2F:7D:04:CD:34:A8:FF:FC:FD:4B`
`    Signature Algorithm: sha1WithRSAEncryption`
`         d6:73:e7:7c:4f:76:d0:8d:bf:ec:ba:a2:be:34:c5:28:32:b5:`
`         ...`

## 安全性

[布鲁斯·施奈尔](https://zh.wikipedia.org/wiki/布鲁斯·施奈尔 "wikilink")、[彼得·古特曼](../Page/彼得·古特曼.md "wikilink")及其他安全专家已经发布了很多PKI的安全问题。
<ref>

` `

</ref><ref name="pkinotdead">

` `

</ref><ref name="gutmann1">

` `

</ref>

### 架构的弱点

  - 采用黑名单方式的证书吊销列表[CRL和在线证书状态协议](https://zh.wikipedia.org/wiki/CRL "wikilink")([OCSP](https://zh.wikipedia.org/wiki/OCSP "wikilink"))
      - 如果客户端仅信任在CRL可用的时候信任证书，那就失去离线信任的需求。因此通常客户端会在CRL不可用的情况下信任证书，因而给了那些可以控制信道的攻击者可乘之机。如谷歌的Adam
        Langley所说，对CRL的检查有如你期望安全带在出事故事一定能正常使用的\[11\]
  - 在大范围及复杂的分布模式下选用CRL并不明智
  - OCSP由于没有吊销状态的历史记录也会出现歧义
  - '''聚合问题
  - **代表问题**:
    证书颁发机构事没办法限制其下属颁发的证书作出名字及属性方面的限制。而且在Internet上存在着相当多的证书颁发机构，想对他们进行分类和策略上的限制是一项不可能完成的任务。
  - **分布问题**:
    证书链引的下属颁发机构，桥接颁发机构以及交叉认证使得证书验证变得非常复杂，需要付出很大的代价。层次式的第三方信任模型作为一种唯一的模型的话，路径验证也可能出现含糊不明的情况岐义，这对于已经建立双边信任也很不方便。
  - 发布一个对主机名的扩展验证并不能防止再发布一个验证要求低一些的适用于同一个主机名的证书。这就造成了不能对中间人攻击的有效保护\[12\]

### 证书颁发机构问题

  - 即使主题实体购买了扩展验证的证书，他的付出也并不能得到相应的回报，因为这并不能阻止通过更便宜的证书颁发机构购买相同主题内容的证书的行为
  - 证书颁发机构不能给用户提供主题甚至组织团体上的担保，无法阻止同名证书
  - 证书有效期应该限制在密钥强度可保护的范围内。但这个字段却被证书颁发机构误用为收费依据从而让用户处于密钥可能被破解的情况下
  - "如果用户通过一种未定义的证书请求协议去获得子一个地址不明的，不存在于任何目录下的证书，那么你也没办法吊销这个证书。"\[13\]

## 参考文献

## 外部連結

  - [ITU-T Recommendation X.509 : Information technology - Open Systems
    Interconnection - The Directory: Public-key and attribute
    certificate frameworks](http://www.itu.int/rec/T-REC-X.509/en)

[Category:加密协议](https://zh.wikipedia.org/wiki/Category:加密协议 "wikilink")
[Category:ITU-建議書](https://zh.wikipedia.org/wiki/Category:ITU-建議書 "wikilink")

1.  RFC 4158

2.

3.  \[<http://tools.ietf.org/html/rfc5280#section-4.2>, RFC 5280 section
    4.2, retrieved 12 February 2013\]

4.  [RFC 1422](http://www.ietf.org/rfc/rfc1422)

5.  [All About Certificate
    Extensions](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/nss_tech_notes/nss_tech_note3)

6.

7.
8.

9.

10.

11.

12. [Zusman and Sotirov
    Blackhat 2009](https://www.blackhat.com/presentations/bh-usa-09/SOTIROV/BHUSA09-Sotirov-AttackExtSSL-PAPER.pdf)

13.