**L**也稱為**LSPACE**或**DLOGSPACE**，是[计算复杂度理论中能被](https://zh.wikipedia.org/wiki/计算复杂度理论 "wikilink")[确定型图灵机利用](../Page/图灵机.md "wikilink")[對數空间解决的](https://zh.wikipedia.org/wiki/對數 "wikilink")[判定问题集合](https://zh.wikipedia.org/wiki/判定问题 "wikilink")。\[1\]\[2\]

**对数空间**是指与输入规模成对数大小关系的可写的储存空间，大多数对数空间（**LOGSPACE**）算法以这种方式储存。\[3\]

重要的相關未解問題包括複雜度類L和P是否恆等（**L = P**）及複雜度類L和NL是否恆等（**L = NL**）。 目前已知有以下重要性质：

  - **L ⊆ NL ⊆ P**
  - **NC<sup>1</sup> ⊆ L ⊆ NL ⊆ NC<sup>2</sup>**\[4\]

## 相关复杂度类

### FL

和[功能性問題相關的類別是FL](../Page/功能性問題.md "wikilink")，在[计算复杂度理论](https://zh.wikipedia.org/wiki/计算复杂度理论 "wikilink")，**FL**是一个复杂度类，是能被[确定型图灵机在对数空间下解决的](../Page/图灵机.md "wikilink")[函数问题的集合](https://zh.wikipedia.org/wiki/函数问题 "wikilink")。\[5\]

依照同样的原理，可以定义相应的[FP](https://zh.wikipedia.org/wiki/FP "wikilink")，[FNP](https://zh.wikipedia.org/wiki/FNP "wikilink")，[TFNP](https://zh.wikipedia.org/wiki/TFNP "wikilink")。\[6\]

FL常用来定义**对数空间归约**（Log-space
reduction，Log-空间规约）。对数空间归约指仅使用对数空间的[确定型图灵机进行的规约](../Page/图灵机.md "wikilink")。区别于常见的多项式时间规约，对数空间规约只允许DTM使用若干个log
n（n是输入长度）空间。\[7\]对数空间规约在定义**NL-完全**（**NLC**，**NL-complete**）问题时候起作用。

### NL

**L**是[NL的子集](https://zh.wikipedia.org/wiki/NL_\(複雜度\) "wikilink")，**NL**是可以被[非確定型圖靈機利用對數空間解决的判定问题集合](https://zh.wikipedia.org/wiki/非確定型圖靈機 "wikilink")。利用[薩維奇定理的建構式證明](https://zh.wikipedia.org/wiki/薩維奇定理 "wikilink")，可得證NL包含在复杂度[P之內](../Page/P_\(複雜度\).md "wikilink")，也就是可以被確定型圖靈機在多項式空間解决的判定问题集合中。

存在几个已知的**NL-完全**问题，如。

根据[萨维奇定理](../Page/萨维奇定理.md "wikilink")，我们已知有以下重要性质：

  - \(\mathrm{NL \subseteq SPACE}(\log^2 n) \ \ \ \  \text{equivalently, } \mathrm{NL \subseteq L}^2.\)

### RL

在[计算複杂度理论内](https://zh.wikipedia.org/wiki/计算複杂度理论 "wikilink")，**RL**（Randomized
Logarithmic-space，随机对数空间）\[8\]，或者说**RLP**（Randomized Logarithmic-space
Polynomial-time，随机对数空间多项式时间），\[9\]是一个[複杂度类](https://zh.wikipedia.org/wiki/複杂度类 "wikilink")，包含能以[概率图灵机](https://zh.wikipedia.org/wiki/概率图灵机 "wikilink")，在[对数空间与](https://zh.wikipedia.org/wiki/对数空间 "wikilink")[多项式时间之内](https://zh.wikipedia.org/wiki/多项式时间 "wikilink")，在仅有[单向容错的状况内解决的问题](https://zh.wikipedia.org/wiki/单向容错 "wikilink")。此命名法与**[RP](https://zh.wikipedia.org/wiki/RP_\(复杂度\) "wikilink")**，这个相近但是没有对数空间限制的複杂度类是雷同的。

在定义**RL**时的概率图灵机，不会在回答YES的时候犯错。但是允许在回答NO的时候有小于1/3的犯错机会；这种容纳错误的方式被称作*单向容错*（one-sided
error）。这裡的1/3不是一个绝对的数值；任何*x*符合\[0,1/2)内都可以。因为我们可以藉由重複执行整个演算法将犯错率压缩到2<sup>?*p*(*x*)</sup>倍小（*p*(*x*)代表x的任意多项式），而不花费超过多项式时间或者对数空间的资源。

有时**RL**这个名称使用于使用对数空间不限时间能解决的问题其复杂度类。然而，根据，上述这个类别可以使用概率计数器证明**RL' =
NL**，因此一般直接使用**NL**来代表。

我们也知道**RL ⊆ NL**裡面。另外**RL ⊆
[BPL](https://zh.wikipedia.org/wiki/BPL_\(复杂度\) "wikilink")**内，这两个复杂度相似但是BPL允许双向容错（跟RL相比多出回答YES时可以犯错这部份）。显然地有**RL
⊆
L**，因为其定义比起L更一般化。Nisan于1992年证明了一个较弱的[去随机化](https://zh.wikipedia.org/wiki/去随机化 "wikilink")，推论出**RL
⊆
[SC](https://zh.wikipedia.org/wiki/SC_\(复杂度\) "wikilink")**，\[10\]SC包含一般图灵机以多项式时间和多项式对数空间解决的问题；换句话说，给予一般机器多项式对数的空间，则可以模拟机率图灵机使用对数空间的能力。

一般相信**RL =
L**，换句话说，概率图灵机不会在对数空间下比[确定型图灵机更强](../Page/图灵机.md "wikilink")，多项式时间对数空间的计算方式可以完全的去随机化。这猜想的一个主要证据由Reingold
et al.在2005年提出。\[11\]这问题的证明在无条件去随机化裡面可以说是一个被追寻的圣杯。这问题其中一个重大迈进是Omer
Reingold证明了**SL = L**。

### SL

在[计算复杂度理论](https://zh.wikipedia.org/wiki/计算复杂度理论 "wikilink")，**SL**（Symmetric
Logspace，对称对数空间），是一个复杂度类，是能被在[对数空间下解决的](https://zh.wikipedia.org/wiki/L_\(复杂度\) "wikilink")[判定问题的集合](https://zh.wikipedia.org/wiki/判定问题 "wikilink")。\[12\]其存在以下重要性质：
\***L** ⊆ **SL** ⊆ **NL**

  - **SL** = co-**SL**
      - 并直接导致**L**<sup>**SL**</sup> = **SL**\[13\]

USTCON问题（undirected s-t
connectivity，关于无向图两点之间是否存在一个路径的问题）作为一个**SL完全**（**SLC**，**SL-complete**）的SL下的重要特例，通常和SL本身被一起讨论。

2004年10月Omer Reingold成功证明USTCON问题属于L，因为USTCON问题属于SL完全，这便等于证明了**SL =
L**。即，SL是L的一种变体。\[14\]

## 参考资料

[Category:复杂度类](https://zh.wikipedia.org/wiki/Category:复杂度类 "wikilink")
[Category:概率复杂度类](https://zh.wikipedia.org/wiki/Category:概率复杂度类 "wikilink")
[Category:闭包算子](https://zh.wikipedia.org/wiki/Category:闭包算子 "wikilink")
[Category:计算机科学中未解决的问题](https://zh.wikipedia.org/wiki/Category:计算机科学中未解决的问题 "wikilink")

1.  , Definition 8.12, p. 295.

2.  , p. 177.

3.
4.

5.  .

6.
7.  Arora & Barak (2009) p. 88

8.

9.  A. Borodin, S.A. Cook, P.W. Dymond, W.L. Ruzzo, and M. Tompa. Two
    applications of inductive counting for complementation problems.
    SIAM Journal on Computing, 18(3):559–578. 1989.

10. N. Nisan. RL is contained in SC, Proceedings of ACM STOC'92, pp.
    619-623, 1992.

11. O. Reingold and [L.
    Trevisan](https://zh.wikipedia.org/wiki/Luca_Trevisan "wikilink")
    and S. Vadhan. Pseudorandom walks in biregular graphs and the RL vs.
    L problem, , 2004.

12.

13.

14.