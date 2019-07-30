**Project 25**(亦作**P25**或**APCO-25**) 是为北美公共安全组织所设计的一套数字移动无线电标准。 P25电台是为模拟（例如[FM](../Page/频率调制.md "wikilink")）无线电设备设计的直接替代产品，并且在话音传输的基础上增加了数据传输的功能，能够更原生地进行信息传输以及数据加密。 P25电台通常部署于派遣组织，例如警察、消防、救护车以及其他紧急救援服务工作，具体实施上常为车载电台以及手持对讲机一齐使用。

从2012年左右开始采用新的 Phase 2 调制协议，在此之后较早的P25协议被定为P25 Phase 1。Phase 2产品使用更为先进的AMBE2+声码器，允许压缩音频使其能通过更大的流量，并在相同RF带宽（12.5kHz）的情况下提供两个[TDMA语音通道](https://zh.wikipedia.org/wiki/TDMA "wikilink")，而Phase 1标准只能提供一个语音通道。 前后两种协议不能直接进行互通。但Phase 2可以提供动态转码的功能，根据需要在Phase 1和Phase 2中实现转换。除此之外，标准上Phase 2设备可以向下兼容Phase 1和模拟FM调制。欧盟也有类似于P25的[TETRA](https://zh.wikipedia.org/wiki/TETRA "wikilink")（Terrestrial Trunked Radio）无线电标准。

P25协议充当着类似于[TETRA或](https://zh.wikipedia.org/wiki/TETRA "wikilink")[DMR协议类似的角色](https://zh.wikipedia.org/wiki/DMR "wikilink")。

## 概览

### 历史

### 介绍

### 开放接口

P25标准定义了陆地移动无线电系统各个组件之间的八个开放接口，分别是：

  - 通用空中接口(Common Air Interface, CAI) – 标准规定了兼容无线电传输信号的类型和内容。 无论制造商如何，使用CAI的一台电台应该能够与任何其他CAI电台进行通信
  - 用户数据外设接口(Subscriber Data Peripheral Interface) – 标准规定手持设备和车载设备可以连接到笔记本电脑或数据网络的端口
  - 基地台接口(Fixed Station Interface) – 标准规定了一套强制性信息，支持数字语音、数据、加密信息以及电话能够在基地台和P25设备之间互通
  - 控制台子系统接口(Console Subsystem Interface) – 标准规定控制台子系统可通过接口和P25设备互通
  - 网络管理界面(Network Management Interface) – 标准规定了单个网络管理方案，允许管理RF子系统下所有的网络单元
  - 数据网络接口(Data Network Interface) – 标准规定了RF子系统与计算机、数据网络或外部数据源的连接
  - 电话互联接口(Telephone Interconnect Interface) – 标准规定支持模拟的PSDN和ISDN的电话接口
  - 射频子系统互联接口(Inter RF Subsystem Interface, [ISSI](https://zh.wikipedia.org/wiki/P25_ISSI "wikilink")) – 标准规定了RF子系统之间的接口，这些接口将允许它们连接到广域网

### P25 Phase

P25的兼容技术已在两个主要阶段内部署，未来阶段尚在扩展中。

#### Phase 1

运行在Phase 1标准的电台基于12.5 kHz 带宽的频分多址调制（[FDMA](https://zh.wikipedia.org/wiki/FDMA "wikilink")）。 Phase 1 电台使用特殊的4 [FSK](https://zh.wikipedia.org/wiki/Frequency-shift_keying "wikilink") 调制，也就是C4FM。\[1\]—数字传输中单位时间有4800波特 2比特，累计9600bit每秒的总信道吞吐量。在这9600bps的数据中，4400bps是由[IMBE解编码器产生的语音数据](https://zh.wikipedia.org/wiki/Improved_multi-band_excitation "wikilink")，2800bps用于前向纠错，其余的2400bps携带信令和其他控制功能。 为C4FM标准设计的接收器也可以解调CQPSK,因为CQPSK信号的参数被定义为单位时间内产生于C4FM相同的信号差。 Phase 1使用[IMBE声码器](https://zh.wikipedia.org/wiki/Improved_multi-band_excitation "wikilink").

这些系统设计标准化的服务和设施规范确保了任何制造商的设备都可访问此类规范所描述的服务，不管系统基础设施如何，因其包含向下兼容性和与其他系统的互操性而能够实现跨越系统边界。此外，P25标准还为射频子系统系统开放接口，因而促使不同供应商的电台能够跨系统通联。

#### Phase 2

#### 未来的Phase 2

## 常规实施

P25系统不必使用诸如模拟哑音（Continuous Tone-Coded Squelch System, **CTCSS**）和数字哑音（Digital-Coded Squelch, **DCS**）的静噪系统。相反，P25系统使用的是在语音数据帧以外的网络访问代码（[NAC](https://zh.wikipedia.org/wiki/NAC "wikilink")）——这是一个12bits的数据包前缀，包括且不仅限于携带语音数据。NAC与模拟无线电系统中的CTCSS和DCS相类似。也就是说，电台可以被编程为仅在接收正确的NAC时才允许通过音频信号。NAC被编制为3位16进制的代码于发送的数字信号前。

换而言之，NAC作为一个3位16进制数字（12bits）时，有4096中可能的NAC报头，远远超过所有模拟方法的组合。

以下是三种特殊功能的NAC数值:

0x293 ($293) – 默认NAC值
0xf7e ($F7E) – 设置为此项的NAC将接收到所有数字编码信号
0xf7f ($F7F) – 中继接收机设为此NAC将将所有传入的数字编码信号直接转发

## 采用机构

## 安全问题

### 在DES-OFB和ADP芯片上的加密缺陷

### 宾夕法尼亚大学的研究

### 加密失效

### 干扰

### 流量分析和主动追踪

## 外部链接

  - <http://www.project25.org/> Project 25 Technology Interest Group (PTIG) home page
  - [P25 Overview](https://web.archive.org/web/20111019223730/http://www.tiaonline.org/standards/technology/project_25/index.cfm) TIA Standards Development Activities for Public Safety
  - <https://web.archive.org/web/20110223005820/http://www.apco911.org/frequency/project25.php> APCO International Project 25 page
  - <http://www.apco.ca/> APCO Canada
  - <http://www.dvsinc.com/papers/p25_training_guide.pdf> Daniels' P25 Radio System Training Guide
  - <http://urgentcomm.com/mag/radio_oil_water/> Some ways of avoiding P25 interoperability challenges
  - <https://web.archive.org/web/20170709195455/https://valid8.com/P25_ISSI_%26_CSSI.html> P25 Compliance Test Tools for ISSI
  - <https://web.archive.org/web/20111009095647/http://www.etherstack.com/networks.htm#1> P25 Protocol Stack Software
  - <https://web.archive.org/web/20110710160611/http://www.dvsinc.com/prj25.htm> DVSI P25 Vocoder Software and Hardware
  - [Sandy Clark et al., *Security Weaknesses in the Apco Project 25 Two-Way Radio System* University of Pennsylvania, 2010, retrieved 2011 Aug 12](http://repository.upenn.edu/cgi/viewcontent.cgi?article=1990&context=cis_reports)
  - <http://www.p25phase2.com> Radio users and experts discuss P25 Phase 2
  - <https://www.motorolasolutions.com/en_us/products/p25-story.html>

[Category:Trunked_radio_systems](https://zh.wikipedia.org/wiki/Category:Trunked_radio_systems "wikilink") [Category:电信标准](https://zh.wikipedia.org/wiki/Category:电信标准 "wikilink") [Category:保全漏洞](https://zh.wikipedia.org/wiki/Category:保全漏洞 "wikilink")

1.