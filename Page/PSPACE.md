</math>
|complete-class=[PSPACE完全](https://zh.wikipedia.org/wiki/PSPACE完全 "wikilink")
|complement-class=自身
|proper-supersets=[EXPSPACE](../Page/EXPSPACE.md "wikilink")\[1\]
|improper-supersets=[近PSPACE](https://zh.wikipedia.org/wiki/近PSPACE "wikilink")\[2\],
[EXPTIME](../Page/EXPTIME.md "wikilink"),
[RG](https://zh.wikipedia.org/wiki/RG_\(复杂度\) "wikilink"),
[QPSPACE](https://zh.wikipedia.org/wiki/QPSPACE "wikilink")\[3\]
|equals=[AP](https://zh.wikipedia.org/wiki/AP_\(复杂度\) "wikilink")\[4\],
[BPPSPACE](https://zh.wikipedia.org/wiki/BPPSPACE "wikilink")\[5\],
[IP](https://zh.wikipedia.org/wiki/IP_\(复杂度\) "wikilink")\[6\],
[NPSPACE](https://zh.wikipedia.org/wiki/NPSPACE "wikilink")\[7\],
[PPSPACE](https://zh.wikipedia.org/wiki/PPSPACE "wikilink")\[8\],
[SAPTIME](https://zh.wikipedia.org/wiki/SAPTIME "wikilink")\[9\]
|related=[PTIME](https://zh.wikipedia.org/wiki/PTIME "wikilink")
|notequals=[P](https://zh.wikipedia.org/wiki/PTIME "wikilink")-close,
[P](https://zh.wikipedia.org/wiki/PTIME "wikilink")/log
|improper-subsets=[CH](https://zh.wikipedia.org/wiki/CH_\(复杂度\) "wikilink")\[10\],
P^[PP](https://zh.wikipedia.org/wiki/PP_\(复杂度\) "wikilink")\[11\],
P^[\#P](https://zh.wikipedia.org/wiki/Sharp-P "wikilink")\[12\],
[QSZK](https://zh.wikipedia.org/wiki/QSZK "wikilink"),
[RG](https://zh.wikipedia.org/wiki/RG_\(复杂度\) "wikilink")\[1\]
|proper-subsets=[NL](https://zh.wikipedia.org/wiki/NL_\(复杂度\) "wikilink")\[13\]
|properties= |low-with=自身 |low-for=自身
|closed-reductions=[多项式时间](https://zh.wikipedia.org/wiki/多项式时间图灵规约 "wikilink")
|closed-operations=
|canonical-problems=[QSAT](https://zh.wikipedia.org/wiki/QSAT "wikilink")
|models=[交替式图灵机](../Page/交替式图灵机.md "wikilink"),
[图灵机](../Page/图灵机.md "wikilink") }}
**PSPACE**是[计算复杂度理论中能被](https://zh.wikipedia.org/wiki/计算复杂度理论 "wikilink")[确定型图灵机利用](../Page/图灵机.md "wikilink")[多项式空间解决的](https://zh.wikipedia.org/wiki/多项式 "wikilink")[判定问题集合](https://zh.wikipedia.org/wiki/判定问题 "wikilink")，是Polynomial
SPACE的简称。

## 形式化定义

如果规定 \(\mbox{SPACE}(t(n))\) 为至多 \(t(n)\) 空间内能被确定型图灵机解决的问题的集合（\(t\) 是输入大小
\(n\) 的函数），那么，**PSPACE**可被形式化地定义为：

\[\mbox{PSPACE} = \bigcup_{k\in\mathbb{N}} \mbox{SPACE}(n^k)\]

**PSPACE**真包含[上下文有关语言](https://zh.wikipedia.org/wiki/上下文有关语言 "wikilink")，这种[语言等价于线性有界非确定图灵机](../Page/形式语言.md "wikilink")。

尽管至今没有证明，但一般认为，将**[P](https://zh.wikipedia.org/wiki/P_\(复杂度\) "wikilink")**中的确定型图灵机更改为非确定图灵机后得到的**[NP](https://zh.wikipedia.org/wiki/NP_\(复杂度\) "wikilink")**类有\(\mbox{P} \subsetneq \mbox{NP}\)成立。然而，对于**PSPACE**，将确定型图灵机更改为[非确定型图灵机](../Page/非确定型图灵机.md "wikilink")，得到的**NPSPACE**并不比**PSPACE**大。原因是根据[萨维奇定理](../Page/萨维奇定理.md "wikilink")，\(\mbox{PSPACE} = \mbox{NPSPACE}\)，这个定理的结论指出，虽然非确定性问题需要更多时间解决，两者的空间需求还是一致的。

## 与其它复杂度类的关系

已经证明**PSPACE**和**[NL](https://zh.wikipedia.org/wiki/NL_\(复杂度\) "wikilink")**、**[P](https://zh.wikipedia.org/wiki/P_\(复杂度\) "wikilink")**、**[NP](https://zh.wikipedia.org/wiki/NP_\(复杂度\) "wikilink")**、**[PH](https://zh.wikipedia.org/wiki/PH_\(复杂度\) "wikilink")**、**[EXPTIME](../Page/EXPTIME.md "wikilink")**和**[EXPSPACE](../Page/EXPSPACE.md "wikilink")**的关系
（注意，\(\subsetneq\)不是\(\not\subseteq\)）：

\[\mbox{NL} \subseteq \mbox{P} \subseteq \mbox{NP} \subseteq \mbox{PH} \subseteq \mbox{PSPACE}\]

\[\mbox{PSPACE} \subseteq \mbox{EXPTIME} \subseteq \mbox{EXPSPACE}\]

\[\mbox{NL} \subsetneq \mbox{PSPACE} \subsetneq \mbox{EXPSPACE}\]

目前已经知道，第一行和第二行中至少有一个包含关系为真包含，但是目前尚未证明任何一个。一般假定所有的包含关系均为真包含。

与此相反的是，第三行中的包含关系目前已证明均是真包含。第一个包含关系来源于[对角论证法](https://zh.wikipedia.org/wiki/对角论证法 "wikilink")（根据[空间层次定理](https://zh.wikipedia.org/wiki/空间层次定理 "wikilink")，\(\mbox{NL} \subsetneq \mbox{NPSPACE}\)），而\(\mbox{PSPACE} = \mbox{NPSPACE}\)来源于萨维奇定理。第二个包含关系仅仅利用了空间层次定理。

在**PSPACE**中，最难的问题是**PSPACE完全**问题。参见**[PSPACE完全](https://zh.wikipedia.org/wiki/PSPACE完全 "wikilink")**了解在**PSPACE**中但可能不在**NP**中的问题。

## 等价定义

利用[交替式图灵机](../Page/交替式图灵机.md "wikilink")（ATM）的概念，**PSPACE**可被定义为一台ATM在多项式时间中解决的问题集合。这一复杂度类也被称为**APTIME**或者简称为**[AP](https://zh.wikipedia.org/wiki/AP_\(复杂度\) "wikilink")**。

复杂度理论中一个重要的结果为**PSPACE**与某个特定的[交互式证明系统接受的所有语言等价](../Page/交互式证明系统.md "wikilink")，这个语言的集合也被定义为**[IP](https://zh.wikipedia.org/wiki/IP_\(复杂度\) "wikilink")**。在这一系统中，存在一个非常强大的证明者，这个证明者试图说服一个概率多项式时间验证者，某个字符串在系统接受的语言中。如果字符串属于系统接受的语言，证明者应当能够用较高的概率说服验证者，否则只能至多用较低的概率说服。

**PSPACE**也等价于量子复杂度类**QIP**。\[14\]

## PSPACE - 完全

如果所有**PSPACE**中的问题都可以多项式时间归约到某个问题，那么，这个问题可以被定义为**PSPACE难**。

一种语言*B*为**[PSPACE完全](https://zh.wikipedia.org/wiki/PSPACE完全 "wikilink")**，如果它在**PSPACE**中，并且为**PSPACE难**，即

\[\forall\mbox{A}\in\mbox{PSPACE}, \mbox{A}\leq_p\mbox{B}\]

其中，\(\mbox{A}\leq_p\mbox{B}\)指的是存在从A到B的[多项式时间归约](https://zh.wikipedia.org/wiki/多项式时间归约 "wikilink")。**PSPACE完全**问题对于研究**PSPACE**中的问题非常重要，因为它们代表了**PSPACE**中最困难的问题。如果一个**PSPACE完全**问题得到了时间上高效的算法，那么，对所有**PSPACE**中的问题都可以有时间上高效的算法，因为这些问题都能够被多项式时间归约到**PSPACE完全**问题。然而，这个性质对**PSPACE难**不成立，因为存在这样的问题，它们可能属于**PSPACE难**但不属于**PSPACE完全**，因为这些问题不属于**PSPACE**。

## PSPACE - Hard

如果x屬於P，則P = PSPACE - Hard，那這個x就可稱為PSPACE - Hard。

### 例子

围棋的複雜度已於1978年被Robertson與Munro證明為PSPACE-hard\[15\]\[16\]。

## 註釋

## 參考文獻

  - Section 8.2–8.3 (The Class PSPACE, PSPACE-completeness),
    pp. 281–294.

  - Chapter 19: Polynomial space, pp. 455–490.

  - Chapter 8: Space Complexity

  -
  - Section 8.2–8.3 (The Class PSPACE, PSPACE-completeness),
    pp. 281–294.

  - Chapter 19: Polynomial space, pp. 455–490.

  - Chapter 8: Space Complexity

## 外部链接

  - [Lecture slides on space complexity From University of
    Toronto](https://web.archive.org/web/20110607195631/http://www.cs.utoronto.ca/~fpitt/CSC363/20079/lectures/LN11.txt)
  - [Lecture slides on space complexity From Princeton
    University](https://web.archive.org/web/20060916231137/http://www.cs.princeton.edu/~wayne/kleinberg-tardos/09pspace.pdf)
  - [Complexity Zoo:
    PSPACE](https://complexityzoo.uwaterloo.ca/Complexity_Zoo:P#pspace)

[Category:复杂度类](https://zh.wikipedia.org/wiki/Category:复杂度类 "wikilink")
[Category:计算机科学中未解决的问题](https://zh.wikipedia.org/wiki/Category:计算机科学中未解决的问题 "wikilink")

1.  [空间层次定理](https://zh.wikipedia.org/wiki/空间层次定理 "wikilink")

2.  Definition of Almost-PSPACE. PSPACE ⊆ PSPACE^A for every A.

3.  Greg Kuperberg, Complexity Zoology: Active Inclusion Diagram, 2006,
    <http://www.math.ucdavis.edu/~greg/zoology/diagram.xml>

4.  [Chandra, A.K. and Kozen, D.C. and Stockmeyer, L.J.,
    'Alternation'](http://portal.acm.org/citation.cfm?id=322243&coll=Portal&dl=ACM&CFID=60283170&CFTOKEN=44928981),
    Journal of the ACM, Volume 28, Issue 1, pp. 114-133, 1981.

5.  Complexity Zoo,
    [1](http://qwiki.stanford.edu/wiki/Complexity_Zoo:A#almostpspace) ,
    accessed Mars 25, 2009

6.  Adi Shamir. [IP =
    PSPACE](http://portal.acm.org/citation.cfm?doid=146585.146609).
    *Journal of the ACM*, volume 39, issue 4, p.869–877. October 1992.

7.  [萨维奇定理](../Page/萨维奇定理.md "wikilink")

8.

9.
10.

11.

12.
13.
14. QIP = PSPACE, Rahul Jain, Zhengfeng Ji, Sarvagya Upadhyay,
    arXiv:0907.4737 (July 2009)

15. "Robertson,E. and Munro, I. 〈NP-completeness, puzzles, and games〉
    Utilifas Math., 1978, 99-116."

16. [未來數學家的挑戰 -
    楊照崑;楊重駿](http://episte.math.ntu.edu.tw/articles/mm/mm_10_2_04/page6.html)