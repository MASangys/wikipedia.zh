**TockOS**是一款较新近的专用于[无线传感器网络节点的一款开源实时操作系统](https://zh.wikipedia.org/wiki/无线传感器 "wikilink")。和其他[实时操作系统](../Page/实时操作系统.md "wikilink")不同，它使用类型安全而性能接近于[C语言的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[Rust](../Page/Rust.md "wikilink")语言编写内核，而且也是第一个这样做的小型实时操作系统。\[1\]这样一来，TockOS的大部分接口都是[类型安全且模块化的](https://zh.wikipedia.org/wiki/类型安全 "wikilink")。由于Rust语言本身提供类型安全性，因此可以使用Rust扩展内核态功能而不至造成[信息安全](../Page/信息安全.md "wikilink")问题。\[2\] \[3\]\[4\]

## 内核特性\[5\]

  - [合作性调度的实时内核](https://zh.wikipedia.org/wiki/合作性调度 "wikilink")；
  - 支持类型安全的Rust胶囊（Capsule）内核扩展；
  - 支持互相硬件隔离的C语言[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")（Processes）；
  - 支持[系统调用接口](https://zh.wikipedia.org/wiki/系统调用 "wikilink")；
  - 支持硬件内存保护\[6\]；
  - 对常见芯片外设（如GPIO、ADC、串口等）均有框架支持；
  - 具备[低功耗支持](https://zh.wikipedia.org/wiki/低功耗 "wikilink")；
  - 具备[网络协议栈支持](https://zh.wikipedia.org/wiki/网络协议栈 "wikilink")；
  - 具备USB协议栈支持。

## 芯片组支持

Tock支持下列架构：

  - TI CC26X2
  - Nordic nRF51、nRF52、nRF5x
  - Atmel SAM4L\[7\]
  - TI TM4C129x

## 版本发布

  - 2016年5月9日，TockOS的OSDI会议版本发布。这是TockOS的第一个版本。
  - 2018年2月13日，TockOS 1.0 发布。这是第一个滚动发布，增加了nRF系列和TM4C系列芯片支持，并且包括了一些支持1.0版本系统调用接口的驱动库。
  - 2018年4月25日，TockOS 1.1 发布。这个版本解决了1.0以来的一些问题，并且增强了低功耗能力。
  - 2018年6月14日，TockOS 1.2 发布。这个版本修复了一些问题，并支持了NRF52840等带USB接口的芯片。

## 另请参见

  - [嵌入式系统](../Page/嵌入式系统.md "wikilink")
  - [微控制器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")
  - [物联网](../Page/物联网.md "wikilink")

## 参考资料

<references />

[Category:实时操作系统](https://zh.wikipedia.org/wiki/Category:实时操作系统 "wikilink") [Category:嵌入式操作系统](https://zh.wikipedia.org/wiki/Category:嵌入式操作系统 "wikilink") [Category:ARM_操作系统](https://zh.wikipedia.org/wiki/Category:ARM_操作系统 "wikilink")

1.
2.
3.
4.
5.
6.
7.