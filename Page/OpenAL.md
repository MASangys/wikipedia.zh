**OpenAL**（**Open A**udio
**L**ibrary）是[自由軟體界的跨平台音效](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")[API](https://zh.wikipedia.org/wiki/API "wikilink")。它設計給多通道三維位置音效的特效表現。其API風格模仿自[OpenGL](../Page/OpenGL.md "wikilink")。

## 歷史

OpenAL最初是由[Loki
Software所開發](../Page/Loki_Software.md "wikilink")。是為了將[Windows商業遊戲移植到](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Linux上](../Page/Linux.md "wikilink")。Loki倒閉以後，這個專案由[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")／[開放源始碼社群繼續維護](https://zh.wikipedia.org/wiki/開放源始碼社群 "wikilink")。不過現在最大的主導者（並大量發展）是[創新科技](https://zh.wikipedia.org/wiki/創新科技 "wikilink")，並得到來自[苹果公司和自由軟體](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")／[開放原始碼愛好者的持續支援](https://zh.wikipedia.org/wiki/開放原始碼軟體 "wikilink")。

## API結構和功能

OpenAL主要的功能是在**來源物體**、**音效緩衝**和**收聽者**中編碼。來源物體包含一個指向緩衝區的指標、聲音的速度、位置和方向，以及聲音強度。收聽者物體包含收聽者的速度、位置和方向，以及全部聲音的整體增益。緩衝裡包含8或16位元、[單聲道或](https://zh.wikipedia.org/wiki/單聲道 "wikilink")[立體聲](../Page/立體聲.md "wikilink")[PCM格式的音效資料](https://zh.wikipedia.org/wiki/PCM "wikilink")，表現引擎進行所有必要的計算，如距離衰減、[多普勒效應等](https://zh.wikipedia.org/wiki/多普勒效應 "wikilink")。

不同於OpenGL規格，OpenAL規格包含兩個[API分支](https://zh.wikipedia.org/wiki/API "wikilink")；以實際OpenAL函式組成的核心，和[ALC](https://zh.wikipedia.org/wiki/ALC "wikilink")
API，ALC用於管理表現內容、資源使用情況，並將跨平台風格封在其中。還有「ALUT」程式庫，提供高階「易用」的函式，其定位相當於OpenGL的[GLUT](../Page/GLUT.md "wikilink")。

## 可攜性

這個API可用於以下[平台](https://zh.wikipedia.org/wiki/系統平台 "wikilink")：

  - [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")
  - [GNU](../Page/GNU.md "wikilink")／[Linux](https://zh.wikipedia.org/wiki/Linux_kernel "wikilink")（[OSS和](https://zh.wikipedia.org/wiki/OSS "wikilink")[ALSA的後端](../Page/ALSA.md "wikilink")）
  - [BSD](../Page/BSD.md "wikilink")
  - [Solaris](https://zh.wikipedia.org/wiki/Solaris_Operating_Environment "wikilink")
  - [IRIX](../Page/IRIX.md "wikilink")
  - [Windows
    PC](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
  - [PlayStation 2](../Page/PlayStation_2.md "wikilink")
  - [PlayStation 3](../Page/PlayStation_3.md "wikilink")
  - [Xbox](https://zh.wikipedia.org/wiki/Xbox "wikilink")
  - [Xbox 360](../Page/Xbox_360.md "wikilink")
  - [Nintendo
    GameCube](https://zh.wikipedia.org/wiki/Nintendo_GameCube "wikilink")
  - [Wii](../Page/Wii.md "wikilink")
  - [MorphOS](https://zh.wikipedia.org/wiki/MorphOS "wikilink")

## 應用程式

**遊戲：**

  - [Minecraft](https://zh.wikipedia.org/wiki/Minecraft "wikilink") -
    3D建築遊戲

**其它應用程式：**

  - [Blender](../Page/Blender.md "wikilink") - 3D建模和渲染工具。
  - [Unity](https://zh.wikipedia.org/wiki/Unity_\(遊戲引擎\) "wikilink") -
    3D遊戲引擎和IDE。
  - ..[Basic4gl](https://zh.wikipedia.org/wiki/Basic4gl "wikilink") -
    編譯器和編程軟體。

更詳盡的列表可在OpenAL網站查尋。

## 参考文献

## 外部連結

  - [OpenAL官方網站](http://www.openal.org/)
  - [DevMaster.net
    OpenAL教學](https://web.archive.org/web/20040803034419/http://www.devmaster.net/articles.php?catID=6)

## 参见

  - [EAX](https://zh.wikipedia.org/wiki/EAX "wikilink")，環繞音效延伸
  - [OpenGL](../Page/OpenGL.md "wikilink")
  - [GLUT](../Page/GLUT.md "wikilink")，OpenGL工具組
  - [OpenSL ES](https://zh.wikipedia.org/wiki/OpenSL_ES "wikilink")

[Category:電子遊戲研發](https://zh.wikipedia.org/wiki/Category:電子遊戲研發 "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")