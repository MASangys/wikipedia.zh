**Verma模**（Verma
module）是[李代數](../Page/李代數.md "wikilink")[表示理論中的基本研究對象](../Page/表示理論.md "wikilink")，其名取自[Daya-Nand
Verma](../Page/Daya-Nand_Verma.md "wikilink")。Verma模之間的態射相應於[旗流形上的](../Page/旗流形.md "wikilink")[不變微分算子](../Page/不變微分算子.md "wikilink")。

可用Verma模來證明以下命題：[最高權為](../Page/最高權.md "wikilink")\(\lambda\)的[最高權表示的維數有限](../Page/最高權表示.md "wikilink")，若且僅若\(\lambda\)是[支配整權](../Page/支配整權.md "wikilink")（）。

## Verma模的定義

設：

  - \(F\)為一域；
  - \(\mathfrak{g}\)，為\(F\)上一[半單李代數](../Page/半單李代數.md "wikilink")；
      - \(\mathcal{U}(\mathfrak{g})\)為其[泛包絡代數](../Page/泛包絡代數.md "wikilink")
      - \(\mathfrak{b}\)為其一[Borel子代數](../Page/Borel子代數.md "wikilink")
          - \(\mathcal{U}(\mathfrak{b})\)為其泛包絡代數
      - \(\mathfrak{h}\)為其一[嘉當子代數](../Page/嘉當子代數.md "wikilink")
  - \(\lambda \in \mathfrak{h}^*\)為一固定之[權](../Page/權_\(表示論\).md "wikilink")。
  - \(F_\lambda\)為\(F\)上的一維向量空間，
    賦與\(\mathfrak{b}\)-[模結構](../Page/模.md "wikilink")：\(\mathfrak{h}\)的作用為「乘以\(\lambda\)」，[正根的作用為零](../Page/根系統.md "wikilink")。由於\(F_\lambda\)是一左\(\mathfrak{b}\)－模，他同時亦是一左\(\mathcal{U}(\mathfrak{b})\)－模。
  - 由[Poincaré-Birkhoff-Witt定理](../Page/Poincaré-Birkhoff-Witt定理.md "wikilink")，\(\mathcal{U}(\mathfrak{g})\)有一自然右\(\mathcal{U}(\mathfrak{b})\)－模結構。由於\(\mathcal{U}(\mathfrak{g})\)亦是一左\(\mathfrak{g}\)－模，
    所以是\((\mathfrak{g}, \mathcal{U}(\mathfrak{b}))\)-[雙模](../Page/雙模.md "wikilink")。
  - 定義（最高權為\(\lambda\)之）**Verma模** 為

<!-- end list -->

  -
    \(M_\lambda = \mathcal{U}(\mathfrak{g}) \otimes_{\mathcal{U}(\mathfrak{b})} F_\lambda\)

此自然地是一左\(\mathfrak{g}\)－模。從Poincaré-Birkhoff-Witt定理可知：\(M_\lambda\)，作為一向量空間，同構於

  -
    \(\mathcal{U}(\mathfrak{g}_-) \otimes_F F_\lambda\)

其中\(\mathfrak{g}_-\)為\(\mathfrak{g}\)之負根生成之子李代數。

## 基本性質

作為\(\mathfrak{g}\)－模，Verma模是一[最高權表示](../Page/最高權表示.md "wikilink")，即整個模由一[最高權向量生成](../Page/最高權向量.md "wikilink")。此最高權向量是\(1\otimes 1\)的像（其中前\(1\)為\(\mathcal{U}(\mathfrak{g})\)之單位，後\(1\)為域\(F\)之單位元）；其權為\(\lambda\)。

Verma模是[weight
modules](../Page/weight_modules.md "wikilink")，即\(M_\lambda\)是其[權子空間之](../Page/權子空間.md "wikilink")[直和](../Page/直和.md "wikilink")。每一權子空間\(M_\mu\)是有限維的，其維度是\(M_\mu\)權\(\lambda-\mu\)寫成[正根之和之方法之數](../Page/正根.md "wikilink")（參見[Kostant
partition function](../Page/Kostant_partition_function.md "wikilink")）。

Verma模有一重要性質：若\(V\)為任一最高權模，其最高權為\(\lambda\)，則存在一\(\mathfrak{g}\)
[滿射](../Page/滿射.md "wikilink")：\(M_\lambda\to V\)。換言之，任何最高權模都是\(M_\lambda\)的商模。

\(M_\lambda\)內存在唯一極大[子模](../Page/子模.md "wikilink")，而\(M_\lambda\)與此子模之商是[不可約的](../Page/表示論#不可約表示.md "wikilink")。

Verma模\(M_\lambda\)本身不可約 若且僅若
當其[最高權](../Page/最高權.md "wikilink")\(\lambda\)分解成[基本權](../Page/權_\(表示論\)#基本權.md "wikilink")（）之和時，每一系數都不是\(\{0,1,2,\ldots\}\)。

稱Verma模\(M_\lambda\)為**regular**，若其最高權λ位於一[支配權](../Page/支配權.md "wikilink")\(\tilde\lambda\)之仿射[Weyl軌迹上](../Page/Weyl軌迹.md "wikilink")。換言之，存在[Weyl羣的元素w](../Page/Weyl羣.md "wikilink")，使

\[\lambda=w\cdot\tilde\lambda\]，
其中\(\cdot\)是Weyl羣的[仿射作用](../Page/仿射作用.md "wikilink")。

稱Verma模\(M_\lambda\)為**singular**，若λ的仿射軌迹上無支配權。此時，存在權\(\tilde\lambda\)使\(\tilde\lambda+\delta\)落於[基本Weyl室之牆上](../Page/基本Weyl室.md "wikilink")；（其
中δ為各[基本權之和](../Page/基本權.md "wikilink")）。

## Verma模之間的態射

設\(\lambda, \mu\)為兩[權](../Page/權.md "wikilink")。若存在態射

\[M_\mu\rightarrow M_\lambda\]，

則\(\mathfrak{g}\)的[Weyl羣](../Page/Weyl羣.md "wikilink")\(W\)的
[仿射作用](../Page/仿射作用.md "wikilink")\(W\)必然能把\(\mu\)帶到\(\lambda\)。此為[Harish-Chandra無限小中心特徵標定理之一推論](../Page/Harish-Chandra無限小中心特徵標定理.md "wikilink")。

每一Verma模 態射都是單射。態射空間之[維度](../Page/維度.md "wikilink")

\[dim(Hom(M_\mu, M_\lambda))\leq 1\]

其中\(\mu, \lambda\)為任何兩權。因此，存在一非零態射\(M_\mu\rightarrow M_\lambda\)若且僅若\(M_\mu\)
[同構於](../Page/同構.md "wikilink")\(M_\lambda\)的一（唯一）子模。

Verma模態射的完整分類來自I.N.伯恩斯坦、I.M.蓋爾芳特 與S.I.蓋爾芳特 的工作\[1\]與N.
Verma的工作\[2\]。簡言之，

> 存在非零態射 \(M_\mu\rightarrow M_\lambda\)若且僅若
> 存在一串[權](../Page/權_\(表示論\).md "wikilink")
>
> \[\mu=\nu_0\leq\nu_1\leq\ldots\leq\nu_k=\lambda\]
>
> 使得存在正根\(\gamma_i\)使\(\nu_{i-1}+\delta=s_{\gamma_i}(\nu_i+\delta)\)（其中\(s_{\gamma_i}\)是[根反映](../Page/根反映.md "wikilink")（[根系](../Page/根系.md "wikilink")），而\(\delta\)是所有[基本權之和](../Page/基本權.md "wikilink")）且對每一\(1\leq i\leq k\)，\((\nu_i+\delta)(H_{\gamma_i})\)為一自然數（其中\(H_{\gamma_i}\)是根\(\gamma_i\)之[對偶根](../Page/對偶根.md "wikilink")（））。

若Verma模\(M_\mu\)與\(M_\lambda\)俱為[regular](../Page/Verma模#基本性質.md "wikilink")，則僅存[支配權](../Page/支配權.md "wikilink")\(\tilde\lambda\)與[Weyl羣元](../Page/Weyl羣.md "wikilink")*w*,
*w*′使

  -
    P\(\mu=w'\cdot\tilde\lambda\)

而且

\[\lambda=w\cdot\tilde\lambda,\]

其中\(\cdot\)為Weyl羣的[仿射作用](../Page/仿射作用.md "wikilink")。設此等權是[整權](../Page/整權.md "wikilink")（）。存在非零態射

\[M_\mu\to M_\lambda\]

若且僅若，在Weyl羣*W* 的[Bruhat次序中](../Page/Bruhat次序.md "wikilink")，

\[w \leq  w'\]。

## Jordan-Holder序列

設

\[0\subset A\subset B\subset M_\lambda\]
為一\(\mathfrak{g}\)－模序列，其中B/A為不可約表示，其[最高權為μ](../Page/最高權為.md "wikilink")。則存在非零態射\(M_\mu\to M_\lambda\)。

推論： 設\(V_\mu, V_\lambda\)為二[最高權表示](../Page/最高權表示.md "wikilink")。若

\[V_\mu\subset V_\lambda\] 則存在非零態射\(M_\mu\to M_\lambda\)。

## 伯恩斯坦-蓋爾芳特-蓋爾芳特 分解

設\(V_\lambda\)為[李代數](../Page/李代數.md "wikilink")\(\mathfrak{g}\)的一有限維[不可約表示](../Page/不可約表示.md "wikilink")，其[最高權為λ](../Page/最高權.md "wikilink")。我们已知：存在非零態射

\[M_{w'\cdot\lambda}\to M_{w\cdot\lambda}\]

若且僅若，在其[Weyl羣的](../Page/Weyl羣.md "wikilink")[Bruhat次序中](../Page/Bruhat次序.md "wikilink")，

\[w\leq w'\]。

以下定理描述如何分解\(V_\lambda\)成Verma模的正合序列。 （此定理出現於
伯恩斯坦-蓋爾芳特-蓋爾芳特1975年的論文\[3\]）:

> 存在由\(\mathfrak{g}\)－態射組成的正合序列
>
> \[0\to \oplus_{w\in W,\,\, l(w)=n} M_{w\cdot \lambda}\to \ldots \to \oplus_{w\in W,\,\, l(w)=2} M_{w\cdot \lambda}\to \oplus_{w\in W,\,\, l(w)=1} M_{w\cdot \lambda}\to M_\lambda\to V_\lambda\to 0\]
> 其中*n*為Weyl羣最長元之長度。

一般研究員簡稱其為「BGG分解」。 [廣義Verma模亦有類似分解](../Page/廣義Verma模.md "wikilink")。

近來有人研究此等分解之某些特例，以助理解[拋物幾何](../Page/拋物幾何.md "wikilink")（，[嘉當幾何之特例](../Page/嘉當幾何.md "wikilink")）上之[不變微分算子](../Page/不變微分算子.md "wikilink")。嘉當幾何的定義依賴於一李羣*G*與其拋物子羣*P*。參閲\[4\]、\[5\]與\[6\]。

## 參攷

  - Knapp, A. W. Lie Groups Beyond an troduction. Second Edition.
    (2002), page 285.
  - Dixmier, J., Enveloping Algebras, North-Holland, Amsterdam, New
    York, Oxford, 1977
  - Humphreys J., Introduction to Lie Algebras and Representation
    Theory, Springer Verlag, 1980
  - Roggenkamp K., Stefanescu M., Algebra - Representation Theory,
    Springer, 2002

### 註解

<references/>

## 參見

  - [李代數表示論](../Page/李代數表示論.md "wikilink")
  - [泛包絡代數](../Page/泛包絡代數.md "wikilink")
  - [廣義Verma模](../Page/廣義Verma模.md "wikilink")
  - [最高權表示](../Page/最高權表示.md "wikilink")

[Category:李代數表示論](https://zh.wikipedia.org/wiki/Category:李代數表示論 "wikilink")

1.  Bernstein I.N., Gelfand I.M., Gelfand S.I., Structure of
    Representations that are generated by vectors of highest weight,
    Functional. Anal. Appl. 5 (1971)
2.  Verma N., Structure of certain induced representations of complex
    semisimple Lie algebras}, Bull. Amer. Math. Soc. 74 (1968)
3.  Bernstein I.N., Gelfand I.M., Gelfand S.I., Differential Operators
    on the Base Affine Space and a Study of g-Modules, Lie Groups and
    Their Representations, I. M. Gelfand, Ed., Adam Hilger, London,
    1975.}
4.  Eastwood M., Variations on the de Rham complex, Notices Amer. Math.
    Soc, 1999 - ams.org
5.  Calderbank D.M., Diemer T., Differential invariants and curved
    Bernstein-Gelfand-Gelfand sequences, Arxiv preprint math.DG/0001158,
    2000 - arxiv.org
6.  Cap A., Slovak J., Soucek V., Bernstein-Gelfand-Gelfand sequences,
    Arxiv preprint math.DG/0001164, 2000 - arxiv.org