Blend4Web是用于创建和在[网页浏览器中显示交互式](../Page/网页浏览器.md "wikilink")[三维计算机图形的](../Page/三维计算机图形.md "wikilink")[开源](../Page/开放源代码.md "wikilink")[框架](https://zh.wikipedia.org/wiki/框架 "wikilink")。

## 概述

Blend4Web 框架利用[Blender编辑三维场景](../Page/Blender.md "wikilink")。内容呈现依赖
[WebGL](../Page/WebGL.md "wikilink")、网络音频和其他[网络标准](https://zh.wikipedia.org/wiki/互联网标准 "wikilink")，无需使用[插件](../Page/插件.md "wikilink")\[1\]。

它具有双重许可证，分发基于[开源](../Page/开放源代码.md "wikilink")[GPLv3以及](https://zh.wikipedia.org/wiki/GPLv3 "wikilink")[商业许可证](https://zh.wikipedia.org/wiki/商业软件 "wikilink")；[源代码托管在](../Page/源代码.md "wikilink")[GitHub上](../Page/GitHub.md "wikilink")\[2\]。

三维场景可以在Blender中准备，然后导出为一对[JSON和](../Page/JSON.md "wikilink")[二进制文件在](https://zh.wikipedia.org/wiki/二进制文件 "wikilink")[网络应用程序中加载](../Page/网络应用程序.md "wikilink")。它也可以被导出为一个单一自包含的[HTML文件](../Page/HTML.md "wikilink")，其中导出的数据，网络播放器[GUI和引擎本身被包装在其中](../Page/图形用户界面.md "wikilink")\[3\]。HTML选项被认为是使用Blend4Web的最简单的方法\[4\]。生成的文件，据上报的最小大小为
1 [Mb](https://zh.wikipedia.org/wiki/百万字节 "wikilink")，可以使用标准 iframe HTML
元素嵌入在网页中\[5\]。Blend4Web
驱动的网络应用程序可以部署在热门[社交网站比如](../Page/社交網路服務.md "wikilink")
[Facebook](../Page/Facebook.md "wikilink") 等\[6\]。

Blend4Web工具链包括[JavaScript库](../Page/JavaScript函式庫.md "wikilink")，Blender的[插件和调整](../Page/插件.md "wikilink")3D场景参数，[调试和](https://zh.wikipedia.org/wiki/调试 "wikilink")[优化的工具集](../Page/最优化.md "wikilink")。

Blend4Web 发展开始在2010年由总部设在[莫斯科的公司被称为](../Page/莫斯科.md "wikilink")
Triumph。它首次公开发布 2014 年 3 月 28 日\[7\]

2017年底，项目创始人Yuri和Alex
Kovelenov退出Triumph并开始开发新的WebGL框架[Verge3D](../Page/Verge3D.md "wikilink")\[8\]。

## 功能

框架有大量的典型组件在[游戏引擎发现](../Page/游戏引擎.md "wikilink")，包括[定位音频系统](../Page/立體聲.md "wikilink")、[物理引擎](https://zh.wikipedia.org/wiki/物理引擎 "wikilink")
（[Bullet分叉移植到](../Page/Bullet.md "wikilink")
[JavaScript](../Page/JavaScript.md "wikilink")）、
[动画系统和游戏逻辑编程](../Page/计算机动画.md "wikilink")[抽象层](https://zh.wikipedia.org/wiki/抽象層 "wikilink")\[9\]。

多达8个不同类型的动画可以被分配到一个单独的物体，包括[骨骼动画和每个顶点的动画](https://zh.wikipedia.org/wiki/骨骼动画 "wikilink")。速度和动画的方向（向前/向后播放），以及粒子的系统参数（大小，初始速度和计数）虽然可以在[API来改变](../Page/应用程序接口.md "wikilink")\[10\]。

在其他支持的功能有场景数据[动态加载和卸载](../Page/動態裝載.md "wikilink")，次表面散射模拟和基于[图像的照明](https://zh.wikipedia.org/wiki/图像照明 "wikilink")\[11\]。

用于扩展[渲染的室外环境](../Page/渲染.md "wikilink")，包括叶风相互作用、 水、
大气和太阳光模拟存在一些的预置选项。演示这些影响的一个例子是"农场"技术演示，还设有多个动画的
[NPC](../Page/非玩家角色.md "wikilink")
和行走能力，物体进行交互与以[第一人称模式开车](https://zh.wikipedia.org/wiki/第一人称视角游戏 "wikilink")\[12\]。

基于所述跨浏览器的[WebGL的](../Page/WebGL.md "wikilink")[API](../Page/应用程序接口.md "wikilink")，Blend4Web运行在大多数\[13\]的[网络浏览器](../Page/网页浏览器.md "wikilink")，包括移动装置\[14\]。还有一些注意事项虽然对WebGL实验支持的浏览器，如[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")\[15\]。也有开发应用程序运行的[Tizen系统设备](../Page/Tizen.md "wikilink")，如[三星Gear
S2智能手表](https://zh.wikipedia.org/wiki/三星Gear_S "wikilink")\[16\]。

高级的功能包括绘制调用批处理、
隐藏表面测定、[线程的](../Page/线程.md "wikilink")[物理模拟和海洋仿真](https://zh.wikipedia.org/wiki/物理引擎 "wikilink")\[17\]。

在14.09版本中，Blend4Web推出能添加交互性到三维场景中的[可视化编程工具](../Page/维基可视化编辑器.md "wikilink")\[18\]\[19\]。这个工具是让人想起了Blender游戏引擎的逻辑编辑器，因为它使用了放在Blender里面逻辑块。当用户与预定义的三维物体进行交互时，它能够播放由艺术家创作的动画轨\[20\]。

自15.03版，Blend4Web已经支持HTML连接元件（如信息窗口）三维物体（“注解”）和[运行时复制物体](../Page/執行期.md "wikilink")（“实例化”）\[21\]。

在[后期处理特效](https://zh.wikipedia.org/wiki/後期製作 "wikilink")，支持以下功能：发光，[高光](https://zh.wikipedia.org/wiki/高光 "wikilink")，[景深](../Page/景深.md "wikilink")，[云隙光](../Page/雲隙光.md "wikilink")，[运动模糊和](../Page/動態模糊.md "wikilink")[屏幕空间环境光遮蔽](../Page/屏幕空间环境光遮蔽.md "wikilink")\[22\]。

自 2015年年底以来，已支持了[虚拟现实设备](../Page/虚拟现实.md "wikilink")。具体来说，[Oculus
Rift](../Page/Oculus_Rift.md "wikilink")[头戴式显示器工作在实验](../Page/頭戴式顯示器.md "wikilink")
WebVR API\[23\]。基于手柄
API，软件现在也包括初步支持[游戏手柄](../Page/手柄.md "wikilink")\[24\]。

## Blender集成

Blender插件使用 [Python](../Page/Python.md "wikilink") 和
[C](https://zh.wikipedia.org/wiki/C语言 "wikilink") 编写，可以在
[Linux](../Page/Linux.md "wikilink") x86/x64、 [OS
X](../Page/MacOS.md "wikilink") x64 和 [MS
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
x86/x64 [平台上编译](../Page/平台.md "wikilink")。

Blend4Web 特定的配置文件可以在插件设置中激活。切换到此配置文件时，搅拌机界面更改，以便只显示与 Blend4Web
有关的设置\[25\]。

|                                                                            |
| -------------------------------------------------------------------------- |
| [thumb](https://zh.wikipedia.org/wiki/文件:Blend4Web_profile.png "wikilink") |

Blend4Web 支持设置Blender特定节点材质编辑器
（视觉[着色编程的一种工具](../Page/着色器.md "wikilink")）\[26\]和[粒子系统](../Page/粒子系统.md "wikilink")\[27\]等的功能。还有对Blender的非线性动画
(NLA) 编辑器的基本支持用于创建简单的场景。

Blend4Web基本上是基于Blender实时[GLSL渲染引擎](../Page/GLSL.md "wikilink")，用户建议使用启用[所见即所得编辑](https://zh.wikipedia.org/wiki/所見即所得 "wikilink")\[28\]。

## 与相关的软件的比较

### Blender游戏引擎

类似于Blender[游戏引擎](../Page/游戏引擎.md "wikilink")
(BGE)，Blend4Web从Blender场景中直接加载与播放场景数据，无需使用中间的编辑器\[29\]。作为一个网络框架，它的目标是网络浏览器，而BGE可执行文件必须离线运行\[30\]\[31\]。它提供了它自己的
[JavaScript](../Page/JavaScript.md "wikilink")
[API](../Page/应用程序接口.md "wikilink") 有别于 BGE 基于
[Python](../Page/Python.md "wikilink") 的 API。提出一种网络开发方法而不是逻辑块的组合和在 BGE
使用 Python 脚本。

### Unity

[Unity从版本](../Page/Unity_\(游戏引擎\).md "wikilink") 5\[32\] 提供了 WebGL
的生成选项。一个Unity的游戏开发者的一项调查进行比较这两个引擎\[33\]。使用 Blend4Web
和Unity创建两个交互基于网络演示文稿的[涡扇发动机](../Page/渦輪扇發動機.md "wikilink")。虽然作者指出这两个引擎产生类似的视觉质量，Unity的
WebGL 生成文件总大小有 142 Mb（未压缩），而 Blend4Web 导出的 HTML 文件相同的场景只有 1.8 Mb（未压缩）。

根据他们的WebGL的路线图，Unity 并没有计划在不久的将来支持移动设备，定位音频系统和视频纹理\[34\]\[35\]。

### Three.js

流行的WebGL库，three.js所报告要求对琐碎的任务编程，因此，要求更多的用户能力和提供一个缓慢的学习曲线。在Blend4Web，大多数准备在线演示的工作可以在没有任何编程下完成\[36\]\[37\]。

## 值得注意的使用

[美国国家航空航天局开发交互式网络应用程序中称为体验好奇号](../Page/美国国家航空航天局.md "wikilink")，想庆祝三周年[好奇号漫游车在](../Page/好奇號.md "wikilink")[火星上着陆](../Page/火星.md "wikilink")\[38\]。这基于
Blend4Web
的应用程序\[39\]使它能够操作探测车，控制它的照相机和[机械臂并再现了一些](../Page/機械手臂.md "wikilink")[火星科学实验室任务的杰出事件](../Page/火星科学实验室.md "wikilink")\[40\]\[41\]。在
[SIGGRAPH](../Page/SIGGRAPH.md "wikilink") 2015 的 WebGL 部分开头介绍应用\[42\]。

|                                                                                |                                                                                |                                                                                |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| [thumb](https://zh.wikipedia.org/wiki/文件:Experience_curiosity1.png "wikilink") | [thumb](https://zh.wikipedia.org/wiki/文件:Experience_curiosity2.png "wikilink") | [thumb](https://zh.wikipedia.org/wiki/文件:Experience_curiosity3.png "wikilink") |

[Dassault Systèmes](../Page/达索系统.md "wikilink")
提出了一种交互式的贺卡，以迎接顾客即将到来的圣诞假期\[43\]。

[绿色和平组织创建交互式三维信息图表来支持绿色和平组织在俄罗斯的排毒运动](../Page/绿色和平.md "wikilink")\[44\]。

[Tallink](https://www.tallink.com/) 推荐其 MS
巨星船舶，允许访问者浏览的这艘船的详细信息的交互式三维演示\[45\]。

## 参考文献

## 外部链接

  -
  - [用户手册](https://www.blend4web.com/doc/zh/)

[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")
[Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink")
[Category:自由三维图形软件](https://zh.wikipedia.org/wiki/Category:自由三维图形软件 "wikilink")
[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink")

1.  ["Blend4Web: the Open Source Solution for
    Online 3D"](https://hacks.mozilla.org/2014/10/blend4web-the-open-source-solution-for-online-3d/).
    Mozilla Hacks. Retrieved 2015-08-13.

2.  ["Blend4Web on GitHub"](https://github.com/TriumphLLC/Blend4Web).
    GitHub.com/TriumphLLC. Retrieved2014-08-11.

3.  Прахов, Андрей (Июль, 2015). "Blend4Web". *Linux Format*, стр. 20.

4.  ["Blend4Web, an Interactive 3D
    Viewer"](http://www.blendernation.com/2014/07/11/blend4web-an-interactive-3d-viewer/).
    BlenderNation.com. Retrieved 2014-08-11.

5.  ["Blend4Web: способ вставить 3D-содержание на веб-страницу с
    использованием
    WebGL"](http://belursus.info/index.php?c=s-blend4web).
    Belursus.info. Retrieved 2014-09-04.

6.  ["Blender Models in Facebook"](http://www.dalaifelinto.com/?p=1078).
    Dalai Felinto. Retrieved2015-09-11.

7.  ["Blend4Web Official Site -
    About"](https://www.blend4web.com/en/about/). Blend4Web.com.
    Retrieved 2015-08-13.

8.  ["Starting Up - Soft8Soft"](https://www.soft8soft.com/starting-up/).
    soft8soft.com. Retrieved 2018-08-13.

9.  ["Представлен Blend4Web, движок для создания
    браузерных 3D-приложений"](http://www.opennet.ru/opennews/art.shtml?num=39506).
    OpenNet.ru. Retrieved 2015-06-18.

10. ["Релиз движка для создания браузерных 3D-приложений
    Blend4Web 14.08"](http://www.opennet.ru/opennews/art.shtml?num=40457).
    OpenNet.ru. Retrieved 2015-08-13.

11. ["Blend4Web update adds improved lighting and
    more"](http://www.blendernation.com/2014/07/25/blend4web-update-adds-improved-lighting-and-more/).
    BlenderNation.com. Retrieved 2014-08-13.

12. ["Blend4Web: "The Farm" - Demo einer kleinen virtuellen
    Welt"](http://echtvirtuell.blogspot.de/2014/09/blend4web-farm-demo-einer-kleine.html).
    Echt Virtuell. Retrieved 2014-09-18.

13. ["Can I use WebGL?"](http://caniuse.com/webgl). caniuse.com.
    Retrieved 2014-08-15.

14. ["HTML5, the 3D Web, and the Death of
    Plugins"](http://3dspace.com/2016/02/html5-the-3d-web-and-the-death-of-plugins/).
    3dspace.com. Retrieved 2016-02-18.

15. ["Blend4Web: енджин за създаване на браузърни 3D сцени и
    приложения"](https://www.kaldata.com/IT-%D0%9D%D0%BE%D0%B2%D0%B8%D0%BD%D0%B8/Blend4Web-%D0%B5%D0%BD%D0%B4%D0%B6%D0%B8%D0%BD-%D0%B7%D0%B0-%D1%81%D1%8A%D0%B7%D0%B4%D0%B0%D0%B2%D0%B0%D0%BD%D0%B5-%D0%BD%D0%B0-%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D1%8A%D1%80%D0%BD%D0%B8-3D-%D1%81%D1%86%D0%B5-88641.html).
    Kaldata: Software, Hardware and Game Reviews. Retrieved 2014-09-04.

16. ["Real Time 3D watchfaces from Luxury Watches for the Gear
    S2"](http://www.tizenexperts.com/2016/08/real-time-3d-watchfaces-from-luxury-watches-for-the-gear-s2/).
    Tizen Experts. Retrieved 2016-08-12.

17. Cozzi, Patrick. *WebGL Insights*. CRC Press, 2015 ISBN
    978-1-49-871607-9.

18. ["Blend4Web Update: Non Linear Animation and
    more"](http://www.blendernation.com/2014/09/29/blend4web-update-non-linear-animation-and-more/).
    BlenderNation.com. Retrieved 2014-09-29.

19. ["Выпущен фреймворк
    Blend4Web 14.09"](http://digilinux.ru/2014/09/26/blend4web-14-09/).
    digilinux.ru. Retrieved 2014-09-29.

20. ["Blend4Web: обзор новинки отечественного
    софтопрома"](http://habrahabr.ru/post/259437/).
    Habrahabr.ru. Retrieved 2015-06-04.

21. ["Blend4web: annotations interactives et autres
    nouveautés"](http://www.benicourt.com/blender/2015/04/blend4web-annotations-interactives/).
    Greg G.d.Bénicourt. Retrieved 2015-05-29.

22. ["Релиз движка для создания браузерных 3D-приложений
    Blend4Web 15.05"](http://www.opennet.ru/opennews/art.shtml?num=42303).
    OpenNet.ru. Retrieved 2015-06-18.

23. ["Triumph releases
    Blend4Web 15.12"](http://www.cgchannel.com/2016/01/triumph-releases-blend4web-15-12/).
    cgchannel.com. Retrieved 2016-02-18.

24. ["Triumph releases
    Blend4Web 16.08"](http://www.cgchannel.com/2016/09/triumph-releases-blend4web-16-08/).
    cgchannel.com. Retrieved 2016-09-14.

25. ["Blend4Web – Must-Have for Blender
    Fans\!"](http://3ddey.com/blend4web-musthave-for-blenderfans/) .
    3ddey.com. Retrieved 2015-05-29.

26. ["Interactives 3D Web – Ist Das Die
    Zukunft?"](http://3d-magazin.eu/e-commerce/interaktives-3d-web-ist-das-die-zukunft).
    3d-magazin.eu. Retrieved 2016-09-16.

27. ["3D-Web-Applikationen mit Blend4Web
    erstellen"](https://entwickler.de/online/frameworks/3d-web-applikationen-mit-blend4web-erstellen-139994.html).
    entwickler.de. Retrieved 2015-05-29.

28. ["Blend4Web: Exporter Facilement en
    HTML"](http://blenderlounge.fr/blend4web-exporter-facilement-vos-scenes-en-html/).
    BlenderLounge. Retrieved 2015-07-17.

29.
30. ["Blender en tu Web:
    Blend4Web"](http://www.patrimoniovirtual.com/blender-en-tu-web-blend4web/).
    PatrimonioVirtual.com. Retrieved 2014-08-13.

31. ["Blend4Web: Ferramenta publica projetos do Blender para
    Web"](https://www.allanbrito.com/2015/04/22/blend4web-ferramenta-publica-projetos-do-blender-para-web/).
    Allan Brito. Retrieved 2015-05-29.

32. ["Unity 5 Ships and Brings One Click WebGL Export to Legions of Game
    Developers"](https://blog.mozilla.org/blog/2015/03/03/unity-5-ships-and-brings-one-click-webgl-export-to-legions-of-game-developers/).
    The Mozilla Blog. Retrieved 2015-06-16.

33. ["Blend4Web vs Unity. Битва за
    Интернет"](http://habrahabr.ru/post/260391/). Habrahabr.ru.
    Retrieved 2015-06-16.

34. ["Почему в NASA отказались от Unity в пользу
    Blend4Web"](http://habrahabr.ru/post/264457/). Habrahabr.ru.
    Retrieved 2015-08-13.

35. ["WebGL
    Roadmap"](http://forum.unity3d.com/threads/webgl-roadmap.334408/).
    Unity3D.com. Retrieved 2015-08-13.

36. ["The Good, The Bad and the
    WebGL-y"](http://benchung.com/good-bad-webgl-y/) . benchung.com.
    Retrieved 2015-06-19.

37. ["Что выбрать для 3D сайта – Three.js или
    Blend4Web?"](http://habrahabr.ru/post/262749/). Habrahabr.ru.
    Retrieved 2015-07-17.

38. ["New Online Exploring Tools Bring NASA's Journey to Mars to New
    Generation"](http://www.nasa.gov/press-release/new-online-exploring-tools-bring-nasas-journey-to-mars-to-new-generation).
    NASA. Retrieved 2015-08-07.

39. ["Experience Curiosity"](http://eyes.nasa.gov/curiosity/). NASA's
    Eyes. Retrieved 2015-08-07.

40. ["Prenez le controle de Curiosity avec
    Blend4Web"](http://www.benicourt.com/blender/2015/09/prenez-le-controle-de-curiosity-avec-blend4web/).
    Greg G.d.Bénicourt. Retrieved 2015-09-16.

41. ["Internet 3D: Take the Curiosity Rover for a Spin Right on the NASA
    Website"](http://www.technology.org/2015/08/11/internet-3d-take-the-curiosity-rover-for-a-spin-right-on-the-nasa-website/).
    Technology.Org. Retrieved 2015-08-12.

42. ["Khronos Events - 2015
    SIGGRAPH"](https://www.khronos.org/news/events/2015-siggraph).
    Khronos. Retrieved2015-08-13.

43. ["Season's Greetings 2016"](http://www.3ds.com/ecards-2016/) .
    Dassault Systèmes. Retrieved2016-09-14.

44. ["Чистая мода - Гринпис
    России"](http://www.greenpeace.org/russia/ru/campaigns/water-pollution/detox/).
    Greenpeace. Retrieved2016-09-14.

45. ["Megastar 3D
    Experience"](http://megastar.tallink.com/3d-experience/). Tallink.
    Retrieved 2016-09-14.