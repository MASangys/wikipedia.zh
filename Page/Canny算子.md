> 本文内容由[Canny算子](https://zh.wikipedia.org/wiki/Canny算子)转换而来。


**Canny边缘检测算子**是澳洲計算機科學家[約翰·坎尼](https://zh.wikipedia.org/wiki/約翰·坎尼 "wikilink")（）于1986年开发出来的一个多级[边缘检测](../Page/边缘检测.md "wikilink")[算法](../Page/算法.md "wikilink")。更为重要的是Canny创立了“边缘检测计算理论”（computational theory of edge detection）解释这项技术如何工作。

## Canny算法的发展

Canny的目标是找到一个最优的边缘检测算法，最优边缘检测的含义是：

  - *好的检测* - 算法能够尽可能多地标识出图像中的实际边缘。
  - *好的定位* - 标识出的边缘要与实际图像中的实际边缘尽可能接近。
  - *最小响应* - 图像中的边缘只能标识一次，并且可能存在的图像雜訊不应标识为边缘。

为了满足这些要求Canny使用了[变分法](../Page/变分法.md "wikilink")，这是一种寻找满足特定功能的[函数](../Page/函数.md "wikilink")的方法。最优检测使用四个[指数函数](../Page/指数函数.md "wikilink")项的和表示，但是它非常近似于[高斯函数](../Page/高斯函数.md "wikilink")的一阶[导数](../Page/导数.md "wikilink")。

## Canny算法的步骤

### [降噪](https://zh.wikipedia.org/wiki/降噪 "wikilink")

任何边缘检测算法都不可能在未经处理的原始数据上很好地处理，所以第一步是对原始数据与高斯平滑模板作[卷积](../Page/卷积.md "wikilink")，得到的图像与原始图像相比有些轻微的模糊（[blurred](https://zh.wikipedia.org/wiki/blurring "wikilink")）。这样，单独的一个像素噪声在经过[高斯平滑的图像上变得几乎没有影响](https://zh.wikipedia.org/wiki/高斯平滑 "wikilink")。

### 寻找图像中的亮度梯度

图像中的边缘可能会指向不同的方向，所以Canny算法使用4个mask检测水平、垂直以及对角线方向的边缘。原始图像与每个mask所作的卷积都存储起来。对于每个点我们都标识在这个点上的最大值以及生成的边缘的方向。这样我们就从原始图像生成了图像中每个点[亮度梯度图以及](https://zh.wikipedia.org/wiki/亮度梯度 "wikilink")[亮度梯度的方向](https://zh.wikipedia.org/wiki/亮度梯度 "wikilink")。

### 在图像中跟踪边缘

较高的亮度梯度比较有可能是边缘，但是没有一个确切的值来限定多大的亮度梯度是边缘多大又不是，所以Canny使用了[滞后阈值](https://zh.wikipedia.org/wiki/滞后 "wikilink")。

滞后阈值需要两个阈值——高阈值与低阈值。假设图像中的重要边缘都是连续的曲线，这样我们就可以跟踪给定曲线中模糊的部分，并且避免将没有组成曲线的噪声像素当成边缘。所以我们从一个较大的阈值开始，这将标识出我们比较确信的真实边缘，使用前面导出的方向信息，我们从这些真正的边缘开始在图像中跟踪整个的边缘。在跟踪的时候，我们使用一个较小的阈值，这样就可以跟踪曲线的模糊部分直到我们回到起点。

一旦这个过程完成，我们就得到了一个二值图像，每点表示是否是一个边缘点。

一个获得亚像素精度边缘的改进实现是在梯度方向检测二阶方向导数的过零点

\[L_x^2 \, L_{xx} + 2 \, L_x \,  L_y \, L_{xy} + L_y^2 \, L_{yy} = 0,\] 它在梯度方向的三阶方向导数满足符号条件

\[L_x^3 \, L_{xxx} + 3 \, L_x^2 \, L_y \, L_{xxy} + 3 \, L_x \, L_y^2 \, L_{xyy} + L_y^3 \, L_{yyy} < 0\] 其中\(L_x\), \(L_y\) ... \(L_{yyy}\)表示用高斯核平滑原始图像得到的[尺度空间表示](https://zh.wikipedia.org/wiki/尺度空间 "wikilink")\(L\)计算得到的偏导数。用这种方法得到的边缘片断是连续曲线，这样就不需要另外的边缘跟踪改进。滞后阈值也可以用于亚像素边缘检测。

## 参数

Canny算法包含许多可以调整的参数，它们将影响到算法的计算时间与实效。

  - [高斯滤波器的大小](https://zh.wikipedia.org/wiki/高斯滤波器 "wikilink")：第一步所用的平滑滤波器将会直接影响Canny算法的结果。较小的滤波器产生的模糊效果也较少，这样就可以检测较小、变化明显的细线。较大的滤波器产生的模糊效果也较多，将较大的一块图像区域涂成一个特定点的颜色值。这样带来的结果就是对于检测较大、平滑的边缘更加有用，例如彩虹的边缘。
  - [阈值](https://zh.wikipedia.org/wiki/阈值 "wikilink")：使用两个阈值比使用一个阈值更加灵活，但是它还是有阈值存在的共性问题。设置的阈值过高，可能会漏掉重要信息；阈值过低，将会把枝节信息看得很重要。很难给出一个适用于所有图像的通用阈值。目前还没有一个经过验证的实现方法。

如果想要试验Canny算法中的参数，https://web.archive.org/web/20090615224334/http://matlabserver.cs.rug.nl/ 的在线Canny程序会很有帮助。

## 评价

Canny算法适用于不同的场合。它的参数允许根据不同实现的特定要求进行调整以识别不同的边缘特性。对于[PC](../Page/PC.md "wikilink")上的实时图像处理来说可能慢得无法使用，尤其是在使用大的高斯滤波器的情况下。但是，我们讨论计算能力的时候，也要考虑到随着处理器速度不断提升，有望在未来几年使得这不再成为一个问题。

## 参考文献

### 引用

### 来源

  - 期刊文章

<!-- end list -->

  -
  - (Includes the differential approach to non-maximum suppression.)

## 外部链接

  - [John Canny的主页](http://www.cs.berkeley.edu/~jfc/)
  - [网上的Canny边缘检测程序](https://web.archive.org/web/20090615224334/http://matlabserver.cs.rug.nl/)

## 参见

  - [计算机视觉](../Page/计算机视觉.md "wikilink")
  - [数字图像处理](https://zh.wikipedia.org/wiki/数字图像处理 "wikilink")
  - [特征检测](../Page/特征检测.md "wikilink")
  - [边缘检测](../Page/边缘检测.md "wikilink")
  - [尺度空间](https://zh.wikipedia.org/wiki/尺度空间 "wikilink")

[Category:特征检测_(计算机视觉)](https://zh.wikipedia.org/wiki/Category:特征检测_\(计算机视觉\) "wikilink")