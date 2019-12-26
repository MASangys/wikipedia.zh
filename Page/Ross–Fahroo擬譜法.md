**Ross–Fahroo擬譜法**（Ross–Fahroo pseudospectral methods）是由和[Fariba Fahroo導入的方法](../Page/Fariba_Fahroo.md "wikilink")，屬於[擬譜最佳控制](../Page/擬譜最佳控制.md "wikilink")中的一部份\[1\]\[2\]\[3\]\[4\]\[5\]\[6\]\[7\]\[8\]\[9\]。Ross–Fahroo擬譜法的例子有[擬譜knotting法](../Page/擬譜knotting法.md "wikilink")、[平坦擬譜法](../Page/平坦擬譜法.md "wikilink")、Legendre-Gauss-Radau擬譜法\[10\]\[11\]以及無限時域滾動最佳控制的擬譜法\[12\] \[13\]。

## 簡介

Ross–Fahroo擬譜法是以位移過的高斯擬譜節點為基礎，位移是靠線性變換或是非線性變換，高斯擬譜點是由[Gauss-Lobatto或Gauss](../Page/高斯求积.md "wikilink")-Radau分布，從[勒让德多项式](../Page/勒让德多项式.md "wikilink")或[切比雪夫多项式](../Page/切比雪夫多项式.md "wikilink")而來。Gauss-Lobatto擬譜點可以用在有限時域滾動的[最优控制問題](https://zh.wikipedia.org/wiki/最优控制 "wikilink")，而Gauss-Radau擬譜點可以用在無限時域滾動的最优控制問題\[14\]。

## 數學應用

Ross–Fahroo擬譜法可以由[Ross–Fahroo引理](../Page/Ross–Fahroo引理.md "wikilink")求得，可以應用在統御方程是[微分方程](../Page/微分方程.md "wikilink")、、[微分包含式](../Page/微分包含式.md "wikilink")的系統，及微分flat系統的。在經過簡單的定義域變換後，也可以應用在無限時域滾動的最优控制問題\[15\] \[16\]。Ross–Fahroo擬譜法也是[貝爾曼擬譜法](../Page/貝爾曼擬譜法.md "wikilink")的基礎。

## 飛航應用及獎項

TRoss–Fahroo擬譜法已用在全世界的許多實驗室及實務應用中。NASA在2006年時用Ross–Fahroo擬譜法實現了[国际空间站](../Page/国际空间站.md "wikilink")的零燃料機動（zero propellant maneuver）降落\[17\]。為了表彰這些進步的成果，[AIAA將](https://zh.wikipedia.org/wiki/美國航天航空學會 "wikilink")2010年飛行力學和控制獎（2010 Mechanics and Control of Flight Award）頒給Ross及Fahroo，原因是「改變飛行力學的現狀」。Ross也獲選為（AAS）的Fellow，原因是「在擬譜最佳控制中開創性的貢獻。」

## 特點

Ross–Fahroo擬譜法有一個重大特點，和以往強調「直接法」或「間接法」的其他方式不同。透過 Ross 及 Fahroo結合了相關定理\[18\]\[19\]\[20\]\[21\]，證明了可以設計在「直接法」及「間接法」上都等效的擬譜最佳控制法。因此設計者可以直接用他們設計的方法為「直接法」，同時自動產生一個準確的對偶問題，為「間接法」。這種革命性的作法讓Ross–Fahroo擬譜法廣為使用\[22\]。

## 軟體應用

Ross–Fahroo擬譜法已實現在MATLAB的最佳控制求解器。

## 相關條目

  - [貝爾曼擬譜法](../Page/貝爾曼擬譜法.md "wikilink")

  - ，得名自迦太基女王[狄多](../Page/狄多.md "wikilink")（Dido）

  - [羅斯π引理](../Page/羅斯π引理.md "wikilink")

  - [Ross–Fahroo引理](../Page/Ross–Fahroo引理.md "wikilink")

## 參考資料

[Category:最佳控制](https://zh.wikipedia.org/wiki/Category:最佳控制 "wikilink") [Category:数值分析](https://zh.wikipedia.org/wiki/Category:数值分析 "wikilink") [Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")

1.  N. Bedrossian, M. Karpenko, and S. Bhatt, "Overclock My Satellite: Sophisticated Algorithms Boost Satellite Performance on the Cheap", [IEEE综览](https://zh.wikipedia.org/wiki/IEEE综览 "wikilink"), November 2012.
2.
3.
4.
5.  I. M. Ross and F. Fahroo, A Pseudospectral Transformation of the Covectors of Optimal Control Systems, Proceedings of the First IFAC Symposium on System Structure and Control, Prague, Czech Republic, 29–31 August 2001.
6.  I. M. Ross and F. Fahroo, Legendre Pseudospectral Approximations of Optimal Control Problems, *Lecture Notes in Control and Information Sciences*, Vol. 295, Springer-Verlag, 2003.
7.
8.  I. M. Ross and F. Fahroo, Discrete Verification of Necessary Conditions for Switched Nonlinear Optimal Control Systems, Proceedings of the American Control Conference, Invited Paper, June 2004, Boston, MA.
9.
10. F. Fahroo and I. M. Ross, "Advances in Pseudospectral Methods for Optimal Control," *Proceedings of the AIAA Guidance, Navigation and Control Conference,* AIAA 2008-7309. [1](http://www.elissarglobal.com/wp-content/uploads/2012/04/Advances-in-Pseudospectral-Methods-for-Optimal-Control.pdf)
11.
12. F. Fahroo and I. M. Ross, Pseudospectral Methods for Infinite Horizon Nonlinear Optimal Control Problems, AIAA Guidance, Navigation and Control Conference, August 15–18, 2005, San Francisco, CA.
13.
14.
15.
16.
17. N. S. Bedrossian, S. Bhatt, W. Kang, and I. M. Ross, Zero-Propellant Maneuver Guidance, IEEE Control Systems Magazine, October 2009 (Feature Article), pp 53–73.
18.
19.
20.
21. F. Fahroo and I. M. Ross, Trajectory Optimization by Indirect Spectral Collocation Methods, Proceedings of the AIAA/AAS Astrodynamics Conference, August 2000, Denver, CO. AIAA Paper 2000–4028
22. Q. Gong, W. Kang, N. Bedrossian, F. Fahroo, P. Sekhavat and K. Bollino, Pseudospectral Optimal Control for Military and Industrial Applications, 46th IEEE Conference on Decision and Control, New Orleans, LA, pp. 4128–4142, Dec. 2007.