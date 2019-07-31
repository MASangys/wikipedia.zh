**S轉換**(s-transform)，或**S變換**是一種[時頻分析](../Page/時頻分析.md "wikilink")的工具。

和其他時頻分析工具一樣，透過S轉換，我們可以同時從[時域以及](https://zh.wikipedia.org/wiki/時域 "wikilink")[頻域](../Page/頻域.md "wikilink")觀察一個信號的能量分布。S轉換的特別之處在它既保持與[傅立葉變換的直接關係](https://zh.wikipedia.org/wiki/傅立葉變換 "wikilink")，又可在不同頻率有不同的解析度。此外，S轉換與[小波轉換](https://zh.wikipedia.org/wiki/小波轉換 "wikilink")（wavelet transform）有密切的關係，或可視為[連續小波轉換](../Page/連續小波轉換.md "wikilink")（continuous wavelet transform）的變形。S轉換的清晰度略優於[加伯轉換](../Page/加伯轉換.md "wikilink")（Gabor transform），而不如[韋格納分佈](https://zh.wikipedia.org/wiki/韋格納分佈 "wikilink")（Wigner distribution function）、[科恩克萊斯分佈](https://zh.wikipedia.org/wiki/科恩克萊斯分佈 "wikilink")、[改良式韋格納分佈](https://zh.wikipedia.org/wiki/改良式韋格納分佈 "wikilink")（Modified Wigner distribution function）。

## 定義

一個信號x(t)的S轉換為
\[S_x(t,\,f)=\int_{-\infty}^{\infty} x(\tau)\,|f|\,e^{-\pi(t-\tau)^2f^2} e^{-j2\pi f\tau}\, d\tau\] 其中[窗函數為高斯窗函數](https://zh.wikipedia.org/wiki/窗函數 "wikilink")

\[w(t,f) = |f|e^{-\pi t^2f^2}\]

### 另種表示-頻譜表示式

藉著[摺積定理](https://zh.wikipedia.org/wiki/摺積定理 "wikilink")

\[x(t)\ast h(t) = \mathcal{F}^{-1}(X(f)\cdot H(f))\] S轉換能以頻域 \(X(f)\) 表示，
\[S_x(t,f) = \int_{-\infty}^{\infty} (x(\tau) e^{-j2 \pi f \tau})(|f|e^{- \pi (t- \tau)^2 f^2})\, d\tau\] 这里可将\(S_x(t,f)\)看成\(x(t) e^{-j2 \pi ft}\)与\(|f|e^{-\pi t^2 f^2}\)的卷积，
將\(x(\tau) e^{-j2 \pi f \tau}\) 以及 \(|f|e^{-\pi (t-\tau)^2 f^2}\)分別取[傅立葉變換可得](https://zh.wikipedia.org/wiki/傅立葉變換 "wikilink")

\[S_x(t,f) = \int_{-\infty}^{\infty} X(f+\alpha)\,e^{-\pi\alpha^2 /f^2}\,e^{j2\pi\alpha t}\, d\alpha\]

## 逆S轉換(inverse S-transform)

S轉換可以沿著時間軸方向積分，將可以得到\(x(t)\)的頻譜\(X(f)\)。推導如下，
利用Gaussian window所包含面積等於1的特性，

\[\int_{-\infty}^{\infty}|f|e^{-\pi (t-\tau)^2 f^2}\, dt= |f|\int_{-\infty}^{\infty}e^{-\pi (t-\tau)^2 f^2}\, dt= 1\] 因此，沿著時間軸t積分，

\[\int_{-\infty}^{\infty}S_x(t,f)\, dt = \int_{-\infty}^{\infty} x(\tau) \left[\int_{-\infty}^{\infty} |f|\,e^{-\pi(t-\tau)^2f^2}\, dt\right]\,e^{-j2\pi f\tau}\, d\tau = X(f)\] 這表示S頻譜是可逆的，同時也提供一個簡單的逆轉換。
\[x(\tau) = \int_{-\infty}^{\infty}\left[\int_{-\infty}^{\infty}S_x(t,f)\, dt\right]\,e^{j2\pi f\tau}\, df\]

\[= \int_{-\infty}^{\infty}X(f)\,e^{j2\pi f\tau}\, df\]

### 濾波應用(Filtering)

S轉換如同其他時頻分析轉換，皆可以設計波器來達到消除雜訊留下訊號的功用，
利用逆S轉換，我們可以設計一個S域的濾波器*U(t,f)*，對x(t)進行訊號處理
\[x_{filter}(\tau) = \int_{-\infty}^{\infty}\left[\int_{-\infty}^{\infty}S_x(t,f)\cdot U(t,f) \, dt\right]\,e^{j2\pi f\tau}\, df\]

## 離散時間S轉換

**S轉換**相較於**加伯轉換**，雖在清晰度有較好的改善，但也有其缺點，就是運算複雜度變高，積分的範圍會隨著\(f\,\)的增加而增加。
因此，這裡利用上面推導的**頻譜**表示式來推導**離散時間S轉換**
頻譜表示式

\[S_x(t,f) = \int_{-\infty}^{\infty} X(f+\alpha)\,e^{-\pi\alpha^2 /f^2}\,e^{j2\pi\alpha t}\, d\alpha\]
令\(t = n\Delta_{T}\,\, f = m\Delta_{F}\,\, \alpha = p\Delta_{F}\)
\[\Delta_{T}\,\]表示取樣時間間隔\(, \Delta_{F}\,\)表示取樣頻率
如果要使用FFT的方式來實作，必須另加條件

\[\Delta_{T} \cdot \Delta_{F}=1/N\] 首先先對\(x(t)\)做傅立葉變換得到\(X(f)\)
\[X[m\Delta_{F}]=\frac{1}{N}\,\sum_{k=0}^{N-1}x[k\Delta_{T}]\,e^{\frac{-j2\pi mk}{N}}\]
接著帶入頻譜表示式中，
\[S_{x}(n\Delta_{T}\, ,m\Delta_{F}) = \sum_{p=0}^{N-1} X[(p+m)\,\Delta_{F}]\,e^{-\pi\frac{p^2}{m^2}}\,e^{\frac{j2pn}{N}}\] 當 m=0 時，S轉換就定義成

\[S_{x}(n\Delta_{T}\, ,0)= \frac{1}{N}\,\sum_{k=0}^{N-1}x[k\Delta_{F}\]\]

### 流程

Step1 : 計算\(X[p\Delta_{F}]\,\),這個步驟只需要計算一次。
Step2 : 計算\(e^{-\pi \frac{p^2}{m^2}}\)for \(f=m\Delta_{F}\)
Step3 : 將\(X[p\Delta_{F}]\)移動至\(X[(p+m)\Delta_{F}]\)
Step4 : 將Step2,Step3的結果相乘得到

\[B[m,p] = X[(p+m)\Delta_{F}]\cdot e^{-\pi \frac{p^2}{m^2}}\]
Step5 : 對B\[m,p\]取**逆離散傅立葉變換**(IDFT)可得到，\(S_{x}(n\Delta_{T}\, ,m\Delta_{F})\)在\(f=m\Delta_{F}\)的行向量
Step6 : 重複Step2\~5直到\(S_{x}(n\Delta_{T}\, ,m\Delta_{F})\)全部定義完成。

## S轉換特性

S轉換與加伯轉換(Gabor Transform)很相似，

\[G_{x}(t,f)=\int_{-\infty}^{\infty}x(\tau)\,e^{-\pi (t-\tau)^2} e^{-j2\pi f \tau}\, d\tau\]

\[S_{x}(t,f)=\int_{-\infty}^{\infty}x(\tau)\,|f|e^{-\pi (t-\tau)^2 f^2} e^{-j2\pi f \tau}\, d\tau\] 唯一的不同就在於S轉換的Gaussian Window的寬度會隨著\(f\)改變。
{| class="wikitable" |- | 低頻 || 時域解析度差 || 頻域解析度佳 |- | 高頻 || 頻域解析度差 || 時域解析度佳 |} 原因就是\(f\,\)在高頻時，Gaussian Window寬度變小，時域解析度好；反之，\(f\,\)在低頻時，Gaussian Window寬度變寬，頻域解析度好。
但是，當\(f\rightarrow0\)時，Gaussian Window會無窮無盡的變寬，就喪失時頻分析只做局部分析的精神。
一種解決的方式是:使Gaussian Window寬度不再因\(f^2\,\)改變\\，產生頻寬劇烈的變化，
**S轉換一般式**

\[S_{x}(t,f)=|s(f)|\int_{-\infty}^{\infty}x(\tau)\,e^{-\pi (t-\tau)^2 s^2(f)} e^{-j2\pi f \tau}\, d\tau\]

\[s(f)\]是一個相對平緩的曲線(見底下示意圖)，當\(f\rightarrow0\)時，\(s(f)\neq 0\)
S轉換是一種運算量高的時頻分析工具，尤其在低頻部分，Gaussian Window寬度變寬，頻域解析度比加伯轉換來的好，所以S轉換對於低頻訊號分析比較有優勢
例如:聲音訊號，人耳對高頻的部分沒有太特別的感覺，但在低頻部分卻比較敏感，如:中央Do = 262Hz,高八度Do = 512Hz 可以很清楚的聽出兩個不同的音， 但10000Hz 和 10170Hz對人來說差別不大，再說人耳對3KHz以內的聲音最敏感，所以能分析低頻訊號就顯得重要。
此時，就可以使用S轉換，來強調低頻訊號，而犧牲高頻訊號。 [StransformSf.jpg](https://zh.wikipedia.org/wiki/File:StransformSf.jpg "fig:StransformSf.jpg")

## 與韋格納分佈的比較

韋格納分佈是時頻分析工具中，具有高清晰度的一個，但最大的缺點是有交叉項（cross-term）的問題。若一個信號是由數個信號成份組合而成，那麼使用韋格納分佈來分析時就會受到兩兩信號成份之間的交叉項干擾，这将会产生一些不必要的噪声。一個信號x的韋格納分佈為

\[W_x(t,f)= \int_{-\infty}^{\infty} x(t+\frac{\tau}{2})x^*( t-\frac{\tau}{2})e^{-j2\pi\tau f}\, d\tau\] 交叉項是在積分中兩個x項相乘時產生的。S轉換的計算原理與韋格納分佈不同，是直接對\(x(\tau)\)進行轉換，不會有交叉項的問題。

## 與加伯轉換的比較

加伯轉換的定義為

\(G_x(t,f)=\int_{-\infty}^{\infty} x(\tau)e^\left [ -\pi(t-\tau)^2f^2 \right ]e^\left ( -j2\pi f\tau \right )d\tau\)

我們知道加伯轉換是短時距傅立葉轉換的一種特殊形式，其中只要把短時距傅立葉轉換的窗函數用高斯函數來替代就成了加伯轉換；S轉換則可視為一種窗函數會隨f變化的加伯轉換；隨著頻率的升高，高斯函數在時域上的寬度會越來越窄，使得時域上的解析度會增加，反之犧牲頻域上的解析度。

加伯轉換和S轉換原理相同，兩者唯一不同的地方就是窗函數的\(f^2\)和強度\(f\)，基本上都是由短時距傅立葉轉換延伸而來；兩者共有的好處是不會像韋格納分布一樣會有交叉項；又S轉換在低頻時的頻率解析度會優於加伯轉換。

## 與小波轉換的關係

連續小波轉換可以視為將一個信號對小波做[相關](https://zh.wikipedia.org/wiki/相關 "wikilink")（correlation）：
\[W(\tau,\,d)=\int_{-\infty}^{\infty} x(t)\,W(t-\tau,\,d))\, dt\] 而S轉換可以視為連續小波轉換乘上一個相位項：
\[S(\tau,\,f)=e^{-j2\pi\tau f}W(\tau,\,d)\] 而其用的母小波為：
\[w(t,\,f)=|f|\,\exp[-\pi t^2f^2] \exp[-j2\pi ft]\]

## S轉換，加伯轉換和短時距傅立葉轉換的比較

假設我們想要對一訊號\(x(t)\)做時頻分析

\(x(t)=cos(2\pi t), t<10,\)

\(x(t)=cos(2\pi t), 10\leq t <20,\)

\(x(t)=cos(2\pi t), 20\leq t.\)

如果使用一個寬度為1秒的矩形函數來做短時距傅立葉轉換會得到 [无](https://zh.wikipedia.org/wiki/File:Rect_s.png "fig:无") 如果使用一個加伯轉換會得到時頻分析圖 [无](https://zh.wikipedia.org/wiki/File:Gabor.png "fig:无") 如果用S轉換會得到時頻分析圖 [无](https://zh.wikipedia.org/wiki/File:St0.png "fig:无") 由上三圖可知，S轉換是一個在低頻時頻域解析度高，高頻時時域解析度高的時頻分析；舉例來說，對於100Hz與300Hz和1000Hz和1200Hz這兩組聲音，哪一組對於人耳會有明顯的差異呢? 答案是100Hz和300Hz，低頻時的頻率差異對於人耳較明顯，當頻率越高時，人耳就越難分辨出頻率的差異；同樣的道理，S轉換便符合我們的需求，低頻時訊號變化慢擁有低的時域解析度和擁有高的頻域解析度，高頻時因為訊號變化很快則擁有高的時域解析度和低的頻域解析度。

## 參考文獻

  - R. G. Stockwell, L. Mansinha, and R. P. Lowe, "Localization of the complex spectrum: the S transform," *IEEE Trans. Signal Processing,* vol. 44, no. 4, pp. 998–1001, Apr. 1996.
  - Jian-Jiun Ding, Time frequency analysis and wavelet transform class note, the Department of Electrical Engineering, National Taiwan University (NTU), Taipei, Taiwan, 2010.
  - Sitanshu Sekhar, Ganapati Panda and Nithin V George, "An Improved S-Transform for Time-Frequency Analysis," "IACC2009", pp. 315-319, March 2009.

[Category:積分變換](https://zh.wikipedia.org/wiki/Category:積分變換 "wikilink")