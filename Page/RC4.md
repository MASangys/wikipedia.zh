在[密碼學中](https://zh.wikipedia.org/wiki/密碼學 "wikilink")，**RC4**（來自的縮寫）是一種[流加密算法](https://zh.wikipedia.org/wiki/流加密 "wikilink")，[密钥](../Page/密钥.md "wikilink")长度可变。它加解密使用相同的密钥，因此也属于[对称加密算法](https://zh.wikipedia.org/wiki/对称加密 "wikilink")。RC4是[有线等效加密](https://zh.wikipedia.org/wiki/有线等效加密 "wikilink")（WEP）中采用的加密算法，也曾经是[TLS可采用的算法之一](https://zh.wikipedia.org/wiki/传输层安全协议 "wikilink")。

由美國密碼學家[羅納德·李維斯特](https://zh.wikipedia.org/wiki/羅納德·李維斯特 "wikilink")（）在1987年设计的。由于RC4算法存在弱点，2015年2月所發佈的
RFC 7465 规定禁止在TLS中使用RC4加密算法\[1\]。

RC4由[伪随机数生成器和](https://zh.wikipedia.org/wiki/伪随机数 "wikilink")[异或运算组成](https://zh.wikipedia.org/wiki/异或 "wikilink")。RC4的密钥长度可变，范围是\[1,255\]。RC4一个字节一个字节地加解密。给定一个密钥，伪随机数生成器接受密钥并产生一个[S盒](../Page/S盒.md "wikilink")。S盒用来加密数据，而且在加密过程中S盒会变化。

由于[异或运算的](https://zh.wikipedia.org/wiki/异或 "wikilink")[对合性](https://zh.wikipedia.org/wiki/对合 "wikilink")，RC4加密解密使用同一套算法。

## 歷史

RC4是由[RSA
Security的](https://zh.wikipedia.org/wiki/RSA_Security "wikilink")[罗纳德·李维斯特](../Page/罗纳德·李维斯特.md "wikilink")在1987年开发出来的，虽然它的官方名是“Rivest
Cipher 4”，但是首字母缩写RC也可以理解为"Ron's
Code"\[2\]。（见[RC2](https://zh.wikipedia.org/wiki/RC2 "wikilink")，[RC5](../Page/RC5.md "wikilink")，[RC6](../Page/RC6.md "wikilink")）

RC4开始时是商业密码，没有公开发表出来，但是在1994年9月份的时候，它被人匿名公开在了Cypherpunks
邮件列表上，很快它就被发到了sci.crypt
新闻组上，随后从这传播到了互联网的许多站点。随之贴出的代码后来被证明是真实的，因为它的输出跟取得了RC4版权的私有软件的输出是完全相同的。由于算法已经公开，RC4也就不再是商业秘密了，只是它的名字“RC4”仍然是一个注册商标。RC4经常被称作是“ARCFOUR”或者"ARC4"（意思是称为RC4），这样来避免商标使用的问题。RSA
Security从来没有正式公布这个算法，罗纳德·李维斯特在2008年的自己的课程笔记中给出了一个指向RC4的[英文维基百科文章的链接](https://zh.wikipedia.org/wiki/英文维基百科 "wikilink")，并且在2014年的文件\[3\]中确认了RC4及其代码的历史。

RC4已经成为一些常用的协议和标准的一部分，如1997年的[WEP和](https://zh.wikipedia.org/wiki/WEP "wikilink")2003/2004年无线卡的WPA；和1995年的[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")，以及后来1999年的[TLS](https://zh.wikipedia.org/wiki/TLS "wikilink")。直到由于[RC4攻击使用RC](https://zh.wikipedia.org/wiki/#RC4攻击 "wikilink")4的SSL和TLS，在2015年由
RFC 7465 禁止在所有版本的TLS中使用。
让它如此广泛分布和使用的主要因素是它不可思议的简单和速度，不管是软件还是硬件，实现起来都十分容易。

## 伪代码

初始化长度为256的[S盒](../Page/S盒.md "wikilink")。第一个for循环将0到255的互不重复的元素装入S盒。第二个for循环根据密钥打乱S盒。

``` C
 for i from 0 to 255
     S[i] := i
 endfor
 j := 0
 for( i=0 ; i<256 ; i++)
     j := (j + S[i] + key[i mod keylength]) % 256
     swap values of S[i] and S[j]
 endfor
```

下面i,j是两个指针。每收到一个字节，就进行while循环。通过一定的算法（(a),(b)）定位S盒中的一个元素，并与输入字节异或，得到k。循环中还改变了S盒（(c)）。如果输入的是[明文](https://zh.wikipedia.org/wiki/明文 "wikilink")，输出的就是[密文](https://zh.wikipedia.org/wiki/密文 "wikilink")；如果输入的是密文，输出的就是明文。

``` C
 i := 0
 j := 0
 while GeneratingOutput:
     i := (i + 1) mod 256   //a
     j := (j + S[i]) mod 256 //b
     swap values of S[i] and S[j]  //c
     k := inputByte ^ S[(S[i] + S[j]) % 256]
     output K
 endwhile
```

此算法保证每256次循环中S盒的每个元素至少被交换过一次。

## 破解

2015年，[比利時](https://zh.wikipedia.org/wiki/比利時 "wikilink")[魯汶大學的研究人員Mathy](https://zh.wikipedia.org/wiki/魯汶大學 "wikilink")
Vanhoef及Frank
Piessens，公布了針對RC4加密演算法的新型攻擊程式，可在75小時內取得[cookie的內容](https://zh.wikipedia.org/wiki/cookie "wikilink")。\[4\]

## 参考文献

[Category:流密码](https://zh.wikipedia.org/wiki/Category:流密码 "wikilink")
[Category:已攻破的流密码](https://zh.wikipedia.org/wiki/Category:已攻破的流密码 "wikilink")
[Category:伪随机数生成器](https://zh.wikipedia.org/wiki/Category:伪随机数生成器 "wikilink")
[Category:免费密码](https://zh.wikipedia.org/wiki/Category:免费密码 "wikilink")

1.
2.  [Rivest FAQ](http://people.csail.mit.edu/rivest/faq.html#Ron)
3.  Rivest, Ron; Schuldt, Jacob (27 October 2014). ["Spritz – a spongy
    RC4-like stream cipher and hash function"
    (PDF)](http://people.csail.mit.edu/rivest/pubs/RS14.pdf). Retrieved
    26 October 2014.
4.  <http://www.rc4nomore.com> RC4 NOMORE