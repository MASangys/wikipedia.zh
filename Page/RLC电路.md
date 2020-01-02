> 本文内容由[RLC电路](https://zh.wikipedia.org/wiki/RLC电路)转换而来。


[RLC_series.png](https://zh.wikipedia.org/wiki/File:RLC_series.png "fig:RLC_series.png") **RLC电路**是一种由[电阻](../Page/电阻.md "wikilink")（R）、[电感](../Page/电感.md "wikilink")（L）、[电容](https://zh.wikipedia.org/wiki/电容 "wikilink")（C）组成的[电路](../Page/电路.md "wikilink")结构。[LC电路](../Page/LC电路.md "wikilink")是其简单的例子。RLC电路也被称为二阶电路，电路中的[电压或者](https://zh.wikipedia.org/wiki/电压 "wikilink")[电流](../Page/电流.md "wikilink")是一個二阶[微分方程](../Page/微分方程.md "wikilink")的解，而其係數是由电路结构决定。

若电路元件都视为线性元件时，一个RLC电路可以被视作电子[谐波振荡器](https://zh.wikipedia.org/wiki/谐波振荡器 "wikilink")。

这种电路的[固有频率一般表示为](https://zh.wikipedia.org/wiki/固有频率 "wikilink")：（单位：赫兹Hz）

\[f_c = {1 \over 2 \pi \sqrt{L C}}\]

RLC电路常用來作[带通滤波器或](https://zh.wikipedia.org/wiki/带通滤波器 "wikilink")[带阻滤波器](../Page/带阻滤波器.md "wikilink")，其[Q因子可以由下式得到](https://zh.wikipedia.org/wiki/Q因子 "wikilink")：

\[Q = {f_c \over B_W} = {2 \pi f_c L \over R} = {1 \over \sqrt{R^2 C / L}}\]

RLC电路的组成结构一般有两种：分別是串联型及并联型。

[Tuned_circuit_animation_3.gif](https://zh.wikipedia.org/wiki/File:Tuned_circuit_animation_3.gif "fig:Tuned_circuit_animation_3.gif")（无电阻的RLC电路）的工作。电荷在电容器极板和电感之间来回传递。能量在电容器的[电场](https://zh.wikipedia.org/wiki/电场 "wikilink") *(E)* 和电感的[磁场](https://zh.wikipedia.org/wiki/磁场 "wikilink") *(B)* 之间来回振荡。 RLC电路工作情况类似，不同之处在于，由于电路中的电阻，随着时间变化振荡电流衰减至零。\]\]

## RLC串聯電路

[**圖 1.** RLC串聯電路
**V** - 電源電壓
**I** - 電路電流
**R** - 電阻
**L** - 電感
**C** - 電容](https://zh.wikipedia.org/wiki/File:RLC_series_circuit_v1.svg "fig:圖 1. RLC串聯電路 V - 電源電壓 I - 電路電流 R - 電阻 L - 電感 C - 電容")

在此电路中，三个元件均与电压以串联方式连接。其主要的微分方程可将三个元件的[本构方程代入](https://zh.wikipedia.org/wiki/本构方程 "wikilink")[基尔霍夫电压定律](https://zh.wikipedia.org/wiki/基尔霍夫电压定律 "wikilink")（KVL）获得。由基尔霍夫电压定律：

\[v_R+v_L+v_C=v(t) \,\] 其中\(\textstyle v_R, v_L, v_C\)分别为R、L、C两端的电压，\(\textstyle v(t)\)为随时间变化的电源的电压。将本构方程代入得到：

\[RI(t) + L { {dI} \over {dt}} + {1 \over C} \int_{-\infty}^{\tau=t} I(\tau)\, d\tau = v(t)\]

在电源电压为常数的情况下，对上式求导，并且除以L，得到以下二阶[微分方程](../Page/常微分方程.md "wikilink")：

\[{{d^2 I(t)} \over {dt^2}} +{R \over L} {{dI(t)} \over {dt}} + {1 \over {LC}} I(t) = 0\]

此方程可以写成更常用的形式：

\[{{d^2 I(t)} \over {dt^2}} + 2 \alpha {{dI(t)} \over {dt}} + {\omega_0}^2 I(t) = 0\] \(\alpha \,\)称为“衰减量”，用于衡量当移除外部輸入后，此电路的瞬态响应衰减的速率。\(\omega_0 \,\)为角共振频率。\[1\]此二系数由下式给出：\[2\]

\[\alpha = {R \over 2L}\] ， \(\omega_0 = { 1 \over \sqrt{LC}}\) 阻尼系数\(\zeta\)是另一个常用的参数，定义为\(\alpha \,\)与\(\omega_0 \,\)的比值：

\[\zeta = \frac {\alpha}{\omega_0}\] 阻尼系数也可以由R、L、C求得：

\[\zeta = {R \over 2} \sqrt{C\over L}\]

### 瞬态响应

[RLC_transient_plot.svg](https://zh.wikipedia.org/wiki/File:RLC_transient_plot.svg "fig:RLC_transient_plot.svg") 根据不同的阻尼系数\(\zeta\)的值，该微分方程的解法有三种不同的情况，分别为：[欠阻尼](https://zh.wikipedia.org/wiki/阻尼#欠阻尼 "wikilink")（\(\scriptstyle \zeta < 1 \,\)），[过阻尼](https://zh.wikipedia.org/wiki/阻尼#过阻尼 "wikilink")（\(\scriptstyle \zeta > 1 \,\)），以及[临界阻尼](https://zh.wikipedia.org/wiki/阻尼#临界阻尼 "wikilink")（\(\scriptstyle \zeta = 1 \,\)）。该微分方程的[特征方程为](https://zh.wikipedia.org/wiki/特征方程 "wikilink")：

\[s^2 + 2 \alpha s + {\omega_0}^2 = 0\]

该方程的根为：

\[s_1 = -\alpha +\sqrt {\alpha^2 - {\omega_0}^2}\]

\[s_2 = -\alpha -\sqrt {\alpha^2 - {\omega_0}^2}\]

该微分方程的通解为两根指数函数的线性叠加：

\[i(t) = A_1 e^{s_1 t} + A_2 e^{s_2 t}\] 系数*A*<sub>1</sub>以及 *A*<sub>2</sub>由具体问题的[边界条件给出](https://zh.wikipedia.org/wiki/边界条件 "wikilink")。

#### 过阻尼响应

过阻尼响应（\(\scriptstyle \zeta > 1 \,\)）为：\[3\]

\[i(t) = A_1 e^{-\omega_0(\zeta + \sqrt {\zeta^2 - 1}) t} + A_2 e^{-\omega_0(\zeta - \sqrt {\zeta^2 - 1}) t}\] 过阻尼响应是一个瞬态电流无振荡的衰减。\[4\]

#### 欠阻尼响应

欠阻尼响应（\(\scriptstyle \zeta < 1 \,\)）为：\[5\]

\[i(t) = B_1 e^{-\alpha t} \cos (\omega_d t) + B_2 e^{-\alpha t} \sin (\omega_d t) \,\]

通过[三角恒等式](https://zh.wikipedia.org/wiki/三角恒等式#线性组合 "wikilink")，这两个三角函数可用一个有[相位](../Page/相位.md "wikilink")的[正弦函数表达](https://zh.wikipedia.org/wiki/正弦函数 "wikilink")：\[6\]

\[i(t) = B_3 e^{-\alpha t} \sin (\omega_d t + \varphi) \,\]

欠阻尼响应是一个频率为\(\omega_d \,\)的衰减的振荡。振荡衰减的速率为\(\alpha\)。指数里的\(\alpha\)描述了振荡的[包络函数](https://zh.wikipedia.org/wiki/包络函数 "wikilink")。*B*<sub>1</sub> 以及*B*<sub>2</sub> （或第二种形式中的 *B*<sub>3</sub> 以及相位差 \(\varphi \,\)）为任意常数，由边界条件确定。频率\(\omega_d \,\)由下式给出：\[7\]

\[\omega_d = \sqrt { {\omega_0}^2 - \alpha^2 } = \omega_0 \sqrt {1 - \zeta^2}\]

这就是所谓的阻尼共振频率或阻尼固有频率。它是电路在无外部源驱动时自然振动的频率。谐振频率\(\omega_0 \,\)是电路在有外部源驱动时的谐振频率，为了便于区分常称作无阻尼谐振频率。\[8\]

#### 临界阻尼响应

临界阻尼响应（\(\scriptstyle \zeta = 1 \,\)）为：\[9\]

\[i(t) = D_1 t e^{-\alpha t} + D_2 e^{-\alpha t} \,\]

### 拉普拉斯域

可以利用[拉普拉斯轉換分析RLC串聯電路的交流暫態及穩態行為](https://zh.wikipedia.org/wiki/拉普拉斯轉換 "wikilink")\[10\]。若上述電壓源產生的波形，在拉普拉斯轉換後為*V*(*s*)（其中*s*為[複頻率](https://zh.wikipedia.org/wiki/S平面 "wikilink")\(s = \sigma + i \omega \,\)），則在拉普拉斯域中應用[基爾霍夫電壓定律](https://zh.wikipedia.org/wiki/基爾霍夫電壓定律 "wikilink")：

\[V(s) = I(s) \left ( R + Ls + \frac{1}{Cs} \right )\]

其中*I*(*s*)為拉普拉斯轉換後的電流，求解*I*(*s*)：

\[I(s) = \frac{1}{ R + Ls + \frac{1}{Cs} } V(s)\]

在重新整理後，可以得到下式：

\[I(s) = \frac{s}{ L \left ( s^2 + {R \over L}s + \frac{1}{LC} \right ) } V(s)\]

#### 拉普拉斯导纳

求解拉普拉斯[导纳](../Page/导纳.md "wikilink")*Y*(*s*)：

\[Y(s) = { I(s) \over V(s) } = \frac{s}{ L \left ( s^2 + {R \over L}s + \frac{1}{LC} \right ) }\]

可以利用以上章節定義的參數α及ω<sub>o</sub>來簡化上式，可得：

\[Y(s) = { I(s) \over V(s) } = \frac{s}{ L \left ( s^2 + 2 \alpha s + {\omega_0}^2 \right ) }\]

#### 極點和零點

*Y*(*s*) 的[零点](../Page/零点.md "wikilink")是使得\(Y(s) = 0\) 的*s*：

\[s  =  0 \,\]     及     \(|s| \rightarrow \infty\)

*Y*(*s*) 的[极点是使得](https://zh.wikipedia.org/wiki/极点_\(代数\) "wikilink")\(Y(s)\rightarrow \infty\) 的*s*，求解二次方程，可得：

  -

      -
        \(s = - \alpha \pm \sqrt{\alpha^2 - {\omega_0}^2}\)

*Y*(*s*)的极點即為前文中提到微分方程之特徵方程的根\(s_1\)及\(s_2\)。

#### 正弦稳态

正弦稳态可通过令\(s = j \omega\)来表示，其中\(j\)为[虚数单位](https://zh.wikipedia.org/wiki/虚数单位 "wikilink")。

将此代入上面方程的幅值中：

\[\displaystyle | Y(s=j \omega) | = \frac{1}{\sqrt{ R^2 + \left ( \omega L - \frac{1}{\omega C} \right )^2 }}.\]

以 *ω* 为变量的电流的函数为

\[\displaystyle | I( j \omega  ) |  = | Y(j \omega) | | V(j \omega) |.\,\]

有一个峰值\(|I (j \omega)|\)。在此特殊情况下，这个峰值中的 *ω* 等于无阻尼固有谐振频率：\[11\]

\[\omega_0 = \frac{1}{\sqrt{L C}}.\]

## RLC並聯電路

[**圖 5.** RLC 並聯電路
**V** - 電源電壓
**I** - 電路電流
**R** - 電阻
**L** - 電感
**C** - 電容](https://zh.wikipedia.org/wiki/File:RLC_parallel_circuit_v1.svg "fig:圖 5. RLC 並聯電路 V - 電源電壓 I - 電路電流 R - 電阻 L - 電感 C - 電容")

RLC並聯電路的特性可以利用電路的，將RLC並聯電路視為RLC串聯電路的來處理，就可以用類似RLC串聯電路的分析方式來分析RLC並聯電路。

RLC並聯電路的衰减量\(\alpha \,\)可以用下式求得\[12\]：

\[\alpha =  {1 \over 2RC }\]

而其阻尼系数為：

\[\zeta =  {1 \over 2R}\sqrt{L\over C}\]

若不考慮\(1/2\)的係數，RLC並聯電路的阻尼系数恰好是RLC串聯電路阻尼系数的倒數。

### 頻域

[RLC_parallel_plot.svg](https://zh.wikipedia.org/wiki/File:RLC_parallel_plot.svg "fig:RLC_parallel_plot.svg") 將並聯各元件的導納相加，即為此電路的導納：

\[{1\over Z}=\]  \({1\over Z_L}+{1\over Z_C}+{1\over Z_R}=\)  \({1\over{j\omega L}}+{j\omega C}+{1\over R}\)

電容、電阻及電感並聯後，在共振頻率的阻抗為最大值，和電容、電阻及電感串聯的情形恰好相反，RLC並聯電路是抗共振電路（antiresonator）。

右圖中可以看出若用定電壓驅動時，電流的頻率響應在共振頻率\(\omega_0={1\over\sqrt{LC}}\)處有最小值。若用定電流驅動，電壓的頻率響應在共振頻率處有最大值，和RLC串聯電路中，電流的頻率響應圖形類似。 {{-}}

## 其他构造

[RL_series_C_parallel.svg](https://zh.wikipedia.org/wiki/File:RL_series_C_parallel.svg "fig:RL_series_C_parallel.svg") [L_series_RC_parallel.svg](https://zh.wikipedia.org/wiki/File:L_series_RC_parallel.svg "fig:L_series_RC_parallel.svg") 如图7所示，电阻与电感串联的并联LC电路是有必要考虑到线圈卷线的电阻时经常遇到的一种拓扑结构。并联LC电路经常用于[带通滤波中](https://zh.wikipedia.org/wiki/带通滤波器 "wikilink")，而 *Q* 因子主要由此电阻决定。电路的谐振频率为，\[13\]

\[\omega_0 = \sqrt {\frac{1}{LC} - \left ( \frac{R}{L} \right )^2}\]

这是电路的谐振频率，定义为导纳虚部为零时的频率。在特征方程的一般形式（此电路与之前的相同）中出现的频率

\[s^2 + 2 \alpha s + {\omega'_0}^2 = 0\]

不是相同的频率。在这种情况下是固有的无阻尼谐振频率\[14\]

\[\omega'_0 = \sqrt \frac {1}{LC}\] 阻抗幅值最大时的频率\(\omega_m\)为，\[15\]

\[\omega_m =\omega'_0\sqrt{\frac{-1}{Q^2_L}+\sqrt{1+\frac{2} {Q^2_L}}}\] 其中\(Q_L=\frac{\omega'_0L} {R}\)是线圈的[品质因数](https://zh.wikipedia.org/wiki/品质因数 "wikilink")。这可以下式很好地近似\[16\]

\[\omega_m \approx \omega'_0 \sqrt{1-\frac {1} {2Q^4_L} }\]

此外，精确的最大阻抗幅值由下式给出，\[17\]

\[|Z|_{max}=RQ^2_L \sqrt{\frac{1} {2Q_L\sqrt{Q^2_L+2}-2Q^2_L-1}}\].

\(Q_L\)值比1大时，可以用下式很好地近似\[18\]

\[|Z|_{max} \approx {RQ^2_L}\].

同样，电阻与电容并联的串联LC电路可用于有耗介质的电容器。这种构造如图8所示。在这种情况下谐振频率（阻抗的虚部为零时的频率），由下式给出，\[19\]

\[\omega_0 = \sqrt {\frac{1}{LC}-\frac{1}{(RC)^2}}\]

而阻抗幅值最大时的频率\(\omega_m\)为

\[\omega_m =\omega'_0\sqrt{\frac{-1}{Q^2_C}+\sqrt{1+\frac{2} {Q^2_C}}}\] 其中\(Q_C=\omega'_0 {R}{C}\)

## 参见

  - [RC电路](https://zh.wikipedia.org/wiki/RC电路 "wikilink")
  - [RL电路](../Page/RL电路.md "wikilink")
  - [LC电路](../Page/LC电路.md "wikilink")

## 参考文献

### 引用

### 来源

  - Anant Agarwal, Jeffrey H. Lang, *Foundations of analog and digital electronic circuits*, Morgan Kaufmann, 2005 ISBN 1-55860-735-8.
  - J. L. Humar, *Dynamics of structures*, Taylor & Francis, 2002 ISBN 90-5809-245-3.
  - J. David Irwin, *Basic engineering circuit analysis*, Wiley, 2006 ISBN 7-302-13021-3.
  - Kenneth L. Kaiser, *Electromagnetic compatibility handbook*, CRC Press, 2004 ISBN 0-8493-2087-9.
  - James William Nilsson, Susan A. Riedel, *Electric circuits*, Prentice Hall, 2008 ISBN 0-13-198925-1.

## 外部連結

  - [串聯RLC交流電路Java模擬](http://www.phy.hk/wiki/chinesehtm/RLC.htm)

[Category:電路分析](https://zh.wikipedia.org/wiki/Category:電路分析 "wikilink")

1.  Nilsson and Riedel, p.308.
2.  Agarwal and Lang, p.641.
3.  Irwin, p.532.
4.  Agarwal and Lang, p.648.
5.  Nilsson and Riedel, p.295.
6.  Humar, pp.223-224.
7.
8.  Agarwal and Lang, p. 692.
9.  Nilsson and Riedel, p.303.
10. 本章節是Lokenath Debnath, Dambaru Bhatta, *Integral transforms and their applications*, 2nd ed. Chapman & Hall/CRC, 2007, ISBN 1-58488-575-0,198-202頁的Example 4.2.13為基礎，不過為了和本文用的符號一致，有修改其中部份標示
11. Kumar and Kumar, *Electric Circuits & Networks*, p. 464.
12. Nilsson and Riedel, p.286.
13. Kaiser, pp. 5.26–5.27.
14. Agarwal and Lang, p. 805.
15.
16.
17.
18.
19. Kaiser, pp. 5.25–5.26.