在纯[数学分支](../Page/数学.md "wikilink")[抽象代数中](../Page/抽象代数.md "wikilink")，**MV-代数**（多值代数）是带有[二元运算](../Page/二元运算.md "wikilink")
\(\oplus\)、[一元运算](https://zh.wikipedia.org/wiki/一元运算 "wikilink")
\(\neg\) 和常量 \(0\)
的满足特定公理的[代数结构](../Page/代数结构.md "wikilink")。[多值逻辑是](../Page/多值逻辑.md "wikilink")
MV-代数的[模型](../Page/模型论.md "wikilink")。

## 定义

设 *A*
是个[集合](https://zh.wikipedia.org/wiki/集合 "wikilink")。**MV-代数**是[代数结构](../Page/代数结构.md "wikilink")，带有型
\(\ \langle 2,1,0 \rangle\) 的标识(signature)
\(\left \langle A, \oplus, \lnot, 0 \right \rangle,\)，它满足如下恒等式：

  - \((x \oplus y) \oplus z = x \oplus (y \oplus z)\),
  - \(x \oplus 0 = x\),
  - \(x \oplus y = y \oplus x\),
  - \(\lnot \lnot x = x\),
  - \(x \oplus \lnot 0 = \lnot 0\),
  - \(\ \lnot ( \lnot x \oplus y)\oplus y = \lnot ( \lnot y \oplus x) \oplus x\).

备注：通过前三个公理 \(\left \langle A, \oplus, 0 \right \rangle\)
是交换[幺半群](../Page/幺半群.md "wikilink")。

或者作为替代，MV-代数是一个[剩余格](../Page/剩余格.md "wikilink")
\(A= \left \langle L, \wedge, \vee, \otimes, \rightarrow, 0, 1 \right \rangle\)
满足额外恒等式

  -
    \(\forall \ x,y \in A: x \vee y = (x \rightarrow y) \rightarrow y\)。

Hájek (1998)描述了这两个公式的等同。

## 例子

一个简单的例子是 \(A=[0,1] \,\)，带有定义为 \(x \oplus y = min(x+y,1)\) 和
\(\lnot x=1-x\) 的运算。

## 讨论

在多值逻辑中，给定一个 MV-代数 A，一个
A-[賦值就是从](https://zh.wikipedia.org/wiki/賦值_\(邏輯\) "wikilink")[命题演算中公式的集合到](https://zh.wikipedia.org/wiki/命题演算 "wikilink")
MV-代数的函数。如果对于所有 A-賦值这个函数把一个公式映射到 1（或 \(\lnot\)0），则这个公式是一个
A-重言式。因此对于无穷值逻辑（比如[模糊逻辑](../Page/模糊逻辑.md "wikilink")、[武卡谢维奇逻辑](../Page/武卡谢维奇逻辑.md "wikilink")），我们设
\[0,1\] 是 A 的下层集合来获得 \[0,1\]-賦值和 \[0,1\]-重言式（经常就叫做賦值和重言式）。

Chang 发明
MV-代数来研究[波蘭](https://zh.wikipedia.org/wiki/波蘭 "wikilink")[數學家](https://zh.wikipedia.org/wiki/數學家 "wikilink")[扬·武卡谢维奇](https://zh.wikipedia.org/wiki/扬·武卡谢维奇 "wikilink")（）在
1920 年介入的[多值逻辑](../Page/多值逻辑.md "wikilink")。Chang 的完备定理(1958, 1959)
声称任何在 \[0,1\] 区间成立的 MV-代数等式也在所有
MV-代数中成立。通过这个定理，证明了无穷值的[武卡谢维奇逻辑可以被](../Page/武卡谢维奇逻辑.md "wikilink")
MV-代数所刻画。后来同样适用于[模糊逻辑](../Page/模糊逻辑.md "wikilink")。这类似于在 {0,1}
成立的布尔代数等式在任何[布尔代数中也成立](../Page/布尔代数.md "wikilink")，[布尔代数因此刻画了标准](../Page/布尔代数.md "wikilink")[二值逻辑](../Page/数理逻辑.md "wikilink")。

## 引用

  - Chang, C. C. (1958) "Algebraic analysis of many-valued logics,"
    *Transactions of the American Mathematical Society 88*: 476-90.
  - \------ (1959) "A new proof of the completeness of the Lukasiewicz
    axioms," *Transactions of the American Mathematical Society 88*:
    74-80.
  - Cignoli, R. L. O., D'Ottaviano, I, M. L., Mundici, D., 2000.
    *Algebraic Foundations of Many-valued Reasoning*. Kluwer.
  - Di Nola A., Lettieri A. (1993) "Equational characterization of all
    varieties of MV-algebras," *Journal of Algebra 221*: 123-31.
  - Hájek, Petr (1998) *Metamathematics of Fuzzy Logic*. Kluwer.

## 外部链接

  - [Stanford Encyclopedia of
    Philosophy](https://zh.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "wikilink")："[Many-valued
    logic](http://plato.stanford.edu/entries/logic-manyvalued/)" -- by
    Siegfried Gottwald.

## 参见

  - [布尔代数](../Page/布尔代数.md "wikilink")
  - [武卡谢维奇逻辑](../Page/武卡谢维奇逻辑.md "wikilink")

[Category:格理论](https://zh.wikipedia.org/wiki/Category:格理论 "wikilink")
[Category:半群论](https://zh.wikipedia.org/wiki/Category:半群论 "wikilink")
[Category:代数逻辑](https://zh.wikipedia.org/wiki/Category:代数逻辑 "wikilink")