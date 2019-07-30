**Xposed框架**（Xposed framework）是一套[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")、在[Android](../Page/Android.md "wikilink")高權限模式下運行的框架服务，可以在不修改[APK](../Page/APK.md "wikilink")文件的情况下修改程序的运行（修改系统），基于它可以制作出许多功能强大的模块，且在功能不冲突的情况下同时运作。這套框架需要设备解锁了[Bootloader方可安裝使用](https://zh.wikipedia.org/wiki/Bootloader "wikilink")\[1\]（[root为解锁Bootloader的充分不必要条件](https://zh.wikipedia.org/wiki/root_\(Android\) "wikilink")，而xposed安装仅需通过[TWRP](../Page/TWRP.md "wikilink")等第三方[卡刷安装包而不需要设备拥有完整的root权限](../Page/刷机.md "wikilink")）。

## 歷史

最初的Xposed框架，需要通過[Dalvik虛擬機載入框架的檔案運行](https://zh.wikipedia.org/wiki/Dalvik虛擬機器 "wikilink")，也即在Android應用程式一經運行必然會載入Xposed服務框架，這是得以不修改APK文件來修改應用程式的前提，因此框架是需要針對該虛擬機而開發的，在[Android Lollipop開始改用](../Page/Android_Lollipop.md "wikilink")[ART後Xposed的開發曾一度陷入停頓](https://zh.wikipedia.org/wiki/ART "wikilink")，據主要開發者Rovo89表示，支持ART相當於要將Xposed框架重寫一次。\[2\]

2017年7月，abforce在GitHub上发布了支持Nougat的xposed，不过此发布需在编译ROM前集成在源码中而不是以前直接卡刷的形式。

2017年10月，Xposed框架開始支持[Android Nougat](../Page/Android_Nougat.md "wikilink")。\[3\]

2018年9月，中国开发者weishu在酷安发布了应用太极，该应用通过对应用进行修改，允许用户无需对手机系统进行修改便可以使用部分xposed模块。

2019年1月，ElderDriver完成了[EdXposed](https://github.com/ElderDrivers/EdXposed)的开发。EdXp是一个Magisk模块，依赖于[riru](https://github.com/RikkaApps/Riru)框架，成功将Xposed移植到了Android Pie上。

2019年2月，weishu借助Magisk框架让太极得以对系统进行全局修改，越来越多的Xposed模块能够在太极中运行。[太极框架](https://github.com/taichi-framework/TaiChi)既能实现Xposed框架修改系统的功能，也能达到不修改系统使用Xposed模块的效果。更重要的是，太极已经可以成功运行于Android P甚至预览版Q之上。

## 用途

Xposed框架是以模块扩展方式来实现对系统部分功能的修改，这些模块都依赖于Xposed这个框架。用户可以在一些应用商店或其自带的下载库进行下载安裝。在[中國大陸](https://zh.wikipedia.org/wiki/中國大陸 "wikilink")，還有精简[QQ](https://zh.wikipedia.org/wiki/QQ "wikilink")，个性化[微信](../Page/微信.md "wikilink")界面等用途的模块。\[4\]

## 与部分软件的冲突

部分[专有软件](../Page/专有软件.md "wikilink")（如[微信](../Page/微信.md "wikilink")、[支付寶等](https://zh.wikipedia.org/wiki/支付寶 "wikilink")）会检测Xposed框架的存在，并强迫用户卸载Xposed框架及相关组件，否则用户将无法继续使用其所提供的服务。但是这些可以使用相应的模块来解决掉，比如Xposed黑名单模块.\[5\]\[6\]

## 参考

## 外部链接

  -
  -
  - [XDA Forums: Xposed General](https://forum.xda-developers.com/xposed)

  - [Xposed模块 - 酷安](https://www.coolapk.com/apk/tag/xposed)

[Category:Android软件](https://zh.wikipedia.org/wiki/Category:Android软件 "wikilink") [Category:軟體框架](https://zh.wikipedia.org/wiki/Category:軟體框架 "wikilink")

1.
2.
3.
4.
5.
6.