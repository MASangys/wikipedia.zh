Reyes 渲染架构，是[三维计算机图形学的一个软件架构](https://zh.wikipedia.org/wiki/三维计算机图形学 "wikilink")，用于[渲染](../Page/渲染.md "wikilink")照片一样真实的图像。该架构是80年代中期由[卢卡斯影业](../Page/卢卡斯影业.md "wikilink")的计算机图形研究小组成员[艾德文·卡特姆](../Page/艾德文·卡特姆.md "wikilink")、[洛伦·卡彭特](../Page/洛伦·卡彭特.md "wikilink")和[罗伯特·库克](../Page/罗伯特·库克.md "wikilink")所开发的，那个研究小组最后发展成了今天的[皮克斯](https://zh.wikipedia.org/wiki/皮克斯 "wikilink")。\[1\] 该架构最早使用于1982年的科幻片《[星际迷航2：可汗之怒](../Page/星际旅行II：可汗怒吼.md "wikilink")》中的创世片段。皮克斯的[PRMan是Reyes算法的一个实现](https://zh.wikipedia.org/wiki/PRMan "wikilink")。

根据最初描述该算法的论文，Reyes渲染系统是一个用于复杂图像的快速高质量渲染的“架构”，论文中指出Reyes包括一系列算法和数据处理系统，不过本词条中的“算法”和“架构”是同义的。

*Reyes*是*Renders Everything You Ever Saw*（渲染你曾见到的任何物体）的首字母缩写，这个名字也是卢卡斯影业以前所在地——加州的名字，因此Reyes是双关语，它还暗指和光学影像系统有关的过程。根据罗伯特·库克的说法，Reyes的正确写法是首字母大写，其余小写，和1987年库克/卡彭特/卡特姆的[SIGGRAPH](../Page/SIGGRAPH.md "wikilink")论文中一样。

## Reyes架构的设计目标

Reyes架构的设计遵从以下目标：

  - **模型复杂性和多样性**：为了产生复杂和样式丰富的图像，渲染系统的用户必须能通过[分形](../Page/分形.md "wikilink")或[粒子系统](../Page/粒子系统.md "wikilink")等，经由编写程序生成大量复杂的几何结构。

<!-- end list -->

  - **复杂着色**：场景的复杂度通常由光线和物体表面的相互作用产生。通常，在计算机图形学里，这是通过使用纹理来表现的，纹理可以是一组像素，用于描述表面位移（置换）、透明度或反射率等。Reyes允许用户用计算机程序来描述表面结构和光学互作用，而不是简单的[数据查询表](../Page/查找表.md "wikilink")，并和可编程[着色器](../Page/着色器.md "wikilink")结合。算法的一个重要目标是减少处理器从存储器中读取纹理的时间。

<!-- end list -->

  - **避免光线追踪**：Reyes架构提出的时候，计算机的处理能力和存储量都很有限，意味着使用光线追踪需要耗费几万小时才能渲染完一个图像，Reyes算法避免使用光线追踪，因此渲染快的多，并且图像也非常逼真。

<!-- end list -->

  - **速度**：（单个计算机）一年能渲染完成一部每秒24帧的两小时影片，即平均每帧只需要渲染3分钟。

<!-- end list -->

  - **图像质量**：任何图像，若带有无用的、因算法导致的缺陷，都是不可接受的。

<!-- end list -->

  - **灵活性**：该架构必须足够灵活，在引入新技术时，不需把算法完全重写。

Reyes算法能很高效的渲染一些电影画面要求的必不可少的效果：光滑的曲面、表面纹理、[运动模糊和](https://zh.wikipedia.org/wiki/运动模糊 "wikilink")[景深](../Page/景深.md "wikilink")。

## Reyes渲染流程

Reyes渲染流程

Reyes算法通过把参数曲面分割成[微多边形](https://zh.wikipedia.org/wiki/微多边形 "wikilink")（micropolygon）——小于一个像素的四边形，来渲染光滑曲面。虽然要精确逼近曲面需要很多微多边形，不过他们可以简单并行的进行处理。Reyes渲染器对高级的几何图形进行[细分时](https://zh.wikipedia.org/wiki/密铺 "wikilink")，会根据需要来进行，它只需要刚好细分到使图形在最终图像中看起来光滑的程度。

然后，一个着色系统给微多边形的每个顶点赋予一个颜色和透明度，许多Reyes渲染器允许用户使用[着色语言编写任意的灯光和纹理函数](https://zh.wikipedia.org/wiki/着色语言 "wikilink")。微多边形可以在一个大的网格里进行处理，因此可以进行并行向量处理。

经过着色的微多边形在屏幕空间进行采样，以生成输出图像。Reyes引入了一个开创性的隐面判别算法或者叫*hider*，算法对运动模糊和景深进行必要的整合，而无需比未加模糊的渲染使用更高的模型和着色采样数。*hider*通过一种称为[随机采样的](https://zh.wikipedia.org/wiki/随机采样 "wikilink")[蒙特卡洛方法收集一定时间和镜头位置内每个像素里微多边形的颜色](https://zh.wikipedia.org/wiki/蒙特卡洛方法 "wikilink")。

## 基本Reyes渲染管线工序

1.  *Bound*，计算几何图形的边界。
2.  *Split*，把大的图形分割为更小的图形。
3.  *Dice*，把图形转换成微多边形网格，每个大概一个像素大小。
4.  *Shade*，计算每个微多边形网格顶点的灯光和颜色。
5.  *Bust*，把网格炸开成单个的微多边形，对每个计算边界并判断是否可见。
6.  *Hide*，对微多边形进行采样，并生成最后的平面图像。

在这个设计中，渲染器必须把整个图像缓存在内存中，因为必须把所有的图形都处理完成以后才能输出最终图像。一般在*dice*步骤之前会进行一步叫*bucketing*的常见内存优化，这一步中，输出图像被分割成若干指定大小的小块，通常每一块是16x16像素大小，之后，场景中的物体沿着每小块的大致边缘按照位置分割到不同的块里，然后每个小块分别进行处理，处理下一小块之前会先丢弃上一个小块的数据。如此只有当前的小块区域里的图形被加载到内存里，通常的情况下，这种处理能比未修改的Reyes算法显著的减少内存的使用。

## Reyes渲染器

以下渲染器使用了Reyes算法，或者用户可以根据需要选择使用Reyes算法：

  - [3Delight](../Page/3Delight.md "wikilink") ([链接](http://www.3delight.com/))
  - [Aqsis](../Page/Aqsis.md "wikilink") ([链接](http://www.aqsis.org/))
  - [jrMan](https://zh.wikipedia.org/wiki/jrMan "wikilink") ([链接](http://www.jrman.org/))
  - 皮克斯的 [PhotoRealistic RenderMan 渲染器](https://zh.wikipedia.org/wiki/PRMan "wikilink") ([链接](https://renderman.pixar.com/))
  - [Pixels 3d渲染器](https://zh.wikipedia.org/wiki/Pixels_3d "wikilink") ([链接](http://www.pixels.net/))
  - [Pixie](../Page/Pixie_\(渲染器\).md "wikilink") ([链接](http://www.renderpixie.com/))
  - DotC Software 的 [RenderDotC](https://zh.wikipedia.org/wiki/RenderDotC "wikilink") ([链接](http://www.dotcsw.com/))
  - Side Effects Software 的 [Mantra](../Page/Houdini.md "wikilink") ([链接](http://www.sidefx.com/))
  - Poser 的 [FireFly](https://zh.wikipedia.org/wiki/Poser "wikilink") ([链接](https://web.archive.org/web/20090113081806/http://my.smithmicro.com/win/poser/index.html))
  - [Guerilla Render](https://zh.wikipedia.org/wiki/Guerilla_Render "wikilink") ([链接](http://www.guerillarender.com))
  - [Bakery Relight](https://zh.wikipedia.org/wiki/Bakery_Relight "wikilink") ([链接](http://www.bakery3d.com))

## 参考资料

  - 罗伯特·库克，洛伦·卡彭特，艾德文·卡特姆，《[Reyes 图像渲染架构](http://graphics.pixar.com/library/Reyes/)》，*计算机图形学 （1987 年 SIGGRAPH 论文）*，95-102页。
  - Anthony A. Apodaca和[拉里·格里兹](https://zh.wikipedia.org/wiki/拉里·格里兹 "wikilink")，*Advanced RenderMan: Creating CGI for Motion Pictures*，Morgan Kaufmann，ISBN 1-55860-618-1

[Category:三维计算机图形学](https://zh.wikipedia.org/wiki/Category:三维计算机图形学 "wikilink")

1.