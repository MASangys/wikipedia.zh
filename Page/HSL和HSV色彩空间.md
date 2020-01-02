> 本文内容由[HSL和HSV色彩空间](https://zh.wikipedia.org/wiki/HSL和HSV色彩空间)转换而来。


[Hsl-hsv_models.svg](https://zh.wikipedia.org/wiki/File:Hsl-hsv_models.svg "fig:Hsl-hsv_models.svg")

**HSL**和**HSV**都是一种将[RGB色彩模型中的点在](../Page/三原色光模式.md "wikilink")[圆柱坐标系中的表示法](https://zh.wikipedia.org/wiki/圆柱坐标系 "wikilink")。这两种表示法试图做到比基于[笛卡尔坐标系](../Page/笛卡尔坐标系.md "wikilink")的几何结构RGB更加直观。

HSL即[色相](../Page/色相.md "wikilink")、[饱和度](https://zh.wikipedia.org/wiki/色度_\(色彩学\) "wikilink")、[亮度](https://zh.wikipedia.org/wiki/亮度 "wikilink")（）。HSV即[色相](../Page/色相.md "wikilink")、[饱和度](https://zh.wikipedia.org/wiki/色度_\(色彩学\) "wikilink")、[明度](https://zh.wikipedia.org/wiki/明度 "wikilink")（），又称**HSB**，其中B即。

  - [色相](../Page/色相.md "wikilink")（H）是色彩的基本属性，就是平常所说的[颜色](../Page/颜色.md "wikilink")名称，如[红色](../Page/红色.md "wikilink")、[黄色](../Page/黄色.md "wikilink")等。
  - [饱和度](https://zh.wikipedia.org/wiki/色度_\(色彩学\) "wikilink")（S）是指色彩的纯度，越高色彩越纯，低则逐渐变灰，取0-100%的数值。
  - [明度](https://zh.wikipedia.org/wiki/明度 "wikilink")（V），亮度（L），取0-100%。

HSL和HSV二者都把颜色描述在[圓柱坐標系](../Page/圓柱坐標系.md "wikilink")内的点，这个圆柱的中心轴取值为自底部的[黑色](../Page/黑色.md "wikilink")到顶部的[白色](../Page/白色.md "wikilink")而在它们中间的是[灰色](https://zh.wikipedia.org/wiki/灰色 "wikilink")，绕这个轴的角度对应于“色相”，到这个轴的距离对应于“饱和度”，而沿着这个轴的高度对应于“亮度”、“色调”或“明度”。

这两种表示在目的上类似，但在方法上有区别。二者在数学上都是圆柱，但HSV（色相、饱和度、明度）在概念上可以被认为是颜色的倒[圆锥体](https://zh.wikipedia.org/wiki/圆锥体 "wikilink")（黑点在下[顶点](../Page/頂點_\(幾何\).md "wikilink")，白色在上底面圆心），HSL在概念上表示了一个双圆锥体和圆球体（白色在上顶点，黑色在下顶点，最大横切面的圆心是半程灰色）。注意尽管在HSL和HSV中“色相”指称相同的性质，它们的“饱和度”的定义是明显不同的。

因为HSL和HSV是设备依赖的RGB的简单变换，(*h*, *s*, *l*)或 (*h*, *s*, *v*)三元组定义的颜色依赖于所使用的特定[红色](../Page/红色.md "wikilink")、[绿色和](https://zh.wikipedia.org/wiki/绿色 "wikilink")[蓝色](https://zh.wikipedia.org/wiki/蓝色 "wikilink")“[加法原色](../Page/原色.md "wikilink")”。每个独特的RGB设备都伴随着一个独特的HSL和HSV空间。但是 (*h*, *s*, *l*)或 (*h*, *s*, *v*)三元组在被约束于特定RGB空间比如[sRGB的时候就更明确了](https://zh.wikipedia.org/wiki/sRGB "wikilink")。

HSV模型在1978年由[埃爾維·雷·史密斯创立](https://zh.wikipedia.org/wiki/埃爾維·雷·史密斯 "wikilink")，它是[三原色光模式](../Page/三原色光模式.md "wikilink")的一种非线性变换。

## 动机

大多数电视机、显示器、投影仪通过将不同强度的红、绿、蓝色光混合来生成不同的颜色，这就是RGB [三原色的](https://zh.wikipedia.org/wiki/三原色 "wikilink")[加色法](https://zh.wikipedia.org/wiki/加色法 "wikilink")。通过这种方法可以在[RGB色彩空间生成大量不同的颜色](https://zh.wikipedia.org/wiki/RGB色彩空间 "wikilink")，然而，这三种颜色分量的取值与所生成的颜色之间的联系并不直观。

艺术家有时偏好使用HSL或HSV而不选择[三原色光模式](../Page/三原色光模式.md "wikilink")（即[RGB模型](https://zh.wikipedia.org/wiki/RGB "wikilink")）或 [印刷四分色模式](../Page/印刷四分色模式.md "wikilink")（即[CMYK模型](https://zh.wikipedia.org/wiki/CMYK "wikilink")），因为它类似于人类感觉颜色的方式，具有较强的感知度。RGB和CMYK分别是[加法原色和](../Page/原色.md "wikilink")[减法原色模型](../Page/原色.md "wikilink")，以原色组合的方式定义颜色，而HSV以人类更熟悉的方式封装了关于颜色的信息：“这是什么颜色？深浅如何？明暗如何？”。

但是色彩属性和[物理学中的](https://zh.wikipedia.org/wiki/物理 "wikilink")[光谱并不是完全对应的](https://zh.wikipedia.org/wiki/光谱 "wikilink")，物理学的[人类可见光谱是有两个端点的直线形](https://zh.wikipedia.org/wiki/人类 "wikilink")，并不能形成一个环。当然每种颜色都可以找到相应的光[波长](../Page/波长.md "wikilink")，但都有一个范围，并不是单一的波长。[明度一般和具体某种颜色的光波](https://zh.wikipedia.org/wiki/明度 "wikilink")[能量](../Page/能量.md "wikilink")相当，但和整个光谱的[能量](../Page/能量.md "wikilink")无关（因为每种波长的光的能量都不相同）。HSV颜色空间在技术上不支持到[辐射测定中测量的物理](https://zh.wikipedia.org/wiki/辐射测定 "wikilink")[能量谱密度的一一映射](../Page/谱密度.md "wikilink")。所以一般不建议做在HSV坐标和物理光性质如[波长](../Page/波长.md "wikilink")和[振幅之间的直接比较](https://zh.wikipedia.org/wiki/振幅 "wikilink")。HSL不清楚。

## 用途

[Triangulo_HSV.png](https://zh.wikipedia.org/wiki/File:Triangulo_HSV.png "fig:Triangulo_HSV.png") [HSV_cone.png](https://zh.wikipedia.org/wiki/File:HSV_cone.png "fig:HSV_cone.png")

HSV模型通常用于[计算机图形应用中](../Page/计算机图形学.md "wikilink")。在用户必须选择一个颜色应用于特定图形元素各种应用环境中，经常使用HSV [色轮](https://zh.wikipedia.org/wiki/色轮 "wikilink")。在其中，色相表示为圆环；可以使用一个独立的三角形来表示饱和度和明度。典型的，这个三角形的垂直轴指示饱和度，而水平轴表示明度。在这种方式下，选择颜色可以首先在圆环中选择色相，在从三角形中选择想要的饱和度和明度。

HSV模型的另一种可视方法是圆锥体。在这种表示中，色相被表示为绕圆锥中心轴的角度，饱和度被表示为从圆锥的横截面的圆心到这个点的距离，明度被表示为从圆锥的横截面的圆心到[顶点的距离](../Page/頂點_\(幾何\).md "wikilink")。某些表示使用了六棱锥体。这种方法更适合在一个单一物体中展示这个HSV色彩空间；但是由于它的三维本质，它不适合在二维计算机界面中选择颜色。

HSV色彩空間还可以表示为类似于上述圆锥体的圆柱体，色相沿着圆柱体的外圆周变化，饱和度沿着从横截面的圆心的距离变化，明度沿着横截面到底面和顶面的距离而变化。这种表示可能被认为是HSV色彩空间的更精确的数学模型；但是在实际中可区分出的饱和度和色相的级别数目随着明度接近黑色而减少。此外计算机典型的用有限精度范围来存储RGB值；这约束了精度，再加上人类颜色感知的限制，使圆锥体表示在多数情况下更实用。

## HSL与HSV的比较

[HSL_HSV_cylinder_color_solid_comparison.png](https://zh.wikipedia.org/wiki/File:HSL_HSV_cylinder_color_solid_comparison.png "fig:HSL_HSV_cylinder_color_solid_comparison.png")

HSL类似于HSV。对于一些人，HSL更好的反映了“饱和度”和“亮度”作为两个独立参数的直觉观念，但是对于另一些人，它的饱和度定义是错误的，因为非常柔和的几乎白色的颜色在HSL可以被定义为是完全饱和的。对于HSV还是HSL更适合于人类用户界面是有争议的。

[W3C的](https://zh.wikipedia.org/wiki/W3C "wikilink")[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")3规定声称“HSL的优点是它对称于亮与暗（HSV就不是这样）…”，这意味着：

  - 在HSL中，饱和度分量总是从完全饱和色变化到等价的灰色（在HSV中，在极大值V的时候，饱和度从全饱和色变化到白色，这可以被认为是反直觉的）。
  - 在HSL中，亮度跨越从黑色过选择的色相到白色的完整范围（在HSV中，V分量只走一半行程，从黑到选择的色相）。

在软件中，通常以一个线性或圆形色相选择器和在其中为选定的色相选取饱和度和明度／亮度的一个二维区域（通常为方形或三角形）形式提供给用户基于色相的颜色模型（HSV或HSL）。通过这种表示，在HSV和HSL之间的区别就无关紧要了。但是很多程序还允许你通过线性滑块或数值录入框来选择颜色的明度／亮度，而对于这些控件通常使用要么HSL要么HSV（而非二者）。HSV传统上更常用。下面是一些例子：

[Gimp_color_selector_03.gif](https://zh.wikipedia.org/wiki/File:Gimp_color_selector_03.gif "fig:Gimp_color_selector_03.gif")支持在HSV色彩空間內的選取顏色的多種方法，包括帶有色相滑塊的色輪和色方。\]\]

  - 使用HSV（HSB）的应用：
      - Apple [Mac OS X系统颜色选择器](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")（有一个H/S颜色碟和一个V滑块）
      - [Xara Xtreme](https://zh.wikipedia.org/wiki/Xara_Xtreme "wikilink")
      - [Paint.NET](../Page/Paint.NET.md "wikilink")（有一个H/S颜色碟和一个V滑块）
      - Adobe图形应用程序（[Illustrator](../Page/Adobe_Illustrator.md "wikilink")，[Photoshop](../Page/Adobe_Photoshop.md "wikilink")，等等）
      - [Turbo Photo](https://zh.wikipedia.org/wiki/Turbo_Photo "wikilink")

<!-- end list -->

  - 使用HSL的应用：
      - [CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")3规定
      - [Inkscape](../Page/Inkscape.md "wikilink")（从版本0.42开始）
      - [Macromedia Studio](https://zh.wikipedia.org/wiki/Macromedia_Studio "wikilink")
      - [Microsoft Windows系统颜色选择器](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（包括[Microsoft Paint](https://zh.wikipedia.org/wiki/Microsoft_Paint "wikilink")）
      - [Paint Shop Pro](https://zh.wikipedia.org/wiki/Paint_Shop_Pro "wikilink")
      - [ImageMagick](../Page/ImageMagick.md "wikilink")

<!-- end list -->

  - 使用HSV和HSL二者的应用：
      - [Pixel image editor](https://zh.wikipedia.org/wiki/Pixel_image_editor "wikilink")（从Beta5开始）
      - [Pixia](https://zh.wikipedia.org/wiki/Pixia "wikilink")
      - [Bryce](https://zh.wikipedia.org/wiki/Bryce_\(软件\) "wikilink")
      - [GIMP](../Page/GIMP.md "wikilink")（HSV用于颜色选择，HSL用于颜色调整）

## 形式定义

HSL和HSV在数学上定义为在RGB空间中的颜色的*R*, *G*和*B*的坐标的变换。

### 从RGB到HSL或HSV的转换

设 (*r*, *g*, *b*)分别是一个颜色的红、绿和蓝坐标，它们的值是在0到1之间的实数。设*max*等价于*r*, *g*和*b*中的[最大者](https://zh.wikipedia.org/wiki/極值 "wikilink")。设*min*等于这些值中的最小者。要找到在HSL空间中的 (*h*, *s*, *l*)值，这里的*h* ∈ \[0, 360）[度是角度的色相角](https://zh.wikipedia.org/wiki/角度 "wikilink")，而*s*, *l* ∈ \[0,1\]是饱和度和亮度，计算为：

\[h =
\begin{cases}
0^\circ & \mbox{if } max = min \\
60^\circ \times \frac{g - b}{max - min} + 0^\circ,   & \mbox{if } max = r \mbox{ and } g \ge b \\
60^\circ \times \frac{g - b}{max - min} + 360^\circ,   & \mbox{if } max = r \mbox{ and } g < b \\
60^\circ \times \frac{b - r}{max - min} + 120^\circ, & \mbox{if } max = g \\
60^\circ \times \frac{r - g}{max - min} + 240^\circ, & \mbox{if } max = b
\end{cases}\]

\[s =
\begin{cases}
0 & \mbox{if } l = 0 \mbox{ or } max = min \\
\frac{max-min}{max+min} = \frac{max-min}{2l}, & \mbox{if } 0 < l \leq \frac{1}{2} \\
\frac{max-min}{2-(max+min)} = \frac{max-min}{2-2l}, & \mbox{if } l > \frac{1}{2}
\end{cases}\]

\[l = \begin{matrix} \frac{1}{2} \end{matrix} (max + min)\]

*h*的值通常规范化到位于0到360°之间。而*h* = 0用于*max* = *min*的（定义为灰色）时候而不是留下*h*未定义。

HSL和HSV有同样的[色相](../Page/色相.md "wikilink")定义，但是其他分量不同。HSV颜色的*s*和*v*的值定义如下：

\[s =
\begin{cases}
0, & \mbox{if } max = 0 \\
\frac{max - min}{max} = 1 - \frac{min}{max}, & \mbox{otherwise}
\end{cases}\]

\[v = max \,\]

### 从HSL到RGB的转换

给定HSL空间中的 (*h*, *s*, *l*)值定义的一个颜色，带有*h*在指示色相角度的值域\[0, 360\]中，分别表示饱和度和亮度的*s*和*l*在值域\[0, 1\]中，相应在RGB空间中的 (*r*, *g*, *b*)三原色，带有分别对应于红色、绿色和蓝色的*r*, *g*和*b*也在值域\[0, 1\]中，它们可计算为：

首先，如果*s* = 0，则结果的颜色是非彩色的、或灰色的。在这个特殊情况，*r*, *g*和*b*都等于*l*。注意*h*的值在这种情况下是未定义的。

当*s* ≠ 0的时候，可以使用下列过程：\[1\]

\[q=
\begin{cases}
l \times (1+s), & \mbox{if } l < \frac{1}{2} \\
l+s-(l \times s), & \mbox{if } l \ge \frac{1}{2}
\end{cases}\]

\[p = 2 \times l - q \,\]

  -
    \(h_k = {h \over 360} \,\)（*h*進行單位換算成\[0,1\][轉内](https://zh.wikipedia.org/wiki/轉_\(角\) "wikilink")）

<!-- end list -->

  -
    \(t_R = h_k+\frac{1}{3} \,\)

<!-- end list -->

  -
    \(t_G = h_k \,\)

<!-- end list -->

  -
    \(t_B = h_k-\frac{1}{3} \,\)

<!-- end list -->

  -
    \(\mbox{if } t_C < 0 \rightarrow t_C = t_C + 1.0 \quad \mbox{for each}\,C \in \{R,G,B\}\)

<!-- end list -->

  -
    \(\mbox{if } t_C > 1 \rightarrow t_C = t_C - 1.0 \quad \mbox{for each}\,C \in \{R,G,B\}\)

对于每个颜色[向量](../Page/位置向量.md "wikilink")*Color* = (*Color<sub>R</sub>*, *Color<sub>G</sub>*, *Color<sub>B</sub>*) = (*r*, *g*, *b*),

  -
    <math>{Color}_C =

\\begin{cases} p+ \\left((q-p) \\times 6 \\times t_C\\right), & \\mbox{if } t_C \< \\frac{1}{6} \\\\ q, & \\mbox{if } \\frac{1}{6} \\le t_C \< \\frac{1}{2} \\\\ p+\\left((q-p) \\times 6 \\times (\\frac{2}{3} - t_C) \\right), & \\mbox{if } \\frac{1}{2} \\le t_C \< \\frac{2}{3} \\\\ p, & \\mbox{otherwise } \\end{cases} </math>

\[\mbox{for each}\,C \in \{R,G,B\}\]

### 从HSV到RGB的转换

类似的，给定在HSV中 (*h*, *s*, *v*)值定义的一个颜色，带有如上的变化于0到360之间的*h*，和分别表示饱和度和明度的变化于0到1之间的*s*和*v*，在RGB空间中对应的 (*r*, *g*, *b*)三原色可以计算为（R,G,B变化于0到1之间）：

\[h_i \equiv \left\lfloor \frac{h}{60} \right\rfloor \pmod{6}\]

\[f = \frac{h}{60} - h_i\]

\[p = v \times (1 - s) \,\]

\[q = v \times (1 - f \times s) \,\]

\[t = v \times (1 - (1 - f) \times s) \,\]

对于每个颜色向量 (*r*, *g*, *b*),

\[(r, g, b) =
\begin{cases}
(v, t, p), & \mbox{if } h_i = 0  \\
(q, v, p), & \mbox{if } h_i = 1  \\
(p, v, t), & \mbox{if } h_i = 2  \\
(p, q, v), & \mbox{if } h_i = 3  \\
(t, p, v), & \mbox{if } h_i = 4  \\
(v, p, q), & \mbox{if } h_i = 5  \\
\end{cases}\]

## 例子

展示的RGB值的范围是0.0到1.0。

| RGB           | HSL             | HSV            | 结果 |
| ------------- | --------------- | -------------- | -- |
| (1, 0, 0)     | (0°, 1, 0.5)    | (0°, 1, 1)     |    |
| (0.5, 1, 0.5) | (120°, 1, 0.75) | (120°, 0.5, 1) |    |
| (0, 0, 0.5)   | (240°, 1, 0.25) | (240°, 1, 0.5) |    |

展示的RGB值的范围是0到255。

## 注释

## 引用書目

  - Raphael Gonzalez, Richard E. Woods (2002) *Digital Image Processing,* 2nd ed. Prentice Hall Press, ISBN 0-201-18075-8, p. 295.
  - Charles Poynton. [“What are HSB and HLS?”](http://www.poynton.com/notes/colour_and_gamma/ColorFAQ.html#RTFToC36) *Color FAQ*. [28 November](https://zh.wikipedia.org/wiki/28_November "wikilink") 2006。
  - Donald Hearn, M. Pauline Baker (1986) *Computer Graphics.* Prentice Hall International, ISBN 0-13-165598-1, pp. 302-205.

## 外部链接

  - An explanation of HSL and how it differs from RGB can be found in the [W3C's CSS3 Color Module](http://www.w3.org/TR/css3-color/#hsl-color)。
  - Formulas for converting to and from RGB can be found on [EasyRGB.com](https://web.archive.org/web/20071029230340/http://www.easyrgb.com/math.php?MATH=M19#text19)。
  - [C++ code for RGB and HSV conversion](https://web.archive.org/web/20071127005824/http://ilab.usc.edu/wiki/index.php/HSV_And_H2SV_Color_Space)
  - [Demonstrative color conversion applet](http://www.cs.rit.edu/~ncs/color/a_spaces.html)
  - [Skin and non skin colors in the Hue-Saturation plane of HSV color space](https://archive.is/20070317234844/http://www.lisif.jussieu.fr/~belaroussi/face_track/theHSplane.htm)
  - [HSV Colors](http://demonstrations.wolfram.com/HSVColors/) by Hector Zenil, [The Wolfram Demonstrations Project](https://zh.wikipedia.org/wiki/The_Wolfram_Demonstrations_Project "wikilink")。
  - [HSV Tutorial](http://www.mandelbrot-dazibao.com/HSV/HSV.htm) in Basic, at The Mandelbrot Dazibao.

[simple:Color wheel\#The 12 major colors of the color wheel](https://zh.wikipedia.org/wiki/simple:Color_wheel#The_12_major_colors_of_the_color_wheel "wikilink")

[Category:色彩空间](https://zh.wikipedia.org/wiki/Category:色彩空间 "wikilink")

1.