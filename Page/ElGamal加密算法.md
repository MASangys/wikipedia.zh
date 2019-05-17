在[密码学中](../Page/密码学.md "wikilink")，**ElGamal加密算法**是一个基于[迪菲-赫尔曼密钥交换的](https://zh.wikipedia.org/wiki/迪菲-赫尔曼密钥交换 "wikilink")[非对称加密算法](https://zh.wikipedia.org/wiki/非对称加密 "wikilink")。它在1985年由[塔希尔·盖莫尔提出](https://zh.wikipedia.org/wiki/塔希尔·盖莫尔 "wikilink")。\[1\][GnuPG和](../Page/GnuPG.md "wikilink")[PGP等很多密码学系统中都应用到了ElGamal算法](../Page/PGP.md "wikilink")。

ElGamal加密算法可以定义在任何[循环群](https://zh.wikipedia.org/wiki/循环群 "wikilink")\(G\)上。它的安全性取决于\(G\)上的[离散对数难题](../Page/离散对数.md "wikilink")。

## 算法

ElGamal加密算法由三部分组成：密钥生成、加密和解密。

### 密钥生成

密钥生成的步骤如下：

  - Alice利用[生成元](../Page/群的生成集合.md "wikilink")\(g\)产生一个\(q\,\)阶循环群\(G\,\)的有效描述。该循环群需要满足一定的安全性质。
  - Alice从\(\{1, \ldots, q-1\}\)中随机选择一个\(x\)。
  - Alice计算\(h := g^x\)。
  - Alice公开\(h\,\)以及\(G, q, g\,\)的描述作为其**公钥**，并保留\(x\)作为其**私钥**。私钥必须保密。

### 加密

使用Alice的公钥\((G,q,g,h)\)向她加密一条消息\(m\)的加密算法工作方式如下：

  - Bob从\(\{1, \ldots, q-1\}\)随机选择一个\(y\)，然后计算\(c_1:=g^y\)。
  - Bob计算共享秘密\(s:=h^y\)。
  - Bob把他要发送的秘密消息\(m\)映射为\(G\)上的一个元素\(m'\)。
  - Bob计算\(c_2:=m'\cdot s\)。
  - Bob将密文\((c_1,c_2)=(g^y, m'\cdot h^y)=(g^y, m'\cdot(g^x)^y)\)发送给Alice。

值得注意的是，如果一个人知道了\(m'\)，那么它很容易就能知道\(h^y\)的值。因此对每一条信息都产生一个新的\(y\)可以提高安全性。所以\(y\)也被称作。

### 解密

利用私钥\(x\)对密文\((c_1,c_2)\)进行解密的算法工作方式如下：

  - Alice计算共享秘密\(s:=c_1{}^x\)
  - 然后计算\(m':=c_2 \cdot s^{-1}\)，并将其映射回明文\(m\)，其中\(s^{-1}\)是\(s\)在群\(G\)上的逆元。（例如：如果\(G\)是[整数模n乘法群的一个子群](https://zh.wikipedia.org/wiki/整数模n乘法群 "wikilink")，那么逆元就是[模逆元](https://zh.wikipedia.org/wiki/模逆元 "wikilink")）。

<!-- end list -->

  -
    解密算法是能够正确解密出明文的，因为

<!-- end list -->

  -

      -
        \(c_2 \cdot s^{-1} = m'\cdot h^y \cdot (g^{xy})^{-1} = m'\cdot g^{xy} \cdot g^{-xy} = m'.\)

### 实际使用

ElGamal加密系统通常应用在中。例如：用对称加密体制来加密消息，然后利用ElGamal加密算法传递密钥。这是因为在同等安全等级下，ElGamal加密算法作为一种非对称密码学系统，通常比对称加密体制要慢。对称加密算法的密钥和要传递的消息相比通常要短得多，所以相比之下使用ElGamal加密密钥然后用对称加密来加密任意长度的消息，这样要更快一些。

## 参考文献

<references />

[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink")
[Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")

1.   (conference version appeared in
    [CRYPTO](https://zh.wikipedia.org/wiki/CRYPTO "wikilink")'84, pp.
    10–18)