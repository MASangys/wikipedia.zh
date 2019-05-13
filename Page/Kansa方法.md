20世纪90年代，E. J.
Kansa将用于散乱数据处理和函数近似的[径向基函数用于处理](https://zh.wikipedia.org/wiki/径向基函数 "wikilink")[偏微分方程](../Page/偏微分方程.md "wikilink")，并提出一种强格式的配点方法。Kansa所提出的径向基函数配点方法是真正的无网格方法，具有易于编程、数学形式简单、方便掌握等优点。该方法提出后不久，被学术界称之为**Kansa方法**(Kansa
method)。

由于径向基函数是采用无需考虑维数的一维欧几里德距离作为变量，Kansa方法适用于高维的和形状复杂的问题。**Kansa方法**是一种区域型方法，不仅在边界离散使其满足边界条件，同时内部配点需要满足控制方程。

此外，还有一类以径向基函数为核函数的边界型径向基函数配点方法（Boundary-type RBF collocation
method），如、[边界节点法](../Page/边界节点法.md "wikilink")、[奇异边界法](../Page/奇异边界法.md "wikilink")、[边界粒子法](../Page/边界粒子法.md "wikilink")、和正则化无网格法（Regularized
meshless
method）等。这类方法选取的基函数（也被称为核函数），通常选取控制方程的基本解或通解，因而满足控制方程。因此只需要在边界离散满足边界条件即可。

**Kansa方法**选取的径向基函数不需要满足控制方程，因此选取基函数有更大的自由空间。多元二次曲面(Multiquadric,
MQ)函数是Kansa方法最常用的径向基函数，如果选择了恰当的形参数可以获得谱收敛的精度。

## 概况

**Kansa方法**，也称为改进MQ方法或MQ配点法，源于著名的MQ插值。该方法的有效性和高效性已经得到了许多问题的验证。此外，由于部分问题的基本解和通解不存在，如变系数问题和非线性问题，**Kansa方法**比边界型径向基函数配点方法拥有更加广阔的应用范畴。

## 算法介绍

在d维物理区域 内考虑以下边值问题，

\[Lu(X)\] =\(f(X)\) ,\(X\in \Omega,\) (1)

\[u(X)\] =\(g(X)\) ,\(X\in\partial\Omega_D,\)(2)

\[\frac{\partial u(X)}{\partial n}\]=\(h(X)\) ,
\(X\in\partial\Omega_N,\) (3)
其中*L*代表微分算子，*d*为问题的维数，\(\partial \Omega_D\)
,
\(\partial \Omega_N\)分别代表狄利克雷边界和诺伊曼边界且\(\partial \Omega_D \cup \partial \Omega_N =\partial \Omega\)。
Kansa方法通过径向基函数的线性组合来逼近待求的函数，即：

\[{{u(X)}^{*}}\]=\(\sum\limits_{i=1}^N \alpha_i\phi \left( r_i \right)\),
(4) 其中\({{\alpha }_{i}}\)为待求参数，\(\phi \left( r_i \right)\)代表径向基函数，如MQ函数。
为确保所求函数的唯一性，在上式右端添加一组多项式：

\[{{u(X)}^{*}}\]=\(\sum\limits_{i=1}^N \alpha_i\phi \left( r_i \right)\)+\(\sum\limits_{k=1}^M \alpha_{k+N}\gamma_k\left(X\right)\),
(5) 其中 \({{\gamma }_{k}}(X)\)
为多项式。径向基插值形式(4)和(5)都经常应用在计算中。(4)式的形式简单易于掌握且在大多数情况下都能获取较好的计算结果，因此在工程领域使用广泛；(5)式的形式严谨且理论基础坚实，所以数学工作者偏于采用后者。
将(4)式或(5)式代入方程组(1)-(3)可得以下线性方程组：

\[A\alpha=b\], (6) 其中，

  -
    \(\mathbf{A}=\left(\begin{matrix} L({\phi }) & L({\gamma})\\{\phi } &{\gamma}\\ \frac{\partial {\phi }}{\partial n}&\frac{\partial {\gamma}}{\partial n}\\ {\gamma}&0\\ \end{matrix} \right)\),
    \(\mathbf{b}=\left(\begin{matrix} f\\g\\h\\0\\  \end{matrix} \right)\),\({\phi }\)=\(\phi\left( x_i,x_j\right)\),\({\gamma }\)=\(\gamma_k\left(X_i\right)\).
    (7)

通过求解以上线性方程组，可求解待定参数\({{\alpha }_{i}}\)，根据(4)式或(5)式即可得到待求函数。

## 历史和最近发展

偏微分方程的数值求解通常采用有限差分法，有限单元法或边界单元法。有限差分法通常需要规则的网格系统，难以处理不规则区域问题。比之有限差分法，有限单元法能适于处理更复杂的形状，但网格的划分及其再划分在计算时依旧不可避免。边界单元法在处理一些工程问题效果显著，比如反问题、无限域问题和薄壁结构问题。然而，边界单元法受限于控制方程的基本解难以确定，使其应用范畴受到约束。

近来几十年，由于标准有限单元法和边界单元法在处理高维、移动边界和复杂边界等问题需要耗费庞大的计算成本，无网格或无单元方法受到极多关注。Kansa方法\[1\]\[2\]是一种真正的无网格方法，不需要划分网格和单元而是通过径向基函数（如MQ函数）在配置的节点处满足相关条件即可。

虽然经过诸多学者的研究，但依旧缺乏对Kansa方法严谨的数学证明\[3\]。另外，混合边界会破坏插值矩阵的对称性。文献\[4\]\[5\]提及的对称埃尔米特径向基函数插值方案(Hermite
RBF collocation
scheme)其可解性具有可靠的数值分析。其中，Kansa方法和对称埃尔米特方法都存在一个共同的问题，即相邻边界节点的数值解精度比内部节点低1-2个数量级。边界偏微分方程配点(The
PDE collocation on the boundary,
PDECB))方案可以消除这一缺陷。然而，这一方案缺乏数学上的理论支持且需要在边界附近的区域内或区域外设置一系列节点，因此在处理复杂区域或多连通问题时非常复杂。随后提出的一种相似处理方式\[6\]，在相同的边界节点同时满足控制方程和边界条件，而其缺陷在于产生的插值矩阵是不对称的且方法本身同样缺乏明确的理论基础。通过使用第二格林公式，改进的Kansa方法\[7\]\[8\]可以弥补以上缺陷。

对于MQ函数，其插值误差取决于自身的形状参数，如何选取恰当的形状参数和关于MQ径向基函数的一些数学理论可以参见以下文献
\[9\]\[10\]\[11\]\[12\]。

Kansa方法广泛应用于计算科学。\[13\]中Kansa方法用于求解椭圆型、双曲型和抛物型三类偏微分方程。Kansa近来也应用于求解各类[常微分和](https://zh.wikipedia.org/wiki/常微分 "wikilink")[偏微分方程](../Page/偏微分方程.md "wikilink")，包括两相和三相混合模型的组织工程问题\[14\]\[15\]，冲击波下的一维非线性Burger方程\[16\]，潮汐和海流模拟中的浅水方程
\[17\]，热传导方程\[18\]，自由边界问题\[19\]，分数阶扩散方程\[20\]。

## 其他

  - [径向基函数](https://zh.wikipedia.org/wiki/径向基函数 "wikilink")

  -
  - [边界节点法](../Page/边界节点法.md "wikilink")

  - [边界粒子法](../Page/边界粒子法.md "wikilink")

  - [奇异边界法](../Page/奇异边界法.md "wikilink")

## 相关网站

  - [Modified Kansa
    method](https://web.archive.org/web/20121128025959/http://em.hhu.edu.cn/chenwen/html/MKM.htm)

## 参考文献

[Category:数值微分方程](https://zh.wikipedia.org/wiki/Category:数值微分方程 "wikilink")

1.  E. J. Kansa, "Multiquadrics—A scattered data approximation scheme
    with applications to computational fluid-dynamics—II solutions to
    parabolic, hyperbolic and elliptic partial differential equations,"
    Computers & Mathematics with Applications, vol. 19, pp. 147-161,
    1990.

2.  J. Li, et al., "A comparison of efficiency and error convergence of
    multiquadric collocation method and finite element method,"
    Engineering Analysis with Boundary Elements, vol. 27, pp. 251-257,
    2003.

3.  Y. C. Hon and R. Schaback, "On unsymmetric collocation by radial
    basis functions," Applied Mathematics and Computation, vol. 119, pp.
    177-186, 2001.

4.  C. Franke and R. Schaback, "Solving partial differential equations
    by collocation using radial basis functions," Applied Mathematics
    and Computation, vol. 93, pp. 73-82, 1998.

5.  G. E. Fasshauer, "Solving Partial Differential Equations by
    Collocation," 1996, p. 1.

6.  A. I. Fedoseyev, et al., "Improved multiquadric method for elliptic
    partial differential equations via PDE collocation on the boundary,"
    Computers & Mathematics with Applications, vol. 43, pp. 439-455,
    2002.

7.  W. Chen, "New RBF Collocation Methods and Kernel RBF with
    Applications: Meshfree Methods for Partial Differential Equations."
    vol. 26, M. Griebel and M. A. Schweitzer, Eds., ed: Springer Berlin
    Heidelberg, 2002, pp. 75-86.

8.  W. Chen and M. Tanaka, "New insights in boundary-only and
    domain-type RBF methods," Arxiv preprint cs/0207017, 2002.

9.  R. L. Hardy, "Multiquadric Equations of Topography and Other
    Irregular Surfaces," J. Geophys. Res., vol. 76, pp. 1905-1915, 1971.

10. R. Franke, "Scattered Data Interpolation: Tests of Some Method,"
    Mathematics of Computation, vol. 38, pp. 181-200, 1982.

11. E. J. Kansa and R. E. Carlson, "Improved accuracy of multiquadric
    interpolation using variable shape parameters," Computers &
    Mathematics with Applications, vol. 24, pp. 99-120, 1992.

12. C. A.H.-D, "Multiquadric and its shape parameter-A numerical
    investigation of error estimate, condition number, and round-off
    error by arbitrary precision computation," Engineering Analysis with
    Boundary Elements, vol. 36, pp. 220-239, 2012.

13.
14. Y. C. Hon, et al., "Multiquadric method for the numerical solution
    of a biphasic mixture model," Applied Mathematics and Computation,
    vol. 88, pp. 153-175, 1997.

15. Y. C. Hon, et al., "A new formulation and computation of the
    triphasic model for mechano-electrochemical mixtures," Computational
    Mechanics, vol. 24, pp. 155-165, 1999.

16. Y. C. Hon and X. Z. Mao, "An efficient numerical scheme for Burgers'
    equation," Applied Mathematics and Computation, vol. 95, pp. 37-50,
    1998.

17. Y.-C. Hon, et al., "Multiquadric Solution for Shallow Water
    Equations," Journal of Hydraulic Engineering, vol. 125, pp. 524-533,
    1999.

18. M. Zerroukat, et al., "A numerical method for heat transfer problems
    using collocation and radial basis functions," International journal
    for numerical methods in engineering, vol. 42, pp. 1263-1278, 1998.

19. J. Perko, et al., "A polygon-free numerical solution of steady
    natural convection in solid-liquid systems," Computational Modelling
    of Moving and Free Boundary Problems, pp. 111-122, 2001.

20. W. Chen, et al., "Fractional diffusion equations by the Kansa
    method," Computers & Mathematics with Applications, vol. 59, pp.
    1614-1620, 2010.