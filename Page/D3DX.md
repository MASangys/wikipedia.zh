**D3DX**（Direct3D Extension）是一个已不推荐使用的高层[API库](../Page/应用程序接口.md "wikilink")，它旨在补充[微软](../Page/微软.md "wikilink")[Direct3D](../Page/Direct3D.md "wikilink")图形API。D3DX库在[Direct3D 7中被引入](../Page/Direct3D.md "wikilink")，并在之后的[Direct3D 9中得到改进](../Page/Direct3D.md "wikilink")。它为常见的在矢量、矩阵和颜色上计算外观和投影矩阵、样条插值以及其他一些更复杂的任务（诸如编译或组合用于3D图形编程的着色器、压缩骨架动画存储和矩阵堆栈）提供了类。它还为3D网格的复杂操作提供了函数，如切线空间计算、网格简化、预计算辐射传输、[顶点缓存友好性优化和条带重排序](../Page/頂點_\(電腦圖學\).md "wikilink")，以及3D文本网格的生成器。2D特性包括绘制屏幕空间线条、基于文本和精灵的粒子系统的类。空间函数包括各种交叉例程、转换重心坐标和边界框/球生成器。

D3DX库包含众多预先编写的例程，适用于大多数2D/3D应用程序（例如游戏）所需的常见操作。因为[Direct3D](../Page/Direct3D.md "wikilink") [API相对底层](../Page/应用程序接口.md "wikilink")，所以使用D3DX库通常简单许多。

微软于2012年宣布，D3DX将在[Windows 8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink") SDK以及其他开发框架（例如[XNA](https://zh.wikipedia.org/wiki/XNA_Game_Studio_Express "wikilink")）中。着色器效果、纹理管理、几何优化和网格模型可作为单独来源通过[CodePlex](../Page/CodePlex.md "wikilink")发布。\[1\]D3DX的数学结构，例如[向量](../Page/向量.md "wikilink")和[矩阵](../Page/矩阵.md "wikilink")，将与XNAMath并入DirectXMath\[2\]，球面谐波数学将以单独来源提供。

## 接口

D3DX库遵循[COM](../Page/组件对象模型.md "wikilink")[面向对象程序设计](../Page/面向对象程序设计.md "wikilink")模型。函数采用类[C++](../Page/C++.md "wikilink")接口访问。

### ID3DXEffect

ID3DXEffect接口用于编译和绑定FX着色器（.fx）。它支持将命名着色器参数自动映射到硬件常量寄存器、参数池，将纹理映射到可用采样器，指定“技术”和修改渲染状态。

### ID3DXFont

ID3DXFont接口可以用于绘制2D文本。另见D3DXCreateText，它可以创建文本的3D网格。

### ID3DXLine

ID3DXLine接口可用于绘制特定模式的抗锯齿屏幕空间线。

### ID3DXMesh

ID3DXMesh接口用于存储网格，和为[顶点缓存友好性进行网格优化和条带化重排序](../Page/頂點_\(電腦圖學\).md "wikilink")。D3DX中的部分函数在此接口上操作。例如用于为正常和视差映射等效果创建切线空间框架的D3DXComputeTangentFrame。这个类的一个后代是可以进行几何简化的ID3DXPMesh。

### ID3DXPRTEngine

它用于——一种类似球面谐波照明的技术，用于预计算的全局照明和软环境照明。

### ID3DXSprite

ID3DXSprite接口是一个[C++类](../Page/C++类.md "wikilink")，用于绘制一个2D图像到[计算机图形](../Page/计算机图形.md "wikilink")学中被称为[精灵的屏幕](https://zh.wikipedia.org/wiki/精灵_\(计算机图形学\) "wikilink")。在[DirectX 7中](../Page/DirectX.md "wikilink")，这通常使用[DirectDraw](../Page/DirectX_Graphics.md "wikilink") API完成，而这已不推荐使用。

程序员通常只需要调用ID3DXSprite对象的Begin()方法来设置2D绘图的渲染状态和世界变换，调用Draw()方法将[纹理添加到要绘制的列表](../Page/材质贴图.md "wikilink")，最后调用End()方法将图像绘制到屏幕并恢复原始图形状态。

对D3DXSprite的一个常见批评是它比较缓慢，但这个问题已在[Direct3D 9中得到解决](../Page/Direct3D.md "wikilink")。

## 函数

### D3DXComputeTangentFrame

计算用于像正常/凹凸贴图、视差映射和各向异性照明模型等效果的网格的切线空间框架。它通过重复处理解决切线空间不连续性的[毛球问题](../Page/毛球定理.md "wikilink")。它不会处理反面的UV面，具有镜像纹理映射的模型可能会因此遇到照明问题。

## 参考资料

## 外部链接

  - \[<http://msdn.microsoft.com/en-us/library/bb172965(VS.85>).aspx D3DX documentation at MSDN\]
  - [Living Without D3DX (MSDN Blogs)](http://blogs.msdn.com/b/chuckw/archive/2013/08/21/living-without-d3dx.aspx)

[Category:DirectX](https://zh.wikipedia.org/wiki/Category:DirectX "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")

1.
2.