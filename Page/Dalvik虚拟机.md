**Dalvik虚拟机**，是[Google等厂商合作开发的](../Page/Google.md "wikilink")[Android移动设备平台的核心组成部分之一](../Page/Android.md "wikilink")。它可以支持已转换为.dex（即「Dalvik
Executable」）格式的[Java应用程序的运行](../Page/Java.md "wikilink")。.dex格式是专为Dalvik设计的一种压缩格式，适合[内存和](../Page/内存.md "wikilink")[处理器速度有限的系统](../Page/处理器.md "wikilink")。Dalvik由Dan
Bornstein编写的，名字来源于他的祖先曾经居住过的小渔村[達爾維克](../Page/達爾維克.md "wikilink")（），位于[冰島](../Page/冰島.md "wikilink")[埃亚峡湾](../Page/埃亚峡湾.md "wikilink")。

大多数[虚拟机包括](../Page/虚拟机.md "wikilink")[JVM都是一種](../Page/JVM.md "wikilink")[堆疊機器](../Page/堆疊機器.md "wikilink")，而Dalvik虚拟机则是[寄存器机](../Page/寄存器机.md "wikilink")。两种架构各有优劣，一般而言，基于堆疊的机器需要更多指令，而基于寄存器的机器指令更长。

從[Android 5.0版起](../Page/Android_5.0.md "wikilink")，[Android
Runtime](../Page/Android_Runtime.md "wikilink")（ART）取代Dalvik成為系統內預設虛擬機。

## 架構

dx工具是一种用來轉換Java
class成為DEX格式的工具。多個类被包含在一個dex文件之中。各個类中重複的字串和其他常數只在DEX中存放一次，以節省空間。Java字節碼（bytecode）被轉換成Dalvik虛擬機所使用的替代指令集。一個未壓縮dex文件通常稍小於一個已經壓縮的.jar檔。

安裝到行動設備之時，Dalvik可執行檔可能會被修改。為了獲得進一步优化，虚拟机可能會调整文件内部分数据的[端序](../Page/字节序.md "wikilink")、[内联一些函数和简单的结构体](../Page/内联函数.md "wikilink")、并短路掉一些不必要的操作。

当Android启动时，Dalvik
VM监视所有的程序（APK），并且创建依存关系树，为每个程序优化代码并存储在Dalvik缓存中。Dalvik第一次加载后会生成Cache文件，以提供下次快速加载，所以第一次會很慢。

## dx

dx是一套工具，可以將Java
.class轉換成.dex格式。一個dex檔通常會有多個.class。由於dex有時必須進行优化，會使檔案大小增加1-4倍，以ODEX结尾。

## 差異

  - Dalvik虚拟机早期并没有使用[即时编译](../Page/即时编译.md "wikilink")（JIT）技术。从[Android
    2.2开始](../Page/Android_2.2.md "wikilink")，Dalvik虚拟机也支持JIT。
  - Dalvik虚拟机有自己的[字节码](../Page/字节码.md "wikilink")，並非使用Java字节码。
  - Dalvik基于暫存器，而JVM基于堆疊。
  - Dalvik VM透過Zygote進行類別的预加载，Zygote会完成虚拟机的初始化，也是與JVM不同之處。

## 参考资料

  - [Dan
    Bornstein的讲座资料](http://sites.google.com/site/developerdaychina/google-developer-day-2008-china/android-dalvik-vm)

[Category:Android](https://zh.wikipedia.org/wiki/Category:Android "wikilink")
[Category:Java虚拟机](https://zh.wikipedia.org/wiki/Category:Java虚拟机 "wikilink")