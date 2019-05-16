**Focos**是一款运行于[iOS上的图像拍摄与](https://zh.wikipedia.org/wiki/iOS "wikilink")[处理应用](../Page/图像处理.md "wikilink")。其利用iPhone的多镜头设计，在拍摄时形成3D模型，可以合成具有[浅景深效果的照片](https://zh.wikipedia.org/wiki/散景 "wikilink")\[1\]，或添加虚拟光源照明。

Focos程序本体免费，具有内购选项可升级为专业版。本体提供圆形光圈虚化与单光源模拟功能；进阶版本的程序允许模拟不同的[光圈形状](../Page/光圈.md "wikilink")，来模拟不同的[散景效果](https://zh.wikipedia.org/wiki/散景 "wikilink")；或增设更多的虚拟光源。

## 概述

[Focos_cat_depth.jpg](https://zh.wikipedia.org/wiki/File:Focos_cat_depth.jpg "fig:Focos_cat_depth.jpg")

苹果公司在[iPhone 7
Plus开始配备双镜头设计](https://zh.wikipedia.org/wiki/iPhone_7_Plus "wikilink")，并且在自己的内置相机程序里加入人像模式（*Portrait
Mode*）。在拍摄时，同时采集两个相距一段距离的镜头信息，通过比较分析获得拍摄物的3D模型，并且以此进行景深和光源渲染。在调校时，获得[光场相机](https://zh.wikipedia.org/wiki/光场相机 "wikilink")，如的后对焦体验。

从本质上说，拍摄建模并进行后期调校，属于范畴。2014年4月，[Google在其安卓内置相机程序中的实现](../Page/Google.md "wikilink")，为拍摄后平移一段距离，获得深度信息\[2\]；相比较而言，多镜头设计简化了用户操作。

在iOS
11中，苹果开放了深度信息接口[API](https://zh.wikipedia.org/wiki/API "wikilink")\[3\]\[4\]，focos调用双镜头生成的，进行更加个性化的调校。除了模拟不同的散景效果外，在2018年7月的更新中，程序还支持在3D模型中设置光源（*3D
Lighting
system*），实现后期调节光照的效果\[5\]。除了程序拍摄的图像，也支持系统内置的人像模式拍摄照片的后期修改（需要以[HEIF格式存储](https://zh.wikipedia.org/wiki/高效率图像文件格式 "wikilink")，因为需要深度数据）。

软件名称 **focos** 来源于 focus + photos 的新造词，保留有前者的发音\[6\]。软件开发者王晓东 *Xiaodong
Wang* ，同时也是图片相关的**Colorburn**与**MaxCurve**两款软件的作者；两作分别获选2015与2016年度[App
Store](../Page/App_Store_\(iOS\).md "wikilink") Best app\[7\]\[8\]。

## 版本与支持

Focos可以在许多iOS设备上安装，但核心的景深调节功能需要双镜头硬件，目前只有以下设备支持：

  - [iPhone 7
    Plus](https://zh.wikipedia.org/wiki/iPhone_7_Plus "wikilink")
    （需升级到[iOS
    11](https://zh.wikipedia.org/wiki/iOS_11 "wikilink")）
  - [iPhone 8
    Plus](https://zh.wikipedia.org/wiki/iPhone_8_Plus "wikilink")
  - [iPhone X](https://zh.wikipedia.org/wiki/iPhone_X "wikilink")
  - [iPhone Xs](https://zh.wikipedia.org/wiki/iPhone_Xs "wikilink") 与
    iPhone Xs Max
  - [iPhone X{{Smallcaps
    all](https://zh.wikipedia.org/wiki/iPhone_XR "wikilink")
    （前置支持景深调节，后置支持模拟）
  - [iPad Pro](https://zh.wikipedia.org/wiki/iPad_Pro "wikilink")
    （2018款，前置支持景深调节）

<table>
<caption>focos版本</caption>
<thead>
<tr class="header">
<th><p>版本号</p></th>
<th><p>时间</p></th>
<th><p>主要功能更新项</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.0</p></td>
<td><p>2017-10-31</p></td>
<td><p>初代发布</p></td>
</tr>
<tr class="even">
<td><p>1.1</p></td>
<td><p>2017-12-07</p></td>
<td><ul>
<li>添加光圈类型</li>
<li>连拍模式</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>1.2</p></td>
<td><p>2018-01-20</p></td>
<td><ul>
<li>自定义预设方案</li>
<li>支持图片格式选择</li>
<li>语言选择</li>
<li>2.35:1比例支持</li>
</ul></td>
</tr>
<tr class="even">
<td><p>1.3</p></td>
<td><p>2018-03-10</p></td>
<td><ul>
<li>背景图片替换</li>
<li>1.31支持透明背景的PNG保存</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>1.4</p></td>
<td><p>2018-05-10</p></td>
<td><ul>
<li>提升景深数据的精度</li>
<li>1.41支持保存为前后对比的实况照片</li>
</ul></td>
</tr>
<tr class="even">
<td><p>1.5</p></td>
<td><p>2018-07-31</p></td>
<td><ul>
<li>3D打光工具</li>
<li>iOS 12适配</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>1.6</p></td>
<td><p>2018-11-29</p></td>
<td><ul>
<li>支持iPad界面</li>
</ul></td>
</tr>
<tr class="even">
<td><p>1.7</p></td>
<td><p>2019-03-19</p></td>
<td><ul>
<li>支持编辑历史及回溯</li>
<li>支持编辑规则套用</li>
</ul></td>
</tr>
</tbody>
</table>

## 竞争对手

  - [iOS设备](https://zh.wikipedia.org/wiki/iOS "wikilink")
      - 内置相机的Portrait Mode，但调节功能较为有限；生成的.heic文件可在focos中编辑
      - **Anamorphic**，另外一款景深模拟程序，但仅提供圆形光圈与模拟带来的散景效果\[9\]
      - **Halide**，一款拍照程序，在2018年3月的1.7版本更新中，加入了深度数据支持\[10\]\[11\]
  - [Android设备](../Page/Android.md "wikilink")
      - 2016年随iPhone 7
        Plus启用双镜头，安卓阵营也加入了多镜头设计竞赛，并在内置程序中加入虚化效果，例如[华为P9和](../Page/华为P9.md "wikilink")[Samsung
        Galaxy Note
        8](https://zh.wikipedia.org/wiki/Samsung_Galaxy_S8 "wikilink")。
      - [Google](../Page/Google.md "wikilink")，在2017年10月，[Pixel
        2与](https://zh.wikipedia.org/wiki/Pixel_2 "wikilink")**Pixel 2
        XL**相机程序升级中加入Portrait mode\[12\]，Pixel 2 与衍生机型 XL
        虽然都是单镜头设计，但是传感器采用[Dual
        Pixel设计](https://zh.wikipedia.org/wiki/Dual_Pixel "wikilink")，通过比对同一位置的双像素数据差异，并且借由[TensorFlow的](https://zh.wikipedia.org/wiki/TensorFlow "wikilink")[卷积神经网络进行](../Page/卷积神经网络.md "wikilink")[机器学习](../Page/机器学习.md "wikilink")。之后有爱好者提取出该代码，并改写为可在其他部分具有[骁龙处理器的安卓机型上使用的程序](https://zh.wikipedia.org/wiki/骁龙 "wikilink")\[13\]\[14\]。

## 评价

电影摄影师Tito
Ferradans认为，现在所处的时代正在经历变革，随着手机处理能力的提升，减小了与传统“好相机”的差距，以使用Focos的iPhone和[Pixel
2所代表的新世代机型](https://zh.wikipedia.org/wiki/Pixel_2 "wikilink")，让更多普通人可以拍出还不错的作品\[15\]。

新西兰摄影师Ben Stewart指出，focos为代表的计算摄影带来的重建虚化，挑战了小型相机在这一方面的优势\[16\]。

## 参见

  -
  - [修飾照片](https://zh.wikipedia.org/wiki/修飾照片 "wikilink")

  - [高效率图像文件格式](https://zh.wikipedia.org/wiki/高效率图像文件格式 "wikilink") 支持
    Depth Map 的图像文件格式

## 参考与引用

## 外部链接

  - [官方网站](http://focos.me/)
  - [Focos](https://itunes.apple.com/app/id1274938524) -
    [iTunes](https://zh.wikipedia.org/wiki/iTunes "wikilink")
  - [Focos](https://www.instagram.com/focos_camera/) -
    [Instagram主页](../Page/Instagram.md "wikilink")

[Category:IOS软件](https://zh.wikipedia.org/wiki/Category:IOS软件 "wikilink")
[Category:照片軟體](https://zh.wikipedia.org/wiki/Category:照片軟體 "wikilink")
[Category:2017年软件](https://zh.wikipedia.org/wiki/Category:2017年软件 "wikilink")

1.
2.
3.
4.
5.  [3D Lighting system](https://www.instagram.com/p/BlKk701lpur/) -
    [Instagram](../Page/Instagram.md "wikilink")
6.
7.  [Colorburn](https://itunes.apple.com/us/app/colorburn/id899003026?mt=8)
    - [App Store](../Page/App_Store_\(iOS\).md "wikilink")
8.
9.
10.
11.
12.
13.
14.
15.
16.