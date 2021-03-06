> 本文内容由[Android调试桥](https://zh.wikipedia.org/wiki/Android调试桥)转换而来。


**Android调试桥**（，简称：ADB），是一种拥有许多功能的用于调试[Android](../Page/Android.md "wikilink")设备的命令行工具，可让您与Android设备进行通信。ADB命令便于执行各种设备操作（例如安装和调试应用，传输文件等）\[1\]，并提供对[Unix shell](../Page/Unix_shell.md "wikilink")（可用来在设备上运行各种命令）的访问权限。它是一种客户端-服务器程序，包括客户端、守护进程（adbd）、服务器三个组件。\[2\]

## Android调试桥的工作原理

当您启动某个ADB客户端时，客户端会先检查是否有 adb 服务器进程正在运行。如果没有，它将启动服务器进程。服务器在启动后会与本地[TCP端口](https://zh.wikipedia.org/wiki/TCP "wikilink") 5037绑定，并监听ADB客户端发出的命令；所有 adb 客户端均通过端口5037与ADB服务器通信。然后，服务器会与所有正在运行的设备建立连接。它通过扫描5555到5585之间（该范围供前16个模拟器使用）的奇数号端口查找模拟器。服务器一旦发现ADB守护进程(adbd)，便会与相应的端口建立连接。每个模拟器都使用一对按顺序排列的端口 - 用于控制台连接的偶数号端口和用于ADB连接的奇数号端口。例如：

`模拟器 1，控制台：5554`

`模拟器 1，adb：5555`

`模拟器 2，控制台：5556`

`模拟器 2，adb：5557` 依此类推…

如上所示，在端口5555处与ADB连接的模拟器与控制台监听端口5554的模拟器是同一个。

服务器与所有设备均建立连接后，便可以使用ADB命令访问这些设备。由于服务器管理与设备的连接，并处理来自多个ADB客户端的命令，因此可以从任意客户端（或从某个脚本）控制任意设备。\[3\]

## 在设备上启用Android调试桥

要通过USB连接的设备上使用ADB，必须在设备的系统设置中启用USB调试（位于开发者选项下）。

在搭载[Android](../Page/Android.md "wikilink")4.2及更高版本的设备上，“开发者选项”选项默认处于隐藏状态。如需将其显示出来，请依次转到 设置\>关于手机，然后点按版本号七次。返回上一屏幕，在底部可以找到开发者选项。（在不同的系统上，“开发者选项”选项所在的位置或名字可能有所不同。）

显示出“开发者模式”后，转至 开发者模式\>USB调试模式，将其选项改为开启后，便可通过USB连接设备。（当连接搭载Android4.2.2或更高版本的设备时，系统会显示一个对话框，询问您是否接受允许通过此计算机进行调试的RSA密钥。）

若需验证设备是否连接，可以在ADB服务器中执行`adb devices`。如果设备已连接，您将看到设备名称以“设备”形式列出。\[4\]\[5\]

## 参考资料

<references />

[Category:Android](https://zh.wikipedia.org/wiki/Category:Android "wikilink")

1.
2.
3.
4.
5.