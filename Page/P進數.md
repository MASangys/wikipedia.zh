p进制数}}
[3-adic_integers_with_dual_colorings.svg](https://zh.wikipedia.org/wiki/File:3-adic_integers_with_dual_colorings.svg "fig:3-adic_integers_with_dual_colorings.svg")

**\(p\)进数**是[数论中的概念](../Page/数论.md "wikilink")，也称作**局部数域**，是[有理数域拓展成的](../Page/有理数.md "wikilink")[完备数域的一种](../Page/完备空间.md "wikilink")。这种拓展与常见的有理数域\(\mathbb{Q}\)到[实数域](../Page/实数.md "wikilink")\(\mathbb{R}\)、[复数域](https://zh.wikipedia.org/wiki/复数 "wikilink")\(\mathbb{C}\)的数系拓展不同，其具体在于所定义的“[距离](../Page/度量.md "wikilink")”概念。\(p\)进数的距离概念建立在[整数的](../Page/整数.md "wikilink")[整除性质上](https://zh.wikipedia.org/wiki/整除 "wikilink")。给定[素数](../Page/素数.md "wikilink")\(p\)，若两个数之差被\(p\)的高次[幂](https://zh.wikipedia.org/wiki/幂 "wikilink")[整除](https://zh.wikipedia.org/wiki/整除 "wikilink")，那么这两个数距离就“接近”，幂次越高，距离越近。这种定义在数论性质上的“距离”能够反映[同余的信息](https://zh.wikipedia.org/wiki/同余 "wikilink")，使\(p\)进数理论成为了数论研究中的有力工具。例如[安德鲁·怀尔斯对](https://zh.wikipedia.org/wiki/安德鲁·怀尔斯 "wikilink")[费马大定理的证明中就用到了](../Page/费马大定理.md "wikilink")\(p\)进数理论。

\(p\)进数的概念首先由[库尔特·亨泽尔于](../Page/库尔特·亨泽尔.md "wikilink")1897年构思并刻画，其发展动机主要是试图将[幂级数方法引入到](../Page/幂级数.md "wikilink")[数论中](../Page/数论.md "wikilink")，但现今\(p\)进数的影响已远不止于此。例如可以在\(p\)进数上建立[\(p\)进数分析](https://zh.wikipedia.org/wiki/p进数分析 "wikilink")，将数论和分析的工具结合起来。此外\(p\)进数在[量子物理学](https://zh.wikipedia.org/wiki/量子物理学 "wikilink")、[认知科学](../Page/认知科学.md "wikilink")、[计算机科学等领域都有应用](../Page/计算机科学.md "wikilink")。

## 预备知识

### 数系的拓展

数系是人类将自然中的数量关系抽象化得到的[代数系统](https://zh.wikipedia.org/wiki/代数系统 "wikilink")。最早建立的数系是带有加法与乘法的[自然数](../Page/自然数.md "wikilink")\(\mathbb{N} = \{ 0,1,2,3 \cdots \}\)，其後引入了[负数](../Page/负数.md "wikilink")、[分数的概念](https://zh.wikipedia.org/wiki/分数 "wikilink")，形成了[有理数](../Page/有理数.md "wikilink")\(\mathbb{Q}\)\[1\]。\(\mathbb{Q}\)是“最小的”能够包容[四则运算的代数系统](https://zh.wikipedia.org/wiki/四则运算 "wikilink")\[2\]，这样的系统在近世代数中称为[域](https://zh.wikipedia.org/wiki/域_\(数学\) "wikilink")\[3\]。

### 度量

数系的拓展中，自然数系到有理数系的拓展是基于代数运算的需求，而有理数系到实数系的拓展则是[拓扑学的需要](../Page/拓扑学.md "wikilink")。这里的拓扑指的是为代数体系赋予“形状”，定义“远近”、“长短”等概念，是建立[几何和](../Page/几何学.md "wikilink")[分析结构的基础](https://zh.wikipedia.org/wiki/分析学 "wikilink")。一个常见的拓扑学方法是引入“距离”的概念，正式称呼为[度量](../Page/度量.md "wikilink")\[4\]。最直观的定义是将两个有理数的“距离”（度量）\(d\)定义为两者之差的[绝对值](../Page/绝对值.md "wikilink")：

\[d(x, y) = |x - y|.\]
两个有理数之间的度量是一个非负的有理数。也即是说度量\(d\)是一个从有理数域映射到非负有理数集合的二元函数：\(\mathbb{Q}\times \mathbb{Q} \rightarrow \mathbb{Q}^+ = \{ x \in \mathbb{Q} ; \; \; x \geqslant 0\}\)。其中\(\mathbb{Q}^+\)的大小关系则是有理数域上定义的[全序](https://zh.wikipedia.org/wiki/全序 "wikilink")。这个度量基于[欧几里德几何](https://zh.wikipedia.org/wiki/平面几何 "wikilink")，叫做欧几里德度量或绝对值度量\[5\]。

### 完备化

在\(\mathbb{Q}\)上装备了度量後，可以讨论[极限的概念](https://zh.wikipedia.org/wiki/极限 "wikilink")。极限描述了一个数列在下标趋于无穷时的趋势，是分析学的基础。如果一个有理数列在下标趋于无穷时，数列的项与某个数\(l \in \mathbb{Q}\)的距离可以小于任意给定的正有理数，就称\(l\)为此数列的极限。拥有极限的数列的项在下标趋于无穷时相互无限“靠近”。但反过来，这样的数列不一定拥有有理数极限。比如说以下数列：

\[\frac12 , \frac23 , \frac35 , \frac58 , \frac{8}{13} , \cdots\]
这说明有理数在表示长度和距离的时候是不完备的，存在着无法用有理数表达的长度\[6\]。为此需要对有理数进行扩展，称为[完备化](https://zh.wikipedia.org/wiki/完备化 "wikilink")\[7\]。

将\(\mathbb{Q}\)完备化的拓扑方法由[格奥尔格·康托提出](https://zh.wikipedia.org/wiki/康托 "wikilink")。康托的方法依赖于现称为[柯西数列的概念](../Page/柯西序列.md "wikilink")。柯西数列是一种可以用任意“小”的“圆盘”覆盖从某项起所有项的无穷数列。某个有理数数列\((a_n)_{n\in \mathbb{N}} \in \mathbb{Q}^{\mathbb{N}}\)是柯西数列，[当且仅当对任意有理数](../Page/当且仅当.md "wikilink")\(\epsilon > 0\)，都存在自然数\(N_\epsilon \in \mathbb{N}\)，使得对任意\(n, m > N_\epsilon\)，都有\(d(a_n ,a_m) < \epsilon\)。康托承认每个这样的有理数数列都收敛到某个极限，将无理数定义为某个柯西数列的极限\[8\]。当然也存在收敛到有理数的柯西数列，比如常数数列。如果两个柯西数列\((a_n)_{n\in \mathbb{N}}\)和\((b_n)_{n\in \mathbb{N}}\)的差：\((a_n - b_n)_{n\in \mathbb{N}}\)收敛于0，就称这两个数列等价。这样可以在所有的柯西数列中建立[等价关系](../Page/等价关系.md "wikilink")。而康托将所有的等价类的集合定义为\(\mathbb{R}\)。四则运算、绝对值度量和序关系“\>”都可以从有理数域自然诱导到\(\mathbb{R}\)上。最重要的是，可以证明，所有\(\mathbb{R}\)中元素构成的柯西数列都收敛到\(\mathbb{R}\)中。这说明\(\mathbb{R}\)是一个有序完备数域\[9\]。

实数\(\mathbb{R}\)作为\(\mathbb{Q}\)的完备化是建立在绝对值度量上的，这种度量与日常现实中的欧几里德式的“距离”概念吻合，符合直观经验。实数也因此成为描述现实世界的有力数学工具。\(p\)进数与实数的不同在于，它是将绝对值度量改为另一种非直观的度量对有理数进行完备化後得到的完备数域。

## 构造

### 分析方法

在[有理数](../Page/有理数.md "wikilink")\(\mathbb{Q}\)上引入绝对值度量，与此对应的[柯西序列的](../Page/柯西序列.md "wikilink")[等价类构成了完备数域](../Page/等价类.md "wikilink")\(\mathbb{R}\)。\(p\)进数则是在\(\mathbb{Q}\)上引入不同的度量后进行完备化得到的完备数域。

给定[素数](../Page/素数.md "wikilink")\(p\)。对任意\(x \in \mathbb{Q}\)，将其写为分数形式\(x = \frac{a}{b}\)，其中\(a\)和\(b\)是整数，\(b\)不等于0。根据[算术基本定理](../Page/算术基本定理.md "wikilink")，每个整数都可以唯一分解为素因数的乘积。考察\(p\)在\(a\)和\(b\)的素因数分解中的次数\(\operatorname{ord}_p(a)\)和\(\operatorname{ord}_p(b)\)，定义\(p\)进[赋值](https://zh.wikipedia.org/wiki/P进赋值 "wikilink")：

\[\nu_p (x) = \operatorname{ord}_p(a) - \operatorname{ord}_p(b).\]
同时约定\(\nu_p (0) =+\infty\)。例如\(p = 5\)，\(x = \frac{63}{550}\)，则

\[\nu_p (x) = \operatorname{ord}_p(63) - \operatorname{ord}_p(550) = 0 - 2 = -2.\]
在此基础上，可以定义度量映射以及其对应诱导的[范数](../Page/范数.md "wikilink")：

\[\operatorname{d}_p (x, y) = p^{-\nu_p (x - y)}, \quad |x|_p = p^{-\nu_p (x)}.\]
例如

\[\operatorname{d}_5 (\frac{64}{550}, \frac{1}{550}) = 5^{-\nu_5 (\frac{63}{550})} = 5^{2}, \quad \left|\frac{63}{550}\right|_5 = 5^{-\nu_5 (\frac{63}{550})} = 5^{2}.\]

可以验证映射\(\operatorname{d}_p\)满足度量所需的一切性质。因此，用与构造实数相同的手段，可以构造一个完备有序数域，记作\(\mathbb{Q}_p\)。

由[奥斯特洛夫斯基定理](../Page/奥斯特洛夫斯基定理.md "wikilink")，\(\mathbb{Q}\)的所有绝对值[赋值或者等价于绝对值](https://zh.wikipedia.org/wiki/赋值 "wikilink")，或为平凡赋值，或等价于某素数\(p\)的\(p\)进赋值。从而\(\mathbb{Q}\)（关于某赋值）的[完备化也只有这些](https://zh.wikipedia.org/wiki/完备化 "wikilink")。

### 代数方法

用代数的方法，首先定义\(p\)进整数环\(\mathbb{Z}_p\)，然后构造其[分式域](https://zh.wikipedia.org/wiki/分式域 "wikilink")，也可以得到\(p\)进数域。

首先考虑由整数模\(p^n\)的[同余类构成的环](https://zh.wikipedia.org/wiki/同餘#同餘類 "wikilink")：\(\mathbb{Z}/p^n\mathbb{Z}\)。\(\mathbb{Z}/p^n\mathbb{Z}\)与\(\mathbb{Z}/p^{n-1}\mathbb{Z}\)之间存在自然的[环同态](../Page/环同态.md "wikilink")：

\[\varphi_n :
\begin{cases}
\mathbb{Z}/p^n\mathbb{Z} \longrightarrow \mathbb{Z}/p^{n-1}\mathbb{Z} \\
x  \; \; \;\mapsto \; \; x \mod{p^{n-1}}
\end{cases}\]\[10\] 考察逆向链：

\[\cdots \; \xrightarrow{\varphi_{n+1}} \; \mathbb{Z}/p^n\mathbb{Z} \; \xrightarrow{\varphi_n} \; \mathbb{Z}/p^{n-1}\mathbb{Z} \; \xrightarrow{\varphi_{n-1}} \; \cdots  \; \xrightarrow{\varphi_3} \; \mathbb{Z}/p^2\mathbb{Z} \; \xrightarrow{\varphi_2} \; \mathbb{Z}/p\mathbb{Z}\]
定义\(\mathbb{Z}_p\)为其[逆向极限](../Page/极限_\(范畴论\).md "wikilink")：\(\mathbb{Z}_p = \; \lim_{\longleftarrow} \left( \mathbb{Z}/p^n\mathbb{Z} , \varphi_n \right)\)。
也就是说，每个\(p\)进整数\(a \in \mathbb{Z}_p\)被定义为以下的序列：

\[a = \{a_1 , a_2, \cdots , a_n , \cdots \; \}\]
其中\(a_n \equiv a_{n-1} \pmod{p^{n-1}}\)。可以证明，这样定义的\(p\)进整数环\(\mathbb{Z}_p\)与拓扑方法构造的\(\mathbb{Q}_p\)中通过\(\mathbb{Z}_p = \{ x \; ; \; |x|_p \leqslant 1 \}\)定义的\(p\)进整数环是[同构的](../Page/同构.md "wikilink")。

在以上的定义下，整数\(\mathbb{Z}\)可以自然地嵌入\(\mathbb{Z}_p\)中，每个整数都可以依照它在\(\mathbb{Z}/p^n\mathbb{Z}\)的同余类，唯一表示为一个\(p\)进整数。例如在\(p=3\)时，整数3629在\(\mathbb{Z}_3\)中对应的3进整数可以表示为：

\[3629_3 = \{2 , 2 , 11 , 65, 227, 713 , 1442 , 3629 , 3629 , 3629 , \cdots \; \}.\]
从上面的例子可以看到，对于正整数，\(a_n\)将收敛于\(a\)本身，对于负整数情况则复杂一些，例如，

\[-1_3 = \{2 , 8 , 26, 80, 242, \cdots \; \}.\]
由于环同态\(\varphi_n\)良好地保持了环的结构，所以这种结构自然地延伸到逆向极限\(\mathbb{Z}_p\)中。直观上可以理解为，\(\mathbb{Z}_p\)是\(\mathbb{Z}/p^n\mathbb{Z}\)结构的极限。\(n\)越大，\(\mathbb{Z}/p^n\mathbb{Z}\)和\(\mathbb{Z}_p\)就越“相似”。

\(p\)进整数环\(\mathbb{Z}_p\)中的[单位元显然是](https://zh.wikipedia.org/wiki/单位元 "wikilink")\(1_p = \{1 , 1, \cdots , 1 , \cdots \; \},\)
一个\(p\)进整数\(a \in \mathbb{Z}_p =  \{a_1 , a_2, \cdots , a_n , \cdots \; \}\)是（乘法）[可逆元](../Page/可逆元.md "wikilink")[当且仅当](../Page/当且仅当.md "wikilink")\(a_1\)是\(\mathbb{Z}/p\mathbb{Z}\)中的可逆元。非可逆元的元素都可以表达为：

\[a = p^{v_p(a)} u = \{p^{v_p(a)} u_1 , p^{v_p(a)} u_2, \cdots , p^{v_p(a)} u_n , \cdots \; \},\]
其中\(u = \{u_1 ,u_2, \cdots ,  u_n , \cdots \; \}\)是\(\mathbb{Z}_p\)中的可逆元，\(v_p(a)\)称为\(p\)进整数\(a\)的（代数）赋值。可以看出，这个赋值和拓扑构造时的赋值是等价的。可以证明\(\mathbb{Z}_p\)是[特征为](https://zh.wikipedia.org/wiki/特征_\(代数\) "wikilink")0的[整环](../Page/整环.md "wikilink")。构造\(\mathbb{Z}_p\)的[分式域](https://zh.wikipedia.org/wiki/分式域 "wikilink")，可以证明其分式域（在恰当的拓扑同构的意义上\[11\]）等于前面用拓扑方法构造的\(\mathbb{Q}_p\)。

## 展开式与记数法

每个\(p\)进数\(x \in \mathbb{Q}_p\)都有唯一的展开式：

\[x = \frac{\alpha_{-k}}{p^k} + \frac{\alpha_{-k+1}}{p^{k-1}} + \cdots + \alpha_0 + \alpha_1 p + \cdots + \alpha_i p^i + \cdots = \sum_{i=-k}^{\infty} \alpha_i p^i.\]

其中\(k\)就是\(x\)的\(p\)进赋值\(\nu_p(x)\)，\(a_i \in \{ 0, 1, \cdots , p -1 \}\)，\(a_{-k} \neq 0\)。这一展开式在度量\(\operatorname{d}_p\)下[收敛到](https://zh.wikipedia.org/wiki/收敛 "wikilink")\(x\)。代数构造中\(p\)进整数的数列表示的第\(N\)项，等于其展开式前\(N\)项的部分和。设\(p\)进整数\(x\)的数列表示为\(\{ a_1, a_2, \cdots , a_n , \cdots \}\)，其展开式为\(\sum_{i=0}^{\infty} \alpha_i p^i\)，则

\[a_N = \sum_{i=0}^{N-1} \alpha_i p^i.\]
这说明\(p\)进整数数列表示中，随着项数增大，数列的项在\(\operatorname{d}_p\)下收敛到\(p\)进整数自身。

仿照有理数中\(p\)[进制的](https://zh.wikipedia.org/wiki/进制 "wikilink")[记数法](https://zh.wikipedia.org/wiki/记数法 "wikilink")，可以将\(p\)进数\(x\)记为：

\[x = \cdots  \alpha_i \alpha_{i-1} \cdots \alpha_1 \alpha_0 . \alpha_{-1} \cdots \alpha_{-k+1} \alpha_{-k}\]，
称为\(p\)进数的\(p\)进记法。

按\(\operatorname{d}_p\)的定义，\(x\)的“大小”（范数）为\(p^k\)。也就是说，一个\(p\)进数小数点后位数越多则越大。这个性质与实数正好相反。

### 例子

从代数构造方法中可知，整数\(\mathbb{Z}\)可以自然地嵌入\(\mathbb{Z}_p\)中，因此非负整数在\(\mathbb{Q}_p\)中表现为有限位数的\(p\)进整数。其\(p\)进记法和\(p\)进制记数法雷同。例如当\(p=5\)时，自然数\(438\)记为：\(3223_5\)。负整数和分母不为\(p\)的正整数次幂的分数在\(p\)进记法中则表现为向左侧延伸的无限循环。例如\(\frac17\)的\(p\)进记法为：

\[\frac17 = \dots 2412032412033_5 = \dot{2}4120\dot{3}3_5 \;\]。 计算方法如下：

\[\frac{5^3 - 6}{7} = 32_5 \; , \quad \frac{5^9 - 6}{7} = 32412032_5 \; , \quad \frac{5^{15} - 6}{7} = 32412032412032_5 \; , \; \cdots\]

\[\Rightarrow -\frac{6}{7} = \lim_{k\to +\infty} -\frac{6}{7} + \frac{5^{6k+3}}{7} = \dots 32412032412032_5 \; . \quad \left( \left| \frac{5^{6k+3}}{7} \right|_5 = \frac{1}{5^{6k+3}} \; \xrightarrow{k\to +\infty} \; 0 \; . \right)\]

\[\Rightarrow \frac{1}{7} = -\frac{6}{7} + 1 = \dots 2412032412033_5 = \dot{2}4120\dot{3}3_5 \;\]。
如果有理数\(x\)的分子或分母里含有\(p\)的幂次，则可以仿照\(p\)进制记数法的做法，先将其提出作为因数，写成\(x = p^k \frac{a}{b}\)的形式，将\(\frac{a}{b}\)表达为\(p\)进记法，然后移动小数点得到\(x\)的\(p\)进记法。例如要求\(\frac{1}{175}\)的\(p\)进记法，可以先将\(\frac{1}{175}\)表示为\(\frac{1}{175} = 5^{-2} \frac17\)，写出\(\frac{1}{7}\)的\(p\)进记法後，将小数点向左移动两位得到：

\[\frac{1}{175} = \dot{3}2412\dot{0}.33_5\]
因此，分母为\(p\)的正整数次幂的分数在\(p\)进数中表现为有限小数。

## 基本性质

\(\mathbb{Q}_p\)具有许多与\(\mathbb{R}\)不同的特性，其中某些可能违反直观直觉。举例来说，\(\mathbb{Q}_5\)中不存在平方等于7的数（等价于实数中的\(\sqrt{7}\)），但存在平方等于-1的数（等价于复数中的[虚数单位](https://zh.wikipedia.org/wiki/虚数单位 "wikilink")\(i\)）。一般来说，-1在\(\mathbb{Q}_p\)中有[平方根](../Page/平方根.md "wikilink")，当且仅当\(p\)[除以](../Page/带余除法.md "wikilink")4余1。对不相同的质数\(p\)、\(q\)，\(\mathbb{Q}_p\)与\(\mathbb{Q}_q\)不同构，并且它们的交集只有\(\mathbb{Q}\)。每一个\(\mathbb{Q}_p\)中的元素个数都是[不可数的](https://zh.wikipedia.org/wiki/可数集 "wikilink")\[12\]。

### 拓扑性质

\(\mathbb{Q}_p\)上的范数\(| \cdot |_p\)是一个[超度量的范数](https://zh.wikipedia.org/wiki/超度量 "wikilink")。它不仅满足[三角不等式](../Page/三角不等式.md "wikilink")，而且满足更强的关系：

\[| x + y |_p \leqslant \max \{| x|_p , | y |_p\}.\]
这说明，如果将\(\mathbb{Q}_p\)想象成一个几何空间，那么其中的三角形的一边长度总小于等于另外两边中较长者，也就是说所有的三角形都是锐角等腰三角形。这与实际中的欧式几何空间完全不同。由此\(\mathbb{Q}_p\)与\(\mathbb{R}\)具有截然不同的拓扑性质。

  - 在\(\mathbb{Q}_p\)中，一个数列\((x_n)_{n\in\mathbb{N}}\)收敛当且仅当\(x_{n+1} - x_n\)趋于0。一个[无穷级数](https://zh.wikipedia.org/wiki/无穷级数 "wikilink")\(\scriptstyle \sum_{n\in\mathbb{N}}\)\(u_n\)收敛当且仅当\(u_n\)趋于0。
  - 考虑\(\mathbb{Q}_p\)中的一个“球”：\(B_{r}(x_0) = \{ x \in \mathbb{Q}_p \; ; \; |x - x_0|_p \leqslant r\}\)。这个球即是[开集](../Page/开集.md "wikilink")，也是[闭集](../Page/闭集.md "wikilink")。这个球中每一个点，都是球的球心。两个球之间或者完全不相交，或者一个完全在另一个里面。
  - \(\mathbb{Q}_p\)上的拓扑是完全不[连通的](../Page/连通空间.md "wikilink")[豪斯多夫空间](../Page/豪斯多夫空间.md "wikilink")：设有元素\(x \in \mathbb{Q}_p\)，则包含\(x\)的[连通单元只有](https://zh.wikipedia.org/wiki/连通单元 "wikilink")\(\{ x \}\).
  - \(\mathbb{Q}_p\)是由\(\mathbb{Q}\)完备化而得，因此\(\mathbb{Q}\)在\(\mathbb{Q}_p\)中[稠密](../Page/稠密集.md "wikilink")。不仅如此，任意给定有限个质数\(p_1, p_2 , \cdots , p_k\)和正有理数\(\epsilon >0\)，并在相应的\(p\)进数域中各选定一个数：\(\beta_1 \in \mathbb{Q}_{p_1} , \beta_2  \in \mathbb{Q}_{p_2}, \cdots , \beta_k \in \mathbb{Q}_{p_k}\)後，都可找到有理数\(\omega\)，它与任一个\(\beta_i \in \mathbb{Q}_{p_i} , \; \; i \in \{1,2, \cdots , k\}\)之间的距离都小于\(\epsilon\)\[13\]\[14\]。

\(p\)进整数\(\mathbb{Z}_p\)定义为所有范数不大于1的\(p\)进数：\(\mathbb{Z}_p = \{ x \; ; \; |x|_p \leqslant 1 \}\)。这说明\(\mathbb{Z}_p\)就是\(\mathbb{Q}_p\)的单位球。其“球面”为所有范数等于1的\(p\)进整数集合：\(\mathbb{Z}_p^\times = \{ x \; ; \; |x|_p = 1 \}\)，亦即\(\mathbb{Z}_p\)中所有可逆元的集合。\(\mathbb{Z}_p\)是[紧致的](https://zh.wikipedia.org/wiki/紧致 "wikilink")。所有的整数都是\(p\)进整数，整数集合\(\mathbb{Z}\)在\(\mathbb{Z}_p\)中[稠密](../Page/稠密集.md "wikilink")。

  - \(\mathbb{Q}_p\)中的任一个球\(B_{r}(x_0)\)都可以表达为\(x_0 + p^m \mathbb{Z}_p\)，其中的\(m\)是使得\(p^{-m} \leqslant r\)的最小整数。
  - \(\mathbb{Q}_p\)是[局部紧致的](https://zh.wikipedia.org/wiki/紧空间#其他形式的紧致性 "wikilink")。

### 代数性质

代数上，\(\mathbb{Q}_p\)是\(\mathbb{Z}_p\)的分式域。更准确地说，\(\mathbb{Q}_p = \mathbb{Z}_p \scriptstyle \left[\frac1p \right]\)。也即是说，对每一个\(x \in \mathbb{Q}_p\)，都存在整数\(k\)，使得\(p^kx \in\mathbb{Z}_p\)。

\(\mathbb{Z}_p\)是特征为0的[主理想](https://zh.wikipedia.org/wiki/主理想整环 "wikilink")[整环](../Page/整环.md "wikilink")。\(\mathbb{Z}_p\)的非零[理想只有](../Page/理想_\(环论\).md "wikilink")[主理想](https://zh.wikipedia.org/wiki/主理想 "wikilink")\(I_k = p^k \mathbb{Z}_p\)，其中\(k\)是任意[自然数](../Page/自然数.md "wikilink")。它唯一的极大理想是\(I_1\)。根据[同构基本定理](../Page/同构基本定理.md "wikilink")，\(\mathbb{Z}_p\)对\(I_1\)的商同构于[有限域](../Page/有限域.md "wikilink")\(\mathbb{F}_p\)。类似地，\(\mathbb{Z}_p/p^n\mathbb{Z}_p\)同构于\(\mathbb{Z}/p^n\mathbb{Z}\)。

实数域\(\mathbb{R}\)只有一个真[代数扩张](https://zh.wikipedia.org/wiki/代数扩张 "wikilink")，就是复数域\(\mathbb{C} = \mathbb{R}(i)\)。\(\mathbb{C}\)不仅是[代数闭域](https://zh.wikipedia.org/wiki/代数闭域 "wikilink")，而且是完备的。[域扩张](../Page/域扩张.md "wikilink")\(\mathbb{C}/\mathbb{R}\)的次数为2。与此不同的是，\(\mathbb{Q}_p\)的任何[有限扩张都不是代数封闭的](https://zh.wikipedia.org/wiki/有限扩张 "wikilink")，\(\mathbb{Q}_p\)的[代數閉包是](https://zh.wikipedia.org/wiki/代数閉域#代數閉包 "wikilink")\(\mathbb{Q}_p\)上的无限扩张，一般记作\(\bar{\mathbb{Q}}_p\)。将\(\mathbb{Q}_p\)上的拓扑拓延到\(\bar{\mathbb{Q}}_p\)後会发现，\(\bar{\mathbb{Q}}_p\)并不是完备的空间。使用标准方法将其完备化後，得到的空间称为**\(p\)进复数**，记作\(\mathbb{C}_p\)。\(\mathbb{C}_p\)和复数域\(\mathbb{C}\)是代数同构的，可以视为装备了另一种拓扑结构（超度量）的复数域。

如果\(p\)是[奇数](https://zh.wikipedia.org/wiki/奇数 "wikilink")，那么\(n\)次[单位根属于](../Page/单位根.md "wikilink")\(\mathbb{Q}_p\)当且仅当\(n\)整除\(p\)-1。换句话说，\(\mathbb{Q}_p\)中由单位根构成的群只有\(\mathbb{U}_{p-1}\)及其子群。\(p = 2\)时，单位根只有1和-1。

## 应用

### 数论

\(p\)進數對於同餘信息有一種獨特的編碼方法，這在[數論裏作用很大](https://zh.wikipedia.org/wiki/數論 "wikilink")。例如，困擾數學家長達三百多年的[費馬最後定理](https://zh.wikipedia.org/wiki/費馬最後定理 "wikilink")，終於在1994年由[安德魯·懷爾斯使用](../Page/安德魯·懷爾斯.md "wikilink")\(p\)進數理論證明，這是數學上的重大突破。懷爾斯因此獲得2005年度[邵逸夫獎](../Page/邵逸夫獎.md "wikilink")。

### 量子物理

\(p\)進數剛出現時，學者們最初認為這理論屬於[純數學領域](https://zh.wikipedia.org/wiki/純數學 "wikilink")，毫無任何實用價值。但1968年，两位纯数学研究者A.
Monna和F. Van Der Blij首先提出将\(p\)进数应用到物理学中。1972年，E. Beltrametti和G.
Cassinelli探讨了一种取值为\(p\)进数的状态模型。进入二十世纪八十年代後，\(p\)进数在[量子物理学中的应用愈为广泛](https://zh.wikipedia.org/wiki/量子物理学 "wikilink")。首先涌现的是\(p\)进[弦和](https://zh.wikipedia.org/wiki/弦论 "wikilink")\(p\)进[超弦模型](https://zh.wikipedia.org/wiki/超弦 "wikilink")。量子物理学家在这些模型中使用与实数拓扑性质不同的\(p\)进数，以构建出不同的[时空结构](../Page/时空.md "wikilink")，描述在[普朗克尺度下与大尺度完全不同的物理现象和行为](../Page/普朗克尺度.md "wikilink")。在普朗克尺度下，基于实数的模型无法很好的描绘出某些量子特性，而\(p\)进数域的某些性质，比如说无序性\[15\]，和普朗克尺度下的物理特质相近。

\(p\)进数量子物理学中的应用也带动了数学中对\(p\)进数的研究。例如\(p\)进弦论的研究促使数学家展开了对\(p\)进数上的[分布理论](https://zh.wikipedia.org/wiki/分布理论 "wikilink")、[微分方程及](../Page/微分方程.md "wikilink")[伪微分方程](../Page/伪微分算子.md "wikilink")（pseudodifferential
equation）、[概率论以及](https://zh.wikipedia.org/wiki/概率论 "wikilink")\(p\)进数上相应[希尔伯特空间](../Page/希尔伯特空间.md "wikilink")（装备了额外结构的\(\mathbb{C}_p\)）中的[算子](https://zh.wikipedia.org/wiki/算子理论 "wikilink")[谱理论等多方面的研究](../Page/谱定理.md "wikilink")。

### 信息编码

\(p\)进数的数列展开表示可以被用于信息的编码。因此\(p\)进数可以被用来描述很多信息处理的过程，在[认知科学](../Page/认知科学.md "wikilink")、[心理学和](../Page/心理学.md "wikilink")[社会学研究中出现](../Page/社会学.md "wikilink")。

### \(p\)进动力系统理论

[算术动力系统是二十世纪九十年代提出的数学理论](../Page/动态系统理论.md "wikilink")，整合了[动力系统及数论](../Page/动力系统.md "wikilink")。传统的离散动力系统会探讨[迭代函数在复平面或是实数中的性质](../Page/迭代函数.md "wikilink")。算术动力系统则探讨[多项式或](https://zh.wikipedia.org/wiki/多项式 "wikilink")[解析函数在整数](../Page/解析函数.md "wikilink")、有理数、\(p\)进数及几何点中的迭代特性\[16\]。\(p\)进数动力系统在[计算机科学领域中的](../Page/计算机科学.md "wikilink")[直线式程序](https://zh.wikipedia.org/wiki/直线式程序 "wikilink")（straight-line
programs）问题、[数值分析与模拟中的](https://zh.wikipedia.org/wiki/数值分析 "wikilink")[伪随机数问题](https://zh.wikipedia.org/wiki/伪随机数 "wikilink")、[密码学中的](../Page/密码学.md "wikilink")[流加密问题上都有重要作用](https://zh.wikipedia.org/wiki/流加密 "wikilink")。在计算机科学和自动机理论中，\(p\)进遍历理论可以帮助快速制造大[拉丁方](https://zh.wikipedia.org/wiki/拉丁方 "wikilink")。後者在实验设计、软件测试和通信理论中都有良多应用\[17\]。

## 参见

  - [p进数分析](https://zh.wikipedia.org/wiki/p进数分析 "wikilink")
  - [亨泽尔引理](../Page/亨泽尔引理.md "wikilink")
  - [马勒定理](https://zh.wikipedia.org/wiki/马勒定理 "wikilink")

## 注释

## 参考来源

## 外部链接

  -
  -
  - [Springer在线数学百科全书上*p*进数的资料](http://www.encyclopediaofmath.org/index.php/P-adic_number)。

[Category:域论](https://zh.wikipedia.org/wiki/Category:域论 "wikilink")
[Category:数论](https://zh.wikipedia.org/wiki/Category:数论 "wikilink")

1.

2.  此处指\(\mathbb{Q}\)对四则运算封闭等条件，具体参见[域条目中的定义](https://zh.wikipedia.org/wiki/域_\(数学\) "wikilink")。

3.  ，附录A3

4.

5.
6.
7.
8.
9.
10. 其中自变量\(x\)为\(\mathbb{Z}/p^n\mathbb{Z}\)的元素，而映射符号右侧的“\(x \mod{p^{n-1}}\)”表示一个\(\mathbb{Z}/p^{n-1}\mathbb{Z}\)中元素，其中的\(x\)指\(x\)在整数中的自然对应元素。例如当\(p = 3\)时，\(\varphi_2\)将同余类\(\bar{7}_9 \in \mathbb{Z}/3^2\mathbb{Z}\)映射到\(7 \mod{3}\)，也就是\(\bar{1}_3 \in \mathbb{Z}/3\mathbb{Z}\)。正文中为了叙述简便，使用混淆的表达方式。

11. 使用等价的赋值构造的拓扑结构。

12.

13. \(\omega\)与\(\beta_i\)间的距离小于\(\epsilon\)指的是在相应的度量\(\operatorname{d}_{p_i}\)下的距离：\(\left| \omega - \beta_i \right|_{p_i} < \epsilon\)。

14.
15. 实数中任两个数都能比较大小（有全序），而\(\mathbb{Q}_p\)上面没有全序。

16.

17. ，前言XV.