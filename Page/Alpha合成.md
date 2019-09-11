[Hue_alpha_falloff.png](https://zh.wikipedia.org/wiki/File:Hue_alpha_falloff.png "fig:Hue_alpha_falloff.png")中的值越往下越趋近于零。\]\]

在[计算机图形学](../Page/计算机图形学.md "wikilink")领域，**Alpha合成**（）是一种将图像与背景结合的过程，结合后可以产生部分透明或全透明的视觉效果。Alpha合成也叫**阿尔法合成**或**透明合成**。渲染图像时，通常会将目标图像中的多个子元素单独渲染，最后再把多张子元素的图片为单独的图像。例如，电视直播时就会将大量计算机生成的图像元素合成到现场镜头上。

要正确结合图像元素，每个元素的必须有对应的。遮片包含覆盖范围信息——图中几何对象的形状——可以藉此分辨图像中的任意位置到底是被绘制的几何对象本身，还是逻辑上的「空白」区域。

## 描述

为了保存遮片信息，[匠白光](../Page/匠白光.md "wikilink")提出了[Alpha通道的概念](https://zh.wikipedia.org/wiki/Alpha通道 "wikilink")，后由和完善。\[1\]二维图像里记录着每个[像素](../Page/像素.md "wikilink")的颜色信息，额外的信息以 0 和 1 之间的值表示，记录在Alpha通道里。0 表示该像素没有覆盖信息，是透明的，即图中的几何体没有覆盖到本像素；而 1 则表示像素不透明，几何体完全覆盖了此像素。

图像中使用的Alpha通道通常有两种表示形式：**平直Alpha**（）和**预乘Alpha**（）。

如果使用平直Alpha，图像中的RGB分量仅表示像素的颜色，与是否透明无关。

如果使用预乘Alpha，图像中的RGB分量也表示像素的颜色，但事先已经和不透明度做了乘法。某些使用场景下，这样的做法可以在后续合成时节省一次乘法。不过预乘Alpha的最显著优势在于使用简单、准确而非性能。\[2\]

如果用平直的（非预乘）RGBA [元组表达像素颜色](https://zh.wikipedia.org/wiki/元组 "wikilink")，那么像素值 (0, 0.7, 0, 0.5) 表示像素有 70% 的最大绿色亮度，同时不透明度是 50%。同样条件下的纯绿色是 (0, 1, 0, 0.5)。而如果用预乘Alpha，此处的 RGB 值 (0, 0.7, 0) 需要都乘以 0.5，表达为 (0, 0.35, 0, 0.5)。虽然此处 G 通道的值是 0.35 ，但它表示的还是最大亮度的 70%（其中包含了 50% 的不透明度）。此时的纯绿色则需要表达为 (0, 0.5, 0, 0.5)。因此，了解图像（文件）到底使用的是平直Alpha还是预乘Alpha非常重要，只有这样才能对图像做正确的处理和合成。

有了Alpha通道，图片的合成操作就可以用的形式表达。假设有图像元素 A 和 B，最常见的合成操作就是把 A 作为前景、B 作为背景，我们称这种操作（运算）为 **over**，记作 \(A \operatorname{over} B\)。除此之外，波特和达夫还定义了其它几个运算符：**in**、**out**、**atop**、**xor**：

[Image:Alpha compositing.svg](https://zh.wikipedia.org/wiki/File:Alpha_compositing.svg "fig:Image:Alpha compositing.svg")

运算符 **over** 的效果与普通绘画效果一致（见[画家算法](../Page/画家算法.md "wikilink")），运算符 **in** 则等价于。

以运算符 **over** 为例，运算结果相当于对图像中的所有像素做以下公式：

\[C_o = \frac{C_a \alpha_a + C_b \alpha_b \left(1 - \alpha_a\right)}{\alpha_a + \alpha_b \left(1 - \alpha_a\right)}\]

其中 \(C_o\) 是运算结果，\(C_a\) 是图像 A 中的像素，\(C_b\) 是图像 B 中的像素，而 \(\alpha_a\) 和 \(\alpha_b\) 则分别是图像 A、B 中对应像素的Alpha值。

如果假设颜色值都是预乘了Alpha值的（\(c_i = \alpha_i C_i\)），那么我们就可以将等式进行改写，结果图像中的颜色即：

\[c_o = c_a + c_b \left(1 - \alpha_a\right)\]

结果中的Alpha值即：

\[\alpha_o = \frac{c_o}{C_o} = \alpha_a + \alpha_b \left(1 - \alpha_a\right)\]

## over 运算符的解析推导

通过研究[正交覆盖](https://zh.wikipedia.org/wiki/正交覆盖 "wikilink")，Porter 和 Buff 给出了 alpha 合成的几何解释。在 1981 年 [Bruce A. Wallace](https://zh.wikipedia.org/wiki/Bruce_A._Wallace "wikilink") 的论文里则给出了另一种基于的[反射率](https://zh.wikipedia.org/wiki/反射率 "wikilink")/[透过率的物理模型的另一种推导](https://zh.wikipedia.org/wiki/透过率 "wikilink")。\[3\]

第三种推导方法通过使用两条简单的假设得到。为了简单起见，我们将 **over** 运算符简记成 \(a \odot b\)。

第一条假设是当背景是不透明（即 \(\alpha_b = 1\)）时，**over** 运算符表示前景颜色与背景颜色的[凸组合](https://zh.wikipedia.org/wiki/凸组合 "wikilink")：

\[C_o = \alpha_a C_a + (1 - \alpha_a) C_b\]

第二条假设是这种运算应该满足[结合律](../Page/结合律.md "wikilink")：

\[(a \odot b) \odot c = a \odot (b \odot c)\]

现在，可以假设 \(a\) 和 \(b\) 包含不透明度分量，而 \(c\) 不包含。考虑中间变量

\[o = a \odot b\].

由于结合律成立，有

\[o \odot c = a \odot (b \odot c)\]

由于 \(c\) 是不透明的，因此 \(b \odot c\) 也是不透明的。由第二条假设，在上面的式子中，上式地每个 \(\odot\) 运算都可以用凸组合表达：

\[\begin{align}
  \alpha_o C_o + (1 - \alpha_o) C_c &= \alpha_a C_a + (1 - \alpha_a) (\alpha_b C_b + (1 - \alpha_b) C_c) \\
  &= [\alpha_a C_a + (1 - \alpha_a) \alpha_b C_b] + (1 - \alpha_a) (1 - \alpha_b) C_c
\end{align}\]

这个式子的两边都满足 \(X_0 + Y_0 C_c = X_1 + Y_1 C_c\) 的形式，令 \(X_0 = X_1\) 且 \(Y_0 = Y_1\)，可以得到：

\[\begin{align}
  \alpha_o &= 1 - (1 - \alpha_a) (1 - \alpha_b),\\
  C_o &= \frac{\alpha_a C_a + (1 - \alpha_a)\alpha_b C_b}{\alpha_o},
\end{align}\]

至此，我们推导出了 \(o = a \odot b\) 的颜色和其 alpha 分量的解析式。

注意到 \((1 - \alpha_a)\alpha_b = \alpha_o - \alpha_a\)，这样，上式可以紧凑地表示成

\[C_o = \frac{\alpha_a}{\alpha_o} C_a + \left(1 - \frac{\alpha_a}{\alpha_o}\right) C_b\]

\(\odot\) 运算符满足[非交换](https://zh.wikipedia.org/wiki/非交换 "wikilink")[幺半群](../Page/幺半群.md "wikilink")的定义。这个群的[单位元](https://zh.wikipedia.org/wiki/单位元 "wikilink") \(e\) 是所有满足 \(\alpha = 0\) 的二元组 \(\langle C,\alpha\rangle\)，这可以通过式子 \(e \odot a = a \odot e = a\) 得到。

## Alpha混合

**Alpha混合**（）是将半透明的前景色与背景色结合的过程，可以得到混合后的新颜色。前景色的透明度不限，从完全透明到完全不透明都可以。如果前景色完全透明，混合后的颜色就是背景色；如果前景色完全不透明，混合后的颜色就是前景色；如果在这两种极端情况之间，混合后的颜色可以通过前景色和背景色的[加权平均计算](https://zh.wikipedia.org/wiki/加权 "wikilink")。

Alpha合成后的颜色可以这样计算：

\[\begin{cases}
\mathrm{out}_A = \mathrm{src}_A + \mathrm{dst}_A (1 - \mathrm{src}_A) \\
\mathrm{out}_{RGB} = \bigl( \mathrm{src}_{RGB} \mathrm{src}_A + \mathrm{dst}_{RGB} \mathrm{dst}_A \left( 1 - \mathrm{src}_A \right) \bigr) \div \mathrm{out}_A \\
\mathrm{out}_A = 0 \Rightarrow \mathrm{out}_{RGB} = 0
\end{cases}\]

如果背景色不透明，即 \(dst_A = 1\)，代入上述方程后可以得到：

\[\begin{cases}
\mathrm{out}_A = 1 \\
\mathrm{out}_{RGB} = \mathrm{src}_{RGB} \mathrm{src}_A + \mathrm{dst}_{RGB} (1 - \mathrm{src}_A)
\end{cases}\]

如果使用了预乘Alpha，最初的方程组可以简化为：

\[\begin{cases}
\mathrm{out}_A = \mathrm{src}_A + \mathrm{dst}_A (1 - \mathrm{src}_A) \\
\mathrm{out}_{RGB} = \mathrm{src}_{RGB} + \mathrm{dst}_{RGB} \left( 1 - \mathrm{src}_A \right)
\end{cases}\]

## 伽玛校正

[Mix_lazy.png](https://zh.wikipedia.org/wiki/File:Mix_lazy.png "fig:Mix_lazy.png")

[Mix_precise.png](https://zh.wikipedia.org/wiki/File:Mix_precise.png "fig:Mix_precise.png")

计算机图像一般不直接存储光照[亮度对应的](https://zh.wikipedia.org/wiki/亮度 "wikilink") RGB 值，而是需要先对这些值做[伽玛校正](https://zh.wikipedia.org/wiki/伽玛校正 "wikilink")。

伽玛校正的大致过程如下：

  - 设 \(displayed_{RGB}\) 为屏幕上显示的 RGB 亮度（标准化后的亮度值，在 0 和 1 之间）
  - 设 \(stored_{RGB}\) 为计算机[内存中所存储的](https://zh.wikipedia.org/wiki/内存 "wikilink") RGB 亮度（也是标准化后的亮度值）
  - 设 \(\gamma\) 为用于「解码」\(stored_{RGB}\) 图像的伽玛值 2.2（2.2 为 \(\gamma\) 的典型取值）

则它们三者之间的关系为

\[displayed_{RGB} = {stored_{RGB}} ^ {\gamma}\]

因此，在处理计算机图像的 RGB 值时（尤其是做 Alpha 混合时），可以在处理前先将伽玛校正消除，完成处理后再重新做伽玛校正，这样做的效果比直接处理伽玛校正后的 RGB 值要好。

例如有一张图片 \(overlay_{rgb}\)，它对应的 Alpha 通道为 \(overlay_{\alpha}\)，现在要把它叠加到背景图 \(background_{rgb}\) 上，那么最终的图像 \(out_{rgb}\) 可以这样计算：

\[out_{rgb} = ({overlay_{rgb}}^{\gamma } \times overlay_{\alpha} + {background_{rgb}}^{\gamma } \times (1
 - overlay_{\alpha})) ^{1/\gamma }\]

此处的 \(out_{rgb}\) 是计算机内存中所存储的数据；在计算机显示器上会以 \(out_{rgb} ^ {\gamma}\) 的数据显示。

## 参考资料

<references />

[Category:_计算机图形学](https://zh.wikipedia.org/wiki/Category:_计算机图形学 "wikilink")

1.
    （见 [pixar.com.](http://graphics.pixar.com/library/Compositing/) ）
2.
3.