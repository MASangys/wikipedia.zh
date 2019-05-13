**RL电路**，全称**电阻-电感电路**（），或称**RL滤波器**、**RL网络**，是最简单的[无限脉冲响应](https://zh.wikipedia.org/wiki/无限脉冲响应滤波器 "wikilink")[电子滤波器](../Page/电子滤波器.md "wikilink")。它由一个[电阻器](https://zh.wikipedia.org/wiki/电阻器 "wikilink")、一个[电感元件](../Page/电感元件.md "wikilink")[串联或](https://zh.wikipedia.org/wiki/串联 "wikilink")[并联组成](https://zh.wikipedia.org/wiki/并联 "wikilink")，并由[电压源驱动](https://zh.wikipedia.org/wiki/电压源 "wikilink")。\[1\]

## 概论

最基本的[被动线性元件为](https://zh.wikipedia.org/wiki/被动元件 "wikilink")[电阻器](https://zh.wikipedia.org/wiki/电阻器 "wikilink")（R）、[电容器](../Page/电容器.md "wikilink")（C）和[电感元件](../Page/电感元件.md "wikilink")（L）。这些元件可以被用来组成4种不同的电路：[RC电路](https://zh.wikipedia.org/wiki/RC电路 "wikilink")、RL电路、[LC电路和](../Page/LC电路.md "wikilink")[RLC电路](../Page/RLC电路.md "wikilink")，这些名称都缘于各自所使用元件的英语缩写。它们体现了一些对于模拟电子技术来说很重要的性质。它们都可以被用作被动滤波器。本条目主要讲述RL电路串联、并联状态的情况。

在实际应用中通常使用电容器（以及RC电路）而非电感来构成滤波电路。这是因为电容更容易制造，且元件的尺寸普遍更小。

## 复阻抗

具有[电感](../Page/电感.md "wikilink")*L*（以[亨利为单位](https://zh.wikipedia.org/wiki/亨利_\(单位\) "wikilink")）的电感元件的复阻抗*Z*<sub>*L*</sub>（以[欧姆为单位](https://zh.wikipedia.org/wiki/欧姆 "wikilink")）为\[2\]：

\[Z_L \ = \ Ls\]

复频率*s*是一个[复数](https://zh.wikipedia.org/wiki/复数 "wikilink")，

\[s \ = \ \sigma + j \omega\]

这里

  - *j*表示[虚数单位](https://zh.wikipedia.org/wiki/虚数单位 "wikilink"):

\[j^2 = -1\]

  - \(\sigma \\)为[指数衰减常数](../Page/指数衰减.md "wikilink")（以[每秒弧度为单位](https://zh.wikipedia.org/wiki/每秒弧度 "wikilink")），且

<!-- end list -->

  - \(\omega \\)为[角频率](https://zh.wikipedia.org/wiki/角频率 "wikilink")（以每秒弧度为单位）

### 示性函数

复数函数[示性函数](https://zh.wikipedia.org/wiki/示性函数 "wikilink")（）对所有[线性时不变系统](../Page/线性时不变系统理论.md "wikilink")（）有以下的形式：

\[V(t) \ = \ \mathbf{A}e^{st} \ = \ \mathbf{A}e^{(\sigma + j \omega) t}  \\]，若令\(\mathbf{A} \ = \ A e^{j \phi}\)，则可重写为\(\ = \ A e^{j \phi}e^{(\sigma + j \omega) t}\)，合并复数指数后得到\(\ = \ A e^{\sigma t}e^{j ( \omega t + \phi )}\)

通过复数的[欧拉公式](../Page/欧拉公式.md "wikilink")，示性函数的[实部为指数衰减的正弦值](https://zh.wikipedia.org/wiki/实部 "wikilink")：

\[v(t) \ = \ \mathrm{Re} \left \{ V(t)  \right \} \ = \ A e^{\sigma t} \cos(\omega t + \phi )\]

### 正弦稳定状态

正弦稳定状态是当输入电压仅包含纯的正弦信号的特殊情况，即不存在指数衰减。因此\[3\]：

\[\sigma \ = \ 0\]

且*s*的值变为：

\[s \ = \  j \omega\]

## 串联

[Series-RL.svg](https://zh.wikipedia.org/wiki/File:Series-RL.svg "fig:Series-RL.svg")
如果把整个RL电路看做一个按阻抗进行[分压](https://zh.wikipedia.org/wiki/电压分配定则 "wikilink")\[4\]的系统，则电感元件“分得”的电压为：

\[V_L(s) = \frac{Ls}{R+Ls}V_{in}(s)\]

电阻器“分得”的电压为：

\[V_R(s) = \frac{R}{R+Ls}V_{in}(s)\].

### 电流

由于是串联电路，因此电路处处电流相等，且为：

\[I(s) = \frac{V_{in}(s)}{R + Ls}\].

### 传递函数

电感元件的[传递函数为](../Page/传递函数.md "wikilink")：

\[H_L(s) = { V_L(s) \over V_{in}(s) }   = { Ls \over R + Ls  }  =  G_L e^{j \phi_L}\]

类似的，电阻器的传递函数为：

\[H_R(s) = { V_R(s) \over V_{in}(s) }   = { R \over R + Ls  }  =  G_R e^{j \phi_R}\]

#### 极点和零点

两个传输函数都有一个极点位于：

\[s = - {R \over L }\]

另外，电感元件在[原点处有一个](https://zh.wikipedia.org/wiki/原点 "wikilink")[零点](../Page/零点.md "wikilink")。

### 增益和相位

通过代入上面的表达式，可以求得两个组件的增益为：

\[G_L =  | H_L(s) | = \left|\frac{V_L(s)}{V_{in}(s)}\right| = \frac{\omega L}{\sqrt{R^2 + \left(\omega L\right)^2}}\]

且

\[G_R =  | H_R(s) | = \left|\frac{V_R(s)}{V_{in}(s)}\right| = \frac{R}{\sqrt{R^2 + \left(\omega L\right)^2}}\],

相位为：

\[\phi_L = \angle H_L(s)  =  \tan^{-1}\left(\frac{R}{\omega L}\right)\]

且

\[\phi_R =  \angle H_R(s)  = \tan^{-1}\left(-\frac{\omega L}{R}\right)\].

### 相量表示

通常用[相量代替上面的式子来表达输出](../Page/相量.md "wikilink")\[5\]：

\[V_L = G_{L}V_{in} e^{j \phi_L}\]

\[V_R = G_{R}V_{in}e^{j \phi_R}\].

### 脉冲响应

每一种[电压的](https://zh.wikipedia.org/wiki/电压 "wikilink")[冲激响应是对应传输函数的反](../Page/冲激响应.md "wikilink")[拉普拉斯变换](https://zh.wikipedia.org/wiki/拉普拉斯变换 "wikilink")。它代表电路对于包含脉冲或[狄拉克δ函数的输入电压的响应](../Page/狄拉克δ函数.md "wikilink")。

电感元件电压的响应为：

\[h_L(t) = \delta(t)- { R \over L} e^{-tR / L} u(t)   =  \delta(t) - { 1 \over \tau} e^{-t / \tau} u(t)\]

这里*u*(*t*)是[单位阶跃函数且](../Page/单位阶跃函数.md "wikilink")

\[\tau = { L \over R}\]为[时间常数](https://zh.wikipedia.org/wiki/时间常数 "wikilink")。

类似的，电阻器电压的响应为：

\[h_R(t) =  {R \over L} e^{-tR / L} u(t)   =   { 1 \over \tau} e^{-t / \tau} u(t)\]

### 零输入响应

RL电路的零输入响应（）描述了电路在不连接输入信号源的情况下、达到稳定电压和电流时的工作状态。\[6\]因为它没有外接输入信号，因此得名。

一个RL电路的零输入响应为：

\[i(t) = i(0)e^{-(R/L) t} = i(0)e^{-t/ \tau} \!\\].

其中\(\tau\)是时间常数。

## 并联

[RL_Parallel_Filter_(with_I_Labels).svg](https://zh.wikipedia.org/wiki/File:RL_Parallel_Filter_\(with_I_Labels\).svg "fig:RL_Parallel_Filter_(with_I_Labels).svg")
除非连接到[电流源](https://zh.wikipedia.org/wiki/电流源 "wikilink")，RL电路的并联形式很少引起人们的兴趣。这主要是因为输出电压\(V_{out}\)等于输入电压\(V_{in}\)，这样，整个电路并未能充当一个电压信号的滤波器。

复阻抗为：

\[I_R = \frac{V_{in}}{R}\] 且

\[\,\!I_L = \frac{V_{in}}{j\omega L} = -\frac{jV_{in}}{\omega L}\].

这表明电感元件在相位上落后电阻器（以及输入信号）90度。

RL电路的并联形式经常在[放大器电路的输出级上](https://zh.wikipedia.org/wiki/放大器电路 "wikilink")，使[放大器与负载隔离](../Page/放大器.md "wikilink")。由于电容器引入的相移，有些放大器在高频的情况会变得不稳定，容易产生振荡。这会影响电器功能（例如[音响的音效品质](../Page/高保真.md "wikilink")）和其使用寿命（特别是对[晶体管来说](../Page/晶体管.md "wikilink")），所以应当尽量避免。

## 参考文献

## 相关条目

  - [电子滤波器](../Page/电子滤波器.md "wikilink")
  - [RC电路](https://zh.wikipedia.org/wiki/RC电路 "wikilink")
  - [LC电路](../Page/LC电路.md "wikilink")
  - [RLC电路](../Page/RLC电路.md "wikilink")

[Category:电路分析](https://zh.wikipedia.org/wiki/Category:电路分析 "wikilink")

1.

2.

3.

4.
5.
6.