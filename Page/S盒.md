在[密码学](../Page/密码学.md "wikilink")中，一个**S盒**（**S**ubstitution-**box**，**替换盒**）是[對稱密鑰加密](../Page/對稱密鑰加密.md "wikilink")算法执行替换计算的基本结构。在[块密码中](https://zh.wikipedia.org/wiki/块密码 "wikilink")，它们通常用于模糊密钥与[密文之间的关系](https://zh.wikipedia.org/wiki/密文 "wikilink")——[香农的](../Page/克劳德·香农.md "wikilink")[混淆理论](https://zh.wikipedia.org/wiki/混淆与扩散 "wikilink")\[1\]。

通常，S-Box接受特定数量的输入比特*m*，并将其转换为特定数量的输出比特*n*，其中*n* 不一定等于*m*\[2\]。一个*m*×*n*的S盒可以通过包含2<sup>*m*</sup>条目，每条目*n*比特的[查找表](../Page/查找表.md "wikilink")实现。S盒通常是固定的（例如[DES和](https://zh.wikipedia.org/wiki/DES "wikilink")[AES加密算法](../Page/高级加密标准.md "wikilink")）, 也有一些加密算法的S盒是基于密钥动态生成的（例如[Blowfish和](https://zh.wikipedia.org/wiki/Blowfish_\(密码学\) "wikilink")[双鱼算法加密算法](https://zh.wikipedia.org/wiki/双鱼算法 "wikilink")）。

[DES的](https://zh.wikipedia.org/wiki/DES "wikilink")6×4位S盒（S<sub>5</sub>）是一个很好的例子：

| S<sub>5</sub> | 中间四个比特 |
| ------------- | :----: |
| 0000          |  0001  |
| 首尾比特          |   00   |
| 01            |  1110  |
| 10            |  0100  |
| 11            |  1011  |

给定6比特输入，将首尾两个比特作为行条件、中间四个比特（inner four bits）作为列条件进行查表，最终获得4比特输出。例如，输入“**0**1101**1**”，通过首尾两个比特“**01**”和中间的比特“1101”进行查表，最终的输出应该是“1001”\[3\]。

## 参见

  - [单射、双射与满射](../Page/单射、双射与满射.md "wikilink")
  - [布尔函数](../Page/布尔函数.md "wikilink")
  - [Nothing up my sleeve number](https://zh.wikipedia.org/wiki/Nothing_up_my_sleeve_number "wikilink")
  - [P盒](https://zh.wikipedia.org/wiki/P盒 "wikilink")（P-box）
  - [置换式密码](https://zh.wikipedia.org/wiki/置换式密码 "wikilink")
  - [Rijndael S盒](https://zh.wikipedia.org/wiki/Rijndael_S盒 "wikilink")
  - [替换式密码](../Page/替换式密码.md "wikilink")

## 参考文献

[Category:S盒](https://zh.wikipedia.org/wiki/Category:S盒 "wikilink") [Category:密码算法](https://zh.wikipedia.org/wiki/Category:密码算法 "wikilink")

1.

2.
3.