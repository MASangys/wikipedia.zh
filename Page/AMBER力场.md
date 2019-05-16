**AMBER力场**是在[生物大分子的模拟计算领域有着广泛应用的一个](https://zh.wikipedia.org/wiki/生物大分子 "wikilink")[分子力场](../Page/分子力场.md "wikilink")。开发这个力场的是Peter
Kollman课题组，最初AMBER力场是专门为了计算[蛋白质和](../Page/蛋白质.md "wikilink")[核酸体系而开发的](../Page/核酸.md "wikilink")，计算其力场参数的数据均来自实验值，后来随着AMBER力场的广泛应用，包括Kollman在内的很多课题组对AMBER力场的内容不断进行丰富，逐渐开发出了一个可以用于[生物大分子](https://zh.wikipedia.org/wiki/生物大分子 "wikilink")、[有机小分子和](https://zh.wikipedia.org/wiki/有机 "wikilink")[高分子模拟计算的力场体系](../Page/高分子.md "wikilink")。但是总体来讲，AMBER力场的优势在于对生物大分子的计算，其对小分子体系的计算结果常常不能令人满意。

AMBER力场的势能函数形势较为简单，所需参数不多，计算量也比较小，这是这个力场的一大特色，但也在一定程度上限制了这个力场的扩展性。本力场用[谐振子模型计算键长伸缩能和键角弯转能](https://zh.wikipedia.org/wiki/谐振子模型 "wikilink")，用[傅立叶级数的形式来描述二面角扭转能](https://zh.wikipedia.org/wiki/傅立叶级数 "wikilink")，选用[Lennard-Jones势来模拟](https://zh.wikipedia.org/wiki/Lennard-Jones势 "wikilink")[范德华力](../Page/范德华力.md "wikilink")；用库仑公式来描述静电相互作用，其势能表达式为\[1\]：

\(V_{(r^N)}=\sum_{bonds} \frac{1}{2} k_b (l-l_0)^2 + \sum_{angles} \frac{1}{2} k_a (\theta - \theta_0)^2 + \sum_{torsions} \frac{1}{2} V_n [1+cos(n \omega- \gamma)] +\sum_{j=1} ^{N-1} \sum_{i=j+1} ^N \left\{4\epsilon_{i,j}\left[\left(\frac{\sigma_{ij}}{r_{ij}} \right)^{12} - \left(\frac{\sigma_{ij}}{r_{ij}} \right)^6 \right]+ \frac{q_iq_j}{4\pi \epsilon_0 r_ij}\right\}\)

现在有很多主流计算软件包应用了AMBER力场，其中除了Kollman课题组开发的AMBER软件之外，还有[Insight
II](https://zh.wikipedia.org/wiki/Insight_II "wikilink")、[Sybyl](https://zh.wikipedia.org/wiki/Sybyl "wikilink")、[Cerius2](https://zh.wikipedia.org/wiki/Cerius2 "wikilink")、[MOE和](https://zh.wikipedia.org/wiki/MOE "wikilink")[HyperChem等](https://zh.wikipedia.org/wiki/HyperChem "wikilink")。

## 参见

  - [计算化学](../Page/计算化学.md "wikilink")
  - [分子力场](../Page/分子力场.md "wikilink")

## 参考资料

[Category:分子力场](https://zh.wikipedia.org/wiki/Category:分子力场 "wikilink")
[Category:分子模擬軟體](https://zh.wikipedia.org/wiki/Category:分子模擬軟體 "wikilink")

1.