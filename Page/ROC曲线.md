[Roccurves.png](https://zh.wikipedia.org/wiki/File:Roccurves.png "fig:Roccurves.png")
在[信号检测理论中](../Page/信号检测理论.md "wikilink")，**接收者操作特征曲線**（**receiver
operating characteristic curve**，或者叫**ROC曲线**）是一种坐標圖式的分析工具，用於 (1)
选择最佳的信號偵測模型、捨棄次佳的模型。 (2) 在同一模型中設定最佳閾值。

在做決策時，ROC分析能不受成本／效益的影響，給出客觀中立的建議。

ROC曲线首先是由二战中的电子工程师和雷达工程师发明的，用来偵测战场上的敌军載具（飛機、船艦），也就是信号检测理论。之后很快就被引入了[心理学来进行信号的](../Page/心理学.md "wikilink")[知觉检测](../Page/知觉.md "wikilink")。數十年來，ROC分析被用於[医学](../Page/医学.md "wikilink")、[无线电](../Page/无线电.md "wikilink")、[生物學](../Page/生物學.md "wikilink")、[犯罪心理學领域中](../Page/犯罪心理學.md "wikilink")，而且最近在[机器学习](../Page/机器学习.md "wikilink")（machine
learning）和[数据挖掘](../Page/数据挖掘.md "wikilink")（data mining）领域也得到了很好的发展。

## 基本概念

<table>
<caption>术语</caption>
<tbody>
<tr class="odd">
<td><dl>
<dt>陽性 (P, positive)<br />
陰性 (N, Negative)<br />
真阳性 (TP, true positive)</dt>
<dd>正确的肯定。又稱：命中 (hit)
</dd>
<dt>真阴性 (TN, true negative)</dt>
<dd>正确的否定。又稱：正確拒絕 (correct rejection)
</dd>
<dt>偽阳性 (FP, false positive)</dt>
<dd>错误的肯定，又稱：假警報 (false alarm)，<a href="../Page/第一型及第二型錯誤.md" title="wikilink">第一型错误</a>
</dd>
<dt>偽阴性 (FN, false negative)</dt>
<dd>错误的否定，又稱：未命中 (miss)，<a href="../Page/第一型及第二型錯誤.md" title="wikilink">第二型错误</a>
</dd>
<dt>真阳性率 (TPR, true positive rate)</dt>
<dd>又稱：命中率 (hit rate)、敏感度(sensitivity)
</dd>
<dd>TPR = TP / P = TP / (TP+FN)
</dd>
<dt>偽阳性率(FPR, false positive rate)</dt>
<dd>又稱：错误命中率，假警報率 (false alarm rate)
</dd>
<dd>FPR = FP / N = FP / (FP + TN)
</dd>
<dt><a href="../Page/準确度.md" title="wikilink">準确度</a> (ACC, accuracy)</dt>
<dd>ACC = (TP + TN) / (P + N)
</dd>
<dd>即：(真陽性+真陰性) / 總樣本數
</dd>
<dt>真阴性率 (TNR)</dt>
<dd>又稱：特異度 (SPC, specificity)
</dd>
<dd>SPC = TN / N = TN / (FP + TN) = 1 - FPR
</dd>
<dt>阳性预测值 (PPV)</dt>
<dd>PPV = TP / (TP + FP)
</dd>
<dt>阴性预测值 (NPV)</dt>
<dd>NPV = TN / (TN + FN)
</dd>
<dt>假發现率 (FDR)</dt>
<dd>FDR = FP / (FP + TP)
</dd>
<dt><a href="../Page/Matthews相关系数.md" title="wikilink">Matthews相关系数</a> (MCC)，即 <a href="../Page/Phi相關係數.md" title="wikilink">Phi相關係數</a></dt>
<dd><span class="math inline">$MCC = \frac{(TP*TN - FP*FN)}{\sqrt{P N P' N'}}$</span>
</dd>
<dt><a href="../Page/F1评分.md" title="wikilink">F1评分</a></dt>
<dd>F1 = 2TP/(P+P')
</dd>
</dl></td>
</tr>
<tr class="even">
<td><p><span style="font-size:90%;"><em>Source: Fawcett (2006).</em></span></p></td>
</tr>
</tbody>
</table>

**分类模型**（又稱[分类器](../Page/分类器.md "wikilink")，或[診斷](../Page/診斷.md "wikilink")）是将一个实例映射到一个特定类的过程。ROC分析的是[二元分類模型](../Page/二元分類模型.md "wikilink")，也就是輸出結果只有兩種類別的模型，例如：（陽性／陰性）（有病／沒病）（垃圾郵件／非垃圾郵件）（敵軍／非敵軍）。

當**訊號偵測**（或**變數測量**）的结果是一個[連續值時](../Page/連續值.md "wikilink")，類與類的邊界必须用一个[阈值](../Page/阈值.md "wikilink")（）來界定。举例来说，用血压值来检测一个人是否有[高血压](../Page/高血压.md "wikilink")，測出的血壓值是連續的實數（從0\~200都有可能），以收縮壓140／舒張壓90為閾值，閾值以上便診斷為有高血壓，閾值未滿者診斷為無高血壓。二元分類模型的個案預測有四種結局：

1.  **真陽性**（TP）：**診斷為有**，**實際上也有**高血壓。
2.  **偽阳性**（FP）：**診斷為有**，**实际卻没有**高血壓。
3.  **真陰性**（TN）：**診斷為沒有**，**實際上也沒有**高血壓。
4.  **偽阴性**（FN）：**診斷為沒有**，**实际却有**高血壓。

這四種結局可以畫成2 × 2的[混淆矩阵](../Page/混淆矩阵.md "wikilink")：

<table>
<thead>
<tr class="header">
<th><p> </p></th>
<th style="text-align: center;"><p>真实值</p></th>
<th><p>總<br />
數</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>p</em></p></td>
<td style="text-align: center;"><p><em>n</em></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>预<br />
测<br />
输<br />
出</p></td>
<td style="text-align: center;"><p><em>p</em>'</p></td>
<td><p>真阳性<br />
(TP)</p></td>
</tr>
<tr class="odd">
<td><p><em>n</em>'</p></td>
<td style="text-align: center;"><p>偽阴性<br />
(FN)</p></td>
<td><p>真阴性<br />
(TN)</p></td>
</tr>
<tr class="even">
<td><p>總數</p></td>
<td style="text-align: center;"><p>P</p></td>
<td><p>N</p></td>
</tr>
</tbody>
</table>

## ROC空間

ROC空间将偽陽性率（FPR）定義為 *X* 軸，真陽性率（TPR）定义为 *Y* 轴。

  - TPR：在所有實際為陽性的樣本中，被**正確地**判斷為陽性之比率。

\[TPR=TP/(TP+FN)\]

  - FPR：在所有實際為阴性的样本中，被**錯誤地**判斷為陽性之比率。

\[FPR=FP/(FP+TN)\]

**給定**一個二元分類**模型**和它的**閾值**，就能從所有樣本的（陽性／陰性）真實值和預測值計算出一個 (X=FPR, Y=TPR)
座標點。

從 (0, 0) 到 (1,1)
的對角線将ROC空间划分为左上／右下两个区域，在这条线的以上的点代表了一个好的分类结果（勝過隨機分類），而在这条线以下的点代表了差的分类结果（劣於隨機分類）。

**完美的預測**是一个在左上角的点，在ROC空间座标 (0,1)点，X=0 代表着没有偽阳性，Y=1
代表著沒有偽阴性（所有的陽性都是真陽性）；也就是說，不管分類器輸出結果是陽性或陰性，都是100%正確。一个**随机的预测**会得到位於从
(0, 0) 到 (1, 1) **对角线**（也叫**无识别率线**）上的一个点；最直观的随机预测的例子就是抛硬币。

让我们来看在實際有100个阳性和100个阴性的案例時，四種預測方法（可能是四種分類器，或是同一分類器的四種閾值設定）的結果差異：

<table>
<thead>
<tr class="header">
<th><p>A</p></th>
<th><p>B</p></th>
<th><p>C</p></th>
<th><p>C'</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td><p>TP=63</p></td>
<td><p>FP=28</p></td>
<td><p>91</p></td>
</tr>
<tr class="even">
<td><p>FN=37</p></td>
<td><p>TN=72</p></td>
<td><p>109</p></td>
</tr>
<tr class="odd">
<td><p>100</p></td>
<td><p>100</p></td>
<td><p>200</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<tbody>
<tr class="odd">
<td><p>TP=77</p></td>
<td><p>FP=77</p></td>
<td><p>154</p></td>
</tr>
<tr class="even">
<td><p>FN=23</p></td>
<td><p>TN=23</p></td>
<td><p>46</p></td>
</tr>
<tr class="odd">
<td><p>100</p></td>
<td><p>100</p></td>
<td><p>200</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<tbody>
<tr class="odd">
<td><p>TP=24</p></td>
<td><p>FP=88</p></td>
<td><p>112</p></td>
</tr>
<tr class="even">
<td><p>FN=76</p></td>
<td><p>TN=12</p></td>
<td><p>88</p></td>
</tr>
<tr class="odd">
<td><p>100</p></td>
<td><p>100</p></td>
<td><p>200</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<tbody>
<tr class="odd">
<td><p>TP=76</p></td>
<td><p>FP=12</p></td>
<td><p>88</p></td>
</tr>
<tr class="even">
<td><p>FN=24</p></td>
<td><p>TN=88</p></td>
<td><p>112</p></td>
</tr>
<tr class="odd">
<td><p>100</p></td>
<td><p>100</p></td>
<td><p>200</p></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="even">
<td><p>TPR = 0.63</p></td>
<td><p>TPR = 0.77</p></td>
<td><p>TPR = 0.24</p></td>
<td><p>TPR = 0.76</p></td>
</tr>
<tr class="odd">
<td><p>FPR = 0.28</p></td>
<td><p>FPR = 0.77</p></td>
<td><p>FPR = 0.88</p></td>
<td><p>FPR = 0.12</p></td>
</tr>
<tr class="even">
<td><p>ACC = 0.68</p></td>
<td><p>ACC = 0.50</p></td>
<td><p>ACC = 0.18</p></td>
<td><p>ACC = 0.82</p></td>
</tr>
</tbody>
</table>

[ROC_space-2.png](https://zh.wikipedia.org/wiki/File:ROC_space-2.png "fig:ROC_space-2.png")

將這4種结果畫在ROC空间裡：

  - 點與随机猜测线的距離，是預測力的指標：**离左上角越近的點預測（診斷）準確率越高**。離右下角越近的點，预测越不準。
  - 在**A**、**B**、**C**三者當中，最好的結果是**A**方法。
  - **B**方法的结果位於随机猜测线（對角線）上，在例子中我们可以看到**B**的準確度（ACC，定義見前面表格）是50%。
  - **C**雖然預測準確度最差，甚至劣於隨機分類，也就是低於0.5（低於對角線）。然而，当将**C**以 (0.5, 0.5)
    為中點作一个镜像后，**C**'的结果甚至要比**A**还要好。这个作镜像的方法，简单說，不管**C**（或任何ROC點低於對角線的情況）预测了什么，就做相反的結論。

## ROC曲線

[ROCfig.PNG](https://zh.wikipedia.org/wiki/File:ROCfig.PNG "fig:ROCfig.PNG")
上述ROC空間裡的單點，是給定分類模型且給定閾值後得出的。但同一個[二元分類模型的](../Page/二元分類模型.md "wikilink")[閾值可能設定為高或低](../Page/閾值.md "wikilink")，每種閾值的設定會得出不同的FPR和TPR。

  - 將**同一模型每個閾值** 的 (FPR, TPR) 座標都畫在ROC空間裡，就成為**特定模型的ROC曲線**。

例如右圖，人體的血液蛋白濃度是呈正态分布的連續變數，病人的分布是紅色，平均值為A
[g](../Page/公克.md "wikilink")/[dL](../Page/公升#公升配合國際單位制的詞頭.md "wikilink")，健康人的分布是藍色，平均值是C
g/dL。健康檢查會測量血液樣本中的某種蛋白質濃度，達到某個值（閾值，threshold）以上診斷為有疾病徵兆。研究者可以調整閾值的高低（將左上圖的B垂直線往左或右移動），便會得出不同的偽陽性率與真陽性率，總之即得出不同的預測準確率。

1\.
由於每個不同的分類器（診斷工具、偵測工具）有各自的測量標準和測量值的單位（標示為：「健康人－病人分佈圖」的橫軸），所以不同分類器的「健康人－病人分佈圖」都長得不一樣。

2\. **比較不同分類器時，ROC曲線的實際形狀，便視兩個實際分佈的重疊範圍而定，沒有規律可循。**

3\. 但**在同一個分類器之內**，閾值的不同設定對ROC曲線的影響，仍有一些規律可循：

  - **當閾值設定為最高時**，亦即所有樣本都被預測為陰性，**沒有樣本被預測為陽性**，此時在偽陽性率 FPR = FP / ( FP +
    TN ) 算式中的 FP = 0，所以 FPR = 0%。同時在真陽性率（TPR）算式中， TPR = TP / ( TP + FN )
    算式中的 TP = 0，所以 TPR = 0%

<!-- end list -->

  -
    → **當閾值設定為最高時，必得出ROC座標系左下角的點 (0, 0)。**

<!-- end list -->

  - **當閾值設定為最低時**，亦即所有樣本都被預測為陽性，**沒有樣本被預測為陰性**，此時在偽陽性率FPR = FP / ( FP +
    TN ) 算式中的 TN = 0，所以 **FPR = 100%**。同時在真陽性率 TPR = TP / ( TP + FN )
    算式中的 FN = 0，所以 **TPR=100%**

<!-- end list -->

  -
    → **當閾值設定為最低時，必得出ROC座標系右上角的點 (1, 1)。**

<!-- end list -->

  - 因為TP、FP、TN、FN都是累積次數，TN和FN隨著閾值調低而減少（或持平），TP和FP隨著閾值調低而增加（或持平），所以FPR和TPR皆必隨著閾值調低而增加（或持平）。

<!-- end list -->

  -
    → **隨著閾值調低，ROC點** 往右上（或右／或上）移動，或不動；但**絕不會往左下(或左／或下)移動**。

## 曲線下面積（AUC）

[curvas.png](https://zh.wikipedia.org/wiki/File:curvas.png "fig:curvas.png")
在比較不同的分類模型時，可以將每個模型的ROC曲線都畫出來，比較曲線下面積做為模型優劣的指標。

### 意義

ROC曲線下方的面積（），其意義是：

  - 因為是在1x1的方格裡求面積，AUC必在0\~1之間。
  - 假設閾值以上是陽性，以下是陰性；
  - 若隨機抽取一個陽性樣本和一個陰性樣本，分類器**正確判斷**陽性樣本的值高於陰性樣本之**機率** \(=AUC\)\[1\]。
  - 簡單說：**AUC值越大的分類器，正確率越高。**

從AUC判斷分類器（預測模型）優劣的標準：

  - AUC = 1，是完美分類器，採用這個預測模型時，存在至少一個閾值能得出完美預測。絕大多數預測的場合，不存在完美分類器。
  - 0.5 \< AUC \< 1，優於隨機猜測。這個分類器（模型）妥善設定閾值的話，能有預測價值。
  - AUC = 0.5，跟隨機猜測一樣（例：丟銅板），模型沒有預測價值。
  - AUC \< 0.5，比隨機猜測還差；但只要總是反預測而行，就優於隨機猜測。

### 計算

AUC的計算有兩種方式，都是以逼近法求近似值。

#### 梯形法

**梯形法**（）：簡單地將每個相鄰的點以直線連接，計算連線下方的總面積。因為每一線段下方都是一個梯形，所以叫**梯形法**。

  - 優點：簡單，所以常用。
  - 缺點：傾向於低估AUC。

#### ROC AUCH法

### 潛在問題

AUC of ROC是[機器學習的社群最常使用來比較不同模型優劣的方法](../Page/機器學習.md "wikilink")\[2\]
。然而近來這個做法開始受到質疑，因為有些機器學習的研究指出，AUC的杂訊太多，並且很常求不出可信又有效的AUC值（此時便不能保證AUC傳達本節開頭所述之意義），使得AUC在模型比較時產生的問題比解釋的問題更多\[3\]\[4\]\[5\]
。

## 分析軟體

所有常用於統計分析的軟體（例：SPSS、SAS、SYSTAT、S-Plus、ROCKIT、RscorePlus）都有依據不同閾值自動計算真陽性和偽陽性比率、並依此繪製ROC曲線的功能。

**离散分类器**（，或稱「間斷分類器」），如[决策树](../Page/决策树.md "wikilink")，产生的是离散的数值或者一个二元标签。应用到实例中，这样的分类器最后只会在ROC空间产生单一的点。而一些其他的分类器，如[朴素贝叶斯分类器](../Page/朴素贝叶斯分类器.md "wikilink")，[逻辑回归或者](../Page/逻辑回归.md "wikilink")[人工神经网络](../Page/人工神经网络.md "wikilink")，产生的是实例属于某一类的可能性，对于这些方法，一个阈值就决定了ROC空间中点的位置。举例来说，如果可能值低于或者等于0.8这个阈值就将其认为是阳性的类，而其他的值被认为是阴性类。这样就可以通过画每一个阈值的ROC点来生成一个生成一条曲线。MedCalc是较好的ROC曲线分析软件。

## 参考文献

### 引用

### 来源

  - Zou, K.H., O'Malley, A.J., Mauri, L. (2007). Receiver-operating
    characteristic analysis for evaluating diagnostic tests and
    predictive models. *Circulation*, 6;115(5):654–7.

  -
  - Lasko, T.A., J.G. Bhagwat, K.H. Zou and Ohno-Machado, L. (2005). The
    use of receiver operating characteristic curves in biomedical
    informatics. *Journal of Biomedical Informatics*, 38(5):404–415.

  - Balakrishnan, N., (1991) *Handbook of the Logistic Distribution*,
    Marcel Dekker, Inc., ISBN 978-0824785871.

  - Gonen M., (2007) *Analyzing Receiver Operating Characteristic Curves
    Using SAS*, SAS Press, ISBN 978-1-59994-298-1.

  - Green, W.H., (2003) *Econometric Analysis*, fifth edition, [Prentice
    Hall](../Page/Prentice_Hall.md "wikilink"), ISBN 0-13-066189-9.

  - Heagerty, P.J., Lumley, T., Pepe, M. S. (2000) Time-dependent ROC
    Curves for Censored Survival Data and a Diagnostic Marker
    *Biometrics*, **56**:337–344

  - Hosmer, D.W. and Lemeshow, S., (2000) *Applied Logistic Regression*,
    2nd ed., New York; Chichester,
    [Wiley](../Page/John_Wiley_&_Sons.md "wikilink"), ISBN
    0-471-35632-8.

  - Brown, C.D., and Davis, H.T. (2006) Receiver operating
    characteristic curves and related decision measures: a tutorial,
    *Chemometrics and Intelligent Laboratory Systems*, **80**:24–38

  - Mason, S.J. and Graham, N.E. (2002) Areas beneath the relative
    operating characteristics (ROC) and relative operating levels (ROL)
    curves: Statistical significance and interpretation. *Q.J.R.
    Meteorol. Soc.*, 128:2145–2166.

  - Pepe, M.S. (2003). *The statistical evaluation of medical tests for
    classification and prediction*.
    [Oxford](../Page/Oxford_University_Press.md "wikilink"). ISBN
    0198565828.

  - Carsten, S. Wesseling, S., Schink, T., and Jung, K. (2003)
    Comparison of Eight Computer Programs for Receiver-Operating
    Characteristic Analysis. *Clinical Chemistry*, **49**:433–439

  - Swets, J.A. (1995). *Signal detection theory and ROC analysis in
    psychology and diagnostics: Collected papers.* Lawrence Erlbaum
    Associates.

  - Swets, J.A., Dawes, R., and Monahan, J. (2000) Better Decisions
    through Science. *[Scientific
    American](../Page/Scientific_American.md "wikilink")*, October,
    pages 82–87.

## 外部链接

  - [An introduction to ROC
    analysis](http://www.gpa.etsmtl.ca/cours/sys828/REFS/A1/Fawcett_PRL2006.pdf)
  - [A more thorough treatment of ROC curves and signal detection
    theory](https://web.archive.org/web/20100702020856/http://www-psych.stanford.edu/~lera/psych115s/notes/signal/)
  - [Tom Fawcett's ROC Convex Hull: tutorial, program and
    papers](http://home.comcast.net/~tom.fawcett/public_html/ROCCH/index.html)
  - [Peter Flach's tutorial on ROC analysis in machine
    learning](https://web.archive.org/web/20100715035231/http://www.cs.bris.ac.uk/~flach/ICML04tutorial/index.html)
  - [The magnificent ROC](http://www.anaesthetist.com/mnm/stats/roc/) —
    An explanation and interactive demonstration of the connection of
    ROCs to archetypal bi-normal test result plots

[Category:检测论](https://zh.wikipedia.org/wiki/Category:检测论 "wikilink")
[Category:数据挖掘](https://zh.wikipedia.org/wiki/Category:数据挖掘 "wikilink")
[Category:社会经济学](https://zh.wikipedia.org/wiki/Category:社会经济学 "wikilink")
[Category:生物統計學](https://zh.wikipedia.org/wiki/Category:生物統計學 "wikilink")
[Category:统计分类](https://zh.wikipedia.org/wiki/Category:统计分类 "wikilink")

1.  Fawcett, Tom (2006); *An introduction to ROC analysis*, Pattern
    Recognition Letters, 27, 861–874.
2.
3.  Hanczar, Blaise; Hua, Jianping; Sima, Chao; Weinstein, John;
    Bittner, Michael; and Dougherty, Edward R. (2010); *Small-sample
    precision of ROC-related estimates*, Bioinformatics 26 (6): 822–830
4.  Lobo, Jorge M.; Jiménez-Valverde, Alberto; and Real, Raimundo
    (2008), *AUC: a misleading measure of the performance of predictive
    distribution models*, Global Ecology and Biogeography, 17: 145–151
5.  Hand, David J. (2009); *Measuring classifier performance: A coherent
    alternative to the area under the ROC curve*, Machine Learning, 77:
    103–123