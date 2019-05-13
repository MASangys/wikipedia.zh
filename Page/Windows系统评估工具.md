**Windows系统评估工具**（，简称**WinSAT**）是[微软](../Page/微软.md "wikilink")[Windows
Vista](../Page/Windows_Vista.md "wikilink")、[Windows
7和](../Page/Windows_7.md "wikilink")[Windows
8中的一个模块](../Page/Windows_8.md "wikilink")，可以在[控制面板的性能信息和工具中找到](../Page/控制面板.md "wikilink")（[Windows
8.1中除外](../Page/Windows_8.1.md "wikilink")）。此工具可以测量当前运行硬件的各项特征和能力，然后将其报告为**Windows体验指数**（，简称**WEI**）得分。体验指数包括五项子分数：处理器、内存、2D图形、3D图形和磁盘。最终的体验指数得分是分数最低的子分数，而**不是**五个子分数的平均值。\[1\]\[2\]Windows
Vista中的WinSAT将体验指数报告为一个从1.0至5.9的得分，\[3\]Windows 7中上限增至7.9\[4\]Windows
8中增至9.9。\[5\]

体验指数可以匹配用户的计算机硬件性能与软件的性能需求。例如，[Aero图形界面在该指数小于](../Page/Windows_Aero.md "wikilink")3分时将不会自动启用。\[6\]\[7\]

体验指数也可以揭示升级系统的哪个部分能得到最大的体验提升。例如，如果计算机的最低子分数是内存，升级[内存一般会比升级硬盘或其他任何组件获得更大提升](../Page/随机存取存储器.md "wikilink")。\[8\]

详细的原始信息（例如实际的磁盘带宽）可以从命令行调用`winsat`获取。这也允许重新运行特定测试。\[9\]
从命令行获取体验指数得分应使用`winsat
formal`，这也会更新`%systemroot%\Performance\WinSAT\DataStore`中存储的值。\[10\]（里面存储的XML文件可以被轻易地手动修改以伪造性能报告值\[11\]）。体验指数也可被应用程序使用[API调用](../Page/应用程序接口.md "wikilink")，应用程序可以根据硬件性能调用适当的函数，避免功能慢的难以接受。\[12\]

Windows体验指数在[Windows
8.1中不会显示](../Page/Windows_8.1.md "wikilink")，因为WinSAT的[图形用户界面在此Windows版本中已被移除](../Page/图形用户界面.md "wikilink")，不过[命令行版本的winsat工具仍然存在并可正常运行](../Page/命令行界面.md "wikilink")。\[13\]根据的文章，微软移除WinSAT界面是为促进各种硬件都可顺畅运行Windows
8的想法。\[14\]

## 历史

在2003年的[Game Developers
Conference上](../Page/游戏开发者大会.md "wikilink")，微软的Windows图形和游戏总经理Dean
Lester在[GameSpot的采访中指出](../Page/GameSpot.md "wikilink")，微软打算在Windows的下一版本（代号“Longhorn”，后来的[Windows
Vista](../Page/Windows_Vista.md "wikilink")）中将改善PC游戏体验作为新游戏倡议的一部分。莱斯特表示，这项倡议的一部分是操作系统将包含一个[游戏文件夹以集中化游戏的设置](../Page/Games_for_Windows.md "wikilink")，以及其他功能，[显卡驱动的精简](../Page/Windows_Display_Driver_Model.md "wikilink")、和在安装时[可以直接从光盘启动Windows游戏](../Page/Games_for_Windows.md "wikilink")——类似[電子遊戲機的设计方式](../Page/電子遊戲機.md "wikilink")。微软还想要求在适用于Windows游戏的零售包装上使用新的系统需求说明系统，使用一个数字评分分类需求。\[15\]在2004年，Lester说明微软想进一步扩展与硬件厂商的合作，使用一个“级别系统”标定系统硬件的性能和功能，创建适用于Windows
Vista的PC，以及[Xbox
360外围设备将会与操作系统完全兼容](../Page/Xbox_360.md "wikilink")。\[16\]Windows
Vista中的Windows体验指数依赖于WinSAT的测量结果，它可以提供准确的评估系统的能力——这些评级表示系统的能力，较高的得分表示更好的性能。

微软的Robert
Stein在2004年建议的初步设计元素是，WinSAT计划在时评估用户的硬件；\[17\]这是一个设计决定，这是一个操作系统为[发布到制造商保留的设计决定](../Page/軟件版本週期.md "wikilink")。\[18\]

在2005年[Windows硬件工程会议期间](../Page/WinHEC.md "wikilink")，微软正式发布WinSAT，并提出这是一项不仅适用于游戏的技术，比如Windows
Vista可以基于机器性能决定是否启用。\[19\]\[20\]\[21\]WinSAT在发布给制造商前将是操作系统的一个开发重点。\[22\]

## 测试

Windows Vista和Windows 7中的WinSAT执行下列测试：

  - Direct3D 9 Aero评估
  - Direct3D 9 Batch评估
  - Direct3D 9 评估
  - Direct3D 9 [Texture](../Page/材质贴图.md "wikilink") Load评估
  - Direct3D 9 [ALU评估](../Page/算術邏輯單元.md "wikilink")
  - Direct3D 10 Batch评估
  - Direct3D 10 Alpha Blend评估
  - Direct3D 10 Texture Load评估
  - Direct3D 10 ALU评估
  - Direct3D 10 几何评估
  - Direct3D 10 固定缓冲区评估
  - Windows媒体解码性能
  - Windows媒体编码性能
  - [CPU性能](../Page/中央处理器.md "wikilink")
  - [内存性能](../Page/電腦數據存貯器.md "wikilink")
  - [磁盘性能](../Page/硬盘.md "wikilink")（包括如[固态硬盘的设备](../Page/固态硬盘.md "wikilink")）

在运行期间，测试只会显示一个进度条和“工作中”的背景动画。在Vista和Windows 7中，测试期间会禁用Aero
Glass以便工具能准确评估显卡和CPU。

在 Windows 7 和 Windows 8
中，WinSAT会在每周维护计划时自动运行，计划任务位置：\\Microsoft\\Windows\\Maintenance。默认时间安排是星期日上午1时。维护计划整合各类操作系统任务到一个计划任务，以便计算机不会被各个任务随机打断。计划任务会将计算机从睡眠中唤醒，运行所有计划的任务，然后让计算机进入睡眠。在每周任务中，WinSAT会运行足够长的时间以检测是否已有任何硬件变更。如果发现，会重新运行各项测试。如果没有，WinSAT则只是自动结束并认定现有得分有效。

WinSAT在[笔记本电脑使用电池供电时不会运行上述测试](../Page/笔记本电脑.md "wikilink")。

## 参考资料

## 外部链接

  - [Video cards ordered by their Windows Experience Index
    (WEI)](https://web.archive.org/web/20071010204343/http://www.drivermax.com/driver/vista-rating/index_video.php)
  - [CPUs ordered by their Windows Experience Index
    (WEI)](https://web.archive.org/web/20071010204601/http://www.drivermax.com/driver/vista-rating/index_cpu.php)
  - [WinSAT API](http://msdn2.microsoft.com/en-gb/library/ms737395.aspx)
  - [How To Get Windows Experience Index (WEI) Score In
    Windows 8.1](http://www.myfavoritegadgets.info/tipstricks/WEIwin81.html)
  - [VGA driver for windows](http://www.cmdownload.com/tag/vga-driver)
  - [Freeware - get Windows Experience Index in Windows 8.1 and
    Windows 10](http://www.softwareok.com/?seite=Microsoft/ExperienceIndexOK)

[Category:Windows_Vista](https://zh.wikipedia.org/wiki/Category:Windows_Vista "wikilink")
[Category:Windows命令](https://zh.wikipedia.org/wiki/Category:Windows命令 "wikilink")
[Category:计算机性能测试](https://zh.wikipedia.org/wiki/Category:计算机性能测试 "wikilink")

1.
2.
3.  [Vista Team Blog : Windows Experience Index: An In-Depth
    Look](http://windowsvistablog.com/blogs/windowsvista/archive/2006/09/22/windows-experience-index-an-in-depth-look.aspx)

4.
5.
6.
7.
8.
9.  [Winsat Command-Line
    Utility](http://windowsitpro.com/systems-management/winsat-command-line-utility)
10. [How can I run the Windows System Assessment Tool (WinSAT) update
    directly from a command
    line?](http://windowsitpro.com/systems-management/how-can-i-run-windows-system-assessment-tool-winsat-update-directly-command-line)
11. [Stupid Geek Tricks: Hacking the Windows Experience
    Index](http://www.howtogeek.com/71500/stupid-geek-tricks-hacking-the-windows-experience-index/)
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