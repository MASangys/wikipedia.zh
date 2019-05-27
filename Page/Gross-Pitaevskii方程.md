**Gross–Pitaevskii 方程**（以[Eugene P.
Gross命名](https://zh.wikipedia.org/wiki/Eugene_P._Gross "wikilink")\[1\]与[Lev
Petrovich
Pitaevskii](https://zh.wikipedia.org/wiki/Lev_Petrovich_Pitaevskii "wikilink")\[2\])
描述了全同[玻色子量子体系的基态](../Page/玻色子.md "wikilink")，其中使用了[Hartree-Fock近似与](../Page/哈特里－福克方程.md "wikilink")[赝势相互作用模型](../Page/赝势.md "wikilink")。

在Hartree-Fock近似中，\(N\)个玻色子体系的总[波函数](../Page/波函数.md "wikilink")\(\Psi\)为单粒子波函数\(\psi\)之积

\[\Psi(\mathbf{r}_1,\mathbf{r}_2,\dots,\mathbf{r}_N)=\psi(\mathbf{r}_1)\psi(\mathbf{r}_2)\dots\psi(\mathbf{r}_N)\]
其中\(\mathbf{r}_i\)为第\(i\)个玻色子的坐标。

赝势模型下的哈密顿量为

\[H=\sum_{i=1}^N \left(-{\hbar^2\over 2m}{\partial^2\over\partial\mathbf{r}_i^2}+V(\mathbf{r}_i)\right)
+\sum_{i<j}{4\pi\hbar^2a_s\over m}\delta(\mathbf{r}_i-\mathbf{r}_j),\]
其中\(m\)为玻色子质量，\(V\)为外势场，\(a_s\)为玻色子-玻色子散射长度，\(\delta(\mathbf{r})\)为狄拉克δ函数。

如果单粒子波函数满足Gross-Pitaevski方程，

\[\left(-\frac{\hbar^2}{2m}{\partial^2\over\partial\mathbf{r}^2} + V(\mathbf{r})  + {4\pi\hbar^2a_s\over m}\vert\psi(\mathbf{r})\vert^2\right)\psi(\mathbf{r})=\mu\psi(\mathbf{r}),\]
则总波函数在归一化条件\(\int dV |\psi|^2=N\)下可以使赝势模型哈密顿量的总能量最小。

Gross-Pitaevski方程是描述[玻色-爱因斯坦凝聚单粒子波函数的模型方程](https://zh.wikipedia.org/wiki/玻色-爱因斯坦凝聚 "wikilink")。它有类似[金兹堡－朗道方程的形式](../Page/金兹堡－朗道方程.md "wikilink")，也会被称为[非线性薛定谔方程](https://zh.wikipedia.org/wiki/非线性薛定谔方程 "wikilink").

[玻色-爱因斯坦凝聚](https://zh.wikipedia.org/wiki/玻色-爱因斯坦凝聚 "wikilink")(BEC)
是处于同一量子态的玻色气体可以由同一个波函数进行描述。单个粒子可有单粒子波函数描述。真实气体中粒子相互作用包含在相应的多体薛定谔方程当中。当气体中粒子间距大于[散射长度](../Page/散射长度.md "wikilink")（即所谓的稀薄极限）时，真实的相互作用势就可以被替换为赝势。Gross-Pitaevskii方程的[非线性来源于粒子间的相互作用](https://zh.wikipedia.org/wiki/非线性 "wikilink")。当把方程中相互作用的耦合常数设为零时，非线性消失，方程以描述单粒子在势阱中的单粒子薛定谔方程的形式出现。

## 方程形式

Gross-Pitaevskii方程的形式类似于一般薛定谔方程，但是多出一个相互作用项。耦合常数\(g\)正比于两个相互作用玻色子间的散射长度\(a_s\)

\[g=\frac{4\pi\hbar^2 a_s}{m}\],

其中\(\hbar\)为约化[普朗克常数](../Page/普朗克常数.md "wikilink")。
[能量密度为](../Page/能量密度.md "wikilink")

\[\mathcal{E}=\frac{\hbar^2}{2m}\vert\nabla\Psi(\mathbf{r})\vert^2 + V(\mathbf{r})\vert\Psi(\mathbf{r})\vert^2 + \frac{1}{2}g\vert\Psi(\mathbf{r})\vert^4,\]

其中\(\Psi\)为波函数，\(V\)为外部势场。 对于体系内粒子数守恒的不含时Gross–Pitaevskii方程

\[\mu\Psi(\mathbf{r}) = \left(-\frac{\hbar^2}{2m}\nabla^2 + V(\mathbf{r})  + g\vert\Psi(\mathbf{r})\vert^2\right)\Psi(\mathbf{r})\]

其中\(\mu\) 为[化学势](../Page/化学势.md "wikilink")。化学势是从粒子数与波函数间的关系中得到的

\[N = \int\vert\Psi(\mathbf{r})\vert^2 \, d^3r.\]

从不含时Gross-Pitaevskii方程中，我们可以求得各种外势场中玻色爱因斯坦凝聚的内部结构（例如，[谐振子势阱](https://zh.wikipedia.org/wiki/谐振子势 "wikilink")）。

含时Gross-Pitaevskii方程为

\[i\hbar\frac{\partial\Psi(\mathbf{r},t)}{\partial t} = \left(-\frac{\hbar^2}{2m}\nabla^2 + V(\mathbf{r}) + g\vert\Psi(\mathbf{r},t)\vert^2\right)\Psi(\mathbf{r},t).\]

利用含时Gross–Pitaevskii方程人们可以研究玻色爱因斯坦凝聚的动力学问题。

## 方程解

鉴于Gross–Pitaevskii方程为[非线性偏微分方程](../Page/非线性偏微分方程.md "wikilink")，一般很难求得解析解，大多数求解应用近似方法。

### 精确解

#### 自由粒子

最简单的情况是描述[自由粒子](../Page/自由粒子.md "wikilink")，外势场\(V(\mathbf{r}) =0\)，

  -
    \(\Psi(\mathbf{r}) = \sqrt{\frac{N}{V}} e^{i\mathbf{k}\cdot\mathbf{r}}.\)

该解常被称为Hartree解。尽管它满足Gross–Pitaevskii方程，由于相互作用，其[能谱中含有间隙](https://zh.wikipedia.org/wiki/能谱 "wikilink")

  -
    \(E(\mathbf{k}) = N \left[ \frac{\hbar^2k^2}{2m}+ g \frac{N}{2 V}\right].\)

根据[Hugenholtz–Pines定理](https://zh.wikipedia.org/wiki/Hugenholtz–Pines定理 "wikilink")\[3\]，含斥力相互作用的玻色气体并无能量间隙。

#### 孤子

一维[孤子可以构成玻色爱因斯坦凝聚](https://zh.wikipedia.org/wiki/孤子 "wikilink")，取决于相互作用是[引力还是](../Page/引力.md "wikilink")[斥力](https://zh.wikipedia.org/wiki/斥力 "wikilink")，形成亮孤子或暗孤子。两种孤子都是均匀密度背景下的定域扰动。如若相互作用是斥力形式的，
\(g>0\)，Gross–Pitaevskii方程的可能解为，

\[\psi(x) = \psi_0\tanh\left(\frac{x}{\sqrt{2}\xi}\right)\],

其中\(\psi_0\)为凝聚态波函数在无穷远处的值，\(\xi = \hbar/\sqrt{2mn_0g}\)为[相干长度](../Page/相干长度.md "wikilink")。此解代表暗孤子，它描述在空间上原本均匀分布的密度出现了缺失。暗孤子是一种[拓扑缺陷](https://zh.wikipedia.org/wiki/拓扑缺陷 "wikilink")，因为\(\psi\)在经过原点处符号发生翻转。这对应了数学上\(\pi\)的[相移](https://zh.wikipedia.org/wiki/相移 "wikilink")。

对于\(g<0\)

\[\psi(x,t) = \psi(0)e^{-i\mu t/\hbar}\frac{1}{\cosh\left[\sqrt{2m\vert\mu\vert/\hbar^2}x\right]},\]

其中化学势为\(\mu = g\vert\psi(0)\vert^2/2\)。此解为亮孤子, 代表了空间上的凝聚。

#### 一维方势阱

### 变分解

对于难以得到精确解析解的体系，人们可以使用[变分法](../Page/变分法.md "wikilink")。代入含某可调参数的已知波函数，求解体系自由能，找到使体系能量降为最低的参数。

### 托马斯-费米近似

如果气体中粒子数量很多，原子间相互作用极大，以至于原子自身动能可以从Gross-Pitaevskii方程中忽略，此时近似为[托马斯-费米近似](https://zh.wikipedia.org/wiki/托马斯-费米近似 "wikilink")。

\[\psi(x,t) = \sqrt{\frac{\mu - V(x)}{NU_0}}\]

### 玻戈留玻夫近似

对Gross-Pitaevskii方程的[玻戈留玻夫处理可以找到玻色爱因斯坦凝聚的元](https://zh.wikipedia.org/wiki/玻戈留玻夫 "wikilink")[激子](https://zh.wikipedia.org/wiki/激子 "wikilink")。凝聚态波函数可以近似为[平衡态波函数](https://zh.wikipedia.org/wiki/平衡态 "wikilink")\(\psi_0=\sqrt{n}e^{-i\frac{\mu}{\hbar} t}\)与一个小的扰动\(\delta\psi\)之和

\[\psi = \psi_0 + \delta\psi\]

此波函数与其复共轭代入到含时Gross–Pitaevskii方程中，对\(\delta\psi\)作展开近似到第一项（线性化）

\[-\frac{\hbar^2}{2m}\nabla ^2 \delta\psi+V\delta\psi+g(2|\psi_0|^2\delta\psi+\psi^2\delta\psi^*) = i\hbar\frac{\partial\delta\psi}{\partial t}\]

\[-\frac{\hbar^2}{2m}\nabla ^2 \delta\psi^*+V\delta\psi^*+g(2|\psi_0|^2\delta\psi^*+\psi^2\delta\psi) = i\hbar\frac{\partial\delta\psi^*}{\partial t}\]

假定\(\delta\psi\)有如下形式

\[\delta\psi = e^{-i\frac{\mu}{\hbar} t}(u(\boldsymbol{r})e^{-i\omega t} - v^*(\boldsymbol{r})e^{i\omega t})\]

可以得到如下\(u\)和\(v\)的耦合微分方程

\[(-\frac{\hbar^2}{2m}\nabla^2+V+2gn-\mu-\hbar\omega)u-gnv = 0\]

\[(-\frac{\hbar^2}{2m}\nabla^2+V+2gn-\mu+\hbar\omega)v-gnu = 0\]

对于[各向同性体系](https://zh.wikipedia.org/wiki/各向同性 "wikilink")，即\(V(\boldsymbol{r})=0\)，可以假设\(u\)和\(v\)是动量为\(\boldsymbol{q}\)的[平面波](../Page/平面波.md "wikilink")，可得能谱

\[\hbar\omega = \epsilon_\boldsymbol{q} = \sqrt{\frac{\hbar^2\boldsymbol{q}^2}{2m}(\frac{\hbar^2\boldsymbol{q}^2}{2m}+2gn)}\]

当\(\boldsymbol{q}\)很大时，[色散关系呈现为](../Page/色散关系.md "wikilink")\(\boldsymbol{q}\)的平方，正如所料类似于非相互作用的激子。当\(\boldsymbol{q}\)很小，色散关系为线性，

\[\epsilon_\boldsymbol{q} = s\hbar q\]

其中\(s=\sqrt{ng/m}\)为凝聚态中的声速。
\(\epsilon_\boldsymbol{q}/(\hbar q)>s\)表明，根据[Landau的判则](https://zh.wikipedia.org/wiki/Landau "wikilink")，该凝聚态为[超流体](../Page/超流体.md "wikilink")，意味着如果一个物体在凝聚态中以小于\(s\)的速度运动，它不会形成激子，运动无[耗散](../Page/耗散.md "wikilink")，此为超流体的特征。实验上，采用高度聚焦激光，激光频率较共振频率小，已经证明了凝聚态的超流性\[4\]。采用[二次量子化公式](https://zh.wikipedia.org/wiki/二次量子化 "wikilink")，微观方法可以描述凝聚态同样的色散关系。

## 参考文献

Theory of Bose_Einstein condensation in trapped gases Franco Dalfovo
and Stafano Giorgini Reviews Modern Physics

## 更多阅读

  - .

  - .

[Category:量子力学](https://zh.wikipedia.org/wiki/Category:量子力学 "wikilink")

1.
2.
3.
4.  [*Evidence for a Critical Velocity in a Bose–Einstein Condensed Gas*
    C. Raman, M. Köhl, R. Onofrio, D. S. Durfee, C. E. Kuklewicz, Z.
    Hadzibabic, and W.
    Ketterle](http://prl.aps.org/abstract/PRL/v83/i13/p2502_1)