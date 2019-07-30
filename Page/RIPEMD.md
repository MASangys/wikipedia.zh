[右](https://zh.wikipedia.org/wiki/File:RIPEMD_160_2.png "fig:右") **RIPEMD** (**RACE原始完整性校驗訊息摘要**)是一種加密哈希函數，由 [鲁汶大学](https://zh.wikipedia.org/wiki/荷语天主教鲁汶大学 "wikilink") Hans Dobbertin,Antoon Bosselaers 和 Bart Prenee組成的COSIC 研究小组发布于1996年。 RIPEMD是以MD4为基础原则所设计的 ，而且其表現與更有名的[SHA-1类似](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink").

RIPEMD-160是以原始版RIPEMD所改进的160位元版本，而且是RIPEMD系列中最常见的版本。 RIPEMD-160是設計給学术社群所使用的，剛好相对于 [国家安全局 所设计](../Page/美国国家安全局.md "wikilink") [SHA-1](../Page/SHA-1.md "wikilink") 和 [SHA-2](../Page/SHA-2.md "wikilink") 算法。 另一方面，RIPEMD-160比SHA-1較少使用，所以可能造成RIPEMD-160比SHA還不常被審查。另外，RIPEMD-160並沒有任何專利所限制。

同時也存在著128,256-320位元的这种算法，称为RIPEMD-128,RIPEMD-256和RIPEMD-320。 128位版本的用意仅是取代原始版RIPEMD，因為原版也同樣是128位元，並且被发现有潛在的安全問題。 而256和320位版本只有减少碰撞發生的机率，但沒有提升安全等級(以 preimage舉例)。不过，RIPEMD的设计者们没有真正设计256和320位元这2种标准，他们只是在128位元和160位元的基础上，修改了初始参数和s-box来达到输出为256和320位元。所以，256位的强度和128相当，而320位的强度和160位相当。且RIPEMD建立在md的基础之上，所以其添加数据的方式和md5完全一样。

在2004年八月，據回報有個碰撞發生於原始版的RIPEMD。\[1\] 但这個問題不會發生在RIPEMD-160.\[2\]

## RIPEMD-160範例

160位元的RIPEMD-160哈希值是以40位的十六進制所表示。 下面表明了43字节 [ASCII](../Page/ASCII.md "wikilink")码 的输入與其對应的RIPEMD-160哈希值：

` RIPEMD-160("The quick brown fox　jumps over the lazy dog")=`
` 37f332f68db77bd9d7edd4969571ad671cf9dd3b`

RIPEMD-160能表現出理想的[雪崩效應](../Page/雪崩效应.md "wikilink") (例如將 `d` 改成 `c`，即微小的变化就能產生一个完全不同的哈希值):

` RIPEMD-160("The quick brown fox jumps over the lazy cog")=`
` 132072df690933835eb8b6ad0b77e7b6f14acad7`

0字串長度的哈希值表示為：

` RIPEMD-160("")= `
` 9c1185a5c5e9fc54612808977ee8f548b2258d31`

## 參見

  - [散列函数安全性概要](../Page/散列函数安全性概要.md "wikilink")
  - [密码散列函数比较](https://zh.wikipedia.org/wiki/密码散列函数比较 "wikilink")
  - [密碼學主題列表](../Page/密碼學主題列表.md "wikilink")

## 参考文献

<references />

## 外部连接

  - [The hash function RIPEMD-160](https://homes.esat.kuleuven.be/~bosselae/ripemd160.html)
  - [RIPEMD-160 Ecrypt page](https://ehash.iaik.tugraz.at/wiki/RIPEMD-160)

[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink")

1.  Xiaoyun Wang; Dengguo Feng; Xuejia Lai; Hongbo Yu (2004-08-17). "Collisions Hash Functions MD4 MD5 RIPEMD HAVAL". Retrieved 2017-03-03.<span title="ctx_ver=Z39.88-2004&rfr_id=info%3Asid%2Fzh.wikipedia.org%3ARIPEMD&rft.au=Xiaoyun+Wang&rft.btitle=Collisions+Hash+Functions+MD4+MD5+RIPEMD+HAVAL&rft.date=2004-08-17&rft.genre=unknown&rft_id=https%3A%2F%2Feprint.iacr.org%2F2004%2F199&rft_val_fmt=info%3Aofi%2Ffmt%3Akev%3Amtx%3Abook" class="Z3988" id="cxmwMg" tabindex="0">  </span>
2.  Florian Mendel; Norbert Pramstaller; Christian Rechberger; Vincent Rijmen (2006). "On the Collision Resistance of RIPEMD-160". Retrieved 2017-03-03.<span title="ctx_ver=Z39.88-2004&rfr_id=info%3Asid%2Fzh.wikipedia.org%3ARIPEMD&rft.au=Florian+Mendel&rft.btitle=On+the+Collision+Resistance+of+RIPEMD-160&rft.date=2006&rft.genre=unknown&rft_id=https%3A%2F%2Fonline.tugraz.at%2Ftug_online%2Fvoe_main2.getvolltext%3FpCurrPk%3D17675&rft_val_fmt=info%3Aofi%2Ffmt%3Akev%3Amtx%3Abook" class="Z3988" id="cxmwOg" tabindex="0">  </span>