**H-infinity迴路成形**（H-infinity loop-shaping）是現代[控制理论](../Page/控制理论.md "wikilink")中的一種設計方法，結合了傳統的控制分析方式（例如[波德靈敏度積分](../Page/波德靈敏度積分.md "wikilink")）及[H-infinity最佳化技術](https://zh.wikipedia.org/wiki/H_infinity "wikilink")，目的是讓控制器的穩定性及性能都維持在良好的水準，不過實際上的受控系統和設計時理想系統的誤差需要在一定範圍內。基本上，控制系統的設計者透過在[頻域](../Page/頻域.md "wikilink")上受控系統[傳遞函數上不同頻段的加權來描述理想的系統響應以及雜訊抑制能力](https://zh.wikipedia.org/wiki/傳遞函數 "wikilink")。所得的迴路成形會再經過最佳化進行「強健處理」（robustified）。強健處理在高頻及低頻的影響不大，不過在單位增益附近的響應會再作調整，讓系統的穩定[相位裕度](../Page/相位裕度.md "wikilink")可以達到最大值。H-infinity迴路成形可以用在[多重輸入多重輸出](https://zh.wikipedia.org/wiki/多重輸入多重輸出 "wikilink")（MIMO）系統。

H-infinity迴路成形可以用商用軟體達成\[1\]。

H-infinity迴路成形曾由工業界多次提出。R. Hyde、K. Glover和G. T. Shanks在1995年曾發表論文\[2\]描述成功的將此技術用在VSTOL飛行器上。D. J. Auger、S. Crawshaw和S. L. Hall在2008年發表另一篇論文\[3\]提出另一個應用在可操縱的海洋雷達跟踪儀上，並且提出此技術有以下的好處：

  - 容易應用：有商用軟體處理複雜的數學問題。
  - 容易實現：可以用標準的傳遞函數及[狀態空間法表示](https://zh.wikipedia.org/wiki/狀態空間 "wikilink")。
  - 立即可用：不需針對每個架設的設備進行重新的調適。

## 相關條目

  - [控制理论](../Page/控制理论.md "wikilink")
  - [H infinity](https://zh.wikipedia.org/wiki/H_infinity "wikilink")
  - [敏感度 (控制系統)](../Page/敏感度_\(控制系統\).md "wikilink")

## 參考資料

## 延伸閱讀

  - Auger, D. J., Crawshaw, S., and Hall, S. L. (2008). Robust H-infinity Control of a Steerable Marine Radar Tracker. In *Proceedings of the UKACC International Conference on Control 2008*. Manchester: UKACC.
  - Chiang, R., Safonov, M. G., Balas, G., and Packard, A. (2007). *Robust Control Toolbox*, 3rd ed. Natick, MA: The Mathworks, Inc.
  - Glad, T. and Ljung, L. (2000). *Control Theory: Multivariable and Nonlinear Methods*. London: Taylor & Francis.
  - Hyde, R.A., Glover, K. and Shanks, G. T. (1995). VSTOL first flight of an H-infinity control law. *Computing and Control Engineering Journal*, 6(1):11–16.
  - McFarlane, D. C. and Glover, K. (1989). *Robust Controller Design Using Normalized Coprime Factor Plant Descriptions (Lecture Notes in Control and Information Sciences)*, 1st ed. New York: Springer.
  - Vinnicombe, G. (2000). *Uncertainty and feedback: H-Infinity Loop-Shaping and the V-Gap Metric*, 1st ed. London: Imperial College Press.
  - Zhou, K., Doyle, J. C. and Glover, K. (1995). *Robust and Optimal Control*. New York: Prentice-Hall.
  - Zhou, K. and Doyle, J. C. (1998). *Essentials of Robust Control*. New York: Prentice-Hall.

[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")

1.  The MathWorks, Inc. *[Synthesizing Robust Multivariable Controllers](http://www.mathworks.com/products/robust/description5.html) *. Retrieved September 16, 2007.
2.  Computing and Control Engineering Journal, 6(1):11–16
3.  Proceedings of the UKACC International Conference on Control 2008