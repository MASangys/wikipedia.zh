> 本文内容由[狄利克雷L函數](https://zh.wikipedia.org/wiki/狄利克雷L函數)转换而来。


在[數學中](https://zh.wikipedia.org/wiki/數學 "wikilink")，**狄利克雷L函數**是[狄利克雷級數的特例](https://zh.wikipedia.org/wiki/狄利克雷級數 "wikilink")，它是形如下式的複變數函數

\[L(s,\chi) = \sum_{n=1}^\infty \frac{\chi(n)}{n^s}.\]

在此 \(\chi\) 是一個[狄利克雷特徵](https://zh.wikipedia.org/wiki/狄利克雷特徵 "wikilink")，\(s \in \mathbb{C}\) 的實部大於一。此函數可[解析延拓](../Page/解析延拓.md "wikilink")為整個複平面上的[亞純函數](https://zh.wikipedia.org/wiki/亞純函數 "wikilink")。

[約翰·彼得·狄利克雷證明對所有](https://zh.wikipedia.org/wiki/約翰·彼得·狄利克雷 "wikilink") \(\chi\) 俱有 \(L(1,\chi) \neq 0\)，並藉此證明[狄利克雷定理](../Page/狄利克雷定理.md "wikilink")。若 \(\chi\) 是主特徵，則 \(L(s,\chi)\) 在 \(s=1\) 有單[極點](https://zh.wikipedia.org/wiki/極點 "wikilink")。

## 零點

  - 若 \(\chi\) 是原特徵，\(\chi(-1)=1\)，則 \(L(s,\chi)\) 在 \(\mathrm{Re}(s) < 0\) 的零點是負偶數。
  - 若 \(\chi\) 是原特徵，\(\chi(-1)=-1\)，則 \(L(s,\chi)\) 在 \(\mathrm{Re}(s) < 0\) 的零點是負奇數。

不論可能的[西格爾零點](https://zh.wikipedia.org/wiki/西格爾零點 "wikilink")，狄利克雷L函數有與[黎曼ζ函數](../Page/黎曼ζ函數.md "wikilink")相似的無零點區域，包括 \(\{s:\mathrm{Re}(s) \geq 1\}\)。一如黎曼ζ函數，狄利克雷L函數也有相應的[廣義黎曼猜想](https://zh.wikipedia.org/wiki/廣義黎曼猜想 "wikilink")。

## 函數方程

假設 \(\chi\) 是模 \(k\) 的原特徵。定義

\[\Lambda(s,\chi) = \left(\frac{\pi}{k}\right)^{-(s+a)/2}
\Gamma\left(\frac{s+a}{2}\right) L(s,\chi),\] 此處 \(\Gamma\) 表[Γ函數](https://zh.wikipedia.org/wiki/Γ函數 "wikilink")，而符號 \(a\) 由下式給出

\[a=\begin{cases}0,& \quad\chi(-1)=1, \\ 1,&\quad\chi(-1)=-1,\end{cases}\]

則有[函數方程](https://zh.wikipedia.org/wiki/函數方程 "wikilink")

\[\Lambda(1-s,\overline{\chi})=\frac{i^ak^{1/2}}{\tau(\chi)}\Lambda(s,\chi).\] 此處的 \(\tau(\chi)\) 表[高斯和](../Page/高斯和.md "wikilink")

\[\sum_{n=1}^k\chi(n)\exp(2\pi in/k).\] 我們亦有 \(|\tau(\chi)| = k^{\frac{1}{2}}\)。

## 文獻

  -
[Category:解析數論](https://zh.wikipedia.org/wiki/Category:解析數論 "wikilink") [Category:Ζ函數與L函數](https://zh.wikipedia.org/wiki/Category:Ζ函數與L函數 "wikilink")