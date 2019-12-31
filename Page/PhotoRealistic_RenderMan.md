> 本文内容由[PhotoRealistic RenderMan](https://zh.wikipedia.org/wiki/PhotoRealistic RenderMan)转换而来。


**PRMan**，[皮克斯动画工作室的](https://zh.wikipedia.org/wiki/皮克斯 "wikilink")**PhotoRealistic RenderMan**软件渲染器，简称为**PRMan**。是用于影视效果制作的三维渲染[软件包](https://zh.wikipedia.org/wiki/软件包 "wikilink")。由于[RenderMan的商标归皮克斯公司拥有](https://zh.wikipedia.org/wiki/RenderMan "wikilink")，人们经常把PRMan等同于RenderMan，实际上RenderMan是一个渲染器规范，皮克斯公司的PRMan是（声称）符合这一规范的一种产品。PRMan 13.0符合RenderMan规范第3.3版。

PRMan使用[RenderMan着色语言进行](https://zh.wikipedia.org/wiki/RenderMan着色语言 "wikilink")[着色器](../Page/着色器.md "wikilink")编程，可灵活的定义材质特性。PRMan渲染器可以渲染高质量的图像。如果使用得当，PRMan可以提供相当快的渲染速度。 很多著名电影以及皮克斯自己的3D动画长片与短片运用了PRMan渲染器来渲染。\[1\]

**PRMan**基于[Reyes渲染架构](../Page/Reyes渲染架构.md "wikilink")。自11.0版提供[光线跟踪和](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")[全局照明功能](https://zh.wikipedia.org/wiki/全局照明 "wikilink")，其性能在之后的版本中均有较大提升。

值得注意的是，有些符合RenderMan规范的渲染器并不使用Reyes渲染架构，例如，[BMRT是纯粹的](https://zh.wikipedia.org/wiki/BMRT "wikilink")[光线跟踪渲染器](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")。

## PRMan的特性列表\[2\]

PRMan 依不同的需求，有不同的版本供购买使用，包括 RenderMan Pro Server、RenderMan Studio、RenderMan for Maya 等，三者均使用相同的渲染技术，但在实际的工作流程中有些版本受许可证限制，特性会有一些差异，详细情况请参看皮克斯官网的资料。

  - 极高的渲染性能和内存效率，得益于Reyes算法
  - 使用[RSL编写自定义着色器](https://zh.wikipedia.org/wiki/RenderMan着色语言 "wikilink")
  - 镜头特效
      - 高精度的3D[运动模糊](https://zh.wikipedia.org/wiki/运动模糊 "wikilink")
      - 真实的[景深](../Page/景深.md "wikilink")效果
      - [焦外成像控制](https://zh.wikipedia.org/wiki/焦外成像 "wikilink")
  - 粒子渲染
  - 曲线渲染
  - 高效的毛发渲染
  - 高质快速的置换渲染
  - [次表面散射](https://zh.wikipedia.org/wiki/次表面散射 "wikilink")
  - [全局照明](https://zh.wikipedia.org/wiki/全局照明 "wikilink")
      - [环境遮蔽](https://zh.wikipedia.org/wiki/环境遮蔽 "wikilink")（OCC，光线跟踪或者基于点云）
      - [色溢](https://zh.wikipedia.org/wiki/色溢 "wikilink")（光线跟踪或者基于点云）
      - [图像照明](https://zh.wikipedia.org/wiki/图像照明 "wikilink")（HDRI）
      - [焦散](https://zh.wikipedia.org/wiki/焦散 "wikilink")
      - 光线跟踪面光源
  - 点云
  - 砖图
  - 光线跟踪
      - 混合系统（[RSL的子系统](https://zh.wikipedia.org/wiki/RenderMan着色语言 "wikilink")）
      - 可编程光线跟踪
      - 光线跟踪组
  - CSG（渲染时的模型间布尔运算）
  - 任意输出变量（AOVs）

## PRMan的用法

  - 使用[文本编辑器](../Page/文本编辑器.md "wikilink")编写用于场景描述的[RIB格式文件](https://zh.wikipedia.org/wiki/RIB "wikilink")，用PRMan渲染。
  - 通过[C语言程序经由RenderMan规范的C语言绑定生成RIB场景描述文件](https://zh.wikipedia.org/wiki/C语言 "wikilink")。
  - [皮克斯的](https://zh.wikipedia.org/wiki/皮克斯 "wikilink")**[RenderMan艺术家工具](https://zh.wikipedia.org/wiki/RenderMan艺术家工具 "wikilink")（RenderMan Artist Tools，简写为RAT）**产品为PRMan提供了[图形界面包装](https://zh.wikipedia.org/wiki/图形界面 "wikilink")，RAT模块[mtor用于从三维软件](https://zh.wikipedia.org/wiki/mtor "wikilink")[Maya](../Page/Maya.md "wikilink")生成PRMan的场景描述文件。这样，用户就可以在Maya下完成渲染之前的创作后使用PRMan渲染场景。RAT提供[Shader图形化交互创作工具](https://zh.wikipedia.org/wiki/Shader "wikilink")[slim](https://zh.wikipedia.org/wiki/slim "wikilink")、和管理渲染任务的工具[Alfred](https://zh.wikipedia.org/wiki/Alfred "wikilink")。
  - 皮克斯也为小型工作室和个人用户提供使用PRMan的Maya渲染插件[RenderMan for Maya](https://zh.wikipedia.org/wiki/RenderMan_for_Maya "wikilink")，用户可以在[Maya](../Page/Maya.md "wikilink")环境下以类似Maya内置的[Maya软件渲染器相似的方式使用PRMan进行渲染](https://zh.wikipedia.org/wiki/Maya软件渲染器 "wikilink")。
  - 某些三维图形制作软件可以直接调用PRMan渲染器渲染场景，例如[Houdini](../Page/Houdini.md "wikilink")。
  - 很多三维图形制作软件都内置或通过第三方插件实现将场景转换为[RIB场景描述文件的功能](https://zh.wikipedia.org/wiki/RIB "wikilink")，以便用户通过PRMan渲染。
  - 很多支持PRMan的三维图形制作软件可以通过[图形界面定制材质](https://zh.wikipedia.org/wiki/图形界面 "wikilink")，以减少对用户编写[着色器](../Page/着色器.md "wikilink")能力的要求和使创作更加便捷，例如[Maya](../Page/Maya.md "wikilink")的[HyperGraph功能](https://zh.wikipedia.org/wiki/HyperGraph "wikilink")。对于上述方法，用户均可以通过[RenderMan着色语言编写着色器以实现材质的描述](https://zh.wikipedia.org/wiki/RenderMan着色语言 "wikilink")。很多时候，编写自定义着色器是必需的。对于完全使用[RAT的工作流程而言](https://zh.wikipedia.org/wiki/RAT "wikilink")，一般来说需要有开发人员编写[着色器](../Page/着色器.md "wikilink")模板（实际上是TCL\\TK程序），由RAT中的[SLIM进行调用形成材质](https://zh.wikipedia.org/wiki/SLIM "wikilink")，艺术家调节材质中的参数，最终生成材质提供给渲染器使用。

## 版本历史

  - RednerMan Pro Server 17.0 和 RenderMan Studio 4.0，2012年10月4日\[3\]
  - RednerMan Pro Server 16.0 和 RenderMan for Maya 3.0，2011年\[4\]
  - RednerMan Pro Server 15.0，2009年
  - RednerMan Pro Server 14.0，2008年\[5\]
  - RenderMan Pro Server 13.0，2006年5月
  - RenderMan Pro Server 12.5，2005年4月
  - RenderMan Pro Server 12.0，2004年10月
  - RenderMan Pro Server 11.5，2003年9月
  - RenderMan Toolkit 11.0，2002年11月
  - RenderMan Toolkit 10.0，2002年3月
  - RenderMan Toolkit 3.9，2000年2月
  - RenderMan Toolkit 3.8，1998
  - RenderMan Toolkit 3.7，1997
  - RenderMan Toolkit 3.6，1996
  - RenderMan Toolkit 3.5，1994
  - RenderMan Toolkit 3.4，1993
  - RenderMan Toolkit 3.3，1992
  - RenderMan Toolkit 3.2，1991
  - RenderMan Toolkit 3.1，1990
  - RenderMan Toolkit 3.0，1989

## 常见的符合[RenderMan规范](../Page/RenderMan规范.md "wikilink")的渲染器

  - [3Delight](../Page/3Delight.md "wikilink")渲染器
  - [Aqsis](../Page/Aqsis.md "wikilink")渲染器
  - [BMRT](https://zh.wikipedia.org/wiki/BMRT "wikilink")，[拉里·格里兹开发的支持光线跟踪的RenderMan渲染器](https://zh.wikipedia.org/wiki/拉里·格里兹 "wikilink")。
  - [Entropy](https://zh.wikipedia.org/wiki/Entropy_\(渲染器\) "wikilink")，被NVIDIA Gelato所取代，但Gelato也已停止开发。
  - [Pixie渲染器](../Page/Pixie_\(渲染器\).md "wikilink")，社区认为这是BMRT的最好继任者。
  - [RenderDotC渲染器](https://zh.wikipedia.org/wiki/RenderDotC "wikilink")

## 参考来源

## 外部链接

  - [PRMan官方网站](https://renderman.pixar.com/)
  - [皮克斯网站上的RenderMan规范](https://web.archive.org/web/20121223074542/http://renderman.pixar.com/products/rispec/index.htm)
  - [3Delight](http://www.3delight.com/)
  - [Air](http://www.sitexgraphics.com/)
  - [Aqsis](http://www.aqsis.org/)
  - [Pixie](http://www.renderpixie.com/)
  - [RenderDotC](http://www.dotcsw.com/)

[Category:RenderMan](https://zh.wikipedia.org/wiki/Category:RenderMan "wikilink") [Category:三维图像软件](https://zh.wikipedia.org/wiki/Category:三维图像软件 "wikilink")

1.  [皮克斯网站上使用RenderMan渲染的影片列表](https://renderman.pixar.com/products/whats_renderman/movies.html)
2.  [PRMan特性列表](https://renderman.pixar.com/products/whats_renderman/features.html)
3.  [RednerMan Pro Server 17.0 和 RenderMan Studio 4.0 发布](https://renderman.pixar.com/view/Press_Release_RPS17_RMS4)
4.  [RednerMan Pro Server 16.0 发布](https://renderman.pixar.com/view/DP21194)
5.  [RednerMan Pro Server 14.0 发布](https://renderman.pixar.com/view/DP21244)