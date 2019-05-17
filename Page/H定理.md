**H定理**（）於1872年由[路德维希·玻尔兹曼提出](../Page/路德维希·玻尔兹曼.md "wikilink")，在经典[統計力學中描述物理量](https://zh.wikipedia.org/wiki/統計力學 "wikilink")「H」在接近[理想氣體系統中的下降趨勢](../Page/理想氣體.md "wikilink")\[1\]，其中H這個[積分數值代表](https://zh.wikipedia.org/wiki/積分 "wikilink")**分子隨時間流逝因傳遞而改變的動能**，個別分子的動能可於統計後成為一特定的分布。由於H可以用作定義熱力學[熵的一種表述](../Page/熵.md "wikilink")，H定理是早期用來展現統計物理的威力。H定理可以從可逆微觀機制推導出[熱力學第二定律](https://zh.wikipedia.org/wiki/熱力學第二定律 "wikilink")。它被認為可以否證熱力學第二定律\[2\]\[3\]\[4\]。

H定理可以很自然地從波茲曼提出的動力學方程式「[波茲曼方程式](https://zh.wikipedia.org/wiki/波茲曼方程式 "wikilink")」推導出。H定理衍伸出許多關於其真實含意的討論，主要如下：

  - 熵是什麼？ 什麼情況下物理量H可以等同於熱力學熵？
  - 波茲曼方程式背後的假設（尤其是分子混沌的假設）是否太強？什麼時候這些假設會被破壞？

## 定義

物理量H由f(E,t)dE定義，即分子在時間t下的能量分布。值 f(E,t) dE 是擁有E到E + dE 之間動能的數量。H本身定義成：

\(H(t) = \int_0^{\infty} f(E,t) \left[ \log\left(\frac{f(E,t)}{\sqrt{E}}\right) - 1 \right] \, dE\)

對於孤立理想氣體（總能量和分子數量不變），函數 H
在[馬克士威-波茲曼分布下有極小值](https://zh.wikipedia.org/wiki/馬克士威-波茲曼分布 "wikilink")；如果系統處於其他分布（比如說，全分子擁有相同能量），H會有較高的值。下一段會提到，根據波茲曼H定理，當允許分子碰撞時，這些分布並不穩定，並且會不可逆的最小化函數H（朝向馬克士威-波茲曼分布）。

## 波茲曼H定理

[右](https://zh.wikipedia.org/wiki/File:Translational_motion.gif "fig:右")收束，就算一開始並非符合該分布。\]\]

波茲曼思考分子碰撞會發生什麼事。根據基本的古典力學，兩個粒子彈性（例如鋼球模型）碰撞的能量轉移會根據不同的初始狀態而不同（碰撞的角度等）。

波茲曼做了一個很關鍵的假設，稱為「Stosszahlansatz」（假設）。在任何一次氣體碰撞中，參與碰撞的分子會獨立地選取分布中的動能、運動方向和起始位置。在這些假設之下，並且給定能量轉移的機制，碰撞後的粒子能量會遵守一個特定的隨機分布。

考慮所有分子間重複多次獨立的碰撞事件，波茲曼建構出動力方程式波茲曼方程式。從波茲曼方程式可知，碰撞過程的自然結果會讓H下降，直到H達到最小值為止。

## 影響

雖然波茲曼H定理並不真的證明最初宣稱的熱力學第二定律，H定理讓波茲曼對熱力學的本質做出越來越多機率的論述。熱力學的機率觀點最終在1902年讓[约西亚·威拉德·吉布斯將統計力學從氣體推廣到一般的系統](https://zh.wikipedia.org/wiki/约西亚·威拉德·吉布斯 "wikilink")，並引入了廣義的系綜。

動力方程式，特別是波茲曼的分子混沌假設啟發了至今仍用來描述粒子運動的波茲曼方程式家族，例如半導體中的電子。在許多情況下分子混沌假設仍是相當準確的，並可以拋棄複雜的粒子間的相關性讓計算更簡單。

## 對H定理的批評和例外

有一些理由描述為何H定理（起碼最初的1871年的形式）並不完全縝密。如同波茲曼也同意的，H的時間之箭並非純力學的，而是根據初始狀態的假設得到的結果。\[5\]

### 洛施密特悖论

在波茲曼提出H定理之後不久，
反對可以從時間對稱的動力學和形式中推導出不可逆的過程。若某狀態的H可以隨著時間減少，那麼一定存在一個反向的狀態其演化方向可以使H隨著時間增加([洛施密特悖论](https://zh.wikipedia.org/wiki/洛施密特悖论 "wikilink"))。
回應在於波茲曼方程式是根據的假設，亦即，方程式符合，或至少與更下層的動力模型一致—粒子可以被視為獨立且不相關的。最終這個假設巧妙地打破了時間反演的對稱，因此[begs
the
question](../Page/乞題.md "wikilink")。實際上，一旦粒子可以碰撞，他的們速度和位置確實會變得相關（然而此相關性相當複雜）。這表示對於粒子獨立的假設並不真的和底層的粒子模型相容。

波茲曼對洛施密特的回覆承認了這些狀態存在的可能性，不過仍注意到這種狀態非常稀少而且實際上幾乎不可能實現。波茲曼後來鑽研關於狀態的「稀少性」，最終導出著名的熵公式(1877)（參見[波茲曼熵公式](https://zh.wikipedia.org/wiki/波茲曼熵公式 "wikilink")）。

### 自旋回聲

[自旋迴訊是一個用來展示洛施密特悖論的現象](../Page/自旋迴訊.md "wikilink")，可以做為相關分析(not to
Boltzmann's original gas-related *H*-theorem, but to a closely related
analogue)的反例。\[6\] 在自旋回聲效應中，實務上可以在自旋交互系統中引發一個時間反轉的效果。

以H定理對自旋系統的分析可以以自旋態的分布做定義。實驗中，在自旋系統一開始受到微擾並偏離均衡態（高H值），根據H定理預測，H應該要下降到均衡時的數值。若是在某個時刻，小心地在系統中加入電磁脈衝，使得所有自旋的運動倒轉過來，自旋就會回復到脈衝加入前的狀態，一段時間後H會朝均衡的反向增加（當演化完全回復到剛受到微擾時的狀態，H又會下降回均衡）。某種意義上來說，洛施密特所說回覆狀態並非完全不實際。

### 龐加萊始態復現定理

1896年，[恩斯特·策梅洛注意到H定理有進一步的問題](../Page/恩斯特·策梅洛.md "wikilink")。只要曾有時間系統不是處在H值極小的狀態，根據，只要經過夠長的時間，該狀態（有著更高的H值）就會再現。波茲曼承認技術上H的回覆是有可能發生的，不過他也指出，在漫長的時間中，這樣的態只再現極少的時間。

[热力学第二定律說明](../Page/热力学第二定律.md "wikilink")[孤立系統的熵永遠會增加到一個均衡的值](https://zh.wikipedia.org/wiki/孤立系統 "wikilink")。這個論述只有在無限多粒子的熱力學極限下才嚴格正確。對有限粒子來說，熵會起伏。例如，在一個固定體積的獨立系統中，最大熵發生於一半的粒子位在一半的空間，另一半的粒子在另一半的空間；然而有時候其中一邊的粒子會稍稍比另外一邊多，這代表著比均衡態更少的熵。只要觀察得越久，就越有機會看到更大的熵起伏，甚至可以看到又可能出現的熵最小值。例如，看到全部的粒子都集中在容器的其中一半。氣體會很快地達到平衡，但是經過足夠的時間，重複的狀態有可能會再次出現。對於現實系統來說，比如說，一個裝著氣體的一公升容器，在室溫及一大氣壓的情況下，所需的時間也非常長，需要幾個宇宙壽命長的時間來觀測到一次這樣的事件，因此，不需要考慮這樣的機率。

### 微小系統中的H起伏

由於H是一個不守恆的力學變數，就像其他這樣的變數一樣（壓力等）會有熱擾動。這意味著H有時會自發的增加。技術上來說這不算是H定理的例外，因為H定理最早只想用來應用在有大量分子的氣體系統上。這些起伏只有在系統很小並且時間間隔並不非常大的時候才能觀察到。

如果H定理如同波茲曼所想的般被解讀，那麼這可以視為[漲落定理的一種表現](../Page/漲落定理.md "wikilink")。

## 與訊息理論的關係

H是夏農[資訊熵的前身](../Page/熵_\(信息论\).md "wikilink")。[克劳德·香农在H定理後提出他對](../Page/克劳德·香农.md "wikilink")[資訊熵的量測](../Page/熵_\(信息论\).md "wikilink")\[7\]香农的[熵
(信息论)有一個物理量稱為資訊熵](../Page/熵_\(信息论\).md "wikilink")，或資訊不確定性，是*H*的相反數。藉由把資訊熵由離散延伸成連續的情況（也稱作[微分熵](https://zh.wikipedia.org/wiki/微分熵 "wikilink")），就可以得到(1)的公式，因此也可以對*H*有更多的理論。

H定理對於資訊和熵的相連在[黑洞資訊悖論中扮演重要的角色](../Page/黑洞資訊悖論.md "wikilink")。

## 托爾曼H定理

[理查德·托爾曼在他](https://zh.wikipedia.org/wiki/理查德·托爾曼 "wikilink")1938年的書「The
Principles of Statistical
Mechanics」給了一整章節在波茲曼的H定理上，以及其在[约西亚·威拉德·吉布斯的擴展古典統計力學上的延伸](https://zh.wikipedia.org/wiki/约西亚·威拉德·吉布斯 "wikilink")。更進一步的章節是有關量子力學版本的H定理。

### 古典力學

首先定義函數 f 定義相空間一小塊區域中的分子數量，區域用\(\delta q_1 ... \delta p_r\)來定義：

  -
    \(\delta n = f(q_1 ... p_r,t)\delta q_1 ... \delta p_r.\,\)

托爾曼提供這樣一條方程式來定義原先波茲曼理論中的物理量H。

  -
    \(H= \sum_i f_i \ln f_i \,\delta q_1 \cdots \delta p_r\)\[8\]

我們把所有分割的相空間區域加總，以i標號。

這個關係可以寫成積分形式

  -
    \(H= \int \cdots \int f \ln f \,d q_1 \cdots dp_r\)\[9\]

H 也可以以每個小隔間中的分子數量表示。

  -
    <math>

\\begin{align} H & = \\sum( n_i \\ln n_i - n_i \\ln \\delta
v_\\gamma) \\\\ & = \\sum n_i \\ln n_i + \\text{constant}
\\end{align} </math>\[10\] 另一個計算H的方式是：

  -
    \(H = -\ln P + \text{constant}\,\)\[11\]

其中*P*是發現隨機選取的系統處在特定[微正则系综的機率](../Page/微正则系综.md "wikilink")。最終它可以寫成：

  -
    \(H = -\ln G + \text{constant}\,\)\[12\]

其中*G*為古典狀態的數量

物理量H也可以定義成速度空間上的積分 :

  -
    {| style="width:100%" border="0"

| style="width:95%" |\(\displaystyle
H \ \stackrel{\mathrm{def}}{=}\
\int { P ({\ln P}) \, d^3 v}
= \left\langle \ln P \right\rangle\) | style="" |(1) |} 其中*P*(*v*)
是機率分布。

使用波茲曼方程式可以證明H只能遞減。

對於一個有N個統計獨立的粒子的系統，H和熵的關係如下：

  -
    \(S \ \stackrel{\mathrm{def}}{=}\  - N k H\)

所以根據H定理，熵只能增加。

### 量子力學

在量子統計力學中，H定理的公式：\[13\]

  -
    \(H= \sum_i p_i \ln p_i, \,\)

把所有可能的狀態加總，*p<sub>i</sub>*是系統處在i狀態的機率。

這和[吉布士熵有很密切的關係](https://zh.wikipedia.org/wiki/吉布士熵 "wikilink")

  -
    \(S = - k \sum_i p_i \ln p_i \;\)

因此應該（如同Waldram (1985), p. 39所述的一樣）繼續使用*S*而不是*H*。

首先，對時間t微分

  -
    <math>\\begin{align}

\\frac{dS}{dt} & = - k \\sum_i \\left(\\frac{dp_i}{dt} \\ln p_i +
\\frac{dp_i}{dt}\\right) \\\\ & = - k \\sum_i \\frac{dp_i}{dt} \\ln
p_i \\\\ \\end{align}</math> (使用這個關係 ∑ *dp*<sub>*i*</sub>/*dt* = 0 因為
∑ *p*<sub>*i*</sub> = 1).

[费米黄金定则提供了從狀態α量子躍遷到狀態β和從β量子躍遷到α的平均速率的](../Page/费米黄金定则.md "wikilink")[主方程式](https://zh.wikipedia.org/wiki/主方程式 "wikilink")（费米黄金定则做了一些假設，而引入這個規則是為了增加不可逆性。這其實就是波茲曼
*Stosszahlansatz*假設的量子版本） 。對於一個孤立系統，躍遷的貢獻

  -
    <math>\\begin{align}

\\frac{dp_\\alpha}{dt} & = \\sum_\\beta
\\nu_{\\alpha\\beta}(p_\\beta - p_\\alpha) \\\\
\\frac{dp_\\beta}{dt} & = \\sum_\\alpha
\\nu_{\\alpha\\beta}(p_\\alpha - p_\\beta) \\\\ \\end{align}</math>
其中動力學不可逆性確保在二個式子中出現的轉態常數 *ν*<sub>*αβ*</sub>都相同。

因此

  -
    \(\frac{dS}{dt} =  \frac{1}{2} k \sum_{ \alpha,\beta} \nu_{\alpha\beta}(\ln p_{\beta}-\ln p_{\alpha})(p_{\beta}- p_{\alpha}).\)

但其中的二個相減項都會同號，因此*dS/dt*的每一個項次都不會是負的.

因此，對於一個孤立系統來說

  -
    \(\Delta S \geq 0 \,\)

有時會用相同的數學方式來證明在下，相對熵是[马尔可夫链的](../Page/马尔可夫链.md "wikilink")[李亞普諾夫函數](../Page/李亞普諾夫函數.md "wikilink")。

## 參見

  - [洛施密特悖论](https://zh.wikipedia.org/wiki/洛施密特悖论 "wikilink")
  - [时间箭头](../Page/时间箭头.md "wikilink")
  - [热力学第二定律](../Page/热力学第二定律.md "wikilink")
  - [漲落定理](../Page/漲落定理.md "wikilink")

## 註解

## 參考來源

  -
  -
  -
  -
  -
  -
  -
[Category:非平衡態熱力學](https://zh.wikipedia.org/wiki/Category:非平衡態熱力學 "wikilink")
[Category:热力学熵](https://zh.wikipedia.org/wiki/Category:热力学熵 "wikilink")
[Category:热物理学和统计物理学哲学](https://zh.wikipedia.org/wiki/Category:热物理学和统计物理学哲学 "wikilink")
[Category:物理定理](https://zh.wikipedia.org/wiki/Category:物理定理 "wikilink")
[Category:基本物理概念](https://zh.wikipedia.org/wiki/Category:基本物理概念 "wikilink")

1.  L. Boltzmann, "[Weitere Studien über das Wärmegleichgewicht unter
    Gasmolekülen](https://sites.google.com/site/articleshistoriques/theorie-cinetique/Boltzmann1872.pdf)."
    Sitzungsberichte Akademie der Wissenschaften 66 (1872): 275-370.
    English translation:
2.
3.
4.
5.  J. Uffink, "[Compendium of the foundations of classical statistical
    physics.](http://philsci-archive.pitt.edu/2691/1/UffinkFinal.pdf)"
    (2006)
6.
7.  Gleick 2011
8.  Tolman 1938 pg. 135 formula 47.5
9.  Tolman 1938 pg. 135 formula 47.6
10. Tolman 1938 pg. 135 formula 47.7
11. Tolman 1938 pg. 135 formula 47.8
12. Tolman 1939 pg. 136 formula 47.9
13. Tolman 1938 pg 460 formula 104.7