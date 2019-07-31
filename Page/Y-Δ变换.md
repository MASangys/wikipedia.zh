[Wye-delta.svg](https://zh.wikipedia.org/wiki/File:Wye-delta.svg "fig:Wye-delta.svg") **Y-Δ变换**或稱為**星角變換**，是一种把[Y形电路转换成等效的](https://zh.wikipedia.org/wiki/Y形电路 "wikilink")[Δ形电路](https://zh.wikipedia.org/wiki/Δ形电路 "wikilink")，或把Δ形电路转换成等效的Y形电路的方法。它可以用来简化电路的分析。这一变换理论是由於1899年发表。\[1\]

## 基本的Y-Δ变换

设R<sub>1</sub>、R<sub>2</sub>、和R<sub>3</sub>分别是Y形电路中从N<sub>1</sub>、N<sub>2</sub>、N<sub>3</sub>到中点的[阻抗](../Page/阻抗.md "wikilink")，R<sub>a</sub>、R<sub>b</sub>、R<sub>c</sub>分别是Δ形电路中N<sub>1</sub>与N<sub>3</sub>、N<sub>1</sub>与N<sub>2</sub>、N<sub>2</sub>与N<sub>3</sub>之间的阻抗。希望把Y形电路换成Δ形电路，或把Δ形电路换成Y形电路后，任意两个端点之间的阻抗仍然与原来的电路相等。

### 把Δ形电路变换成Y形电路

变换的基本思路是用\(R'\)和\(R''\)计算Y形电路端点的阻抗\(R_y\)，其中\(R'\)和\(R''\)是Δ形电路中对应节点到邻接节点间的阻抗：

\[R_y = \frac{R'R''}{\sum R_\Delta}\]

其中\(R_\Delta\)是Δ形电路的阻抗之和。具体公式如下：

\[R_1 = \frac{R_aR_b}{R_a + R_b + R_c}\]

\[R_2 = \frac{R_bR_c}{R_a + R_b + R_c}\]

\[R_3 = \frac{R_aR_c}{R_a + R_b + R_c}\] 或者可以简记为 Y形电阻 = Δ形连接相邻电阻的乘积/Δ形连接电阻之和

### 把Y形电路变换成Δ形电路

变换的基本思路是计算Δ形电路的\(R_\Delta\)：

\[R_\Delta = \frac{R_P}{R_\mathrm{opposite}}\]

其中\(R_P = R_1R_2+R_2R_3+R_3R_1\)是Y形电路中的阻抗两两相乘之和，\(R_\mathrm{opposite}\)是\(R_\Delta\)所在支路对侧的端点在Y形电路中对应端点的阻抗。每一支路的阻抗计算公式为：

\[R_a = \frac{R_1R_2 + R_2R_3 + R_3R_1}{R_2}\]

\[R_b = \frac{R_1R_2 + R_2R_3 + R_3R_1}{R_3}\]

\[R_c = \frac{R_1R_2 + R_2R_3 + R_3R_1}{R_1}\] 或者可以简记为 Δ形连接电导 = Y形连接相邻电导的乘积/Y形连接电导之和

## 图论

在[图论](../Page/图论.md "wikilink")中，Y-Δ变换表示将一个图的Y形[子图用等价的Δ形子图代替](https://zh.wikipedia.org/wiki/子图 "wikilink")。变换後的边数不变，但[顶点数和](../Page/顶点_\(图论\).md "wikilink")[回路数会变化](https://zh.wikipedia.org/wiki/回路_\(图论\) "wikilink")。如果这两个图可以通过一系列的Y-Δ变换互相变换得到，那么就可以成这两个图**Y-Δ等价**。例如，[佩特森圖就是一个Y](https://zh.wikipedia.org/wiki/佩特森圖 "wikilink")-Δ[等价类](../Page/等价类.md "wikilink")。

## 推导

### Δ形负载到Y形负载的变换方程

要将Δ形负载{\(R_a, R_b, R_c\)}变换成Y形负载{\(R_1,R_2,R_3\)}，需要比较二者对应节点的阻抗。要计算两种接法的阻抗，需要将电路中的一个节点断开。

Δ形电路中*N*<sub>3</sub>断开後，*N*<sub>1</sub>与*N*<sub>2</sub>间的阻抗为

\[\begin{align}
R_\Delta(N_1, N_2) &= R_b \parallel (R_a+R_c) \\[8pt]
&= \frac{1}{\frac{1}{R_b}+\frac{1}{R_a+R_c}}    \\[8pt]
&= \frac{R_b(R_a+R_c)}{R_a+R_b+R_c}.
\end{align}\]

将{\(R_a, R_b, R_c\)}之和用\(R_T\)表示以简化方程：

\[R_T = R_a + R_b + R_c\]

得到

\[R_\Delta(N_1, N_2) = \frac{R_b(R_a+R_c)}{R_T}\]

Y形电路中N<sub>1</sub>与<sub>2</sub>的对应阻抗为

\[R_Y(N_1, N_2) = R_1 + R_2\]

由以上两式得到：

\[R_1+R_2 = \frac{R_b(R_a+R_c)}{R_T}\]   (1)

同理，对於\(R(N_2,N_3)\)与\(R(N_1,N_3)\)，也分别有

\[R_2+R_3 = \frac{R_c(R_a+R_b)}{R_T}\]   (2)

\[R_1+R_3 = \frac{R_a(R_b+R_c)}{R_T}.\]   (3)

由此，{\(R_1,R_2,R_3\)}的值可以由以上式子的线性组合（相加或相减）求出。

例如，将式(1)和式(3)相加，然後减去式(2)会得到

\[R_1+R_2+R_1+R_3-R_2-R_3 =
  \frac{R_b(R_a+R_c)}{R_T}
+ \frac{R_a(R_b+R_c)}{R_T}
- \frac{R_c(R_a+R_b)}{R_T}\]

\[2R_1 = \frac{2R_bR_a}{R_T}\]

於是

\[R_1 = \frac{R_bR_a}{R_T}.\]

其中 \(R_T = R_a + R_b + R_c\)

求出所有的阻抗值如下：

\[R_1 = \frac{R_bR_a}{R_T}\] (4)

\[R_2 = \frac{R_bR_c}{R_T}\] (5)

\[R_3 = \frac{R_aR_c}{R_T}\] (6)

### Y形负载到Δ形负载的变换方程

令

\[R_T = R_a+R_b+R_c\].

则Δ形电路到Y形电路的变换方程变为

\[R_1 =  \frac{R_aR_b}{R_T}\]   (1)

\[R_2 =  \frac{R_bR_c}{R_T}\]   (2)

\[R_3 =  \frac{R_aR_c}{R_T}.\]   (3)

将以上式子两两相乘得到

\[R_1R_2 = \frac{R_aR_b^2R_c}{R_T^2}\]   (4)

\[R_1R_3 = \frac{R_a^2R_bR_c}{R_T^2}\]   (5)

\[R_2R_3 = \frac{R_aR_bR_c^2}{R_T^2}\]   (6)

上式之和为

\[R_1R_2 + R_1R_3 + R_2R_3 = \frac{R_aR_b^2R_c + R_a^2R_bR_c + R_aR_bR_c^2}{R_T^2}\]   (7)

将右侧式子中的公因式\(R_aR_bR_c\)提出，约去分子中的\(R_T\)和分母中的一个\(R_T\)後得到

\[R_1R_2 + R_1R_3 + R_2R_3 = \frac{(R_aR_bR_c)(R_a+R_b+R_c)}{R_T^2}\]

\[R_1R_2 + R_1R_3 + R_2R_3 = \frac{R_aR_bR_c}{R_T}\] (8)

注意式(8)和式{(1),(2),(3)}的相似性，

将式(8)除以式(1)得到

\[\frac{R_1R_2 + R_1R_3 + R_2R_3}{R_1} = \frac{R_aR_bR_c}{R_T}\frac{R_T}{R_aR_b},\]

\[\frac{R_1R_2 + R_1R_3 + R_2R_3}{R_1} = R_c,\]

得到\(R_c\)的表达式。同理，将式(8)除以\(R_2\)或\(R_3\)也能得到相应的表达式。

## 参考文献

  - William Stevenson，“Elements of Power System Analysis 3rd ed.”，McGraw Hill, New York, 1975, ISBN 0-07-061285-4

[Category:電力](https://zh.wikipedia.org/wiki/Category:電力 "wikilink") [Category:电路定理](https://zh.wikipedia.org/wiki/Category:电路定理 "wikilink") [Category:電力電路](https://zh.wikipedia.org/wiki/Category:電力電路 "wikilink")

1.  A.E. Kennelly, *Equivalence of triangles and stars in conducting networks*, Electrical World and Engineer, vol. 34, pp. 413-414, 1899.