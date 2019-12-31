> 本文内容由[NC \(复杂度\)](https://zh.wikipedia.org/wiki/NC_\(复杂度\))转换而来。


在[计算复杂度理论](https://zh.wikipedia.org/wiki/计算复杂度理论 "wikilink")，**NC**（Nick's Class），是一个复杂度类，是能被[并行计算](../Page/并行计算.md "wikilink")机在[多对数函数时间](https://zh.wikipedia.org/wiki/多对数函数 "wikilink")（*[O](../Page/大O符号.md "wikilink")*(log<sup>*c*</sup> *n*)）内以[多项式空间](https://zh.wikipedia.org/wiki/多项式空间 "wikilink")（或者说*[O](../Page/大O符号.md "wikilink")*(*n*<sup>*k*</sup>)并行线程）下解决的[判定问题的集合](https://zh.wikipedia.org/wiki/判定问题 "wikilink")，最先由[史提芬·古克提出](https://zh.wikipedia.org/wiki/史提芬·古克 "wikilink")。\[1\]

正如**[P](https://zh.wikipedia.org/wiki/P_\(复杂度\) "wikilink")**被认为是易解复杂度类一般，**NC**也被认为是在[并行计算](../Page/并行计算.md "wikilink")上易解的问题。\[2\]明显的有**NC ⊆ P**，因为一切并行计算都可以以多项式空间依次的在[确定型图灵机上运行](https://zh.wikipedia.org/wiki/确定型图灵机 "wikilink")。我们目前仍未知道的一个关键问题是，**NC = P**是否成立。大多数的研究人员都认为这是不可能的——否则的话这意味着一切[可计算函数都可以](https://zh.wikipedia.org/wiki/可计算问题 "wikilink")[并行计算](../Page/并行计算.md "wikilink")化。正如**[NP完全](../Page/NP完全.md "wikilink")**对于**[P](https://zh.wikipedia.org/wiki/P "wikilink")**来说是怀疑难解复杂度类一样，**[P完全](../Page/P-完全.md "wikilink")**对于**NC**来说也是“怀疑难解”的。

定义中的[并行计算](../Page/并行计算.md "wikilink")机,可以看作为一个并行，公共的[PRAM池](https://zh.wikipedia.org/wiki/PRAM "wikilink")，所有的并行线程都可以在任意时间访问池的任意位置，**NC**的定义不受是否可以同时访问的影响，当然无论是[CRCW](https://zh.wikipedia.org/wiki/CRCW "wikilink")，[CREW还是](https://zh.wikipedia.org/wiki/CREW "wikilink")[EREW都是不受影响的](https://zh.wikipedia.org/wiki/EREW "wikilink")。

**[RNC](https://zh.wikipedia.org/wiki/RNC_\(复杂度\) "wikilink")**是随机化方向的对NC的扩展。

## NC谱系

在[计算复杂度理论](https://zh.wikipedia.org/wiki/计算复杂度理论 "wikilink")，**NC**<sup>*i*</sup>，是一个复杂度类，是能被[并行计算](../Page/并行计算.md "wikilink")机在*[O](../Page/大O符号.md "wikilink")*(log<sup>*i*</sup> *n*)时间内以[多项式空间下解决的](https://zh.wikipedia.org/wiki/多项式空间 "wikilink")[判定问题的集合](https://zh.wikipedia.org/wiki/判定问题 "wikilink")，那么明显地有以下性质：

  - \(\mathbf{NC}^1 \subseteq \mathbf{NC}^2 \subseteq \cdots \subseteq \mathbf{NC}^i \subseteq \cdots \mathbf{NC}\)

此之为**NC谱系**。如果考虑和**[L](https://zh.wikipedia.org/wiki/L_\(复杂度\) "wikilink")**，**[NL](https://zh.wikipedia.org/wiki/NL_\(复杂度\) "wikilink")**和**[AC](https://zh.wikipedia.org/wiki/AC_\(复杂度\) "wikilink")**的话那么有：

  - \(\mathbf{NC}^1 \subseteq \mathbf{L} \subseteq \mathbf{NL} \subseteq \mathbf{AC}^1 \subseteq \mathbf{NC}^2 \subseteq \mathbf{P}.\)
  - \(\mathbf{NC}^i \subseteq \mathbf{AC}^i \subseteq \mathbf{NC}^{i+1}.\)\[3\]\[4\]
      - 这直接导致了**NC = AC**。即使是对于**i = 0**也是严格成立的。\[5\]

### 悬而未决的问题：NC谱系的定义是适当的么？

一个主要的而悬而未决的问题是，[计算复杂度理论](https://zh.wikipedia.org/wiki/计算复杂度理论 "wikilink")（的某些部分）对于NC谱系是否真的适用。 Papadimitriou发现，如果设存在某些*i*令

  - **NC**<sup>*i*</sup> = **NC**<sup>*i*+1</sup>

那么对于一切*j ≥ i*均存在

  - **NC**<sup>*i*</sup> = **NC**<sup>*j*</sup>
  - 并最终导致**NC**<sup>*i*</sup> = **NC**

这一命题被称之为**NC谱系崩塌**，因为根据**NC谱系**链有

  - \(\textbf{NC}^1 \subseteq \textbf{NC}^2 \subseteq \cdots\)

这意味着NC谱系有可能会崩塌到某个i值。对于这个问题，有两种可能性：

1.  \(\textbf{NC}^1 \subset \cdots \subset \textbf{NC}^i \subset ... \subset \textbf{NC}^{i+j} \subset \cdots \textbf{NC}\)
2.  \(\textbf{NC}^1 \subset \cdots \subset \textbf{NC}^i = ... = \textbf{NC}^{i+j} = \cdots \textbf{NC}\)

人们目前普遍认为（1）正确的，虽然还没有什么确切的证据。

## 参考资料

[Category:复杂度类](https://zh.wikipedia.org/wiki/Category:复杂度类 "wikilink") [Category:计算机科学中未解决的问题](https://zh.wikipedia.org/wiki/Category:计算机科学中未解决的问题 "wikilink")

1.  Arora & Barak (2009) p.120
2.  Arora & Barak (2009) p.118
3.
4.  Clote & Kranakis (2002) p.437
5.  Clote & Kranakis (2002) p.12