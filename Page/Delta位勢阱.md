[Deltawell.png](https://zh.wikipedia.org/wiki/File:Deltawell.png "fig:Deltawell.png")。往左與往右的[行進波的振幅與方向都分別表示於圖內](https://zh.wikipedia.org/wiki/行進波 "wikilink")。用來計算[透射係數與](../Page/透射係數.md "wikilink")[反射係數的](https://zh.wikipedia.org/wiki/反射係數 "wikilink")[行進波都以紅色表示](https://zh.wikipedia.org/wiki/行進波 "wikilink")。\]\]
在[量子力學裏](https://zh.wikipedia.org/wiki/量子力學 "wikilink")，**Delta位勢阱**是一個[阱內位勢為負](../Page/势阱.md "wikilink")[狄拉克Delta函數](https://zh.wikipedia.org/wiki/狄拉克Delta函數 "wikilink")，阱外位勢為0的位勢阱。**Delta位勢阱問題**專門研討，在這種位勢的作用中，一個粒子的量子行為。這是一個常見的理論問題。假若，粒子的能量是正值的，我們想要知道的是，在被Delta位勢壘[散射的狀況下](../Page/散射.md "wikilink")，粒子的[反射係數與](https://zh.wikipedia.org/wiki/反射係數 "wikilink")[透射係數](../Page/透射係數.md "wikilink")。假若，粒子的能量是負值的，這粒子會被束縛於Delta位勢阱的阱內。這時，我們想要知道的是粒子的能量與束縛的量子態。

## 定義

一個粒子獨立於[時間的](https://zh.wikipedia.org/wiki/時間 "wikilink")[薛丁格方程為](https://zh.wikipedia.org/wiki/薛丁格方程 "wikilink")

\[- \frac{\hbar^2}{2m}\frac{d^2\psi(x)}{dx^2}+V(x)\psi(x)= E\psi(x)\,\!\]；

其中，\(\hbar\,\!\)是[約化普朗克常數](https://zh.wikipedia.org/wiki/約化普朗克常數 "wikilink")，\(m\,\!\)是粒子質量，\(x\,\!\)是粒子位置，\(E\,\!\)是能量，\(\psi(x)\,\!\)是[波函數](https://zh.wikipedia.org/wiki/波函數 "wikilink")，\(V(x)\,\!\)是位勢，表達為

\[V(x)= - \lambda\delta(x)\,\!\]；

其中，\(\delta(x)\,\!\)是[狄拉克Delta函數](https://zh.wikipedia.org/wiki/狄拉克Delta函數 "wikilink")，\(\lambda\,\!\)是狄拉克Delta函數的強度。

## 導引

這位勢阱將一維空間分為兩個區域：\(x<0\,\!\)與\(x>0\,\!\)。在任何一個區域內，位勢為常數，薛丁格方程的解答可以寫為往右與往左傳播的波函數的的[疊加](https://zh.wikipedia.org/wiki/態疊加原理 "wikilink")（參閱[自由粒子](../Page/自由粒子.md "wikilink")）：

\[\psi_L(x)= A_r e^{i k x} + A_l e^{-ikx}\quad x<0 \,\!\]，

\[\psi_R(x)= B_r e^{i k x} + B_l e^{-ikx}\quad x>0\,\!\]；

其中，\(A_r\,\!\)、\(A_l\,\!\)、\(B_r\,\!\)、\(B_l\,\!\)都是必須由[邊界條件決定的常數](https://zh.wikipedia.org/wiki/邊界條件 "wikilink")，下標\(r\,\!\)與\(l\,\!\)分別標記波函數往右或往左的方向。\(k=\sqrt{2m E/\hbar^{2}}\,\!\)是[波數](../Page/波數.md "wikilink")。

當\(E>0\,\!\)時，\(\psi_L\,\!\)與\(\psi_R\,\!\)都是[行進波](https://zh.wikipedia.org/wiki/行進波 "wikilink")。可是，當\(E<0\,\!\)時，\(\psi_L\,\!\)與\(\psi_R\,\!\)都隨著座標\(x\,\!\)呈指數遞減或指數遞增。

在\(x=0\,\!\)处，邊界條件是：

\[\psi_L=\psi_R\,\!\]，

\[\frac{d}{dx}\psi_L = \frac{d}{dx}\psi_R - \frac{2m\lambda}{\hbar^2} \psi_R\,\!\]。

特別注意第二個邊界條件方程式，波函數隨位置的導數在\(x=0\,\!\)並不是連續的，在位勢阱兩邊的差額有\(\frac{2\lambda}{\hbar^2} \psi_R\,\!\)這麼多。這方程式的推導必須用到薛丁格方程。將薛丁格方程積分於\(x=0\,\!\)的一個非常小的鄰域：

\[- \frac{\hbar^2}{2 m} \int_{ - \epsilon}^{\epsilon} \frac{d^2 \psi}{d x^2}\, dx + \int_{ - \epsilon}^{\epsilon}V(x) \psi \, dx = E \int_{ - \epsilon}^{\epsilon} \psi \, dx\,\!\]；<span style="position:absolute;right:15%">(1)</span>

其中，\(\epsilon\,\!\)是一個非常小的數值。

方程式(1)右邊的能量項目是

\[E \int_{ - \epsilon}^{\epsilon} \psi \, dx \approx E \cdot 2 \epsilon \cdot \psi(0)\,\!\]。<span style="position:absolute;right:15%">(2)</span>

当\(\epsilon \to 0\,\!\)时，该項趋向于0。

方程式(1)左邊是

\[- \frac{\hbar^2}{2 m} \left( \frac{d\psi_R}{dx}\bigg|_{\epsilon} - \frac{d\psi_L}{dx}\bigg|_{ - \epsilon} \right) + \lambda\int_{-\epsilon}^{\epsilon}\delta(x) \psi \, dx = 0\,\!\]<span style="position:absolute;right:15%">(3)</span>

根據[狄拉克Delta函數的定義](https://zh.wikipedia.org/wiki/狄拉克Delta函數 "wikilink")，

\[\int_{-\epsilon}^{\epsilon}\delta(x) \psi \, dx =\psi_R(0)\,\!\]。<span style="position:absolute;right:15%">(4)</span>

而在\(\epsilon \to 0\,\!\)的極限，

\[\lim_{\epsilon \to 0}\frac{d\psi_L}{dx}\bigg|_{ - \epsilon}=\frac{d\psi_L}{dx}\bigg|_0\,\!\]，<span style="position:absolute;right:15%">(5)</span>

\[\lim_{\epsilon \to 0}\frac{d\psi_R}{dx}\bigg|_{\epsilon}=\frac{d\psi_R}{dx}\bigg|_0\,\!\]。<span style="position:absolute;right:15%">(6)</span>

將這些結果(4)，(5)，(6)代入方程式(3)，整理后，可以得到第二個邊界條件方程式：在\(x=0\,\!\)，

\[\frac{d\psi_L}{dx}=\frac{d\psi_R}{dx}- \frac{2m\lambda}{\hbar^2}\psi_R\,\!\]。

從這兩個邊界條件方程式。稍加運算，可以得到以下方程式：

\[A_r+A_l=B_r+B_l\,\!\]，

\[ik(A_r - A_l - B_r+B_l)=\frac{2m\lambda}{\hbar^2}(B_r+B_l)\,\!\]。

### 散射態

[Deltapotwell.PNG](https://zh.wikipedia.org/wiki/File:Deltapotwell.PNG "fig:Deltapotwell.PNG")

假若，能量是正值的，粒子可以自由的移動於位勢阱外的兩個半空間，\(x<0\,\!\)或\(x>0\,\!\)。在這裏，粒子的量子行為主要是由Delta位勢阱造成的[散射行為](../Page/散射.md "wikilink")。稱這粒子的[量子態為](../Page/量子態.md "wikilink")**散射態**。設定粒子從左邊入射。在Delta位勢阱，粒子可能會被反射回去，或者會被透射過去。我們想要知道散射的[反射係數與](https://zh.wikipedia.org/wiki/反射係數 "wikilink")[透射係數](../Page/透射係數.md "wikilink")。設定\(A_r=1\,\!\)，\(A_l=r\,\!\)，\(B_l=0\,\!\)，\(B_r=t\,\!\)。求算反射的[機率幅](../Page/機率幅.md "wikilink")\(r\,\!\)與透射的[機率幅](../Page/機率幅.md "wikilink")\(t\,\!\)：

\[r= -\ \cfrac{1}{\cfrac{i\hbar^2 k}{m\lambda} + 1}\,\!\]，

\[t=\cfrac{1}{ - \ \cfrac{i m\lambda}{\hbar^2k}+1}\,\!\]。

反射係數是

\[R=|r|^2=\cfrac{1}{1+\cfrac{\hbar^4k^2}{m^2\lambda^2}}= \cfrac{1}{1+\cfrac{2\hbar^2 E}{m\lambda^2}}\,\!\]。

這純粹是一個量子力學的效應；在經典力學裏，這是不可能發生的。

透射係數是

\[T=|t|^2=1 - R=\cfrac{1}{1+\cfrac{m^2\lambda^2}{\hbar^4k^2}}= \cfrac{1}{1+\cfrac{m\lambda^2}{2\hbar^2 E}}\,\!\]。

  - 由於模型的對稱性，假若，粒子從右邊入射，我們也會得到同樣的答案。
  - 很奇異地，給予同樣的能量、質量、與狄拉克Delta函數的強度，Delta位勢壘與Delta位勢阱有同樣的反射係數與透射係數。

### 束縛態

[DeltaF-WaveSolution.png](https://zh.wikipedia.org/wiki/File:DeltaF-WaveSolution.png "fig:DeltaF-WaveSolution.png")

每一個一維的吸引位勢，都至少會存在著一個[束縛態](https://zh.wikipedia.org/wiki/束縛態 "wikilink")（）。由於\(E<0\,\!\)，波數變為複數。設定\(\kappa= - ik=\sqrt{2m |E|/\hbar^2}\,\!\)。前述的振盪的波函數\(\psi_L\,\!\)與\(\psi_R\,\!\)，現在卻隨著座標\(x\,\!\)呈指數遞減或指數遞增。為了要符合物理的真實性，我們要求波函數不[發散於](https://zh.wikipedia.org/wiki/發散級數 "wikilink")\(x\to\pm \infty\,\!\)。那麼，\(A_r\,\!\)與\(B_l\,\!\)必須被設定為0。波函數變為

\[\psi_L(x)=  A_l e^{\kappa x}\,\!\]，

\[\psi_R(x)= B_r e^{ - \kappa x}\,\!\]。

從邊界條件與[歸一條件](../Page/歸一條件.md "wikilink")，可以得到

\[A_l=B_r=\sqrt{\kappa}\,\!\]，

\[\kappa=\frac{m\lambda}{\hbar^2}\,\!\]。

Delta位勢阱只能有一個束縛態。束縛態的能量是

\[E= -\ \frac{\hbar^2\kappa^2}{2m}= -\ \frac{m\lambda^2}{2\hbar^2}\,\!\]。

束縛態的波函數是

\[\psi(x)= \frac{\sqrt{m\lambda}}{\hbar}e^{ - m\lambda\mid x\mid /\hbar^2}\,\!\]。

Delta位勢阱是[有限深方形阱的一個特別案例](../Page/有限深方形阱.md "wikilink")。在有限深位勢阱的深度\(V_0\to\infty\,\!\)與阱寬\(L\to 0\,\!\)的極限，同時保持\(V_0 L=\lambda\,\!\)，就可以從有限深位勢阱的波函數，得到Delta位勢阱的波函數。

## 雙井迪拉克Delta函數模型

[Doubledeltawell.png](https://zh.wikipedia.org/wiki/File:Doubledeltawell.png "fig:Doubledeltawell.png")
Delta函數模型其實是[氫原子的一維版本根據維度比例由](../Page/氫原子.md "wikilink")
[达德利·赫施巴赫](../Page/达德利·赫施巴赫.md "wikilink")（“Dudley R.
Herschbach”）\[1\]團隊所研發。此 delta函數模型以雙井迪拉克Delta函數模型最有用，因其代表一維版的水分子離子。

雙井迪拉克Delta函數模型是用以下薛丁格方程描述：

\[-\frac{\hbar^2}{2m}\frac{d^2 \psi}{dx^2}(x) +V(x)\psi(x) = E\psi(x)\]
電位現為：

\[V(x)=-q \left[ \delta(x - \frac{R}{2}) + \lambda \delta(x+ \frac{R}{2}) \right]\]
其中\(0 < R < \infty\)是「核間」距離於迪拉克Delta函數（負）峰值位於\(x= \pm {\textstyle \frac{R}{2}}\)（圖表中棕色所示）。記得此模型與其三維分子版本的關係，我們用[原子单位制且設](../Page/原子单位制.md "wikilink")\(\hbar = m=1\)。此處\(0 < \lambda < 1\)為一可調參數。從單井的例子，可推論[擬設於此解為](../Page/擬設.md "wikilink")：

\[\psi(x) ~ = ~ A e^{-d \left|x - \frac{R}{2}\right|} + B e^{-d \left|x + \frac{R}{2}  \right|}\]
令波函數於Delta函數峰值相等可得[行列式](../Page/行列式.md "wikilink")：

\[\left| \begin{array}{cc} q - d & q e^{-d R} \\  q \lambda e^{-d R} & q \lambda - d \end{array} \right| = 0 ~,
\qquad  E = -\frac{d^2}{2} ~.\] 因此，\(d\)是由偽二次式方程：

\[d_{\pm}(\lambda)~=~{\textstyle\frac{1}{2}}q(\lambda+1)
\pm {\textstyle\frac{1}{2}}
\left\{ q^2(1+\lambda)^{2}-4\,\lambda q^2 \lbrack 1-e^{-2d_{\pm }(\lambda
)R}]\right\} ^{1/2}\]
它有兩解\(d=d_{\pm}\)。若等價情況（對稱單核），\(\lambda =1\)則偽二次式化為：

\[d_{\pm} = q [1 \pm e^{-d_{\pm} R}]\]
此「+」代表了對稱於中點的波函數（圖中紅色）而\(A = B\)稱為偶態。接著，「-」情況為反對稱於中點的波函數其\(A = -B\)稱為非偶態（圖中綠色）。它們代表著三維\(H_2^{+}\)的兩種最低能態之近似且有助於其分析。對稱電價的特徵能分析解為\[2\]：

\[d_{\pm} = q ~+~ W(\pm q R e^{-q R} )/R\]
其中W是標準[朗伯W函数注意此最低能對應於對稱解](../Page/朗伯W函数.md "wikilink")\(d_{+}\)。當非等電價，此為三維分子問題，其解為一般化Lambert
W函數（見一般化[朗伯W函数章節與相關參考](../Page/朗伯W函数.md "wikilink")）。

## 外部链接

<references/>

## 參閱

  - [自由粒子](../Page/自由粒子.md "wikilink")
  - [無限深方形阱](../Page/無限深方形阱.md "wikilink")
  - [有限深方形阱](../Page/有限深方形阱.md "wikilink")
  - [有限位勢壘](../Page/有限位勢壘.md "wikilink")
  - [球對稱位勢](../Page/球對稱位勢.md "wikilink")
  - [Delta位勢壘](../Page/Delta位勢壘.md "wikilink")
  - [量子穿隧效應](../Page/量子穿隧效應.md "wikilink")

[Category:量子力学模型](https://zh.wikipedia.org/wiki/Category:量子力学模型 "wikilink")

1.  [D.R Herschbach](../Page/达德利·赫施巴赫.md "wikilink"), J.S. Avery, and O.
    Goscinski (eds.), *Dimensional Scaling in Chemical Physics*,
    Springer, (1992).
    [1](http://www.amazon.com/Dimensional-Scaling-Chemical-Physics-Herschbach/dp/0792320360)
2.  T.C. Scott, J.F. Babb, [Alexander
    Dalgarno](../Page/亚历山大·达尔加诺.md "wikilink") and John
    D. Morgan III, "The Calculation of Exchange Forces: General Results
    and Specific Models", *J. Chem. Phys.*, 99, pp. 2841-2854, (1993).
    \[<http://adsabs.harvard.edu/abs/1993JChPh>..99.2841S\]