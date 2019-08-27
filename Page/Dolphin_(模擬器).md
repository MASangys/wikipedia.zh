**Dolphin**是一個能執行於[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[macOS和](https://zh.wikipedia.org/wiki/macOS "wikilink")[Android](../Page/Android.md "wikilink")[作業系統的](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[任天堂GameCube](../Page/任天堂GameCube.md "wikilink")與[Wii](../Page/Wii.md "wikilink")的[開源](https://zh.wikipedia.org/wiki/开源 "wikilink")[模擬器](https://zh.wikipedia.org/wiki/仿真器 "wikilink")。\[1\]\[2\]\[3\]它是歷史上第一個可完美執行[任天堂GameCube](../Page/任天堂GameCube.md "wikilink")與[Wii](../Page/Wii.md "wikilink")遊戲的模擬器。程式的名稱來源於GameCube的研發代號。\[4\]

## 歷史

### 诞生（2003-2007）

2003年9月，由Henrik Rydgård (ector)与F|RES发布的任天堂GameCube模拟器Dolphin的试验版本，\[5\]最初可以运行几个游戏，但无法支持音频模拟，也会表现出严重的性能问题。许多游戏刚启动就崩溃了，无法运行；平均[帧率](../Page/帧率.md "wikilink")在2与20FPS之间。

2004年，开发团队决定停止开发，发布1.01版作为最终版本。在2005年，开发团队决定继续开发。2007年，他们发布了1.03版，加入了一些小改进，也开始支持音频模拟。

### 开源、Wii模拟与2.0版发布（2008-2010）

2008年7月13日，开发团队在Google Code上公开了Dolphin的[源代码](../Page/源代码.md "wikilink")，使用[GPLv2许可](https://zh.wikipedia.org/wiki/GPLv2 "wikilink")。\[6\]\[7\]这时，该模拟器已经有基本的Wii模拟功能。软件的开源吸引了不少开发者，Dolphin也得以定期更新发布。从此，该模拟器更新速度加快。

2009年2月，Dolphin成功启动并运行Wii的官方系统菜单1.0版，这是Dolphin发展史上的一个里程碑。此后，几乎所有Wii系统版本可以启动。\[8\]

2009年4月，除了有些游戏还存在一些小问题以外，大部分GameCube与Wii的商业游戏都能运行，并且几乎没有任何问题。模拟器的改进能让用户流畅运行游戏，声音与图形功能模拟显著改善。\[9\]

2009年10月，许多新功能被加入模拟器，如自动跳帧能够提高模拟器的性能以及稳定性。模拟器的[NetPlay（联机对战）功能得以改善](https://zh.wikipedia.org/wiki/联机游戏 "wikilink")，只要游戏不要求使用[Wii遥控器](../Page/Wii遙控器.md "wikilink")，玩家就可以与朋友在线玩GameCube和Wii的多人游戏。模拟器的[图形用户界面](../Page/图形用户界面.md "wikilink")被重新设计，操作更人性化。[DirectX](../Page/DirectX.md "wikilink")插件功能也得到完善。

2010年4月12日，Dolphin 2.0版本发布。\[10\]\[11\]

### 3.0与3.5版（2010-2012）

2010年11月底，开发者修复了大部分的声音问题（如爆音），更多的游戏能够运行，并提高了模拟速度与精确度。

2011年6月，Dolphin官方发布了3.0版。模拟的许多问题被修复，例如崩溃、图像错误，很多之前无法运行的游戏都可以运行了。配置对话框进行了调整，能让新用户很方便地使用Dolphin。视频配置对话框完全重构，给每个选项配说明面板。模拟器加入了各种新功能，包括[Wiimote扬声器](../Page/Wii遙控器.md "wikilink")、EFB格式转换模拟和图形调试器的支持，以及音频转储等。由于LLE模拟器引擎经过不断的改进，此时的Dolphin音频模拟已经基本完美（只要有必要的DSP转储）。开发者还为Dolphin加入了[Direct3D](../Page/Direct3D.md "wikilink") 11视频后端和[XAudio2音频后端](../Page/DirectSound.md "wikilink")。2.0版发布前，插件的重写工作就已全面展开；随着插件的不断改进，Dolphin开发者决定将所有插件整合进模拟器核心，这使得插件能与程序的其他部分有着更好的集成性。尽管开发者对性能做了一定的优化（尤其是[纹理解码器](../Page/材质贴图.md "wikilink")），但为了提高模拟精确度，模拟器综合性能较2.0版有所降低。

2012年12月25日，3.5版本发布，该版本改进了配件的支持，提供了[FreeBSD](../Page/FreeBSD.md "wikilink")移植版，并修复部分的模拟问题。\[12\]

### 移植到Android、更新4.0版（2013）

2013年4月6日，开发者首次发布[Google](../Page/Google.md "wikilink") [Android](../Page/Android.md "wikilink")版。\[13\]\[14\]在当时只有一小部分设备支持[OpenGL ES](../Page/OpenGL_ES.md "wikilink") 3.0，并且在2013年7月，Google才通过新发布的[Android 4.3提供该标准的官方支持](https://zh.wikipedia.org/wiki/Android_4.3 "wikilink")。游戏运行的平均帧率为1FPS左右。开发者表示[三星Galaxy S4等手机的模拟速度更快](../Page/三星Galaxy_S4.md "wikilink")，但仍有相当大的速度限制。\[15\]\[16\]

2013年9月22日，4.0版本发布，改进了OpenGL渲染、[OpenAL](../Page/OpenAL.md "wikilink")音频、后端控制器支持、网络功能以及macOS和Linux版本的性能。\[17\]\[18\]但4.0有一些严重的错误，开发者随后发布了错误修复版本4.0.1\[19\]和4.0.2。\[20\]

### 放弃旧平台、提升精确度与5.0版（2013-2016）

2013年10月12日（4.0-155版），项目移除了Direct3D 9的支持，只剩下Direct3D 11与OpenGL两个视频后端。Dolphin团队表示D3D9本身有缺陷，解决这些问题费时，并影响开发速度。\[21\]

2014年5月19日，开发者宣布对32位的[Windows与](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Linux](../Page/Linux.md "wikilink")系统停止支持。\[22\]但当时Android的32位ARMv7支持仍保留，直到次年AArch64 [JIT完善](../Page/即時編譯.md "wikilink")，相关设备发布。\[23\]

2014年间，Dolphin模拟的精确度取得了很大的提升，实现了光盘加载模拟，原生GameCube控制器支持，\[24\]接近完美的音频模拟，\[25\]并修复了不少问题错误。\[26\][内存管理单元](../Page/内存管理单元.md "wikilink")的改进使得之前许多无法运行的游戏首次启动并正常工作。\[27\]至于Android设备，Dolphin能在当时使用[NVIDIA Tegra处理器的设备上运行](../Page/图睿.md "wikilink")，不过有一些困难。\[28\]

通过与[VisualBoyAdvance-M模拟器的开发人员合作](../Page/Visual_Boy_Advance.md "wikilink")，Dolphin开发者在2015年3月提供了[GameCube与Game Boy Advance的联动功能](../Page/GBA傳輸線.md "wikilink")。\[29\]\[30\]

2015年5月25日，Dolphin成功将代码从“GPLv2”重新授权为“GPLv2+”许可，改进了与其他[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")项目的[许可证兼容性](../Page/许可证兼容性.md "wikilink")，以便共享交换代码。\[31\]

2016年6月24日，5.0版本发布。加入 [Vulkan](https://zh.wikipedia.org/wiki/Vulkan "wikilink") , 修复了一些错误以及更新了一些内容。\[32\]

### 5.0版后的发展（进行中）

2016年9月，开发者表示，模拟器能够启动所有官方的GameCube游戏，\[33\]但由于[Triforce](../Page/Triforce.md "wikilink")街机板模拟代码长时间没有维护，Triforce模拟功能被移除。\[34\]次月，Dolphin提供了Wiimote蓝牙功能，支持Wiimote Motion+，提升兼容性。\[35\]

2017年3月，Dolphin能够访问[Wii商店频道并下载软件](https://zh.wikipedia.org/wiki/Wii商店频道 "wikilink")。\[36\]

## 功能

开发版本提供最新的功能和改进，将来可能被加入Dolphin稳定版本。

Dolphin可以解除游戏[区域限制（锁区）](../Page/區域限制.md "wikilink")，记录[TAS竞速](../Page/TAS競速.md "wikilink")，使用Action Replay与Gecko[作弊码](../Page/电子游戏作弊.md "wikilink")。

Dolphin可以通过蓝牙来支持真实的Wii遥控器，\[37\]也支持其扩展，如MotionPlus的适配器，左手手柄（Nunchuk），传统手柄，吉他，鼓，以及转盘。

Dolphin可以让GameCube控制器和Wii遥控器代替PC鼠标键盘，并映射基本按钮。\[38\]

有两种多人游戏方式被Dolphin支持，一是模拟本地多人游戏，二是[任天堂Wi-Fi连接](../Page/任天堂Wi-Fi连接.md "wikilink")。第一种只提供给Dolphin用户，它适用于那些在默认情况下没有在线选项的游戏。

第二种支持[Wi-Fi连接的Wii游戏](../Page/任天堂Wi-Fi连接.md "wikilink")，与其他Dolphin用户以及真正的Wii用户玩。\[39\]

游戏进度可以保存在模拟的、Wii闪存上，或者使用[即时存档](https://zh.wikipedia.org/wiki/即时存档 "wikilink")。Dolphin自带的存储卡管理器能访问与修改模拟的GameCube存储卡文件。\[40\]

### 图形改进

即使GameCube和Wii支持的最高分辨率为[480p](https://zh.wikipedia.org/wiki/480p "wikilink")，Dolphin与大多数在PC上运行的游戏机模拟器类似，能支持任意分辨率。\[41\]由于Dolphin超越原始的游戏机的极限，这功能在游戏社区中受了不少好评，而且许多游戏网站也提示了此功能。\[42\]

Dolphin可以载入自定义[纹理贴图](https://zh.wikipedia.org/wiki/纹理贴图 "wikilink")，分辨率可以比原始的更高。\[43\] 而且该模拟器能导出游戏的纹理贴图，再进行修改。

Dolphin能输出3D图形，支持[3D眼镜及如](https://zh.wikipedia.org/wiki/3D眼镜 "wikilink")[NVIDIA 3D Vision等特殊硬件](https://zh.wikipedia.org/wiki/NVIDIA_3D_Vision "wikilink")。\[44\]

Dolphin还提供其他功能，以提升显示的品质，比如[反鋸齒](../Page/反鋸齒.md "wikilink")，[各向异性过滤](../Page/各向异性过滤.md "wikilink")，后处理[像素着色器](https://zh.wikipedia.org/wiki/像素着色器 "wikilink")，及强制游戏[宽屏输出的补丁](../Page/長寬比_\(影像\).md "wikilink")。\[45\]

### 模拟软件功能

  - 在启动游戏时，能够跳过[Wii頻道](../Page/Wii頻道.md "wikilink")或GameCube游戏机的BIOS
  - [NAND模拟](../Page/闪存.md "wikilink")
  - 支持WAD（下载游戏，主要用于[WiiWare](../Page/WiiWare.md "wikilink")游戏，[Virtual Console等等](../Page/Virtual_Console.md "wikilink")）
  - 支持自制游戏

## 评价

Dolphin从各个独立的游戏网站获得了广泛的好评。[Eurogamer](../Page/Eurogamer.md "wikilink")和[1UP.com](../Page/1UP.com.md "wikilink")赞扬模拟器能在高清分辨率下玩游戏。\[46\]\[47\]\[48\] 它也被称赞对GameCube和Wii有极高的兼容性。它也受到了许多网站的关注，因为它是历史上第一个正确模拟第七代主機的模拟器。\[49\]

## 衍生版本

### Dolphin VR

Dolphin VR是一个提供[虚拟现实](../Page/虚拟现实.md "wikilink")功能的Dolphin衍生版本，支持全[視野](https://zh.wikipedia.org/wiki/視野 "wikilink")（），3D ，独立瞄准。\[50\]

### Ishiiruka

在官方停止Direct3D 9支持之后，2013年10月18日，Dolphin开发者之一Tino发布了一个名为Ishiiruka的非官方版本\[51\]，名字来自于日语的[多尔鼠海豚](../Page/多尔鼠海豚.md "wikilink")\[52\]，重点完善Direct3D 9和11，提升流畅度，\[53\]

此分支纠正Dolphin中存在的性能问题，如[着色器](../Page/着色器.md "wikilink")编译器引起的微型卡顿。\[54\] [任天堂明星大亂鬥DX](https://zh.wikipedia.org/wiki/任天堂明星大亂鬥DX "wikilink")[联机游戏社区Faster](https://zh.wikipedia.org/wiki/联机游戏 "wikilink") Melee\[55\]与SmashLadder\[56\]官方客户端也是基于Ishiiruka。

2016年10月，在Digital Foundry：[银河战士Prime](../Page/银河战士Prime.md "wikilink")节目中，[Eurogamer](../Page/Eurogamer.md "wikilink")的约翰·林内曼（John Linneman）谈到了关于Ishiiruka的。 他运用比较，在Ishiiruka及原始游戏机Wii和GameCube上运行银河战士Prime，林内曼认为，“模拟器的优势大大超过它的任何小问题”。他还指出Ishiiruka的特点，“其视觉效果超出了Dolphin所能达到的。例如，你可以加入一些改进，如[景深](../Page/景深.md "wikilink")，环境遮挡，各种颜色校正等等”。

与Dolphin一样，Ishiiruka的代码也存放于[GitHub](../Page/GitHub.md "wikilink")。\[57\]

## 参见

  - [游戏机模拟器列表](https://zh.wikipedia.org/wiki/游戏机模拟器列表 "wikilink")
  - [Xenia](../Page/Xenia.md "wikilink")，第七代主机[Xbox 360模拟器](../Page/Xbox_360.md "wikilink")
  - [RPCS3](../Page/RPCS3.md "wikilink")，第七代主机[PlayStation 3模拟器](../Page/PlayStation_3.md "wikilink")

## 參考資料

## 外部連結

  - [Dolphin GitHub 專案主頁](https://github.com/dolphin-emu/dolphin)
  - [Dolphin 官方网站](https://cn.dolphin-emu.org/)

[Category:任天堂GameCube](https://zh.wikipedia.org/wiki/Category:任天堂GameCube "wikilink") [Category:Wii](https://zh.wikipedia.org/wiki/Category:Wii "wikilink") [Category:遊戲機模擬器](https://zh.wikipedia.org/wiki/Category:遊戲機模擬器 "wikilink")

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

27.

28.

29.

30.

31.
32.
33.

34.

35.

36.

37.

38.

39.

40.

41.

42.

43.

44.

45.

46.
47.

48.

49.

50.

51.

52.

53.

54.

55.

56.

57.