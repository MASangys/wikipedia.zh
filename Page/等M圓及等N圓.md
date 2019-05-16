[Nyquist_grid.svg](https://zh.wikipedia.org/wiki/File:Nyquist_grid.svg "fig:Nyquist_grid.svg")
**等M圓**及**等N圓**（M-circles and N-circles）英文也稱為是Hall
circles，是[控制理论中利用開迴路傳遞函數的](../Page/控制理论.md "wikilink")[奈奎斯特圖](https://zh.wikipedia.org/wiki/奈奎斯特圖 "wikilink")（或[尼柯尔斯图](../Page/尼柯尔斯图.md "wikilink")）來求得其[閉迴路傳遞函數數值的繪圖工具](https://zh.wikipedia.org/wiki/閉迴路傳遞函數 "wikilink")。此作法最早是由Albert
C. Hall在其控制理論的論文中提出\[1\]。

## 建構方式

考慮閉迴路線性控制系統，其開迴路[傳遞函數為](https://zh.wikipedia.org/wiki/傳遞函數 "wikilink")\(G(s)\)，反饋路徑的增益為1。其閉迴路傳遞函數為\(T(s) = \frac{G(s)}{1+G(s)}\)。

若要確認*T*(*s*)的穩定性，可以用開迴路傳遞函數*G*(*s*)的[奈奎斯特圖配合](https://zh.wikipedia.org/wiki/奈奎斯特圖 "wikilink")[奈奎斯特稳定判据來確認](../Page/奈奎斯特稳定判据.md "wikilink")。不過若只靠奈奎斯特圖，無法知道*T*(*s*)的數值。為了要在G(s)平面上得到這些資訊，Hall在G(s)平面加上了使*T*(*s*)有固定大小以及有固定相位的二組曲線。

假設一正值*M*表示固定的大小，令G(s)為*z*，滿足\(M = |T(s)| = \frac{|G(s)|}{|1+G(s)|} = \frac{|z|}{|1+z|}\)的點是那些在*G*(*s*)平面上和0的距離以及和-1的距離比例為*M*倍的點。這些符合條件的點*z*的軌跡為，在控制系統中稱為等M圖。

若假設一正值*N*表示相位角，滿足\(N = \arg \left[\frac{G(s)}{1+G(s)}\right] = \arg[G(s)] - \arg[1+G(s)] = \arg[z] - \arg[1+z]\)的點
。滿足此條件的點z的軌跡為圓弧\[2\]，在控制系統中稱為等N圖。

## 用法

[Nichols_chart.svg](https://zh.wikipedia.org/wiki/File:Nichols_chart.svg "fig:Nichols_chart.svg")
若要使用此方法，會在開迴路傳遞函數的奈奎斯特圖上重疊不同數值的等M圓及等N圓，根據傳遞函數和等M圓及等N圓的交點即知道閉迴路傳遞函數的大小及相位。

等M圓及等N圓也可以和[尼柯尔斯图一起使用](../Page/尼柯尔斯图.md "wikilink")，不過等M圓及等N圓會進行坐標轉換，其縱軸會是\(20 \log_{10}(|G(s)|)\)，橫軸是\(\arg(G(s))\)。尼柯尔斯图的好處是調整開迴路傳遞函數時，只要將曲線往上移即可。

## 相關條目

  - [奈奎斯特圖](https://zh.wikipedia.org/wiki/奈奎斯特圖 "wikilink")
  - [尼柯尔斯图](../Page/尼柯尔斯图.md "wikilink")

## 參考資料

  -
  -
[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")
[Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")
[Category:控制工程](https://zh.wikipedia.org/wiki/Category:控制工程 "wikilink")

1.
2.