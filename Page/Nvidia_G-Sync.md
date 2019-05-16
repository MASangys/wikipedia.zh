**G-Sync**是由[Nvidia开发的一种](../Page/英伟达.md "wikilink")[专有的自适应同步技术](../Page/专有软件.md "wikilink")，主要用于消除[畫面撕裂以及对Vsync等软件替代品的需求](../Page/畫面撕裂.md "wikilink")。\[1\]G-Sync技术允许视频显示器适应输出设备（显卡/集成显卡）的帧速率来消除画面撕裂，改变了原本的由输出设备适应显示器。在传统方式上，帧在设备输出的过程中可能被刷新，导致画面撕裂，或者一次显示两个或更多个帧。
\[2\]配备G-Sync技术的设备必须包含Nvidia销售的专有G-Sync模块。AMD已发布类似的名为[FreeSync的显示器技术](../Page/FreeSync.md "wikilink")，该技术具有与G-Sync同等的功能，且免版税。

NVIDIA构建了一种特殊的防碰撞功能，以避免在屏幕上绘制时出现新帧（可能导致滞后和/或撕裂），在发生时，模块会预期到刷新并等待下一帧完成。
\[3\]在非固定刷新场景且解决方案预测下次刷新时间的情况下，过驱动像素会变得棘手，因此必须针对每个面板实施和调整过驱动值以避免重影。
\[4\]

## 硬件

模块包含所有功能组件。其基于Altera Arria V
GX系列[FPGA](../Page/现场可编程逻辑门阵列.md "wikilink")，具有156K逻辑单元，396个DSP模块，67个LVDS通道。采用TSMC
28LP工艺生产，配备三个DDR3L
DRAM芯片来获得一定的带宽，总容量768MB。采用的FPGA还具有[LVDS接口](https://zh.wikipedia.org/wiki/低電壓差分信號 "wikilink")，用于驱动监视器面板。它旨在取代常见的倍线器，可以轻松由显示器制造商集成，显示器制造商只需要处理电源输送电路板以及输入连接。

## GPU和系统要求

  - GPU：G-SYNC功能需要Nvidia GeForce GTX 650 Ti Boost GPU或更高版本。
  - 驱动程序：R340.52或更高。
  - 操作系统：Windows 7、8、8.1和10。Linux、FreeBSD或Solaris。 \[5\]
  - 系统要求：GPU必须直接支持DisplayPort 1.2。

## 参见

  -
  - [FreeSync](../Page/FreeSync.md "wikilink")

  -
## 参考资料

## 外部链接

  - [G-sync
    Monitors](http://www.geforce.com/hardware/technology/g-sync/where-to-buy-g-sync-monitors-and-modules)
  - [Video: How G-SYNC
    Works](http://www.geforce.com/hardware/technology/g-sync/videos)
  - [Nvidia G-Sync
    overview](http://www.geforce.com/hardware/technology/g-sync)

[Category:影片和電影技術](https://zh.wikipedia.org/wiki/Category:影片和電影技術 "wikilink")
[Category:電腦顯示標準](https://zh.wikipedia.org/wiki/Category:電腦顯示標準 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")
[Category:Nvidia](https://zh.wikipedia.org/wiki/Category:Nvidia "wikilink")

1.
2.
3.
4.
5.