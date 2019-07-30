**Gouraud着色法**是[计算机图形学](../Page/计算机图形学.md "wikilink")中的一种[插值](../Page/插值.md "wikilink")方法，可以为[多边形网格表面生成](https://zh.wikipedia.org/wiki/多边形网格 "wikilink")[连续的](../Page/连续函数.md "wikilink")[明暗变化](../Page/浓淡处理.md "wikilink")。实际使用时，通常先计算三角形每个顶点的光照，再通过[双线性插值](../Page/双线性插值.md "wikilink")计算三角形区域中其它[像素](../Page/像素.md "wikilink")的颜色。

Gouraud着色法的名称来自于发明者（），因此又称**高洛德着色法**或**高氏着色法**。\[1\]\[2\]\[3\]

## 与其它着色法的比较

Gouraud着色法的效果优于[平直着色法](https://zh.wikipedia.org/wiki/浓淡处理#平直着色法 "wikilink")，所需的处理也比[Phong着色法少](https://zh.wikipedia.org/wiki/Phong着色法 "wikilink")，但缺点是着色后仍然可以看出一个个小平面的效果。

与Phong着色法相比，Gouraud着色法的长处和短处都在于[插值](../Page/插值.md "wikilink")。计算单点光照是相对昂贵的操作，如果[网格在屏幕空间所覆盖的像素数量比它本身的顶点数目多](https://zh.wikipedia.org/wiki/多边形网格 "wikilink")，那么计算插值显然要比像Phong着色法一样对每个像素都计算一遍光照要高效。然而，渲染一些与位置相关的光照效果（比如[高光](https://zh.wikipedia.org/wiki/高光 "wikilink")）时，得到的效果就会有问题。如果在多边形的中心有高光，而且这个高光没有扩散到该多边形的任何顶点，使用Gouraud着色法就不会渲染出任何效果；而如果正好是多边形的顶点上有高光，那么这个点上的高光是正确的，但插值会导致高光以很不自然的形式扩散到相邻的多边形上。

Image:Gouraud_low_anim.gif|Gouraud着色的球体，注意高光处的表现 Image:Gouraud_high.gif|仍然是同一个球体，但是提高多边形数目后的效果

## 参考资料

<references />

[Category:三维计算机图形学](https://zh.wikipedia.org/wiki/Category:三维计算机图形学 "wikilink") [Category:渲染](https://zh.wikipedia.org/wiki/Category:渲染 "wikilink")

1.
2.
3.