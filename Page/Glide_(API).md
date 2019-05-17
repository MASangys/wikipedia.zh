**Glide**是[3dfx
Interactive为其Voodoo](../Page/3dfx_Interactive.md "wikilink") [3D加速卡设计的](../Page/圖形處理器.md "wikilink")[3D图形](../Page/三维计算机图形.md "wikilink")[应用程序接口（API）](../Page/应用程序接口.md "wikilink")。Glide最初作为专有API发布，但后来被3dfx[开放源码](../Page/开放源代码.md "wikilink")。\[1\]它主要用于加速三维图形渲染，支持3D几何与[纹理映射](https://zh.wikipedia.org/wiki/纹理映射 "wikilink")，但只适配Voodoo加速卡。3dfx的标准Glide
API在20世纪90年代后期被业界广泛采用。然而好景不长，微软不断改进[Direct3D](../Page/Direct3D.md "wikilink")，其他显卡供应商逐步提供[OpenGL支持](../Page/OpenGL.md "wikilink")，市面上的产品种类日益丰富，导致Glide被淘汰。

## API

Glide基于OpenGL设计。OpenGL是一个大型图形库，其API中有336个调用，但其中不少的调用使用方面有限。3dfx选择主要对3D游戏[实时渲染有用的功能整合进Glide库](https://zh.wikipedia.org/wiki/Real-time_rendering "wikilink")，使Voodoo加速卡能够完整支持该精简图形库。

## 在游戏中的使用

在90年代后期，由于Voodoo加速卡（Voodoo
1）性能出色，以及Glide在开发中易于使用，Voodoo加速卡占据了3D游戏市场。Glide的名称表明Glide
API在OpenGL的基础上设计，同时也能避免与[商标相关的问题](../Page/商标.md "wikilink")。

## 模拟器

Glide模拟器的开发自90年代后期就一直进行。3dfx公司因此积极阻止这些行为，使用法律威胁关闭早期项目。\[2\]然而，在其停止运营并被[NVIDIA收购之前](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，3dfx采用开源许可协议发布了Glide
API与Voodoo
2/3的技术规格\[3\]，Glide从此变为开源项目。\[4\]尽管此后没有只采用Glide进行加速渲染的游戏（主要使用Direct3D或OpenGL），但用户若想在非Voodoo硬件上使用Glide来运行早期的3D游戏，这需要使用Glide模拟器。随着规范与代码的开放，目前有几个模拟器能够模拟Glide
API并运行老游戏。像是[Glidos这类项目甚至允许更早期的游戏使用Glide加速](https://zh.wikipedia.org/wiki/Glidos "wikilink")。

## 另见

  - [OpenGL](../Page/OpenGL.md "wikilink")
  - [3dfx Interactive](../Page/3dfx_Interactive.md "wikilink")
  - [MiniGL](https://zh.wikipedia.org/wiki/MiniGL "wikilink")
  - [Vulkan (API)](../Page/Vulkan_\(API\).md "wikilink")
  - [Mantle (API)](../Page/Mantle_\(API\).md "wikilink")

## 参考资料

## 外部链接

  - [Glide SourceForge项目](http://glide.sourceforge.net/)
  - [GLIDE程序设计手册](http://www.gamers.org/dEngine/xf3D/glide/glidepgm.htm)
  - [Glide包装器列表](http://www.sierrahelp.com/Utilities/DisplayUtilities/GlideWrappers.html)
  - [OpenGL文档](http://www.opengl.org/documentation)

[Category:三维计算机图形学](https://zh.wikipedia.org/wiki/Category:三维计算机图形学 "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:自由三维图形软件](https://zh.wikipedia.org/wiki/Category:自由三维图形软件 "wikilink")
[Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")
[Category:遊戲製作軟件](https://zh.wikipedia.org/wiki/Category:遊戲製作軟件 "wikilink")

1.
2.
3.
4.