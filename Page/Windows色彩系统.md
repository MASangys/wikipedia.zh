**Windows色彩系统**（**Windows Color System**，缩写WCS）是一个[色彩管理](../Page/色彩管理.md "wikilink")平台，最早出现于[Windows Vista](../Page/Windows_Vista.md "wikilink")，它旨在实现各种软件与硬件的颜色一致性，包括相机、显示器、打印机和扫描仪。\[1\]根据其软件与硬件配置的不同，不同设备将不同地解释相同的颜色。因而，必须对其进行适当校准才能在不同设备之间呈现一致的颜色。WCS旨在使过程自动且透明，作为[ICC色彩特性文件](../Page/ICC色彩特性文件.md "wikilink")的一项演变。

Windows色彩系统以“色彩设施和翻译引擎”（Color Infrastructure and Translation Engine，缩写CITE）为其核心。它的后端使用[佳能](../Page/佳能.md "wikilink")开发的Kyuanos\[2\]\[3\]技术提供色彩处理流水线，每个像素支持位深度超过32位、多个色彩通道（超过三个）、替代[色彩空間](../Page/色彩空間.md "wikilink")和[高动态范围成像](../Page/高动态范围成像.md "wikilink")着色。颜色处理流水线允许设备开发人员将自己的[色域映射算法添加到流水线](../Page/色彩管理.md "wikilink")，以定制设备的颜色响应。新流水线还支持浮点计算，以最小化整数处理中固有的[捨入誤差](../Page/捨入誤差.md "wikilink")。一旦颜色流水线处理完颜色，CITE引擎将根据颜色配置文件应用对于特定设备的颜色转换，以确保输出颜色与预期颜色相符。

WCS明确支持[LCD及](https://zh.wikipedia.org/wiki/LCD "wikilink")[CRT显示器](https://zh.wikipedia.org/wiki/CRT "wikilink")、投影机、打印机以及其他成像设备，并为每个设备提供定制支持。WCS使用遵循的色彩配置文件，采用XML定义颜色表示如何实际转换为可见颜色。它支持[ICC](../Page/国际色彩联盟.md "wikilink") V4色彩配置文件。[Windows相片圖庫和照片查看器只支持过时的V](https://zh.wikipedia.org/wiki/Windows相片圖庫 "wikilink")2标准，并且在使用V4配置文件时所示图像将较暗，、[HD Photo格式](../Page/JPEG_XR.md "wikilink")、[XPS打印路径和XPS文档均支持色彩管理](../Page/XML纸张规范.md "wikilink")。

## 参见

  - [Windows Vista新功能](../Page/Windows_Vista新功能.md "wikilink")

  -
## 参考资料

## 外部链接

  -
[Category:颜色](https://zh.wikipedia.org/wiki/Category:颜色 "wikilink") [Category:Windows_Vista](https://zh.wikipedia.org/wiki/Category:Windows_Vista "wikilink")

1.
2.
3.