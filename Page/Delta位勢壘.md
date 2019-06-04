在[量子力學裏](https://zh.wikipedia.org/wiki/量子力學 "wikilink")，**Delta位勢壘**是一個壘內位勢為[狄拉克Delta函數](https://zh.wikipedia.org/wiki/狄拉克Delta函數 "wikilink")，壘外位勢為0的位勢壘。**Delta位勢壘問題**專門研討，在這種位勢的作用中，一個移動的粒子的量子行為。我們想要知道的是，在被Delta位勢壘[散射的狀況下](../Page/散射.md "wikilink")，粒子的[反射係數與](https://zh.wikipedia.org/wiki/反射係數 "wikilink")[透射係數](../Page/透射係數.md "wikilink")。在許多量子力學的教科書裏，這是一個常見的習題。

## 定義

[Deltapot.png](https://zh.wikipedia.org/wiki/File:Deltapot.png "fig:Deltapot.png")。往左與往右的[行進波的振幅與方向都分別表示於圖內](https://zh.wikipedia.org/wiki/行進波 "wikilink")。用來計算[透射係數與](../Page/透射係數.md "wikilink")[反射係數的](https://zh.wikipedia.org/wiki/反射係數 "wikilink")[行進波都以紅色表示](https://zh.wikipedia.org/wiki/行進波 "wikilink")。\]\]

一個粒子獨立於[時間的](https://zh.wikipedia.org/wiki/時間 "wikilink")[薛丁格方程為](https://zh.wikipedia.org/wiki/薛丁格方程 "wikilink")

\[- \frac{\hbar^2}{2m}\frac{d^2\psi(x)}{dx^2}+V(x)\psi(x)= E\psi(x)\,\!\]；

其中，\(\hbar\,\!\)是[約化普朗克常數](https://zh.wikipedia.org/wiki/約化普朗克常數 "wikilink")，\(m\,\!\)是粒子質量，\(x\,\!\)是粒子位置，\(E\,\!\)是能量，\(\psi(x)\,\!\)是[波函數](https://zh.wikipedia.org/wiki/波函數 "wikilink")，\(V(x)\,\!\)是位勢，表達為

\[V(x)=\lambda\delta(x)\,\!\]；

其中，\(\delta(x)\,\!\)是[狄拉克Delta函數](https://zh.wikipedia.org/wiki/狄拉克Delta函數 "wikilink")，\(\lambda\,\!\)是狄拉克Delta函數的強度。

## 導引

這位勢壘將一維空間分為兩個區域：\(x<0\,\!\)與\(x>0\,\!\)。在任何一個區域內，位勢為常數，薛丁格方程的解答可以寫為往右與往左傳播的波函數的[疊加](https://zh.wikipedia.org/wiki/態疊加原理 "wikilink")（參閱[自由粒子](../Page/自由粒子.md "wikilink")）：

\[\psi_L(x)= A_r e^{i k x} + A_l e^{-ikx}\quad x<0 \,\!\]，

\[\psi_R(x)= B_r e^{i k x} + B_l e^{-ikx}\quad x>0\,\!\]；

其中，\(A_r\,\!\)、\(A_l\,\!\)、\(B_r\,\!\)、\(B_l\,\!\)都是必須由[邊界條件決定的常數](https://zh.wikipedia.org/wiki/邊界條件 "wikilink")，下標\(r\,\!\)與\(l\,\!\)分別標記波函數往右或往左的方向。\(k=\sqrt{2m E/\hbar^{2}}\,\!\)是[波數](../Page/波數.md "wikilink")。

由於\(E>0\,\!\)，\(\psi_L\,\!\)與\(\psi_R\,\!\)都是[行進波](https://zh.wikipedia.org/wiki/行進波 "wikilink")。這兩個波必須滿足在\(x=0\,\!\)的邊界條件：

\[\psi_L=\psi_R\,\!\]，

\[\frac{d}{dx}\psi_L = \frac{d}{dx}\psi_R - \frac{2m\lambda}{\hbar^2} \psi_R\,\!\]。

特別注意第二個邊界條件方程式，波函數隨位置的導數在\(x=0\,\!\)並不是連續的，在位勢壘兩邊的差額有\(- \frac{2\lambda}{\hbar^2} \psi_R\,\!\)這麼多。這方程式的推導必須用到薛丁格方程。將薛丁格方程積分於\(x=0\,\!\)的一個非常小的鄰域：

\[- \frac{\hbar^2}{2 m} \int_{ - \epsilon}^{\epsilon} \frac{d^2 \psi}{d x^2}\, dx + \int_{ - \epsilon}^{\epsilon}V(x) \psi \, dx = E \int_{ - \epsilon}^{\epsilon} \psi \, dx\,\!\]；<span style="position:absolute;right:15%">(1)</span>

其中，\(\epsilon\,\!\)是一個非常小的數值。

方程式(1)右邊的能量項目是

\[E \int_{ - \epsilon}^{\epsilon} \psi \, dx \approx E \cdot 2 \epsilon \cdot \psi(0)\,\!\]。<span style="position:absolute;right:15%">(2)</span>

在\(\epsilon \to 0\,\!\)的極限，這項目往著0去。

方程式(1)左邊是

\[- \frac{\hbar^2}{2 m} \left( \frac{d\psi_R}{dx}\bigg|_{\epsilon} - \frac{d\psi_L}{dx}\bigg|_{ - \epsilon} \right) + \lambda\int_{-\epsilon}^{\epsilon}\delta(x) \psi \, dx = 0\,\!\]<span style="position:absolute;right:15%">(3)</span>

根據[狄拉克Delta函數的定義](https://zh.wikipedia.org/wiki/狄拉克Delta函數 "wikilink")，

\[\int_{-\epsilon}^{\epsilon}\delta(x) \psi \, dx =\psi_R(0)\,\!\]。<span style="position:absolute;right:15%">(4)</span>

而在\(\epsilon \to 0\,\!\)的極限，

\[\lim_{\epsilon \to 0}\frac{d\psi_L}{dx}\bigg|_{ - \epsilon}=\frac{d\psi_L}{dx}\bigg|_0\,\!\]，<span style="position:absolute;right:15%">(5)</span>

\[\lim_{\epsilon \to 0}\frac{d\psi_R}{dx}\bigg|_{\epsilon}=\frac{d\psi_R}{dx}\bigg|_0\,\!\]。<span style="position:absolute;right:15%">(6)</span>

將這些結果(4)，(5)，(6)代入方程式(3)，稍加編排，可以得到第二個邊界條件方程式：在\(x=0\,\!\)，

\[\frac{d\psi_L}{dx}=\frac{d\psi_R}{dx} - \frac{2m\lambda}{\hbar^2}\psi_R\,\!\]。

從這兩個邊界條件方程式。稍加運算，可以得到以下方程式：

\[A_r+A_l=B_r+B_l\,\!\]，

\[ik(A_r - A_l - B_r+B_l)= - \frac{2m\lambda}{\hbar^2}(B_r+B_l)\,\!\]。

### 反射與透射

[DeltaPotentialBarrier.PNG](https://zh.wikipedia.org/wiki/File:DeltaPotentialBarrier.PNG "fig:DeltaPotentialBarrier.PNG")

由於能量是正值的，粒子可以自由的移動於位勢壘外的兩個半空間，\(x<0\,\!\)或\(x>0\,\!\)。可是，在Delta位勢壘，粒子會遇到[散射狀況](../Page/散射.md "wikilink")。設定粒子從左邊入射。在Delta位勢壘，粒子可能會被反射回去，或者會被透射過去。我們想要知道散射的[反射係數與](https://zh.wikipedia.org/wiki/反射係數 "wikilink")[透射係數](../Page/透射係數.md "wikilink")。設定\(A_r=1\,\!\)，\(A_l=r\,\!\)，\(B_l=0\,\!\)，\(B_r=t\,\!\)。求算反射的[機率幅](../Page/機率幅.md "wikilink")\(r\,\!\)與透射的[機率幅](../Page/機率幅.md "wikilink")\(t\,\!\)：

\[r=\cfrac{1}{\cfrac{i\hbar^2 k}{m\lambda} - 1}\,\!\]，

\[t=\cfrac{1}{\cfrac{i m\lambda}{\hbar^2k}+1}\,\!\]。

反射係數是

\[R=|r|^2=\cfrac{1}{1+\cfrac{\hbar^4k^2}{m^2\lambda^2}}= \cfrac{1}{1+\cfrac{2\hbar^2 E}{m\lambda^2}}\,\!\]。

透射係數是

\[T=|t|^2=1 - R=\cfrac{1}{1+\cfrac{m^2\lambda^2}{\hbar^4k^2}}= \cfrac{1}{1+\cfrac{m\lambda^2}{2\hbar^2 E}}\,\!\]。

這純粹是一個量子力學的效應，稱為[量子穿隧效應](../Page/量子穿隧效應.md "wikilink")；在經典力學裏，透射係數等於0，粒子不可能會透射過位勢壘。

  - 由於模型的對稱性，假若，粒子從右邊入射，我們也會得到同樣的答案。
  - 很奇異地，給予同樣的能量、質量、與狄拉克Delta函數的強度，Delta位勢壘與Delta位勢阱有同樣的反射係數與透射係數。

## 參閱

  - [自由粒子](../Page/自由粒子.md "wikilink")
  - [無限深方形阱](../Page/無限深方形阱.md "wikilink")
  - [有限深方形阱](../Page/有限深方形阱.md "wikilink")
  - [有限位勢壘](../Page/有限位勢壘.md "wikilink")
  - [球對稱位勢](../Page/球對稱位勢.md "wikilink")
  - [Delta位勢阱](../Page/Delta位勢阱.md "wikilink")
  - [量子穿隧效應](../Page/量子穿隧效應.md "wikilink")

[Category:量子力學](https://zh.wikipedia.org/wiki/Category:量子力學 "wikilink")