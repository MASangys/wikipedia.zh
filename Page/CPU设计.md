**CPU 设计**是指设计[中央处理器](../Page/中央处理器.md "wikilink")(CPU)的工程学，是计算机[硬件](../Page/硬件.md "wikilink")(设计)的一部分，它是[计算机工程和](https://zh.wikipedia.org/wiki/计算机工程 "wikilink")[电子工程](../Page/电子工程.md "wikilink")中的一个分支。

## 细节

CPU设计关注：

1.  [数据路径](https://zh.wikipedia.org/wiki/数据路径 "wikilink") (如[ALU](https://zh.wikipedia.org/wiki/算术逻辑单元 "wikilink") 和 [计算管道](https://zh.wikipedia.org/wiki/计算管道 "wikilink"))
2.  [控制单元](https://zh.wikipedia.org/wiki/控制单元 "wikilink")：逻辑控制的数据路径
3.  记忆体元件，如寄存器文件[缓存](../Page/缓存.md "wikilink")
4.  时脉电路，如时脉驱动器，[PLL](https://zh.wikipedia.org/wiki/锁相环路 "wikilink")，时钟分配网络
5.  垫收发器电路
6.  逻辑门电路的实现

CPU为高性能需求设计。可能需要为每个项目的定制设计以实现变频

为性能较低的需求设计的CPU可能实施：

  - 购买一些[知识产权](../Page/知识产权.md "wikilink")
  - 使用控制逻辑的实现技术（使用[CAD工具等](https://zh.wikipedia.org/wiki/CAD "wikilink")）来实现其他组成部分.

在CPU设计中包括的一般逻辑为：

  - 非结构化的随机逻辑
  - 有限状态机
  - [微程序设计](https://zh.wikipedia.org/wiki/微程序设计 "wikilink") (常见于1965年到1985年)
  - [可编程逻辑阵列](https://zh.wikipedia.org/wiki/可编程逻辑阵列 "wikilink") (常见于80年代，现在比较罕见)

用来实现逻辑设备类型包括:

  - [TTL](https://zh.wikipedia.org/wiki/晶体管-晶体管逻辑电路 "wikilink") [小规模集成](https://zh.wikipedia.org/wiki/小规模集成 "wikilink") 逻辑芯片 - 已不被使用
  - [可编程阵列逻辑](https://zh.wikipedia.org/wiki/可编程阵列逻辑 "wikilink") 和 [可编程逻辑器件](https://zh.wikipedia.org/wiki/可编程逻辑器件 "wikilink") - 已不被使用
  - [射极耦合逻辑](https://zh.wikipedia.org/wiki/射极耦合逻辑 "wikilink") (ECL) [门阵列](https://zh.wikipedia.org/wiki/门阵列 "wikilink") - 已不普遍
  - [CMOS](https://zh.wikipedia.org/wiki/CMOS "wikilink") [门阵列](https://zh.wikipedia.org/wiki/门阵列 "wikilink") - 已不被使用
  - [CMOS](https://zh.wikipedia.org/wiki/CMOS "wikilink") [ASICs](https://zh.wikipedia.org/wiki/专用集成电路 "wikilink") - 今天常用，它们非常常用以致单词ASIC并不用于CPU
  - [现场可编程逻辑门阵列](../Page/现场可编程逻辑门阵列.md "wikilink") (FPGA) - 常见于[软微处理器](https://zh.wikipedia.org/wiki/软微处理器 "wikilink")，多少需要[可重构计算](https://zh.wikipedia.org/wiki/可重构计算 "wikilink")

CPU设计计划大致上有这些主要工作:

  - 程序员可见[指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink"), 各种[微架构的实现](https://zh.wikipedia.org/wiki/微架构 "wikilink")
  - 在[ANSI C](../Page/ANSI_C.md "wikilink")/[C++](../Page/C++.md "wikilink")或者[SystemC](../Page/SystemC.md "wikilink")的体系研究和性能建模
  - [高级综合](../Page/高级综合.md "wikilink") (HLS) 或 [RTL](https://zh.wikipedia.org/wiki/寄存器传输层 "wikilink") (例如逻辑) 执行
  - RTL 验证
  - 关键速度相关部件（缓存、寄存器、算数逻辑单元）[电路设计](https://zh.wikipedia.org/wiki/电路设计 "wikilink")
  - [逻辑综合](../Page/逻辑综合.md "wikilink") 或逻辑门层设计
  - 进行[时序分析](../Page/静态时序分析.md "wikilink") 以确认所有逻辑和电路将以特定频率运行
  - [物理设计](https://zh.wikipedia.org/wiki/物理设计 "wikilink")，包括[布局](../Page/布局_\(集成电路\).md "wikilink")、[布线](https://zh.wikipedia.org/wiki/布线_\(集成电路\) "wikilink")、[版图设计](../Page/集成电路版图.md "wikilink")
  - 检查 RTL，逻辑门层，晶体管层及物理层表示相符
  - 检查 [信号完整性](../Page/信号完整性.md "wikilink")，[芯片可制造性](../Page/设计规则检查.md "wikilink")

通过重新设计CPU核心，来获得更小的裸片面积，有助于实现以上目标中的几个。

### 微架构的概念

### 研究课题

### 性能分析和基准测试

因为现在针对各种CPU的[基准测试有太多](https://zh.wikipedia.org/wiki/基准 "wikilink")，并在迅猛发展。

最著名的基准是SPECint和[SPECfp的基准测试](https://zh.wikipedia.org/wiki/SPECfp "wikilink")[标准性能评估组织和](https://zh.wikipedia.org/wiki/标准性能评估组织 "wikilink")[ConsumerMark](https://zh.wikipedia.org/wiki/ConsumerMark "wikilink") benchmark developed by the Embedded Microprocessor Benchmark Consortium [EEMBC](https://zh.wikipedia.org/wiki/EEMBC "wikilink")。

需测量的地方包括:

  - [IPS](https://zh.wikipedia.org/wiki/MIPS_\(计算机\) "wikilink")
  - [浮点](https://zh.wikipedia.org/wiki/浮点 "wikilink")
  - [效能功耗比](../Page/效能功耗比.md "wikilink")
  - 低功耗
  - 小尺寸、轻重量
  - 环境影响

Some of these measures conflict. In particular, many design techniques that make a CPU run faster make the "performance per watt", "performance per dollar", and "deterministic response" much worse, and vice versa.

## 市场情况

研发新的,高端的CPU是一个代价沉重的命题，例如，一般的电脑工程师年薪在每年25万美元左右。这包括工资、福利、CAD工具、电脑、办公场地租金等。假设设计CPU需要100名工程师，那么该项目需要4年。

总支出 = $250,000 / 工程师数/年 x 100 工程师数 x 4 年 = $100,000,000美元。

上述金额只是一个例子.现代通用CPU的设计团队有几百个团队成员.

### 通用计算

#### 高端经济型处理器

在1984年, 大多数高性能的CPU需要四到五年的发展

### 科学计算

### 嵌入式设计

#### 经济型嵌入式处理器

#### CPU设计的研究与教育

#### 微处理器内核

对于[嵌入式系统](../Page/嵌入式系统.md "wikilink")，高性能往往并不考虑功耗的问题。这一点，使用处理器时，它可以完全实现逻辑合成技术。 这些合成的处理器，可以实现更快的处理速度。

## 注释

## 参考文献

### 出处

### 书籍

  -
  - [Processor Design: An Introduction](http://www.gamezero.com/team-0/articles/math_magic/micro/index.html)

## 外部链接

## 参见

  - [中央处理器](../Page/中央处理器.md "wikilink")

  - [微处理器](../Page/微处理器.md "wikilink")

  - [系统单晶片](https://zh.wikipedia.org/wiki/系统单晶片 "wikilink")

  - [电子设计自动化](https://zh.wikipedia.org/wiki/电子设计自动化 "wikilink")

  -

  - [微架构](https://zh.wikipedia.org/wiki/微架构 "wikilink")

  - [摩尔定律](../Page/摩尔定律.md "wikilink")

  - [阿姆达尔定律](https://zh.wikipedia.org/wiki/阿姆达尔定律 "wikilink")

  - [精简指令集](../Page/精简指令集.md "wikilink")

  - [复杂指令集](../Page/复杂指令集.md "wikilink")

  -
  - [高级综合](../Page/高级综合.md "wikilink")

[Category:中央處理器](https://zh.wikipedia.org/wiki/Category:中央處理器 "wikilink") [Category:计算机工程](https://zh.wikipedia.org/wiki/Category:计算机工程 "wikilink") [Category:信息技术](https://zh.wikipedia.org/wiki/Category:信息技术 "wikilink")