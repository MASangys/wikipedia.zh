在[量子力學裏](https://zh.wikipedia.org/wiki/量子力學 "wikilink")，**WKB近似**是一種半經典計算方法，可以用來解析[薛丁格方程式](https://zh.wikipedia.org/wiki/薛丁格方程式 "wikilink")。[喬治·伽莫夫使用這方法](https://zh.wikipedia.org/wiki/喬治·伽莫夫 "wikilink")，首先正確地解釋了[阿爾法衰變](https://zh.wikipedia.org/wiki/阿爾法衰變 "wikilink")。WKB近似先將量子系統的[波函數](https://zh.wikipedia.org/wiki/波函數 "wikilink")，重新打造為一個[指數函數](https://zh.wikipedia.org/wiki/指數函數 "wikilink")。然後，半經典展開。再假設[波幅或](https://zh.wikipedia.org/wiki/波幅 "wikilink")[相位的變化很慢](https://zh.wikipedia.org/wiki/相位 "wikilink")。通過一番運算，就會得到波函數的近似解。

## 簡略歷史

WKB近似以三位物理學家[格雷戈尔·文策尔](../Page/格雷戈尔·文策尔.md "wikilink")、[汉斯·克喇末](../Page/汉斯·克喇末.md "wikilink")和[萊昂·布里淵](../Page/萊昂·布里淵.md "wikilink")姓氏字首命名。於1926年，他們成功地將這方法發展和應用於量子力學。不過早在1923年，數學家[哈罗德·杰弗里斯](../Page/哈罗德·杰弗里斯.md "wikilink")就已經發展出二階線性微分方程式的一般的近似法。薛丁格方程式也是一個二階微分方程式。可是，薛丁格方程式的出現稍微晚了兩年。三位物理學家各自獨立地在做WKB近似的研究時，似乎並不知道這個更早的研究。所以物理界提到這近似方法時，常常會忽略了杰弗里斯所做的貢獻。這方法在[荷蘭稱為](https://zh.wikipedia.org/wiki/荷蘭 "wikilink")**KWB近似**，在[法國稱為](https://zh.wikipedia.org/wiki/法國 "wikilink")**BWK近似**，只有在[英國稱為](https://zh.wikipedia.org/wiki/英國 "wikilink")**JWKB近似**\[1\]。

## 數學概念

一般而言，WKB近似專門計算一種特殊[微分方程式的近似解](https://zh.wikipedia.org/wiki/微分方程式 "wikilink")。這種特殊微分方程式的最高階導數項目的係數是一個微小參數\(\epsilon\,\!\)。給予一個微分方程式，形式為

\[\epsilon \frac{d^ny}{dx^n} + a(x)\frac{d^{n-1}y}{dx^{n - 1}} + \cdots + k(x)\frac{dy}{dx} + m(x)y= 0\,\!\]。

假設解答的形式可以展開為一個[漸近級數](../Page/渐近展开.md "wikilink")：

\[y(x) \sim \exp\left[\frac{1}{\delta}\sum_{n=0}^{\infty}\delta^nS_n(x)\right]\,\!\]。

將這[擬設](../Page/擬設.md "wikilink")代入微分方程式。然後约去相同指數函數因子。又取\(\delta \rightarrow 0\,\!\)的極限。這樣，就可以從\(S_0(x)\,\!\)開始，一個一個的解析這漸近級數的每一個項目\(S_n(x)\,\!\)。

通常\(y(x)\,\!\)的漸近級數會[發散](https://zh.wikipedia.org/wiki/發散 "wikilink")。當\(n\,\!\)大於某值後，一般項目\(\delta ^n S_n(x)\,\!\)會開始增加。因此WKB近似法造成的最小誤差，約是最後包括項目的數量級。

## 數學例子

設想一個二階齊次[線性微分方程式](https://zh.wikipedia.org/wiki/線性微分方程式 "wikilink")

\[\epsilon^2 \frac{d^2 y}{dx^2} = Q(x) y \,\!\]；

其中，\(Q(x) \neq 0\,\!\)。

猜想解答的形式為

\[y(x) = \exp\left[\frac{1}{\delta}\sum_{n=0}^{\infty}\delta^nS_n(x)\right]\,\!\]。

將猜想代入微分方程式，可以得到

\[\epsilon^2\left[\frac{1}{\delta^2}\left(\sum_{n=0}^{\infty}\delta^nS_n'\right)^2 + \frac{1}{\delta}\sum_{n=0}^{\infty}\delta^nS_n''\right] = Q(x)\,\!\]。

取\(\delta \rightarrow 0\,\!\)的極限，最重要的項目是

\[\frac{\epsilon^2}{\delta^2}S_0'^2 \sim Q(x)\,\!\]。

我們可以察覺，\(\delta\,\!\)必須與\(\epsilon\,\!\)成比例。設定\(\delta=\epsilon\,\!\)，則\(\epsilon\,\!\)的零次冪項目給出

\[\epsilon^0: \qquad S_0'^2 = Q(x)\,\!\]。

我們立刻認出這是[程函方程](../Page/程函方程.md "wikilink")。解答為

\[S_0(x) = \pm \int_{x_0}^{x}\sqrt{Q(t)}\,dt\,\!\]。

檢查\(\epsilon\,\!\)的一次冪項目給出

\[\epsilon^1:\qquad 2S_0'S_1' + S_0'' = 0\,\!\]。

這是一個一維[傳輸方程式](../Page/漂移–扩散方程.md "wikilink")。解答為

\[S_1(x) = - \frac{1}{4}\ln\left(Q(x)\right) + k_1\,\!\]；

其中，\(k_1\,\!\)是任意常數。

我們現在有一對近似解（因為\(S_0\,\!\)可以是正值或負值）。一般的一階WKB近似解是這一對近似解的線性組合：

\[y(x)\approx c_1Q^{ - \frac{1}{4}}(x)\exp\left[\frac{1}{\epsilon}\int_{x_0}^x\sqrt{Q(t)}dt\right] + c_2Q^{ - \frac{1}{4}}(x)\exp\left[ - \frac{1}{\epsilon}\int_{x_0}^x\sqrt{Q(t)}dt\right]\,\!\]。

檢查\(\epsilon\,\!\)的更高冪項目（\(n>2\,\!\)）可以給出：

\[2S_0'S_n' + S''_{n - 1} + \sum_{j=1}^{n - 1}S'_jS'_{n - j} = 0\,\!\]。

## 薛丁格方程式的近似解

解析一個量子系統的薛丁格方程式，WKB近似涉及以下步驟：

1.  將[波函數重新打造為一個](https://zh.wikipedia.org/wiki/波函數 "wikilink")[指數函數](https://zh.wikipedia.org/wiki/指數函數 "wikilink")，
2.  將這指數函數代入[薛丁格方程式](https://zh.wikipedia.org/wiki/薛丁格方程式 "wikilink")，
3.  展開指數函數的參數為[約化普朗克常數的](https://zh.wikipedia.org/wiki/約化普朗克常數 "wikilink")[冪級數](https://zh.wikipedia.org/wiki/冪級數 "wikilink")，
4.  匹配約化普朗克常數同次冪的項目，會得到一組方程式，
5.  解析這些方程式，就會得到波函數的近似。

一維不含時[薛丁格方程式為](https://zh.wikipedia.org/wiki/薛丁格方程式 "wikilink")

\[- \frac{\hbar^2}{2m} \frac{\mathrm{d}^2}{\mathrm{d}x^2} \psi(x) + V(x) \psi(x) = E \psi(x)\,\!\]；

其中，\(\hbar\,\!\)是[約化普朗克常數](https://zh.wikipedia.org/wiki/約化普朗克常數 "wikilink")，\(m\,\!\)是質量，\(x\,\!\)是坐標，\(V(x)\,\!\)是[位勢](https://zh.wikipedia.org/wiki/位勢 "wikilink")，\(E\,\!\)是能量，\(\psi\,\!\)是波函數。

稍加編排，重寫為

\[\hbar^2\frac{\mathrm{d}^2}{\mathrm{d}x^2} \psi(x) =2m \left( V(x) - E \right) \psi(x)\,\!\]。<span style="position:absolute;right:15%">(1)</span>

假設波函數的形式為另外一個函數\(\phi\,\!\)的指數（函數\(\phi\,\!\)與[作用量](../Page/作用量.md "wikilink")有很親密的關係）：

\[\psi(x) = e^{\phi(x)/\hbar} \,\!\]。

代入方程式(1)，

\[\hbar\phi''(x) +\left[\phi'(x)\right]^2=2m\left( V(x) - E \right)\,\!\]；<span style="position:absolute;right:15%">(2)</span>

其中，\(\phi'\,\!\)表示\(\phi\,\!\)隨著\(x\,\!\)的導數。

\(\phi'\,\!\)可以分為實值部分與虛值部分。設定兩個函數\(A(x)\,\!\)與\(B(x)\,\!\)：

\[\phi'(x) = A(x) + i B(x)\,\!\]。

注意到波函數的波幅是\(\exp\left[\int^x A(x')dx'/\hbar\right]\,\!\)，相位是\(\int^x B(x')dx'/\hbar\,\!\)。將\(\phi'\,\!\)的代表式代入方程式(2)，分別匹配實值部分、虛值部分，可以得到兩個方程式：

\[\hbar A'(x) + A(x)^2 - B(x)^2 =2m \left( V(x) - E \right)\,\!\]，<span style="position:absolute;right:15%">(3)</span>

\[\hbar B'(x) + 2 A(x) B(x) = 0\,\!\]。<span style="position:absolute;right:15%">(4)</span>

### 半經典近似

將\(A(x)\,\!\)與\(B(x)\,\!\)展開為\(\hbar\,\!\)的[冪級數](https://zh.wikipedia.org/wiki/冪級數 "wikilink")：

\[A(x) =\sum_{n=0}^\infty \hbar^n A_n(x)\,\!\]，

\[B(x) =\sum_{n=0}^\infty \hbar^n B_n(x)\,\!\]。

將兩個冪級數代入方程式(3)與(4)。\(\hbar\,\!\)的零次冪項目給出：

\[A_0(x)^2 - B_0(x)^2 = 2m \left( V(x) - E \right)\,\!\]，

\[A_0(x) B_0(x) = 0\,\!\]。

假若波幅變化地足夠慢於相位（\(A_0(x) \ll B_0(x)\,\!\)），那麼，我們可以設定

\[A_0(x) = 0\,\!\]，

\[B_0(x) = \pm \sqrt{ 2m \left( E - V(x) \right) }\,\!\]。

只有當\(E\ge V(x) \,\!\)的時候，這方程式才成立。經典運動只會允許這種狀況發生。

更精確一點，\(\hbar\,\!\)的一次冪項目給出：

\[A_0'+2A_0 A_1 - 2B_0 B_1= - 2B_0 B_1=0\,\!\]，

\[B_0'+2A_0 B_1+2B_0 A_1=B_0'+2B_0 A_1=0\,\!\]。

所以，

\[B_1=0\,\!\]，

\[A_1= - \frac{B_0'}{2B_0}=\frac{d}{dx}ln B_0^{ - 1/2}\,\!\]。

波函數的波幅是 \(\exp\left[\int^x A(x')dx'/\hbar\right]=\frac{1}{\sqrt{B_0}}\,\!\)。

定義動量\(p(x) = \sqrt{ 2m \left( E - V(x) \right) }\,\!\)，則波函數的近似為

\[\psi(x) \approx  \cfrac{C_{\pm}} {\sqrt{p(x)}}  e^{\pm i \int_{x_0}^x p(x') \mathrm{d}x'/\hbar} \,\!\]；<span style="position:absolute;right:15%">(5)</span>

其中，\(C_+\,\!\)和\(C_{-}\,\!\)是常數，\(x_0\,\!\)是一個任意參考點的坐標。

換到另一方面，假若相位變化地足夠慢於波幅（\(B_0(x) \ll A_0(x)\,\!\)），那麼，我們可以設定

\[A_0(x) = \pm \sqrt{ 2m \left( V(x) - E \right) }\,\!\]，

\[B_0(x) = 0\,\!\]。

只有當\(V(x)\ge E\,\!\)的時候，這方程式才成立。經典運動不會允許這種狀況發生。只有在量子系統裏，才會發生這種狀況，稱為[量子穿隧效應](../Page/量子穿隧效應.md "wikilink")。類似地計算，可以求得波函數的近似為

\[\psi(x) \approx  \frac{C_{\pm}} {\sqrt{p(x)}}  e^{\pm\int_{x_0}^x p(x') \mathrm{d}x'/\hbar}\,\!\]；<span style="position:absolute;right:15%">(6)</span>

其中，\(p(x) = \sqrt{ 2m \left(V(x) - E\right) }\,\!\)。

### 連接公式

顯而易見地，我們可以從分母觀察出來，在經典轉向點\(E = V(x)\,\!\)，這兩個近似方程式(5)和(6)會發散，無法表示出物理事實。我們必須正確地找到波函數在經典轉向點的近似解答。設定\(x_1< x< x_2\,\!\)是經典運動允許區域。在這區域內，\(E>V(x)\,\!\)，波函數呈振動形式。其它區域\(x<x_1\,\!\)和\(x_2< x\,\!\)是經典運動不允許區域，波函數呈指數遞減形式。假設在經典轉向點附近，位勢足夠的光滑，可以近似為線性函數。更詳細地說，在點\(x_2\,\!\)附近，將 \(\frac{2m}{\hbar^2}\left(V(x)-E\right)\,\!\)展開為一個冪級數：

\[\frac{2m}{\hbar^2}\left(V(x)-E\right) = U_1(x - x_2) + U_2(x - x_2)^2 + \cdots\,\!\]；

其中，\(U_1,\,U_2,\,\cdots\,\!\)是常數值係數。

取至一階，方程式(1)變為

\[\frac{\mathrm{d}^2}{\mathrm{d}x^2} \psi(x) = U_1(x - x_2) \psi(x)\,\!\]。

這微分方程式稱為[艾里方程式](https://zh.wikipedia.org/wiki/艾里方程式 "wikilink")，其解為著名的[艾里函數](https://zh.wikipedia.org/wiki/艾里函數 "wikilink")：

\[\psi(x) = C_{2A} \textrm{Ai}\left( \sqrt[3]{U_1}(x - x_2) \right) + C_{2B} \textrm{Bi}\left( \sqrt[3]{U_1}(x - x_2) \right)\,\!\]。

匹配艾里函數和在\(x< x_2\,\!\)的波函數，在\(x_2< x\,\!\)的波函數，經過一番繁雜的計算，可以得到在\(x_2\,\!\)附近的**連接公式**（）\[2\]：

\[\psi(x) =
\begin{cases}
  \cfrac{2C_2}{\sqrt{p(x)}} \sin \left(\cfrac{1}{\hbar}\int_x^{x_2} p(x')dx'+\cfrac{\pi}{4}\right) & \mbox{if } x<x_2 \\
  \cfrac{C_2}{\sqrt{|p(x)|}} \exp\left( - \int_{x_2}^x |p(x')|dx'/{\hbar}\right) & \mbox{if } x_2<x
\end{cases}\,\!\] <span style="vertical-align:bottom">。</span>

類似地，也可以得到在\(x_1\,\!\)附近的連接公式：

\[\psi(x) =
\begin{cases}
  \cfrac{C_1}{\sqrt{|p(x)|}} \exp\left( - \int_x^{x_1} |p(x')|dx'/{\hbar}\right) & \mbox{if } x<x_1 \\
  \cfrac{2C_1}{\sqrt{p(x)}} \sin \left(\cfrac{1}{\hbar}\int_{x_1}^{x} p(x')dx'+\cfrac{\pi}{4}\right) & \mbox{if } x_1<x
\end{cases}\,\!\] <span style="vertical-align:bottom">。</span>

### 量子化規則

在經典運動允許區域\(x_1< x< x_2\,\!\)內的兩個連接公式也必須匹配。設定角變量

\[\theta_1= - \frac{1}{\hbar}\int_{x_1}^{x} p(x')dx' - \frac{\pi}{4}\,\!\]，

\[\theta_2=~\frac{1}{\hbar}\int_x^{x_2} p(x')dx' + \frac{\pi}{4}\,\!\]，

\[\alpha=\int_{x_1}^{x_2} p(x)dx/\hbar\,\!\]。

那麼，

\[\alpha=\theta_2 - \theta_1 - \pi/2\,\!\]，

\[- C_1 \sin \theta_1=C_2 \sin \theta_2=C_2\sin(\theta_1+\alpha+\pi/2)\,\!\]。

立刻，我們可以認定\(|C_1|=|C_2|\,\!\)。匹配相位，假若\(C_1=C_2\,\!\)，那麼，

\[\alpha+\pi/2=(2m - 1)\pi ,\qquad m=1,\,2,\,3,\,\dots\,\!\]。

所以，

\[\alpha=(2m - 3/2)\pi ,\qquad m=1,\,2,\,3,\,\dots\,\!\]。

假若\(C_1= - C_2\,\!\)，那麼，

\[\alpha+\pi/2=2m\pi ,\qquad m=1,\,2,\,3,\,\dots\,\!\]。

所以，

\[\alpha=(2m - 1/2)\pi ,\qquad m=1,\,2,\,3,\,\dots\,\!\]。

總結，量子系統必須滿足量子化守則：

\[\int_{x_1}^{x_2} p(x)dx =(n - 1/2)\pi\hbar,\qquad n=1,\,2,\,3,\,\dots\,\!\]。

### 範例

考慮一個[量子諧振子](../Page/量子諧振子.md "wikilink")系統，一個質量為\(m\,\!\)的粒子，運動於諧振位勢\(V(x)=\frac{1}{2}m\omega^2 x^2\,\!\)；其中，\(\omega\,\!\)是角頻率。求算其[本徵能級](https://zh.wikipedia.org/wiki/本徵值 "wikilink")\(E_n\,\!\)？

能量為\(E\,\!\)的粒子，其運動的古典轉向點\(x_t\,\!\)為

\[E=\frac{1}{2}m\omega^2 x_t^2\,\!\]。

所以，

\[x_t=\pm \sqrt{\frac{2E}{m\omega^2 }}\,\!\]。

粒子的動量為

\[p(x)=\sqrt{2m\left(E - \frac{1}{2}m\omega^2 x^2\right)}\,\!\]。

將這些變量代入量子化守則：

\[\int_{ - 2E/m\omega^2}^{2E/m\omega^2}\,\sqrt{2m\left(E - \frac{1}{2}m\omega^2 x^2\right)}\,dx=(n - 1/2)\pi\hbar,\qquad n=1,\,2,\,3,\,\dots\,\!\]。

經過一番運算，可以得到本徵能量

\[E_n=(n - 1/2)\omega\hbar,\qquad n=1,\,2,\,3,\,\dots\,\!\]。

藉由以上之計算，發現近似解與精確解完全一樣。

## 參閱

  - [微擾理論 (量子力學)](../Page/微擾理論_\(量子力學\).md "wikilink")
  - [量子穿隧效應](../Page/量子穿隧效應.md "wikilink")
  - [舊量子論](../Page/舊量子論.md "wikilink")

## 參考文獻

### 現代文獻

  -
  -
  -
### 歷史文獻

  -
  -
  -
  -
[Category:量子力學](https://zh.wikipedia.org/wiki/Category:量子力學 "wikilink") [Category:理論物理](https://zh.wikipedia.org/wiki/Category:理論物理 "wikilink") [Category:漸近分析](https://zh.wikipedia.org/wiki/Category:漸近分析 "wikilink")

1.

2.