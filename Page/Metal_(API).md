**Metal**
是一个兼顾图形与计算功能的，面向底层、低开销的硬件加速[应用程序接口](../Page/应用程序接口.md "wikilink")（API），其类似于将
[OpenGL](../Page/OpenGL.md "wikilink") 与
[OpenCL](../Page/OpenCL.md "wikilink") 的功能集成到了同一个API上，最初支持它的系统是 [iOS
8](../Page/iOS_8.md "wikilink")。Metal 使得
[iOS](../Page/iOS.md "wikilink") 可以实现其他平台的类似功能，例如 [Khronos
Group](../Page/Khronos_Group.md "wikilink") 的跨平台
[Vulkan](../Page/Vulkan_\(API\).md "wikilink") 与 [Microsoft
Windows](../Page/Microsoft_Windows.md "wikilink") 上的 [Direct3D
12](../Page/Direct3D#Direct3D_12.md "wikilink")。

Metal也通过引入来进一步提高[GPGPU编程的能力](../Page/通用图形处理器.md "wikilink")。\[1\]

Metal 使用一种基于[C++11的新](../Page/C++11.md "wikilink")，其实现借助了
[Clang](../Page/Clang.md "wikilink") 和
[LLVM](../Page/LLVM.md "wikilink")。\[2\]

## 历史

2014年6月2日，Metal 开始支持iOS设备（仅支持[Apple
A7或更新款處理器的](../Page/Apple_A7.md "wikilink")[iPhone](../Page/iPhone.md "wikilink")、[iPad](../Page/iPad.md "wikilink")）；2015年6月8日，Metal
开始支持运行 [OS X El Capitan](../Page/OS_X_El_Capitan.md "wikilink")
的Mac设备（僅2012年中或更新款機種）\[3\]\[4\]。

2017年6月5日，Apple於[WWDC宣布了Metal的第二个版本](../Page/WWDC.md "wikilink")，支持[macOS
High Sierra](../Page/macOS_High_Sierra.md "wikilink")、[iOS
11和](../Page/iOS_11.md "wikilink")[tvOS
11](../Page/tvOS.md "wikilink")。Metal 2不是Metal的獨立API，並且由需要的硬體支援。 Metal
2在[Xcode中實現了更高效的分析和調試](../Page/Xcode.md "wikilink")，加速了[機器學習](../Page/機器學習.md "wikilink")、降低了CPU工作負載、支持macOS上的[虛擬實境以及](../Page/虛擬實境.md "wikilink")[Apple
A11處理器的特性](../Page/Apple_A11.md "wikilink")。\[5\]

## 参见

  - [Vulkan](../Page/Vulkan_\(API\).md "wikilink")
  - [Mantle](../Page/Mantle_\(API\).md "wikilink")
  - [DirectX](../Page/DirectX.md "wikilink")

## 参考文献

## 外部链接

  - [Metal for Developers](https://developer.apple.com/metal/)

[Category:2014年面世](https://zh.wikipedia.org/wiki/Category:2014年面世 "wikilink")
[Category:IOS](https://zh.wikipedia.org/wiki/Category:IOS "wikilink")
[Category:MacOS](https://zh.wikipedia.org/wiki/Category:MacOS "wikilink")
[Category:繪圖函式庫](https://zh.wikipedia.org/wiki/Category:繪圖函式庫 "wikilink")

1.
2.
3.  [Apple 发布包含 4,000 多个全新 API 的 iOS 8
    SDK](https://www.apple.com/cn/pr/library/2014/06/02Apple-Releases-iOS-8-SDK-With-Over-4-000-New-APIs.html)
4.  [Apple 宣布推出体验更出色、性能更强大的 OS X El
    Capitan](https://www.apple.com/cn/pr/library/2015/06/08Apple-Announces-OS-X-El-Capitan-with-Refined-Experience-Improved-Performance.html)
5.