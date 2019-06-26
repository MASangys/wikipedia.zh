**Micro Bit**（也叫做**BBC Micro
Bit**，或风格化为**micro:bit**）是基于[ARM架构的](https://zh.wikipedia.org/wiki/ARM架构 "wikilink")[嵌入式系统](../Page/嵌入式系统.md "wikilink")，由[BBC设计用于](https://zh.wikipedia.org/wiki/BBC "wikilink")[英国的计算机教育](https://zh.wikipedia.org/wiki/英国 "wikilink")。

电路板大小为，拥有1个[ARM
Cortex-M0处理器](https://zh.wikipedia.org/wiki/ARM_Cortex-M0 "wikilink")，加速度传感器和磁力传感器，蓝牙通信和USB连接编程能力，由25个[LED组成的显示屏](https://zh.wikipedia.org/wiki/LED "wikilink")，2个可编程按钮，可以用USB或者外部电池包来供电\[1\]。设备输入和输出包括环孔连接器和边缘连接器。

## 硬件

[Micro_bit_3_axes_de_l_accéléromètre.png](https://zh.wikipedia.org/wiki/File:Micro_bit_3_axes_de_l_accéléromètre.png "fig:Micro_bit_3_axes_de_l_accéléromètre.png")
设备大小可描述为[信用卡的一半大小](../Page/信用卡.md "wikilink")\[2\]，，实测为，它包括有:

  - [nRF51](https://zh.wikipedia.org/wiki/nRF51 "wikilink")822-QFAA-R
    rev 3 [SoC](https://zh.wikipedia.org/wiki/SoC "wikilink") –  32-bit
    [ARM
    Cortex-M0](https://zh.wikipedia.org/wiki/ARM_Cortex-M0 "wikilink")[微控制器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，包含了[闪存](../Page/闪存.md "wikilink")，[静态内存](../Page/静态随机存取存储器.md "wikilink")，集成了[蓝牙低功耗协议栈和Nordic专有](../Page/蓝牙低功耗.md "wikilink")[RF](https://zh.wikipedia.org/wiki/射频 "wikilink")[无线传输协议的模块](https://zh.wikipedia.org/wiki/无线电 "wikilink")\[3\]\[4\]\[5\]\[6\]\[7\]，nRF51由于[低功耗设计](../Page/低功耗设计.md "wikilink")，不内置SysTick。

  - NXP/[Freescale](https://zh.wikipedia.org/wiki/Freescale "wikilink")
    KL26Z [MCU](https://zh.wikipedia.org/wiki/微控制器单元 "wikilink") –
    32-bit [ARM
    Cortex-M0+](https://zh.wikipedia.org/wiki/ARM_Cortex-M0+ "wikilink")[微控制器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，包含了全速[USB](../Page/USB.md "wikilink")
    2.0
    [OTG控制器等](../Page/USB_On-The-Go.md "wikilink")。它担任[串行及调试适配器](https://www.nxp.com/support/developer-resources/run-time-software/kinetis-developer-resources/ides-for-kinetis-mcus/opensda-serial-and-debug-adapter:OPENSDA)，是在用户计算机和[nRF51目标MCU之间的](https://zh.wikipedia.org/wiki/nRF51 "wikilink")[接口MCU](https://zh.wikipedia.org/wiki/接口 "wikilink")，用户[PC通过](../Page/个人电脑.md "wikilink")[USB](../Page/USB.md "wikilink")
    [HID类连接经由接口MCU对目标MCU进行](../Page/人体学接口设备.md "wikilink")[调试](https://zh.wikipedia.org/wiki/调试 "wikilink")（[JTAG](../Page/JTAG.md "wikilink")-AP）和刷写程序（MEM-AP）\[8\]，并通过CDC类连接经由接口MCU与目标MCU进行[串行通信](../Page/串行通信.md "wikilink")\[9\]。

  - 三轴[加速度传感器](../Page/加速規.md "wikilink") –
    经由[I²C](../Page/I²C.md "wikilink")[总线](../Page/总线.md "wikilink")\[10\]，v1.3\*版是NXP/[Freescale](https://zh.wikipedia.org/wiki/Freescale "wikilink")
    MMA8652，v1.5版是运动传感器[ST](https://zh.wikipedia.org/wiki/意法半导体 "wikilink")
    LSM303AGR。

  - [磁力传感器](../Page/磁强计.md "wikilink") –
    经由[I²C](../Page/I²C.md "wikilink")[总线](../Page/总线.md "wikilink")，可充当[罗盘等](../Page/指南针.md "wikilink")\[11\]，v1.3\*版是NXP/[Freescale](https://zh.wikipedia.org/wiki/Freescale "wikilink")
    MAG3110，v1.5版并入运动传感器[ST](https://zh.wikipedia.org/wiki/意法半导体 "wikilink")
    LSM303AGR。

  - 前面有由25个[LED构成](https://zh.wikipedia.org/wiki/LED "wikilink")5×5阵列的[显示屏](https://zh.wikipedia.org/wiki/显示屏 "wikilink")\[12\]。

  - 3个触觉[按钮](https://zh.wikipedia.org/wiki/按钮 "wikilink")，前面2个为用户按钮A和B，背面1个为reset\[13\]。

  - 背面有[MicroUSB连接器](https://zh.wikipedia.org/wiki/USB#USB接头 "wikilink")，和[电池连接器](../Page/电池.md "wikilink")\[14\]\[15\]\[16\]\[17\]。

I/O包括环孔连接器：3个[GPIO](https://zh.wikipedia.org/wiki/GPIO "wikilink")（P0、P1、P2），1个[电源正极](https://zh.wikipedia.org/wiki/电源 "wikilink")（3V），1个[接地即电源负极](../Page/接地.md "wikilink")（GND），它们接纳或4mm\[18\]；（也称为[金手指](https://zh.wikipedia.org/wiki/金手指 "wikilink")）的标号，依次为micro:bit设备抽象层（DAL）指定的：P3、P0、P4-P7、P1、P8-P12、P2、P13-P16、3V（3个）、P19-P20、GND（3个），共19个可设置的[GPIO](https://zh.wikipedia.org/wiki/GPIO "wikilink")（未引出内部使用的P17、P18）。其中5个可完全自由使用（P0-P2、P8、P16），6个共用于LED阵列显示屏（P3、P4、P6、P7、P9、P10），2个共用于按钮A、B（P5、P11），1个保留给[无障碍设置输入](https://zh.wikipedia.org/wiki/无障碍 "wikilink")（P12）；可设置出1路[SPI](https://zh.wikipedia.org/wiki/串行外设接口总线 "wikilink")[总线](../Page/总线.md "wikilink")（P13-P15），1路[I²C](../Page/I²C.md "wikilink")[总线](../Page/总线.md "wikilink")（P19-P20），1对[UART](../Page/UART.md "wikilink")[串行收发](../Page/串行通信.md "wikilink")；可设置出6个[模拟输入](https://zh.wikipedia.org/wiki/模拟信号 "wikilink")（P0-P4、P10），3个触摸感应输入（P0-P2），3个[PWM输出](https://zh.wikipedia.org/wiki/脉冲宽度调制 "wikilink")\[19\]。

在连接了USB的情况下，KL26Z负责对这个[PCB余下部份供电](../Page/印刷电路板.md "wikilink")，将USB供给的5V±5%电压规整降至3.3V。KL26Z限定最大电流120mA，电源环孔或针脚输出可能只余下90mA。在使用电池连接器供电时，电池不为KL26Z供电，[nRF51供电和电源环孔或](https://zh.wikipedia.org/wiki/nRF51 "wikilink")[针脚输出都来自电池](https://zh.wikipedia.org/wiki/针脚 "wikilink")。还可以谨慎的从电源环孔或针脚向micro:bit供电，从电池连接器、环孔或针脚择一供电时都不可超过3.6V极值\[20\]。

## 软件

Micro
Bit的软件是使用[ARM](https://zh.wikipedia.org/wiki/ARM_Holdings "wikilink")
[Mbed开发工具建立的](../Page/Mbed.md "wikilink")\[21\]，并且采用了其编程接口[DAPLink](https://www.mbed.com/en/platform/hardware/prototyping-production/daplink/daplink-on-kl26z/)，设备在连接到计算机的时候，是作为一个[USB大容量存储设备而出现的](https://zh.wikipedia.org/wiki/USB大容量存储设备 "wikilink")\[22\]。[兰卡斯特大学开发了micro](../Page/兰卡斯特大学.md "wikilink"):bit[运行时系统](https://zh.wikipedia.org/wiki/运行时系统 "wikilink")（有时称为设备抽象层），提供了[事件驱动编程和](https://zh.wikipedia.org/wiki/事件驱动 "wikilink")[键-值存储机制](../Page/键-值存储.md "wikilink")\[23\]，采用了的[nRF51
SDK](https://github.com/ARMmbed/nrf51-sdk)和[S110
SoftDevice](http://infocenter.nordicsemi.com/topic/com.nordic.infocenter.softdevices51/dita/softdevices/s110/s110.html?cp=3_7_0)，以及[Mbed的](../Page/Mbed.md "wikilink")[BLE
API](https://os.mbed.com/teams/Bluetooth-Low-Energy/)，并与[蓝牙技术联盟协作开发了定制的BLE](https://zh.wikipedia.org/wiki/蓝牙技术联盟 "wikilink")
[profile](https://lancaster-university.github.io/microbit-docs/ble/profile/)。用户用[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")/[C++语言编写的应用程序](../Page/C++.md "wikilink")，可以通过Mbed在线编译器\[24\]、[Mbed
CLI](https://github.com/ARMmbed/mbed-cli)、[GNU MCU
Eclipse](https://gnu-mcu-eclipse.github.io/)或[Keli
µVISION](http://www.keil.com/support/docs/3645.htm)等开发工具，利用[ARM编译器](https://developer.arm.com/products/software-development-tools/compilers/arm-compiler/documentation/version-5)或[GNU
ARM工具链](https://developer.arm.com/open-source/gnu-toolchain)来进行编译，编译后的目标代码接着通过USB连接或手机[app蓝牙连接而被刷写到设备中](https://zh.wikipedia.org/wiki/app "wikilink")。

在[micro:bit基金会网站](https://microbit.org/code/)上有侧重于教育的2个官方[在线代码](https://zh.wikipedia.org/wiki/在线 "wikilink")[编辑器](../Page/文本编辑器.md "wikilink")：

  - [Microsoft
    MakeCode](https://makecode.com/)，是[JavaScript](../Page/JavaScript.md "wikilink")
    Blocks编辑器和浏览器内[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")，曾经称为[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")
    PXT编辑器，[PXT](https://makecode.com/docs)（编程实验工具包）完全在用户[浏览器中运行](https://zh.wikipedia.org/wiki/浏览器 "wikilink")，它通过内置的[ARM
    Thumb](https://zh.wikipedia.org/wiki/ARM架构 "wikilink")[编译器生成](https://zh.wikipedia.org/wiki/编译器 "wikilink")[目标代码](../Page/目标代码.md "wikilink")，浏览器同时还装载了预编译的micro:bit[运行时系统](https://zh.wikipedia.org/wiki/运行时系统 "wikilink")，从而与用户目标代码[链接成最终目标代码](../Page/链接器.md "wikilink")，还可以在刷写入设备之前在内置的micro:bit[模拟器中见到它的运行效果](https://zh.wikipedia.org/wiki/模拟器 "wikilink")\[25\]。
  - [MicroPython](../Page/MicroPython.md "wikilink")，是完整的[Python](../Page/Python.md "wikilink")
    3语言实现，包含了Python[标准库的一个小子集](../Page/标准库.md "wikilink")，带有[音乐编程语言和](../Page/音阶.md "wikilink")[语音合成器](../Page/语音合成.md "wikilink")，本地[文件系统](../Page/文件系统.md "wikilink")，被推荐用于做进一步的编程[实验](https://zh.wikipedia.org/wiki/实验 "wikilink")\[26\]\[27\]。用户可以在[web编辑器中写Python](https://zh.wikipedia.org/wiki/web "wikilink")[脚本](../Page/脚本语言.md "wikilink")，其[源代码被附加于MicroPython实现](../Page/源代码.md "wikilink")[固件的后面](https://zh.wikipedia.org/wiki/固件 "wikilink")，把这个最终复合固件下载后刷写到设备中，MicroPython运行后将附随的源代码编译成[字节码并在](https://zh.wikipedia.org/wiki/字节码 "wikilink")[虚拟机中运行](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")，由于内存限制在MicroPython内未启用[nRF51的蓝牙协议栈](https://zh.wikipedia.org/wiki/nRF51 "wikilink")\[28\]。可以通过USB串行连接访问MicroPython
    [REPL](../Page/读取﹣求值﹣输出循环.md "wikilink")，从而可直接交互于Micro
    Bit的外设。MicroPython的编辑器还有给初学者在[PC上用](../Page/个人电脑.md "wikilink")[Mu](http://codewith.mu/)，和[在线blocks编辑器](https://zh.wikipedia.org/wiki/在线 "wikilink")[EduBlocks](https://microbit.edublocks.org)。

针对micro:bit的其他开发工具有：

  - [Espruino](http://www.espruino.com/MicroBit)，是面向[网络应用开发的](https://zh.wikipedia.org/wiki/网络应用 "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")[固件](https://zh.wikipedia.org/wiki/固件 "wikilink")\[29\]，解释器有运行状态持久保存和复位机制，支持[内联汇编语言](../Page/内联汇编.md "wikilink")，由于将micro:bit的内存大量用于了蓝牙功能，不提供[ES6特征和高级库函数](../Page/ECMAScript.md "wikilink")。可以通过USB串行连接，或通过在支持了[Web
    Bluetooth](https://developer.mozilla.org/en-US/docs/Web/API/Web_Bluetooth_API)的浏览器中运行[Espruino
    Web IDE](https://www.espruino.com/ide/)对它进行交互访问，IDE也有可选的blocks编辑器。
  - [Arduino
    nRF5](https://github.com/sandeepmistry/arduino-nRF5/)，是针对基于Nordic半导体nRF5开发板的[Arduino](../Page/Arduino.md "wikilink")
    [Core](https://www.arduino.cc/en/Guide/Cores)。
  - [Node.js库](../Page/Node.js.md "wikilink")：[node-bbc-microbit](https://github.com/sandeepmistry/node-bbc-microbit)，从Node.js用BLE控制micro:bit；[bbc-microbit-io](https://github.com/sandeepmistry/node-bbc-microbit-io)，针对micro:bit的[Johnny-Five](http://johnny-five.io/)（JavaScript[机器人及](../Page/机器人.md "wikilink")[IoT平台](https://zh.wikipedia.org/wiki/IoT "wikilink")）IO插件。

除了micro:bit运行时系统所采用的[Mbed
OS 2](https://os.mbed.com/handbook/Homepage)，以及nRF51
SDK支持的[CMSIS-RTOS
RTX](http://www2.keil.com/mdk5/cmsis/rtx)\[30\]\[31\]\[32\]，可以在micro:bit上运行的[嵌入式操作系统还有](https://zh.wikipedia.org/wiki/嵌入式操作系统 "wikilink")：[Zephyr](../Page/Zephyr.md "wikilink")，，[RIOT](../Page/RIOT.md "wikilink")。

针对micro:bit的其他编程语言有：u[Lisp](https://zh.wikipedia.org/wiki/Lisp "wikilink")\[33\]、Mecrisp
[Forth](../Page/Forth.md "wikilink")\[34\]、[Free
Pascal](../Page/Free_Pascal.md "wikilink")\[35\]、[GNAT](https://zh.wikipedia.org/wiki/GNAT "wikilink")
[Ada](../Page/Ada.md "wikilink")\[36\]、Tiny[Go](../Page/Go.md "wikilink")\[37\]、[Rust](../Page/Rust.md "wikilink")\[38\]等。其他交互语言有[Scratch](../Page/Scratch.md "wikilink")3.0\[39\]、Dyalog
[APL](../Page/APL語言.md "wikilink")\[40\]、[Simulink编码器支持包](../Page/Simulink.md "wikilink")\[41\]、模块\[42\]、[App
Inventor](https://zh.wikipedia.org/wiki/App_Inventor "wikilink") +
IoT\[43\]、BlockyTalkyBLE\[44\]等。在官方网站上，截止到2018年底还链接了可用的4个遗留的编辑器。

## 历史

Micro
Bit被设计用来鼓励儿童活跃的投入为计算机书写软件和建造新东西，而不是成为媒体的消费者\[45\]。它被设计为并肩工作于其他系统，比如[Raspberry
Pi](https://zh.wikipedia.org/wiki/Raspberry_Pi "wikilink")\[46\]，它也建造在BBC在计算机教育中的[BBC
Micro这项遗产之上](../Page/BBC_Micro.md "wikilink")\[47\]。

### 合作伙伴

Micro Bit的开发汇集了众多伙伴与BBC一起工作：

  - [ARM控股](https://zh.wikipedia.org/wiki/ARM_Holdings "wikilink") –
    提供[Mbed开发工具](../Page/Mbed.md "wikilink")、[固件和编译器服务](https://zh.wikipedia.org/wiki/固件 "wikilink")\[48\]。

  - –
    为这个设备提供目标[MCU和](https://zh.wikipedia.org/wiki/微控制器单元 "wikilink")[BLE](../Page/蓝牙低功耗.md "wikilink")[协议栈](../Page/协议栈.md "wikilink")\[49\]。

  - [NXP半导体](../Page/恩智浦半导体.md "wikilink") –
    提供接口[MCU](https://zh.wikipedia.org/wiki/微控制器单元 "wikilink")、USB控制器和传感器\[50\]。

  - [蓝牙技术联盟](https://zh.wikipedia.org/wiki/蓝牙技术联盟 "wikilink") –
    与[兰卡斯特大学协作开发定制的Bluetooth](../Page/兰卡斯特大学.md "wikilink")
    LE profile\[51\]。

  - [兰卡斯特大学](../Page/兰卡斯特大学.md "wikilink") –
    开发这个设备的[运行时系统](https://zh.wikipedia.org/wiki/运行时系统 "wikilink")，与[蓝牙技术联盟协作开发定制的Bluetooth](https://zh.wikipedia.org/wiki/蓝牙技术联盟 "wikilink")
    LE profile\[52\]。

  - [微软](../Page/微软.md "wikilink") –
    贡献了自己在[TypeScript等方面的软件专门知识](../Page/TypeScript.md "wikilink")。它在其TouchDevelop平台上为这个设备定制了专题项目\[53\]，还开发了这个设备的教师训练材料\[54\]。

  - [Python软件基金会](https://zh.wikipedia.org/wiki/Python软件基金会 "wikilink")
    –
    将[MicroPython](../Page/MicroPython.md "wikilink")[移植到这个设备](https://zh.wikipedia.org/wiki/移植_\(软件\) "wikilink")，建立本机和基于web的初学者友好的Python代码编辑器，出品大量教育资源并为教师建立有组织的开发者领导的工场\[55\]\[56\]。

  - – 监督这个设备的制造\[57\]。

  - Technology Will Save Us – 设计这个设备的物理外观，编写出厂演示程序\[58\]。

  - [三星集团](https://zh.wikipedia.org/wiki/三星集团 "wikilink") –
    开发[Android](../Page/Android.md "wikilink")
    [app并帮助把设备连接到](https://zh.wikipedia.org/wiki/app "wikilink")[智能手机和](../Page/智能手机.md "wikilink")[平板电脑](https://zh.wikipedia.org/wiki/平板电脑 "wikilink")\[59\]。

  - ScienceScope – 开发[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")
    [app并把这个设备发布到学校](https://zh.wikipedia.org/wiki/app "wikilink")\[60\]。

  - [巴克莱银行](../Page/巴克莱银行.md "wikilink") – 提供产品递送和外展活动\[61\]。

  - [惠康基金会](../Page/惠康基金会.md "wikilink") – 为教师和学校提供学习机会\[62\]。

  - STEMNET – 提供STEM大使来支持学校和教师并联系第三方比如Bloodhound
    SSC和[Cisco](https://zh.wikipedia.org/wiki/Cisco_Systems "wikilink")\[63\]。

  - [思科系统](../Page/思科系统.md "wikilink") – 向STEMNET提供人员和资源来资助国家首展\[64\]。

  - Creative Digital Solutions – 开发教师材料，工场和外展活动\[65\]。

  - Code Club – 建立一系列引导9到11岁儿童的编码资源并通过志愿者递送运行编码俱乐部\[66\]。

  - Kitronik – 为BBC micro:bit生产并分发5500份e-textile
    kit给英国内的D\&T教师。设计硬件比如Motor Driver
    board来允许BBC
    micro:bit控制设备比如[电动机和](../Page/电动机.md "wikilink")[伺服系统](https://zh.wikipedia.org/wiki/伺服 "wikilink")\[67\]。

  - Tangent Design – 建立BBC micro:bit品牌标识并开发web站点\[68\]。

建立了[原型设备和软件栈](https://github.com/bbcmicrobit/prototype)，在最初宣布中进了展示\[69\]，在学校中测试了这项提议，并为合作伙伴后续建设提供了参考规定\[70\]。

### Microbit教育基金会

在成功的于英国推出了micro:bit之后，[BBC将BBC](https://zh.wikipedia.org/wiki/BBC "wikilink")
micro:bit的未来交付给新成立的非营利性Micro:bit[教育](../Page/教育.md "wikilink")[基金会](../Page/基金会.md "wikilink")\[71\]。从BBC到Micro:bit教育基金会的迁移首先是将官方网站从www.microbit.co.uk转移到了<https://microbit.org/>。

## 制造

负责管理BBC micro:bit的制造，监督各厂商进货所有部件并在各自的加工工厂生产micro:bit\[72\]。

## 参见

  - [Arduino](../Page/Arduino.md "wikilink")
  - [Raspberry
    Pi](https://zh.wikipedia.org/wiki/Raspberry_Pi "wikilink")

## 书籍

  - [micro:bit IoT In
    C](https://www.iot-programmer.com/index.php/books/micro-bit-iot-in-c)
  - [Networking with the
    micro:bit](https://microbit.nominetresearch.uk/networking-book/)

## 引用

## 外部链接

  -
  -
  -
  -
  -
  - [The micro:bit runtime (developed by Lancaster
    University)](https://lancaster-university.github.io/microbit-docs/#)

  - [Bitty Blue provides a collection of fun things to do with the
    micro:bit and Bluetooth. Available for Android and
    iOS.](http://www.bittysoftware.com/apps/bitty_blue.html)

  - [Bluetooth troubleshooting
    guide](https://support.microbit.org/support/solutions/articles/19000069393-bluetooth-troubleshooting-guide)

  - [Reset the micro:bit to factory
    defaults](https://support.microbit.org/support/solutions/articles/19000021613-reset-the-micro-bit-to-factory-defaults)

[Category:嵌入式系统](https://zh.wikipedia.org/wiki/Category:嵌入式系统 "wikilink")
[Category:微控制器](https://zh.wikipedia.org/wiki/Category:微控制器 "wikilink")

1.

2.  [Wired: Micro bit hands
    on](https://www.wired.co.uk/news/archive/2015-03/12/bbc-micro-bit-hands-on)

3.
4.

5.

6.

7.

8.  [CMSIS DAP](https://os.mbed.com/handbook/CMSIS-DAP).

9.  [Serial Communication with a
    PC](https://os.mbed.com/handbook/SerialPC).

10.
11.
12.
13.
14.
15.
16.

17.

18.

19.

20. [Power Supply.](http://tech.microbit.org/hardware/powersupply/)

21. [BBC micro:bit on ARM
    Mbed](https://os.mbed.com/platforms/Microbit/).

22.

23. [micro:bit
    runtime.](https://lancaster-university.github.io/microbit-docs/)

24.
25. [In Browser
    Compilers.](http://tech.microbit.org/software/in_browser_compiler/)

26.

27.

28. [Python on the
    micro:bit.](http://tech.microbit.org/software/micropython/)

29. [The Espruino project enables JavaScript for embedded development on
    multiple levels.](http://embeddednodejs.com/espruino/)

30. [The SDK provides an implementation of an extension to ARM Keil RTX
    that is referred to as tickless mode. It allows waking up the MCU
    only when it is
    needed.](http://infocenter.nordicsemi.com/index.jsp?topic=%2Fcom.nordic.infocenter.sdk51.v10.0.0%2Frtx.html&cp=4_0_11_3_19_0)

31. [CMSIS-RTOS is the fundation of the offical mbed
    RTOS.](https://os.mbed.com/handbook/CMSIS-RTOS)

32. [It is possible to use mbed 5 without the whole of mbed OS, and this
    would be a good step for
    micro:bit.](https://github.com/lancaster-university/microbit-dal/issues/224)

33.

34.

35.

36.

37.

38.

39.

40.

41.

42.

43.

44.

45.
46.

47.

48.

49.
50.
51. <http://www.electronicsweekly.com/news/bluetooth-sig-creates-stack-for-bbc-microbit-2016-03/>

52.
53.

54.
55.

56.

57.
58.
59.
60.
61.
62.
63.
64.
65. <https://www.microbit.co.uk/partners>

66.
67.
68.
69.

70.

71.

72. [Where to buy the BBC micro:bit and BBC micro:bit
    accessories](http://microbit.org/resellers/).