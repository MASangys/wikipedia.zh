**Verge3D**是一个用于创建运行于网页的3D[交互式体验的实时渲染器和工具套件](../Page/交互设计.md "wikilink")。

## 概述

Verge3D是由以前创建的[Blend4Web](../Page/Blend4Web.md "wikilink") 框架的核心软件工程师团队创建。 Verge3D使用户能够利用常用的三维设计工具(目前支持 [Autodesk 3ds Max](../Page/3ds_Max.md "wikilink") 和 [Blender](../Page/Blender.md "wikilink") )创做3D交互内容，并直接转换到网络浏览器中查看。\[1\]\[2\]\[3\]

## 功能

Verge3D基于 [WebGL](../Page/WebGL.md "wikilink") 进行渲染，整合了 [Three.js](../Page/Three.js.md "wikilink") 库，并向程序开发人员公开API接口。\[4\]

  - Puzzles编辑器
    Puzzles编辑器是基于Google的Blockly编写的可视化编程环境。Verge3D的程序功能可直接编写代码或使用Puzzles编辑器添加 [JavaScript](../Page/JavaScript.md "wikilink") 脚本。 Puzzles主要面向非程序员，使其可通过 [拖放](https://zh.wikipedia.org/wiki/拖放 "wikilink") 操作快速创建交互场景。\[5\]
  - App Manager与网络发布
    App Manager是一个运行于本地开发服务器的基于网络的轻量级工具，用于创建、管理和发布Verge3D项目。\[6\] Verge3D云服务基于 [亚马逊S3](../Page/Amazon_S3.md "wikilink") 和 [EC2](../Page/Amazon_EC2.md "wikilink") 云服务构建，内嵌于App Manager，可直接发布Verge3D应用到云端。\[7\]
  - PBR
    为便于编写材质，除标准着色器外一并提供了兼容GLTF 2.0的[物理渲染流水线](https://zh.wikipedia.org/wiki/物理渲染 "wikilink")。\[8\]\[9\] PBR纹理可以使用外部纹理软件（如Substance Painter）创作，Verge3D为其提供了相应的导出预设文件。\[10\]最新版的Verge3D已经兼容Blender软件的eevee材质\[11\]。

<!-- end list -->

  - glTF与DCC软件集成
    Verge3D直接与 [Blender](../Page/Blender.md "wikilink") 和 [Autodesk 3ds Max](../Page/3ds_Max.md "wikilink") 集成，使用户能够在软件内部创建3D模型、材质和动画，然后导出为以[JSON](../Page/JSON.md "wikilink")为基础的[glTF格式](https://zh.wikipedia.org/wiki/glTF "wikilink")。 快速预览功能允许导出和查看来自DCC工具环境的场景。\[12\]\[13\]\[14\]
  - Facebook 3D 主题
    Verge3D为Facebook 3D主题提供了一个专用的导出选项，\[15\] 导出的GLB文件可在App Manager中显示和打开。\[16\]
  - 资产压缩
    导出文件可以选择使用 [LZMA](../Page/LZMA.md "wikilink") 压缩\[17\]，文件体积的下降率最高可达6倍。\[18\]
  - 用户界面与网页布局
    使用外部所见既所得网页编辑器创建的页面布局可与Puzzles编辑器链接在一起编辑，以触发在浏览器中呈现的3D场景的变化，反之亦然。\[19\]\[20\]
  - 物理学
    物理模块可以单独链接，以实现碰撞检测、动态移动物体，支持角色、车辆、弹簧、绳索和布料模拟等。\[21\]\[22\]Verge3D的物理引擎基于跨平台的开源物理引擎[Bullet](../Page/Bullet.md "wikilink")创建\[23\]。

#### 虚拟现实（[WebVR](../Page/WebVR.md "wikilink")）

  -
    支持控制器按钮生成的虚拟现实会话事件（如HTC vive、Google DayDream、Google Carboard v.2）\[24\]。

## 工作流程

Verge3D的工作流与主流的WebGL框架有很大的不同，它追求的是一个强大的面向艺术家的方法。开发一个新的Verge3D应用开发通常是从3D对象的建模、纹理和动画开始的，在单一的\*.max或\*.blend文件中组装模型完成3D场景。然后即可在App Manager调用该文件，作为初始化Verge3D项目的基础。创建交互式场景是可选流程，用户可在Puzzles编辑器中叠加创作。使用App Manager，用户可随时在浏览器中预览Verge3D应用。完成的网页应用可部署于Verge3D云服务，Facebook或用户自己的网站上。\[25\] Verge3D 2.11版本起，开放了WordPress测试沙盒，可以直接已经部署好的内容管理系统中测试前端效果。\[26\]

## 参考文献

[Category:三维图像软件](https://zh.wikipedia.org/wiki/Category:三维图像软件 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink") [Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink") [Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink") [Category:WebGL](https://zh.wikipedia.org/wiki/Category:WebGL "wikilink") [Category:3D_scenegraph_APIs](https://zh.wikipedia.org/wiki/Category:3D_scenegraph_APIs "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.

10.

11.

12.

13.

14.

15.

16.

17.

18.

19.

20.

21.

22.

23.

24.
25.

26.