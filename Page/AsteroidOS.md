**AsteroidOS**是一个为[智能手表](../Page/智能手表.md "wikilink")设计的[开放源代码](../Page/开放源代码.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")。\[1\]\[2\]\[3\]它可作为一些[Android Wear设备固件的替代品](https://zh.wikipedia.org/wiki/Android_Wear "wikilink")。\[4\]

## 软件架构

AsteroidOS使用[OpenEmbedded](../Page/OpenEmbedded.md "wikilink")构建一个嵌入式[Linux发行版](../Page/Linux发行版.md "wikilink")。\[5\]它以[Linux内核](../Page/Linux内核.md "wikilink")和[systemd服务管理器为基础运行](../Page/Systemd.md "wikilink")。\[6\]AsteroidOS也包含各种移动Linux[中间件](../Page/中间件.md "wikilink")（如为[Mer](../Page/Mer.md "wikilink")和Nemo Mobile开发的[lipstick](https://sailfishos.org/wiki/Lipstick)和[MCE](https://sailfishos.org/wiki/Mce)）。\[7\]

它的用户界面完全使用[Qt](../Page/Qt.md "wikilink")5框架编写。\[8\]应用程序则以出自和[QML-Asteroid](https://github.com/AsteroidOS/qml-asteroid)的[QML](../Page/QML.md "wikilink")图形组件编写。可以从[OpenEmbedded](../Page/OpenEmbedded.md "wikilink")生成一个有[交叉编译工具链](../Page/交叉編譯器.md "wikilink")、集成到[Qt Creator的](../Page/Qt_Creator.md "wikilink")[SDK以便于开发](../Page/软件开发工具包.md "wikilink")。\[9\]

[Asteroid-launcher](https://github.com/AsteroidOS/asteroid-launcher) is a [Wayland compositor](../Page/Wayland.md "wikilink") and customizable [home screen](https://zh.wikipedia.org/wiki/home_screen "wikilink") managing applications, watchfaces, notifications and quick settings. Asteroid-launcher runs on top of the [libhybris](https://zh.wikipedia.org/wiki/Hybris_\(software\) "wikilink") compatibility layer to make use of [Bionic](../Page/Bionic_\(軟體\).md "wikilink") [GPU](../Page/圖形處理器.md "wikilink")[驱动程序](../Page/驱动程序.md "wikilink").\[10\]

AsteroidOS offers [Bluetooth Low Energy](https://zh.wikipedia.org/wiki/Bluetooth_low_energy "wikilink") synchronization capabilities with the [asteroid-btsyncd](https://github.com/AsteroidOS/asteroid-btsyncd) daemon running on top of [BlueZ](https://zh.wikipedia.org/wiki/BlueZ "wikilink")5.\[11\] A reference client named [AsteroidOS Sync](https://github.com/AsteroidOS/AsteroidOSSync) is available for Android users.\[12\]

## 附带的应用

在Alpha 1.0版本中，AsteroidOS默认包含并预装下列应用程序：\[13\]

  - [Agenda](https://github.com/AsteroidOS/asteroid-calendar)：提供简单的事件调度
  - [Alarm Clock](https://github.com/AsteroidOS/asteroid-alarmclock)：使手表在一天的特定时间振动
  - [Calculator](https://github.com/AsteroidOS/asteroid-calculator)：允许进行基本计算
  - [Music](https://github.com/AsteroidOS/asteroid-music)：控制设备间同步的音乐播放器
  - [Settings](https://github.com/AsteroidOS/asteroid-settings)：配置时间、日期、语言、蓝牙、亮度、壁纸、表面和USB
  - [Stopwatch](https://github.com/AsteroidOS/asteroid-stopwatch)：测量经过时间
  - [Timer](https://github.com/AsteroidOS/asteroid-timer)：指定时间计数器
  - [Weather](https://github.com/AsteroidOS/asteroid-weather)：提供五天天气预报

## 参见

  - [Sailfish OS](../Page/Sailfish_OS.md "wikilink")

  - [OpenEmbedded](../Page/OpenEmbedded.md "wikilink")

  -
  - [Qt](../Page/Qt.md "wikilink")

## 参考资料

[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink") [Category:智能手表](https://zh.wikipedia.org/wiki/Category:智能手表 "wikilink") [Category:可穿戴式電腦](https://zh.wikipedia.org/wiki/Category:可穿戴式電腦 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.