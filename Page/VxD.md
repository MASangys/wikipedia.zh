> 本文内容由[VxD](https://zh.wikipedia.org/wiki/VxD)转换而来。


**VxD**是在[Microsoft Windows/386](../Page/Windows_2.1x.md "wikilink")、[Windows 3.x的](../Page/Windows_3.x.md "wikilink")386增强模式及[Windows 9x中使用的](../Page/Windows_9x.md "wikilink")[设备驱动程序模型](https://zh.wikipedia.org/wiki/设备驱动程序 "wikilink")，并在一定程度上被、以及（及更高版本）多任务（`TASKMGR`）使用。\[1\]VxDs可以访问[内核](../Page/内核.md "wikilink")和所有运行中[进程的内存](https://zh.wikipedia.org/wiki/进程 "wikilink")，以及对硬件的原始访问。

## 设计

名称“VxD”是“虚拟xxx驱动程序”（virtual xxx driver）的[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")，其中“xxx”是一些硬件设备的类别。它本身源于Windows 3.x中以`vxxxd.386`作为文件名称的大多数驱动程序，例如：vjoyd.386（[操纵杆](https://zh.wikipedia.org/wiki/操纵杆 "wikilink")）、vmm.386（内存管理器）。VxD在Windows 3.x下通常使用`.386`为[文件扩展名](../Page/文件扩展名.md "wikilink")，在Windows 9x下则使用`.vxd`。为Windows 3.x编写的VxD可以在Windows 9x下使用，反之亦然。

## 历史

在Windows出现前，[DOS](../Page/DOS.md "wikilink")应用程序直接与各种硬件通信（响应[中断](https://zh.wikipedia.org/wiki/中断 "wikilink")，读取和写入设备内存等）或通过DOS[设备驱动程序通信](../Page/驱动程序.md "wikilink")。由于DOS不是[多任务架构](https://zh.wikipedia.org/wiki/多任务 "wikilink")，每个应用程序将在运行时对硬件进行独占和完全的控制。虽然[Windows应用程序通常不直接与硬件通信](https://zh.wikipedia.org/wiki/Windows "wikilink")，但它是Windows驱动程序的唯一方法，并且在Windows 3.x中的真实和标准模式中仍是如此。

Windows/386及之后的系统允许多个DOS应用程序在自己的中并发执行。为在这些虚拟机之间共享物理资源，微软引入了虚拟设备驱动程序。这些驱动程序通过拦截对硬件的调用来解决与物理资源的使用冲突相关的问题。相较于实际设备的[机器端口](../Page/通訊埠.md "wikilink")，它表示经由操作系统管理的“虚拟”设备。

## 过时

尽管Windows 98引入了[Windows Driver Model](../Page/Windows_Driver_Model.md "wikilink") (WDM)，VxD仍可在Windows 98和Windows Me上使用。VxD不能在[Windows NT及后续版本中使用](../Page/Windows_NT.md "wikilink")。从Windows 2000开始，基于Windows NT的操作系统也使用Windows Driver Model，而Windows NT 4和更低版本必须使用专门为它们编写的驱动程序。在Windows 9x中使用VxD驱动程序而非WDM驱动程序将导致高级[ACPI](../Page/高级配置与电源接口.md "wikilink") 状态（例如[休眠](../Page/休眠_\(電腦\).md "wikilink")）不可用。

VxD不应与类似的名称混淆。[NTVDM专用的](https://zh.wikipedia.org/wiki/NTVDM "wikilink")“VDD”（虚拟设备驱动程序）在Windows NT“DOS Box”下仿真直接I/O的方法NTVDM VDD作为常规的32位用户模式DLL运行，并且必须依靠Win32 API（或另一个WDM驱动程序）代表16位程序模拟所需的I/O。

## 参见

  -
  - [Windows Driver Model](../Page/Windows_Driver_Model.md "wikilink")（WDM）

  -
## 参考资料

<references />

## 拓展阅读

  -
  -
  -
  -
  -
  -
[Category:驱动程序](https://zh.wikipedia.org/wiki/Category:驱动程序 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.