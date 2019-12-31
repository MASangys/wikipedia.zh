> 本文内容由[I²C](https://zh.wikipedia.org/wiki/I²C)转换而来。


[I2C.svg](https://zh.wikipedia.org/wiki/File:I2C.svg "fig:I2C.svg") **I²C**（**Inter-Integrated Circuit**）字面上的意思是**積體電路之間**，它其實是**I²C Bus**簡稱，所以中文應該叫**-{zh-hant:積體電路匯流排;zh-hans:集成电路总线}-**，它是一種-{zh:串列;zh-hant:串列;zh-hans:串行}-通訊匯流排，使用多主從架構，由[飛利浦](../Page/飛利浦.md "wikilink")公司在1980年代為了讓[主機板](https://zh.wikipedia.org/wiki/主機板 "wikilink")、[嵌入式系統或](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")[手機用以連接低速週邊裝置而發展](https://zh.wikipedia.org/wiki/手機 "wikilink")。I²C的正確讀法為“I平方C”（"I-squared-C"），而“I二C”（"I-two-C"）則是另一種錯誤但被廣泛使用的讀法。自2006年10月1日起，使用I²C協定已經不需要支付專利費，但製造商仍然需要付費以取得I²C從屬裝置位址。

## 設計概說

I²C只使用兩條雙向[漏极开路](https://zh.wikipedia.org/wiki/漏极开路 "wikilink")（Open Drain）（-{zh:串列;zh-hant:串列;zh-hans:串行}-資料（SDA）及-{zh:串列;zh-hant:串列;zh-hans:串行}-時脈（SCL））並利用[電阻將電位上拉](https://zh.wikipedia.org/wiki/電阻 "wikilink")。I²C允許相當大的工作電壓範圍，但典型的電壓準位為+3.3V或+5v。

I²C的參考設計使用一個7位元長度的[位址空間但保留了](https://zh.wikipedia.org/wiki/位址空間 "wikilink")16個位址，所以在一組匯流排最多可和112個節點通訊。常見的I²C匯流排依傳輸速率的不同而有不同的模式：*標準模式*（100 kbit/s）、*低速模式*（10 kbit/s），但時脈頻率可被允許下降至零，這代表可以暫停通訊。而新一代的I²C匯流排可以和更多的節點（支援10位元長度的位址空間）以更快的速率通訊：*快速模式*（400 kbit/s）、*高速模式*（3.4 Mbit/s）*超高速模式*（5 Mbit/s）。

雖然最大的節點數目是被位址空間所限制住，但實際上也會被匯流排上的總[電容](../Page/電容.md "wikilink")所限制住，一般而言為400 pF。

[I2C_data_transfer.svg](https://zh.wikipedia.org/wiki/File:I2C_data_transfer.svg "fig:I2C_data_transfer.svg")

### 参考设计

I²C仅使用两个双向开漏线，-{zh:串列;zh-hant:串列;zh-hans:串行}-数据线（SDA）和-{zh:串列;zh-hant:串列;zh-hans:串行}-时钟线（SCL），上拉了电阻。使用的典型电压是+5 V或+3.3 V（虽然其他电压系统也是允许的）。

在I²C参考设计中，使用7位或10位（取决于所使用的设备）地址空间。普通I²C总线速度为100 kbit / s的标准模式和10 kbit / s的低速模式，但任意低时钟频率也是允许的。 I²C的最新修订可以承载更多的节点，并以更快的速度运行。这些速度被更广泛地使用在嵌入式系统中而不是PC上。I²C也有其他的特性，例如16位寻址。

请注意，这里引用的比特率为主节点和从节点之间没有时钟延长或其他硬件开销的传输比特率。协议开销包括一个字节从地址（或许还有从设备内部寄存器地址）以及每个字节的ACK / NACK比特。因此这意味着，用户数据的实际传输速率要低于峰值比特率。例如，如果与从设备以低效的每次仅一个字节数据进行传输，数据率将比峰值比特率少于一半（因为其余的时钟需要发送一个字节地址和ACK比特）。

节点的最大数量受限于地址空间以及400 [pF的总的总线](https://zh.wikipedia.org/wiki/pF "wikilink")[电容](https://zh.wikipedia.org/wiki/电容 "wikilink")。400 pF总电容也限制了实际通信距离只有几米。

如上所述，参考设计为使用-{zh:串列;zh-hant:串列;zh-hans:串行}-数据线（SDA）和-{zh:串列;zh-hant:串列;zh-hans:串行}-时钟线（SCL）、拥有7bit寻址空间的总线。 总线上有两种类型角色的节点：

  - 主节点 - 产生时钟并发起与从节点的通信
  - 从节点 - 接收时钟并响应主节点的寻址

该总线是一种[多主控总线](https://zh.wikipedia.org/wiki/multi-master_bus "wikilink")，即可以在总线上放置任意多主节点。此外，在[停止位](https://zh.wikipedia.org/wiki/stop_bit "wikilink")（STOP）发出后，一个主节点也可以成为从节点，反之亦然。

总线上有四种不同的操作模式，虽然大部分设备只作为一种角色和使用其中两种操作模式：

  - 主节点发送 - 主节点发送数据给从节点
  - 主节点接收 - 主节点接收从节点数据
  - 从节点发送 - 从节点发送数据给主节点
  - 从节点接收 - 从节点接收主节点数据

一开始，主节点处于主节点发送模式，发送[起始位](https://zh.wikipedia.org/wiki/start_bit "wikilink")（START），跟着发送希望与之通信的从节点的7bit位地址，最后再发送一个bit读写位，该数据位表示主节点想要与从节点进行读（1）还是写（0）操作。

如果从节点在总线上，它将以[ACK字元比特位应答](https://zh.wikipedia.org/wiki/ACK字元 "wikilink")（低有效）该地址。主节点收到应答后，根据它发送的读写位，处于发送模式或者接收模式，从节点则处于对应的相反模式（接收或发送）。

地址和数据首先发送[最高有效位](https://zh.wikipedia.org/wiki/最高有效位 "wikilink")。 起始位在SCL位高时，由SDA上电平从高变低表示；停止位在SCL为高时，由SDA上电平从低变高表示。其他SDA上的电平变化在SCL为低时发生。

如果主节点想要向从节点写数据，它将发送一个字节，然后从节点以ACK位应答，如此重复。此时，主节点处于**主节点发送**模式，从节点处于**从节点接收**模式。

如果主节点想要读取从节点数据，它将不断接收从节点发送的一个个字节，在收到每个字节后发送ACK进行应答，除了接收到的最后一个字节。此时，主节点处于**主节点接收**模式，从节点处于**从节点发送**模式。

此后，主节点要么发送停止位终止传输，要么发送另一个START比特以发起另一次传输（即“组合消息”）。

## 修訂

原始的I²C系統是在1980年代所建立的一種簡單的內部匯流排系統，當時主要的用途在於控制由飛利浦所生產的晶片。

  - 1992年完成了最初的標準版本釋出，新增了傳輸速率為400 kbit/s的*快速模式*及長度為10位元的-{zh:定址;zh-hant:定址;zh-hans:地址}-模式可容納最多1008個節點。
  - 1998年釋出了2.0版，新增了傳輸速率為3.4Mbit/s的*高速模式*並為了節省能源而減少了電壓及電流的需求。
  - 2.1版則在2001年完成，這是一個對2.0版做一些小修正，
  - 3.0版於2007年釋出。
  - 2012年2月13日釋出Specification Rev. 新增 5-MHz的超快速模式（UFM）。
  - 2012年，第4版增加5 MHz的超快速模式（UFM），使用推挽式逻辑没有上拉电阻新的USDA和USCS线，并增加了制造商指定的ID表。
  - 2012年，第5版修正错误。
  - 在2014年，第6版纠正了两个图。这是目前最新的标准\[1\]。

## 應用

[Iicrp.png](https://zh.wikipedia.org/wiki/File:Iicrp.png "fig:Iicrp.png") I²C被應用在簡單且其製造成本較傳輸速度更為重要的-{zh:週邊;zh-hant:週邊;zh-hans:外设}-上。一些常見的應用如下：

  - 為了保存使用者的設定而存取[NVRAM晶片](https://zh.wikipedia.org/wiki/NVRAM "wikilink")。
  - 存取低速的[數位類比轉換器](../Page/數位類比轉換器.md "wikilink")（DAC）。
  - 存取低速的[類比數位轉換器](../Page/類比數位轉換器.md "wikilink")（ADC）。
  - 改變監視器的對比度、色調及色彩平衡設定（[視訊資料通道](https://zh.wikipedia.org/wiki/視訊資料通道 "wikilink")）。
  - 改變音量大小。
  - 取得硬體監視及診斷資料，例如中央處理器的溫度及風扇轉速。
  - 讀取[实时时钟](https://zh.wikipedia.org/wiki/实时时钟 "wikilink")（Real-time clock）。
  - 在系統設備中用來開啟或關閉電源供應。

I²C的另一個強大用途在於[微控制器的應用](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，利用兩根通用的輸入輸出接腳及軟體的規劃，可以讓微控制器控制一個小型網路。

\-{zh:週邊;zh-hant:週邊;zh-hans:外设}-可以在系統仍然在運作的同時加入或移出匯流排，這代表對於有[熱插拔需求的裝置而言是個理想的匯流排](https://zh.wikipedia.org/wiki/熱插拔 "wikilink")。

像I²C這樣的匯流排之所以流行起來，是因為電腦工程師發現到對於整合電路設計而言，許多的製造成本源自於封裝尺寸及接腳數量。更小的包裝通常能夠減少重量及電源的消耗，這對於[行動電話及手持式電腦而言格外重要](https://zh.wikipedia.org/wiki/行動電話 "wikilink")。

## 操作系統的支援

在[Linux](../Page/Linux.md "wikilink")中，I²C已經列入了-{zh:核心模組;zh-hant:核心模組;zh-hans:内核模块}-的支援了，更進一步的說明可以參考-{zh:核心;zh-hant:核心;zh-hans:内核}-相關的文件及位於/usr/include/linux/i2c.h 的這個[標頭檔](https://zh.wikipedia.org/wiki/標頭檔 "wikilink")。[OpenBSD](../Page/OpenBSD.md "wikilink")則在最近的更新中加入了I²C的架構（framework）以支援一些常見的主控端控制器及-{zh:感應器;zh-hant:感應器;zh-hans:传感器}-。

## 工具开发

### I²C主机适配器

### I²C协议分析仪

### 逻辑分析仪

## 限制

## 衍生技术

## 參見

  - [序列周邊介面](../Page/序列周邊介面.md "wikilink")
  - [I²S](../Page/I²S.md "wikilink")
  - [1-Wire](../Page/1-Wire.md "wikilink") Bus
  - [Serial Peripheral Interface Bus](https://zh.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus "wikilink")
  - [SMBus](https://zh.wikipedia.org/wiki/SMBus "wikilink")

## 參考資料

## 註釋

## 外部連結

  - [Philips I2C specifications](http://www.nxp.com/documents/user_manual/UM10204.pdf)
  - [Detailed introduction, Primer](http://www.i2c-bus.org/)
  - [Introduction to I2C](https://web.archive.org/web/20070926222250/http://embedded.com/story/OEG20010718S0073)
  - [I<sup>2</sup>C Bus / Access Bus](http://www.interfacebus.com/Design_Connector_I2C.html)
  - [Using the I2C Bus with Linux](http://www.linuxjournal.com/article/1342)
  - [OpenBSD iic(4) manual page](http://www.openbsd.org/cgi-bin/man.cgi?query=iic&sektion=4)
  - Linux package [lm-sensors](https://web.archive.org/web/20061221033646/http://lm-sensors.org/) support I2C bus among others.
  - [massmind i2c page](http://techref.massmind.org/i2cs.htm) Source code, samples and technical information for using i2c with PC, PIC and SX microcontrollers.
  - [I<sup>2</sup>C bus](https://web.archive.org/web/20061230193623/http://tmd.havit.cz/Papers/I2C.pdf)
  - [Serial buses information page](http://www.epanorama.net/links/serialbus.html)
  - [I2C Bus Technical Overview and Frequently Asked Questions](http://www.esacademy.com/faq/i2c/)
  - [The I2C Faq Version 2.0](https://web.archive.org/web/20070102155852/http://www.kar.elf.stuba.sk/predmety/mmp/i2c/i2cindex.htm)
  - [The Bus Buffer Resource. For 2-wire buses such as I2C, SMBus, PMBus, IPMB & IPMI](https://web.archive.org/web/20161013012648/http://www.bus-buffer.com/)
  - [I2C Licensing Information](https://web.archive.org/web/20110929112725/http://www.nxp.com/products/interface_control/i2c/licensing/)

[Category:串行总线](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink")

1.  [Official I2C Specification Version 6](http://www.nxp.com/documents/user_manual/UM10204.pdf)