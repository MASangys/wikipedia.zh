> 本文内容由[UART](https://zh.wikipedia.org/wiki/UART)转换而来。


[UART_8250_Microchip.jpg](https://zh.wikipedia.org/wiki/File:UART_8250_Microchip.jpg "fig:UART_8250_Microchip.jpg")上的UART晶片8250\]\] **通用非同步收发传输器**（Universal Asynchronous Receiver/Transmitter，通常称为**UART**）是一种[异步收發傳輸器](../Page/异步串行通信.md "wikilink")，是[电脑](https://zh.wikipedia.org/wiki/电脑 "wikilink")[硬件](../Page/硬件.md "wikilink")的一部分，將数据通过[串行通信](../Page/串行通信.md "wikilink")和[並行通信间作传输转换](https://zh.wikipedia.org/wiki/並行通信 "wikilink")。UART通常用在与其他通信接口（如[EIA](https://zh.wikipedia.org/wiki/電子工業聯盟 "wikilink") [RS-232](https://zh.wikipedia.org/wiki/RS-232 "wikilink")）的连接上。

具体实物表现为独立的模組化芯片，或是微处理器中的內部周边裝置(peripheral)。一般和RS-232C规格的，类似[Maxim的MAX](https://zh.wikipedia.org/wiki/Maxim "wikilink")232之类的标准信号幅度变换芯片进行搭配，作为连接外部设备的接口。在UART上追加同步方式的序列信号变换电路的产品，被称为USART(Universal Synchronous Asynchronous Receiver Transmitter)。

## 功能

在手机设计和测试阶段被用来控制CPU与其余部分的訊息传送

UART是通用异步收发器（异步串行通信口）的英文缩写，它包括了[RS232](https://zh.wikipedia.org/wiki/RS232 "wikilink")、[RS449](https://zh.wikipedia.org/wiki/RS449 "wikilink")、[RS423](https://zh.wikipedia.org/wiki/RS423 "wikilink")、[RS422和](https://zh.wikipedia.org/wiki/RS422 "wikilink")[RS485等接口标准规范和总线标准规范](https://zh.wikipedia.org/wiki/RS485 "wikilink")，即UART是异步串行通信口的总称。而RS232、RS449、RS423、RS422和RS485等，是对应各种异步串行通信口的接口标准和总线标准，它规定了通信口的电气特性、传输速率、连接特性和接口的机械特性等内容。实际上是属于通信网络中的[實體層](https://zh.wikipedia.org/wiki/實體層 "wikilink")（Physical Layer）的概念，与通信协议没有直接关系。而通信协议，是属于通信网络中的[資料鏈結層](https://zh.wikipedia.org/wiki/資料鏈結層 "wikilink")（Data Link Layer）的概念。COM是PC（个人计算机）上，异步串行通信口的简写。由于历史原因，IBM的PC外部接口配置为RS232，成为实际上的PC界默认标准。所以，现在PC机的COM均为RS232。若配有多个异步串行通信口，则分别称为COM1、COM2... 。

## 原理

通用异步接受器-发送器(UART)把数据的字节按照比特顺序发送\[1\]。另一端的UART把比特组装为字节。每个UART包含一个[移位寄存器](../Page/移位寄存器.md "wikilink")。通过一根线或其他媒介的串行通信比通过多根线的并行通信具有更低成本。

UART通常并不直接产生或接收其他设备的外部信号。独立接口设备用于转换信号的[逻辑电平给UART](https://zh.wikipedia.org/wiki/逻辑电平 "wikilink")。

通信可以是单工、全双工或半双工。

### 数据帧

[UART_timing_diagram.svg](https://zh.wikipedia.org/wiki/File:UART_timing_diagram.svg "fig:UART_timing_diagram.svg")

空闲状态，即没有数据传输，是高电平。这是从（有线）电报时代的历史遗存。线路保持高电平表明線路与传输设备没有损坏。每个字符表示为一个帧，以逻辑低电平为开始比特，然后是数据比特，可选的奇偶校验比特，最后是一个或多个停止比特（逻辑高电平）。大部分应用都是先传最低位的数据比特（the least significant data bit），但也有例外（如打印终端）。

如果线路长期（至少大于传输一帧的时间）保持低电平，这被UART检测为Break condition.

### 接收器

UART硬件受一个内部时钟信号控制。该时钟信号是数据传输率的倍频，典型是比特率的8或16倍。接收器在每个时钟脉冲时测试接收到的信号状态是否为开始比特。如果开始比特的低电平持续传输1个比特所需时间的一半以上，则认为开始了一个数据帧的传输；否则，则认为是毛刺脉冲并忽略。到了下一个比特时间后，线路状态被采样并送入移位寄存器。约定的表示一个字符的所有数据比特(典型为5至8个比特）接收后，移位寄存器可被接收系统使用。UART将设置一个标记指出新数据可用，并产生一个[处理器中断请求主机处理器取走接收到的数据](https://zh.wikipedia.org/wiki/中断 "wikilink")。

简化的UART在开始比特下降沿开始重新同步时间，然后在每个数据比特的中心时刻采样。

UART的标准特性之一是在接收下一个字符时在缓冲区保存上一个接收到的字符。这种“双缓冲区”允许接收计算机用一个字符的传输时段来获取缓冲区内的上一个字符。许多UART有更大的FIFO缓冲区，允许主机一次处理多个字符，这特别适用于高传输数据率的串行通信同时处理器中断频率有限（通常中断间隔大于1毫秒）。

### 发送器

UART把一个字符放入移位寄存器，就开始产生一个数据帧。对于全双工通信，发送与接受使用不同的移位寄存器。使用更大的FIFO使得主机处理器或DMA放置多个字节后由UART自主完成传输。　UART用一个标志位表示busy。

### 应用

接收与发送的UART必须达成数据帧协议。如果接收方发现这方面错误，会向主机报告"framing error"标志。

典型的连接moderm的串口，使用8个比特表示一个字节，没有奇偶校验位，1个停止位。比特率除以10就是发送ASCII字符的传输速率。

超低成本的嵌入式系统没有UART而是用处理器来实现异步串行通信。

## UART 型號

一些早期用於 UART 的代表性 IC 型號如下表

<table>
<thead>
<tr class="header">
<th><p>Model</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>EXAR XR21V1410</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Intersil" title="wikilink">Intersil</a> 6402</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Z8440</p></td>
<td><p>2000 kbit/s. Async, <a href="https://zh.wikipedia.org/wiki/Binary_Synchronous_Communications" title="wikilink">Bisync</a>, <a href="https://zh.wikipedia.org/wiki/Synchronous_Data_Link_Control" title="wikilink">SDLC</a>, <a href="https://zh.wikipedia.org/wiki/HDLC" title="wikilink">HDLC</a>, <a href="../Page/X.25.md" title="wikilink">X.25</a>. <a href="../Page/循環冗餘校驗.md" title="wikilink">CRC</a>. 4 位元組接收緩衝區， 2 位元組發送緩衝區， <a href="https://zh.wikipedia.org/wiki/DMA" title="wikilink">DMA</a>.[2]</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Intel" title="wikilink">Intel</a> <a href="https://zh.wikipedia.org/wiki/8251" title="wikilink">8251</a></p></td>
<td><p>USART，非同步通信最高 19.2kbit/s，同步通信最高 64kbit/s[3]</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/美國國家半導體.md" title="wikilink">NS</a> INS<a href="../Page/8250_UART.md" title="wikilink">8250</a></p></td>
<td><p>緩衝區只有 1 位元組的老舊型式</p></td>
</tr>
<tr class="odd">
<td><p>Motorola 6850</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Rockwell 65C52</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>16450</p></td>
<td><p>具有兩組 UART， 代號 164 = 82 x 2 暗示了它的特性。 以下 16 開頭的都有兩組 UART</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>推出後發現 FIFO 存在 bug，隨即以 16550A 取代</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>16 位元組緩衝區，可設為 TL=1,4,8,14; 標準最高速度 115.2 kbit/s, 也有可達 230.4 或 460.8 kbit/s 的，支援 DMA [4]</p></td>
</tr>
<tr class="even">
<td><p>16C552</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>16650</p></td>
<td><p>32 位元組緩衝區，最高速度 460.8 kbit/s</p></td>
</tr>
<tr class="even">
<td><p>16750</p></td>
<td><p>64 位元組發送緩衝區， 56 位元組接收緩衝區，最高速度 921.6 kbit/s</p></td>
</tr>
<tr class="odd">
<td><p>16850</p></td>
<td><p>128 位元組緩衝區，最高速度 460.8 kbit/s 或 1500 kbit/s</p></td>
</tr>
<tr class="even">
<td><p>16C850</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>16950</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>1 k 位元組緩衝區</p></td>
</tr>
</tbody>
</table>

## 資料來源

  - 摘錄自：https://web.archive.org/web/20070717231509/http://hk.dictionary.yahoo.com/search.html?s=UART

## 參考資料與附註

## 外部連結

  - [16550D UART的Datasheet](https://web.archive.org/web/20080613095627/http://www.national.com/ds/PC/PC16550D.pdf)

  - [Freebsd Tutorials](http://www.freebsd.org/doc/en_US.ISO8859-1/articles/serial-uart/) (includes standard signal definitions, history of UART ICs, and pinout for commonly used DB25 connector)

  - [UART Tutorial for Robotics](http://www.societyofrobots.com/microcontroller_uart.shtml) (contains many practical examples)

[Category:資料傳輸](https://zh.wikipedia.org/wiki/Category:資料傳輸 "wikilink")

1.  Adam Osborne, *An Introduction to Microcomputers Volume 1: Basic Concepts*, Osborne-McGraw Hill Berkeley California USA, 1980  pp. 116–126
2.   090529 zilog.com
3.  [Intel 8251A datasheet](http://map.grauw.nl/resources/midi/intel_8251.pdf)
4.   090529 cs.utk.edu