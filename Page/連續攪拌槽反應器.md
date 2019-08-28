[Continuous_bach_reactor_CSTR.svg](https://zh.wikipedia.org/wiki/File:Continuous_bach_reactor_CSTR.svg "fig:Continuous_bach_reactor_CSTR.svg") **連續攪拌槽反應器**（，簡稱**CSTR**），也可以稱作**vat-reactor**或是**backmix reactor**，是[化學工程中一個常見的](https://zh.wikipedia.org/wiki/化學工程 "wikilink")[化學反應器](../Page/化學反應器.md "wikilink")模型。CSTR通常是指在使用continuous agitated-tank reactor要達到指定出料條件時用來估計關鍵操作變數的模型 。該數學模型適用於所有[流体](https://zh.wikipedia.org/wiki/流体 "wikilink")：液體、氣體和漿體。

CSTR的行為通常會以連續理想攪拌槽反應器（Continuous Ideally Stirred-Tank Reactor，CISTR）建模，所有由CISTR進行的計算皆已假設其為。在一個完美攪拌的反應器中，出料的組成會與反應器內的組成一致，而組成與滯留時間及反應速率有關。以工程方面來說，一般會假設滯留時間是攪拌時間的5－10倍。CISTR模型通常用於簡化工程計算並可用於描述及研究反應器。然而實際上，反應只能接近而無法達到完美狀態，特別是在具工業規模的反應器中。

## 反應模型

[Agitated_vessel.svg](https://zh.wikipedia.org/wiki/File:Agitated_vessel.svg "fig:Agitated_vessel.svg")

假設反應為理想情況（完美攪拌），則在體積為\(V\)的反應器內物料\(i\)（莫耳數為\(N_i\)）的總質量平衡可表示成：

\([\text{accumulation}] = [\text{in}] - [\text{out}] + [\text{generation}]\)（累積量＝進料－出料＋生成）

  - \(\frac{dN_i}{dt} = F_{io} - F_i + V \nu_i r_i\) \[1\]
      -
        其中，\(F_{io}\)是物料\(i\)的進料莫爾流率，\(F_i\)是出料莫爾流率，\(\nu_i\)為[化学计量数](../Page/化学计量数.md "wikilink")。反應速率\(r\)，通常與反應物濃度以及[速率常数](../Page/速率常数.md "wikilink")（\(k\)）有關。速率常數一般可以由[阿伦尼乌斯方程](../Page/阿伦尼乌斯方程.md "wikilink")求得。一般來說，溫度升高時，反應速率也會隨之提升。\(\tau\)是指試劑在槽內所耗費的平均時間。
        假設：
          - 固定[密度](../Page/密度.md "wikilink")（適用於大部分[液體](https://zh.wikipedia.org/wiki/液體 "wikilink")、莫耳數不會產生淨變化或是沒有劇烈溫度變化的氣體）

          - [等温过程](../Page/等温过程.md "wikilink")（\(k\)為常數）

          - （\(G_A=r_AV\)）

          - [基元反應](https://zh.wikipedia.org/wiki/基元反应 "wikilink")、不可逆[化学反应](../Page/化学反应.md "wikilink")（\(v_a=-1\)）

          - [速率方程](../Page/速率方程.md "wikilink")（\(r=kC_A\))
        \[A\rightarrow product\]
        \[N_A=C_AV\]（\(C_A\)為物料\(A\)的濃度，\(V\)為反應器體積，\(N_A\)為物料*\(A\)*的莫爾數）
  - \(C_A = \frac {C_{Ao}}{1 + k \tau }\) \[2\]
      -
        上式中的變數、出口濃度和停留時間的值是主要的設計準則。

如果要建立一個非等溫或是單一反應的系統時，則必須要考慮額外的[控制變數](../Page/自变量和因变量.md "wikilink")。如果系統被認為處於不穩定狀態，那麼就必須求解[微分方程](../Page/微分方程.md "wikilink")或是耦合微分方程組。

CSTR是一類具有[多重穩態](https://zh.wikipedia.org/wiki/多重穩態 "wikilink")、[極限循環和](https://zh.wikipedia.org/wiki/極限循環 "wikilink")[混沌等複雜行為的系統](https://zh.wikipedia.org/wiki/化學混沌 "wikilink")。

## 應用

CSTR通常應用於廢水處理過程中。CSTR可以促進稀釋速率，使它們能抵抗鹼性或酸性的揮發性脂肪酸廢棄物。與其他類型的反應器相比，CSTR的效率較低，因為它們需要更大的反應器體積以達到與其他反應器模型（如）相同的反應速率。

## 參見

  -
  -
  -
  -
## 備註

## 參考資料

[Category:化学反应器](https://zh.wikipedia.org/wiki/Category:化学反应器 "wikilink")

1.

2.