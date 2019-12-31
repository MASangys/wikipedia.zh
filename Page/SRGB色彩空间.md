> 本文内容由[SRGB色彩空间](https://zh.wikipedia.org/wiki/SRGB色彩空间)转换而来。


[CIExy1931_sRGB.png](https://zh.wikipedia.org/wiki/File:CIExy1931_sRGB.png "fig:CIExy1931_sRGB.png")D65显示在中间\]\] [SRGB_gamma.svg](https://zh.wikipedia.org/wiki/File:SRGB_gamma.svg "fig:SRGB_gamma.svg")

**sRGB色彩空间**（標準紅綠藍色彩空間）是[惠普](../Page/惠普.md "wikilink")与[微软](../Page/微软.md "wikilink")于1996年一起开发的用于[显示器](../Page/显示器.md "wikilink")、[打印机](../Page/打印机.md "wikilink")以及[因特网的一种标准](https://zh.wikipedia.org/wiki/因特网 "wikilink")[RGB色彩空间](https://zh.wikipedia.org/wiki/RGB色彩空间 "wikilink")。这种标准得到了[W3C](https://zh.wikipedia.org/wiki/W3C "wikilink")、[Exif](https://zh.wikipedia.org/wiki/Exif "wikilink")、[英特尔](../Page/英特尔.md "wikilink")、[Pantone](https://zh.wikipedia.org/wiki/Pantone "wikilink")、[Corel](../Page/Corel.md "wikilink")以及其它许多业界厂商的支持，在[GIMP](../Page/GIMP.md "wikilink")这样的[开放源代码](../Page/开放源代码.md "wikilink")软件也支持这种标准，另外一些专有的或者象[SVG这样的开放](https://zh.wikipedia.org/wiki/SVG "wikilink")[图形文件格式中也有应用](https://zh.wikipedia.org/wiki/图形文件格式 "wikilink")。

sRGB最初设计的目的是作为生成在[因特网以及](https://zh.wikipedia.org/wiki/因特网 "wikilink")[万维网](../Page/万维网.md "wikilink")上浏览的图像的通用色彩空间，最后选择的是使用[Gamma校准系数为](https://zh.wikipedia.org/wiki/伽马校正 "wikilink")**2.2**的色彩空间，即[CRT显示器在这种情况下的平均线性电压响应](https://zh.wikipedia.org/wiki/CRT "wikilink")。

这里值得重视的是sRGB的设计与当时（1996年）不算理想色彩空间的CRT显示器相匹配。当时大量的专业或者个人电脑软件，使用8位深度的图像文件，并且不经转换就在8位／通道的显示器上显示。许多时髦的非CRT硬件，如LCD、[数码相机](../Page/数码相机.md "wikilink")以及打印机，尽管本身并不生成sRGB曲线，但是都带有补偿电路或者软件以遵循这个标准。在一些高端的专业设备上可能并不遵循这个标准。因此，我们可以假定任何不带颜色配置表或者其它信息的8位图像文件、8位图像API或者设备接口，都处于sRGB色彩空间。

## 综述

sRGB定义了红色、绿色与蓝色三[原色](../Page/原色.md "wikilink")的颜色，即在其它两种颜色值都为零时该颜色的最大值。在[CIE xy颜色坐标系中红色位于](https://zh.wikipedia.org/wiki/CIE1931色彩空間 "wikilink")\[0.6400, 0.3300\]、绿色位于\[0.3000, 0.6000\]、蓝色位于\[0.1500, 0.0600\]、白色是位于\[0.3127,0.3290\]的D65。对于任何的[RGB色彩空间来说](https://zh.wikipedia.org/wiki/RGB色彩空间 "wikilink")，非负的R、G、B都不可能表示超出原色定义的三角形即[色域](../Page/色域.md "wikilink")范围，它刚好在人眼的色彩感知范围之内。

sRGB还定义了原色强度与实际保存的数值之间的非线性变换。这个曲线类似于CRT显示器的gamma响应。重现这条曲线要比sRGB图像在显示器上正确显示更加重要。这个非线性变换意味着sRGB非常高效地使图像文件中的整数值表示了人眼可以分辨的颜色。

sRGB由于它的色域不够大，尤其是蓝-绿颜色色域无法表示[CMYK印刷中的所有颜色](https://zh.wikipedia.org/wiki/CMYK "wikilink")，所以通常印刷行业的专业人员不用这种模型。而[Adobe RGB是印刷行业经常使用的色彩空间](https://zh.wikipedia.org/wiki/Adobe_RGB "wikilink")。

## 变换的规范

### 从CIE xyY或者CIE XYZ到sRGB的前向变换

\[1\]从CIE xyY坐标系计算sRGB中的三原色首先需要将它变换到CIE XYZ三值模式。

\[X = Y  x / y,\,\]

\[Z = Y  (1- x - y)/y\,\]

这样XYZ值就可以用矩阵转换到线性的RGB值，这些线性值并不是最终的结果。

\[\begin{bmatrix}
R_{linear}\\G_{linear}\\B_{linear}\end{bmatrix}=
\begin{bmatrix}
3.2410&-1.5374&-0.4986\\
-0.9692&1.8760&0.0416\\
0.0556&-0.2040&1.0570
\end{bmatrix}
\begin{bmatrix}
X \\
Y \\
Z \end{bmatrix}\]

\(R_{linear}\)、\(G_{linear}\)与\(B_{linear}\)的取值范围为\[0,1\]。sRGB是反映真实世界gamma为2.2的典型显示器的效果，因此使用下面的变换公式将线性值转换到sRGB。设\(C_{linear}\)为\(R_{linear}\)、\(G_{linear}\)或者\(B_{linear}\)，\(C_{srgb}\)为\(R_{srgb}\)、\(G_{srgb}\)或者\(B_{srgb}\)：

  - 如果\(C_{linear} <= 0.00304\,\)则\(C_{srgb}=12.92 C_{linear}\,\)
  - 如果\(C_{linear} > 0.00304\,\)则\(C_{srgb}=(1+a)C_{linear}^{1/2.4}-a\,\)
  - \(a = 0.055\,\)

这些经过gamma校正的值范围为0到1。如果需要0到255的取值范围，如用于视频显示或者8位图形，通常将它乘以255然后取整。

### 逆向变换

假设sRGB分量的值\(R_{srgb}\)、\(G_{srgb}\)、\(B_{srgb}\)的取值范围为0到1。

\[\begin{bmatrix}
X\\Y\\Z\end{bmatrix}=
\begin{bmatrix}
0.4124&0.3576&0.1805\\
0.2126&0.7152&0.0722\\
0.0193&0.1192&0.9505
\end{bmatrix}
\begin{bmatrix}
g(R_{srgb})\\
g(G_{srgb})\\
g(B_{srgb})\end{bmatrix}\]

其中

  -
    对于\(K>0.04045\,\)有\(g(K) = \left(\frac{K+a}{1+a}\right)^\gamma\)
    否则\(g(K) = \frac{K}{12.92}\,\)

## 变换的理论基础

变换的非线性部分是为了逼近2.2的[gamma校正而设计的](https://zh.wikipedia.org/wiki/伽马校正 "wikilink")，但是在K=0斜率不为0，这样可能会产生数值计算的问题。对于sRGB变换来说这大致正确。在\(K_0\)处的g(K)为：

\[\left(\frac{K_0+a}{1+a}\right)^\gamma=\frac{K_0}{\phi}\]

使用上面的标准值\(\phi=12.92\)，得到\(K_0\)=0.04045...这就是常用的变换。如果我们要求斜率也要匹配，那么需要：

\[\gamma\left(\frac{K_0+a}{1+a}\right)^{\gamma-1}\left(\frac{1}{1+a}\right)=\frac{1}{\phi}\]

这样就得到两个方程。假设未知变量为\(K_0\)与\(\phi\)，这样就得到\(K_0\)=0.03928...与\(\phi\)=12.9232.... sRGB规范中有时也使用这些值进行计算，但是它们并不属于标准的一部分。

## 应用

作为因特网上推荐使用的色彩空间，在编辑、保存用于WWW的图像的时候要sRGB标准，但是由于与其它色彩空间相比它的[色域](../Page/色域.md "wikilink")较小，因此用于专业印刷的图像如[印前输出则可以使用Adobe](https://zh.wikipedia.org/wiki/印前 "wikilink") RGB那样有较大色域的色彩空间。在一些先进的硬件上的另外一种替代方法是仍然使用sRGB原色模式但是使用负值或者超过1的亮度，这样就可以无限扩大色域。

用其它色彩空间生成的用于因特网的图像在使用合适的图像编辑软件进行编辑的时候可以将它们转换成sRGB，这些软件有[Corel Paint Shop Pro以及](https://zh.wikipedia.org/wiki/Corel_Paint_Shop_Pro "wikilink")[Adobe Photoshop等等](../Page/Adobe_Photoshop.md "wikilink")。尽管最初的非sRGB文件可以保存并转换为sRGB，但是由于这个转换过程可能会丢失图像信息，所以建议保存为另外的文件以保存原始的非sRGB图像文件。

由于在因特网上的广泛应用，以及许多中低端的消费型[数码相机](../Page/数码相机.md "wikilink")、[扫描仪都使用sRGB模型作为](https://zh.wikipedia.org/wiki/扫描仪 "wikilink")[缺省模式或者是仅有的色彩空间](https://zh.wikipedia.org/wiki/缺省 "wikilink")，同时由于[喷墨打印机的应用](https://zh.wikipedia.org/wiki/喷墨打印机 "wikilink")，因此许多人认为sRGB色彩空间对于家庭应用来说已经足够了。

两种占据主导位置的三维图形编程接口[OpenGL](../Page/OpenGL.md "wikilink")与[Direct3D](../Page/Direct3D.md "wikilink")都集成有sRGB。OpenGL 2.1中包含有首次在EXT_texture_sRGB扩展中引入的sRGB纹理。OpenGL的EXT_texture_sRGB扩展支持线性或者sRGB色彩空间的渲染缓冲。[DirectX](../Page/DirectX.md "wikilink") 9支持sRGB纹理以及用Direct3D渲染成sRGB表面。

## 参考文献

<references />

  - IEC 61966-2-1:1999是官方正式的sRGB规范。它定义了查看所需环境、编码以及[色度计量的规范](https://zh.wikipedia.org/wiki/色度计量 "wikilink")。
  - Amendment A1:2003 to IEC 61966-2-1:1999 describes an analogous sYCC encoding for [YCbCr](../Page/YCbCr.md "wikilink") color spaces, an extended-[gamut](https://zh.wikipedia.org/wiki/gamut "wikilink") RGB encoding, and a [CIELAB](https://zh.wikipedia.org/wiki/CIELAB "wikilink") transformation.
  - The [fourth working draft](http://www.colour.org/tc8-05/Docs/colorspace/61966-2-1.pdf) of IEC 61966-2-1 is available online, but is not the complete standard.

## 外部链接

  - [International Color Consortium](http://www.color.org/)
  - [Basic sRGB Math](http://www.srgb.com/basicsofsrgb)（[庫存頁面](https://web.archive.org/web/20030212204955/http://www.srgb.com/basicsofsrgb.htm)）
  - [A Standard Default Color Space for the Internet - sRGB](http://www.w3.org/Graphics/Color/sRGB)
  - [OpenGL extension for sRGB textures](https://web.archive.org/web/20071120090526/http://oss.sgi.com/projects/ogl-sample/registry/EXT/texture_sRGB.txt)
  - [Comparison of sRGB and AdobeRGB](http://www.cambridgeincolour.com/tutorials/sRGB-AdobeRGB1998.htm)

[Category:色彩空间](https://zh.wikipedia.org/wiki/Category:色彩空间 "wikilink")

1.  [sRGB description](http://www.w3.org/Graphics/Color/sRGB) with XYZ conversion formula