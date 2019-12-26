**Ross–Fahroo引理**（Ross–Fahroo lemma）得名自和，是[最优控制理論中的引理](https://zh.wikipedia.org/wiki/最优控制 "wikilink")\[1\]\[2\]\[3\]\[4\]。 該引理提到一般而言，對偶化和[离散化不能交換](https://zh.wikipedia.org/wiki/离散化 "wikilink")。若配合[伴隨向量映射原理](https://zh.wikipedia.org/wiki/伴隨向量映射原理 "wikilink")，才能交換這二個運算\[5\]。

## 引理的敘述

連續時間的最佳控制問題有豐富的資訊。針對特定問題，應用[庞特里亚金最大化原理](../Page/庞特里亚金最大化原理.md "wikilink")或[哈密顿-雅可比-贝尔曼方程](../Page/哈密顿-雅可比-贝尔曼方程.md "wikilink")可以找到計多有趣的性質。這些定理其有用到其變化量相對時間的連續性\[6\]。若最佳控制問題離散化時，Ross–Fahroo引理指出在本質上就少了一些資訊。減少的資料可能是在邊界點控制量的值\[7\]\[8\]，也有可能是對偶變數在漢米爾頓量中的值。為了解決資訊減少問題，Ross和Fahroo引進了「閉合條件」（closure condition）的概念，讓已知的減少資訊可以再加回去。這是透過[伴隨向量映射原理達到的](https://zh.wikipedia.org/wiki/伴隨向量映射原理 "wikilink")\[9\]。

## 在擬譜最佳控制中的應用

當擬譜法用在離散最佳控制時，其中隱含的Ross–Fahroo引理在離散的伴隨向量中，看起來似乎是將微分矩陣的轉置加以離散化\[10\]\[11\]\[12\]。若應用了[伴隨向量映射原理](https://zh.wikipedia.org/wiki/伴隨向量映射原理 "wikilink")，即為伴隨矩陣的轉換。此轉換的應用產生了[Ross–Fahroo擬譜法](../Page/Ross–Fahroo擬譜法.md "wikilink")\[13\]\[14\]。

## 相關條目

  - [羅斯π引理](../Page/羅斯π引理.md "wikilink")
  - [Ross–Fahroo擬譜法](../Page/Ross–Fahroo擬譜法.md "wikilink")

## 參考資料

[Category:最佳控制](https://zh.wikipedia.org/wiki/Category:最佳控制 "wikilink") [Category:数值分析](https://zh.wikipedia.org/wiki/Category:数值分析 "wikilink") [Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")

1.  I. M. Ross and F. Fahroo, A Pseudospectral Transformation of the Covectors of Optimal Control Systems, Proceedings of the First IFAC Symposium on System Structure and Control, Prague, Czech Republic, 29–31 August 2001.
2.
3.  I. M. Ross and F. Fahroo, Discrete Verification of Necessary Conditions for Switched Nonlinear Optimal Control Systems, *Proceedings of the American Control Conference, Invited Paper*, June 2004, Boston, MA.
4.  N. Bedrossian, M. Karpenko, and S. Bhatt, "Overclock My Satellite: Sophisticated Algorithms Boost Satellite Performance on the Cheap", *IEEE Spectrum*, November 2012.
5.
6.  B. S. Mordukhovich, Variational Analysis and Generalized Differentiation: Basic Theory, Vol.330 of Grundlehren der Mathematischen Wissenschaften \[Fundamental Principles of Mathematical Sciences\] Series, Springer, Berlin, 2005.
7.  F. Fahroo and I. M. Ross, Pseudospectral Methods for Infinite Horizon Nonlinear Optimal Control Problems, AIAA Guidance, Navigation and Control Conference, August 15–18, 2005, San Francisco, CA.
8.
9.
10.
11.
12.
13. A. M. Hawkins, *Constrained Trajectory Optimization of a Soft Lunar Landing From a Parking Orbit,* S.M. Thesis, Dept. of Aeronautics and Astronautics, Massachusetts Institute of Technology, 2005. <http://dspace.mit.edu/handle/1721.1/32431>
14. J. R. Rea, *A Legendre Pseudospectral Method for Rapid Optimization of Launch Vehicle Trajectories,* S.M. Thesis, Dept. of Aeronautics and Astronautics, Massachusetts Institute of Technology, 2001. <http://dspace.mit.edu/handle/1721.1/8608>