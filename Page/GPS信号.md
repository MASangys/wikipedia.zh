> 本文内容由[GPS信号](https://zh.wikipedia.org/wiki/GPS信号)转换而来。


**GPS信号**，是由[全球定位系统](../Page/全球定位系统.md "wikilink")（GPS）[卫星上](https://zh.wikipedia.org/wiki/卫星 "wikilink")[振盪器所产生的信号](https://zh.wikipedia.org/wiki/振盪器 "wikilink")，而所有GPS信号都由一个基本[频率f](https://zh.wikipedia.org/wiki/频率 "wikilink")<sub>0</sub>=10.23Mhz组成。 [GPS卫星](../Page/GPS卫星.md "wikilink")发射的信号主要分为[载波](https://zh.wikipedia.org/wiki/载波 "wikilink")（Carrier wave）、测距码（Ranging Code）和导航电文（Navigation Messages ）三部分。

## 最初的GPS信号

### 载波

GPS卫星所用的两个载波均位于[微波的L波段](https://zh.wikipedia.org/wiki/微波 "wikilink")，分别称为\(L_1\)载波和\(L_2\)载波

两个相关的载波信号：

\(L_1(t)=A_1cos(2\pi f_1t+\phi_1)\)
\(L_2(t)=A_2cos(2\pi f_2t+\phi_2)\)

\(\phi_1\)和\(\phi_2\)描述了相位噪声。载波信号的[频率为基本频率](https://zh.wikipedia.org/wiki/频率 "wikilink")\(f_0\)的[整数](../Page/整数.md "wikilink")倍。

\(f_1=154f_0=1575.42MHz\)
\(f_2=120f_0=1227.60MHz\)
\(\to \lambda_1\approx 19cm, \lambda_2\approx 24cm\)

采用L波段的高频率载波可以较为精确的测定[多普勒频移和载波相位](https://zh.wikipedia.org/wiki/多普勒频移 "wikilink")，提高测速和定位精度。使用两个频率还可以测定[电离层](../Page/电离层.md "wikilink")延迟。

### 测距码

测距码有两种，都属于[伪随机噪声码](https://zh.wikipedia.org/wiki/伪随机噪声码 "wikilink")（Pseudo Random Noise，简称 PRN）：C/A 碼（Coarse/Acquisition Code）和P碼（Precise Code）。

#### C/A碼

C/A碼（Coarse/Acquisition Code）是用于进行粗略测距和捕获P码的粗码，也称捕获码。周期\(T_u\)为1毫秒，一个周期含有码元即码长\(N_u\)=2<sup>10</sup> - 1=1023，每个码元持续的时间即码元周期\(t_u\)=1ms/1023=0.977517微秒，相应的码元宽度为293.05米。C/A码是一种公开的明码，可供全球用户免费使用。但C/A码一般只调制在\(L_1\)载波上，所以无法精确地消除电离层延迟。测距精度一般为±（2\~3）米。

是開放給民間使用的[GPS衛星傳送標準定位信號](https://zh.wikipedia.org/wiki/GPS "wikilink")，它包含有GPS接收機用來確定其定位與時間方面的訊息，精確度在100公尺左右\[1\]。

這裡所提的C/A碼是指GPS所散布的序列，以下只討論L1信號部分。在GPS中用的C/A碼是一個群集，它們通常又被叫做偽[隨機雜訊](https://zh.wikipedia.org/wiki/隨機 "wikilink")（Pseudorandom Noise,PRN）序列，因為它們有著雜訊的部分性質，GPS的C/A碼裡有著1023個元素，這裡面含有512個1與511個0，他們的排列是看起來彷彿隨機的，但是卻是完全可決定的，因此叫做偽隨機雜訊序列。

這些序列最重要的性質有兩個：

  - 幾乎沒有[互相關](https://zh.wikipedia.org/wiki/互相關 "wikilink")：所有的C/A碼彼此之間幾乎沒有相關，也就是說，從i衛星得到的\(C_i\)和從j衛星得到的\(C_j\)兩個碼，他們的互相關可以表示如下式：

\(r_{ij}(n)=\sum_{m=0}^{1022} C_{i}(m)C_{j}(n+m)\approx 0\) for all n

  - 幾乎沒有[自相關](https://zh.wikipedia.org/wiki/自相關 "wikilink")，除了零延遲：所有的C/A碼幾乎沒有自相關，除了零延遲，也就是說自相關可以表示如下式：

\(r_{ii}(n)=\sum_{m=0}^{1022} C_{i}(m)C_{i}(n+m)\approx 0\) for |n|≥1

利用這兩個性質，可以做[GPS信號擷取](../Page/GPS信號擷取.md "wikilink")

#### P码

P码是精确测定从GPS卫星到用户接收机距离的测距码，也称精码。实际周期为一周，码长为6.1871 × 10<sup>12</sup>码元，码元周期0.097752微秒，相应码元宽度为29.3米。P码同时调制到\(L_1\)载波和\(L_2\)载波上，测距精度为0.3米。因其巨大的军事价值，1994年起美国实施了选择性误差SA（Selective Availability）政策，故目前只有[美国](../Page/美国.md "wikilink")及其盟友的军方以及少数美国政府授权的用户才能够使用到P码。普通用户可以先捕获C/A码，再通过导航电文提供的数据计算出P码在整个序列码中的位置。 2000年以後，柯林頓政府決定取消對民用訊號的干擾。因此，現在民用GPS也可以達到十米左右的定位精度。

### 导航电文

[GPS_signal_modulation_scheme.svg](https://zh.wikipedia.org/wiki/File:GPS_signal_modulation_scheme.svg "fig:GPS_signal_modulation_scheme.svg") 光有测距码用户还不能够得到每颗卫星的详细信息。因此GPS系统将导航电文调制在测距码前，导航电文中包含了反应卫星在空间位置、卫星钟的修正参数、电离层延迟改正数等GPS定位所必要的信息，因此导航电文也称数据码（Data Message，D码）。

导航电文是具有一定格式的[二进制码](https://zh.wikipedia.org/wiki/二进制 "wikilink")，以“帧”为单位向用户发送。每帧电文含有1500bit，传输速率为50bit/s。每个主帧包含5个子帧：

  - 子帧1包含有卫星钟改正数、GPS周数（Week Number）和卫星工作状态信息
  - 子帧2和子帧3主要向用户提供有关计算卫星在轨位置的信息，包括广播星历参数和数据龄期（Age of Data Offset，简称AODO）
  - 子帧4和子帧5提供了卫星导航、星座历书等信息

## 參考文獻

<div class="references-small">

<references>

</references>

</div>

## 其他參考資料

  -
  -
  - Kai Borre, Dennis M. Akos, Nicolaj Bertelsen, Peter Rinder, Soren Holdt Jensen。《A Software-Defined GPS and Galileo Receiver: A Single-Frequency Approach》\[M\]。Birkhäuser Boston，2006年。

## 參見

  - [全球定位系統](https://zh.wikipedia.org/wiki/全球定位系統 "wikilink")
  - [GPS信號擷取](../Page/GPS信號擷取.md "wikilink")

[分类:全球定位系统](https://zh.wikipedia.org/wiki/分类:全球定位系统 "wikilink")

[Category:衛星導航系統](https://zh.wikipedia.org/wiki/Category:衛星導航系統 "wikilink")

1.  [《專業術語》，Garmin官方網站](http://www.garmin.com.tw/support/aboutGPS/glossary.htm)