[LC_parallel_simple.svg](https://zh.wikipedia.org/wiki/File:LC_parallel_simple.svg "fig:LC_parallel_simple.svg")
[Low_cost_DCF77_receiver.jpg](https://zh.wikipedia.org/wiki/File:Low_cost_DCF77_receiver.jpg "fig:Low_cost_DCF77_receiver.jpg")中一个接收器的调谐电路。\]\]

**LC电路**，也称为**谐振电路**、**槽路**或**调谐电路**，是包含一个[电感](../Page/电感元件.md "wikilink")（用字母L表示）和一个[电容](../Page/电容器.md "wikilink")（用字母C表示）连接在一起的[电路](../Page/电路.md "wikilink")。该电路可以用作电[谐振器](https://zh.wikipedia.org/wiki/谐振器 "wikilink")（[音叉](../Page/音叉.md "wikilink")的一种电学模拟），储存电路[共振](../Page/共振.md "wikilink")时振荡的能量。

LC电路既用于产生特定频率的信号，也用于从更复杂的信号中分离出特定频率的信号。它们是许多电子设备中的关键部件，特别是无线电设备，用于[振盪器](https://zh.wikipedia.org/wiki/振盪器 "wikilink")、[滤波器](../Page/电子滤波器.md "wikilink")、和[混频器](../Page/混频器.md "wikilink")电路中。

电感电路是一个理想化的模型，因为它假定有没有因[电阻](../Page/电阻.md "wikilink")耗散的能量。任何一个LC电路的实际实现中都会包含组件和连接导线的尽管小却非零的电阻导致的损耗。LC电路的目的通常是以最小的[阻尼](../Page/阻尼.md "wikilink")振荡，因此电阻做得尽可能小。虽然实际中没有无损耗的电路，但研究这种电路的理想形式对获得理解和物理性直觉都是有益的。对于带有电阻的电路模型，参见[RLC电路](../Page/RLC电路.md "wikilink")。

## 術語

在**LC电路**中，L代表[電感](https://zh.wikipedia.org/wiki/電感 "wikilink")，单位：[亨利](https://zh.wikipedia.org/wiki/亨利_\(单位\) "wikilink")（H），C代表[电容](https://zh.wikipedia.org/wiki/电容 "wikilink")，单位：[法拉](../Page/法拉.md "wikilink")（F）。

电磁振盪完成一次周期性变化需要的时间叫做[周期](https://zh.wikipedia.org/wiki/周期 "wikilink")，一秒内完成的周期性变化的次数叫做[频率](https://zh.wikipedia.org/wiki/频率 "wikilink")。

[振盪电路中发生电磁振盪时](https://zh.wikipedia.org/wiki/振盪电路 "wikilink")，如果没有[能量](../Page/能量.md "wikilink")损失，也不受其他外界的影响，这是电磁振盪的周期和频率，叫做振盪电路的[固有频率和](https://zh.wikipedia.org/wiki/固有频率 "wikilink")[固有周期](https://zh.wikipedia.org/wiki/固有周期 "wikilink")。固有周期可以用下式求得

\[T=2\pi\sqrt{LC}\]

其时间常数为L/R.

## 时域解

### 基尔霍夫定律

以LC並聯電路為例，电容两端的电压 *V*<sub>C</sub> 等於电感两端的电压 *V*<sub>L</sub> ：

\[V _{C} = V_{L} .\,\]

流入电容的电流等于流出电感的电流：

\[i_{C} = -i_{L} .\,\]

从电路元件的本构关系可知

\[V _{L}(t) = L \frac{\mathrm{d}i_{L}}{\mathrm{d}t}\,\]

并且

\[i_{C}(t) = C \frac{\mathrm{d}V_{C}}{\mathrm{d}t}.\,\]

### 微分方程

调换顺序并进行代换得到二阶[微分方程](../Page/微分方程.md "wikilink")

\[\frac{\mathrm{d} ^{2}i_{L}(t)}{\mathrm{d}t^{2}} + \frac{1}{LC} i_{L}(t) = 0.\,\]

参数
ω<sub>0</sub>，谐振[角频率定义为](https://zh.wikipedia.org/wiki/角频率 "wikilink")：

\[\omega_0 = { 1 \over \sqrt{LC} }\]

利用这个可以简化微分方程

\[\frac{\mathrm{d} ^{2}i_{L}(t)}{\mathrm{d}t^{2}} + \omega_0^ {2} i_{L}(t) = 0.\,\]

相关的多项式是

\[s^2 + \omega_0^2 = 0\]

因此，

\[s = +j \omega_0\,\]

或者说

\[s = -j \omega_0\,\]

  -

      -
        其中 *j* 为[虛數單位](../Page/虛數單位.md "wikilink")。

## 相關條目

  - [RL电路](../Page/RL电路.md "wikilink")
  - [RC電路](../Page/RC電路.md "wikilink")
  - [RLC电路](../Page/RLC电路.md "wikilink")

[Category:電路分析](https://zh.wikipedia.org/wiki/Category:電路分析 "wikilink")