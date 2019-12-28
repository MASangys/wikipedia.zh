**Krita**是一个[自由和开源的](../Page/自由及开放源代码软件.md "wikilink")[位图图像编辑器](https://zh.wikipedia.org/wiki/位图图像编辑器 "wikilink")。它针对数字绘画和动画创作特化，提供包括低干扰用户界面、OpenGL加速画布、色彩管理、功能强大的笔刷引擎、非破坏性图层和蒙版、图层分组、向量图形支持和可切换界面预设等在内的一系列特色功能，并同时支持[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")和[MacOS](../Page/MacOS.md "wikilink")等平台。

## 名字

Krita这个词有来自多种不同文化的内涵。在[瑞典语中krita的含义是蜡笔](https://zh.wikipedia.org/wiki/瑞典语 "wikilink")，rita则是绘画的动词；而在古印度经典[摩诃婆罗多](../Page/摩诃婆罗多.md "wikilink")中Krita的含义则是指代完美无瑕的状态。\[1\]

## 历史

Krita的开发可以一直追溯到1998年。当时[KDE](../Page/KDE.md "wikilink")的创始人[Matthias Ettrich在Linux](https://zh.wikipedia.org/wiki/Matthias_Ettrich "wikilink") Kongress大会上展示了一个为[GIMP](../Page/GIMP.md "wikilink")编写的[Qt](../Page/Qt.md "wikilink")界面。他提出的关于构建一个基于Qt的图像编辑器的想法后来在KImage项目上开始实施，并作为[KOffice](../Page/KOffice.md "wikilink")套件的一部分由Michael Koch维护。Matthias Elter则给该项目提出了用[Cobra语言](../Page/CORBA.md "wikilink")，围绕[ImageMagick](../Page/ImageMagick.md "wikilink")构建该软件的构想。然而KImage在市场上已经被注册了商标，为此该项目进行了数次更名，经过KImageShop、Krayon后，终于在2002年选定了Krita作为项目的名称并沿用至今。在2004年到2009年间，Krita是被作为一个和[Photoshop](../Page/Adobe_Photoshop.md "wikilink")、GIMP类似的通用图像处理软件来开发的。\[2\]

到了2009年，Krita项目的方向发生了变化。新的目标是构建一个类似于[Corel Painter和](../Page/Corel_Painter.md "wikilink")[SAI那样的数字绘画软件](../Page/Paint_Tool_SAI.md "wikilink")。也是从那时起，项目负责人开始尝试通过多种途径来为Krita的开发者提供有偿资助，包括[Google Summer of Code for Students等](../Page/Google夏日程式碼大賽.md "wikilink")。项目的开发速度因此加快，性能和稳定性也得到了提高。\[3\] [居中](https://zh.wikipedia.org/wiki/File:Krita_team_Steven,_Stuart,_Lukas,_Wolthera,_Timothee,_Boud,_Sven,_Leinir_and_Dmitry.png "fig:居中") Krita Foundation在2013年设立，目的是为Krita的开发提供支持。它与[Intel合作产生了Krita](../Page/英特尔.md "wikilink") Sketch项目来促进项目的知名度，并在KO GmbH的帮助下开始提供带有有偿商业支持服务的Krita Studio，面向电影工业和特效工作室。自2014年起他们通过[Kickstarter](../Page/Kickstarter.md "wikilink")来为开发[众筹资金](https://zh.wikipedia.org/wiki/众筹 "wikilink")。

| 时间      | 版本    | 募得资金     | Kickstarter活动内容                               | 稳定版发布日期 |
| ------- | ----- | -------- | --------------------------------------------- | ------- |
| 2014年7月 | 2.9.x | 19,955欧元 | **加速开发。**改善PSD支持、图层、蒙版、资源管理器、显示等方面。\[4\]      | 2015年2月 |
| 2015年5月 | 3.0.x | 30,520欧元 | **改善性能、增加动画功能。**改善图层、界面、变形工具、滤镜、笔刷系统等方面。\[5\] | 2016年5月 |
| 2016年5月 | 4.0.x | 38,579欧元 | **改善文本工具和向量图形支持。**增加python脚本功能等方面。\[6\]       | 2018年3月 |

[缩略图](https://zh.wikipedia.org/wiki/File:2016-11-14_pepper_carrot_vertical-cover-book-two_screen_by-David-Revoy.png "fig:缩略图")

## 设计和功能

[缩略图](https://zh.wikipedia.org/wiki/File:Krita_4.0_right-click_hud_popup-palette.png "fig:缩略图") Krita的最新版本是基于[Qt 5和](../Page/Qt.md "wikilink")[KDE Frameworks 5进行开发的](../Page/KDE_Frameworks_5.md "wikilink")。它针对概念美术师、插画师、幕布画师、材质画师和特效工业的需求进行特化，关键功能和特点有：\[7\]

### 用户体验设计

Krita最大的特点便是它把数位笔考虑在内的UX设计。它通过数位笔两个侧按键与键盘的Ctrl、Shift键配合，加上一个点击右键弹出的多功能图形化工具板，让一些绘画时频繁使用的功能可以通过更少的点击来实现，无需在基于文本的多级菜单里面寻找，对于降低对创作过程的干扰有利。

**常用绘画指令**可通过Ctrl、Shift和数位笔两个侧按键的配合来进行盲操作：

| 指令     | 输入                  |
| ------ | ------------------- |
| 笔刷尺寸增减 | Shift + 笔尖拖动        |
| 取色器    | Ctrl + 笔尖点击         |
| 画布移动   | 笔身按键 + 笔身移动         |
| 缩放     | Ctrl + 笔身按键 + 笔身移动  |
| 旋转     | Shift + 笔身按键 + 笔身移动 |

**右键工具板**上可以直接调用下列功能：

| 笔刷功能                  | 颜色功能    | 显示功能   |
| --------------------- | ------- | ------ |
| 当前加载的10个笔刷预设          | 选色环     | 缩放     |
| 读取其他的笔刷预设             | 前景色和背景色 | 旋转     |
| 调整笔刷的大小、透明度、流量、间隔、角度等 | 最近用过的颜色 | 镜像     |
|                       |         | 只显示画布  |
|                       |         | 显示功能复位 |

### 绘画工具

[缩略图](https://zh.wikipedia.org/wiki/File:Krita_4.0_pixel_brush_engine_screenshot.png "fig:缩略图") Krita的核心数字绘画功能有： [缩略图](https://zh.wikipedia.org/wiki/File:Krita_4.0_stock_brush_presets.png "fig:缩略图")

| 笔刷              | 绘画尺规          | 选择工具   | 变形工具 |
| --------------- | ------------- | ------ | ---- |
| 支持数位板           | 可调节尺规对笔迹的干涉强度 | 方形     | 移动位置 |
| 九个不同的笔刷引擎       | 无限直线与平行线直尺    | 椭圆形    | 旋转   |
| 笔刷引擎基于真实画材的表现建模 | 蛇尺（曲线）        | 自由（套索） | 缩放   |
| 高度可调节           | 椭圆            | 多边形    | 剪切   |
| 为每支数位笔分别记忆其当前工具 | 透视            | 边缘     | 透视   |
| 防手抖功能           | 消失点           | 填充     | 轮廓点  |
| 同时多笔刷功能         | 鱼眼变形          | 颜色     | 笼状点  |
|                 |               | 透明度    | 液化   |

### 动画工具

[缩略图](https://zh.wikipedia.org/wiki/File:Krita_4.0_animation_interface.png "fig:缩略图") Krita支持位图格式的逐帧动画，有下述功能：

| 界面                | 导入功能     | 导出功能                                                                      |
| ----------------- | -------- | ------------------------------------------------------------------------- |
| 类似于Adobe Flash的界面 | 批量导入多帧单图 | 通过[ffmpeg进行输出](https://zh.wikipedia.org/wiki/wikipedia:FFmpeg "wikilink") |
| 时间线控制             |          | 可逐帧输出，各帧保存成单图                                                             |
| 实时的动画播放控制         |          | 可输出为GIF、AVI、MP4等格式                                                        |
| 洋葱皮显示（前后一帧鬼影）     |          |                                                                           |

### 向量工具

[缩略图](https://zh.wikipedia.org/wiki/File:Krita_vector_tool.png "fig:缩略图") Krita使用[向量工具来为下述的对象进行非破坏性编辑](../Page/矢量图形.md "wikilink")：

  - 路径
  - 选区
  - 文本（美术字、多行段落、书法）
  - 向量图形
  - 填充和渐变

### 图层和蒙版

[缩略图](https://zh.wikipedia.org/wiki/File:Krita_layer_and_mask_control.png "fig:缩略图") Krita的图层和蒙版功能包括：

| 图层管理     | 蒙版可应用的对象 | 非破坏性图层 | 非破坏性蒙版 |
| -------- | -------- | ------ | ------ |
| 多级图层分组   | 位图图层     | 克隆图层   | 透明度蒙版  |
| 同时选中多个图层 | 向量图层     | 滤镜图层   | 滤镜蒙版   |
| 图层拖放     | 图层组      | 填充图层   | 着色蒙版   |
| 图层标记与高亮  | 非破坏性图层   | 文件图层   | 变形蒙版   |
|          |          |        | 本地选区蒙版 |

### 可定制性

[缩略图](https://zh.wikipedia.org/wiki/File:Krita_resource_manager.png "fig:缩略图") Krita的资源管理器可以让用户给预设打上标签便于搜索、过滤、分组和进行按组加载预设。多个用户预设可以被打包成单个文件，方便共享之余还可以整套加载、整套禁用。Krita在官方的文档网站还有一些用户贡献的预设包可供下载。

Krita的工具面板也可定制：

  - 两条可自行增减图标的工具栏
  - 显示、隐藏任意的工具面板
  - 既可以把工具面板吸附到主窗口的内侧四边，也可以让它们在窗口里自由浮动
  - 工具面板上有折叠和展开本面板用的按钮
  - 多块工具面板可以编组，按标签页选取

工作区的定制可以另存为不同档案，按需即时切换。

### 显示功能

[缩略图](https://zh.wikipedia.org/wiki/File:Krita's_OpenGL_canvas_drawing_quality.png "fig:缩略图") Krita使用[OpenGL](../Page/OpenGL.md "wikilink")来为画布进行加速以提高显示质量和速度：

  - 高帧率，低延迟，数位笔的动作即时反映到画布
  - 高质量，平滑的无级缩放、平移、旋转、重复和镜像
  - 需要支持OpenGL 3.0的显卡以实现最佳体验，[Intel HD Graphics核芯显卡需要](../Page/Intel_HD_Graphics.md "wikilink")[Ivy Bridge家族或更新的CPU](../Page/Ivy_Bridge微架構.md "wikilink")

Krita有完整的[色彩管理](../Page/色彩管理.md "wikilink")功能： [缩略图](https://zh.wikipedia.org/wiki/File:Krita_color_space_loader.png "fig:缩略图")

  - 为图像指定色彩空间、在色彩空间之间转换
  - 实时软件较色模式，包括色盲模式等
  - 支持的色彩模型：RGBA, Gray, CMYKA, Law, YCbCr, XYZ
  - 支持的色彩位深：每通道8位（整数）、16位（整数）、16位（浮点）、32位（浮点）

### 滤镜功能

[缩略图](https://zh.wikipedia.org/wiki/File:Krita_gmic_control.png "fig:缩略图") Krita内建众多滤镜，同时支持G'MIC滤镜。

内建滤镜包括：levels, color adjustment curves, brightness/contrast curve, desaturate, invert, auto contrast, HSV adjustment, pixelize, raindrops, oil paint, gaussian blur, motion blur, blur, lens blur, color to alpha, color transfer, minimize channel, maximize channel, top/left/bottom/right edge detection, sobel, sharpen, mean removal, unsharp mask, gaussian noise removal, wavelet noise reducer, emboss horizontal only/in all directions/(laplacian)/vertical only/with variable depth/horizontal and vertical, small tiles, round corners, phong bumpmap.

### 文件格式

Krita的原生文件格式是Krita Document，扩展名是.kra。它也可以打开和保存包括PSD文件在内的众多其他文件格式：

|     | 文件格式                                                                                                                                                                                      |
| --- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 可保存 | Krita Document, OpenRaster document, PSD, PPM, PGM, PBM, PNG, JPEG-2000, JPEG, BMP Windows, XBM, TIFF, EXR, PDF, WebP                                                                     |
| 可导入 | Krita Document, EXR, OpenRaster document, PSD image, Gimp image, PPM, PGM, PBM, PNG, JPEG-2000, PDF, ODG draw, BMP Windows, XPM, GIF, XBM, Krita Flipbook, Adobe DNG and Camera RAW, WEBP |
| 可导出 | 同可保存                                                                                                                                                                                      |

### 吉祥物

[缩略图](https://zh.wikipedia.org/wiki/File:Krita_steam_boxart_Feb_2014.png "fig:缩略图") Krita的[吉祥物是电子松鼠Kiki](https://zh.wikipedia.org/wiki/吉祥物 "wikilink")（Kiki the Cyber Squirrel），她是一位拟人化的机械[松鼠](../Page/松鼠.md "wikilink")卡通角色，设计者是来自中国的[钛山](../Page/谭代山.md "wikilink")（Tyson Tan）。Krita社区之所以选择了一只松鼠作为吉祥物，是因为在[阿尔巴尼亚语](../Page/阿尔巴尼亚语.md "wikilink")中Krita的意思是松鼠。Kiki的首版设计在2012年在KDE社区论坛上投稿，被印在Krita 2.6版的介绍小册子上。\[8\]自2.8版开始Kiki开始作为Krita的启动画面，\[9\]\[10\]迄今为止每个新版本的Krita都会有一个新的Kiki设计。Kiki的商品被放在Krita的筹款商店里出售，\[11\]Kiki的形象也被用在Krita的Steam项目里。\[12\]\[13\]

## Krita开发人员碰头会

Krita的开发人员遍及世界各地，每隔一两年他们会设法找一个周末聚集起来，面对面商讨Krita的未来发展、开发进度和一起攻坚程序开发上的一些问题。

| 年份             | 期间            | 地点                                                               |
| -------------- | ------------- | ---------------------------------------------------------------- |
| **2005\[14\]** | /             | [荷兰](../Page/荷兰.md "wikilink")[代芬特尔](../Page/代芬特尔.md "wikilink") |
| **2010\[15\]** | 2月26日\~3月7日   | 荷兰代芬特尔                                                           |
| **2011\[16\]** | 5月-20日\~5月22日 | 荷兰[阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")                           |
| **2014\[17\]** | 5月16日\~5月18日  | 荷兰代芬特尔                                                           |
| **2016\[18\]** | 1月23日\~1月24日  | 荷兰代芬特尔                                                           |
| **2016\[19\]** | 8月26日\~8月28日  | 荷兰代芬特尔                                                           |

## 其他版本

  - **Krita Gemini**，针对平板和触摸操作优化。\[20\]
  - **Krita Studio，**面向电影工业和特效工业的有偿商业支持版本。\[21\]

## 参见

  - [GIMP](../Page/GIMP.md "wikilink")
  - [KDE](../Page/KDE.md "wikilink")
  - [Konqi](../Page/Konqi.md "wikilink")

## 参考文献

## 外部链接

  -
  - [Krita Studio 网站](https://web.archive.org/web/20140301212724/http://kritastudio.com/)

  - [Krita的Steam页面](http://store.steampowered.com/app/280680)

  - [Krita的技术支持tumblr](http://krita-foundation.tumblr.com/)

  - [Krita的DeviantArt群组](http://krita-free-art-app.deviantart.com/)

[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink") [Category:KOffice](https://zh.wikipedia.org/wiki/Category:KOffice "wikilink") [Category:Calligra_Suite](https://zh.wikipedia.org/wiki/Category:Calligra_Suite "wikilink") [Category:自由圖像軟件](https://zh.wikipedia.org/wiki/Category:自由圖像軟件 "wikilink") [Category:點陣圖編輯軟體](https://zh.wikipedia.org/wiki/Category:點陣圖編輯軟體 "wikilink") [Category:繪圖軟體](https://zh.wikipedia.org/wiki/Category:繪圖軟體 "wikilink") [Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink")

1.
2.   Krita|accessdate=2017-07-23|last=Foundation|first=Krita|work=krita.org|language=en-US}}
3.
4.
5.
6.
7.   Krita|last=Foundation|first=Krita|language=en-US|website=krita.org|access-date=2017-07-22}}
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
18.  Krita|last=Foundation|first=Krita|language=en-US|website=krita.org|access-date=2017-07-23}}
19.  Krita|last=Foundation|first=Krita|language=en-US|website=krita.org|access-date=2017-07-23}}
20.  Krita|last=Foundation|first=Krita|language=en-US|website=krita.org|access-date=2017-07-23|archive-url=[https://web.archive.org/web/20170809212501/https://krita.org/en/download/krita-gemini/|archive-date=2017-08-09|dead-url=yes](https://web.archive.org/web/20170809212501/https://krita.org/en/download/krita-gemini/%7Carchive-date=2017-08-09%7Cdead-url=yes)}}
21.  Krita|last=Foundation|first=Krita|language=fr|website=krita.org|access-date=2017-07-23}}