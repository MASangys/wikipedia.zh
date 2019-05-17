**Modbus**是一种串行[通信协议](https://zh.wikipedia.org/wiki/通信协议 "wikilink")，是Modicon公司（现在的[施耐德电气](../Page/施耐德电气.md "wikilink")
Schneider
Electric）于1979年为使用[可编程逻辑控制器](../Page/可编程逻辑控制器.md "wikilink")（PLC）通信而发表。Modbus已经成为工业领域通信协议的[業界標準](https://zh.wikipedia.org/wiki/De_facto "wikilink")（De
facto），并且现在是工业电子设备之间常用的连接方式。\[1\] Modbus比其他通信协议使用的更广泛的主要原因有：

1.  公开发表并且无版权要求
2.  易于部署和维护
3.  对供应商来说，修改移动原生的位元或字节没有很多限制

Modbus允许多个 (大約240個)
设备连接在同一个网络上进行通信，举个例子，一个由测量温度和湿度的装置，并且将结果发送给[计算机](https://zh.wikipedia.org/wiki/计算机 "wikilink")。在[数据采集与监视控制系统](https://zh.wikipedia.org/wiki/数据采集与监视控制系统 "wikilink")（SCADA）中，Modbus通常用来连接监控计算机和[远程终端控制系统](https://zh.wikipedia.org/wiki/远程终端控制系统 "wikilink")（RTU）。

## 协议版本

Modbus协议目前存在用于[串口](https://zh.wikipedia.org/wiki/串口 "wikilink")、[以太网以及其他支持](../Page/以太网.md "wikilink")[互联网协议的网络的版本](https://zh.wikipedia.org/wiki/互联网协议 "wikilink")。

大多数Modbus设备通信通过串口[EIA-485物理层进行](../Page/EIA-485.md "wikilink")\[2\]。

对于串行连接，存在两个变种，它们在数值数据表示不同和协议细节上略有不同。Modbus RTU是一种紧凑的，采用二进制表示数据的方式，Modbus
ASCII是一种人类可读的，冗长的表示方式。这两个变种都使用[串行通訊](https://zh.wikipedia.org/wiki/串行通訊 "wikilink")（serial
communication）方式。RTU格式后续的命令／数据带有[循环冗余校验的校验和](https://zh.wikipedia.org/wiki/循环冗余校验 "wikilink")，而ASCII格式采用[纵向冗余校验的校验和](https://zh.wikipedia.org/wiki/纵向冗余校验 "wikilink")。被配置为RTU变种的节点不会和设置为ASCII变种的节点通信，反之亦然。

对于通过[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")（例如[以太网](../Page/以太网.md "wikilink")）的连接，存在多个Modbus/TCP变种，这种方式不需要[校验和计算](https://zh.wikipedia.org/wiki/校验和 "wikilink")。

对于所有的这三种通信协议在数据模型和功能调用上都是相同的，只有封装方式是不同的。

Modbus有一个扩展版本Modbus
Plus（Modbus+或者MB+），不過此協定是Modicon专有的，和Modbus不同。它需要一个专门的协处理器来处理類似[HDLC的高速令牌旋转](https://zh.wikipedia.org/wiki/HDLC "wikilink")。它使用1Mbit/s的[双绞线](../Page/双绞线.md "wikilink")，并且每个节点都有转换隔离装置，是一种采用转换／边缘触发而不是电压／水平触发的装置。连接Modbus
Plus到计算机需要特别的接口，通常是支持ISA（SA85），PCI或者PCMCIA总线的板卡。

## 通信和设备

Modbus协议是一個master/slave架構的協議。有一個節點是master節點，其他使用Modbus协议参与通信的節點是slave節點。每一个slave设备都有一个唯一的地址。在串行和MB+网络中，只有被指定为主节点的节点可以启动一个命令（在以太网上，任何一个设备都能发送一个Modbus命令，但是通常也只有一个主节点设备啟動指令）。

一个ModBus命令包含了打算执行的设备的Modbus地址。所有設備都會收到命令，但只有指定位置的设备会执行及回應指令（地址0例外，指定地址0的指令是廣播指令，所有收到指令的設備都會執行，不過不回應指令）。所有的Modbus命令包含了检查碼，以确定到达的命令没有被破坏。基本的ModBus命令能指令一个RTU改变它的寄存器的某个值，控制或者读取一个I/O端口，以及指挥设备回送一个或者多个其寄存器中的数据。

有许多modems和网关支持Modbus协议，因为Modbus协议很简单而且容易复制。它们当中一些为这个协议特别设计的。有使用有线、无线通信甚至短消息和GPRS的不同实现。不過设计者需要克服一些包括高延迟和时序的问题。

## 实现

几乎所有的实现都是官方标准的某种变体。不同的供应商设备之间可能无法正确的通信。一些主要的变化有：

  - 数据类型
      - IEEE标准的[浮点数](../Page/浮点数.md "wikilink")
      - 32位整型数
      - 8位数据
      - 混合数据类型
      - 整数中的位域
      - multipliers to change data to/from integer. 10, 100, 1000, 256
        ...

<!-- end list -->

  - 协议扩展
      - 16位元的從站地址
      - 32位的数据大小（1个地址 = 返回32位数据）
      - 字交换数据

## 限制

  - Modbus是在1970年末为[可编程逻辑控制器通信开发的](../Page/可编程逻辑控制器.md "wikilink")，这些有限的数据类型在那个时代是可以被PLC理解的，大型二进制对象数据是不支持的。

<!-- end list -->

  - 对节点而言，没有一个标准的方法找到数据对象的描述信息，举个例子，确定一个寄存器数据是否表示一个介于30-175度之间的温度。

<!-- end list -->

  - 由于Modbus是一个主／从协议，没有办法要求设备“报告异常”（构建在以太网的TCP/IP协议之上，被称为open-mbus除外）-
    主节点必须循环的询问每个节点设备，并查找数据中的变化。在带宽可能比较宝贵的应用中，这种方式在应用中消耗带宽和网络时间，例如在低速率的无线链路上。

<!-- end list -->

  - Modbus在一个数据链路上只能处理247个地址，这种情况限制了可以连接到主控站点的设备数量（再一次指出以太网TCP/IP除外）

<!-- end list -->

  - Modbus传输在远端通讯设备之间缓冲数据的方式进行，有对通信一定是连续的限制，避免了传输中的缓冲区漏洞的问题

<!-- end list -->

  - Modbus協議針對未經授權的命令或截取數據並無安全性。\[3\]

## 參考文獻

## 外部链接

  - [详细协议说明](http://www.modbus.org/specs.php)
  - [Modbus-IDA站点](http://www.modbus.org)

<!-- end list -->

  - 开源软件

<!-- end list -->

  - [一个基于GNU/Linux C开发的开源Modbus库](http://libmodbus.org/)
  - [为微控制器开发的免费的Modbus
    ASCII/RTU和TCP软件](http://www.freemodbus.org/index.php?lang=cn)。
  - C开发。新站点位置[<http://www.freemodbus.org>](http://www.freemodbus.org/)。商业支持版本在[<http://www.embedded-solutions.at>](http://www.embedded-solutions.at/)。
  - [NModbus](http://NModbus.com)是一个有例子的C\#实现版本
  - [Perl语言开发的Protocol::Modbus](https://web.archive.org/web/20081215041857/http://search.cpan.org/~cosimo/Protocol-Modbus-0.04/lib/Protocol/Modbus.pm)
  - [Perl语言开发的Modbus::Client](http://search.cpan.org/~dvklein/Modbus-Client-1.03/lib/Modbus/Client.pm)
  - [Ruby开发的Modbus
    master](http://www.messen-und-deuten.de/modbus.html)。公共领域的示例代码，可以很容易的用其他脚本语言重新开发。

[Category:工業乙太網](https://zh.wikipedia.org/wiki/Category:工業乙太網 "wikilink")
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")

1.
2.
3.