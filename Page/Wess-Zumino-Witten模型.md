[理論物理](https://zh.wikipedia.org/wiki/理論物理 "wikilink") 與 [數學中](https://zh.wikipedia.org/wiki/數學 "wikilink")， **Wess-Zumino-Witten (WZW) 模型**，又稱**Wess-Zumino-Novikov-Witten model**，乃一簡單之 [共形場論](../Page/共形場論.md "wikilink")，其解可以用[仿射李代數表達](https://zh.wikipedia.org/wiki/仿射李代數 "wikilink")。其名來自 [Julius Wess](https://zh.wikipedia.org/wiki/Julius_Wess "wikilink")、[Bruno Zumino](https://zh.wikipedia.org/wiki/Bruno_Zumino "wikilink")、[Sergei P. Novikov](https://zh.wikipedia.org/wiki/Sergei_P._Novikov "wikilink") 與 [Edward Witten](https://zh.wikipedia.org/wiki/Edward_Witten "wikilink")。

## 作用

設*G*為[緊緻](https://zh.wikipedia.org/wiki/緊緻 "wikilink")[單連通](../Page/單連通.md "wikilink")[李羣](https://zh.wikipedia.org/wiki/李羣 "wikilink")，設*g*為其[李代數](../Page/李代數.md "wikilink")。設γ為[黎曼球面](../Page/黎曼球面.md "wikilink")\(S^2\)（[複平面之一點緊緻化](https://zh.wikipedia.org/wiki/複平面 "wikilink")）上一*G*-值場

**Wess-Zumino-Witten 模型**是γ所定義之[非線性 sigma 模型](https://zh.wikipedia.org/wiki/非線性_sigma_模型 "wikilink")，其[作用為](https://zh.wikipedia.org/wiki/作用_\(物理\) "wikilink")

\[S_k(\gamma)= - \,  \frac {k}{8\pi} \int_{S^2} d^2x\,
\mathcal{K} (\gamma^{-1} \partial^\mu \gamma \,  , \,
\gamma^{-1} \partial_\mu \gamma) + 2\pi k\, S^{\mathrm WZ}(\gamma)\]； 其中首項為[量子場論中常見之動量項](https://zh.wikipedia.org/wiki/量子場論 "wikilink")，[重覆指標相加](https://zh.wikipedia.org/wiki/愛因斯坦記號 "wikilink")，度量為[歐幾里得度量](https://zh.wikipedia.org/wiki/歐幾里得度量 "wikilink")， \(\mathcal{K}\) 為*g*上之[Killing 二次式](https://zh.wikipedia.org/wiki/Killing_二次式 "wikilink")，而\(\partial_\mu = \partial / \partial x^\mu\) 為 [偏導數](https://zh.wikipedia.org/wiki/偏導數 "wikilink")。

*S*<sup>WZ</sup> 項人稱 *Wess-Zumino 項*，其定義為

\[S^{\mathrm WZ}(\gamma) = - \, \frac{1}{48\pi^2} \int_{B^3} d^3y\,
\epsilon^{ijk} \mathcal{K} \left(
\gamma^{-1} \, \frac {\partial \gamma} {\partial y^i} \, , \,
\left[
\gamma^{-1} \, \frac {\partial \gamma} {\partial y^j} \, , \,
\gamma^{-1} \, \frac {\partial \gamma} {\partial y^k}
\right]
\right)\] 其中 \[,\] 為[交換子](../Page/交換子.md "wikilink")，\(\epsilon^{ijk}\) 為[完全反對稱張量](https://zh.wikipedia.org/wiki/完全反對稱張量 "wikilink")，*i*=1,2,3，\(y^i\)為積分座標，取值於[單位球](https://zh.wikipedia.org/wiki/單位球 "wikilink") \(B^3\)。 在此積分中，場γ 被延拓至單位球之內部——此所以可能，是由於任何緊緻單連通李羣之第二[同倫羣](https://zh.wikipedia.org/wiki/同倫羣 "wikilink")\(\pi_2(G)\)俱為零（γ已於球面上定義）。

### 拉回

注意：若 \(e_a\) 為李代數*g*之[基向量](https://zh.wikipedia.org/wiki/基向量 "wikilink")，則\(\mathcal{K}(e_a, [e_b, e_c])\) 為*g* 之 [結構常數](https://zh.wikipedia.org/wiki/結構常數 "wikilink")。結構常數是反對稱的，因而定義了一G 上一个三次[微分形式](../Page/微分形式.md "wikilink")。故上述積分實為球\(B^3\)上之三次調和式的[拉回](https://zh.wikipedia.org/wiki/拉回 "wikilink")。記此三次式為 *c*、其拉回為 \(\gamma^{*}\)，則我们有

\[S^{\mathrm WZ}(\gamma) = \int_{B^3} \gamma^{*} c\] 自此我们可用拓撲方法分析 WZ-項。

### 拓撲障礙

γ 有多種延拓至球\(B^3K\)之內部；若要求物理現象不依賴於特定之延拓，則常數*k*需符合以下「量子條件」：

  - 取γ 到球內部之任何兩種延拓。是為平三維區域至李羣*G*之兩支影射。在其邊界 \(S^2\)黏起此兩個三維球，則成一三維球面\(S^3\)；其中每一三維半球面來自一\(B^3\)。 γ 之兩種延拓則成為一影射： \(S^3\rightarrow G\)。然而，任何緊緻單連通李羣*G*之同倫羣

\(\pi_3(G)=\mathbb{Z}\) 。故

\[S^{\mathrm WZ}(\gamma) = S^{\mathrm WZ}(\gamma')+n\] 其中 γ 與 γ' 表示兩種延拓， *n*為一整數——黏合後影射之[卷绕数](../Page/卷绕数.md "wikilink")。兩種延拓會帶來相同的物理系統，若

\[\exp \left(i2\pi k S^{\mathrm WZ}(\gamma) \right)=
\exp \left( i2\pi k S^{\mathrm WZ}(\gamma')\right)\]

是故，耦合常數*k*必須為整數。當*G*是半單李羣，或不連通緊緻羣， 則由每一連通部所給之一整數構成此階（level）。

此拓撲障礙亦可以相應之[仿射李代數之表示論體現](https://zh.wikipedia.org/wiki/仿射李代數 "wikilink")。 當每一階為一整數，則存在該仿射李代數之[酉](../Page/酉群.md "wikilink")[最高權表示](https://zh.wikipedia.org/wiki/最高權表示 "wikilink")，而其最高權為 dominant integral。此等表示是[可積表示](https://zh.wikipedia.org/wiki/可積表示 "wikilink")\[1\]。

我们亦常遇相應於一非緊緻單李羣－例如 SL(2,**R**)－之 WZW 模型。[Juan Maldacena](https://zh.wikipedia.org/wiki/Juan_Maldacena "wikilink") 與 [Hirosi Ooguri](https://zh.wikipedia.org/wiki/Hirosi_Ooguri "wikilink") 以此描述三維[反 de sitter 空間](https://zh.wikipedia.org/wiki/反_de_sitter_空間 "wikilink")\[2\]上之[弦理論](../Page/弦理論.md "wikilink")。此時 π<sub>3</sub>(SL(2,**R**))=0，故不存在拓撲障礙，而其階亦不必為整數。

### 推廣

上述各 WZW 模型俱定義於黎曼球面上。我们亦可定義一般緊緻[黎曼曲面](../Page/黎曼曲面.md "wikilink")上之場γ。

## Current 代數

## 參攷

  - J. Wess, B. Zumino, "Consequences of anomalous Ward identities", *Physics Letters B*, **37** (1971) pp. 95-97.
  - E. Witten, "Global aspects of current algebra", *Nuclear Physics B* **223** (1983) pp. 422-432.
  - V. Kac, Infinite dimensional Lie algebras

## 註

<references/>

[Category:李羣](https://zh.wikipedia.org/wiki/Category:李羣 "wikilink") [Category:量子場論](https://zh.wikipedia.org/wiki/Category:量子場論 "wikilink") [Category:共形場論](https://zh.wikipedia.org/wiki/Category:共形場論 "wikilink") [Category:可解模型](https://zh.wikipedia.org/wiki/Category:可解模型 "wikilink")

1.  Kac, Victor, Infinite dimensional Lie algebras, ISBN 0-521-46693-8 第十章，
2.  [反德西特空間](../Page/反德西特空間.md "wikilink")，為SL(2,**R**)之[通用覆蓋](https://zh.wikipedia.org/wiki/通用覆蓋 "wikilink")