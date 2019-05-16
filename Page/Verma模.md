**Verma模**（Verma
module）是[李代數](../Page/李代數.md "wikilink")[表示理論中的基本研究對象](https://zh.wikipedia.org/wiki/表示理論 "wikilink")，其名取自[Daya-Nand
Verma](https://zh.wikipedia.org/wiki/Daya-Nand_Verma "wikilink")。Verma模之間的態射相應於[旗流形上的](https://zh.wikipedia.org/wiki/旗流形 "wikilink")[不變微分算子](https://zh.wikipedia.org/wiki/不變微分算子 "wikilink")。

可用Verma模來證明以下命題：[最高權為](https://zh.wikipedia.org/wiki/最高權 "wikilink")\(\lambda\)的[最高權表示的維數有限](https://zh.wikipedia.org/wiki/最高權表示 "wikilink")，若且僅若\(\lambda\)是[支配整權](https://zh.wikipedia.org/wiki/支配整權 "wikilink")（）。

## Verma模的定義

設：

  - \(F\)為一域；
  - \(\mathfrak{g}\)，為\(F\)上一[半單李代數](https://zh.wikipedia.org/wiki/半單李代數 "wikilink")；
      - \(\mathcal{U}(\mathfrak{g})\)為其[泛包絡代數](../Page/泛包絡代數.md "wikilink")
      - \(\mathfrak{b}\)為其一[Borel子代數](https://zh.wikipedia.org/wiki/Borel子代數 "wikilink")
          - \(\mathcal{U}(\mathfrak{b})\)為其泛包絡代數
      - \(\mathfrak{h}\)為其一[嘉當子代數](https://zh.wikipedia.org/wiki/嘉當子代數 "wikilink")
  - \(\lambda \in \mathfrak{h}^*\)為一固定之[權](https://zh.wikipedia.org/wiki/權_\(表示論\) "wikilink")。
  - \(F_\lambda\)為\(F\)上的一維向量空間，
    賦與\(\mathfrak{b}\)-[模結構](../Page/模.md "wikilink")：\(\mathfrak{h}\)的作用為「乘以\(\lambda\)」，[正根的作用為零](https://zh.wikipedia.org/wiki/根系統 "wikilink")。由於\(F_\lambda\)是一左\(\mathfrak{b}\)－模，他同時亦是一左\(\mathcal{U}(\mathfrak{b})\)－模。
  - 由[Poincaré-Birkhoff-Witt定理](https://zh.wikipedia.org/wiki/Poincaré-Birkhoff-Witt定理 "wikilink")，\(\mathcal{U}(\mathfrak{g})\)有一自然右\(\mathcal{U}(\mathfrak{b})\)－模結構。由於\(\mathcal{U}(\mathfrak{g})\)亦是一左\(\mathfrak{g}\)－模，
    所以是\((\mathfrak{g}, \mathcal{U}(\mathfrak{b}))\)-[雙模](https://zh.wikipedia.org/wiki/雙模 "wikilink")。
  - 定義（最高權為\(\lambda\)之）**Verma模** 為

<!-- end list -->

  -
    \(M_\lambda = \mathcal{U}(\mathfrak{g}) \otimes_{\mathcal{U}(\mathfrak{b})} F_\lambda\)

此自然地是一左\(\mathfrak{g}\)－模。從Poincaré-Birkhoff-Witt定理可知：\(M_\lambda\)，作為一向量空間，同構於

  -
    \(\mathcal{U}(\mathfrak{g}_-) \otimes_F F_\lambda\)

其中\(\mathfrak{g}_-\)為\(\mathfrak{g}\)之負根生成之子李代數。

## 基本性質

作為\(\mathfrak{g}\)－模，Verma模是一[最高權表示](https://zh.wikipedia.org/wiki/最高權表示 "wikilink")，即整個模由一[最高權向量生成](https://zh.wikipedia.org/wiki/最高權向量 "wikilink")。此最高權向量是\(1\otimes 1\)的像（其中前\(1\)為\(\mathcal{U}(\mathfrak{g})\)之單位，後\(1\)為域\(F\)之單位元）；其權為\(\lambda\)。

Verma模是[weight
modules](https://zh.wikipedia.org/wiki/weight_modules "wikilink")，即\(M_\lambda\)是其[權子空間之](https://zh.wikipedia.org/wiki/權子空間 "wikilink")[直和](https://zh.wikipedia.org/wiki/直和 "wikilink")。每一權子空間\(M_\mu\)是有限維的，其維度是\(M_\mu\)權\(\lambda-\mu\)寫成[正根之和之方法之數](https://zh.wikipedia.org/wiki/正根 "wikilink")（參見[Kostant
partition
function](https://zh.wikipedia.org/wiki/Kostant_partition_function "wikilink")）。

Verma模有一重要性質：若\(V\)為任一最高權模，其最高權為\(\lambda\)，則存在一\(\mathfrak{g}\)
[滿射](https://zh.wikipedia.org/wiki/滿射 "wikilink")：\(M_\lambda\to V\)。換言之，任何最高權模都是\(M_\lambda\)的商模。

\(M_\lambda\)內存在唯一極大[子模](https://zh.wikipedia.org/wiki/子模 "wikilink")，而\(M_\lambda\)與此子模之商是[不可約的](https://zh.wikipedia.org/wiki/表示論#不可約表示 "wikilink")。

Verma模\(M_\lambda\)本身不可約 若且僅若
當其[最高權](https://zh.wikipedia.org/wiki/最高權 "wikilink")\(\lambda\)分解成[基本權](https://zh.wikipedia.org/wiki/權_\(表示論\)#基本權 "wikilink")（）之和時，每一系數都不是\(\{0,1,2,\ldots\}\)。

稱Verma模\(M_\lambda\)為**regular**，若其最高權λ位於一[支配權](https://zh.wikipedia.org/wiki/支配權 "wikilink")\(\tilde\lambda\)之仿射[Weyl軌迹上](https://zh.wikipedia.org/wiki/Weyl軌迹 "wikilink")。換言之，存在[Weyl羣的元素w](https://zh.wikipedia.org/wiki/Weyl羣 "wikilink")，使

\[\lambda=w\cdot\tilde\lambda\]，
其中\(\cdot\)是Weyl羣的[仿射作用](https://zh.wikipedia.org/wiki/仿射作用 "wikilink")。

稱Verma模\(M_\lambda\)為**singular**，若λ的仿射軌迹上無支配權。此時，存在權\(\tilde\lambda\)使\(\tilde\lambda+\delta\)落於[基本Weyl室之牆上](https://zh.wikipedia.org/wiki/基本Weyl室 "wikilink")；（其
中δ為各[基本權之和](../Page/基本權.md "wikilink")）。

## Verma模之間的態射

設\(\lambda, \mu\)為兩[權](https://zh.wikipedia.org/wiki/權 "wikilink")。若存在態射

\[M_\mu\rightarrow M_\lambda\]，

則\(\mathfrak{g}\)的[Weyl羣](https://zh.wikipedia.org/wiki/Weyl羣 "wikilink")\(W\)的
[仿射作用](https://zh.wikipedia.org/wiki/仿射作用 "wikilink")\(W\)必然能把\(\mu\)帶到\(\lambda\)。此為[Harish-Chandra無限小中心特徵標定理之一推論](https://zh.wikipedia.org/wiki/Harish-Chandra無限小中心特徵標定理 "wikilink")。

每一Verma模 態射都是單射。態射空間之[維度](../Page/維度.md "wikilink")

\[dim(Hom(M_\mu, M_\lambda))\leq 1\]

其中\(\mu, \lambda\)為任何兩權。因此，存在一非零態射\(M_\mu\rightarrow M_\lambda\)若且僅若\(M_\mu\)
[同構於](https://zh.wikipedia.org/wiki/同構 "wikilink")\(M_\lambda\)的一（唯一）子模。

Verma模態射的完整分類來自I.N.伯恩斯坦、I.M.蓋爾芳特 與S.I.蓋爾芳特 的工作\[1\]與N.
Verma的工作\[2\]。簡言之，

> 存在非零態射 \(M_\mu\rightarrow M_\lambda\)若且僅若
> 存在一串[權](https://zh.wikipedia.org/wiki/權_\(表示論\) "wikilink")
>
> \[\mu=\nu_0\leq\nu_1\leq\ldots\leq\nu_k=\lambda\]
>
> 使得存在正根\(\gamma_i\)使\(\nu_{i-1}+\delta=s_{\gamma_i}(\nu_i+\delta)\)（其中\(s_{\gamma_i}\)是[根反映](https://zh.wikipedia.org/wiki/根反映 "wikilink")（[根系](https://zh.wikipedia.org/wiki/根系 "wikilink")），而\(\delta\)是所有[基本權之和](../Page/基本權.md "wikilink")）且對每一\(1\leq i\leq k\)，\((\nu_i+\delta)(H_{\gamma_i})\)為一自然數（其中\(H_{\gamma_i}\)是根\(\gamma_i\)之[對偶根](https://zh.wikipedia.org/wiki/對偶根 "wikilink")（））。

若Verma模\(M_\mu\)與\(M_\lambda\)俱為[regular](https://zh.wikipedia.org/wiki/Verma模#基本性質 "wikilink")，則僅存[支配權](https://zh.wikipedia.org/wiki/支配權 "wikilink")\(\tilde\lambda\)與[Weyl羣元](https://zh.wikipedia.org/wiki/Weyl羣 "wikilink")*w*,
*w*′使

  -
    P\(\mu=w'\cdot\tilde\lambda\)

而且

\[\lambda=w\cdot\tilde\lambda,\]

其中\(\cdot\)為Weyl羣的[仿射作用](https://zh.wikipedia.org/wiki/仿射作用 "wikilink")。設此等權是[整權](https://zh.wikipedia.org/wiki/整權 "wikilink")（）。存在非零態射

\[M_\mu\to M_\lambda\]

若且僅若，在Weyl羣*W*
的[Bruhat次序中](https://zh.wikipedia.org/wiki/Bruhat次序 "wikilink")，

\[w \leq  w'\]。

## Jordan-Holder序列

設

\[0\subset A\subset B\subset M_\lambda\]
為一\(\mathfrak{g}\)－模序列，其中B/A為不可約表示，其[最高權為μ](https://zh.wikipedia.org/wiki/最高權為 "wikilink")。則存在非零態射\(M_\mu\to M_\lambda\)。

推論：
設\(V_\mu, V_\lambda\)為二[最高權表示](https://zh.wikipedia.org/wiki/最高權表示 "wikilink")。若

\[V_\mu\subset V_\lambda\] 則存在非零態射\(M_\mu\to M_\lambda\)。

## 伯恩斯坦-蓋爾芳特-蓋爾芳特 分解

設\(V_\lambda\)為[李代數](../Page/李代數.md "wikilink")\(\mathfrak{g}\)的一有限維[不可約表示](https://zh.wikipedia.org/wiki/不可約表示 "wikilink")，其[最高權為λ](https://zh.wikipedia.org/wiki/最高權 "wikilink")。我们已知：存在非零態射

\[M_{w'\cdot\lambda}\to M_{w\cdot\lambda}\]

若且僅若，在其[Weyl羣的](https://zh.wikipedia.org/wiki/Weyl羣 "wikilink")[Bruhat次序中](https://zh.wikipedia.org/wiki/Bruhat次序 "wikilink")，

\[w\leq w'\]。

以下定理描述如何分解\(V_\lambda\)成Verma模的正合序列。 （此定理出現於
伯恩斯坦-蓋爾芳特-蓋爾芳特1975年的論文\[3\]）:

> 存在由\(\mathfrak{g}\)－態射組成的正合序列
>
> \[0\to \oplus_{w\in W,\,\, l(w)=n} M_{w\cdot \lambda}\to \ldots \to \oplus_{w\in W,\,\, l(w)=2} M_{w\cdot \lambda}\to \oplus_{w\in W,\,\, l(w)=1} M_{w\cdot \lambda}\to M_\lambda\to V_\lambda\to 0\]
> 其中*n*為Weyl羣最長元之長度。

一般研究員簡稱其為「BGG分解」。
[廣義Verma模亦有類似分解](https://zh.wikipedia.org/wiki/廣義Verma模 "wikilink")。

近來有人研究此等分解之某些特例，以助理解[拋物幾何](https://zh.wikipedia.org/wiki/拋物幾何 "wikilink")（，[嘉當幾何之特例](https://zh.wikipedia.org/wiki/嘉當幾何 "wikilink")）上之[不變微分算子](https://zh.wikipedia.org/wiki/不變微分算子 "wikilink")。嘉當幾何的定義依賴於一李羣*G*與其拋物子羣*P*。參閲\[4\]、\[5\]與\[6\]。

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

  - [李代數表示論](https://zh.wikipedia.org/wiki/李代數表示論 "wikilink")
  - [泛包絡代數](../Page/泛包絡代數.md "wikilink")
  - [廣義Verma模](https://zh.wikipedia.org/wiki/廣義Verma模 "wikilink")
  - [最高權表示](https://zh.wikipedia.org/wiki/最高權表示 "wikilink")

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