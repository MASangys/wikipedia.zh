在[密码学中](../Page/密码学.md "wikilink")，**PKCS \#12**
定义了一种[存档文件格式](https://zh.wikipedia.org/wiki/存档文件格式 "wikilink")，用于实现存储许多加密对象在一个单独的文件中。通常用它来打包一个私钥及有关的
X.509 证书，或者打包信任链的全部项目。\[1\]

一个 PKCS \#12
文件通常是被加密的，同时单独存在（存档文件格式）。其被称作"安全包裹"的内部存储容器通常同时也被加密及单独存在。一些安全包裹被预先定义用来存储证书，私钥以及[证书吊销列表](https://zh.wikipedia.org/wiki/证书吊销列表 "wikilink")。根据不同实现者的选择，也可以使用一些安全包裹存储其他任意数据。
\[2\]\[3\]

PKCS \#12 是 RSA 实验室发布的[公钥密码学标准之中的一员](../Page/公钥密码学标准.md "wikilink")。

PKCS \#12 [文件扩展名为](../Page/文件扩展名.md "wikilink") ".p12 "或者 ".pfx"。\[4\]

这些文件可以通过使用 [OpenSSL](../Page/OpenSSL.md "wikilink")
`pkcs12` 命令被创建、解析并读出。\[5\]

## 与PFX文件格式的关系

PKCS \#12 是微软 PFX 文件的替代者；\[6\] 然而，"PKCS \#12 文件" 和 "PFX 文件"
这两个词有时被相互替代使用用。\[7\]

微软的 "PFX" 因作为最复杂的密码学协议之一而受到大量批评。

## 通常用法

完整的 PKCS \#12 标准非常复杂。它使得大量的复杂对象（例如[PKCS
\#8](https://zh.wikipedia.org/wiki/wikipedia:PKCS_8 "wikilink")）可以深层次地嵌套。但在实际应用中通常只用来存储一个私钥以及与之有关的证书链。

PKCS \#12 文件通常使用 [OpenSSL](../Page/OpenSSL.md "wikilink") 来创建，OpenSSL
只支持在命令行界面使用单个私钥。在 Java 8 之后，可以使用 Java
密钥工具创建多个条目，但这很有可能不被其他系统所兼容。下一代的
[KMIP](https://zh.wikipedia.org/wiki/KMIP "wikilink") 也将可以直接用来创建 PKCS
\#12 文件。

对于 PKCS \#12 来说，一个更简单的替代方案是使用 PEM 格式，它仅仅列出证书，可能还有与之有关的私钥，以 [Base
64](../Page/Base64.md "wikilink") 字符串的形式存储于一个纯文本文件中。

也可以使用 [GnuTLS](../Page/GnuTLS.md "wikilink")
证书工具（参数 **--to-pk12**）来创建包含证书、密钥、CA认证证书的
PKCS \#12 文件。然而，要注意与其他软件的可交换性。如果源是通过 Base 64 处理过的字符串，则输出也同样应该使用 Base
64。 

## 参考文献

## 外部链接

  -
<!-- end list -->

  -
<!-- end list -->

  - Overview about PKCS\#12 capabilties, usage, implementations, history
    and future:

[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink")

1.  <http://help.globalscape.com/help/secureserver3/Generating_a_PKCS_12_private_key_public_certificate.htm>
2.
3.
4.
5.
6.
7.