**PID控制器**（比例-积分-微分[控制器](https://zh.wikipedia.org/wiki/控制器 "wikilink")），由比例单元（P）、[积分](../Page/积分.md "wikilink")单元（I）和[微分](../Page/微分.md "wikilink")单元（D）组成\[1\]。可以透過調整這三個單元的增益Kp，Ki和Kd來調定其特性。PID控制器主要适用于基本上线性，且动态特性不随时间变化的系统。

[Pid-feedback-nct-int-correct.png](https://zh.wikipedia.org/wiki/File:Pid-feedback-nct-int-correct.png "fig:Pid-feedback-nct-int-correct.png")

PID控制器是一个在工业控制应用中常见的[反馈](../Page/反馈.md "wikilink")回路部件。这个控制器把收集到的数据和一个参考值进行比较，然后把这个差别用于计算新的输入值，这个新的输入值的目的是可以让系统的数据达到或者保持在参考值。PID控制器可以根据历史数据和差别的出现率来调整输入值，使系统更加准确而稳定。

PID控制器的比例单元(P)、积分单元(I)和微分单元(D)分別對應目前誤差、過去累計誤差及未來誤差。若是不知道受控系統的特性，一般認為PID控制器是最適用的控制器\[2\]。藉由調整PID控制器的三個參數，可以調整控制系統，設法滿足設計需求。控制器的響應可以用控制器對誤差的反應快慢、控制器[過衝的程度及系統震盪的程度來表示](https://zh.wikipedia.org/wiki/過衝 "wikilink")。不過使用PID控制器不一定保證可達到系統的[最佳控制](https://zh.wikipedia.org/wiki/最佳控制 "wikilink")，也不保證系統穩定性。

有些應用只需要PID控制器的部份單元，可以將不需要單元的參數設為零即可。因此PID控制器可以變成PI控制器、PD控制器、[P控制器或I控制器](https://zh.wikipedia.org/wiki/P控制器 "wikilink")。其中又以PI控制器比較常用，因為D控制器對回授雜訊十分敏感，而若沒有I控制器的話，系統不會回到參考值，會存在一個誤差量。

## 反馈回路基础

PID回路是要自动实现一个操作人员用量具和控制旋钮進行的工作，这个操作人员会用量具测系统输出的结果，然后用控制旋钮来调整这个系统的输入，直到系统的输出在量具上显示稳定的需求的结果，在旧的控制文档里，这个过程叫做“复位”行为，量具被称为“测量”，需要的结果被称为“[設定值](https://zh.wikipedia.org/wiki/設定值 "wikilink")”而設定值和测量之间的差别被称为“误差”。

一个控制回路包括三个部分：

1.  系统的[传感器](../Page/传感器.md "wikilink")得到的测量结果
2.  控制器作出决定
3.  通过一个输出设备来作出反应

控制器从[传感器](../Page/传感器.md "wikilink")得到测量结果，然后用需求结果减去测量结果来得到误差。然后用误差来计算出一个对系统的纠正值来作为输入结果，这样系统就可以从它的输出结果中消除误差。

在一个PID回路中，这个纠正值有三种算法，消除目前的误差，平均过去的误差，和透過误差的改变来预测将来的误差。

比如说，假如利用水箱在为植物提供水，水箱的水需要保持在一定的高度。可以用[传感器](../Page/传感器.md "wikilink")来检查水箱里水的高度，这样就得到了测量结果。控制器会有一个固定的用户输入值来表示水箱需要的水面高度，假设这个值是保持65％的水量。控制器的输出设备会连在由马达控制的水阀门上。打开阀门就会给水箱注水，关上阀门就会让水箱里的水量下降。这个阀门的控制信号就是控制变量。

PID控制器可以用来控制任何可被测量及可被控制变量。比如，它可以用来控制温度、[压强](../Page/压强.md "wikilink")、流量、化学成分、速度等等。汽车上的[巡航定速](../Page/巡航定速.md "wikilink")功能就是一个例子。

一些控制系统把数个PID控制器[串联起来](https://zh.wikipedia.org/wiki/串联 "wikilink")，或是连成网络。这样的话，一个主控制器可能会为其他控制输出结果。一个常见的例子是马达的控制。控制系統會需要马达有一个受控的速度，最後停在一个确定的位置。可由一個子控制器用来管理速度，但是这个子控制器的速度是由控制马达位置的主控制器来管理的。

连合和串联控制在化学过程控制系统中相當常见。

## 歷史及應用

[Scross_helmsman.jpg](https://zh.wikipedia.org/wiki/File:Scross_helmsman.jpg "fig:Scross_helmsman.jpg")的動作而來\]\]

PID控制器可以追溯到1890年代的設計\[3\]\[4\]。PID控制器是在船舶自动操作系統中漸漸發展。1911年開發的控制器是最早期PID型控制器的其中之一\[5\]，而第一個發表PID控制器理論分析論文的是[俄裔美国工程師](../Page/俄裔美国人.md "wikilink")。米诺尔斯基當時在設計美國海軍的自动操作系統，他的設計是基於對[舵手](../Page/舵手.md "wikilink")的觀察，控制船舶不只是依目前的誤差，也考慮過去的誤差以及誤差的變化趨勢\[6\]，後來米诺尔斯基也用數學的方式加以推導\[7\]。他的目的是在於穩定性，而不是泛用的控制，因此大幅的簡化了問題。比例控制可以在小的擾動下有穩定性，但無法消除穩態誤差，因此加入了積分項，後來也加入了微分項。

當時在[新墨西哥號戰艦](../Page/新墨西哥號戰艦.md "wikilink")上進行測試，利用控制器控制[舵](../Page/舵.md "wikilink")的[角速度](../Page/角速度.md "wikilink")，利用PI控制器可以角度誤差維持在±2°以內，若加上D控制，角度誤差維持在±1/6°，比最好的舵手還要好\[8\]。

不過因為海軍人員的抗拒，海軍那時候未使用這套系統，在1930年代也有其他人作出類似的研究。

在自動控制發展的早期，用機械設備來實現PID控制，是由[槓桿](https://zh.wikipedia.org/wiki/槓桿 "wikilink")、[彈簧](https://zh.wikipedia.org/wiki/彈簧 "wikilink")、[阻尼](../Page/阻尼.md "wikilink")及質量組成，多半會用壓縮氣體驅動。[氣動控制器還一度是工業上的標準](../Page/氣動力學.md "wikilink")。

電子的類比控制器可以用[電晶體](https://zh.wikipedia.org/wiki/電晶體 "wikilink")、[真空管](../Page/真空管.md "wikilink")、[電容器及](https://zh.wikipedia.org/wiki/電容器 "wikilink")[電阻器組成](https://zh.wikipedia.org/wiki/電阻器 "wikilink")。許多複雜的電子系統中常會包括PID控制，例如[磁碟的讀寫頭定位](https://zh.wikipedia.org/wiki/磁碟 "wikilink")、[電源供應器](../Page/電源供應器.md "wikilink")的電源條件、甚至是現代[地震儀](../Page/地震儀.md "wikilink")的運動偵測線路。現代電子控制器已大幅的被這些利用[單晶片或](https://zh.wikipedia.org/wiki/單晶片 "wikilink")[FPGA來實現的數位控制器所取代](https://zh.wikipedia.org/wiki/FPGA "wikilink")。

現代工業使用的PID控制器多半會用[PLC或有安装面板的數位控制器來實現](../Page/可编程逻辑控制器.md "wikilink")。軟體實現的好處是相對低廉，配合PID實現方式調整的靈敏度很大。在工業鍋爐、塑膠射出機械、烫金机及包裝行業中都會用到PID控制。

變化的電壓輸出可以用[PWM來實現](../Page/脈衝寬度調變.md "wikilink")，也就是固定週期，依要輸出的量去調整週期中輸出高電位的時間。對於數位系統，其時間比例有可能是離散的，例如週期是二秒，高電位時間設定單位為0.1秒，表示可以分為20格，精度5%，因此存在一[量化誤差](https://zh.wikipedia.org/wiki/量化誤差 "wikilink")，但只要時間解析度夠高，就會有不錯的效果。

## 理论

PID是以它的三种纠正算法而命名。受控變數是三种算法（比例、積分、微分）相加後的結果，即為其輸出，其輸入為误差值（設定值減去测量值後的結果）或是由误差值衍生的信號。若定義\(u(t)\)為控制輸出，PID演算法可以用下式表示：

\[\mathrm{u}(t)=\mathrm{MV}(t)=K_p{e(t)} + K_{i}\int_{0}^{t}{e(\tau)}\,{d\tau} + K_{d}\frac{d}{dt}e(t)\]

其中

  -
    \(K_p\)：比例增益，是調適參數
    \(K_i\)：積分增益，也是調適參數
    \(K_d\)：微分增益，也是調適參數
    \(e\)：誤差=設定值（SP）- 回授值（PV）
    \(t\)：目前時間
    \(\tau\)：積分變數，數值從0到目前時間\(t\)

用更专业的话来讲，PID控制器可以視為是[频域系统的](https://zh.wikipedia.org/wiki/频域 "wikilink")[滤波器](https://zh.wikipedia.org/wiki/滤波器 "wikilink")。在计算控制器最终是否会达到稳定结果时，此性質很有用。如果数值挑选不当，控制系统的输入值会反复振盪，这导致系统可能永远无法达到预设值。

PID控制器的一般[转移函数是](../Page/传递函数.md "wikilink")：

\[H(s)=\frac{K_d s^2+K_p s+K_i}{s+C}\],

其中*C*是一个取决于系统带宽的常数。

### 比例控制項

[PID_varyingP.jpg](https://zh.wikipedia.org/wiki/File:PID_varyingP.jpg "fig:PID_varyingP.jpg")

[比例](../Page/比例.md "wikilink")控制考慮当前誤差，误差值和一个正值的常数K<sub>p</sub>（表示比例）相乘。K<sub>p</sub>只是在控制器的输出和系统的误差成比例的时候成立。比如说，一个电热器控制器是在目標溫度和實際溫度差10°C時有100%的輸出，而其目標值是25°C。那么它在15°C的时候会输出100%，在20°C的时候会输出50%，在24°C的时候输出10％，注意在误差是0的时候，控制器的输出也是0。

比例控制的輸出如下：

\[P_{\mathrm{out}}=K_p\,{e(t)}\]

若比例增益大，在相同誤差量下，會有較大的輸出，但若比例增益太大，會使系統不穩定 。相反的，若比例增益小，若在相同誤差量下，其輸出較小，因此控制器會較不敏感的。若比例增益太小，當有干擾出現時，其控制信號可能不夠大，無法修正干擾的影響。

#### 穩態誤差

比例控制在誤差為0時，其輸出也會為0。若要讓受控輸出為非零的數值，就需要有一個穩態誤差或偏移量。穩態誤差和比例增益的成反比。若加入一[偏置](https://zh.wikipedia.org/wiki/偏置 "wikilink")，或是加入積分控制，可以消除穩態誤差。

### 積分控制項

[Change_with_Ki.png](https://zh.wikipedia.org/wiki/File:Change_with_Ki.png "fig:Change_with_Ki.png")

[积分](../Page/积分.md "wikilink")控制考慮过去誤差，將误差值过去一段时间和（误差和）乘以一个正值的常数K<sub>i</sub>。K<sub>i</sub>从过去的平均误差值来找到系统的输出结果和预定值的平均误差。一个简单的比例系统会震盪，会在预定值的附近来回变化，因为系统无法消除多余的纠正。通过加上负的平均误差值，平均系统误差值就会漸漸减少。所以，最终这个PID回路系统会在設定值稳定下来。

積分控制的輸出如下：

  -
    \(I_{\mathrm{out}}=K_{i}\int_{0}^{t}{e(\tau)}\,{d\tau}\)

積分控制會加速系統趨近設定值的過程，並且消除純比例控制器會出現的穩態誤差。積分增益越大，趨近設定值的速度越快，不過因為積分控制會累計過去所有的誤差，可能會使回授值出現[過衝的情形](https://zh.wikipedia.org/wiki/過衝 "wikilink")。

### 微分控制項

[Change_with_Kd.png](https://zh.wikipedia.org/wiki/File:Change_with_Kd.png "fig:Change_with_Kd.png")

[微分](../Page/微分.md "wikilink")控制考慮将来誤差，计算误差的一阶导，并和一个正值的常数K<sub>d</sub>相乘。这个导数的控制会对系统的改变作出反应。导数的结果越大，那么控制系统就对输出结果作出更快速的反应。这个K<sub>d</sub>参数也是PID被称为可预测的控制器的原因。K<sub>d</sub>参数对减少控制器短期的改变很有帮助。一些实际中的速度缓慢的系统可以不需要K<sub>d</sub>参数。

微分控制的輸出如下：

\[D_{\mathrm{out}}=K_d\frac{d}{dt}e(t)\]

微分控制可以提昇[整定時間及系統穩定性](https://zh.wikipedia.org/wiki/整定時間 "wikilink")\[9\]\[10\]。不過因為純微分器不是[因果系统](https://zh.wikipedia.org/wiki/因果系统 "wikilink")，因此在PID系統實現時，一般會為微分控制加上一個低通濾波器以限制高頻增益及雜訊\[11\]。實际上較少用到微分控制，估計PID控制器中只有約20%有用到微分控制\[12\]。

## 參數調試

PID的參數調試是指透過調整控制參數（比例增益、積分增益/時間、微分增益/時間）讓系統達到最佳的控制效果。穩定性（不會有發散性的震盪）是首要條件，此外，不同系統有不同的行為，不同的應用其需求也不同，而且這些需求還可能會互相衝突。

PID只有三個參數，在原理上容易說明，但PID參數調試是一個困難的工作，因為要符合一些特別的準則，而且PID控制有其[限制存在](https://zh.wikipedia.org/wiki/#PID控制的限制 "wikilink")。歷史上有許多不同的PID參數調試方式，包括[齊格勒－尼科爾斯方法等](https://zh.wikipedia.org/wiki/齊格勒－尼科爾斯方法 "wikilink")，其中也有一些已申請[專利](https://zh.wikipedia.org/wiki/專利 "wikilink")。

PID控制器的設計及調試在概念上很直覺，但若有多個（且互相衝突）的目標（例如高穩定性及快速的暫態時間）都要達到的話，在實際上很難完成。PID控制器的參數若仔細的調試，會有很好的效果，相反的，若調適不當，效果會很差。一般初始設計常需要不斷的電腦模擬，並且修改參數，一直達到理想的性能或是可接受的妥協為止。

有些系統有非線性的特性，若在無載下調試的參數可能無法在滿載下動作，可以利用[增益規劃的方式進行修正](https://zh.wikipedia.org/wiki/增益規劃 "wikilink")（在不同的條件下選用不同的數值）。

### 穩定性

若PID控制器的參數未挑選妥當，其控制器輸出可能是不穩定的，也就是其輸出發散，過程中可能有震盪，也可能沒有震盪，且其輸出只受飽和或是機械損壞等原因所限制。不穩定一般是因為過大增益造成，特別是針對延遲時間很長的系統。

一般而言，PID控制器會要求響應的穩定，不論程序條件及設定值如何組合，都不能出現大幅振盪的情形，不過有時可以接受[臨界穩定](../Page/臨界穩定.md "wikilink")的情形。

### 最佳性能

PID控制器的最佳性能可能和針對過程變化或是設定值變化有關，也會隨應用而不同。

兩個基本的需求是調整能力（regulation，干擾拒絕，使系統維持在設定值）及命令追隨 （設定值變化下，控制器輸出追隨設定值的反應速度）。有關命令追隨的一些準則包括有及[整定時間](https://zh.wikipedia.org/wiki/整定時間 "wikilink")。有些應用可能因為安全考量，不允許輸出超過設定值，也有些應用要求在到達設定值過程中的能量可以最小化。

### 各方法的簡介

有許多種調試PID控制器參數的方法，最有效的方式多半是建立某種程序，再依不同參數下的動態特性來調試參數。相對而言人工調試其效率較差，若是系統的響應時間到數分鐘以上，更可以看出人工調試效率的不佳。

調試方法的選擇和是否可以暫時將控制迴路「離線」有關，也和系統的響應時間有關。離線是指一個和實際使用有些不同的條件（例如不加負載），而且控制器的輸出只需考慮理論情況，不需考慮實際應用。在線調試是在實際應用的條件，控制器的輸出需考慮實際的系統 。若控制迴路可以離線，最好的調試方法是對系統給一個步階輸入，量測其輸出對時間的關係，再用其響應來決定參數。

| 方法         | 優點                                                                                                                       | 缺點                       |
| ---------- | ------------------------------------------------------------------------------------------------------------------------ | ------------------------ |
| 人工調試       | 不需要數學，可以在線調試                                                                                                             | 需要有經驗的工程師                |
| 齊格勒－尼科爾斯方法 | 被證實有效的方法，可以在線調試                                                                                                          | 會影響製程，需要試誤，得到的參數可能使響應太快  |
| 軟體工具       | 調適的一致性，可以在線調試或離線調試，可以配合[计算机自动设计](https://zh.wikipedia.org/wiki/计算机自动设计 "wikilink")，包括閥及感測器的分析，可以在下載前進行模擬，可以支援非穩態（NSS）的調試 | 需要成本或是訓練\[13\]           |
| Cohen–Coon | 好的程序模型                                                                                                                   | 需要一些數學，需離線調試，只對一階系統有良好效果 |

選擇調試方式

### 人工調整

若需在系統仍有負載的情形進行調試（線上調試），有一種作法是先將\(K_i\)及\(K_d\)設為零，增加\(K_p\)一直到迴路輸出震盪為止，之後再將\(K_p\)設定為「1/4振幅衰減」（使系統第二次過衝量是第一次的1/4）增益的一半，然後增加\(K_i\)直到一定時間後的穩態誤差可被修正為止。不過若\(K_i\)可能會造成不穩定，最後若有需要，可以增加\(K_d\)，並確認在負載變動後迴路可以夠快的回到其設定值，不過若\(K_d\)太大會造成響應太快及過衝。一般而言快速反應的PID應該會有輕微的過衝，只是有些系統不允許過衝。因此需要將回授系統調整為[過阻尼系統](https://zh.wikipedia.org/wiki/阻尼#阻尼 "wikilink")，而\(K_p\)比造成震盪\(K_p\)的一半還要小很多。 [PID_Compensation_Animated.gif](https://zh.wikipedia.org/wiki/File:PID_Compensation_Animated.gif "fig:PID_Compensation_Animated.gif") 調整PID參數對系統的影響如下

| 調整方式            | (on) 上升时间 | 超调量  | 安定时间   | 稳态误差   | 稳定性\[14\] |
| --------------- | --------- | ---- | ------ | ------ | --------- |
| ↑ K<sub>p</sub> | 減少 ↓      | 增加 ↑ | 小幅增加 ↗ | 減少 ↓   | 變差 ↓      |
| ↑ K<sub>i</sub> | 小幅減少 ↘    | 增加↑  | 增加 ↑   | 大幅減少↓↓ | 變差↓       |
| ↑ K<sub>d</sub> | 小幅減少 ↘    | 減少↓  | 減少↓    | 變動不大→  | 變好 ↑      |

### 齊格勒－尼科爾斯方法

[齊格勒－尼科爾斯方法是另一種啟發式的調試方式](https://zh.wikipedia.org/wiki/齊格勒－尼科爾斯方法 "wikilink")，由John G. Ziegler和Nathaniel B. Nichols在1940年代導入，一開始也是將\(K_i\)及\(K_d\)設定為零，增加比例增益直到系統開始振盪為止，當時的增益稱為\(K_u\)，而振盪週期為\(P_u\)，即可用以下的方式計算增益：

| 控制器種類 | \(K_p\)       | \(K_i\)          | \(K_d\)          |
| ----- | ------------- | ---------------- | ---------------- |
| *P*   | \(0.50{K_u}\) | \-               | \-               |
| *PI*  | \(0.45{K_u}\) | \(1.2{K_p}/P_u\) | \-               |
| *PID* | \(0.60{K_u}\) | \(2{K_p}/P_u\)   | \({K_p}{P_u}/8\) |

齊格勒－尼科爾斯方法

### PID調試軟體

大部份現代的工業設備不再用上述人工計算的方式調試，而是用PID調試及最佳化軟體來達到一致的效果。軟體會收集資料，建立模型，並提供最佳的調試結果，有些軟體甚至可以用參考命令的變化來進行調試。

數學的PID調試會將脈衝加入系統，再用受控系統的頻率響應來設計PID的參數。若是響應時間要數分鐘的系統，建議用數學PID調試，因為用試誤法可能要花上幾天才能找到可讓系統穩定的參數。最佳解不太容易找到，有些數位的迴路控制器有自我調試的程序，利用微小的參考命令來計算最佳的調試值。

也有其他調試的公式，是依不同的性能準則所產生。許多有專利的公式已嵌入在PID調試軟體及硬體模組中\[15\]。

一些先進的PID調試軟體也可以有演算法可以在動態的情形下調整PID迴路，這類軟體會先將程序建模，給微擾量，再根據響應計算參數。

## PID控制的限制

PID控制可以應用在許多控制問題，多半在大略調整參數後就有不錯的效果，不過有些應用下可能反而會有差的效果，而且一般無法提供[最佳控制](https://zh.wikipedia.org/wiki/最佳控制 "wikilink")。PID控制的主要問題是在於其為回授控制，係數為定值，不知道受控系統的資訊，因此其整体性能常常是妥協下的結果。在沒有受控系統模型的條件下，PID控制最佳的控制器\[16\]，但若配合系統模型，可以有進一步的提昇。

當PID控制器單獨使用時，若因應用需求，需調整PID迴路增益使控制系統不會[過衝](https://zh.wikipedia.org/wiki/過衝 "wikilink")，其效果有可能很差。PID控制器的缺點還包括無法處理受控系統的非線性、需在反應時間及调整率之間妥協、無法針對參數的變動而反應（例如系統在暖機後特性會改變）、以及大擾動下的波形落後。

PID控制器最顯著的提昇是配合[前饋控制](https://zh.wikipedia.org/wiki/前饋控制 "wikilink")，加入有關系統的資訊，只用PID控制器來控制誤差。另外，PID控制器也有一些小幅的改善方式，例如調整參數（[增益規劃或是依性能進行適應性的調整](https://zh.wikipedia.org/wiki/增益規劃 "wikilink")）、提昇性能（提高取樣率、精度及準度，若有需要加入低波濾波器），或是用多個串接的PID控制器。

### 線性

PID控制器常見的問題是在於其線性且對稱的特性，若應用在一些非線性的系統，其效果可能會有變化。以[暖通空調](../Page/暖通空調.md "wikilink")中常見的溫度控制，可能是採用主動加熱（用加熱器加熱），但冷卻是使用被動冷卻（不加熱，自然冷卻），其冷卻速度比加熱速度慢很多，輸出若有過衝，下降速度很慢，因此PID控制需調整為不會過衝的過阻尼，以減少或避免過衝，但這也延長了整定時間，使性能變差。

### 雜訊對微分器的影響

微分器的問題在於對量測或程序產生的高頻[雜訊](../Page/雜訊.md "wikilink")會有放大效果，因此會對輸出造成大幅的變動。因此真實的控制器不會有理想的微分器，只有一個有限頻寬的微分器或[高通濾波器](https://zh.wikipedia.org/wiki/高通濾波器 "wikilink")。一般為了移除高頻的雜訊，會在量測時加入[低通濾波器](https://zh.wikipedia.org/wiki/低通濾波器 "wikilink")，若低通濾波器和微分器對消，濾波效果也就受限了，因此低雜訊的量測設備相當重要。實務上可以使用[中值滤波器](../Page/中值滤波器.md "wikilink")，調昇濾波效率及實際上的性能\[17\]。有時可以將微分器關閉，對控制性能的影響不大，此時稱為PI控制器。

## PID演算法的修改

基本的PID演算法在一些控制應用的條件下有些不足，需進行小幅的修改。

### 積分飽和

[積分飽和](../Page/積分飽和.md "wikilink")是理想PID演算法實現時常見的問題。若設定值有大的變動，其積分量會有大幅的變化，大到輸出值被上下限限制而飽和，因此系統會有[過衝](https://zh.wikipedia.org/wiki/過衝 "wikilink")，而且即使誤差量符號改變，積分量變小，但輸出值仍被上下限限制，維持在上限（或下限），因此輸出看似沒有變化，系統仍會持續的過衝，一直要到輸出值落在上下限的範圍內，系統的回授量才會開始下降。此問題可以用以下方式處理：

  - 在[程序變數離開可控制範圍時](https://zh.wikipedia.org/wiki/程序變數 "wikilink")，暫停積分。
  - 讓積分值限制在一個較小的上下範圍內。
  - 重新計算積分項，使控制器輸出維持上下限之間的範圍內\[18\]。

### PI控制器

[PI_controller.svg](https://zh.wikipedia.org/wiki/File:PI_controller.svg "fig:PI_controller.svg")

PI控制器（比例-積分控制器）是不用微分單元的PID控制器。

控制器的輸出為

\[K_P \Delta + K_I \int \Delta\,dt\] 其中\(\Delta\)為設定值SP和量測值PV的誤差：

\[\Delta = SP - PV\].

PI控制器可以用[Simulink](../Page/Simulink.md "wikilink")或[Xcos之類的軟體進行建模](https://zh.wikipedia.org/wiki/Xcos "wikilink")，方式是使用「flow chart」圖框，其中用以下的拉氏運算子：

\[C=\frac{G(1+\tau s)}{\tau s}\] 其中

\[G = K_P\] = 比例增益

\[G/\tau = K_I\] = 積分增益

\(G\)值的選擇需在減少過衝以及增加安定時間之間取捨。

微分單元對輸入中的高頻信號格外敏感，PI控制器因為沒有微分單元，在訊號雜訊大時，在穩態時會更加穩定。但對狀態快速變化的反應較慢，因此相較於調適到最佳值的PID控制器，PI控制器會較慢到達設定值，受干擾後也比較慢恢復到正常值。

[PDF控制](../Page/PDF控制.md "wikilink")（pseudo-derivative feedback control）可以視為是PI控制器的變體，比例控制器的輸入由誤差值改為回授值\[19\]。

### 不動作區

許多PID迴路是控制機械元件（例如閥）。機械保養是一筆可觀的費用，磨損會使得機械在有輸入信號時出現靜摩擦或是[不動作區](https://zh.wikipedia.org/wiki/不動作區 "wikilink")，都會導致控制性能的下降。機械損耗的速度主要和設備多常改變其狀態有關。若磨損是主要考量的話，PID迴路可以有輸出的[遲滯現象](../Page/遲滯現象.md "wikilink")以減少輸出狀態的改變。若變化小，仍在不動作區內，讓控制器的輸出維持上一次的值。變化要大到超過不動作區，實際的狀態才會隨之變化。

### 設定值的步階變化

若系統的設定值有步階變化，比例單元和微分單元也會有對應的變化，特別是微分單元對於步階變化的輸出特別的大，因此有些PID演算法會配合以下的修改來處理設定值的變化。

  - 設定值斜坡變化
    此修改方式下，設定值會用線性或是一階濾波的方式，由原始值變到新的值，避免因為步階變化產生的[不連續](https://zh.wikipedia.org/wiki/不連續 "wikilink")。

<!-- end list -->

  - 只對[程序變數](https://zh.wikipedia.org/wiki/程序變數 "wikilink")（回授量）微分
    此修改下，PID控制器只針對量測的程序變數（PV）微分，不對誤差微分。程序變數是實際的物理量，較不易有瞬間的變化，而誤差可能因為設定值的步階變化而有瞬間變化。這也是一種簡單的設定值加權法。

<!-- end list -->

  - 設定值加權
    設定值加權分別調整在比例單元及微分單元中的誤差量，誤差量的設定值乘以一個0到1之間的加權，積分單元的誤差量需使用真實的設定值，以避免[穩態誤差](https://zh.wikipedia.org/wiki/穩態誤差 "wikilink")。這兩個參數不影響對負載變化及量測雜訊的響應，可以提昇對設定點變化的響應。

### 前饋控制

PID控制器若再配合[前饋控制](https://zh.wikipedia.org/wiki/前饋 "wikilink")（[開迴路控制](../Page/開迴路控制器.md "wikilink")），可以再提昇其控制性能。在前饋控制中考慮系統的已知資訊（例如理想加速度或是慣量），再將輸出加到PID控制器的控制輸出，以提昇整體的系統性能。前饋量可能是控制輸出主要的部份，而PID控制器只用來補償目標值和開迴路控制器輸出之間的誤差。因為前饋輸出不會受到回授的影響，因此也不會造成系統的振盪，可以在不影響穩定性的條件下提昇系統的響應。前饋可以依目標值及其他量測到的干擾量來產生，目標值加權是一種簡單的前饋控制方式。

例如，在大部份的運動控制系統中，為了要使機械負載加速，致動器要產生更大的力。若用速度環的PID控制器來控制負載速度，比較理想的方式是先得到理想的瞬間加速度值，適量調整加權後再加到PID的輸出中。因此控制器輸出中有一部份是不隨機械速度而改變的輸出，再用PID根據實際輸出和目標的差異去增加或是減少輸出。這類有前饋控制的PID控制器可以加快控制系統的反應速度。

### 無衝擊運轉

有時PID控制器會規劃為無衝擊（bumpless）的特性，在參數變化時重新計算適當的積分累計值，使輸出不會因參數變化有不連續的改變\[20\]。

## 串級PID控制器

二個PID控制器可以組合在一起，得到較佳的效果，這稱為串級PID控制。以兩個PID控制器組成的串級PID控制為例，其中一個PID控制器在外迴路，控制像液面高度或是速度等主要的物理量，另一個PID控制器是內迴路，以外迴路PID控制器的輸出做為其目標值，一般是控制較快速變化的參數，例如流量或加速度等。若利用串級PID控制，可以增加控制器的工作頻率，並降低其時間常數。

例如一個溫控的循環水浴設備有二個串級的PID控制器，分別有各自的熱電偶溫度感測器。外迴路的控制器控制水溫，其感測器距加熱器很遠，直接量測整體水溫，其誤差量是理想水溫及整體水溫的差值。外迴路PID控制器的输出即為內迴路控制器的目標值，內迴路控制器控制加熱器，其感測器是在加熱器上，其誤差量是加熱器的理想溫度及量測到溫度的差值，其輸出會使加熱器維持在設定值附近。

內外迴路控制器的參數可能會差很多，外迴路的PID控制器有較長的時間常數，對應所有的水加熱或是冷卻需要的時間。內迴路的PID控制器反應會比較快。每個控制器可以調整到符合其真正控制的系統，例如水槽中所有的水，或是加熱器本身。

## 其他PID的形式及其表示法

### 理想的PID及標準形PID

工業上常看到PID控制器，而許多工業相關資料中看到的都是「標準形」的PID，其中比例增益\(K_p\)也作用在\(I_{\mathrm{out}}\)及\(D_{\mathrm{out}}\)兩項，和上述「理論」段落看到的形式不同。「標準形」的PID為：

\[\mathrm{MV(t)}=K_p\left(\,{e(t)} + \frac{1}{T_i}\int_{0}^{t}{e(\tau)}\,{d\tau} + T_d\frac{d}{dt}e(t)\right)\] 其中

\[T_i\]為積分時間

\[T_d\]為微分時間

在標準形中，每一個參數有其明確的物理意義，輸出是根據現在誤差、過去誤差及未來誤差而決定，加上微分項可以預測若控制系統不改變的話，\(T_d\)時間後的誤差，而積分項是用過去所有誤差的和來調整輸出，希望在\(T_i\)時間後可以完全消除誤差，而輸出的值會再乘以單一的增益\(K_p\)。

在理想的平行式PID中，其方程如下：

\[\mathrm{MV(t)}=K_p{e(t)} + K_i\int_{0}^{t}{e(\tau)}\,{d\tau} + K_d\frac{d}{dt}e(t)\]

其中的增益和標準形PID係數的關係是：\(K_i = \frac{K_p}{T_i}\)及\(K_d = K_p T_d \,\)。平行式PID中的參數都視為單純的增益，最泛用，靈活性也最高，但較沒有物理意義，因此只用在PID的理論處理中，標準形PID雖在數學上比較複雜，在工業中較常使用。

### 倒數增益

許多情形下，PID控制器處理的變數是無因次的量，是某個最大值的比例，介於0到100%之間，而轉換為實際物理量（如泵浦速率或是水加熱的功率）是在PID控制器外，而這些控制變數是有因次的物理量（例如溫度）。此時\(K_p\)增益多半不會表示為「每變化一度的輸出」，而會以溫度的形式\(1/K_p\)表示，代表「100%輸出下的溫度（變化）」，代表輸出由0變到1（0%變為100%）下的溫度變化。

### 只針對過程變數進行微分控制

在大部份的商業控制系統中，是用過程變數取代誤差作為微分項的輸入，其原因是當目標值有不連續變化時，微分控制會產生很大的突波，若目標值不變，改變過程變數的效果和改變誤差相同，因此有些PID控制器會用過程變數作為微分項的輸入，不會影響控制器控制過程變數，抗雜訊的能力。

\[\mathrm{MV(t)}=K_p\left(\,{e(t)} + \frac{1}{T_i}\int_{0}^{t}{e(\tau)}\,{d\tau} - T_d\frac{d}{dt}PV(t)\right)\]

### 只針對過程變數進行微分及比例控制

大部份的商業控制系統也提供選擇，讓過程變數作為微分控制及比例控制的輸入，因此誤差只作為積分控制的輸入，這也不會影響控制器控制過程變數，抗雜訊的能力。

上述的修改可以避免目標值有不連續變化時，輸出值有對應不連續的變化，若目標值有步階變化，這項調整就相當重要。

\[\mathrm{MV(t)}=K_p\left(\,{-PV(t)} + \frac{1}{T_i}\int_{0}^{t}{e(\tau)}\,{d\tau} - T_d\frac{d}{dt}PV(t)\right)\]

也有些雙自由度（2-DoF）PID控制架構除了一般的PID控制外，再加上只針對過程變數進行的微分及比例控制，再分別用增益進行調整，目標是同時對目標步階響應以及雜訊抑制都有良好的性能\[21\]。

### PID控制器的拉氏轉換

有關會將PID控制器進行[拉氏轉換](https://zh.wikipedia.org/wiki/拉氏轉換 "wikilink")：

\[G(s)=K_p + \frac{K_i}{s} + K_d{s}=\frac{K_d{s^2} + K_p{s} + K_i}{s}\]

PID控制器的拉氏轉換也代表著控制器的[傳遞函數](https://zh.wikipedia.org/wiki/傳遞函數 "wikilink")，因此可以確認整體系統的傳遞函數。

### PID的極零點對消

PID控制器可以寫成以下的形式

\[G(s)=K_d \frac{s^2 + \frac{K_p}{K_d}s + \frac{K_i}{K_d}}{s}\] 若受控設備的傳遞函數如下：

\[H(s)=\frac{1}{s^2 + 2\zeta \omega_0 s + \omega_0^2}\]

又令

\[\frac{K_i}{K_d}=\omega_0^2\]

\[\frac{K_p}{K_d}=2\zeta \omega_0\] 則

\[G(s) H(s)=\frac{K_d}{s}\]

因此若受控設備有不穩定的極點，看似可以用此方式消除，不過實際上有些差異，由干擾到輸出的閉迴路傳遞函數中仍有不穩定的極點，因此仍可能會發散。

### 串級型或交互型

另一種PID控制器的表示法為串級型（series）或稱為交互型（interacting）

\[G(s) = K_c \frac{(\tau_i{s}+1)}{\tau_i{s}} (\tau_d{s}+1)\] 其中參數和標準型的參數有以下的關係

\[K_p = K_c \cdot \alpha\], \(T_i = \tau_i \cdot \alpha\)

\[T_d = \frac{\tau_d}{\alpha}\] 而

\[\alpha = 1 + \frac{\tau_d}{\tau_i}\].

上述作法可表示為二個串級的PD控制器及PI控制器，在早期類比電路的時代較容易實現，雖然控制器已經數位化，不過仍有些維持此形式。

### 離散化的控制器

若要在[微處理機](https://zh.wikipedia.org/wiki/微處理機 "wikilink")（MCU）或是[FPGA中實現PID控制或是分析其性能](https://zh.wikipedia.org/wiki/FPGA "wikilink")，就需要將控制器離散化\[22\]。一階微分可以用後向[有限差分表示](https://zh.wikipedia.org/wiki/有限差分 "wikilink")，積分項也離散化，若取樣時間為\(\Delta t\)，積分項可以用下式近似

\[\int_{0}^{t_k}{e(\tau)}\,{d\tau} = \sum_{i=1}^k e(t_i)\Delta t\]

微分項可近似為

\[\dfrac{de(t_k)}{dt}=\dfrac{e(t_k)-e(t_{k-1})}{\Delta t}\]

因此PID控制器的離散化可以將\(u(t)\)微分，再用一階導數及二階導數的定義求得\(u(t_k)\)，可以得到

\[u(t_k)=u(t_{k-1})+K_p\left[\left(1+\dfrac{\Delta t}{T_i}+\dfrac{T_d}{\Delta t}\right)e(t_k)+\left(-1-\dfrac{2T_d}{\Delta t}\right)e(t_{k-1})+\dfrac{T_d}{\Delta t}e(t_{k-2})\right]\]

其中\(T_i = K_p/K_i, T_d = K_d/K_p\)

## 虛擬码

以下是一段實現PID演算法的虛擬码：\[23\]

`previous_error = 0`
`integral = 0 `
`start:`
`  error = setpoint - measured_value`
`  integral = integral + error*dt`
`  derivative = (error - previous_error)/dt`
`  output = Kp*error + Ki*integral + Kd*derivative`
`  previous_error = error`
`  wait(dt)`
`  goto start`

此例中有兩個變數在[迴圈](../Page/迴圈.md "wikilink")前需[初始化](../Page/初始化.md "wikilink")為0，然後開始迴圈。目前的誤差（error）是用目前目標值（setpoint）減去系统反馈值（measured_value）而得，然後再進行[積分和](https://zh.wikipedia.org/wiki/積分 "wikilink")[微分](../Page/微分.md "wikilink")運算，比例項、積分項及微分項乘以各自參數後得到輸出（output）。在實際系統中，這會透過[數位類比轉換器](../Page/數位類比轉換器.md "wikilink")轉換為類比訊號，作為受控系統的控制量。目前的誤差量及積分會儲存，以便下次計算微分及積分時使用，程式會等待dt秒後開始，迴圈繼續進行，透過[類比數位轉換器](../Page/類比數位轉換器.md "wikilink")讀取新的系统反馈值及目標值，再計算誤差量及輸出\[24\]。

## 参见

  - [控制理论](../Page/控制理论.md "wikilink")
  - [反馈](../Page/反馈.md "wikilink")
  - [不穩定](https://zh.wikipedia.org/wiki/不穩定 "wikilink")
  - [振荡](../Page/振荡.md "wikilink")

## 注释

## 参考文献

  -
## 外部链接

  - [改善PID微分和积分的方法及其它控制系统的计算机自动设计CAutoD](https://web.archive.org/web/20160507233728/http://userweb.eng.gla.ac.uk/yun.li/ga_demo/)
  - [学习PID和其他系统调试是如何工作的](http://www.bin95.com/PID_Process_Control_Saint-Louis.htm)
  - [PID控制器实验室，PID调试的Java applets](http://www.pidlab.com)
  - [一系列的PID调试的Java Applets](https://web.archive.org/web/20060327160331/http://ae.tut.fi/~juke/java/pidtuning/)
  - [PID调试的问答](https://web.archive.org/web/20060616045146/http://www.tcnj.edu/~rgraham/PID-tuning.html)
  - [PID控制系统算法的信息和教程](https://web.archive.org/web/20060417151518/http://www.jashaw.com/pid/)
  - [用Excel模拟基本的PID](https://web.archive.org/web/20060413081016/http://www.htservices.com/Applications/Process/PID2.htm)
  - [如果用电子部件制作一个PID控制器](https://web.archive.org/web/20060417114838/http://asl.epfl.ch/research/projects/VtolIndoorFlying/rapports/rapportSemStauffer.pdf)查看22页
  - [关于PID控制器的文章，教材](http://www.expertune.com/r2.asp?f=Wikipedia&l=articles.html)
  - [一个控制系统的一部分](https://web.archive.org/web/20060417135557/http://www.industrial-electricity.com/open-and-closed-loop-feedback-systems-2-Parts-Typical-Control-System.html)
  - [PID定速控制應用](http://4rdp.blogspot.com/2008/05/pid-speed-control.html)
  - [PID馬達定速與定角控制公式比較](http://4rdp.blogspot.com/2008/12/apply-pid-to-control-lego-nxts-speed.html)
  - [Ang, K.H., Chong, G.C.Y., and Li, Y. (2005)， **PID control system analysis, design, and technology**. *IEEE Transactions on Control Systems Technology*, 13 (4). pp. 559-576. ISSN 1063-6536](http://eprints.gla.ac.uk/3817/1/IEEE3.pdf)
  - [Understanding Servo Tune(其中包括PID調整方法範例)](http://www.ni.com/product-documentation/2923/en/)
  - [LabView360技術文章 PID](http://labview360.com/article/info.asp?TID=10149&FID=165)

{{-}}

[de:Regler\#PID-Regler](https://zh.wikipedia.org/wiki/de:Regler#PID-Regler "wikilink")

[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink") [Category:控制工程](https://zh.wikipedia.org/wiki/Category:控制工程 "wikilink") [Category:控制器](https://zh.wikipedia.org/wiki/Category:控制器 "wikilink") [Category:经典控制](https://zh.wikipedia.org/wiki/Category:经典控制 "wikilink")

1.  \[<http://eprints.gla.ac.uk/3816/1/IEEE2pdf.pdf>, Li, Y., Ang, K.H., and Chong, G.C.Y. (2006) **Patents, software and hardware for PID control: an overview and analysis of the current art**. *IEEE Control Systems Magazine*, 26 (1). pp. 42-54. ISSN 0272-1708 (doi:10.1109/MCS.2006.1580153)\]

2.
3.

4.

5.

6.

7.

8.

9.

10.

11.
12.
13. Li, Y., et al. (2004) CAutoCSD - Evolutionary search and optimisation enabled computer automated control system design, Int J Automation and Computing, vol. 1, No. 1, pp. 76-88. ISSN 1751-8520. <http://userweb.eng.gla.ac.uk/yun.li/ga_demo/>

14. Ang, K.H., Chong, G.C.Y., and Li, Y. (2005). PID control system analysis, design, and technology, *IEEE Trans Control Systems Tech*, 13(4), pp.559-576. <http://eprints.gla.ac.uk/3817/1/IEEE3.pdf>

15. Y Li, KH Ang, GCY Chong, Patents, software, and hardware for PID control: An overview and analysis of the current art, Control Systems, IEEE, 26 (1), 42-54. <http://eprints.gla.ac.uk/3816/1/IEEE2pdf.pdf>

16.
17. [Li, Y. and Ang, K.H. and Chong, G.C.Y. (2006) PID control system analysis and design - Problems, remedies, and future directions. IEEE Control Systems Magazine, 26 (1). pp. 32-41. ISSN 0272-1708](http://eprints.gla.ac.uk/3815/1/IEEE_CS_PID_01580152.pdf)

18.

19.

20.

21. [Two-Degree-of-Freedom PID Controllers Mituhiko Araki and Hidefumi Taguchi](http://ijcas.com/admin/paper/files/401-411.pdf)

22.

23.

24.