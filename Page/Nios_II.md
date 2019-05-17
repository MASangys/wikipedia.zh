**Nios II** 是专为 [Altera](../Page/Altera.md "wikilink")
[FPGA系列设计的](../Page/现场可编程逻辑门阵列.md "wikilink")32位嵌入式处理器架构。 Nios
II在原有的Nios架构上整合了许多增强功能，使其更适合从[DSP到系统控制的更广泛的嵌入式计算应用](../Page/数字信号处理.md "wikilink")。

Nios II是Altera第一款可配置的16位嵌入式处理器Nios的后继产品。

## 主要特征

与最初的Nios一样，Nios II架构是[RISC](../Page/精简指令集.md "wikilink")  架构，完全在Altera
FPGA的可编程逻辑和存储器模块中实现。 Nios II处理器的软核本质允许系统设计人员指定并生成定制的Nios
II内核，并根据其特定的应用需求量身定制。系统设计人员可以通过添加预定义的内存管理单元或定义自定义指令和定制外设来扩展Nios
II的基本功能。

### 自定义说明

与原生Nios
II指令类似，用户定义的指令接受来自最多两个32位源寄存器的值，并可选择将结果写回32位目标寄存器。通过使用自定义指令，系统设计人员可以微调系统硬件以达到性能目标，而且设计人员可以轻松地将指令作为C中的宏处理。

### 自定义外设

对于花费大多数CPU周期执行特定代码段的性能关键型系统，用户定义的外设可能会将软件算法的部分或全部执行加载到用户定义的硬件逻辑中，从而提高功效或应用程序吞吐量。

### 内存管理单元

在Quartus 8.0中引入的可选MMU使Nios
II能够运行需要基于硬件的分页和保护的操作系统，例如Linux内核。没有MMU，Nios仅限于使用简化的保护和虚拟内存模型的操作系统：例如μClinux和FreeRTOS。

### 存储器保护单元

Quartus
8.0引入了可选的MPU，可提供与MMU提供的内存保护类似的内存保护，但具有更简单的编程模型，并且不会产生与MMU相关的性能开销。

## 参考

  - <https://www.altera.com.cn/products/processors/overview.html>

## 外部链接

  - [Altera's site about Nios
    II](http://www.altera.com/products/ip/processors/nios2/ni2-index.html)
  - [Nios users' community forum](http://www.alteraforum.com)
  - [Nios community
    wiki](https://web.archive.org/web/20090121133048/http://nioswiki.com/)
  - [RTEMS](https://zh.wikipedia.org/wiki/RTEMS "wikilink") real-time
    operating system
  - [Cornell ECE576 Microcontroller course using
    NiosII](http://instruct1.cit.cornell.edu/courses/ece576/)
  - [FreeRTOS demo documentation for
    NiosII](http://www.freertos.org/FreeRTOS-Nios2.html)
  - [UPB ECE31289 course using Nios
    II](https://sites.google.com/site/ece31289upb/practicas-de-clase/practica-5-nios-ii)

[Category:指令集架構](https://zh.wikipedia.org/wiki/Category:指令集架構 "wikilink")