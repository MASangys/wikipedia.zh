> 本文内容由[SCPI](https://zh.wikipedia.org/wiki/SCPI)转换而来。


**可编程仪器标准命令**（，[縮寫](../Page/縮寫.md "wikilink")：****）定义了一套用于控制可编程测试测量仪器的标准语法和命令。

## 概述

SCPI于1990与[IEEE 488.2协议一起面世](https://zh.wikipedia.org/wiki/IEEE_488.2 "wikilink")。这套标准定义了可用于控制一切仪器的语法，命令结构以及数据格式。比如，通用的命令，如配置仪器参数的命令`CONFigure`，测量命令`MEASure`等。这些命令可用于任一仪器，并且同一类的命令属于同一子系统里。SCPI同时也定义了若干仪器的种类。比如，任何可控制的电源都会实现`DCPSUPPLY`基本功能类型。仪器的类别规定了它们会去实现什么样的子系统，当然也包括针对仪器的特定功能。

需要注意的是，SCPI并未定义物理层的传输信道的实现方法。虽然上文指出它最开始是和IEEE 488.2(即GPIB)面世的，但SCPI控制命令也可用于串口([RS-232](https://zh.wikipedia.org/wiki/RS-232 "wikilink"))，以太网，[USB](../Page/USB.md "wikilink")接口，[VXIbus等若干硬件总线](https://zh.wikipedia.org/wiki/VXIbus "wikilink")。

SCPI命令是[ASCII](../Page/ASCII.md "wikilink")字符串，通过物理传输层传入仪器。命令由一连串的关键字构成，有的还需要包括参数。在协议中，命令规定为如下形式：`CONFigure`。在使用中，即可以写全名，也可以仅写仅包含大写字母的缩写。通常仪器对于查询命令的反馈也为ASCII代码。在传输大量数据时，二进制数据也是可以使用的。

## 语法

SCPI命令大致分为两种功能，

改变仪器运行状态的*set*操作（打开/关闭电源输出），或者查询仪器状态的*query*操作（例如读取输出电压值）。查询命令一般以问号(?)结尾。有些命令即可以用来设置，也可以用来查询仪器。

相似的命令可以被归类成一种层状或树状结构。例如，任何读取仪器测量结果的命令均可以`MEASure`开头。特定的子命令以冒号同上级命令分隔开。例如，**测量直流电压**会是这样的形式：**`MEASure:VOLTage:DC?`**，或者**测量交流电流**会是这样的形式：**`MEASure:CURRent:AC?`**。

### 参数

有些命令需要额外的参数。参数一般跟在命令的后面，以空格隔开。例如，将某个仪器的触发模式设为*normal*的命令可写为：`TRIGer:MODe NORMal`。上述命令里`NORMal`即为参数。

### 串联命令

多个命令可用一条语句发送至仪器，只需在每条命令后使用分号`;`隔开即可。同时，除了第一条命令，随后的每条命令前必须加一个分号的前缀（除非其以星号开头）。例如，**测量直流电压和交流电流**可以写成一条语句：**`MEASure:VOLTage:DC?;:MEASure:CURRent:AC?`**。

## 缩略命令

可以只发送命令名中的大写字母部分。例如，命令`SYSTem:COMMunicate:SERial:BAUD 2400`将会设置RS-232通讯端口的[比特率](../Page/比特率.md "wikilink")为2400。这个命令可以简写为`SYST:COMM:SER:BAUD 2400`。

## 历史

首次发布于1990年\[1\]，SCPI的起源是[IEEE-488](../Page/IEEE-488.md "wikilink")的另外一个层。 IEEE-488.1指定了物理和电气总线，IEEE488.2指定了协议和数据格式，但是都没有指定仪器的指令。不同的制造商，甚至不同的型号、相同类型的仪器都需要使用不同的命令集。 SCPI创建了一个标准，可以在所有的制造商和所有型号中通用。它需要使用的IEEE488.2数据格式，但不必非得是-488.1总线\[2\] 在2002-2003年，SCPI协会投票成为[IVI基金会的一部分](https://zh.wikipedia.org/wiki/IVI基金会 "wikilink")（可互换虚拟仪器）\[3\].

## 参见

  - [IEEE 488](https://zh.wikipedia.org/wiki/IEEE_488 "wikilink") (GPIB)

  - (VISA)

  -
## 参考资料

## 外部链接

  -
  -
[Category:電子工程](https://zh.wikipedia.org/wiki/Category:電子工程 "wikilink") [Category:电子标准](https://zh.wikipedia.org/wiki/Category:电子标准 "wikilink") [Category:输入/输出](https://zh.wikipedia.org/wiki/Category:输入/输出 "wikilink") [Category:电子测试设备](https://zh.wikipedia.org/wiki/Category:电子测试设备 "wikilink")

1.
2.
3.