## 簡介

GPS信號擷取的目的在於獲知所得到的衛星為何，若是有某顆衛星資訊是可得知的，則必須取得此信號的兩個性質：

  - 頻率

從規格可以得知L1的頻率為1575.42 Mhz，L2的頻率為1227.60
MHz，之後的討論皆以L1做討論，L1的信號經過一連串的處理之後，頻段IF=9.548
MHz，從特定衛星得到的頻率並不一定是如規格所給予，而是因為有相對運動的關係，在頻率上產生[都卜勒效應](https://zh.wikipedia.org/wiki/都卜勒效應 "wikilink")，因為衛星的移動，假設GPS接收機靜止接收GPS信號，都卜勒效應所影響的範圍大約為5
kHz，如果GPS接收機也處於高速移動的狀態下，都卜勒效應所影響的頻率可能會到達10 kHz。　　　

  - 碼相位

碼相位代表[C/A 碼開始的正確資料區塊](https://zh.wikipedia.org/wiki/C/A_碼 "wikilink")

目前來說，做GPS信號擷取的方法都是根據GPS信號的特質來做處理，衛星信號是由32個不同的偽隨機雜訊（Pseudorandom
Noise,PRN）序列區隔，而上述所說的特質就是指這些偽隨機雜訊序列的彼此之間的幾乎沒有[互相關](https://zh.wikipedia.org/wiki/互相關 "wikilink")，只有自己本身和自己只有在沒有延遲的情況下，[自相關函數才會有極值](https://zh.wikipedia.org/wiki/自相關函數 "wikilink")。假設接收到的信號\(\mathit{s}\)是由\(\mathit{n}\)個可得知的衛星信號組合而成。

`     `\(s(t)=s^1(t)+s^2(t)+...+s^n(t)\)

會運用接收機本身的偽隨機雜訊序列產生器產生\(k\)衛星的偽隨機雜訊序列，再透過改變碼相位和[振盪器所產生的載波頻率不同](https://zh.wikipedia.org/wiki/振盪器 "wikilink")，來與接收到的信號做處理比對，而這幾種方法分別為：

  - 直接搜尋（Serial Search）
  - 平行頻率空間搜尋（Parrallel Frequency Space Search）
  - 平行碼相位搜尋（Parrallel Code Phase Search）

## 直接搜尋(Serial Search)

[直接搜尋.jpg](https://zh.wikipedia.org/wiki/File:直接搜尋.jpg "fig:直接搜尋.jpg")
右圖1即為直接搜尋演算法的流程圖，從圖1可以看到由接收機先產生特定衛星的偽隨機雜訊序列和本身的振盪器產生載波信號，所產生的碼相位範圍是從0\~1022，輸入的信號在與偽隨機雜訊（PRN）序列相乘後，再跟載波信號相乘，此處的載波信號分為兩個，一個是振盪器所產生的載波信號，另一個則是產生的載波信號加上一個\(90^o\)的相位差。
接下來將所得到的信號I、Q對時間1毫秒做[積分](https://zh.wikipedia.org/wiki/積分 "wikilink")，最後再平方相加得到信號的能量，若所得到的能量超過所設定的標準，則頻率和碼相位參數就是正確的，接著就會把這些參數傳遞到[GPS信號追蹤](https://zh.wikipedia.org/wiki/GPS信號追蹤 "wikilink")（GPS
Signal Tracking）的演算法。

從流程圖可以發現，直接搜尋演算法改變的有兩個方面，一個是頻率方面，選擇所有可能的載波頻率，範圍是在IF±10 kHz，每一區隔為500
Hz，另一個就是碼相位方面，選擇所有可能的1023個碼相位，因此，有種類似在二維空間中找尋一點的概念，總共需要的次數為：

　　　　\((2*({10000 \over 500})+1)*1023=41*1023=41943\)

很明顯的，這是一個極大的數字，這麼大的一個數字就是直接搜尋演算法的弱點，而此演算法的優點在於可以很直接的實現，通常是應用在硬體的GPS上。

## 平行頻率空間搜尋(Parallel Frequency Space Search)

[平行頻率空間搜尋.jpg](https://zh.wikipedia.org/wiki/File:平行頻率空間搜尋.jpg "fig:平行頻率空間搜尋.jpg")
直接搜尋的演算法的缺點在於花費時間往兩方面去搜尋所有可能的值，要是有一方面的因素可以消除，又或者是可以平行的進行搜尋，則演算法程序的效能會大大的提升。從平行頻率空間搜尋演算法的名稱，可以大概猜測到此演算法應當就是省略去頻率空間的搜尋，圖2即為此演算法的方塊圖。

如圖2所示，輸入信號首先和接收機本身所產生的特定衛星的偽隨機雜訊序列相乘，碼相位分別為0\~1022總共1023種，所得到的信號再利用[傅立葉變換從時域轉換到頻域](https://zh.wikipedia.org/wiki/傅立葉變換 "wikilink")，這裡的傅立葉變換可用[離散傅立葉變換或是](https://zh.wikipedia.org/wiki/離散傅立葉變換 "wikilink")[快速傅立葉變換](https://zh.wikipedia.org/wiki/快速傅立葉變換 "wikilink")，當輸入信號與接收機本身所產生的信號完美的相關之時（意即同樣的偽隨機雜訊序列而且沒有延遲。），傅立葉變換後得到的極值落點的頻率，代表的就是載波信號的頻率。

所得到頻率的精確度決定于離散傅立葉變換的長度，長度代表了在分析資料裡的[取樣數](../Page/取樣.md "wikilink")，要是1毫秒的資料被分析，則取樣數與取樣頻率的關係為1比1000，也就是說，當[取樣頻率](https://zh.wikipedia.org/wiki/取樣頻率 "wikilink")\(\mathit{f_s}=10 MHz\)，則取樣數\(\mathit{N}=10,000\)。

在離散傅立葉變換的長度為10000，前 N/2 個輸出取樣代表了從 0 到
\(\frac{f_s}{N}\)Hz，意即輸出頻率的[解析度為](https://zh.wikipedia.org/wiki/解析度 "wikilink")：

\(\Delta f=\frac{f_s/2}{N/2}=\frac{f_s}{N}\)

因為\(\mathit{f_s}=10 MHz\)，所以頻率的解析度就是

\(\Delta f=\frac{10Mhz}{10000}\)

與直接搜尋演算法比較，直接搜尋演算法搜尋碼相位和頻率兩方面的所有可能，平行頻率空間搜尋演算法只從1023個不同的碼相位著手，理論上來說是會比直接搜尋演算法來的快，但是因為在平行頻率空間演算法中需要用到傅立葉變換，所以乘法器和加法器運用會較多，因此在硬體上還是以直接搜尋演算法應用較多。

## 平行碼相位搜尋(Parallel Code Phase Search)

[平行碼相位搜尋2.jpg](https://zh.wikipedia.org/wiki/File:平行碼相位搜尋2.jpg "fig:平行碼相位搜尋2.jpg")
從直接搜尋演算法的式子內可以發現，佔比較大部分的反而是1023次的碼相位搜尋，平行頻率搜尋演算法省去了41種頻率的搜尋，而要是省略的是1023種碼相位的搜尋，可想而知的是一定會更加有效率，最近的GPS接收機就開始使用了上述所提的概念，叫做平行碼相位搜尋演算法。
信號擷取的目標就是要將輸入信號和接收機本身產生的偽隨機雜訊序列做相關運算，於是我們用[圓形相關運算](https://zh.wikipedia.org/wiki/圓形相關運算 "wikilink")（circular
correlation）取代了原本的1023種碼相位的搜尋。有限長度\(N\)序列 \(x(n)\)與\(y(n)\)的離散傅立葉變換如下：

\(X(k)=\sum_{n=0}^{N-1} x(n) e^{-j2\pi kn/N}\)

\(Y(k)=\sum_{n=0}^{N-1} y(n) e^{-j2\pi kn/N}\)

這兩個信號的圓形相關運算序列\(z(n)\)為：

\(z(n)= \frac{1}{N}\sum_{m=0}^{N-1} x(m)y(m+n) = \frac{1}{N}\sum_{m=0}^{N-1} x(-m)y(m-n)\)

在底下式子省略了\(\frac{1}{N}\)，\(z(n)\)的\(N\)點傅立葉變換可以表示為：

\(Z(k)=\sum_{n=0}^{N-1} \sum_{m=0}^{N-1} x(-m)y(m-n) e^{-j2\pi kn/N}=\sum_{m=0}^{N-1} x(m) e^{j2\pi km/N} \sum_{N=0}^{N-1} Y(m+n) e^{-j2\pi k(m+n)/N}=X^{*}(k)Y(k)\)

\(X^{*}(k)\)是指\(X(k)\)的[共軛複數](https://zh.wikipedia.org/wiki/共軛 "wikilink")（Complex
Conjugate），整個演算法的流程如右圖3所示，輸入信號先與接收機本身震盪器產生的載波頻率相乘，得到了\(I\)
信號和與其相位差\(90^o\)的信號\(Q\) 這兩個信號組成了複數的信號

\(x(n)=I(n)+jQ(n)\)

接著再做離散傅立葉變換，而接收機本身所產生的偽隨機雜訊序列去做傅立葉變換後得到的信號取共軛，這兩個信號做相乘，再做[反傅立葉變換](https://zh.wikipedia.org/wiki/反傅立葉變換 "wikilink")，得到的信號是在時域的，而再取絕對值平方項，若有極值，極值所在的點即為碼相位。跟之前演算法做比較，此演算法只搜尋了41種頻率，效率更是大大的提升，但是由於要做傅立葉變換和反傅立葉變換，在硬體實現上亦有困難處所在。

## 參見

  - [全球定位系統](https://zh.wikipedia.org/wiki/全球定位系統 "wikilink")
  - [GPS信號](https://zh.wikipedia.org/wiki/GPS信號 "wikilink")
  - [C/A 碼](https://zh.wikipedia.org/wiki/C/A_碼 "wikilink")
  - [傅立葉變換](https://zh.wikipedia.org/wiki/傅立葉變換 "wikilink")

## 參考文獻

Kai Borre, Dennis M. Akos, Nicolaj Bertelsen, Peter Rinder, Soren Holdt
Jensen。《A Software-Defined GPS and Galileo Receiver: A Single-Frequency
Approach》\[M\]。Birkhäuser Boston，2006年。

[en:GPS signals\#Coarse/Acquisition
code](https://zh.wikipedia.org/wiki/en:GPS_signals#Coarse/Acquisition_code "wikilink")

[Category:衛星導航系統](https://zh.wikipedia.org/wiki/Category:衛星導航系統 "wikilink")