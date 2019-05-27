在[密码学中](../Page/密码学.md "wikilink")，**RC6**（**Rivest cipher
6**）是一个从[RC5衍生而来的](../Page/RC5.md "wikilink")[对称](https://zh.wikipedia.org/wiki/对称密钥加密 "wikilink")[分组加密算法](../Page/分组密码.md "wikilink")。它由[罗纳德·李维斯特](../Page/罗纳德·李维斯特.md "wikilink")、[Matt
Robshaw](https://zh.wikipedia.org/wiki/Matt_Robshaw "wikilink")、Ray
Sidney以及 Ray
Sidney设计，用以满足[高级加密标准](../Page/高级加密标准.md "wikilink")（AES）[竞赛的要求](../Page/高级加密标准评选过程.md "wikilink")。这个算法的是当时五个决赛候选算法之一，并且还提交给了[NESSIE和](https://zh.wikipedia.org/wiki/NESSIE "wikilink")[CRYPTREC项目](https://zh.wikipedia.org/wiki/CRYPTREC "wikilink")。这是一个专利算法，专利由[RSA公司申请](https://zh.wikipedia.org/wiki/RSA公司 "wikilink")。

RC6拥有128位的[块大小](../Page/块大小.md "wikilink")，支持128、192、256位乃至2040位的[密钥长度](https://zh.wikipedia.org/wiki/密钥长度 "wikilink")。像[RC5一样](../Page/RC5.md "wikilink")，RC6是可以被参数化的。它也因而支持变长的分组大小、密钥长度以及加密轮数。RC6和RC5在很多方面相似，例如结构、使用基于数据的置换规则、取模加法以及[异或操作](https://zh.wikipedia.org/wiki/异或 "wikilink")。事实上，RC6可以被看做是交织的两组平行的RC5加密。RC6使用了在RC5加密算法中并没有出现的乘法运算，这个运算是为了让置换基于[字中每一位](../Page/字_\(计算机\).md "wikilink")，而不是其中的几位。

## 加密和解密

请注意，密钥扩展算法几乎是和RC5相同的。 唯一的区别是，对于RC6来说，加密密钥中更多的字来自于用户提供的密钥。

``` C
// Encryption/Decryption with RC6-w/r/b
//
// Input:   Plaintext stored in four w-bit input registers A, B, C & D
//  r is the number of rounds
//  w-bit round keys S[0, ... , 2r + 3]
//
// Output: Ciphertext stored in A, B, C, D
//
// '''Encryption Procedure:'''

    B = B + S[0]
    D = D + S[1]
    for i = 1 to r do
    {
        t = (B*(2B + 1)) <<< lg w
        u = (D*(2D + 1)) <<< lg w
        A = ((A ⊕ t) <<< u) + S[2i]
        C = ((C ⊕ u) <<< t) + S[2i + 1]
        (A, B, C, D)  =  (B, C, D, A)
    }
    A = A + S[2r + 2]
    C = C + S[2r + 3]

// '''Decryption Procedure:'''

    C = C - S[2r + 3]
    A = A - S[2r + 2]

    for i = r downto 1 do
    {
        (A, B, C, D) = (D, A, B, C)
        u = (D*(2D + 1)) <<< lg w
        t = (B*(2B + 1)) <<< lg w
        C = ((C - S[2i + 1]) >>> t) ⊕ u
        A = ((A - S[2i]) >>> u) ⊕ t
    }
    D = D - S[1]
    B = B - S[0]
```

## NSA“植入”代码中可能使用了RC6

2016年8月，一些被认为是来自[方程式组织或](../Page/方程式组织.md "wikilink")[国家安全局的代码被公开](../Page/美国国家安全局.md "wikilink")，这些代码"植入"了多种网络安全设备。\[1\]所附说明显示，这些程序使用了RC6以确保网络通信的机密性。\[2\]

## 使用许可

RC6没有被[AES选择](../Page/高级加密标准.md "wikilink")，因为它不能保证RC6是免费的。，来自RSA实验室的RC6的设计者们在他们的官方网站上声明：\[3\]

  -
    "我们强调，*如果*RC6被选为AES，在产品中使用该算法，RSA公司将*不*要求任何许可证或授权费用"。

强调的词"如果"表明，RSA安全公司可能对任何使用了RC6的产品要求授权许可和支付授权费。RC6是一个专利加密算法(\[//www.google.com/patents/US5724428
美国专利5,724,428\]，\[//www.google.com/patents/US5835600
美国专利5,835,600\])；但是，专利已经在2015年到2017年间过期。

## 注释

  -
<!-- end list -->

  -
<!-- end list -->

  -
## 参考资料

## 外部链接

  -
<!-- end list -->

  -
<!-- end list -->

  -
[Category:分组密码](https://zh.wikipedia.org/wiki/Category:分组密码 "wikilink")

1.
2.
3.