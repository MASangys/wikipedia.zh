**marshalling**可译作集结、结集、编码、编组、编集、安整、数据打包、列集等，是[计算机科学](../Page/计算机科学.md "wikilink")中把一个[对象的内存表示变换为适合存储或发送的数据格式的过程](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")。典型用于数据必须在一个程序的两个部分之间移动，或者必须从一个程序移动到另一个程序。Marshalling类似于[序列化](../Page/序列化.md "wikilink")，可用于一个对象与一个远程对象通信。逆过程被称作[unmarshalling](https://zh.wikipedia.org/wiki/unmarshalling "wikilink")。

## 用途

Marshalling被用于实现不同的[远程过程调用](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")（RPC）机制，这必须用到[进程间的数据传输](https://zh.wikipedia.org/wiki/进程 "wikilink")。stub必须把程序内存空间的本地格式的数据转换为格式(NDR，常称为数据的线上格式)，这种转换被称为marshaling数据。当客户端或服务器接受数据，必须从NDR格式把数据转换为程序的本地格式，这称为unmarshaling数据。\[1\]

Microsoft的[组件对象模型](../Page/组件对象模型.md "wikilink")（COM）中，当跨COM的套间（apartment）传递接口指针时，接口指针必须被marshalled。\[2\]\[3\]在[.NET Framework下](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，在非受管（unmanaged）类型与[CLR类型间](https://zh.wikipedia.org/wiki/Common_Language_Runtime "wikilink")，例如[P/Invoke过程](https://zh.wikipedia.org/wiki/Platform_Invocation_Services "wikilink")，必须做marshalling。\[4\]例如，C\#程序调用C语言写的DLL，其中函数参数使用字符串，就需要做marshalling。

使用[Mozilla应用程序框架](../Page/Mozilla应用程序框架.md "wikilink")的[XPCOM](../Page/XPCOM.md "wikilink")的脚本或应用程序，广泛使用marshalling。

### 例子

[Microsoft Windows系列操作系统](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，[Direct3D](../Page/Direct3D.md "wikilink")设备驱动程序是内核态驱动程序。DirectX运行时处理用户态API。用户态执行[系统调用来执行内核态操作](https://zh.wikipedia.org/wiki/系统调用 "wikilink")，需要CPU切换为内核态，这将耗费微秒级的时间来完成。\[5\]在此期间，CPU不能执行任何操作。为优化性能，必须极小化CPU这种模式切换。 Linux [OpenGL](../Page/OpenGL.md "wikilink")驱动程序分为两部分：内核驱动与用户空间驱动。用户空间驱动把所有[OpenGL](../Page/OpenGL.md "wikilink")命令翻译为机器码提交给[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")。为减少系统调用，用户空间驱动实现marshalling。当GPU的命令缓冲区（command buffer）装满了绘图数据，API简单地把请求绘制的调用存放在一个临时缓冲区；当命令缓冲区接近为空，执行内核模式切换一次性增加被存储的命令。

## 与序列化的比较

[序列化](../Page/序列化.md "wikilink")一个对象意味着把它的状态转化为[字节流](https://zh.wikipedia.org/wiki/字节流 "wikilink")，使这个字节流能反向转化为该对象的一个副本。

术语“marshal”被[Python](../Page/Python.md "wikilink")标准库认为与“序列化”同义。\[6\] 但与Java相关的RFC 2713不认为二者是同义：

## 参见

  -
  - [组件对象模型](../Page/组件对象模型.md "wikilink")

  - [CORBA](../Page/CORBA.md "wikilink")

  - [Pickle (Python)](../Page/序列化.md "wikilink")

  - [Protocol Buffers](../Page/Protocol_Buffers.md "wikilink")

## 注释

  - 此处使用的“Codebase”在Java相关的涵义下，指可装入对象代码的URL的列表。不是一般意义上存放源代码的。

## 参考文献

[Category:遠端程序呼叫](https://zh.wikipedia.org/wiki/Category:遠端程序呼叫 "wikilink")

1.  [MSDN:"Aliasing and Marshaling Attributes"](https://docs.microsoft.com/en-us/windows/desktop/Midl/aliasing-and-marshaling-attributes)
2.  [Apartments and COM Threading Models](http://www.ecs.syr.edu/faculty/fawcett/handouts/CSE775/presentations/apartments.ppt)
3.
4.  \[<http://msdn.microsoft.com/en-us/library/eaw10et3(VS.71>).aspx Interop Marshaling Overview\]
5.
6.