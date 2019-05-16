在[密码学中](../Page/密码学.md "wikilink")，**RC5**是一种因简洁著称的[对称](../Page/對稱密鑰加密.md "wikilink")[分组加密算法](../Page/分组密码.md "wikilink")。由[罗纳德·李维斯特于](../Page/罗纳德·李维斯特.md "wikilink")1994年设计，\[1\]“RC”代表“Rivest
Cipher”，或者“Ron's
Code”（相较于[RC2和](https://zh.wikipedia.org/wiki/RC2 "wikilink")[RC4](../Page/RC4.md "wikilink")）。[高级加密标准](../Page/高级加密标准.md "wikilink")（AES）的候选算法之一[RC6是基于RC](../Page/RC6.md "wikilink")5的。

## 简介

和许多加密方法不同，RC5支持可变的[块大小](https://zh.wikipedia.org/wiki/块大小 "wikilink")(32、64或128[位元](../Page/位元.md "wikilink"))，[密钥长度](https://zh.wikipedia.org/wiki/密钥长度 "wikilink")（0至2040位）和加密轮数（0～255）。最初建议选择的参数是64位的块大小，128位的密钥和12轮加密。

RC5的一个关键特征是使用基于数据的置换。RC5的其中一个目标是促进对于这类作为[原始密码](https://zh.wikipedia.org/wiki/原始密码 "wikilink")的操作的研究和评估。RC5也包括一些的[取模加法和](https://zh.wikipedia.org/wiki/模算數 "wikilink")[逻辑异或(XOR)运算](../Page/逻辑异或.md "wikilink")。这个加密的一般结构是一种类[费斯妥网络](https://zh.wikipedia.org/wiki/费斯妥密码 "wikilink")。加密和解密程序可以用几行代码写完，但密钥的生成算法更复杂。密钥扩展使用了[e和](../Page/E_\(数学常数\).md "wikilink")[黄金比例代入一个](../Page/黄金分割率.md "wikilink")[单向函数](../Page/單向函數.md "wikilink")，将所得值作为“[袖子里是空的](https://zh.wikipedia.org/wiki/袖子里是空的数字 "wikilink")”数字（即无任何来源依据的魔法数字）。算法的诱人的简洁性和基于数据的置换的特性，让RC5吸引了众多密码研究人员将其作为研究对象。
RC5通常被记为RC5-w/r/b，w=字的大小（以bit为单位），r=加密轮数，b=密钥的字节数。

## 算法

RC5加密和解密都将随机的密钥扩展成2(r+1)个字，在加密和解密的过程中，这些字将会被按顺序使用（而且每个字只使用一次）。以下的所有内容都来自Rivest的修订后的RC5的论文\[2\]

### 密钥扩展

密钥扩展算法将会在下面讲解，首先以伪代码表示，之后是用从参考资料中的论文附录中直接复制的C语言代码。

以下是论文中的命名方案，使用了这些变量名：

  - w - 一个字的长度（以bit为单位)，通常是16、32或64。加密以两个字为单位进行。
  - u＝w/8-一个字的长度，以字节为单位。
  - b-密钥的长度，字节为单位。
  - K\[\]-密钥，可以看作是一个由字节数据组成的数组(下标从0开始)。
  - c - 密钥的长度，以字为单位(如果b=0，取1).
  - L\[\] - 一个在密钥生成的临时数组，用来按字初始化密钥
  - r - 加密的轮数。
  - t=2(r+1) - 需要的轮加密的子密钥个数。
  - S\[\] - 伪随机S数组。
  - P<sub>w</sub> - 第一个魔法数字，定义为
    \(Odd((e - 2) * 2^w)\)，其中Odd取最接近给定输入的奇数，*e*
    为[自然对数的底数](../Page/E_\(数学常数\).md "wikilink")，*w*
    见上述定义。对于常见的*w*值，对应的P<sub>w</sub>
    在这里以十六进制给出：
      - 对于 *w* =16: 0xB7E1
      - 对于 *w* =32: 0xB7E15163
      - 对于 *w* =64: 0xB7E151628AED2A6B
  - Q<sub>w</sub> -第二个魔法数字，定义为
    \(Odd((\phi - 1) * 2^w)\)其中Odd取最接近给定输入的奇数，\(\phi\)
    是[黄金比例](../Page/黄金分割率.md "wikilink")，*w*
    见上述定义。对于共对于常见的*w*值，对应的P<sub>w</sub>
    在这里以十六进制给出：
      - 对于 *w* =16:0x9E37
      - 对于 *w* =32:0x9E3779B9
      - 对于 *w* =64:0x9E3779B97F4A7C15

<!-- end list -->

    # Break K into words
    # u = w / 8
    c = ceiling( max(b, 1) / u )
    # L is initially a c-length list of 0-valued w-length words
    for i = b-1 down to 0 do:
        L[i/u] = (L[i/u] << 8) + K[i]

    # Initialize key-independent pseudorandom S array
    # S is initially a t=2(r+1) length list of undefined w-length words
    S[0] = P_w
    for i = 1 to t-1 do:
        S[i] = S[i-1] + Q_w

    # The main key scheduling loop
    i = j = 0
    A = B = 0
    do 3 * max(t, c) times:
        A = S[i] = (S[i] + A + B) <<< 3
        B = L[j] = (L[j] + A + B) <<< (A + B)
        i = (i + 1) % t
        j = (j + 1) % c

    # return S

实例源码由Rivest的RC5论文的附录提供。这个代码实现对应 w = 32, r = 12, b = 16。

``` C
void RC5_SETUP(unsigned char *K)
{
   // w = 32, r = 12, b = 16
   // c = max(1, ceil(8 * b/w))
   // t = 2 * (r+1)
   WORD i, j, k, u = w/8, A, B, L[c];

   for(i = b-1, L[c-1] = 0; i != -1; i--)
      L[i/u] = (L[i/u] << 8) + K[i];

   for(S[0] = P, i = 1; i < t; i++)
      S[i] = S[i-1] + Q;

   for(A = B = i = j = k = 0; k < 3 * t; k++, i = (i+1) % t, j = (j+1) % c)
   {
      A = S[i] = ROTL(S[i] + (A + B), 3);
      B = L[j] = ROTL(L[j] + (A + B), (A + B));
   }
}
```

### 加密

加密涉及的一个简单的函数的几轮加密。基于安全需要和时间方面的考虑，12或20轮是建议的值。除了上述使用的变量，以下变量在算法之中使用：

  - A，B - 要加密的明文的两个字。

<!-- end list -->

``` Python
A = A + S[0]
B = B + S[1]
for i = 1 to r do:
    A = ((A ^ B) <<< B) + S[2 * i]
    B = ((B ^ A) <<< A) + S[2 * i + 1]

# The ciphertext block consists of the two-word wide block composed of A and B, in that order.
return A, B
```

Rivest给出的示例C源码如下

``` C
void RC5_ENCRYPT(WORD *pt, WORD *ct)
{
   WORD i, A = pt[0] + S[0], B = pt[1] + S[1];

   for(i = 1; i <= r; i++)
   {
      A = ROTL(A ^ B, B) + S[2*i];
      B = ROTL(B ^ A, A) + S[2*i + 1];
   }
   ct[0] = A; ct[1] = B;
}
```

### 解密

解密实际上就是直接把加密过程颠倒。以下代码展示了这个过程。

``` Python
for i = r down to 1 do:
    B = ((B - S[2 * i + 1]) >>> A) ^ A
    A = ((A - S[2 * i]) >>> B) ^ B
B = B - S[1]
A = A - S[0]

return A, B
```

Rivest给出的示例C源码如下。

``` C
void RC5_DECRYPT(WORD *ct, WORD *pt)
{
   WORD i, B=ct[1], A=ct[0];

   for(i = r; i > 0; i--)
   {
      B = ROTR(B - S[2*i + 1], A) ^ A;
      A = ROTR(A - S[2*i], B) ^ B;
   }

   pt[1] = B - S[1]; pt[0] = A - S[0];
}
```

## 密码分析

12轮RC5(64位块)容易受到使用了2<sup>44</sup>的选定的明文的[差分攻击](https://zh.wikipedia.org/wiki/差分密码分析 "wikilink")。\[3\]
18–20轮加密则被认为可以提供足够的保护。

拥有其算法专利的公司[RSA安全](https://zh.wikipedia.org/wiki/RSA_Security "wikilink")，\[4\]
提供一系列的10,000美元的奖金作为破译用RC5加密的[密文的奖励](https://zh.wikipedia.org/wiki/密文 "wikilink")，但这些竞赛已经在2007年5月停止。其中的一部分已经在[Distributed.net组织下利用](https://zh.wikipedia.org/wiki/Distributed.net "wikilink")[分布式计算破解](../Page/分布式计算.md "wikilink")。[Distributed.net](https://zh.wikipedia.org/wiki/Distributed.net "wikilink")[暴力破解了用](https://zh.wikipedia.org/wiki/暴力破解法 "wikilink")56位和64位密钥的RC5加密的密文，正在尝试破解72位密钥的密文；截至2018年2月，5.02%的密钥空间已被遍历。以目前的速度，这将需要大约166年以测试的每一个可能的剩余密钥，以此才能保证项目的完成。\[5\]这项任务启发了许多在集群计算领域的新兴的开发研究。\[6\]

## 参见

  - [Madryga](https://zh.wikipedia.org/wiki/Madryga "wikilink")
  - [Red
    Pike](https://zh.wikipedia.org/wiki/Red_Pike_\(cipher\) "wikilink")

## 参考资料

## 外部链接

  - [Rivests's revised paper describing the
    cipher](http://people.csail.mit.edu/rivest/Rivest-rc5rev.pdf)
  - [Rivest's original
    paper](http://people.csail.mit.edu/rivest/Rivest-rc5.pdf)
  - [SCAN's entry for the
    cipher](http://www.users.zetnet.co.uk/hopwood/crypto/scan/cs.html#RC5)
  - [RSA Laboratories FAQ — What are RC5 and
    RC6?](http://www.emc.com/emc-plus/rsa-labs/standards-initiatives/rc5-and-rc6.htm)
  - [Helger Lipmaa's links on
    RC5](https://web.archive.org/web/20081223185415/http://research.cyber.ee/~lipmaa/crypto/link/block/rc5.php)

[Category:已攻破的分组密码](https://zh.wikipedia.org/wiki/Category:已攻破的分组密码 "wikilink")

1.
2.  <http://people.csail.mit.edu/rivest/Rivest-rc5rev.pdf>
3.  Biryukov A.和Kushilevitz E.(1998年)。改进的密码分析的RC5的。EUROCRYPT1998年。
4.  Rivest, R. L, "Block Encryption Algorithm With Data Dependent
    Rotation", , issued on 3 March 1998.
5.  [RC5-72/项目的总体统计数据](http://stats.distributed.net/projects.php?project_id=8)
6.