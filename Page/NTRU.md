**NTRU**是一个带有专利保护的开源[公开密钥加密](../Page/公开密钥加密.md "wikilink")系统，使用[基于格的加密算法来加密数据](https://zh.wikipedia.org/wiki/lattice-based_cryptography "wikilink")。它包括两部分算法：[NTRUEncrypt用来加密](https://zh.wikipedia.org/wiki/NTRUEncrypt "wikilink")，[NTRUSign用来进行](https://zh.wikipedia.org/wiki/NTRUSign "wikilink")[数字签名](https://zh.wikipedia.org/wiki/数字签名 "wikilink")。与其他流行的公钥加密系统不同，它可以防止被[Shor算法破解](https://zh.wikipedia.org/wiki/Shor算法 "wikilink")，并显著提升了性能。

## 历史

第一个被命名为NTRU的加密系统版本，是数学家，[Jill Pipher](https://zh.wikipedia.org/wiki/Jill_Pipher "wikilink")，和[Joseph H. Silverman于](https://zh.wikipedia.org/wiki/Joseph_H._Silverman "wikilink")1996年开发的。同年，[Daniel Lieman加入了NTRU开发团队](https://zh.wikipedia.org/wiki/Daniel_Lieman "wikilink")，并成立了公司[NTRU Cryptosystems, Inc.](https://zh.wikipedia.org/wiki/NTRU_Cryptosystems,_Inc. "wikilink")， 获得了该加密系统的专利。\[1\]2009年，该公司被一家名为Security Innovation的软件安全公司收购。\[2\]2013年，Damien Stehle和Ron Steinfeld创建了NTRU的一个可靠版本，目前正在由欧盟委员会授权的后量子加密小组进行研究。\[3\]

2016年5月，[Daniel Bernstein](https://zh.wikipedia.org/wiki/Daniel_J._Bernstein "wikilink")，[Tanja Lange等人发布了NTRU](https://zh.wikipedia.org/wiki/Tanja_Lange "wikilink") Prime，\[4\]通过消除一些令人不安的代数结构以抵抗潜在的攻击。

## 性能

在同等加密强度下，NTRU执行大开销的私钥操作比RSA算法快得多。\[5\]RSA算法的私钥操作耗时与密钥长度呈三次方关系，而NTRU相应操作为二次方关系。

据鲁汶大学电子工程部门表示，「使用一块现代的GTX280显卡，在256 bit加密强度下，最高可达每秒二十万次的加密的吞吐量。与最新的对称加密AES实现相比（这并不公平），只慢了大概二十倍。」\[6\]

## 防止量子计算机破解

与[RSA加密演算法](../Page/RSA加密演算法.md "wikilink")和[椭圆曲线加密算法](https://zh.wikipedia.org/wiki/椭圆曲线加密算法 "wikilink")（）不同，NTRU在基于[量子计算机](../Page/量子计算机.md "wikilink")的攻击面前没有已知的弱点。[国家标准枝术研究所在一份](https://zh.wikipedia.org/wiki/国家标准枝术研究所 "wikilink")2009年的调查中写到「目前不存在一种能同时兼顾公钥加密和数字签名，并在Shor算法面前没有弱点的可行替代方案」以及「在基于格的众多已有加密方案中，NTRU加密算法族看起来是最可行的」。\[7\]欧盟的PQCRYPTO计划(Horizon 2020 ICT-645622)正在评估Stehle–Steinfeld可靠版本的NTRU (并非原始版本的NTRU算法)，以作为一项潜在的欧洲标准。\[8\]然而Stehle-Steinfeld版本的NTRU「比原始版本效率要低得多」."\[9\]

## 标准

  - IEEE Std 1363.1标准，发布于2008年，标准化了基于格的公钥加密算法，尤其是NTRUEncrypt。\[10\]
  - X9.98标准，标准化了基于格的公钥加密算法，尤其是NTRUEncrypt，作为[X9](http://www.x9.org/)金融服务标准的一部分。\[11\]
  - 欧洲委员会的PQCRYPTO计划正在考虑标准化Stehle-Steinfeld可靠版本的NTRU\[12\]

## 发行方式

最初，NTRU只有一个带专利保护的付费开源库可用，打算写开源实现的作者收到诉讼威胁。\[13\]\[14\]直到2011年出现了第一个开源实现，\[15\]在2013年，Security Innovation豁免了开源项目的专利授权要求，\[16\]并以GPL v2协议释放了一份NTRU的参考实现。\[17\]

Security Innovation依然提供付费的专有软件选项。\[18\]

现在存在两个开源的NTRU实现：

  - GPL-licensed下的参考实现\[19\]
  - BSD-licensed下的库\[20\]

分别在Java和C下可用。

## 参考

## 外部链接

  - [Security Innovation homepage](http://www.securityinnovation.com)

[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink")

1.

2.

3.
4.  <https://ntruprime.cr.yp.to/ntruprime-20160511.pdf>

5.

6.

7.

8.

9.

10.

11.

12.
13.

14.

15.
16.

17.
18.

19.

20.