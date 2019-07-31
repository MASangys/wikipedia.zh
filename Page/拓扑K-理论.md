[数学](../Page/数学.md "wikilink")中，**拓扑 K-理论**（）是[代数拓扑](../Page/代数拓扑.md "wikilink")的一个分支。它是研究一般[拓扑空间](../Page/拓扑空间.md "wikilink")上[向量丛](../Page/向量丛.md "wikilink")时发现的，所用的是由[亚历山大·格罗滕迪克](../Page/亚历山大·格罗滕迪克.md "wikilink")引入的现在称为（一般）[K-理论](../Page/K-理论.md "wikilink")的想法。早期拓扑 K-理论的工作归于[迈克尔·阿蒂亚](../Page/迈克尔·阿蒂亚.md "wikilink")与[弗里德里希·希策布鲁赫](../Page/弗里德里希·希策布鲁赫.md "wikilink")（[Friedrich Hirzebruch](https://zh.wikipedia.org/wiki/:en:Friedrich_Hirzebruch "wikilink")）。

## 定义

拓扑 K-理论是[紧](../Page/紧空间.md "wikilink")[豪斯多夫空间](../Page/豪斯多夫空间.md "wikilink")[范畴的一种广义](https://zh.wikipedia.org/wiki/范畴_\(数学\) "wikilink")[上同调理论](https://zh.wikipedia.org/wiki/上同调理论 "wikilink")，将一个空间上的[向量丛](../Page/向量丛.md "wikilink")按[稳定等价分类](https://zh.wikipedia.org/wiki/稳定等价 "wikilink")（向量丛称为稳定等价的当且仅当[同构](../Page/同构.md "wikilink")的向量丛由向量丛与平凡向量丛的[惠特尼和生成](https://zh.wikipedia.org/wiki/惠特尼和 "wikilink")\[1\]）。设 *X* 是一个紧豪斯多夫空间而 \(k=\mathbb{R}\) 或 \(k=\mathbb{C}\)。则 \(K_{k}(X)\) 是 *X* 上有限维 \(k\)-向量丛的[同构类在运算](https://zh.wikipedia.org/wiki/同构类 "wikilink")

\[[E]\oplus [F] = [E\oplus F]\]，对向量丛 *E* 与 *F*， 下[交换幺半群的](https://zh.wikipedia.org/wiki/交换幺半群 "wikilink")[格罗滕迪克群](https://zh.wikipedia.org/wiki/格罗滕迪克群 "wikilink")。通常 \(K_k(X)\) 在复情形记作 \(KO(X)\)，复情形记作 \(KU(X)\)。

更确切地，**稳定等价**，*X* 上丛 *E* 与 *F* 上的[等价关系](../Page/等价关系.md "wikilink")，定义了 *K*(*X*) 中同样的元素，出现于存在一个[平凡丛](https://zh.wikipedia.org/wiki/平凡丛 "wikilink") *G* 使得

\[E\oplus G\cong F\oplus G.\]

在[向量丛的张量积下](https://zh.wikipedia.org/wiki/向量丛的张量积 "wikilink") *K*(*X*) 成为一个[交换环](../Page/交换环.md "wikilink")。

[向量丛的秩带入](https://zh.wikipedia.org/wiki/向量丛的秩 "wikilink") *K*-群中定义了同态

\[K(X)\to\check{H}^0(X,\mathbb{Z})\]

这里 \(\check{H}^0(X,\mathbb{Z})\) 是[切赫上同调的](https://zh.wikipedia.org/wiki/切赫上同调 "wikilink") 0-群，等于取值于 \(\mathbb{Z}\) 中的局部常值函数群。

如果 *X* 有一个[特殊的基点](https://zh.wikipedia.org/wiki/带基点空间 "wikilink") x<sub>0</sub>，则约化 *K*-群（与[约化同调比较](https://zh.wikipedia.org/wiki/约化同调 "wikilink")）满足

\[K(X)\cong\tilde K(X)\oplus K(\{x_0\})\]

定义为 \(K(X)\to K(\{x_0\})\)（这里 \(\{x_0\}\to X\) 是基点包含）的[核或](https://zh.wikipedia.org/wiki/核_\(范畴论\) "wikilink") \(K(\{x_0\})\to K(X)\) 的[余核](https://zh.wikipedia.org/wiki/余核 "wikilink")（这里 \(X\to\{x_0\}\) 是常映射）。

当 *X* 是[连通空间](../Page/连通空间.md "wikilink")是，\(\tilde K(X)\cong\operatorname{Ker}(K(X)\to\check{H}^0(X,\mathbb{Z})=\mathbb{Z})\)。

函子 *K* 的定义扩张成[紧空间](../Page/紧空间.md "wikilink")的[范畴偶](https://zh.wikipedia.org/wiki/范畴_\(数学\) "wikilink")（一个对象是一个偶 \((X,Y)\)，\(X\) 紧而 \(Y\subset X\) 闭，\((X,Y)\) 与 \((X',Y')\) 间的[态射](../Page/态射.md "wikilink")是一个连续映射 \(f:X\to X'\) 使得 \(f(Y)\subset Y'\)）。

\[K(X,Y):=\tilde{K}(X/Y)\]

约化 *K*-群有 \(x_0=\{Y\}\) 给出。

定义

\[K_{\mathbb{C}}^{n}(X,Y)=\tilde K_{\mathbb{C}}(S^{|n|}(X/Y)),\]

对 \(n\in\mathbb{Z}\) 给出了 *K*-群序列，这里 *S* 表示[约化纬垂](https://zh.wikipedia.org/wiki/约化纬垂 "wikilink")（[reduced suspension](https://zh.wikipedia.org/wiki/:en:reduced_suspension "wikilink")）。

## 性质

  - \(K^n\) 是一个[反变函子](https://zh.wikipedia.org/wiki/反变函子 "wikilink")。
  - \(\tilde{K}\) 的[分类空间是](https://zh.wikipedia.org/wiki/分类空间 "wikilink") \(BO_k\)（复情形为 *BO*；复情形为 *BU*），即 \(K_k(X)\cong[X,BO_k]\)。
  - \(K\) 的[分类空间是](https://zh.wikipedia.org/wiki/分类空间 "wikilink") \(\mathbb{Z}\times BO_k\)（\(\mathbb{Z}\) 带着[离散拓扑](https://zh.wikipedia.org/wiki/离散拓扑 "wikilink")），即 \(K_k(X)\cong[X,\mathbb{Z}\times BO_k]\)。
  - 存在一个[自然](https://zh.wikipedia.org/wiki/自然同态 "wikilink")[环同态](../Page/环同态.md "wikilink") \(K^*(X)\to H^{2*}(X,\mathbb{Q})\)，[陈特征标](https://zh.wikipedia.org/wiki/陈特征标 "wikilink")（[Chern character](https://zh.wikipedia.org/wiki/:en:Chern_character "wikilink")），使得 \(K^*(X)\otimes\mathbb{Q}\to H^{2*}(X,\mathbb{Q})\) 是一个同构。
  - 拓扑 K-理论可推广为 [C\*-代数](../Page/C*-代数.md "wikilink")上一个函子，参见[算子K-理论与](https://zh.wikipedia.org/wiki/算子K-理论 "wikilink") [KK-理论](https://zh.wikipedia.org/wiki/KK-理论 "wikilink")。

## 博特周期性

[周期性现象冠以](https://zh.wikipedia.org/wiki/周期性 "wikilink")[拉乌尔·博特](../Page/拉乌尔·博特.md "wikilink")之名（参见[博特周期性定理](https://zh.wikipedia.org/wiki/博特周期性定理 "wikilink")），可作如下表述：

  - \(K(X\times S^2)=K(X)\otimes K(S^2),\) and \(K(S^2)=\mathbb Z[H]/(H-1)^2;\) 这里 \(H\) 是 \(S^2=\mathbb CP^1\) 上的[重言丛类](https://zh.wikipedia.org/wiki/重言丛 "wikilink")，即[黎曼球面](../Page/黎曼球面.md "wikilink")作为[复射影直线](https://zh.wikipedia.org/wiki/复射影直线 "wikilink")。
  - \(\tilde K^{n+2}(X)=\tilde K^n(X).\)
  - \(\Omega^2\mathrm{BU}\simeq\mathrm{BU}\times\mathbf Z.\)

在[实K-理论中有类似的周期性](https://zh.wikipedia.org/wiki/实K-理论 "wikilink")，不过是模 8。

## 参考文献

<references/>

  - M. Karoubi, [K-theory, an introduction](https://web.archive.org/web/20070913181033/http://www.institut.math.jussieu.fr/~karoubi/KBook.html), 1978 - Berlin; New York: Springer-Verlag
  - M.F. Atiyah, D.W. Anderson *K-Theory* 1967 - New York, WA Benjamin

[Category:代数拓扑](https://zh.wikipedia.org/wiki/Category:代数拓扑 "wikilink") [Category:K-理论](https://zh.wikipedia.org/wiki/Category:K-理论 "wikilink")

1.  <http://mathworld.wolfram.com/StableEquivalence.html>