[ART_view.png](https://zh.wikipedia.org/wiki/File:ART_view.png "fig:ART_view.png")

**Android
Runtime**（缩写为ART），是一种在[Android](../Page/Android.md "wikilink")操作系统上的[运行环境](https://zh.wikipedia.org/wiki/运行环境 "wikilink")，由[Google公司研发](https://zh.wikipedia.org/wiki/Google公司 "wikilink")，并在2013年作为[Android
4.4系统中的一项测试功能正式对外发布](https://zh.wikipedia.org/wiki/Android_4.4 "wikilink")，在[Android
5.0及后续Android版本中作为正式的运行时库取代了以往的](https://zh.wikipedia.org/wiki/Android_5.0 "wikilink")[Dalvik虚拟机](../Page/Dalvik虚拟机.md "wikilink")。ART能够把应用程序的[字节码转换为](https://zh.wikipedia.org/wiki/字节码 "wikilink")[机器码](https://zh.wikipedia.org/wiki/机器码 "wikilink")，是Android所使用的一种新的[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")。它与Dalvik的主要不同在于：Dalvik采用的是[JIT技术](https://zh.wikipedia.org/wiki/JIT "wikilink")，而ART采用（AOT）技术。ART同時也改善了性能、[垃圾回收](../Page/垃圾回收_\(計算機科學\).md "wikilink")（Garbage
Collection）、应用程序出错以及性能分析。

JIT最早在[Android
2.2系统中引进到Dalvik虚拟机中](https://zh.wikipedia.org/wiki/Android_2.2 "wikilink")，在应用程序启动时，JIT通过进行连续的[性能分析](../Page/性能分析.md "wikilink")来优化程序代码的执行，在程序运行的过程中，Dalvik虚拟机在不断的进行将字节码编译成机器码的工作。与Dalvik虚拟机不同的是，ART引入了AOT这种预编译技术，在应用程序安装的过程中，ART就已经将所有的字节码重新编译成了机器码。应用程序运行过程中无需进行实时的编译工作，只需要进行直接调用。因此，ART极大的提高了应用程序的运行效率，同时也减少了手机的电量消耗，提高了移动设备的续航能力，在垃圾回收等机制上也有了较大的提升。为了保证[向下兼容](../Page/向下兼容.md "wikilink")，ART使用了相同的Dalvik字节码文件（dex），即在应用程序目录下保留了dex文件供旧程序调用，然而.odex文件则替换成了[可执行与可链接格式](https://zh.wikipedia.org/wiki/可执行与可链接格式 "wikilink")（ELF）可执行文件。一旦一个程序被ART的dex2oat命令[编译](https://zh.wikipedia.org/wiki/编译 "wikilink")，那么这个程序将会指通过ELF[可执行文件来运行](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。因此，相对于Dalvik虚拟机模式，ART模式下Android应用程序的安装需要消耗更多的时间，同时也会占用更大的内部储存空间，用于储存编译后的代码，但节省了很多Dalvik虚拟机用于实时编译的时间。

[Google公司在Android](https://zh.wikipedia.org/wiki/Google公司 "wikilink")
4.4中带来的ART模式仅仅是ART的一个预览版，系统默认仍然使用的是Dalvik虚拟机，4.4上面提供的预览版ART相对于Android
5.0以后的ART运行时库有较大的不同，尤其体现在兼容性上。

## 扩展阅读

  - [Android历史版本](https://zh.wikipedia.org/wiki/Android历史版本 "wikilink")－对Android所有历史版本的介绍，包括Android版本所对应的API版本
  - [虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")－一种特殊的计算机软件，通过它可以模拟出一个独立的环境供程序执行

## 外部链接

  -
  -
[Category:Android](https://zh.wikipedia.org/wiki/Category:Android "wikilink")
[Category:Java虚拟机](https://zh.wikipedia.org/wiki/Category:Java虚拟机 "wikilink")