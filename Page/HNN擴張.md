[數學上](https://zh.wikipedia.org/wiki/數學 "wikilink")，**HNN擴張**（）是[組合群論中的一個基本構造法](https://zh.wikipedia.org/wiki/組合群論 "wikilink")。HNN擴張是三名數學家[Graham
Higman](https://zh.wikipedia.org/wiki/Graham_Higman "wikilink")、[Bernhard
Neumann](https://zh.wikipedia.org/wiki/Bernhard_Neumann "wikilink")、[Hanna
Neumann在](https://zh.wikipedia.org/wiki/Hanna_Neumann "wikilink")1949年的論文*Embedding
Theorems for
Groups*\[1\]提出。給定一個[群中兩個](https://zh.wikipedia.org/wiki/群_\(數學\) "wikilink")[同構](../Page/群同構.md "wikilink")[子群](../Page/子群.md "wikilink")及其間的群同構，這個構造法將這個群[嵌入到另一個群中](https://zh.wikipedia.org/wiki/嵌入_\(數學\) "wikilink")，令到所給定的群同構在新的群中成為共軛。

## 構造法

若*G*為群，有[展示](../Page/群的展示.md "wikilink")*G* = 〈*S*|*R*〉，又若 α : *H* →
*K*是*G*的兩個子群間的[群同構](../Page/群同構.md "wikilink")。設*t*為不在*S*中的新符號，定義

\[G*_{\alpha} = \left \langle S,t \Big| R, tht^{-1}=\alpha(h), \forall h\in H \right \rangle.\]

群*G*∗<sub>α</sub>稱為*G*相對於α的**HNN擴張**。原本的群G稱為*G*∗<sub>α</sub>的**基群**，而子群*H*和*K*稱為**相伴子群**。新的生成元*t*稱為**穩定字**.

## 基本性質

由於群*G*∗<sub>α</sub>包念了*G*的所有生成元和關係元，所以將*G*的生成元等同於*G*∗<sub>α</sub>的生成元，便誘導出從*G*到*G*∗<sub>α</sub>的一個自然的[群同態](../Page/群同態.md "wikilink")。Higman、Neumann、Neumann證明了這個群同態是群同構，因而是*G*到*G*∗<sub>α</sub>中的[嵌入](https://zh.wikipedia.org/wiki/嵌入_\(數學\) "wikilink")。從上可得出一個結論是一個群中兩個同構的子群，必定在某個[母群中是](../Page/子群.md "wikilink")[共軛子群](../Page/內自同構.md "wikilink")。這個構造法的原來目的是要證明這個結論。

### Britton引理

HNN擴張的一個基礎性質是一條正規形的定理，稱為**Britton引理**。\[2\]設*G*∗<sub>α</sub>如上，*w*是在*G*∗<sub>α</sub>中如下的一個乘積：

\[w=g_0 t^{\varepsilon_1} g_1 t^{\varepsilon_2} \cdots g_{n-1} t^{\varepsilon_n}g_n, \qquad g_i \in G, \varepsilon_i = \pm 1.\]

Britton引理可表述為：

> **Britton引理** 若在*G*∗<sub>α</sub>中*w* = 1，則
>
>   - *n* = 0，且在*G*中*g*<sub>0</sub> = 1
>   - 或是*n* \> 0，且對某個*i* ∈ {1, ..., *n*−1}有下列兩者之一
>
> <!-- end list -->
>
> 1.  ε<sub>*i*</sub> = 1, ε<sub>*i*+1</sub> = −1, *g<sub>i</sub>* ∈
>     *H*,
> 2.  ε<sub>*i*</sub> = −1, ε<sub>*i*+1</sub> = 1, *g<sub>i</sub>* ∈
>     *K*.

Britton引理用[逆反命題可表述為](https://zh.wikipedia.org/wiki/逆反命題 "wikilink")：

> **Britton引理（另一形式）**設*w*滿足以下其中一項
>
>   - *n* = 0，且*g*<sub>0</sub> ≠ 1 ∈ *G*，
>   - 或*n* \> 0，且*w*不包含如下的子字串：*tht*<sup>−1</sup>，其中*h* ∈
>     *H*；及*t*<sup>−1</sup>*kt*，其中*k* ∈ *K*，
>
> 則在*G*∗<sub>α</sub>中*w* ≠ 1。

## Britton引理的結果

HNN擴張的大多數基本性質，都可以從Britton引理得出。這些結果包括：

  - 從*G*到*G*∗<sub>α</sub>的自然[群同態](../Page/群同態.md "wikilink")是[內射](https://zh.wikipedia.org/wiki/內射 "wikilink")，所以可以將*G*∗<sub>α</sub>視作包含*G*為子群。
  - *G*∗<sub>α</sub>中任何一個有限[階元素](../Page/階_\(群論\).md "wikilink")，是[共軛於](https://zh.wikipedia.org/wiki/共軛類 "wikilink")*G*中的某個元素。
  - *G*∗<sub>α</sub>中任一個有限子群都共軛於*G*中某個有限子群.
  - 若*H* ≠ *G*及*K* ≠
    *G*，則*G*∗<sub>α</sub>有子群同構於秩2的[自由群](../Page/自由群.md "wikilink")。

## 應用

HNN擴張是Higman證明[Higman嵌入定理的主要工具](https://zh.wikipedia.org/wiki/Higman嵌入定理 "wikilink")。這定理說任何[有限生成](https://zh.wikipedia.org/wiki/有限生成群 "wikilink")[遞歸展示群可嵌入到一個有限展示群中](../Page/群的展示.md "wikilink")。Novikov-Boone定理指存在一個[有限展示群](../Page/群的展示.md "wikilink")，有算法不可判定（）的[字問題](https://zh.wikipedia.org/wiki/字問題 "wikilink")，這定理的現代證明大多數都倚賴於HNN擴張。

HNN擴張和[帶共合的自由積兩者都是討論在](https://zh.wikipedia.org/wiki/帶共合的自由積 "wikilink")[樹上](https://zh.wikipedia.org/wiki/樹_\(圖論\) "wikilink")[作用的群的](../Page/群作用.md "wikilink")[Bass–Serre理論的基本組件](https://zh.wikipedia.org/wiki/Bass–Serre理論 "wikilink")。\[3\]

## 推廣

HNN擴張是[群的圖的](https://zh.wikipedia.org/wiki/群的圖 "wikilink")[基本群](../Page/基本群.md "wikilink")的初等例子。

## 參考

[Category:群论](https://zh.wikipedia.org/wiki/Category:群论 "wikilink")

1.
2.  [Roger C.
    Lyndon](https://zh.wikipedia.org/wiki/Roger_Lyndon "wikilink") and
    Paul E. Schupp. *Combinatorial Group Theory.* Springer-Verlag, New
    York, 2001. "Classics in Mathematics" series, reprint of the 1977
    edition. ISBN 978-3-540-41158-1; Ch. IV. Free Products and HNN
    Extensions.
3.  Jean-Pierre Serre. *Trees.* Translated from the French by John
    Stillwell. Springer-Verlag, Berlin-New York, 1980. ISBN
    3-540-10103-9