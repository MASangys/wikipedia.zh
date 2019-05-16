**POV-Ray**，全名是，是一个使用[光线跟踪绘制三维图像的](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")[开放源代码](../Page/开放源代码.md "wikilink")[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。运行POV脚本语言。它是基于[DKBTrace来开发的](https://zh.wikipedia.org/wiki/DKBTrace "wikilink")，DKBTrace是由[David
Kirk
Buck和](https://zh.wikipedia.org/wiki/David_Kirk_Buck "wikilink")[Aaron
A.
Collins编写在Amiga上的](https://zh.wikipedia.org/wiki/Aaron_A._Collins "wikilink")。POV-Ray早期也受到了Polyray
raytracer作者Alexander Enzmann的帮助。很多漂亮的图片就是由POV-Ray来制作的。

## 历史

该软件最初发展始于80年代，是一個歷史悠久的三維算圖引擎。[David Kirk
Buck下载了一个为](https://zh.wikipedia.org/wiki/David_Kirk_Buck "wikilink")[Unix编写的](https://zh.wikipedia.org/wiki/Unix "wikilink")[Amiga光线跟踪软件的](../Page/Amiga.md "wikilink")[source
code](https://zh.wikipedia.org/wiki/source_code "wikilink")。有趣的是，当他玩了一段时间后，他觉得应该自己写一个类似软件，最初名字叫[DKBTrace](https://zh.wikipedia.org/wiki/DKBTrace "wikilink")。於是他將它贴在了一个论坛上面，以为别人会对它感兴趣。1987,
[Aaron
Collins下载了](https://zh.wikipedia.org/wiki/Aaron_Collins "wikilink")[DKBTrace然后开始了](https://zh.wikipedia.org/wiki/DKBTrace "wikilink")[x86机器的移植工作](https://zh.wikipedia.org/wiki/x86 "wikilink")。他和[David
Buck一起合作为它添加了更多功能](https://zh.wikipedia.org/wiki/David_Buck "wikilink")。直到这个软件更加的流行，他们已经为了加新功能而应付不过来。1989,
David把这个軟體变成了一个程序员团队合作的項目。这时候，他觉得已经没有资格来命名软件名字了。所以考虑了很多新的名字。"STAR"（为动画和渲染而生存的软件：Software
Taskforce on Animation and
Rendering）是一个最初的打算，但是最后变成了"持续不断更新版本的光线跟踪引擎Persistence
of Vision Raytracer,"简写为"POV-Ray" .

POV-Ray是第一个在[空间轨道渲染出图片的](https://zh.wikipedia.org/wiki/空间轨道 "wikilink")[光线跟踪软件](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")，由[马克·沙特尔沃思在](../Page/马克·沙特尔沃思.md "wikilink")[国际空间站渲染](../Page/国际空间站.md "wikilink")。

## 特征

POV-Ray不像一般的3D軟體有圖形化使用介面，其使用自有腳本語言來描述場景。POV腳本語言具備[圖靈完備性](https://zh.wikipedia.org/wiki/圖靈完備性 "wikilink")，可以編寫巨集以及迴圈程式。

  - 支援幾種幾何元素以及[構造實體幾何](https://zh.wikipedia.org/wiki/構造實體幾何 "wikilink")。
  - 物件表面的折射、反射。
  - 支援TGA、PNG影像格式

## 当前版本

最新的版本是3.7。

  - 支援多核心CPU[對稱多處理](https://zh.wikipedia.org/wiki/對稱多處理 "wikilink")。
  - 新增[高動態範圍成像](https://zh.wikipedia.org/wiki/高動態範圍成像 "wikilink")（HDRI）格式如[OpenEXR和](../Page/OpenEXR.md "wikilink")[Radiance輸入與輸出](https://zh.wikipedia.org/wiki/Radiance "wikilink")。

## 基元

## 场景描述语言（Scene Description Language）例子

下面的例子给出了场景描述语言（Scene Description
Language）在POV-Ray的一个应用实例。展示了使用视角，光源，一个简单的方块模型和缩放，旋转，平移变换的效果。

[I_example_povray_scene_rendering.png](https://zh.wikipedia.org/wiki/File:I_example_povray_scene_rendering.png "fig:I_example_povray_scene_rendering.png")

`#version 3.6;`
`#include "colors.inc"`
`global_settings { assumed_gamma 1.0 }`

`background   { color rgb <0.25, 0.25, 0.25> }`

`camera       { location  <0.0, 0.5, -4.0>`
`               direction 1.5*z`
`               right     x*image_width/image_height`
`               look_at   <0.0, 0.0, 0.0> }`

`light_source { <0, 0, 0>`
`               color rgb <1, 1, 1>`
`               translate <-5, 5, -5> }`

`light_source { <0, 0, 0>        `
`               color rgb <0.25, 0.25, 0.25>`
`               translate <6, -6, -6> }`

`box          { <-0.5, -0.5, -0.5>`
`               <0.5, 0.5, 0.5>`
`               texture { pigment { color Red }`
`                         finish  { specular 0.6 }`
`                         normal  { agate 0.25 scale 1/2 } }    `
`               rotate <45,46,47> }`

下面的脚本片段展示了使用变量声明，赋值，比较和while循环结构。

[I_example_povray_scene_rendering2.png](https://zh.wikipedia.org/wiki/File:I_example_povray_scene_rendering2.png "fig:I_example_povray_scene_rendering2.png")

`#declare the_angle = 0;`

`#while (the_angle <= 360)`
`   box {   <-0.5, -0.5, -0.5>`
`       <0.5, 0.5, 0.5>`
`               texture { pigment { color Red }`
`                         finish  { specular 0.6 }`
`                         normal  { agate 0.25 scale 1/2 } }`
`       rotate the_angle }`
`   #declare the_angle = the_angle + 45;`
`#end`

## 外在连结

  - [正式网址](http://www.povray.org/)

[Category:三维图像软件](https://zh.wikipedia.org/wiki/Category:三维图像软件 "wikilink")
[Category:自由三維圖形軟體](https://zh.wikipedia.org/wiki/Category:自由三維圖形軟體 "wikilink")