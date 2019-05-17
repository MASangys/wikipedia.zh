[Lab_color_space.png](https://zh.wikipedia.org/wiki/File:Lab_color_space.png "fig:Lab_color_space.png")色域的颜色（因此可以显示在典型的计算机显示器上）。每个正方形的每个轴取值于
-128到128。\]\] **Lab色彩空间**（英語：**Lab color
space**）是颜色-对立空间，带有维度**L**表示亮度，**a**和**b**表示颜色对立维度，基于了非线性压缩的[CIE
XYZ色彩空间坐标](https://zh.wikipedia.org/wiki/CIE_XYZ色彩空间 "wikilink")。

**Hunter 1948 L, a, b色彩空间**的坐标是L, a和b。\[1\]\[2\]但是，Lab经常用做**CIE 1976
(L\*, a\*, b\*)色彩空间**的非正式缩写（也叫做CIELAB，它的坐标实际上是L\*,
a\*和b\*）。所以首字母Lab自身是有歧义的。这两个色彩空间在用途上有关联，但在实现上不同。

两个空间都得出自“主”空间[CIE 1931
XYZ色彩空间](../Page/CIE1931色彩空间.md "wikilink")，它可以预测哪些[光谱功率分布会被感知为相同的颜色](https://zh.wikipedia.org/wiki/光谱功率分布 "wikilink")（参见[異譜同色](https://zh.wikipedia.org/wiki/異譜同色 "wikilink")[metamerism](https://zh.wikipedia.org/wiki/metamerism "wikilink")），但是它不是显著[感知均匀的](https://zh.wikipedia.org/wiki/感知均匀性 "wikilink")。两个“Lab”色彩空间都受到了[孟塞尔颜色系统的强烈影响](../Page/孟塞尔颜色系统.md "wikilink")，意图都是建立可以用简单公式从XYZ计算出来，但比XYZ在感知上更线性的色彩空间\[3\]。感知上线性意味着在色彩空间上相同数量的变化应当产生大约相同视觉重要性的变化。在用有限精度值来存储颜色的时候，这可以增进色调的再生。两个Lab空间都相对于它们从而转换的XYZ数据的白点。Lab值不定义绝对色彩，除非还规定了这个白点。实际上白点经常被假定服从某个标准而不明确规定（比如ICC
L\*a\*b\*
值是相对于[CIE标准光源D](https://zh.wikipedia.org/wiki/标准光源 "wikilink")50）。\[4\]

CIELAB使用立方根计算，而Hunter Lab使用平方根计算。\[5\]。除非数据必须与现存的Hunter
L,a,b值相比较，对新应用推荐使用CIELAB。\[6\]

## 优点

不像[RGB和](https://zh.wikipedia.org/wiki/RGB "wikilink")[CMYK色彩空间](https://zh.wikipedia.org/wiki/CMYK "wikilink")，Lab颜色被设计来接近人类视觉。它致力于感知均匀性，它的L分量密切匹配人类亮度感知。因此可以被用来通过修改a和b分量的输出[色阶来做精确的颜色平衡](https://zh.wikipedia.org/wiki/色阶 "wikilink")，或使用L分量来调整亮度对比。这些变换在RGB或CMYK中是困难或不可能的——它们建模于物理设备的输出，而不是人类的视觉感知。

因为Lab空间比電腦螢幕、印表机甚至比人类视觉的[色域都要大](../Page/色域.md "wikilink")，表示为Lab的位图比RGB或CMYK位图获得同样的精度要求更多的每像素-{}-数据。在1990年代，这时的電腦硬體和软體通常受限于存储和操纵8位/通道的位图，从RGB图象到Lab之间的来回转换是有损耗的操作。对于现在常见的16位/通道支持，这就不是问题了。

此外，Lab空间内的很多“颜色”超出了人类视觉的视域，因此纯粹是假想的；这些“颜色”不能在物理世界中再生。通过颜色管理软件，比如内置于图象编辑应用程序中的那些软件，可以选择最接近的色域内近似，在处理中变换亮度、彩度甚至色相。[Dan
Margulis称](https://zh.wikipedia.org/wiki/Dan_Margulis "wikilink")，在图象操作的多个步骤之间使用假想色是很有用的。\[7\]

## 用途

在软件和文献中存在对这个缩写的明确使用。

  - 在[Adobe
    Photoshop中](../Page/Adobe_Photoshop.md "wikilink")，图象编辑使用的“Lab模式”是CIELAB
    D50。\[8\]
  - 在[ICC
    Profile中](https://zh.wikipedia.org/wiki/ICC_Profile "wikilink")，用做配置文件连接空间的“Lab色彩空间”是CIELAB
    D50。\[9\]
  - 在[TIFF文件中](../Page/TIFF.md "wikilink")，可以使用CIELAB色彩空间。\[10\]
  - 在[PDF文档中](https://zh.wikipedia.org/wiki/PDF "wikilink")，“Lab色彩空间”是CIELAB。

## CIE 1976 (L\*, a\*, b\*) 色彩空间 (CIELAB)

**CIE
L\*a\*b\*（CIELAB）**是惯常用来描述人眼可见的所有颜色的最完备的[色彩模型](https://zh.wikipedia.org/wiki/色彩模型 "wikilink")。它是为这个特殊目的而由[国际照明委员会](../Page/国际照明委员会.md "wikilink")（Commission
Internationale d'Eclairage的首字母是CIE）提出的。L、a和b后面的星号（\*）是全名的一部分，因为它们表示L\*,
a\* 和b\*，不同于L,
a和b。因为红／绿和黄／蓝对立通道被计算为（假定的）锥状细胞响应的类似孟塞尔值的变换的差异，CIELAB是Adams色彩值（Chromatic
Value）空间。

三个基本坐标表示颜色的亮度（**L\***, L\* = 0生成黑色而L\* =
100指示白色），它在红色／品红色和绿色之间的位置（**a\***负值指示绿色而正值指示品红）和它在黄色和蓝色之间的位置（**b\***负值指示蓝色而正值指示黄色）。

已经建立的L\*a\*b\*
色彩模型来充当用做参照的设备无关的模型。要认识到永远不能精确的在视觉上表示这个模型中颜色的完全色域是至关重要的。它们只是用来帮助理解概念而天生就不精确的。

因为L\*a\*b\* 模型是三维模型，它只能在三维空间中完全表现出来。\[11\]

“L\*a\*b\*”模型也被表达为“L\*C\*h(a\*, b\*)”，它把a\* 和b\* 变换为辐射表示。\[12\]

## 测量差别

CIE 1976 L\*a\*b\* 直接基於[CIE 1931
XYZ色彩空间衍生出來](../Page/CIE1931色彩空间.md "wikilink")，它嘗試使用[MacAdam橢圓所描述的顏色差異度量建立綫性化的顏色差異感知](https://zh.wikipedia.org/wiki/MacAdam橢圓 "wikilink")。L\*,
a\* 和b\*
的非綫性關係模仿人類眼睛的非線性響應。色彩信息参照這個系統裏帶有下標n的[白點的顏色](https://zh.wikipedia.org/wiki/白點 "wikilink")。\[13\]

在L\*a\*b\* 模型中均勻改變對應在感知顏色中的均勻改變。所以在L\*a\*b\*
中任何兩個顏色的相對感知差別，可以透過把每個顏色看成（有三個分量：L\*,
a\*, b\*
的）三維空間中一個點，並計算在它們之間的[欧几里得距离](https://zh.wikipedia.org/wiki/欧几里得距离 "wikilink")。\[14\]在L\*a\*b\*
空間中的這個歐幾里得距離是ΔE（經常被稱為“Delta E”，更精確的是ΔE\*<sub>ab</sub>）。

使用L\*a\*b\*
中的兩個顏色\(({L_1}^*,\ {a_1}^*,\ {b_1}^*)\)和\(({L_2}^*,\ {a_2}^*,\ {b_2}^*)\):

\[\Delta {E^*}_{ab} = \sqrt{ ({L_2}^*-{L_1}^*)^2+({a_2}^*-{a_1}^*)^2 + ({b_2}^*-{b_1}^*)^2 }\,\]

一個有關的色彩空間，[CIE 1976 (L\*, u\*,
v\*)色彩空間](https://zh.wikipedia.org/wiki/CIELUV色彩空間 "wikilink")，遵從和L\*a\*b\*
同樣的原理但有不同的u\* 和v\* 分量表示（保持相同的L\*）。

## RGB和CMYK转换

在[RGB或](https://zh.wikipedia.org/wiki/RGB "wikilink")[CMYK值与L](https://zh.wikipedia.org/wiki/CMYK "wikilink")\*a\*b\*
之间没有转换的简单公式，因为RGB和CMYK色彩空间是设备依赖的。RGB或CMYK值首先必须被变换到特定[绝对色彩空间中](../Page/绝对色彩空间.md "wikilink")，比如[sRGB或](https://zh.wikipedia.org/wiki/sRGB色彩空间 "wikilink")[Adobe
RGB](../Page/Adobe_RGB色彩空间.md "wikilink")。这种调整将是设备依赖的，但是变换的结果数据是设备无关的，允许把数据变换成[CIE
1931色彩空间并接着变换成L](https://zh.wikipedia.org/wiki/CIE_1931色彩空间 "wikilink")\*a\*b\*。

## XYZ与CIE L\*a\*b\*(CIELAB)的转换

### 正向变换

\[L^* = 116\,f(Y/Y_n) - 16\]

\[a^* = 500\,[f(X/X_n) - f(Y/Y_n)]\]

\[b^* = 200\,[f(Y/Y_n) - f(Z/Z_n)]\]

这里的

\[f(t) = t^{1/3}\,\]对于\(t >(6/29)^3\,\)否则

\[f(t) = \frac{1}{3} \left( \frac{29}{6} \right)^2 t + 16/116\]

这里的\(X_n \,\),
\(Y_n \,\)和\(Z_n \,\)是参照[白点的CIE](https://zh.wikipedia.org/wiki/白点 "wikilink")
XYZ三色刺激值。（下標n暗示了“normalized”）。

\(f(t) \,\)函数被分成两个定义域是为了防止在\(t=0 \,\)处的无限斜率。在某个\(t=t_0 \,\)之下\(f(t) \,\)被假定是线性的，并被假定匹配函数的\(t^{1/3} \,\)部分在\(t_0 \,\)的值和斜率。换句话说：

  -
    {|

|- |\(t_0^{1/3}\,\) |\(=\,\) |\(a t_0 + b\,\) | （匹配值） |-
|\(1/(3t_0^{2/3})\,\) |\(=\,\) |\(a\,\) | （匹配斜率） |}

\(b\)的值被选择为16/116。上面两个方程对\(a\)和\(t_0\)有解：

  -
    {|

|- |\(a\,\) |\(=\,\) |\(1/(3\delta^2)\,\) |\(= 7.787037\cdots\) |-
|\(t_0\,\) |\(=\,\) |\(\delta^3\,\) |\(= 0.008856\cdots\) |}

这里的\(\delta=6/29 \,\)。注意\(16/116=2\delta/3 \,\)。

### 反向变换

反向变换如下(\(\delta=6/29 \,\)如上):

1.  定义\(f_y\ \stackrel{\mathrm{def}}{=}\  (L^*+16)/116\)
2.  定义\(f_x\ \stackrel{\mathrm{def}}{=}\  f_y+a^*/500\)
3.  定义\(f_z\ \stackrel{\mathrm{def}}{=}\  f_y-b^*/200\)
4.  如果\(f_y > \delta\,\)则\(Y=Y_nf_y^3\,\)  否则\(Y=(f_y-16/116)3\delta^2Y_n\,\)
5.  如果\(f_x > \delta\,\)则\(X=X_nf_x^3\,\)  否则
    \(X=(f_x-16/116)3\delta^2X_n\,\)
6.  如果\(f_z > \delta\,\)则\(Z=Z_nf_z^3\,\)  否则
    \(Z=(f_z-16/116)3\delta^2Z_n\,\)

## 參考文獻

<div class="references-small">

<references />

</div>

## 外部連結

  - [Demonstrative color conversion
    applet](http://www.cs.rit.edu/~ncs/color/a_spaces.html)
  - [CIE Color
    Calculator](http://www.brucelindbloom.com/ColorCalculator.html)

[Category:色彩空間](https://zh.wikipedia.org/wiki/Category:色彩空間 "wikilink")

1.  Richard S Hunter, abstract, Journal of the Optical Society of
    America, **38**:661 (1948).

2.  Richard S Hunter, abstract, Journal of the Optical Society of
    America, **38**:1094 (1948).

3.  handprint.com explanation of this history:
    <http://www.handprint.com/HP/WCL/color7.html#CIELUV>

4.
5.  [Hunter L,a,b Versus CIE 1976
    L\*a\*b\*](http://www.hunterlab.com/appnotes/an02_01.pdf) (PDF)

6.
7.

8.
9.  International Color Consortium, Specification ICC.1:2004-10 (Profile
    version 4.2.0.0) Image technology colour management—Architecture,
    profile format, and data structure, (2006).

10. TIFF: Revision 6.0. Adobe Developers Association, 1992

11. See
    [here](http://www.brucelindbloom.com/index.html?WorkingSpaceInfo.html)
    for 3D representations of the L\*a\*b\* gamut.

12. See [1](http://en.wikipedia.org/wiki/Saturation_\(color_theory\))
    for information on L\*C\*h and conversion formulas.

13.

14.