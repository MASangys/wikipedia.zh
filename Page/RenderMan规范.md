**RenderMan规范**\[1\]，简称RISpec，是一个开放的[应用程序接口](../Page/应用程序接口.md "wikilink")（API），由[皮克斯开发](https://zh.wikipedia.org/wiki/皮克斯 "wikilink")，用于描述[三维模型并把它转换成逼真的数字图像](../Page/三维模型.md "wikilink")。RenderMan规范作为建模程序和渲染程序之间的通信协议（或称为接口），用于生成逼真的数字图像。规范类似于[PostScript](../Page/PostScript.md "wikilink")，不过是用来描述三维场景而非二维页面布局。因此，理解RenderMan接口的建模软件，可以输出场景数据到符合规范的渲染器（以下简称RenderMan渲染器），而无需关心后者使用什么[算法来](../Page/算法.md "wikilink")[渲染出图像](../Page/渲染.md "wikilink")。

RenderMan规范最初发布于1988年，版本号为3.0，3.1版发布于1989年，并在1995年进行了修订，2000年7月，规范发布3.2版。规范的当前版本是3.2.1版，发布于2005年11月。\[2\]后来的事实证明了规范的前瞻性，规范在多年之后也无需过多改动就能引入新技术。

RenderMan规范和当时的其他标准的不同之处在于它允许使用高级的几何图元，比如[二次曲面或](../Page/二次曲面.md "wikilink")[双三次曲面来表示图形](https://zh.wikipedia.org/wiki/双三次曲面 "wikilink")，而非依赖于建模程序事先生成多边形逼近模型，规范的另一个创新之处是引入[着色语言](https://zh.wikipedia.org/wiki/着色语言 "wikilink")。

RenderMan和[OpenGL有很多相同之处](../Page/OpenGL.md "wikilink")，虽然两个[API是针对不同的用户](https://zh.wikipedia.org/wiki/API "wikilink")（OpenGL用于实时硬件辅助渲染，而RenderMan规范则用于逼真图像的离线渲染），两个API都是基于栈的[状态机机制直接渲染出几何图形](https://zh.wikipedia.org/wiki/状态机 "wikilink")。

## RenderMan接口规范内容

RenderMan渲染接口，主要包括两大部分，第一部分是RenderMan
Interface，定义了着色计算所必须的一些基本数据类型，和RenderMan接口字节流协议（RenderMan
Interface Bytestream
Protocol），简写为RIB，*rib*也是RenderMan场景描述文件的扩展名；规范的第二部分，是RenderMan着色语言，RenderMan
Shading Language，简称RSL，使用RenderMan着色语言编写的源程序，其源代码文件扩展名通常是*sl*。

### RenderMan接口

RenderMan接口，定义了一些基本的数据类型，以规范的[C语言实现为例](https://zh.wikipedia.org/wiki/C语言 "wikilink")，规范把C语言的short、int、float、char数据类型，分别映射至其RtBoolean、RtInt、RtFloat和\*RtToken类型，另外，规范还定义了RtColor、RtPoint、RtVector、RtMatrix等特定于图形学着色计算必要的数据类型。

规范的图形状态（graphics
state），包括了渲染一个模型所需的全部信息，RenderMan接口的命令，要么改变图形状态，要么渲染一个模型。图形状态又分为两部分，其一是全局状态，在渲染一幅图像或序列中的一帧时，保持不变；其二是当前状态，针对不同待渲染的模型，可以发生改变。全局状态中的参数，称为选项（Options）；当前状态中的参数，称为属性（Attributes）。选项包括相机和显示（指输出像素的）参数，还有其他影响渲染质量的参数；属性包括控制模型外观和材质的参数（比如颜色、透明度、着色模型等），还有模型的位置、朝向和细分程度等参数。

RenderMan规范支持、[曲面片](../Page/非均匀有理B样条.md "wikilink")、[细分曲面](../Page/细分曲面.md "wikilink")、[二次曲面](../Page/二次曲面.md "wikilink")、[点和曲线](../Page/点.md "wikilink")、[元球](https://zh.wikipedia.org/wiki/元球 "wikilink")、[程序图元等多样的几何模型](https://zh.wikipedia.org/wiki/程序图元 "wikilink")

### RenderMan着色语言（RSL）

RenderMan规范引入了RenderMan着色语言，使三维场景的外观不只用很少的参数来描述，而是允许使用类似C语言的程序来编写任意复杂的着色函数，通常称之为[程序纹理和](https://zh.wikipedia.org/wiki/程序纹理 "wikilink")[着色器](../Page/着色器.md "wikilink")（shader）。光照以及[表面置换也是可编程的](https://zh.wikipedia.org/wiki/置换 "wikilink")，能用着色语言编程来修改。RSL允许每个语句以[单指令流多数据流的方式执行](https://zh.wikipedia.org/wiki/单指令流多数据流 "wikilink")，但不强制使用此方式。另一个使RenderMan渲染器区别于许多其他渲染器的功能是它允许输出着色函数里的任意信息，不管是表面法线、单独的灯光通道还是什么别的信息，都可以使用RenderMan渲染器输出到单独的通道里。

一个RSL编写的着色器，可以用于任何符合RenderMan渲染规范的RenderMan渲染器，比如皮克斯的[PRMan](https://zh.wikipedia.org/wiki/PRMan "wikilink")、DNA
Research的[3Delight](../Page/3Delight.md "wikilink")，以及开源的[Pixie和](../Page/Pixie_\(渲染器\).md "wikilink")[Aqsis](../Page/Aqsis.md "wikilink")。

RSL可以编写独立的函数和RenderMan渲染规范定义的五种类型的着色器：surface，light，volume，imager和displacement着色器。

以下是定义塑料表面材质的一个示例着色器：

``` c
surface plastic (float Ka = 1, Kd = 0.5, Ks = 0.5, roughness = 0.1;
                 color specularcolor = 1;) {
        normal Nf = faceforward (normalize(N),I);
        Ci = Cs * (Ka*ambient() + Kd*diffuse(Nf)) + specularcolor * Ks*specular(Nf,-normalize(I),roughness);
        Oi = Os;
        Ci *= Oi;
}
```

着色器通过接收一些可以由艺术家调节的变量比如Cs（表面颜色），Os（表面透明度）等，结合RenderMan渲染规范定义的内置变量N（着色点的法线），P（着色点位置）等，依据一定的算法计算出Ci（最终表面颜色），Oi（最终表面透明度）或任意所需信息，从而完成着色过程。

一个着色器可以用于不同的三维几何模型，每个着色器实例的参数数值可不一样。着色器没有返回值，而是利用“输出变量”存储计算的数值。但函数可以接受参数，并返回一个值。比如，以下函数通过[点积操作符](../Page/点积.md "wikilink")“.”计算矢量的长度并将之返回。

``` c
float length(vector v) {
  return sqrt(v . v);
}
```

### 必备功能

一个RenderMan渲染器，必须实现以下功能：

  - 完全层级化的图形状态（graphics state），包括属性、变换栈（transformation stacks）和有效光源列表。
  - [正交投影和](https://zh.wikipedia.org/wiki/正交投影 "wikilink")[透视投影视角变换](https://zh.wikipedia.org/wiki/透视投影 "wikilink")。
  - 基于深度的[隐面消除](https://zh.wikipedia.org/wiki/隐面判别 "wikilink")。
  - [像素过滤和](https://zh.wikipedia.org/wiki/像素过滤 "wikilink")[反走样](https://zh.wikipedia.org/wiki/反锯齿 "wikilink")。
  - [图像量化前的](https://zh.wikipedia.org/wiki/图像量化 "wikilink")[伽马校正和](https://zh.wikipedia.org/wiki/伽马校正 "wikilink")[dithering](https://zh.wikipedia.org/wiki/dithering "wikilink")。
  - 输出图像包括RGB、A和Z的任意组合，并且分辨率可由用户指定。
  - 所有规范里描述的几何图元，以及各图元的标准图元变量。
  - 支持可编程着色。
  - 支持索引[纹理贴图](https://zh.wikipedia.org/wiki/纹理贴图 "wikilink")、[环境贴图和](../Page/反射贴图.md "wikilink")[阴影贴图](../Page/阴影贴图.md "wikilink")。
  - 须提供规范所要求的十五种标准的着色器，包括light
    source，surface，volume，displacement和imager等类型。任一新增的和由规范标准衍生的着色器，都必须提供一个等效的RenderMan着色语言描述作为该着色器的文档。

### 可选功能

此外，渲染器还可以实现以下的某项功能：

  - [面光源](https://zh.wikipedia.org/wiki/面光源 "wikilink")
  - [景深](../Page/景深.md "wikilink")
  - [置换贴图](https://zh.wikipedia.org/wiki/置换贴图 "wikilink")
  - [环境贴图](../Page/反射贴图.md "wikilink")
  - [全局照明](https://zh.wikipedia.org/wiki/全局照明 "wikilink")
  - [细节层次](../Page/细节层次.md "wikilink")
  - [运动模糊](https://zh.wikipedia.org/wiki/运动模糊 "wikilink")
  - [特殊镜头映射](https://zh.wikipedia.org/wiki/特殊镜头映射 "wikilink")
  - [谱色](https://zh.wikipedia.org/wiki/谱色 "wikilink")（Spectral colors）
  - [光线跟踪](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")
  - [实体建模](../Page/实体造型.md "wikilink")
  - [体着色](https://zh.wikipedia.org/wiki/体着色 "wikilink")

## 工具

  - [RenderMan 3delight](http://www.3delight.com/),支持免费下载学习 主流的rendemran
    渲染软件
  - [RenderMan
    Studio](https://web.archive.org/web/20110902061207/http://renderman.pixar.com/products/tools/rms.html)
  - [RenderMan Pro
    Server](https://web.archive.org/web/20110829233229/http://renderman.pixar.com/products/tools/index.html)
  - [RIBKit](http://ribkit.sourceforge.net/)，开源的RenderMan工具集，包括一个图形界面的材质编辑器——SLer。
  - [RIBShrink](https://web.archive.org/web/20100128174805/http://www.3delight.com/en/uploads/docs/3delight/3delight_16.html)和[RIBDepends](https://web.archive.org/web/20100128174813/http://www.3delight.com/en/uploads/docs/3delight/3delight_17.html)，3Delight渲染器附带的RIB精简工具和依赖处理工具。
  - [ShaderMan.Next](http://code.google.com/p/shaderman/)，开源的材质编辑器，[ShaderMan](http://www.dream.com.ua/thetool.html)的重写。

### RIB导出工具

  - [3Delight](../Page/3Delight.md "wikilink")：[1](http://www.3delight.com/)，支持MAYA
    XSI 即将支持MAX 的版本

<!-- end list -->

  - [3ds
    Max](../Page/3ds_Max.md "wikilink")：[PaxRendus](https://web.archive.org/web/20110904071859/http://www.archonus.com/)，已停止开发
  - [Blender](../Page/Blender.md "wikilink")：开源的[ribMosaic](https://archive.is/20121225081934/http://ribmosaic.wiki.sourceforge.net/)

<!-- end list -->

  - [Lightwave](https://zh.wikipedia.org/wiki/Lightwave "wikilink"):
      - Tim
        Dapper的[LightMan](http://www.td-grafik.de/softw/lightman.php?lang=en)
      - Felipe
        Esquivel的[Light-R](https://web.archive.org/web/20051217215043/http://www.garagepost.tv/renderman.htm)，免费软件

<!-- end list -->

  - [Maya](../Page/Maya.md "wikilink")：
      - [3Delight for
        Maya](https://web.archive.org/web/20101228025221/http://www.3delight.com/en/index.php/products/3delight_for_maya/3delight_maya_overview)
      - [liquidmaya](https://web.archive.org/web/20050622053002/http://liquidmaya.sourceforge.net/)，开源软件
      - AnimalLogic的[MayaMan](http://www.animallogic.com/?link=Products,MayaMan)
      - 皮克斯的[RenderMan for
        Maya](https://web.archive.org/web/20110829233229/http://renderman.pixar.com/products/tools/index.html)

<!-- end list -->

  - [Softimage](../Page/Softimage.md "wikilink")：
      - [3Delight for
        XSI](https://web.archive.org/web/20101228025751/http://www.3delight.com/en/index.php/products/3delight_for_maya/3delight_xsi_overview)

      - 的[Affogato](https://web.archive.org/web/20080723135351/http://affogato.sf.net/)，开源软件

      - Graphic
        Primitives的[XSIMan](https://web.archive.org/web/20060402202654/http://graphicprimitives.com/)

## 编程语言实现

  - [Python计算机图形工具集](http://cgkit.sourceforge.net/)，[Python实现](https://zh.wikipedia.org/wiki/Python_\(编程语言\) "wikilink")
  - [RubyMan](https://archive.is/20130415172430/http://rubyforge.org/projects/rubyman/)，[Ruby实现](../Page/Ruby.md "wikilink")
  - [G\&RT](http://grt.luaforge.net)，[Lua实现](https://zh.wikipedia.org/wiki/Lua_\(编程语言\) "wikilink")

## 参见

  - [Reyes渲染架构](../Page/Reyes渲染架构.md "wikilink")

## 参考书目

  -
  -
  -
  -
  -
  -
## 参考资料

## 外部链接

  - [RenderMan规范](https://web.archive.org/web/20110725222410/https://renderman.pixar.com/products/rispec/index.htm)，——规范的官方页面
  - [RenderMan仓库](https://web.archive.org/web/20040327030245/http://www.renderman.org/)
  - Malcolm Kesson教授的[CG参考和教程](http://www.fundza.com/)
  - [RenderMan笔记](https://web.archive.org/web/20070320223326/http://accad.osu.edu/~smay/RManNotes/RManNotes.html)
  - Dominik Susmel的[RenderMan
    着色语言教程](https://web.archive.org/web/20110721102813/http://www.vga.hr/resources/tutorials/3d/rsl/index.htm)
  - [Rendering for
    Beginners](http://www.smartcg.com/tech/cg/books/RfB)里用到的
    RIB文件和材质

[en:RenderMan Interface
Specification](https://zh.wikipedia.org/wiki/en:RenderMan_Interface_Specification "wikilink")
[sv:RenderMan](https://zh.wikipedia.org/wiki/sv:RenderMan "wikilink")

[Category:计算机图形学](https://zh.wikipedia.org/wiki/Category:计算机图形学 "wikilink")
[Category:三维图像软件](https://zh.wikipedia.org/wiki/Category:三维图像软件 "wikilink")
[Category:RenderMan](https://zh.wikipedia.org/wiki/Category:RenderMan "wikilink")

1.
2.