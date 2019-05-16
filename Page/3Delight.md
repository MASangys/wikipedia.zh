**3Delight** 是一个专有的，符合 [RenderMan
规范的逼真图像渲染器](../Page/RenderMan规范.md "wikilink")，和[皮克斯的](https://zh.wikipedia.org/wiki/皮克斯 "wikilink")
[PRMan](https://zh.wikipedia.org/wiki/PRMan "wikilink") 有一样高的渲染质量和效率，由
Taarna 工作室的子公司 DNA Research 开发。

## 特性

3Delight 主要使用 [Reyes
渲染架构](../Page/Reyes渲染架构.md "wikilink")，但也支持光线追踪和全局照明渲染，完全支持[多线程和](../Page/多线程.md "wikilink")[分布式渲染](https://zh.wikipedia.org/wiki/分布式渲染 "wikilink")，因此可以有效利用计算机的多核处理器，以及拥有众多计算机的渲染农场的计算资源进行渲染。

3Delight 拥有以下特性\[1\]：

  - 可编程着色，使用
    [RSL](https://zh.wikipedia.org/wiki/RenderMan着色语言 "wikilink")
    编写着色器
  - 面光源
  - [景深](../Page/景深.md "wikilink")
  - [置换](https://zh.wikipedia.org/wiki/置换 "wikilink")
  - [环境贴图](../Page/反射贴图.md "wikilink")
  - [全局照明](https://zh.wikipedia.org/wiki/全局照明 "wikilink")
  - [细节层次](../Page/细节层次.md "wikilink")
  - [运动模糊](https://zh.wikipedia.org/wiki/运动模糊 "wikilink")
  - 特殊[镜头映射](https://zh.wikipedia.org/wiki/镜头映射 "wikilink")（通过 *ray
    trace hider*）
  - [光线跟踪](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")
  - [深度阴影](https://zh.wikipedia.org/wiki/深度阴影 "wikilink")
  - [实体模型](../Page/实体造型.md "wikilink")
  - [纹理映射](https://zh.wikipedia.org/wiki/纹理映射 "wikilink")
  - [体积着色](https://zh.wikipedia.org/wiki/体积着色 "wikilink")

此外，3Delight 还支持以下特性：

  - [光子映射](../Page/光子映射.md "wikilink")
  - [点云](https://zh.wikipedia.org/wiki/点云 "wikilink")
  - 多级[细分曲面](../Page/细分曲面.md "wikilink")
  - NURBS 曲线
  - [砖图](https://zh.wikipedia.org/wiki/砖图 "wikilink")（三维 Mipmap 纹理）
  - [RIB判决](https://zh.wikipedia.org/wiki/RIB判决 "wikilink")，允许仅在满足特定条件下才解析指定的
    RIB 片段。\[2\]
  - [类着色器](https://zh.wikipedia.org/wiki/类着色器 "wikilink")
  - [Co-shaders](../Page/协程.md "wikilink")

### 模块化

3Delight 是模块化的，其主模块实现了 Reyes 渲染算法。其他的模块，被称为「Sabretooth」，通过
，用于光线跟踪和全局照明计算。 通过选择不同的 ，明确指定进行光线跟踪渲染，使之从一个
Reyes/光线跟踪杂交的渲染器变成完全的光线跟踪渲染器。

其他的特性包括：

  - 支持 [Maya](https://zh.wikipedia.org/wiki/Autodesk_Maya "wikilink")
    Hypershade 的多数材质，3Delight 可以自动转换 Maya 材质为 RenderMan 材质。
  - 支持 Maya、[3ds
    Max](../Page/3ds_Max.md "wikilink")、[Softimage](../Page/Softimage.md "wikilink")、[Houdini](../Page/Houdini.md "wikilink")、Massive
    等三维软件。
  - 扩展的显示子集（display subset），允许渲染出来的几何原型写入相同的显示变量（display
    variable），并写到不同的图像里。比如，使用显示子集，可以把一个动物的皮肤和毛发渲染成分开的图像，并且毛发通道（pass）不会遮挡皮肤通道。
  - 快速高效的点云，存储砖图和点云的数据结构被设计成仅在必要的时候加载所需的部分，这样可以尽量减少渲染所需的内存。
  - 程序化几何模型在光线跟踪也是按需生成，尽量减少渲染所需的内存。
  - 置换着色器可以嵌套。
  - 置换着色器可在模型着色前对几何原型的顶点进行运算。
  - gather() shaderop 可用于产生点云，以从 [HDR
    图像生成取样分布](../Page/高动态范围成像.md "wikilink")，如此可以方便的把光子映射和[图像照明结合起来](https://zh.wikipedia.org/wiki/图像照明 "wikilink")。
  - 磁盘读写缓存，在大场景渲染时优化大量数据传输，减少网络阻塞。
  - 一个允许对任何数据运行 RSL 代码的 C 语言 API，比如，对模型的顶点属性数据进行处理。

## 历史

3Delight 的开发开始于 1999 年，于 2000 年首次公开发布。\[3\]3Delight 是首个结合 Reyes 算法和光线跟踪的
RenderMan 渲染器，当时能够进行光线跟踪的 RenderMan 渲染器是
[BMRT](https://zh.wikipedia.org/wiki/BMRT "wikilink")，但 BMRT 并非一个Reyes
渲染器。3Delight 从一开始就是一个商业渲染器，但在 2000 年 8 月到 2005 年 3
月，开发商允许人们免费使用，以便建立用户群。

从 2011 年 10 月发布的 10.0 开始，名字改成了 3Delight Studio Pro，从这个版本开始，开发商允许用户使用整个
3Delight 所带的套件，包括命令行工具、程序库，以及 Maya 和 Softimage 插件。\[4\]

从 2013 年 10 月发布的 11.0 版开始，使用免费许可证的用户可以使用四个 CPU
核心来渲染（之前只能使用两个核心），并且能获取之前只有付费用户才能得到的小版本更新。\[5\]

目前的许可方式，依然是基于线程数量，年度技术支持的费用也和线程数有关。\[6\]

## 主版本历史

自从 4.0 到 10.0，基本上每个 3Delight 主版本都以一个电影行业名词作为名称。

  - [3Delight 10.0.4](https://web.archive.org/web/20120326132440/http://www.3delight.com/en/index.php?page=news)，"[Blade
    Runner](../Page/银翼杀手.md "wikilink")"，名字改为 3Delight Studio Pro，2011 年
    10 月
  - [3Delight 9.0.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/e1f4c1a9891aede7)，"[Antonioni](../Page/米开朗基罗·安东尼奥尼.md "wikilink")"，2009
    年 12 月
  - [3Delight 8.5.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/a8615ea70c31b587)，"[Bronson](../Page/查尔斯·布朗森.md "wikilink")"，2009
    年 5 月
  - [3Delight 8.0.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/ab754ad521d41035)，"[Midnight
    Express](https://zh.wikipedia.org/wiki/午夜快车 "wikilink")"，2008 年 10 月
  - [3Delight 7.0.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/c389d5e90c943d24)，"[Django](../Page/迪亚戈_\(电影\).md "wikilink")"，2007
    年 11 月
  - [3Delight 6.5.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/8f4d252ff97b8aaa)，"[Ennio](../Page/恩尼奥·莫里科内.md "wikilink")"，2007
    年 2 月
  - [3Delight 6.0.1](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/8454e655e24588c8)，""，2006
    年 11 月
  - [3Delight 5.0.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/96054503e7fd242a)，"[Moroder](../Page/乔吉奥·莫罗德尔.md "wikilink")"，2006
    年 2 月
  - [3Delight 4.5.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/22cac22ce089a235)，""，2005
    年 8 月
  - [3Delight 4.0.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/c8c7c6337e998e55)，"[Indiana](https://zh.wikipedia.org/wiki/印第安那·琼斯 "wikilink")"，2005
    年 3 月
  - 3Delight 3.0.0
  - [3Delight 2.1.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/8b7f2b432aad4e21)，2004
    年 6 月
  - [3Delight 2.0.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/6ed1bad3e15a9c07)，2004
    年 1 月
  - 3Delight 1.0.6beta
  - [3Delight 1.0.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/8857c89e2856a1de)，beta，2003
    年 1 月
  - [3Delight 0.9.6](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/e0b9c83a8ef7e433)，2002
    年 8 月
  - [3Delight 0.9.4](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/c292a7283ae98b0d)，2002
    年 6 月
  - [3Delight 0.9.2](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/c9a112d87632314c)，2001
    年 12 月
  - [3Delight 0.9.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/0b2cbf41ec7f1c95)，2001
    年 8 月
  - [3Delight 0.8.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/ffd884b847b3f7cc)，2001
    年 3 月
  - [3Delight 0.6.0](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/fb1bf705bb874588)，2000
    年 9 月
  - [3Delight 0.5.1](https://groups.google.com/group/comp.graphics.rendering.renderman/msg/fb13237fd2bf20ad)
    ，2000 年 8 月

## 支持的平台

3Delight 既有 32 位平台也有 64 位平台版本，目前支持的平台主要有

  - [苹果公司](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")
    [PowerPC](../Page/PowerPC.md "wikilink") 和
    [x86](https://zh.wikipedia.org/wiki/x86 "wikilink") 平台上的 [Mac OS
    X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")
  - x86，[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink") 和
    [Cell](https://zh.wikipedia.org/wiki/Cell "wikilink") 平台上的
    [GNU/Linux](../Page/Linux.md "wikilink")
  - [微软](../Page/微软.md "wikilink") x86 和 x86-64 平台上的
    [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")

### 停止开发的平台

  - [迪吉多公司](../Page/迪吉多.md "wikilink")
    [Alpha](../Page/DEC_Alpha.md "wikilink") 平台的
  - [硅谷图形公司](../Page/硅谷图形公司.md "wikilink") [MIPS
    平台的](../Page/MIPS架構.md "wikilink")
    [IRIX](../Page/IRIX.md "wikilink")
  - [升阳电脑](https://zh.wikipedia.org/wiki/升阳电脑 "wikilink")[SPARC](../Page/SPARC.md "wikilink")
    平台的 [Solaris](../Page/Solaris.md "wikilink")

## 使用 3Delight 的影视项目\[7\]

  - [Assault on Precinct
    13](https://zh.wikipedia.org/wiki/Assault_on_Precinct_13 "wikilink")
  - [Bailey's
    Billions](https://zh.wikipedia.org/wiki/Bailey's_Billions "wikilink")
  - [黑色圣诞](https://zh.wikipedia.org/wiki/黑色圣诞_\(电影\) "wikilink")
  - [荣誉之刃](https://zh.wikipedia.org/wiki/荣誉之刃 "wikilink")
  - [血钻](https://zh.wikipedia.org/wiki/血钻_\(电影\) "wikilink")
  - [夏洛特的网](../Page/夏洛特的网_\(2006年电影\).md "wikilink")
  - [长江七号](https://zh.wikipedia.org/wiki/长江七号 "wikilink")
  - [纳尼亚传奇：狮子·女巫·魔衣橱](https://zh.wikipedia.org/wiki/纳尼亚传奇：狮子·女巫·魔衣橱 "wikilink")
  - [The Chronicles of
    Riddick](https://zh.wikipedia.org/wiki/The_Chronicles_of_Riddick "wikilink")
  - [Cube Zero](https://zh.wikipedia.org/wiki/Cube_Zero "wikilink")
  - [第九区](../Page/第九区.md "wikilink")
  - [神奇四侠](https://zh.wikipedia.org/wiki/神奇四侠_\(电影\) "wikilink")
  - [神奇四侠：银魔现身](https://zh.wikipedia.org/wiki/神奇四侠：银魔现身 "wikilink")
  - [死神来了3](https://zh.wikipedia.org/wiki/死神来了3 "wikilink")
  - [哈利·波特与“混血王子”](../Page/哈利·波特与“混血王子”.md "wikilink")
  - [哈利·波特与凤凰社](../Page/哈利·波特与凤凰社.md "wikilink")
  - [绿巨人](../Page/绿巨人_\(电影\).md "wikilink")
  - [神奇绿巨人](https://zh.wikipedia.org/wiki/神奇绿巨人 "wikilink")
  - [The Last
    Mimzy](https://zh.wikipedia.org/wiki/The_Last_Mimzy "wikilink")
  - [The Ruins](https://zh.wikipedia.org/wiki/The_Ruins "wikilink")
  - [The Seeker: The Dark is
    Rising](https://zh.wikipedia.org/wiki/The_Seeker:_The_Dark_is_Rising "wikilink")
  - [终结者之救赎](https://zh.wikipedia.org/wiki/终结者之救赎 "wikilink")
  - [超人归来](https://zh.wikipedia.org/wiki/超人归来 "wikilink")
  - [野兽冒险乐园](https://zh.wikipedia.org/wiki/野兽冒险乐园_\(电影\) "wikilink")
  - [The Woods](https://zh.wikipedia.org/wiki/The_Woods "wikilink")
  - [X战警3：最后之战](https://zh.wikipedia.org/wiki/X战警3：最后之战 "wikilink")
  - [X战警前传：金刚狼](https://zh.wikipedia.org/wiki/X战警前传：金刚狼 "wikilink")

以下全 CG 电影使用了 3Delight：

  - Adventures in Animation ([IMAX](../Page/IMAX.md "wikilink") 3D
    featurette)
  - Free Jimmy

## 参考链接

## 外部链接

  - [3Delight 官方网站](http://www.3delight.com/)

[Category:RenderMan](https://zh.wikipedia.org/wiki/Category:RenderMan "wikilink")

1.  [3Delight
    技术规范](http://www.3delight.com/en/uploads/docs/3delight/3delight_tech_specs.pdf)


2.  [Conditional
    RIB](http://www.renderpixie.com/pixiewiki/Documentation/Conditional_RIB)


3.  [3Delight
    首次公开发布的公告](https://groups.google.ca/group/comp.graphics.rendering.renderman/msg/fb13237fd2bf20ad)

4.  [3Delight
    发布注记](https://3delight.atlassian.net/wiki/display/3DSP/Release+Notes)

5.
6.  [3Delight
    许可证策略](http://www.3delight.com/en/index.php?page=3DSP_pricing)

7.  [电影和剧集](http://www.3delight.com/en/index.php?page=projects)