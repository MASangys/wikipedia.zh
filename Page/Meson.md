**Meson** 是用于[自动化构建的](../Page/組建自動化.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")，使用[Python](../Page/Python.md "wikilink")语言编写，在 [Apache 许可证](../Page/Apache许可证.md "wikilink") 2.0版本下发布，主要目标是为了让开发者节约用于配置构建系统的时间。\[1\]

## 特性

  - 多平台支持，包括 [GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[MacOS](../Page/MacOS.md "wikilink")、[GCC](../Page/GCC.md "wikilink")、[Clang](../Page/Clang.md "wikilink")、[Visual Studio等](../Page/Microsoft_Visual_Studio.md "wikilink")。
  - 多语言支持，包括 [C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++](../Page/C++.md "wikilink")、[D](../Page/D語言.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Rust](../Page/Rust.md "wikilink")等。
  - 构建过程的定义使用对用户非常友好且具有很高可读性的非[图灵完备DSL](https://zh.wikipedia.org/wiki/图灵完备 "wikilink")。
  - 为多种操作系统以及裸机提供交叉编译。
  - 针对极其快速和完整的增量构建进行了优化，同时又不牺牲正确性。
  - 类似于 CMake ，Meson 并不直接构建软件，而是使用合适的后端，在 GNU/Linux 使用 ninja，在Windows 上使用 Visual Studio，在 MacOS 上使用 Xcode。

## 应用场景

[GNOME](../Page/GNOME.md "wikilink") 中的很多项目比如：[GNOME Shell](../Page/GNOME_Shell.md "wikilink")、[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")、[GLib](../Page/GLib.md "wikilink")、[GStreamer](../Page/GStreamer.md "wikilink") 都抛弃[Autotools](https://zh.wikipedia.org/wiki/GNU构建系统 "wikilink")，改为使用 Meson。[Systemd](../Page/Systemd.md "wikilink") 自从 234 版本开始依赖 Meson，并抛弃 Autotools。

## 参考文献

<references />

[Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink") [Category:編譯工具](https://zh.wikipedia.org/wiki/Category:編譯工具 "wikilink") [Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink") [Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")

1.