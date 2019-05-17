**GCD環**是一種有特殊性質的[整环](../Page/整环.md "wikilink")*R*，滿足其中任二個非零的元素都有[最大公因數](../Page/最大公因數.md "wikilink")（GCD），或者等價的，都有[最小公倍數](../Page/最小公倍數.md "wikilink")（LCM）\[1\]。

GCD環是將[唯一分解整環推廣到非](../Page/唯一分解整環.md "wikilink")[諾特環的情況](../Page/諾特環.md "wikilink")，事實上，一個整環是[唯一分解整環若且惟若其為滿足](../Page/唯一分解整環.md "wikilink")的GCD環。

## 性質

GCD環中每個[不可約元素都是](../Page/不可約元素.md "wikilink")[質元素](../Page/質元素.md "wikilink")（不過GCD環中不一定要有不可約元素，其至GCD環可能不是一個[域](../Page/域_\(數學\).md "wikilink")）。GCD環是
的，且其中每一個非零的元素都是\[2\]。換句話說，每個GCD環都是。

針對GCD環*R*中的每一對元素*x*和*y*，其最大公因數*d*及最小公倍數*m*可以選擇為使
*xy*}}成立的數值，換句話說，若*x*和*y*為非零元素，而*d*是*x*的*y*的任何一個最大公因數，則*xy*/*d*為*x*和*y*的最小公倍數，反之亦然。

若*R*是GCD環，其[多项式环](../Page/多项式环.md "wikilink")*R*\[*X*<sub>1</sub>,...,*X*<sub>*n*</sub>\]也是GCD環\[3\]。

針對一個GCD環中的多項式*X*，可以定義其內容為所有係數的最大公因數。因此多項式乘積的內容即為其多項式內容的乘積，如同敘述的一樣。

## 舉例

  - [唯一分解整環是GCD環](../Page/唯一分解整環.md "wikilink")，唯一分解整環是GCD環中恰好也是[原子環](https://zh.wikipedia.org/wiki/原子環 "wikilink")（每一個非零非單位元素，至少有一種分解為不可約元素乘積的方式）的部份。

  - （每個有限生成的[理想都是主要理想的整環](../Page/理想_\(环论\).md "wikilink")）是GCD環。Bézout環不同於（每個理想都是主要理想），Bézout環不一定要是唯一分解整環，例如一個[整函数的環是非原子性的Bézout環](../Page/整函数.md "wikilink")，也有許多其他類似的例子。整環是的GCD環的充份必要條件是其為Bézout環<ref>.
    P. 84: "It is easy to see that an integral domain is a Prüfer
    GCD-domain if and only if it is a Bezout

domain, and that a Prüfer domain need not be a GCD-domain.".</ref>

  - 若*R*是非原子性的GCD環，則*R*\[*X*\]是GCD環中既不是唯一分解整環（因為非原子性），也不是Bézout環（因為*X*和*R*一個不能取倒數的非零元素*a*可以產生一個不包括1的理想，但1是*X*和*a*的最大公因數）的例子。任何符合此條件的環*R*\[*X*<sub>1</sub>,...,*X*<sub>*n*</sub>\]都有類似性質。

## 參考資料

[Category:交換代數](https://zh.wikipedia.org/wiki/Category:交換代數 "wikilink")
[Category:環論](https://zh.wikipedia.org/wiki/Category:環論 "wikilink")

1.
2.  [planetmath
    proof](http://planetmath.org/encyclopedia/ProofThatAGcdDomainIsIntegrallyClosed.html)

3.  Robert W. Gilmer, *Commutative semigroup rings*, University of
    Chicago Press, 1984, p. 172.