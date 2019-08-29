**Alembic**是计算机图形学中用于三维模型交换的一种开放文件格式，最早于2011年的[SIGGRAPH](../Page/SIGGRAPH.md "wikilink")大会上发布，\[1\]现已被很多的电影特效公司和专业人员使用。

它主要用于在一个公司的不同部门之间、或者为同一个影片项目制作特效的不同工作室之间交换三维模型。Alembic支持常见的多种模型类型，包括多边形模型、细分面、曲线、NURBS曲面和粒子，还支持变换矩阵层级和摄像机，1.1版还加入了对材质和灯光的初步支持。Alembic并不储存复杂的依赖图，而是把依赖图的计算结果“烘培”成最终的模型，通常是顶点位置信息。

## 历史

Alembic最早主要由Sony Pictures Imageworks和[卢卡斯影业](../Page/卢卡斯影业.md "wikilink")以开源程序库的方式开发，依赖于[HDF](../Page/HDF.md "wikilink")格式存储数据。从2013年SIGGRAPH大会发布的1.5.0版开始，Alembic改为使用Ogawa作为数据存储的后端，极大的提高了读写性能，并保持了向下兼容。

## 支持Alembic的软件

### 内置支持的软件

| 程序                                                                          | 最早加入版本 | 开发者                                                                |
| --------------------------------------------------------------------------- | ------ | ------------------------------------------------------------------ |
| [Maya](../Page/Maya.md "wikilink")                                          | 2012   | [Autodesk](../Page/Autodesk.md "wikilink")\[2\]                    |
| Katana                                                                      | 1.1    | The Foundry\[3\]                                                   |
| 3dsMax                                                                      | 2016   | Autodesk                                                           |
| [Houdini](../Page/Houdini.md "wikilink")                                    | 11.1   | Side Effects Software\[4\]                                         |
| Arnold                                                                      | ?      | Solid Angle\[5\]                                                   |
| [modo](https://zh.wikipedia.org/wiki/modo "wikilink")                       | 601    | [Luxology](https://zh.wikipedia.org/wiki/Luxology "wikilink")\[6\] |
| [Cinema 4D](../Page/Cinema_4D.md "wikilink")                                | R14    | Maxon\[7\]                                                         |
| [V-Ray](../Page/V-Ray.md "wikilink")                                        | 2012   | Chaos Group\[8\]                                                   |
| [Nuke](https://zh.wikipedia.org/wiki/Nuke_\(软件\) "wikilink")                | 7.0    | The Foundry\[9\]                                                   |
| [Guerilla Render](https://zh.wikipedia.org/wiki/Guerilla_Render "wikilink") | 0.15.2 | Mercenaries Engineering\[10\]                                      |
| [RealFlow](https://zh.wikipedia.org/wiki/RealFlow "wikilink")               | 2013   | Next Limit\[11\]                                                   |
| Clarisse iFX                                                                | 2012   | [Isotropix](http://www.isotropix.com/)                             |
| Lightwave 3d                                                                | 11.6   | NewTek\[12\]                                                       |

### 插件

| 插件        | 支持的软件                                                            | 开发者                |
| --------- | ---------------------------------------------------------------- | ------------------ |
| Crate     | Softimage, 3DS Max, Maya, Arnold                                 | Exocortex\[13\]    |
| AtomKraft | Nuke, [After Effects](../Page/Adobe_After_Effects.md "wikilink") | Jupiter Jazz\[14\] |
| Ortholab  | [Mudbox](https://zh.wikipedia.org/wiki/Mudbox "wikilink")        | Ortholab\[15\]     |

## 参考资料

## 外部链接

  -
  - [项目网站](https://code.google.com/p/alembic/)

[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")

1.
2.

3.  <http://www.thefoundry.co.uk/products/katana/>

4.  <http://www.sidefx.com>

5.  <http://www.solidangle.com>

6.  <http://www.luxology.com/tv/training/view.aspx?id=619>

7.

8.  <http://chaosgroup.com/en/2/siggraph2012.html?os=0726>

9.  <http://www.thefoundry.co.uk/articles/2012/09/07/410/nuke-70-is-coming-soon/#feature_alembic>

10. <http://www.guerillarender.com>

11.

12. <https://www.lightwave3d.com/11-6_features_overview>

13. <http://exocortex.com/alembic>

14. <http://atomkraft.hk>

15. <http://ortholab.codeplex.com/wikipage?title=AbcTranslator&referringTitle=Home>