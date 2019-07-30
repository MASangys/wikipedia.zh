[Tubular_heat_exchanger.png](https://zh.wikipedia.org/wiki/File:Tubular_heat_exchanger.png "fig:Tubular_heat_exchanger.png") [Exchangerflow.svg](https://zh.wikipedia.org/wiki/File:Exchangerflow.svg "fig:Exchangerflow.svg")

**NTU法**是**熱傳單元數法**的簡稱，也稱為**熱交換有效性**法，是在一[熱交換器](https://zh.wikipedia.org/wiki/熱交換器 "wikilink")（特別是的熱交換器）沒有[對數平均溫差](../Page/對數平均溫差.md "wikilink")（LMTD）的條件下，計算其[熱交換速率的方式](https://zh.wikipedia.org/wiki/熱交換 "wikilink")。

在熱交換器分析中，若流體的入口溫度和出口溫度已知，或是可以用能量平衡的方式計算，可以用對數平均溫差來進行分析\[1\]，但若沒有這些資訊，可以用NTU法來分析。

## 定義

若要定義熱交換器的有效性（effectiveness），需找到假設在無限管長逆流交换的假設條件下，可以達到的最大熱交換程度。因此任一流體在入口處及出口處的溫差為最大可能溫差，也就是\(\ T_{h,i}- \ T_{c,i}\)（熱氣體及冷氣體在入口處的溫度）。此方式先計算高溫流體及低溫流體的（質量流率乘以[比熱](https://zh.wikipedia.org/wiki/比熱 "wikilink")）\(\ C_h\)及\(\ C_c\)，令其中最小的為\(\ C_{min}\)。.

因此可找到以下的物理量：

\[q_{max}\ = C_{min} (T_{h,i}-T_{c,i})\]

其中\(\ q_{max}\)為單位時間下的最大熱傳。 \(\ C_{min}\)需對應熱容量率最小的流體，也就是在假想的無限長度熱交換器中有最大可能溫度變化的流體。另一種流體其溫度隨長度的變化較慢。NTU法只考慮有最大溫度變化的流體。

有效性（E）定義為實際熱交換率及最大熱交換率的比例：

\[E \ = \frac{q}{q_{max}}\]

其中:

\[q \ = C_h (T_{h,i} -T_{h,o})\ = C_c (T_{c,o} - T_{c,i})\]

有效性是範圍在0到1之間的[無量綱](https://zh.wikipedia.org/wiki/無量綱 "wikilink")。若可以知道於某一熱交換器的E，又可以知道高低溫流體的入口溫度，可以計算傳流體交換的熱如下：

\[q \ = E C_{min} (T_{h,i} -T_{c,i})\]

對於任意的熱交換器，下式都成立：

\[\ E = f  ( NTU,\frac{C_{min}}  {C_{max}})\]

針對一特定的幾何形狀，有效性可以用以下熱容量率的比例

\[C_r \ = \frac{C_{min}}{C_{max}}\]

及熱傳單元數\(\ NTU\)來計算：

\[NTU \ = \frac{U A}{C_{min}}\]

  -
    其中 \(\ U\)為整體[传热系数](https://zh.wikipedia.org/wiki/传热系数 "wikilink")，而\\ A</math>為傳熱面積。

## 特定幾何形狀熱交換器的有效性

例如平行板熱交換器的有效性為：

\[E \ = \frac {1 - \exp[-NTU(1 + C_{r})]}{1 + C_{r}}\]

逆流交换熱交換器的有效性為：

\[E \ = \frac {1 - \exp[-NTU(1 - C_{r})]}{1 - C_{r}\exp[-NTU(1 - C_{r})]}\]

若\(C_r \ = 1\)

\[E\ = \frac{NTU}{1+NTU}\]

可以針對或是計算類似的有效性。萁和流體流動方式（逆流、並流或交叉流）、（壳管式热交换器的）通路數量及高低溫流體是否有混合有關。

注意 \(C_r \ =  0\)為一特殊條件，表示熱交換器中有[凝結](../Page/凝結.md "wikilink")或是[蒸發等](https://zh.wikipedia.org/wiki/蒸發 "wikilink")[相變](../Page/相變.md "wikilink")。因此在此特殊情形下，熱交換器的特性和流體配置方式無關，其有效性為為：

\[E \ = 1 - \exp[-NTU]\]

## 參考資料

  - F. P. Incropera & D. P. DeWitt 1990 *Fundamentals of Heat and Mass Transfer*, 3rd edition, pp. 658–660. Wiley, New York
  - F. P. Incropera, D. P. DeWitt, T. L. Bergman & A. S. Lavine 2006 ''Fundamentals of Heat and Mass Transfer '',6th edition, pp 686–688. John Wiley & Sons US

[Category:传热](https://zh.wikipedia.org/wiki/Category:传热 "wikilink")

1.  [传热与换热器](http://crx.jpkc.cc/inc/download.php?id=33&mod=crx)