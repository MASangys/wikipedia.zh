> 本文内容由[擬譜knotting法](https://zh.wikipedia.org/wiki/擬譜knotting法)转换而来。


**擬譜knotting法**（pseudospectral knotting method）是[应用数学中標準](https://zh.wikipedia.org/wiki/应用数学 "wikilink")[擬譜最佳控制](../Page/擬譜最佳控制.md "wikilink")的強化版本。此概念是由及[法麗芭·法魯](../Page/法麗芭·法魯.md "wikilink")在2004年提出，也是[Ross–Fahroo擬譜法](../Page/Ross–Fahroo擬譜法.md "wikilink")中的一部份\[1\]。

## 定義

根據Ross及法魯（Fahroo）的定義，擬譜的knot是雙重Lobatto點\[2\]，兩種標準擬譜法可以在這個點交換資訊（例如不連續、跳躍、維度變化等）。這些資訊交換可以用來求解[最优控制中最複雜的問題](https://zh.wikipedia.org/wiki/最优控制 "wikilink")，稱為混合最佳控制問題（hybrid optimal control problems）\[3\]。

在混合最佳控制問題中，最佳控制問題和[图论](../Page/图论.md "wikilink")問題一起出現，標準的[擬譜最佳控制](../Page/擬譜最佳控制.md "wikilink")法無法處理這類的問題，不過透過擬譜knotting法，可以將圖的資訊放在雙重Lobatto點內，因此可以將混合最佳控制問題離散化，就可以用來求解。

## 應用

擬譜knotting法已應用在一些太空的問題中，例如運載火箭的上升引導，以及Aldrin Cycler利用太陽帆來推進\[4\]\[5\]。擬譜knotting法也用在擬譜最佳控制的[抗鋸齒中](https://zh.wikipedia.org/wiki/抗鋸齒 "wikilink")，也在[起停式](../Page/起停式控制.md "wikilink")（bang-bang）的[最优控制中的切換中](https://zh.wikipedia.org/wiki/最优控制 "wikilink")，記錄關鍵資訊\[6\]。

## 軟體

擬譜knotting法已實現在MATLAB optimal control軟件包內\[7\]內，也有在內。

## 相關條目

  - [勒壤得擬譜法](../Page/勒壤得擬譜法.md "wikilink")
  - [切比雪夫擬譜法](../Page/切比雪夫擬譜法.md "wikilink")
  - [Ross–Fahroo引理](../Page/Ross–Fahroo引理.md "wikilink")
  - [羅斯π引理](../Page/羅斯π引理.md "wikilink")
  - [Ross–Fahroo擬譜法](../Page/Ross–Fahroo擬譜法.md "wikilink")

## 參考資料

[Category:最佳控制](https://zh.wikipedia.org/wiki/Category:最佳控制 "wikilink") [Category:数值分析](https://zh.wikipedia.org/wiki/Category:数值分析 "wikilink") [Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")

1.  Ross, I. M. and Fahroo, F., Pseudospectral Knotting Methods for Solving Optimal Control Problems, *Journal of Guidance, Control and Dynamics,* Vol. 27, No. 3, pp. 397–405, 2004.
2.
3.  Ross, I. M. and D’Souza, C. N., A Hybrid Optimal Control Framework for Mission Planning, *Journal of Guidance, Control and Dynamics,* Vol. 28, No. 4, July–August 2005, pp. 686–697.
4.  Stevens, R. and Ross, I. M., Preliminary Design of Earth–Mars Cyclers Using Solar Sails, *Journal of Spacecraft and Rockets,* Vol. 41, No. 4, 2004.
5.  Stevens, R., Ross, I. M. and Matousek, S. E., "Earth-Mars Return Trajectories Using Solar Sails," 55th International Astronautical Congress, Vancouver, Canada, IAC-04-A.2.08, October 4–8, 2004.
6.  Gong, Q., Fahroo, F. and Ross, I. M., A Spectral Algorithm for Pseudospectral Methods in Optimal Control, *Journal of Guidance, Control and Dynamics,* Vol. 31, No. 3, pp. 460–471, 2008.
7.  [MATLAB optimal control](https://www.mathworks.com/products/connections/product_detail/product_61633.html)