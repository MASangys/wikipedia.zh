**SmoothVideo
Project**（[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")：SVP）是一款实时高级[帧率转换软件](../Page/帧率.md "wikilink")，用以使视频回放流畅无抖动。最常用的是将24帧/秒的视频转化为48或60帧/秒。**SVP**不只支持一种播放器，而且可以为大多数常见格式的视频增加。

这一过程是基于著名的[ffdshow解码器内置执行](https://zh.wikipedia.org/wiki/ffdshow "wikilink")脚本\[1\]进行的，但在**SVP**中这一过程可以通过图形化用户界面加以控制。

SVP包括以下三种基本组件：

  - 使用处理视频的[ffdshow视频解码器](https://zh.wikipedia.org/wiki/ffdshow "wikilink")；
  - 基于[MVTools 2.5](http://avisynth.org.ru/mvtools/mvtools2.html)库计算中间帧的脚本。原库进行了改进以使运行速度更快，\[2\]并涵盖了基于[OpenCL](../Page/OpenCL.md "wikilink")[应用程序接口的](../Page/应用程序接口.md "wikilink")[GPU加速版本](https://zh.wikipedia.org/wiki/图形处理器 "wikilink")。因此新版本SVP可以在[兼容的GPU](http://www.svp-team.com/wiki/GPU_Compatibility)上完成接近一半\[3\]的工作；
  - **SVP管理器**-一个可以控制不同帧率的过程度和支持资料的图形化组件。

## 参考

[Category:媒体播放器](https://zh.wikipedia.org/wiki/Category:媒体播放器 "wikilink")
[Category:多媒体软件](https://zh.wikipedia.org/wiki/Category:多媒体软件 "wikilink")

1.
2.  [1](http://www.avsforum.com/avs-vb/showthread.php?p=20267673#post20267673)
    "Does amazing things with CPU usage. From 80% to 50%" by widezu69
3.  [Results database](http://www.svp-team.com/svpmark/results.html) for
    SVPmark benchmark