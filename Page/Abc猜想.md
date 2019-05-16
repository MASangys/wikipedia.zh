**abc猜想**（）是一個未解決的數學猜想，最先由[約瑟夫·奧斯特莱及](https://zh.wikipedia.org/wiki/約瑟夫·奧斯特莱 "wikilink")[大衛·馬瑟在](../Page/大衛·馬瑟.md "wikilink")1985年提出。abc猜想以三個互質正整數a,
b,
c描述，c是a及b的和，猜想因此得名。此猜想有數個宣稱的證明，最近提出的正在檢查中，至2014年9月此猜想仍然未得證明。对此也衍生出一[BOINC項目](../Page/BOINC.md "wikilink")「[ABC@Home](https://zh.wikipedia.org/wiki/ABC@Home "wikilink")」。

abc猜想若得證，數論中很多著名猜想可以立時得出。[多利安·哥德費爾德稱abc猜想為](https://zh.wikipedia.org/wiki/多利安·哥德費爾德 "wikilink")「[丟番圖分析中最重要的未解問題](../Page/丟番圖方程.md "wikilink")」。

## 內容

對正整數*n*，\(\operatorname{rad}(n)\)表示\(n\)的[質因數的](../Page/質因數.md "wikilink")[積](https://zh.wikipedia.org/wiki/積 "wikilink")，稱為*n*的**根基**（radical）。例如

  -
    rad(16) = rad(2<sup>4</sup>) = 2,
    rad(17) = 17,
    rad(18) = rad(2 ⋅ 3<sup>2</sup>) = 2 · 3 = 6,
    rad(1000000) = rad(2<sup>6</sup> ⋅ 5<sup>6</sup>) = 2 ⋅ 5 = 10.

若正整數*a*, *b*, *c* 彼此[互質](../Page/互質.md "wikilink")，且*a* +
*b*=*c*，「通常」會有*c* \< rad(*abc*)，例如：

\[a = 2\], \(b = 7\), \(c = 9\)：\(\operatorname{rad}(abc) = 42 > c\)。

\[a = 9\], \(b = 16\), \(c = 25\)：\(\operatorname{rad}(abc) = 30 > c\)。

但是也有反例，例如：

\[a = 3\], \(b = 125\),
\(c = 128\)：因為\(125=5^{3}\)，\(128=2^{7}\)，故此\(\operatorname{rad}(abc) = 30 < c\)。
如上有多於一個整數可被小的質數的高次冪整除，使rad(*abc*) \<
*c*，是較特殊的情況。[ABC@Home計劃目的在尋找更多這樣的例子](https://zh.wikipedia.org/wiki/ABC@Home "wikilink")。

**abc猜想（一）**

  -
    對於任何\(\varepsilon >0\)，只存在有限個互質正整數的三元組(*a*, *b*, *c*)，*c* = *a* +
    *b*，使得
      -
        \(c > \operatorname{rad}(abc)^{1+\epsilon}\)

abc猜想也有以下等價的表述方式：

**abc猜想（二）**

  -
    對於任何\(\varepsilon >0\)，存在常數\(C_{\varepsilon}>0\)，使得對於互質正整數的三元組(*a*,
    *b*, *c*)，*c* = *a* + *b*，有：
    \[c < C_{\varepsilon} \operatorname{rad}(abc)^{1+\epsilon},\]

abc猜想第三個表述方式，用到了三元組(*a*, *b*, *c*)的**品質**（quality），定義為：

\[q(a,b,c)=\frac{\log(c)}{\log(\operatorname{rad}(abc))}\] 例如：

  - *q*(4, 127, 131) = log(131) / log(rad(4·127·131)) = log(131) /
    log(2·127·131) = 0.46820...
  - *q*(3, 125, 128) = log(128) / log(rad(3·125·128)) = log(128) /
    log(30) = 1.426565...

一般的互質正整數的三元組，通常有 rad(*abc*) \> *c*，因此*q*(*a*, *b*, *c*) \<
1。*q*大於1的情況較少出現。

**abc猜想（三）**

  -
    對於任何\(\varepsilon > 0\)，只存在有限個互質正整數的三元組(*a*, *b*, *c*)，*c* = *a* +
    *b*，使得
    \[q(a,b,c) > 1+\epsilon\]

abc猜想中的ε不能去掉，不然命題就不成立。考慮以下例子：

\[a_n = 3^{2^n} -1\], \(b_n = 1\), \(c_n = 3^{2^n}\)
這三個正整數互質，且有\(a_n+b_n=c_n\)。注意到\(a_n\)可被\(2^{n+2}\)整除，因此有

\[\operatorname{rad}(a_n b_n c_n) \le 3 \cdot 2 \cdot \frac {a_n}{2^{n+2}}= \frac {3 a_n}{2^{n+1}}\]:
因此

\[c_n > a_n \ge \frac {2^{n+1}}{3} \operatorname{rad}(a_n b_n c_n)\]
當*n*趨向無限大時，\(\frac {2^{n+1}}{3}\)也趨向無限大。因此不存在常數*C*，使得 *c* \< *C*
rad(*abc*)對所有適合條件的三元組都成立。

## 可得出的結果

如果abc猜想得證，那麼有很多結果可以推導出來。其中一些結果，在abc猜想提出後，已經以其他方法得到證明，一些則仍然為猜想。

  -
  - [費馬大定理對所有足夠大指數的情形](https://zh.wikipedia.org/wiki/費馬大定理 "wikilink")（[安德魯·懷爾斯已證一般情形](../Page/安德魯·懷爾斯.md "wikilink")）


  - （[格爾德·法爾廷斯已證一般情形](https://zh.wikipedia.org/wiki/格爾德·法爾廷斯 "wikilink")）

  - ，除了有限多的反例。

  - 存在無限多[非維費里希素數](https://zh.wikipedia.org/wiki/韋伊費列治素數 "wikilink")

  - 的弱形式

  -
  - 用[勒讓德符號構成的](https://zh.wikipedia.org/wiki/勒讓德符號 "wikilink")[L函數](../Page/狄利克雷L函數.md "wikilink")*L*(*s*,
    *χ<sub>d</sub>*)沒有（需要abc猜想在[代數數域上的一致形式](https://zh.wikipedia.org/wiki/代數數域 "wikilink")，不只在有理整數上。）

  - 對有至少3個簡單零點的多項式*P*(*x*)，在整數*x*取的所有值中，只有有限個[次方數](https://zh.wikipedia.org/wiki/次方數 "wikilink")。\[1\]

  - 的推廣形式，關於*y<sup>m</sup>* = *x<sup>n</sup>* +
    *k*的解的個數（定理是*k*=1的情形），及Pillai猜想，關於*Ay<sup>m</sup>*
    = *Bx<sup>n</sup>* + *k*的解的個數。

  - 等價於Granville–Langevin 猜想\[2\]\[3\]

  - 等價於修改後的

  - *n*\! + *A*= *k*<sup>2</sup>，對任何給定的整數*A*，都只有有限個解。

## 理論結果

abc猜想導出*c*有*abc*的根基的接近線性函數的[上界](https://zh.wikipedia.org/wiki/上界 "wikilink")；不過，現在已知的是[指數上界](https://zh.wikipedia.org/wiki/指數函數 "wikilink")。確切結果如下：

\[c < \exp{ \left(K_1 \operatorname{rad}(abc)^{15}\right) }\] ,

\[c < \exp{ \left(K_2 \operatorname{rad}(abc)^{\frac{2}{3} + \varepsilon}\right) }\]
,

\[c < \exp{ \left(K_3 \operatorname{rad}(abc)^{\frac{1}{3} + \varepsilon}\right) }\]
.

上述的上界中，*K*<sub>1</sub>是不依賴*a*, *b*,
*c*的常數，而*K*<sub>2</sub>和*K*<sub>3</sub>是（以[可有效計算的方式](https://zh.wikipedia.org/wiki/可計算函數 "wikilink")）依賴於ε的常數，但不依賴於*a*,
*b*, *c*。上述的上界對*c* \> 2的三元組都成立。

## 計算結果

2006年，荷蘭的[萊頓大學數學系與](../Page/萊頓大學.md "wikilink")[Kennislink科學研究所合作](https://zh.wikipedia.org/wiki/Kennislink "wikilink")，開展[ABC@Home計劃](https://zh.wikipedia.org/wiki/ABC@Home "wikilink")。這個計劃是[網格計算系統](https://zh.wikipedia.org/wiki/網格計算 "wikilink")，目的在找出更多的正整數三元組*a*,
*b*, *c*使得rad(*abc*) \<
*c*。雖然有無限個例子或反例不能解決abc猜想，但是期望藉著這個計劃發現的三元組的模式，可以得出對這個猜想以至於數論的新的洞見。

下述的*q*是上節定義的**品質**。

|                        | *q* \> 1   | *q* \> 1.05 | *q* \> 1.1 | *q* \> 1.2 | *q* \> 1.3 | *q* \> 1.4 |
| ---------------------- | ---------- | ----------- | ---------- | ---------- | ---------- | ---------- |
| *c* \< 10<sup>2</sup>  | 6          | 4           | 4          | 2          | 0          | 0          |
| *c* \< 10<sup>3</sup>  | 31         | 17          | 14         | 8          | 3          | 1          |
| *c* \< 10<sup>4</sup>  | 120        | 74          | 50         | 22         | 8          | 3          |
| *c* \< 10<sup>5</sup>  | 418        | 240         | 152        | 51         | 13         | 6          |
| *c* \< 10<sup>6</sup>  | 1,268      | 667         | 379        | 102        | 29         | 11         |
| *c* \< 10<sup>7</sup>  | 3,499      | 1,669       | 856        | 210        | 60         | 17         |
| *c* \< 10<sup>8</sup>  | 8,987      | 3,869       | 1,801      | 384        | 98         | 25         |
| *c* \< 10<sup>9</sup>  | 22,316     | 8,742       | 3,693      | 706        | 144        | 34         |
| *c* \< 10<sup>10</sup> | 51,677     | 18,233      | 7,035      | 1,159      | 218        | 51         |
| *c* \< 10<sup>11</sup> | 116,978    | 37,612      | 13,266     | 1,947      | 327        | 64         |
| *c* \< 10<sup>12</sup> | 252,856    | 73,714      | 23,773     | 3,028      | 455        | 74         |
| *c* \< 10<sup>13</sup> | 528,275    | 139,762     | 41,438     | 4,519      | 599        | 84         |
| *c* \< 10<sup>14</sup> | 1,075,319  | 258,168     | 70,047     | 6,665      | 769        | 98         |
| *c* \< 10<sup>15</sup> | 2,131,671  | 463,446     | 115,041    | 9,497      | 998        | 112        |
| *c* \< 10<sup>16</sup> | 4,119,410  | 812,499     | 184,727    | 13,118     | 1,232      | 126        |
| *c* \< 10<sup>17</sup> | 7,801,334  | 1,396,909   | 290,965    | 17,890     | 1,530      | 143        |
| *c* \< 10<sup>18</sup> | 14,482,065 | 2,352,105   | 449,194    | 24,013     | 1,843      | 160        |
|                        |            |             |            |            |            |            |

符合*q* \> 1的三元組分佈\[4\]

，ABC@Home找出 2380 萬個三元組，現今目標在找出c不大於2<sup>63</sup>的所有三元組(a,b,c)。\[5\]

|   | *q*    | *a*            | *b*                                       | *c*                                        | 發現者                                                   |
| - | ------ | -------------- | ----------------------------------------- | ------------------------------------------ | ----------------------------------------------------- |
| 1 | 1.6299 | 2              | 3<sup>10</sup>·109                        | 23<sup>5</sup>                             | Eric Reyssat                                          |
| 2 | 1.6260 | 11<sup>2</sup> | 3<sup>2</sup>·5<sup>6</sup>·7<sup>3</sup> | 2<sup>21</sup>·23                          | Benne de Weger                                        |
| 3 | 1.6235 | 19·1307        | 7·29<sup>2</sup>·31<sup>8</sup>           | 2<sup>8</sup>·3<sup>22</sup>·5<sup>4</sup> | Jerzy Browkin, Juliusz Brzezinski                     |
| 4 | 1.5808 | 283            | 5<sup>11</sup>·13<sup>2</sup>             | 2<sup>8</sup>·3<sup>8</sup>·17<sup>3</sup> | Jerzy Browkin, Juliusz Brzezinski, Abderrahmane Nitaj |
| 5 | 1.5679 | 1              | 2·3<sup>7</sup>                           | 5<sup>4</sup>·7                            | Benne de Weger                                        |

\[6\]

## 歷史

1996年，[艾倫·貝克](../Page/艾倫·貝克.md "wikilink")（Alan
Baker）提出一個較為精確的猜想，將\(\operatorname{rad}(abc)\)用\(\varepsilon^{-\omega}\operatorname{rad}(abc)\)取代，在此\(\omega\)是\(a, b, c\)的不同質因數的數目。

2007年，[呂西安·施皮羅嘗試給出證明](https://zh.wikipedia.org/wiki/呂西安·施皮羅 "wikilink")，後來被發現有錯誤。\[7\]

2012年8月，[日本](../Page/日本.md "wikilink")[京都大學數學家](https://zh.wikipedia.org/wiki/京都大學 "wikilink")[望月新一發表長約五百頁的abc猜想的證明](../Page/望月新一.md "wikilink")，以他建立的[宇宙際泰赫米勒理論](https://zh.wikipedia.org/wiki/宇宙際泰赫米勒理論 "wikilink")（inter-universal
Teichmüller theory）為基礎\[8\]\[9\]\[10\]。該證明目前正由其他數學專家檢查中。\[11\]当Vesselin
Dimitrov和Akshay
Venkatesh在2012年10月发现一处错误时，望月新一在他的网站确认了此错误，并声称这个错误能够在近期修补，不会影响最后的结果\[12\]。2012年12月，望月新一在自己主页贴出了自己对所有四篇文章的修改稿。主要包含27条重要的修改。2012年12月-2013年2月，他又屡次对文章进行了修订，新修正了18处错误，當中很多也是打字错误\[13\]。望月新一在網上公開了2013年\[14\]以及2014年\[15\]的檢驗進度報告。2018年8月，[皮特·舒爾策和](https://zh.wikipedia.org/wiki/皮特·舒爾策 "wikilink")指出，望月新一的證明論文中
Corollary 3.12 證明結尾的一行推理存在無法修復的缺陷。\[16\]望月認為二者的批評存在“某種根本上的誤解”。\[17\]

## 参考文献

### 引用

### 来源

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
## 外部連結

  - [ABC@home](http://abcathome.com/)
    [分布式计算项目](../Page/分布式计算.md "wikilink")[ABC@Home](https://zh.wikipedia.org/wiki/ABC@Home "wikilink").

  - [Easy as ABC](http://bit-player.org/2007/easy-as-abc): Easy to
    follow, detailed explanation by Brian Hayes.

  -
  - Abderrahmane Nitaj's [ABC conjecture home
    page](https://web.archive.org/web/20000819203144/http://www.math.unicaen.fr/~nitaj/abc.html)

  - Bart de Smit's [ABC Triples
    webpage](http://www.math.leidenuniv.nl/~desmit/abc/)

  - <http://www.math.columbia.edu/~goldfeld/ABC-Conjecture.pdf>

  - [The amazing ABC
    conjecture](http://www.maa.org/mathland/mathtrek_12_8.html)

  - [The ABC's of Number
    Theory](https://web.archive.org/web/20130120080158/http://www.thehcmr.org/issue1_1/elkies.pdf)
    by [Noam D.
    Elkies](https://zh.wikipedia.org/wiki/Noam_D._Elkies "wikilink")

  - [Questions about
    Number](http://www.math.harvard.edu/~mazur/papers/scanQuest.pdf) by
    [Barry Mazur](https://zh.wikipedia.org/wiki/Barry_Mazur "wikilink")

  - [Philosophy behind Mochizuki’s work on the ABC
    conjecture](http://mathoverflow.net/questions/106560/philosophy-behind-mochizukis-work-on-the-abc-conjecture)
    on [MathOverflow](../Page/MathOverflow.md "wikilink")

  - [ABC
    Conjecture](http://michaelnielsen.org/polymath1/index.php?title=ABC_conjecture)
    [Polymath
    project](https://zh.wikipedia.org/wiki/Polymath_project "wikilink")
    wiki page linking to various sources of commentary on Mochizuki's
    papers.

[Category:数论](https://zh.wikipedia.org/wiki/Category:数论 "wikilink")
[Category:猜想](https://zh.wikipedia.org/wiki/Category:猜想 "wikilink")

1.  <http://www.math.uu.nl/people/beukers/ABCpresentation.pdf>
2.  Mollin (2009)
3.  Mollin (2010) p.297
4.   .
5.
6.
7.  "Finiteness Theorems for Dynamical Systems", Lucien Szpiro, talk at
    Conference on L-functions and Automorphic Forms (on the occasion of
    Dorian Goldfeld's 60th Birthday), Columbia University, May 2007. See
    .
8.
9.  .
10. .
11. [Proof claimed for deep connection between
    primes](http://www.nature.com/news/proof-claimed-for-deep-connection-between-primes-1.11378)
12.
13. [宇宙几何学家望月新一与ABC猜想
    （故事续集）](http://blog.sina.com.cn/s/blog_4f2d32c40102eudt.html)
14. [On the verification of the inter-universal Teichmüller theory: a
    progress report (as of
    December 2013)](http://www.kurims.kyoto-u.ac.jp/~motizuki/IUTeich%20Verification%20Report%202013-12.pdf)
15. [1](http://www.kurims.kyoto-u.ac.jp/~motizuki/IUTeich%20Verification%20Report%202014-12.pdf)
16.
17.