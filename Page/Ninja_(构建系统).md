> 本文内容由[Ninja \(构建系统\)](https://zh.wikipedia.org/wiki/Ninja_\(构建系统\))转换而来。


**Ninja**是一个专注于速度的小型[构建系统](../Page/組建自動化.md "wikilink")\[1\]，由Evan Martin于2010年在[Chrome团队工作时开发](../Page/Google_Chrome.md "wikilink")。

## 背景

Evan Martin从2007年到2012年在Chrome团队工作。在加入初期，Chrome只能够在Windows上运行，他的主要任务是把代码移植到其它平台，而面临的第一个任务就是确定构建系统。

Chrome团队的成员提出了GYP增量解决方案，它的作用是从高级的描述规则生成平台相关的构建文件。

在Linux上，他最开始尝试把[Scons作为GYP的目标构建系统](../Page/SCons.md "wikilink")，但当文件发生变化，启动构建就需要花费30秒时间。因为他的工作是移植代码，涉及到频繁的更改文件和重新编译，所以这被认为是不可接受的。

后来，他又尝试[make作为GYP的目标构建系统](https://zh.wikipedia.org/wiki/make "wikilink")。在刚开始的时候速度相当快，但当文件越来越多时，它变慢了。后来，他注意到make中的一些问题，觉得可以优化，因此有了开发Ninja的想法。\[2\]

在使用Ninja后，修改文件后Chrome增量构建的时间降到了6秒钟。

使用“Ninja”命名是因为作者觉得它速度很快。\[3\]

## 文件生成器

GYP、[CMake](../Page/CMake.md "wikilink")和[Meson](../Page/Meson.md "wikilink")支持生成Ninja构建文件。\[4\]

除了通用的生成器外，许多项目使用专用的脚本来生成构建文件。\[5\]

## 用户

Ninja的用户包括了一些著名的大型项目\[6\]：

  - [Chromium](../Page/Chromium.md "wikilink")
  - [LLVM](../Page/LLVM.md "wikilink")
  - [Android Open Source Project](../Page/Android.md "wikilink")
  - [GStreamer](../Page/GStreamer.md "wikilink")

## 參考資料

## 外部連結

[Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink")

1.
2.   Ninja|url=[https://www.aosabook.org/en/posa/ninja.html|accessdate=2019-09-30|work=www.aosabook.org](https://www.aosabook.org/en/posa/ninja.html%7Caccessdate=2019-09-30%7Cwork=www.aosabook.org)}}
3.
4.
5.
6.