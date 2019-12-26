在[数理逻辑](../Page/数理逻辑.md "wikilink")中，[直覺主義邏輯的](https://zh.wikipedia.org/wiki/直覺主義邏輯 "wikilink")**布勞威爾-海廷-柯爾莫哥洛夫释义**（Brouwer–Heyting–Kolmogorov interpretation）或**BHK释义**是由[魯伊茲·布勞威爾](https://zh.wikipedia.org/wiki/魯伊茲·布勞威爾 "wikilink")、[阿蘭德·海廷](../Page/阿蘭德·海廷.md "wikilink")和独立的由[安德雷·柯爾莫哥洛夫](../Page/安德雷·柯爾莫哥洛夫.md "wikilink")提出的。它有时也叫做**可实现性释义**，因为有关于[斯蒂芬·科尔·克莱尼](../Page/斯蒂芬·科尔·克莱尼.md "wikilink")的[可实现性](../Page/可实现性.md "wikilink")理论。

## 释义

释义精确的陈述一个给定的公式的证明是什么。这是通过这个公式的[在结构上归纳规定的](../Page/结构归纳法.md "wikilink")：

  - \(P \wedge Q\)的证明是[有序对](../Page/有序对.md "wikilink")\<a,b\>，这裡的a是P的一个证明而b是Q的一个证明。
  - \(P \vee Q\)的证明是有序对\<a,b\>，这裡的a是0而b是P的证明，或者a是1而b是Q的证明。
  - \(P \to Q\)的证明是[函数](../Page/函数.md "wikilink")f: P→Q，它把P的证明变换成Q的证明。
  - \(\exists x \in S : \phi(x)\)的证明是有序对\<a,b\>，这裡的a是S的一个元素，而b是φ(a)的一个证明。
  - \(\forall x \in S : \phi(x)\)的证明是函数f: a→φ(a)，它把S的一个元素a变换成φ(a)的证明。
  - \(\neg P\)的证明被定义为\(P \to \bot\)，它的证明是把P的证明变换成\(\bot\)的证明的一个函数。
  - \(\bot\)是荒谬。应当没有它的证明。

假定从上下文获知原始命题的释义。

## 例子

恒等函数是公式\(P \to P\)的证明，不管P是什么。

[无矛盾律](../Page/无矛盾律.md "wikilink")\(\neg (P \wedge \neg P)\)被展开为\((P \wedge (P \to \bot)) \to \bot\):

  - \((P \wedge (P \to \bot)) \to \bot\)的证明是函数f，它把\((P \wedge (P \to \bot))\)的证明变换成\(\bot\)的证明。
  - \((P \wedge (P \to \bot))\)的证明是证明的有序对\<a,b\>，这裡的a是P的证明，而b是\(P \to \bot\)的证明。
  - \(P \to \bot\)的证明是把P的证明变换成\(\bot\)的证明的函数。

把它们放置到一起，\((P \wedge (P \to \bot)) \to \bot\)的证明是函数f，它把有序对\<a,b\>变换成\(\bot\)的证明 -- 这裡的a是P的证明，而b是把P的证明变换成\(\bot\)的证明的一个函数。函数\(f(\langle a, b \rangle) = b(a)\)证明了无矛盾律，不管P是什么。

在另一方面，[排中律](../Page/排中律.md "wikilink")\(P \vee (\neg P)\)展开为\(P \vee (P \to \bot)\)，而一般没有证明。

## 什么是荒谬？

逻辑系统不可能有形式否定算子，使得在没有P的证明的时候有正确的 非P的证明（参见[哥德尔不完备定理](../Page/哥德尔不完备定理.md "wikilink")）。BHK释义转而采纳 非P为意味着P导致荒谬，指示为\(\bot\)，所以¬P的证明是把P的证明变换成荒谬的证明的函数。

荒谬的标准例子可以在算术中找到。假定0=1，并进行[数学归纳法](../Page/数学归纳法.md "wikilink")：0=0通过等同公理得到；（归纳假设）如果0等于特定自然数n，则1将等于n+1 ([皮亚诺公理](../Page/皮亚诺公理.md "wikilink")：**S**m = **S**n当且仅当m = n)，但是因为0=1，所以0也等于n+1；通过归纳，0等于任何数，所以任何两个自然数都是相等的。

所以，有从0=1的证明得到任何基本算数等式和进而任何复杂算术命题的一种方式。进一步的说，要得到这种结果，不是必须的涉及皮亚诺公理0不是任何自然数的后继。这使得0=1在Heyting算术（皮亚诺公理被重写0=**S**n → 0=**S**0）适合充当\(\bot\)。这种0=1的使用验证了[爆炸原理](../Page/爆炸原理.md "wikilink")。

## 什么是函数？

BHK释义依赖于制定把一个证明变换成另一个证明，或者把一个域的元素变换成一个证明的函数的观点。不同版本的[数学构造主义在这一点上是有分歧的](https://zh.wikipedia.org/wiki/数学构造主义 "wikilink")。

Kleene的可实现性理论把这种函数看成是[可计算函数](../Page/可计算函数.md "wikilink")。它处理[Heyting算术](https://zh.wikipedia.org/wiki/Heyting算术 "wikilink")，这裡的量化的域是自然数而原始命题有x=y的形式。x=y的证明简单是平凡的算法，如果x求值得到与y求值同样的数（它对于自然数总是可决定的），否则没有证明。可以通过归纳建造起更复杂的算法。

## 引用

  - [Troelstra, A.](https://zh.wikipedia.org/wiki/A._S._Troelstra "wikilink") "History of Constructivism in the Twentieth Century". 1991. [1](https://web.archive.org/web/20060209210015/http://staff.science.uva.nl/~anne/hhhist.pdf)
  - Troelstra, A. "Constructivism and Proof Theory". 2003. [2](https://web.archive.org/web/20110606055808/http://staff.science.uva.nl/~anne/eolss.pdf)

## 参见

  - [直觉逻辑](https://zh.wikipedia.org/wiki/直觉逻辑 "wikilink")
  - [直觉类型论](../Page/直觉类型论.md "wikilink")
  - [直觉主义](../Page/直觉主义.md "wikilink")
  - [直觉类型论](../Page/直觉类型论.md "wikilink")
  - [经典逻辑](../Page/经典逻辑.md "wikilink")
  - [中间逻辑](../Page/中间逻辑.md "wikilink")
  - [线性逻辑](../Page/线性逻辑.md "wikilink")
  - [构造性证明](../Page/构造性证明.md "wikilink")
  - [Curry-Howard对应](https://zh.wikipedia.org/wiki/Curry-Howard对应 "wikilink")
  - [可计算性逻辑](../Page/可计算性逻辑.md "wikilink")
  - [博弈语义](../Page/博弈语义.md "wikilink")

[Category:类型论](https://zh.wikipedia.org/wiki/Category:类型论 "wikilink") [Category:证明论](https://zh.wikipedia.org/wiki/Category:证明论 "wikilink") [Category:數理邏輯](https://zh.wikipedia.org/wiki/Category:數理邏輯 "wikilink")