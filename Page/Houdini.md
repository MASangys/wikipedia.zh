{{ Infobox Software | name = Houdini | logo =
[<File:Houdini_Logo.png>](https://zh.wikipedia.org/wiki/File:Houdini_Logo.png "fig:File:Houdini_Logo.png")
| developer = [Side Effect Software Inc.](http://www.sidefx.com) |
latest_release_version = 13.0 | latest_release_date =  |
operating_system = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")
| language = [英语](../Page/英语.md "wikilink") | genre =
[三维计算机图形软件](../Page/三维计算机图形软件.md "wikilink") | website
= [www.sidefx.com](http://www.sidefx.com) }}

**Houdini**是一款三维计算机图形软件，由加拿大Side Effects Software
Inc.（简称SESI）公司开发，SESI公司由Kim Davidson和Greg
Hermanovic创建于1987年。Houdini是在Prisms基础上重新开发而来，可运行于Linux, Windows, Mac
OS等操作系统，是完全基于节点模式设计的产物，其结构、操作方式等和其它的三维软件有很大的差异。Houdini自带的渲染器是Mantra，基于[Reyes渲染架构](../Page/Reyes渲染架构.md "wikilink")，因此也能够快速的渲染[运动模糊](https://zh.wikipedia.org/wiki/运动模糊 "wikilink")、[景深和](../Page/景深.md "wikilink")[置换效果](../Page/位移贴图.md "wikilink")。\[1\]
Mantra是经过产品验证的成熟渲染器，可以满足电影级别的渲染要求。当然，Houdini也有第三方渲染器的接口，比如：[RenderMan](https://zh.wikipedia.org/wiki/RenderMan "wikilink")、[Mental
ray](../Page/Mental_Ray.md "wikilink")、[V-Ray和Torque等](../Page/V-Ray.md "wikilink")，可以把场景导出到这些渲染引擎进行渲染。

软件得名于魔术师[哈利·胡迪尼](../Page/哈利·胡迪尼.md "wikilink")。

## 多种授權方式

  - Houdini Master，Houdini大师版，全功能的商业版本。
  - Houdini
    Escape，Houdini艺术家版，比大师版便宜、缺少部分功能的商业版本。比大师版缺少粒子、刚体动力学、布料模拟和曲线动力学功能。\[2\]
  - Houdini Apprentice
    HD，Houdini高清学习版。非商业版，价格99美元，可以使用所有内置模块功能，渲染的图像没有水印，渲染单个图像分辨率无限制，渲染动画序列分辨率最高为1920x1080。不支持外部渲染器渲染。
  - Houdini
    Apprentice，Houdini免费学习版。非商业版，可以从官方网站免费下载。可以使用所有内置模块功能，渲染的图像带有水印，分辨率最高为720x576，不支持外部渲染器。\[3\]

Houdini商业版的文件扩展名*hip*，非商业版本保存的文件扩展名为*hipnc*，可以打开商业版本的文件，但保存后扩展名会变成*hipnc*。非商业版用户在使用一段时间后，若转而购买商业版，SESI公司会提供一次性把所有非商业版文件转换为商业版本文件的服务。非商业版用户使用中遇到问题可以注册官方论坛，其他热心的论坛用户能帮你解决问题，注册之后还可以从官网下载到小更新版本，小更新版本是开发者在修复软件的缺陷后在官方网站发布的版本，这些小更新版在[Houdini
Journals页面](http://www.sidefx.com/journal/)上有详细的更新列表。

## 模組介紹 \[4\]

| Objects | Object scene           | 场景描述模块  |
| ------- | ---------------------- | ------- |
| SOPs    | Surface OPerations     | 表面編輯模組  |
| POPs    | Particle OPerations    | 粒子編輯模組  |
| CHOPs   | CHannel OPerations     | 通道編輯模組  |
| COPs    | Compositing OPerations | 图像合成模組  |
| SHOPs   | Shader OPerations      | 材質編輯模組  |
| VOPs    | Vex OPerations         | VEX模組   |
| Outputs | Render outputs         | 渲染输出模块  |
| DOPs    | Dynamics OPerations    | 動力學編輯模組 |

## 几何体类型

  - <Font Color=8B4513>Point</Font>
  - <Font Color=8B4513>Primitive</Font>
      - <Font Color=FF6347>Face</Font>
          - <Font Color=DAA520>Polygon</Font>
          - <Font Color=DAA520>Curve</Font>
      - <Font Color=FF6347>Surface</Font>
          - <Font Color=DAA520>Mesh</Font>
          - <Font Color=DAA520>curvedSurface</Font>
              - <Font Color=A9A9A9>*nurbsSurface*</Font>
              - <Font Color=A9A9A9>*bezierSurface*</Font>
      - <Font Color=FF6347>Metaball</Font>
      - <Font Color=FF6347>Volume</Font>
      - <Font Color=FF6347>[Quadric](../Page/二次曲面.md "wikilink")（二次曲面，如Sphere,Tube,...）</Font>
  - <Font Color=8B4513>Vertex</Font>
  - <Font Color=8B4513>Edge</Font>

## 脚本

  - HScript
  - HOM（Houdini Object
    Model，基于[Python](../Page/Python.md "wikilink")，9.0版加入）
  - VEX（Vector EXpression）

### HOM

Houdini在9.0的时候加入了对Python的支持，成为替代HScript的脚本，为了保持文件在各版本间自上而下的兼容，HScript现在还是保留的，但推荐使用Python。你可以用python建立一个自定的节点。和vex写的节点有所不同，Python
SOP可以允许建立或删除几何体，当然它的速度是不比vex的。目前HOM还没有完善，仅限于建立SOP node。

### VEX

VEX是Vector
EXpression的简称，是一种处理大量数据的高性能脚本语言，语法类似C语言，对有编程背景的人来说很容易学。Houdini里的很多地方使用VEX来处理数据。Houdini和Mantra里使用[SIMD来实现VEX](https://zh.wikipedia.org/wiki/SIMD "wikilink")。Houdini里的VOPs，表示Vex
OPerators，用于以节点方式建立VEX操作和材质。你可以用VEX建立以下类型的自定义节点：

  -
    <Font Color=555555>·Modeling
    ·Rendering用于编写shader，
    ·Compositing
    ·Particle
    ·Channel Operator
    ·Fur</Font>

### HScript

  -
    Houdini的一种脚本语言，逐步会被Python所取代。

## 版本历史\[5\]

  - 11.1 2011年8月9日
  - 11.0 2010年7月27日
  - 10.0:2009年4月16日
  - 9.5:2008年7月17日
  - 9.1:2008年1月30日
  - 9.0:2007年9月20日
  - 8.1:2006年6月
  - 8.0:2005年10月
  - 7.0:2004年9月
  - 6.0:2003年5月
  - 5.5:2002年5月

## 参考来源

## 外部链接

  - [SESI公司主页](http://www.sidefx.com)
  - [官方讨论区](http://www.sidefx.com/index.php?option=com_forum&Itemid=172)
  - [odforce——知名的Houdini讨论区](http://odforce.net/)

[Category:三维图像软件](https://zh.wikipedia.org/wiki/Category:三维图像软件 "wikilink")

1.  [Mantra是使用Reyes算法但不符合RenderMan规范的渲染器](http://forums.cgsociety.org/showpost.php?p=5155353&postcount=5)
2.  [Houdini大师版和艺术家版的区别](http://www.sidefx.com/index.php?option=com_content&task=view&id=385&Itemid=190)

3.  [Houdini高清学习版和免费学习版的区别](http://www.sidefx.com/index.php?option=com_content&task=view&id=589&Itemid=221)

4.  [Houdini功能模块](http://odforce.net/wiki/index.php/Contexts)
5.  [Houdini发布页](http://www.sidefx.com/index.php?option=com_content&task=blogcategory&id=41&Itemid=55)