**USB集线器**（）是一个让多个[USB设备连接到计算机上一个USB接口或另一个USB集线器上某个接口的设备](../Page/USB.md "wikilink")。

[USB_hub.jpg](https://zh.wikipedia.org/wiki/File:USB_hub.jpg "fig:USB_hub.jpg")
USB集线器有时被集成到其它设备，例如[键盘](../Page/键盘.md "wikilink")、[显示器](../Page/显示器.md "wikilink")、[打印机或者计算机机箱的前端](../Page/打印机.md "wikilink")。实际上，当一台计算机主机有多个USB接口的时候，它们都来自于[主板内部一个或者两个主USB接口](../Page/主板.md "wikilink")，而不是相互独立的硬件。理论上，一个主USB接口可以最多连接127个外围设备。

## 物理安排

一个USB接口、一个USB集线器和若干个外围设备可以构建一个USB网络。

### 长度限制

根據USB
1.1標準，电缆长度被限制在3米之内。USB集线器可以被用作一个“[中继器](../Page/中继器.md "wikilink")”，可以每次延长大約5m电缆长度。

此外，內置[晶片的主動式電纜](../Page/晶片.md "wikilink")（active cable）也適合長距離的接駁。

## 供电

一个通过[总线供电的USB集线器使用了主板上对应USB接口的所有电流](../Page/总线.md "wikilink")。通常情况，它的运行并不需要额外的外部电源。但是，许多外围设备（尤其是在它们同时工作的时候）需要的电量比这种方式所能提供的电量更多，有时这样会导致某些耗电大的设备不能正常工作，例如[移动硬盘](../Page/移动硬盘.md "wikilink")。

每个主USB接口设计电压为5V，电流通常为100mA至500mA。通过USB集线器连接到这个主USB接口的外围设备和USB集线器自己将共享它所能提供的电流。当电流供不应求时，系统将会提示用户。

现在许多独立供电的USB集线器可以从外部电源增加供电来解决这个问题。

## 电子设计

大多数USB集线器使用一个或多个集成控制器芯片，其中有几个来自不同制造商的设计。最多支持四端口集线器的系统，但使用16端口集线器控制器集线器也可以在行业\[4\]，但也有一些16端口集线器实际上包含四个四端口级联控制器。一些集线器控制器的附加功能，包括控制端口LED（有时是自动的，有时是在电脑主机的控制下）和[PS/2鼠标和键盘的USB转换](../Page/PS/2.md "wikilink")。

[de:Universal Serial
Bus\#USB-Hubs](../Page/de:Universal_Serial_Bus#USB-Hubs.md "wikilink")

[Category:电脑](https://zh.wikipedia.org/wiki/Category:电脑 "wikilink")