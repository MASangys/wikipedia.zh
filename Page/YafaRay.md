**YafaRay** (**Y**et **A**nother **F**ree **Ray**tracer) 是一款
[自由](https://zh.wikipedia.org/wiki/free_software "wikilink")，[开放源代码](https://zh.wikipedia.org/wiki/open_source "wikilink")
[光线追踪](https://zh.wikipedia.org/wiki/ray_tracing "wikilink") 程序，它使用
[XML](../Page/XML.md "wikilink") 作为场景描述语言。最近，它被整合到了三维创作套件
[Blender中](../Page/Blender.md "wikilink")，Blender可以通过YaFray来渲染场景。

Yafray 渲染出来的图片具有照片级的真实感。

它的许可是使用 [GNU Lesser General Public
License](https://zh.wikipedia.org/wiki/GNU_Lesser_General_Public_License "wikilink")
(LGPL).

## 特点

### 渲染

  - Global Ilumination（全局光照）

<!-- end list -->

  -
    YafaRay 使用
    [全局光照](https://zh.wikipedia.org/wiki/global_illumination "wikilink")
    来让三维场景生成真实感的图片。使用
    [蒙特卡诺法](https://zh.wikipedia.org/wiki/Monte_Carlo_method "wikilink")-来获得加速和计算模拟。

<!-- end list -->

  - Skydome Ilumination（天穹光照）
    这种光照系统是基于光从天空中发射，并把它对软阴影的贡献计算在内的一种设计。这种光照可以从
    [高动态范围图片中获得](https://zh.wikipedia.org/wiki/High_dynamic_range_imaging "wikilink")。

<!-- end list -->

  - Caustics（焦散）
    YafaRay 使用
    [光子贴图](https://zh.wikipedia.org/wiki/photon_mapping "wikilink")
    来获得
    [焦散](https://zh.wikipedia.org/wiki/Caustic_\(optics\) "wikilink")
    效果（光线通过折射／反射而变出分光的效果 比如
    [明亮的玻璃](https://zh.wikipedia.org/wiki/burning-glass "wikilink")）。如果表现半透明的材质效果也有正在开发的
    [浅表面反射](https://zh.wikipedia.org/wiki/subsurface_scattering "wikilink")
    光影模型（shader）.

<!-- end list -->

  - Depth of field（景深）
    这种在聚焦时候的
    [景深效果可以通过yafray完成](https://zh.wikipedia.org/wiki/depth_of_field "wikilink")。当一个点被定焦后，远处的物体就会失去焦点而在画中变得模糊。

<!-- end list -->

  - Blurry reflections（反射模糊）
    如果一个表面不是完美的
    [反射](https://zh.wikipedia.org/wiki/Reflection_\(physics\) "wikilink")，它就会把光变形。这种变形会随着物体的远近有不同表现。YafRay
    可以模拟这种现象。

### 架构

  - Modular framework（模块化框架）
    Yafaray 的特点是模块化结构，使用一个
    [内核来将其他部分的渲染结构联系起来](https://zh.wikipedia.org/wiki/kernel_\(computer_science\) "wikilink")：场景装载器，光影效果。这些都是通过一个[应用程序界面（API）来交流](https://zh.wikipedia.org/wiki/Application_Programming_Interface "wikilink")，这样就可以开发更多的渲染插件，让其他的三维创作套件也可以使用
    Yafray。支持的软件套件有 [Blender](../Page/Blender.md "wikilink")，[Wings
    3D](../Page/Wings_3D.md "wikilink") 和 Aztec.

<!-- end list -->

  - Cross-platform（跨平台）
    Yafray
    完全使用[C++开发](../Page/C++.md "wikilink")。这个特性可以让它有很好的移植性，它有很多种在各种不同平台上预编译的
    [二进制包](https://zh.wikipedia.org/wiki/binaries "wikilink")
    比如：[GNU](../Page/GNU.md "wikilink")／[Linux](../Page/Linux.md "wikilink")，[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
    9x/XP/2000, [Mac OS
    X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") 和
    [Irix](https://zh.wikipedia.org/wiki/Irix "wikilink")。Yafray
    可以是一个单独使用的渲染引擎，它有自己的场景描述语言和格式。这样就可以直接使用
    [命令行](https://zh.wikipedia.org/wiki/command_line "wikilink")
    来调用它，或者用脚本语言，等等。这样它也可以进行[并行](https://zh.wikipedia.org/wiki/parallel_computing "wikilink")
    或者
    [分布式](https://zh.wikipedia.org/wiki/Distributed_computing "wikilink")
    渲染。

## 其他参考

  - [POV-Ray](../Page/POV-Ray.md "wikilink")，另一个光线追踪软件。
  - [LuxRender](https://zh.wikipedia.org/wiki/LuxRender "wikilink")，基于物理光照的渲染软件。

## 外部链接

  - [官方网站](http://www.yafray.org)

[Category:自由三维图形软件](https://zh.wikipedia.org/wiki/Category:自由三维图形软件 "wikilink")
[Category:三维图像软件](https://zh.wikipedia.org/wiki/Category:三维图像软件 "wikilink")