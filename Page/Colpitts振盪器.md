**考畢兹振盪器**（），又稱**考畢子振盪器**，**电容三点式振荡器**，**电容反馈式振荡器**\[1\],是由美國電機工程師於1918年發明的一种LC[振盪器](https://zh.wikipedia.org/wiki/振盪器 "wikilink")（利用[電容](../Page/電容.md "wikilink")和[電感结合決定振盪頻率的](https://zh.wikipedia.org/wiki/電感 "wikilink")[电子振荡器](../Page/电子振荡器.md "wikilink")）设计。\[2\] Colpitts振荡器的特点是有源器件的[反馈](../Page/反馈.md "wikilink")来自一个与电感串联的，由两个电容构成的[分压器](../Page/電壓分配定則.md "wikilink")。\[3\]\[4\]\[5\]\[6\]

## 概述

|                                                                                                                                                      |                                                                                                                                                         |
| ---------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Cb_colp.svg](https://zh.wikipedia.org/wiki/File:Cb_colp.svg "fig:Cb_colp.svg")Colpitts振荡器（简化[偏置](https://zh.wikipedia.org/wiki/偏置 "wikilink")）\]\] | [Cc_colp2.svg](https://zh.wikipedia.org/wiki/File:Cc_colp2.svg "fig:Cc_colp2.svg")Colpitts振荡器（简化[偏置](https://zh.wikipedia.org/wiki/偏置 "wikilink")）\]\] |

像其他的LC振荡器一样，Colpitts电路由一个增益器件（如双极结型[晶体管](../Page/晶体管.md "wikilink")、场效应管、运算放大器或真空管）的输出连在它的输入上，[反馈](../Page/反馈.md "wikilink")回路包含一个[LC并联电路](../Page/LC电路.md "wikilink")（[调谐电路](../Page/LC电路.md "wikilink")）作为一个[带通滤波器固定振荡频率](https://zh.wikipedia.org/wiki/带通滤波器 "wikilink")。Colpitts振盪器可以看成是[Hartley振盪器的對偶](https://zh.wikipedia.org/wiki/Hartley振盪器 "wikilink")，在哈特萊振盪器中反馈信号来自用两个线圈串联（或是一個抽頭線圈）组成的“感性”分压器。图1显示了共基极Colpitts电路。*L* 和串联组合的 *C*<sub>1</sub> 与 *C*<sub>2</sub> 构成的并联谐振电路决定了振荡器的频率。在 *C*<sub>2</sub> 两端的电压作为反馈施加到晶体管的基极-发射极结，用以产生振荡。图2显示了共集极版本。这里 *C*<sub>1</sub> 两端的电压提供反馈。振荡频率约为LC电路（即两个电容器与电感的串联组合）的谐振频率，

\[f_0 = {1 \over 2 \pi \sqrt {L \left ({ C_1 C_2 \over C_1 + C_2 }\right ) }}\] 由于结电容和晶体管的阻性负载，振荡的实际频率会略微降低。

与任何振荡器一样，为了稳定工作，有源元件的放大率应略大于电容分压器的衰减。因此，使用可变电感调谐时，相对于调整两个电容的其中一个来说，可使Colpitts振荡器达到最佳性能。若需采用可变电容器调谐，应该将第三个电容与电感并接（或者像在[克拉普振盪器](../Page/克拉普振盪器.md "wikilink")中那样串联）。

### 实例

[NPN_Colpitts_oscillator_collector_coil.svg](https://zh.wikipedia.org/wiki/File:NPN_Colpitts_oscillator_collector_coil.svg "fig:NPN_Colpitts_oscillator_collector_coil.svg")

图3显示了标有器件参数的一个工作示例。除了[双极性晶体管](https://zh.wikipedia.org/wiki/双极性晶体管 "wikilink")，还可以使用能够在所需的频率产生[场效应管](../Page/场效应管.md "wikilink")或[真空管](../Page/真空管.md "wikilink")等有源器件。

基地的电容为可能会产生不需要的频率的寄生电感提供一条交流通路接地。\[7\] 基极偏置电阻的选择并不简单。到达临界偏置电流时周期性振荡开始，并会随着偏置电流变化到一个更高的值，会观测到混沌振荡。\[8\]

## 理论

[Colpitts_ideal_model.svg](https://zh.wikipedia.org/wiki/File:Colpitts_ideal_model.svg "fig:Colpitts_ideal_model.svg")

分析振盪器的其中一種方法是在忽略回授影響的情形下計算其中一個輸入端對應的輸入阻抗，若算出的輸入阻抗是[負值則有可能出現振盪](../Page/負阻特性.md "wikilink")。以下利用這種方法決定振盪條件與振盪頻率。

右邊是一個理想模型。此模型是使用前一節中提到的共集極放大器。一開始把[寄生電容或其他非線性元件的影響忽略](https://zh.wikipedia.org/wiki/寄生電容 "wikilink")，等到分析結束後再把這些項代回以進行更確確的計算。雖然看起來忽略了不少東西，但計算出的解與實驗結果相比之後，仍然是可接受的。

忽略電感，所以輸入[阻抗](../Page/阻抗.md "wikilink")可以寫成：

\[Z_{in} = \frac{v_1}{i_1}\]

而 \(v_1\) 為輸入電壓，\(i_1\) 為輸入電流，電壓 \(v_2\) 的值是根據下式：

\[v_2 = i_2 Z_2\]

\(Z_2\) 的值為 \(C_2\) 的阻抗。流入 \(C_2\) 的電流值為 \(i_2\)，這個值是另外兩個電流值的和：

\[i_2 = i_1 + i_s\]

電流值 \(i_s\) 為BJT輸出的電流。\(i_s\) 的值可以用下式計算：

\[i_s = g_m \left ( v_1 - v_2 \right )\]

\(g_m\) 是BJT的[跨導](https://zh.wikipedia.org/wiki/跨導 "wikilink")（transconductance）。另外一個電流值 \(i_1\) 的表示式為：

\[i_1 = \frac{v_1 - v_2}{Z_1}\]

式子中的 \(Z_1\) 為 \(C_1\) 的阻抗。解出 \(v_2\) 的表示式，代回可得：

\[Z_{in} = Z_1 + Z_2 + g_m Z_1 Z_2\]

輸入阻抗看起來像是兩個電容的阻抗與一個奇妙的項串連。因 \(R_{in}\) 與兩個電容的阻抗積成正比：

\[R_{in} = g_m \cdot Z_1 \cdot Z_2\]

若 \(Z_1\) 與 \(Z_2\) 為同號複數，\(R_{in}\) 便會是[負阻抗](../Page/負阻特性.md "wikilink")（negative resistance）。若 \(Z_1\) 與 \(Z_2\) 以 \(j{\omega}C_1\) 和 \(j{\omega}C_2\) 代入 \(R_{in}\)：

\[R_{in} = \frac{-g_m}{\omega ^ 2 C_1 C_2}\]

若電感連接輸入，當負阻抗的絕對值比電感的阻抗大的時候，此電路會開始振盪。振盪頻率可見上一節的表示式。

以之前的振盪器為例，射極電流大約是1毫安培。跨導約40毫[西門子](https://zh.wikipedia.org/wiki/西門子 "wikilink")（Simens），代入上面的表示式，輸入阻抗約為：

\[R_{in} = -30 \ \Omega\]

式中負阻抗的絕對值已足以超過電路中的任何電阻。在驗算時會發現：振盪在更大的跨導與更小的電容之下更容易發生。共基极振荡器的更复杂的分析表明，一个低频放大器电压增益至少为四才能实现振荡。\[9\] 低频增益为：

\[A_v = g_m \cdot R_p  \ge 4\]

[Oscillator_comparison.svg](https://zh.wikipedia.org/wiki/File:Oscillator_comparison.svg "fig:Oscillator_comparison.svg") 若把這兩個電容換成電感，並忽略電感間磁偶合的影響，則電路就變成了[Hartley振盪器](https://zh.wikipedia.org/wiki/Hartley振盪器 "wikilink")。如此一來，輸入阻抗為兩個電感值的和，而負阻抗可以寫成：

\[R_{in} = -g_m \omega ^ 2 L_1 L_2\]

在Hartley振盪器的電路中，振盪在更大的跨導及更大的電感值之下更容易發生。

有趣的是，在上述分析还可以描述[皮爾斯震盪器](../Page/皮爾斯震盪器.md "wikilink")的行为。皮尔斯振荡器，有两个电容和一个电感，与Colpitts振荡器等效。\[10\] 可以通过将两个电容器之间设为接地点来证明。使用两个电感和一个电容的标准皮尔斯振荡器的电学对偶与[哈特萊振盪器等价](https://zh.wikipedia.org/wiki/哈特萊振盪器 "wikilink")。

### 振荡幅度

振荡的振幅一般很难预测，但往往可以用方法准确地估计使的。

对于图1中常见的基准振荡器，该方法施加在一个简化模型中可以预测输出（集电极）的电压幅值：<ref>Trade-Offs in Analog Circuit Design: The Designer's Companion, Part 1

`By Chris Toumazou, George S. Moschytz, Barrie Gilbert `[`1`](http://books.google.com/books?id=VoBIOvirkiMC&lpg=PA568&ots=MD4aYrSVjr&dq=the%20tank%20voltage%20amplitude%20is%20calculated%20to%20be&pg=PA568#v=onepage&q=the%20tank%20voltage%20amplitude%20is%20calculated%20to%20be&f=false)</ref>

\[V_C = 2 I_C R_L \frac{C_2}{C_1 + C_2}\]

其中 \(I_C\) 是偏置电流，而 \(R_L\) 是集电极的负载电阻。

这里假设该晶体管不饱和，集电极电流以窄脉冲流过，输出电压为正弦（低失真）。

这种近似的结果也适用于采用不同有源器件的振荡器，如[MOSFET和](https://zh.wikipedia.org/wiki/MOSFET "wikilink")[真空管](../Page/真空管.md "wikilink")。

## 參見

  - [皮爾斯晶體震盪電路](../Page/皮爾斯震盪器.md "wikilink")

## 参考文献

## 延伸阅读

  - Lee, T. The Design of CMOS Radio-Frequency Integrated Circuits. Cambridge University Press. 2004.
  - Ulrich L. Rohde, Ajay K. Poddar, Georg Böck "The Design of Modern Microwave Oscillators for Wireless Applications ", John Wiley & Sons, New York, NY, May, 2005, ISBN 978-0-471-72342-4.
  - George Vendelin, Anthony M. Pavio, Ulrich L. Rohde " Microwave Circuit Design Using Linear and Nonlinear Techniques ", John Wiley & Sons, New York, NY, May, 2005, ISBN 978-0-471-41479-7.

## 外部链接

  - [Java Simulation of a Colpitts oscillator](http://www.falstad.com/circuit/e-colpitts.html)
  - Hemanshu R. Pota "[Analysis of Common-Collector Colpitts Oscillator](http://seit.unsw.adfa.edu.au/staff/sites/hrp/teaching/Electronics4/docs/PLL/colpitts.pdf)", 2005.

[Category:振荡器](https://zh.wikipedia.org/wiki/Category:振荡器 "wikilink") [Category:電子設計](https://zh.wikipedia.org/wiki/Category:電子設計 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [University of California Santa Barbara Untitled Publication](http://www.ece.ucsb.edu/Faculty/rodwell/Classes/ece218b/notes/Oscillators2.pdf), p. 3.
8.  S. Sarkar, S. Sarkar, B. C. Sarkar. ["Nonlinear Dynamics of a BJT Based Colpitts Oscillator with Tunable Bias Current"](http://www.ijeat.org/attachments/File/v2i5/E1662062513.pdf) . *IJEAT* ISSN: 2249–8958, Volume-2, Issue-5, June 2013. p. 1.
9.  Razavi, B. Design of Analog CMOS Integrated Circuits. McGraw-Hill. 2001.
10. Theron Jones. ["Design a Crystal Oscillator to Match Your Application"](http://www.maximintegrated.com/en/app-notes/index.mvp/id/5265). Maxim tutorial 5265 Sep 18, 2012, Maxim Integrated Products, Inc