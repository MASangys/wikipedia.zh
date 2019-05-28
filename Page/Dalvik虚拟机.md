**Dalvik虚拟机**，是[Google等厂商合作开发的](../Page/Google.md "wikilink")[Android移动设备平台的核心组成部分之一](../Page/Android.md "wikilink")。它可以支持已转换为.dex（即「Dalvik
Executable」）格式的[Java应用程序的运行](../Page/Java.md "wikilink")。.dex格式是专为Dalvik设计的一种压缩格式，适合[内存和](https://zh.wikipedia.org/wiki/内存 "wikilink")[处理器速度有限的系统](https://zh.wikipedia.org/wiki/处理器 "wikilink")。Dalvik由Dan
Bornstein编写的，名字来源于他的祖先曾经居住过的小渔村[達爾維克](https://zh.wikipedia.org/wiki/達爾維克 "wikilink")（），位于[冰島](https://zh.wikipedia.org/wiki/冰島 "wikilink")[埃亚峡湾](https://zh.wikipedia.org/wiki/埃亚峡湾 "wikilink")。

大多数[虚拟机包括](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")[JVM都是一種](https://zh.wikipedia.org/wiki/JVM "wikilink")[堆疊機器](https://zh.wikipedia.org/wiki/堆疊機器 "wikilink")，而Dalvik虚拟机则是[寄存器机](../Page/寄存器机.md "wikilink")。两种架构各有优劣，一般而言，基于堆疊的机器需要更多指令，而基于寄存器的机器指令更长。

從[Android
5.0版起](https://zh.wikipedia.org/wiki/Android_5.0 "wikilink")，[Android
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

  - Dalvik虚拟机早期并没有使用[即时编译](https://zh.wikipedia.org/wiki/即时编译 "wikilink")（JIT）技术。从[Android
    2.2开始](https://zh.wikipedia.org/wiki/Android_2.2 "wikilink")，Dalvik虚拟机也支持JIT。
  - Dalvik虚拟机有自己的[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")，並非使用Java字节码。
  - Dalvik基于暫存器，而JVM基于堆疊。
  - Dalvik VM透過Zygote進行類別的预加载，Zygote会完成虚拟机的初始化，也是與JVM不同之處。

## 参考资料

  - [Dan
    Bornstein的讲座资料](http://sites.google.com/site/developerdaychina/google-developer-day-2008-china/android-dalvik-vm)

[Category:Android](https://zh.wikipedia.org/wiki/Category:Android "wikilink")
[Category:Java虚拟机](https://zh.wikipedia.org/wiki/Category:Java虚拟机 "wikilink")