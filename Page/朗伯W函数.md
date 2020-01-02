> 本文内容由[朗伯W函数](https://zh.wikipedia.org/wiki/朗伯W函数)转换而来。


[lambertw.png](https://zh.wikipedia.org/wiki/File:lambertw.png "fig:lambertw.png")

**朗伯W函数**（，又称为**欧米加函数**或**乘积对数**），是*f*(*w*) = *we*<sup>*w*</sup>的[反函数](https://zh.wikipedia.org/wiki/反函数 "wikilink")，其中*e*<sup>*w*</sup>是[指数函数](../Page/指数函数.md "wikilink")，*w*是任意复数。对于任何复数*z*，都有：

\[z = W(z)e^{W(z)}.\]

由于函数*f*不是[单射](../Page/单射.md "wikilink")，因此函数*W*是[多值的](../Page/多值函数.md "wikilink")（除了0以外）。如果我们把*x*限制为实数，并要求*w*是实数，那么函数仅对于*x* ≥ −1/*e*有定义，在(−1/*e*, 0)内是多值的；如果加上*w* ≥ −1的限制，则定义了一个单值函数*W*<sub>0</sub>(*x*)（见图）。我们有*W*<sub>0</sub>(0) = 0，*W*<sub>0</sub>(−1/*e*) = −1。而在\[−1/*e*, 0)内的*w* ≤ −1分支，则记为*W*<sub>−1</sub>(*x*)，从*W*<sub>−1</sub>(−1/*e*) = −1递减为*W*<sub>−1</sub>(0<sup>−</sup>) = −∞。

朗伯*W*函数不能用[初等函数](../Page/初等函数.md "wikilink")来表示。它在[组合数学](../Page/组合数学.md "wikilink")中有许多用途，例如[树的计算](../Page/树_\(图论\).md "wikilink")。它可以用来解许多含有指数的方程，也出现在某些[微分方程](../Page/微分方程.md "wikilink")的解中，例如*y*'(*t*) = *a* *y*(*t* − 1)。

  -
    [Product_Log.jpg](https://zh.wikipedia.org/wiki/File:Product_Log.jpg "fig:Product_Log.jpg")

## 微分和积分

朗伯 \(W\,\)函数的积分形式为

\[W(x)=\frac{x}{\pi}\int_0^{\pi} \frac{\left(1-v\cot v\right)^2+v^2}{x+v\csc v \cdot e^{-v\cot v}} {\rm{d}}v,|\arg\left(x\right)|<\pi\,\]

\[W(x)=\int_{-\infty}^{-\frac{1}{e}}{-\frac{1}{\pi}}\Im \left[\frac{{\rm{d}}}{{\rm{d}}x}W(x)\right]\ln \left(1-\frac{z}{x}\right){\rm{d}}x\,\]

若 \(x\not\in\left[-\frac{1}{e},0\right],k\in{\mathbb{Z}}\,\) ,若 \(x\in\left(-\frac{1}{e},0\right),k=1,\pm2,\pm3,...\,\)

\[W_k(x)=1+\left(\ln x-1+2k\pi {{\rm{i}}}\right)e^{\frac{{\rm{i}}}{2\pi}\int_0^{\infty}\ln \frac{t-\ln t+\ln x+(2k+1)\pi{\rm{i}}}{t-\ln t+\ln x+(2k-1)\pi{\rm{i}}}\cdot\frac{{\rm{d}}t}{t+1}}=1+\left(\ln x-1+2k\pi {{\rm{i}}}\right)e^{\frac{{\rm{i}}}{2\pi}\int_0^{\infty}\ln \frac{\left(t-\ln t+\ln x\right)^2+\left(4k^2-1\right)\pi^2+2\pi\left(t-\ln t+\ln x\right){\rm{i}}}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}}\,\]

把被积函数的实部和虚部分离出来：

\[W_k(x)=1+\left(\ln x-1+2k\pi {{\rm{i}}}\right)e^{\frac{{\rm{i}}}{2\pi}\int_0^\infty\left[\frac{1}{2}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}+{\rm{i}}\arctan\frac{2\pi\left(t-\ln t+\ln x\right)}{\left(t-\ln t+\ln x\right)^2+\left(4k^2-1\right)\pi^2}\right]\cdot\frac{{\rm{d}}t}{t+1}}\]

\[{}_{W_k(x)=1+\frac{\left(\ln x-1\right)\cos\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}-2k\pi\sin\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}+{\rm{i}}\left[\left(\ln x-1\right)\sin\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}+2k\pi\cos\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}\right]}{e^{\frac{1}{2\pi}\int_0^\infty\arctan\frac{2\pi\left(t-\ln t+\ln x\right)}{\left(t-\ln t+\ln x\right)^2+\left(4k^2-1\right)\pi^2}\cdot\frac{\rm{d}t}{t+1}}}}\]

设 \(W_k(x)=u+v{\rm{i}},x=t+s{\rm{i}}\) ，则有 \(\left(u+v{\rm{i}}\right)e^{u+v{\rm{i}}}=t+s{\rm{i}}\) ，展开分离出实部和虚部，

\(e^u\left(u\cos v-v\sin v\right)=t,e^u\left(u\sin v+v\cos v\right)=s\),当\(s=0\)时，易知 \(u=-v\cot v\)

\[{}_{W_k(x)=\frac{\left(1-\ln x\right)\sin\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}-2k\pi\cos\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}}{e^{\frac{1}{2\pi}\int_0^\infty\arctan\frac{2\pi\left(t-\ln t+\ln x\right)}{\left(t-\ln t+\ln x\right)^2+\left(4k^2-1\right)\pi^2}\cdot\frac{\rm{d}t}{t+1}}}\cot\frac{\left(\ln x-1\right)\sin\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}+2k\pi\cos\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}}{e^{\frac{1}{2\pi}\int_0^\infty\arctan\frac{2\pi\left(t-\ln t+\ln x\right)}{\left(t-\ln t+\ln x\right)^2+\left(4k^2-1\right)\pi^2}\cdot\frac{\rm{d}t}{t+1}}}
+\frac{\left(\ln x-1\right)\sin\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}+2k\pi\cos\frac{1}{4\pi}\int_0^{\infty}\ln\frac{\left(t-\ln t+\ln x\right)^2+\left(2k+1\right)^2\pi^2}{\left(t-\ln t+\ln x\right)^2+\left(2k-1\right)^2\pi^2}\cdot\frac{{\rm{d}}t}{t+1}}{e^{\frac{1}{2\pi}\int_0^\infty\arctan\frac{2\pi\left(t-\ln t+\ln x\right)}{\left(t-\ln t+\ln x\right)^2+\left(4k^2-1\right)\pi^2}\cdot\frac{\rm{d}t}{t+1}}}{\rm{i}},}\]

\[W_0(x)=1+\left(\ln x-1\right)e^{-\frac{1}{\pi}\int_0^\infty\arg\left(t-\ln t+\ln x+\pi{\rm{i}}\right)\cdot\frac{\rm{d}t}{t+1}},x>0\]

若 \(x>\frac{1}{e}\) ，上式还可化为\(W_0(x)=1+\left(\ln x-1\right)e^{-\frac{1}{\pi}\int_0^\infty\arctan\frac{\pi}{t-\ln t+\ln x}\cdot\frac{\rm{d}t}{t+1}}\)

由[隐函数](../Page/隐函数.md "wikilink")的求导法则，朗伯\(W\,\)函数满足以下的[微分方程](../Page/微分方程.md "wikilink")：

\[z\left[1+W(z)\right]\frac{{\rm{d}}}{{\rm{d}}z}W(z)=W(z)\]，\(z\neq -\frac{1}{e}\,,\)

因此：

\[\frac{{\rm{d}}}{{\rm{d}}z}W(z)=\frac{ W(z) }{z\left[1 + W(z)\right]}\]，\(z\neq -\frac{1}{e} \,.\)

函数\(W(x)\,\)，以及许多含有\(W(x)\,\)的表达式，都可以用\(w=W(x)\,\)的[变量代换来积分](../Page/换元积分法.md "wikilink")，也就是说\(x=we^w\,\)

\[\int W(x) {\rm{d}}x = x \left[ W(x)+ \frac{1}{W (x) }-1 \right] + C\]

\[\int_0^1 W(x) {\rm{d}}x = \Omega+\frac{1}{\Omega} -2\approx 0.330366\] 其中\(\Omega\)為[欧米加常数](../Page/欧米加常数.md "wikilink")。

## 性质

\(1\,\)、\(z^{z^{z^{z^{z^{.^{.^{.}}}}}}}=\lim_{n \to \infty}(z \upuparrows n) = - \frac{W(-\ln z)}{\ln z}\)，

其中\(\upuparrows\)是[高德納箭號表示法](../Page/高德納箭號表示法.md "wikilink")。

\(2\,\)、若\(z>0 \,\)，则\(\ln W(z)=\ln z-W(z)\,\)

## 泰勒级数

\(W_0 \,\)在\(x=0 \,\)的泰勒级数如下：

\[W_0 (x) = \sum_{n=1}^\infty \frac{(-n)^{n-1}}{n!}\ x^n = x - x^2 + \frac{3}{2}x^3 - \frac{8}{3}x^4 + \frac{125}{24}x^5 - \cdots\]

[收敛半径](../Page/收敛半径.md "wikilink")为 \(\frac{1}{e}\,\) 。

## 加法定理

\[W(x)+W(y)=W\left[\frac{xy}{W(x)}+\frac{xy}{W(y)}\right]\,\]

\[x>0,y>0\,\]

## 複數值

實部

\[\Re\left[W(x+y{\rm{i}})\right]=\sum_{k=1}^{\infty}\frac{(-k)^{k-1}}{k!}\sqrt{(x^2+y^2)^k}\cos \left(k\arctan\frac{x}{y}\right)\,\] , \(x^2+y^2<\frac{1}{e^2}\,\) 虛部

\[\Im\left[W(x+y{\rm{i}})\right]=\sum_{k=1}^{\infty}\frac{(-k)^{k-1}}{k!}\sqrt{(x^2+y^2)^k}\sin \left(k\arctan\frac{x}{y}\right)\,\], \(x^2+y^2<\frac{1}{e^2}\,\) 模長

\[|W(x+y{\rm{i}})|=W(\sqrt{x+y})\,\] 模角

\[\arg\left[W(x+y{\rm{i}})\right]=\sum_{k=1}^{\infty}\frac{(-k)^{k-1}}{k!}\arctan\left[\cot(k\arctan\frac{x}{y})\right]\,\], \(x^2+y^2<\frac{1}{e^2}\,\) 共軛值

\[\overline{W(x+y{\rm{i}})}=\sum_{k=1}^{\infty}\frac{(-k)^{k-1}}{k!}\sqrt{(x^2+y^2)^k}\left[\cos \left(k\arctan\frac{x}{y}\right)-{\rm{i}}\sin \left(k\arctan\frac{x}{y}\right)\right]\,\], \(x^2+y^2<\frac{1}{e^2}\,\)

## 特殊值

\[W\left(-\frac{\pi}{2}\right) = \frac{\pi}{2}i\]

\[W\left(-\frac{\ln 2}{2}\right)= -\ln 2\]

\[W\left(-{1\over e}\right) = -1\]

\[W\left(1\right) = \Omega=\frac{1}{\int_{-\infty}^{\infty}\frac{{\rm{d}}x}{(e^x-x)^2+\pi^2}}-1\approx 0.56714329\dots \,\]（[欧米加常数](../Page/欧米加常数.md "wikilink")）

\[W(e) = 1\,\]

\[W(e^{e+1}) = e\,\]

\[W\left(\frac{1}{e^{1- \frac{1}{e}}}\right)= \frac{1}{e}\]

\[W(-\frac{1}{e})=-1\]

\[W({\pi}e^{\pi})=\pi\]

\[W(k{\ln k})={\ln k}\] \((k>0)\)

\[W({\rm{i}}\pi)=-{\rm{i}}\pi\]

\[W(-{\rm{i}}\pi)={\rm{i}}\pi\]

\[W({\rm{i}}\cos1-\sin1)={\rm{i}}\]

\[W(-\frac{3}{2}{\pi})=-\frac{3}{2}{\pi}{\rm{i}}\]

\[W(-\frac{\sqrt[7]{8}}{7}{\ln 2})=-\frac{32}{7}{\ln 2}\]

\[W(-\frac{\sqrt{3}}{54}{\ln 3})=-\frac{9}{2}{\ln 3}\]

\[W(-\frac{\ln 2}{4})=-4{\ln 2}\]

\[W\left(-1\right)=\frac{e^{\frac{1}{2\pi}\int_0^\infty{1\over t+1}\arctan{2\pi\over t-\ln t}{\rm{d}}t}-\cos\left[\frac{1}{4\pi}\int_0^\infty{1\over t+1}\ln{\left(t-\ln t\right)^2\over 4\pi^2+\left(t-\ln t\right)^2}{\rm{d}}t\right]+\pi\sin\left[\frac{1}{4\pi}\int_0^\infty{1\over t+1}\ln{\left(t-\ln t\right)^2\over 4\pi^2+\left(t-\ln t\right)^2}{\rm{d}}t\right]-{\rm{i}}\left\{\pi\cos\left[\frac{1}{4\pi}\int_0^\infty{1\over t+1}\ln{\left(t-\ln t\right)^2\over 4\pi^2+\left(t-\ln t\right)^2}{\rm{d}}t\right]+\sin\left[\frac{1}{4\pi}\int_0^\infty{1\over t+1}\ln{\left(t-\ln t\right)^2\over 4\pi^2+\left(t-\ln t\right)^2}{\rm{d}}t\right]\right\}}{e^{\frac{1}{2\pi}\int_0^\infty{1\over t+1}\arctan{2\pi\over t-\ln t}{\rm{d}}t}}\approx -0.31813-1.33723{\rm{i}}\]

\[W(-\frac{\ln k}{k})=-\ln k\]

\[W\left[-\frac{\ln (x+1)}{x(x+1)^{\frac{1}{x}}}\right]=-\frac{x+1}{x}\ln (x+1)>,-1<x<0\]

## 应用

许多含有指数的方程都可以用\(W\,\)函数来解出。一般的方法是把未知数都移到方程的一侧，并设法化为\(Y= Xe^X \,\)的形式。

### 例子

  - 例子1

<!-- end list -->

  -
    \(2^t  = 5 t\,\)

<!-- end list -->

  -
    \(\Rightarrow 1 = \frac{5 t}{2^t}\,\)

<!-- end list -->

  -
    \(\Rightarrow 1 = 5 t \, e^{-t \ln 2}\,\)

<!-- end list -->

  -
    \(\Rightarrow \frac{1}{5} = t \, e^{-t \ln 2}\,\)

<!-- end list -->

  -
    \(\Rightarrow -\frac{\ln 2}{5} = ( - \, t \, \ln 2 ) \, e^{-t \ln 2}\,\)

<!-- end list -->

  -
    \(\Rightarrow -t \ln 2 = W_k \left (-\frac{\ln 2}{5} \right )\,\)

<!-- end list -->

  -
    \(\Rightarrow t = -\frac{ W_k \left ( -\frac{\ln 2}{5} \right )}{\ln 2}\,\)

更一般地，以下的方程

  -
    \(Q^{a x + b} = c x + d \,\)

其中

  -
    \(Q > 0 \land Q \neq 1\land c \neq 0\)

两边同乘: \(\frac{a}{c}\)，

得到：\(\frac{a}{c} Q^{ax+b} = ax + \frac{ad}{c}  \,\)

同除以：\(Q^{ax} \,\)，

得到：\(\frac{a}{c} Q^{b} = \left(ax + \frac{ad}{c} \right)Q^{-ax} \,\)

同除：\(Q^{\frac{ad}{c}} \,\)，

\(\frac{a}{c} Q^{b-\frac{ad}{c}}= \left(ax + \frac{ad}{c}\right)Q^{-\left(ax+\frac{ad}{c}\right)}  \,\)

可以用变量代换

令\(t = a x + \frac{a d}{c}\)

化为

  -
    \(t Q^{-t} = \frac{a}{c} Q^{b-\frac{a d}{c}}\)

即：\(t \left(e^{\ln Q}\right) ^{-t} = \frac{a}{c} Q^{b-\frac{a d}{c}}\)

同乘：\({\ln Q} \,\)

得出

\[t{\ln Q} \cdot e^{-t \ln Q}={\ln Q} \cdot \frac{a}{c} Q^{b-\frac{a d}{c}}\]

故\(t{\ln Q}=-W_k\left(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\right)\)

带入\(t= a x + \frac{a d}{c}\)

为

\[\left(ax+\frac{ad}{c}\right){\ln Q}=-W_k\left(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\right)\]

因此最终的解为

\[x = -\frac{W_k\left(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\right)}{a\ln Q} - \frac{d}{c}\]

若辅助方程：\(xe^x=-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\)中，

\[-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}} \in \left(-\infty ,-\frac{1}{e} \right)\],

辅助方程无实数解，原方程亦无实解；

若：\(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}} \in \left\{-\frac{1}{e}\right\} \cup\mathbf [0,+\infty )\),

辅助方程有一实数解，原方程有一实解：

\[x = -\frac{W_k\left(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\right)}{a\ln Q} - \frac{d}{c}\]

若: \(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}} \in \left(-\frac{1}{e},0 \right)\),

辅助方程有二实解，设为\(W\left(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\right)\)，

\({\rm{W}}_{-1}\left(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\right)\)，

为

\(x_1=-\frac{W\left(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\right)}{a\ln Q} - \frac{d}{c}\)

\(x_2=-\frac{{\rm{W}}_{-1}\left(-\frac{a\ln Q}{c}\,Q^{b-\frac{a d}{c}}\right)}{a\ln Q} - \frac{d}{c}\)

  - 例子2

用类似的方法，可知以下方程的解

\[x^x={\mathrm{t}}\, ,\]

为

\[x=\frac{\ln{\rm{t}}}{W(\ln {\rm{t}})}\,\]

或

\[x=\exp\left(W_k\left[\ln({\rm{t}})\right]\right).\]

  - 例子3

以下方程的解

\[x \log_b {x} = a \,\]

具有形式

\[x = \frac{a {\ln b}}{W_k\left(a {\ln b}\right)}\]

  - 例子4
    \(x^a-b^x=0\,\)
    \(a > 0 \,\) : \(b > 0 \,\) : \(x > 0 \,\)

取对数，

  -
    \(a \ln x=x \ln b \,\)

<!-- end list -->

  -
    \(\frac{\ln x}{x}=\frac{\ln b}{a}\,\)

<!-- end list -->

  -
    \(e^{\frac{\ln x}{x}}=e^{\frac{\ln b}{a}} \,\)

<!-- end list -->

  -
    \(x^{\frac{1}{x}}=b^{\frac{1}{a}}\,\)

取倒数，

  -
    \(\left(\frac{1}{x} \right)^{\frac{1}{x}}=b^{-\frac{1}{a}}\,\)

<!-- end list -->

  -
    \(\frac{1}{x} =-\frac{\ln b}{aW\left(-\frac{1}{a} \ln b\right)}\,\)

最终解为 : \(x=-\frac{a}{\ln b}W_k\left(-\frac{\ln b}{a}\right)\,\)

  - 例子5
    \((ax+b)^n=u^{cx+d} \,\)

两边开\(n \,\)次方并除以\(a \,\)得

\(x+\frac{b}{a}=\frac{u^{\frac{c}{n}x+\frac{d}{n}}}{a}\left(\cos\frac{2k\pi}{n}+{\rm{i}}\sin\frac{2k\pi}{n}\right)\,\)

令\(u=e^{\ln u}\,\) ，

化为

\(x+\frac{b}{a}=\frac{e^{\frac{c\ln u}{n}x+\frac{d\ln u}{n}}}{a}\left(\cos\frac{2k\pi}{n}+{\rm{i}}\sin\frac{2k\pi}{n}\right)\,\)

两边同乘

\(-\frac{c\ln u}{n}u^{-\frac{c}{n}x-\frac{cb}{na}}\,\) ，

\(\left(-\frac{c\ln u}{n}x-\frac{cb\ln u}{na}\right)e^{-\frac{c\ln u}{n}x-\frac{cb\ln u}{na}}=-\frac{c\ln u}{na}u^{\frac{d}{n}-\frac{cb}{na}}\left(\cos\frac{2k\pi}{n}+{\rm{i}}\sin\frac{2k\pi}{n}\right)\,\)

最终得

\(x_k=-\frac{n}{c\ln u}W_k\left[-\frac{c\ln u}{na}u^{\frac{d}{n}-\frac{cb}{na}}\left(\cos\frac{2k\pi}{n}+{\rm{i}}\sin\frac{2k\pi}{n}\right)\right]-\frac{b}{a}\,\)

\(k\in{\mathbb{Z}}\,\)

## 一般化

標準的 Lambert W 函數可用來表示以下超越代數方程式的解：

\[e^{-c x} = a_o (x-r) ~~\quad\qquad\qquad\qquad\qquad(1)\] 其中 *a*<sub>0</sub>, *c* 與 *r* 為實常數。

其解為\(x = r +\tfrac{W\left(\frac{ce^{-c r}}{a_o}\right)}{c}\)

Lambert W 函數之一般化\[1\]\[2\]\[3\] 包括:

  - 一項在低維空間內[廣義相對論](../Page/廣義相對論.md "wikilink")與[量子力學的應用](https://zh.wikipedia.org/wiki/量子力學 "wikilink")（[量子引力](../Page/量子引力.md "wikilink")），實際上一種以前未知的 連結 於此二區域中，如 “Journal of Classical and Quantum Gravity”\[4\] 所示其 (1) 的右邊式現為二維多項式 x：

\[e^{-c x} = a_o (x-r_1 ) (x-r_2 ) ~~\qquad\qquad(2)\]

  -
    其中 *r*<sub>1</sub> 和 *r*<sub>2</sub> 是不同實常數，為二維多項式的根。於此函數解有單一引數 *x* 但 *r*<sub>i</sub> 和 *a*<sub>o</sub> 為函數的參數。如此一來，此一般式類似於 “hypergeometric”（超几何分布）函數與 “Meijer G“，但屬於不同類函數。當 *r*<sub>1</sub> = *r*<sub>2</sub>，(2)的兩方可分解為 (1) 因此其解簡化為標準 W 函數。(2)式代表著 “dilaton”（[軸子](../Page/軸子.md "wikilink")）場的方程，可據此推導線性，雙體重力問題 1+1 維（一空間維與一時間維）當兩不等（靜止）質量，以及，量子力學的特徵能[Delta位勢阱](../Page/Delta位勢阱.md "wikilink")給不等電位於一維空間。

<!-- end list -->

  - 量子力學的一特例特徵能的分析解三體問題，亦即（三維）[氢分子離子](https://zh.wikipedia.org/wiki/氢分子离子 "wikilink")。\[5\]於此 (1)（或 (2)）的右手邊現為無限級數多項式之比於 *x*：

\[e^{-c x} = a_o \frac{\prod_{i=1}^{\infty} (x-r_i )}{ \prod_{i=1}^{\infty} (x-s_i)} \qquad \qquad\qquad(3)\]

  -
    其中 *r*<sub>i</sub> 與 *s*<sub>i</sub> 是相異實常數而 *x* 是特徵能和內核距離R之函數。式 (3) 與其特例表示於 (1) 和 (2) 是與一更大類型[延遲微分方程](../Page/时滞微分方程.md "wikilink")。由于[哈代的](../Page/戈弗雷·哈罗德·哈代.md "wikilink")“虚假导数”概念，多根的特殊情况得以解决\[6\]。

Lambert "W" 函數於基礎物理問題之應用並未完全即使標準情況如 (1) 最近在原子，分子，與光學物理領域可見。\[7\]

## 图象

Image:LambertWRe.png| *z* = Re(W<sub>0</sub>(*x* + *i* *y*)) Image:LambertWIm.png| *z* = Im(W<sub>0</sub>(*x* + *i* *y*)) Image:LambertWAbs.png| *z* = |W<sub>0</sub>(*x* + *i* *y*)| Image:LambertWAll.png

## 计算

*W*函数可以用以下的[递推关系算出](https://zh.wikipedia.org/wiki/递推关系 "wikilink")：

\[w_{j+1}=w_j-\frac{w_j e^{w_j}-z}{e^{w_j}(w_j+1)-\frac{(w_j+2)(w_je^{w_j}-z)}
{2w_j+2}}\]

## 参考来源

<references/>

## 外部链接

  - [MathWorld](http://mathworld.wolfram.com/LambertW-Function.html)

[Category:特殊函数](https://zh.wikipedia.org/wiki/Category:特殊函数 "wikilink")

1.  T.C. Scott and R.B. Mann, *General Relativity and Quantum Mechanics: Towards a Generalization of the Lambert W Function*, AAECC (Applicable Algebra in Engineering, Communication and Computing), vol. 17, no. 1, (April 2006), pp.41-47, [1](http://portal.acm.org/citation.cfm?id=1127202.1127208&coll=&dl=ACM); Arxiv [2](http://arxiv.org/abs/math-ph/0607011)
2.  T.C. Scott, G. Fee and J. Grotendorst, ["Asymptotic series of Generalized Lambert W Function"](http://www.sigsam.org/cca/issues/issue185.html), SIGSAM, vol. 47, no. 3, (September 2013), pp. 75-83
3.  T.C. Scott, G. Fee, J. Grotendorst and W.Z. Zhang, ["Numerics of the Generalized Lambert W Function"](http://www.sigsam.org/cca/issues/issue188.html), SIGSAM, vol. 48, no. 2, (June 2014), pp. 42-56
4.  P.S. Farrugia, R.B. Mann, and T.C. Scott, *N-body Gravity and the Schrödinger Equation*, Class. Quantum Grav. vol. 24, (2007), pp. 4647-4659, [3](https://iopscience.iop.org/article/10.1088/0264-9381/24/18/006); Arxiv [4](http://arxiv.org/abs/gr-qc/0611144v2)
5.  T.C. Scott, M. Aubert-Frécon and J. Grotendorst, *New Approach for the Electronic Energies of the Hydrogen Molecular Ion*, Chem. Phys. vol. 324, (2006), pp. 323-338, [5](http://www.sciencedirect.com/science?_ob=ArticleURL&_udi=B6TFM-4HNYMS6-5&_user=10&_rdoc=1&_fmt=&_orig=search&_sort=d&view=c&_acct=C000050221&_version=1&_urlVersion=0&_userid=10&md5=9fd01e7be3137ccf30280c1281b62e14); Arxiv [6](http://arxiv.org/abs/physics/0607081)
6.  Aude Maignan, T.C. Scott, "Fleshing out the Generalized Lambert W Function", SIGSAM, vol. 50, no. 2, (June 2016), pp. 45-60
7.  T.C. Scott, A. Lüchow, D. Bressanini and J.D. Morgan III, *The Nodal Surfaces of Helium Atom Eigenfunctions*, Phys. Rev. A 75, (2007), p. 060101, [7](https://journals.aps.org/pra/abstract/10.1103/PhysRevA.75.060101)