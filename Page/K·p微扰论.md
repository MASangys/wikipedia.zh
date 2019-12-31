> 本文内容由[K·p微扰论](https://zh.wikipedia.org/wiki/K·p微扰论)转换而来。


在[固体物理中](https://zh.wikipedia.org/wiki/固体物理 "wikilink")，**K·p微扰论**或**K·p微扰法**，是一种用来计算固体[能带结构](../Page/能带结构.md "wikilink")和光学性质的[微扰方法](https://zh.wikipedia.org/wiki/微扰论 "wikilink")，因微扰[哈密顿算符](../Page/哈密顿算符.md "wikilink")中出现了正比于简约波矢（k）与动量算符（p）[内积的项而得名](https://zh.wikipedia.org/wiki/内积 "wikilink")。通过这种方法可以估计[半导体](../Page/半导体.md "wikilink")中的电子在[导带底](https://zh.wikipedia.org/wiki/导带 "wikilink")（或[空穴在价带顶](https://zh.wikipedia.org/wiki/空穴 "wikilink")）的[有效质量](https://zh.wikipedia.org/wiki/有效质量 "wikilink")。\[1\]\[2\]

## 推导

在晶体中，势场具有周期性，如果给其中电子的波函数加以[周期性边界条件](../Page/玻恩-冯·卡门边界条件.md "wikilink")，则波函数将具有[布洛赫波](../Page/布洛赫波.md "wikilink")的形式：\[3\]

\[\psi_{n,\mathbf{k}}=e^{i\mathbf{k}\mathbf{r}}u_{n,\mathbf{k}}\]

其中\(\mathbf{k}\)是简约波矢，\(u_{n,\mathbf{k}}\)是周期函数，且周期与晶格的周期完全相同。\[4\]

将该表达式代入定态薛定谔方程，可得\(u_{n,\mathbf{k}}\)满足的方程。该方程在形式上类似于定态薛定谔方程：\[5\]

\[H_{\mathbf{k}} u_{n,\mathbf{k}}=E_{n,\mathbf{k}}u_{n,\mathbf{k}}\]

其“哈密顿算符”为：\(H_{\mathbf{k}} = \frac{p^2}{2m} + \frac{\hbar \mathbf{k}\cdot\mathbf{p}}{m} + \frac{\hbar^2 k^2}{2m}  + V\)

### 微扰方法

在简约波矢\(\mathbf{k}\)较小的情形下，可把“哈密顿算符”中不含有简约波矢\(\mathbf{k}\)的项视为无微扰的“哈密顿算符”，把含有简约波矢\(\mathbf{k}\)的项视为“微扰哈密顿算符”，即：\[6\]

\[H_{\mathbf{k}}=H_0+H_{\mathbf{k}}', \;\; H_0 = \frac{p^2}{2m}+V, \;\; H_{\mathbf{k}}' = \frac{\hbar^2 k^2}{2m} + \frac{\hbar \mathbf{k}\cdot\mathbf{p}}{m}\]

利用[微扰方法可以用所有](https://zh.wikipedia.org/wiki/微扰论 "wikilink")\(u_{n,\mathbf{0}}\)的线性组合表达某个能带的\(u_{n,\mathbf{k}}\)，进而给出能量\(E_{n,\mathbf{k}}\)与简约波矢\(\mathbf{k}\)的近似关系。如果\(u_{n,\mathbf{0}}\)是不简并的，考虑到一级修正后\(u_{n,\mathbf{k}}\)的表达式为：\[7\]

\[u_{n,\mathbf{k}} = u_{n,0}+\frac{\hbar}{m}\sum_{n' \neq n}\frac{\langle u_{n,0} | \mathbf{k}\cdot\mathbf{p} | u_{n',0} \rangle}{E_{n,0}-E_{n',0}} u_{n',0}\]

考虑二级修正以后能量的表达式为：\[8\]

\[E_{n,\mathbf{k}} = E_{n,0}+\frac{\hbar^2 k^2}{2m} + \frac{\hbar^2}{m^2} \sum_{n'\neq n} \frac{|\langle u_{n,0} | \mathbf{k}\cdot\mathbf{p} | u_{n',0} \rangle |^2}{E_{n,0}-E_{n',0}}=E_{n,0}+\frac{\hbar^2 k^2}{2m} + \frac{\hbar^2}{m^2} \sum_{n'\neq n} \sum_{i,j} \frac{|\langle u_{n,0} | p_{i} | u_{n',0} \rangle ||\langle u_{n,0} | p_{j} | u_{n',0} \rangle |}{E_{n,0}-E_{n',0}}k_{i}k_{j}\]

根据倒[有效质量张量的定义](https://zh.wikipedia.org/wiki/有效质量 "wikilink")，电子的倒有效质量张量近似为：\[9\]

\[(\frac{1}{m^{\star}})_{ij}=\frac{1}{m}\delta_{ij}+\frac{2}{m^{2}}\sum_{n'\neq n}\frac{|\langle u_{n,0} | p_{i} | u_{n',0} \rangle ||\langle u_{n,0} | p_{j} | u_{n',0} \rangle |}{E_{n,0}-E_{n',0}}\]

根据微扰论，能量差\(E_{n,0}-E_{n',0}\)越小，该态对微扰的贡献越大。因而上式可作进一步近似和简化，只考虑能量差最小的那个态\(u_{n_{min},0}\)的贡献：\[10\]

\[(\frac{1}{m^{\star}})_{ij}=\frac{1}{m}\delta_{ij}+\frac{2}{m^{2}}\frac{|\langle u_{n,0} | p_{i} | u_{n_{min},0} \rangle ||\langle u_{n,0} | p_{j} | u_{n_{min},0} \rangle |}{\Delta E_{min}}\]

在[直接带隙半导体中导带底部的电子或价带顶部空穴对应的简约波矢都为零](https://zh.wikipedia.org/wiki/直接带隙半导体 "wikilink")，因而上式可以给出它们的有效质量。离导带底电子态能量最近的态通常为价带顶电子态，反之亦然，两者的能量差为[带隙](https://zh.wikipedia.org/wiki/带隙 "wikilink")\(E_{g}\)。如果导带底（价带顶）是旋转对称的，倒有效质量张量可以用一个标量代替：\[11\]

\[\frac{1}{m^{\star}}=\frac{1}{m}+\frac{2}{m^{2}}\sum_{i}\frac{|\langle u_{n,0} | p_{i} | u_{n_{min},0} \rangle ||\langle u_{n,0} | p_{i} | u_{n_{min},0} \rangle |}{E_{g}}\]

这表明半导体的带隙越小，有效质量也越小。对通常的半导体来说，电子的有效质量远小于电子的真实质量，且矩阵元与电子真实质量的比值近似为一个常量10eV。由此给出：\[12\]

\[{m^{\star}}/m=E_{g}/20ev\]

该公式给出的有效质量近似值与绝大多数IV族、III-V族、II-VI族直接带隙半导体电子有效质量测量值的误差在15%以内。\[13\]

如果考虑[自旋-轨道作用](https://zh.wikipedia.org/wiki/自旋-轨道作用 "wikilink")，仍然可以用类似方法处理。此时“哈密顿算符”应写为：\[14\]

\[H_{\mathbf{k}} = \frac{p^2}{2m} + \frac{\hbar}{m}\mathbf{k}\cdot\mathbf{p} + \frac{\hbar^2 k^2}{2m}  + V + \frac{\hbar}{4 m^2 c^2} (\nabla V \times (\mathbf{p}+\hbar\mathbf{k}))\cdot \vec \sigma\]

如果\(u_{n,\mathbf{0}}\)有简并，需要使用[简并微扰理论](https://zh.wikipedia.org/wiki/简并微扰 "wikilink")。\[15\]可以处理这类问题。\[16\]

## 参见

  - [布洛赫定理](https://zh.wikipedia.org/wiki/布洛赫定理 "wikilink")

## 参考文献

[Category:固体物理学](https://zh.wikipedia.org/wiki/Category:固体物理学 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13. 参见[Fundamentals of Semiconductors: Physics and Materials Properties](http://books.google.com/books?id=W9pdJZoAeyEC&pg=PA244&dq=isbn:3540254706#PPA71,M1)一书中表2.22
14.
15.
16.