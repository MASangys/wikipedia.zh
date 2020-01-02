> 本文内容由[Gerris](https://zh.wikipedia.org/wiki/Gerris)转换而来。


{{ infobox software | name = Gerris Flow Solver | screenshot = [Screenshot-GfsView_half-cylinder-9.0.gfs.png](https://zh.wikipedia.org/wiki/File:Screenshot-GfsView_half-cylinder-9.0.gfs.png "fig:Screenshot-GfsView_half-cylinder-9.0.gfs.png") | caption = Gerris 1.3.2 (GfsView: 0.5.0) | author = Stéphane Popinet, NIWA (National Institute of Water and Atmospheric research), Institut Jean le Rond d'Alembert | latest_release_version = 20090721 (1.3) | latest_release_date =  | latest_preview_version = 20120326 | latest_preview_date = 2012年3月26日 | programming language = C | operating_system = [Unix-like](https://zh.wikipedia.org/wiki/Unix-like "wikilink"), [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink"), [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")(通过[cygwin](https://zh.wikipedia.org/wiki/cygwin "wikilink")) | platform = 32位/64位 | language = [英文](https://zh.wikipedia.org/wiki/英文 "wikilink") | status = 运行中 | genre = [计算流体力学](../Page/计算流体力学.md "wikilink") | license = [GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink") | website = <http://gfs.sourceforge.net/> }} **Gerris** 是一个[跨平台的](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[计算流体力学](../Page/计算流体力学.md "wikilink")软件, 并且是遵守[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")的[自由软件](../Page/自由软件.md "wikilink"). 创建者是 Stéphane Popinet, 由 NIWA (National Institute of Water and Atmospheric research) 和 Institut Jean le Rond d'Alembert 进行维护. "Gerris" 是[拉丁文](https://zh.wikipedia.org/wiki/拉丁文 "wikilink")(以及[法文](https://zh.wikipedia.org/wiki/法文 "wikilink"))中[水黽的意思](https://zh.wikipedia.org/wiki/水黽 "wikilink"). \[1\]

## 历史

2001年, Stéphane Popinet 从零开始编写 Gerris. 第一个版本以 [GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink") 于 2001 年 9 月发布. Gerris 是原创项目, 不是任何已有代码的改编版. \[2\] 最近一个[稳定版是](../Page/軟件版本週期.md "wikilink") 2009-07-21 发布的. Gerris 常以发布日期标注(特别是开发中的)版本, 虽然也有正规的版本号.

严格的说 Gerris 指的仅仅是一个[命令行界面](../Page/命令行界面.md "wikilink")的非交互式程序. 该程序依据给定的模拟文件读入各种模拟要用到的参数和物件, 并依据模拟文件的指示输出数据(可以是指定位置的物理量也可以是图形).

但通常提到 Gerris 的时候专门配合使用的计算结果查看器 GfsView 也会算在内. Gerris 计算时会自动生成离散八叉树(octree)形式的网格[数据结构](../Page/数据结构.md "wikilink"), 而一般的[可视化软件没法处理这种结构](../Page/可视化_\(计算机图形学\).md "wikilink"), 故作者自己开发了 GfsView 来实现这一功能.

虽说是跨平台软件, 但在Windows平台需要使用[cygwin进行编译](https://zh.wikipedia.org/wiki/cygwin "wikilink").

## 主要功能

  - 可计算 2D 或 3D [不可压](../Page/不可壓縮流.md "wikilink")[无粘/有粘流体](https://zh.wikipedia.org/wiki/黏度 "wikilink").
  - 可在计算上述流体的同时求解[对流扩散问题](https://zh.wikipedia.org/wiki/对流扩散问题 "wikilink").
  - 支持固定边界和运动边界的计算.
  - 支持自由边界以及[表面张力](../Page/表面张力.md "wikilink")的计算.
  - 流体中放置的物件可由其他 [CAD](../Page/计算机辅助设计.md "wikilink") 软件(如 [Blender](../Page/Blender.md "wikilink") <ref>{{

cite web| title=Using Blender to create solids for Gerris| first=| last=| date=2012-04-16| work=Gerris Development Team| publisher=<http://gfs.sourceforge.net/>| url=<http://gfs.sourceforge.net/wiki/index.php/Using_Blender_to_create_solids_for_Gerris>| accessdate=2012-04-16 }}</ref>) 制作好后放入. 对于简单的几何体 Gerris 也提供了内置的模型供使用.

  - 全自动打网格(方形(2D)/立方体(3D)网格), 并且支持自适应网格. 疏密程度以及自适应判据可由用户指定.(GfsAdapt)
  - 可直接输出视频文件(需要 [FFmpeg](../Page/FFmpeg.md "wikilink") 的支持).
  - 支持平行计算

## 计算精度

  - 在计算无粘流体时由于计算格式的[数值粘性](https://zh.wikipedia.org/wiki/数值粘性 "wikilink"), 结果与理论无粘流会有些差别. 网格剖分加细6次时, 等价的[雷诺数](../Page/雷诺数.md "wikilink")大致是 10<sup>4</sup> \~ 10<sup>6</sup>. 该粘性会随网格精细程度的提高而相应减小(雷诺数升高).<ref>{{

cite web| title=Estimation of the numerical viscosity | first=| last=| date=2012-04-16| work=Gerris Development Team| publisher=<http://gfs.sourceforge.net/>| url=<http://gerris.dalembert.upmc.fr/gerris/tests/tests/reynolds.html>| accessdate=2012-04-16 }}</ref>

  - 时间和空间都有[二阶精度](https://zh.wikipedia.org/wiki/二阶精度 "wikilink") <ref>{{

cite web| title=Quadtree-adaptive tsunami modelling| first=| last=| date=2012-04-16| work=Gerris Development Team| publisher=<http://gfs.sourceforge.net/>| url=<http://gfs.sourceforge.net/papers/tsunami.pdf>| accessdate=2012-04-16 }}</ref>.

## 缺点

  - 不支持可压流体的计算----适用范围较小.
  - 仅支持立方形的网格.
  - 全程序使用[无量纲化的物理量](https://zh.wikipedia.org/wiki/无量纲化 "wikilink"), 单位转换不够方便<ref>{{

cite web| title=How would I redimensionalise U,V,W and P?| first=| last=| date=2012-04-17| work=Gerris Development Team| publisher=<http://gfs.sourceforge.net/>| url=<http://gfs.sourceforge.net/wiki/index.php/FAQ#How_would_I_redimensionalise_U.2CV.2CW_and_P.3F>| accessdate=2012-04-17 }}</ref>.

## 示例文件

参见教程 \[3\]

文件 vorticity.gfs:

    # 空间由两个单位立方体组成
    1 2 GfsSimulation GfsBox GfsGEdge {} {
      # 模拟时间从 t=0 到 50
      GfsTime { end = 50 }
      # 网格剖分加细 6 次, 即是平面分成 2^6 * 2^6 个网格.
      GfsRefine 6
      # 流场的初态由随机数指定
      GfsInit {} {
        U = (0.5 - rand()/(double)RAND_MAX)
        V = (0.5 - rand()/(double)RAND_MAX)
      }
      # 每计算10步在屏幕上输出一次时间, 以及计算误差相关的信息
      GfsOutputTime            { istep = 10  } stdout
      GfsOutputProjectionStats { istep = 10  } stdout
      # 每过 1 单位时间, 添加一帧涡量的 ppm 格式的图像到 vorticity.ppm
      GfsOutputPPM             { step = 1 } vorticity.ppm { v = Vorticity }
    }
    # 两个单位立方体的连接关系
    GfsBox {}
    1 1 right
    1 1 top

开始计算

    gerris2D vorticity.gfs

计算完后当前文件夹下将生成一个 .[ppm](https://zh.wikipedia.org/wiki/ppm "wikilink") 文件, 保存有各时刻的[涡量](../Page/涡量.md "wikilink")大小(以颜色表示)的图像.

如在 [Linux](../Page/Linux.md "wikilink") 下, 可以使用以下命令转化图像序列为视频(需要安装 [ImageMagick](../Page/ImageMagick.md "wikilink"))

    convert vorticity.ppm vorticity.mpg

也可修改模拟文件使其直接输出 .mpg 文件.

## 参见

  - [OpenFOAM](../Page/OpenFOAM.md "wikilink")
  - [计算流体力学](../Page/计算流体力学.md "wikilink")
  - [计算科学](../Page/计算科学.md "wikilink")
  - [计算机模拟](../Page/计算机模拟.md "wikilink")

## 外部链接

  - [项目主页](http://gfs.sourceforge.net/)
  - [一些算例](http://gerris.dalembert.upmc.fr/gerris/examples/examples/index.html)

## 参考文献

<references/>

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:计算流体力学](https://zh.wikipedia.org/wiki/Category:计算流体力学 "wikilink")

1.  {{ cite web| title=Gerris FAQ| first=| last=| date=2012-04-16| work=Gerris Development Team| publisher=<http://gfs.sourceforge.net/>| url=<http://gfs.sourceforge.net/wiki/index.php/FAQ>| accessdate=2012-04-16 }}
2.  {{ cite web| title=FAQ:Where does Gerris come from?| work=Gerris Development Team| publisher=<http://gfs.sourceforge.net/>| url=<http://gfs.sourceforge.net/wiki/index.php/FAQ#Where_does_Gerris_come_from.3F>| accessdate=2012-06-14 }}
3.  {{ cite web| title=The Gerris Tutorial| first=| last=| date=2011-03-23| work=Gerris Development Team| publisher=<http://gfs.sourceforge.net/>| url=<http://gfs.sourceforge.net/tutorial/tutorial/tutorial1.html>| accessdate=2012-04-16 }}