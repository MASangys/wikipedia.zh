> 本文内容由[Kepler \(微架构\)](https://zh.wikipedia.org/wiki/Kepler_\(微架构\))转换而来。


**Kepler**（开普勒）是[英伟达](../Page/英伟达.md "wikilink")在2012年4月发布的[圖形處理器](../Page/圖形處理器.md "wikilink")[微架构的代号](https://zh.wikipedia.org/wiki/微架构 "wikilink")\[1\]，是[Fermi架构的继承者](https://zh.wikipedia.org/wiki/Fermi_\(微架构\) "wikilink")。Kepler是英伟达第一款专注于节能的微架构。大多数[GeForce 600 系列](../Page/NVIDIA_GeForce_600.md "wikilink")、[GeForce 700 系列和部分](../Page/NVIDIA_GeForce_700.md "wikilink")[GeForce 800 系列显卡基于Kepler架构](../Page/NVIDIA_GeForce_800.md "wikilink")，均使用28纳米制程。Kepler架构也应用于[Tegra K1](../Page/图睿.md "wikilink") [SOC上的图形处理器GK](https://zh.wikipedia.org/wiki/SOC "wikilink")20A以及[NVIDIA Quadro](../Page/NVIDIA_Quadro.md "wikilink") Kxxxx系列显卡、Quadro NVS 510显卡和[NVIDIA Tesla计算卡](../Page/NVIDIA_Tesla.md "wikilink")。Kepler的后继者为[Maxwell](https://zh.wikipedia.org/wiki/Maxwell_\(微架构\) "wikilink")，并且和Maxwell架构一并用于[GeForce 700 系列和](../Page/NVIDIA_GeForce_700.md "wikilink")[GeForce 800 系列显卡](../Page/NVIDIA_GeForce_800.md "wikilink")。

Kepler架构的命名来自17世纪[科学革命](../Page/科学革命.md "wikilink")使其的著名德国数学家[约翰内斯·开普勒](../Page/约翰内斯·开普勒.md "wikilink")（Johannes Kepler）。

## 概览

在Kepler的前一代架构Fermi中，英伟达主要专注于提升计算与曲面细分的性能。然而在Kepler架构中，英伟达转向了提升效率、可编程性与性能。\[2\]\[3\] 效率的提升来自采用了统一的GPU时钟、简化的静态指令调度和更加优化的每瓦性能。\[4\] 尽管废弃过去GPU中采用的着色器时钟需要额外的核心来达到高性能，但通过这么做依然得以使效率提升。这不仅是因为新的核心更加节能（根据英伟达的数据，两个Kepler核心的功耗相当于一个Fermi核心的功耗的90%），同时也是因为统一GPU时钟使得这部分的功耗降低了50%。\[5\]

可编程性是通过Kepler架构的Hyper-Q技术、动态并行和多个新的Compute Capabilities 3.x功能实现的。通过这些得以在GK系列GPU中实现GPU的高利用率和简化的代码管理，从而使得针对Kepler系列GPU的编程更加灵活。\[6\]

在性能上，额外的执行资源（更多的CUDA核心、寄存器和缓存）以及Kepler架构支持的6 GHz内存速度使得Kepler架构的性能较过去的英伟达GPU显著增强。\[7\]

## 功能

GK系列GPU包含了来自老的Fermi架构的和新的Kepler架构的功能。但Kepler架构的GPU包含了以下额外的基本功能：

  - [PCI Express接口](../Page/PCI_Express.md "wikilink")
  - [DisplayPort](../Page/DisplayPort.md "wikilink") 1.2
  - [HDMI](../Page/HDMI.md "wikilink") 1.4a 4K x 2K视频输出
  - [NVIDIA PureVideo硬件解码加速](../Page/NVIDIA_PureVideo.md "wikilink")（最大解码 4K x 2K H.264）
  - 硬件 H.264 编码加速模块（NVENC）
  - 支持最大 4 路独立的二维显示器，或3路环绕/3D显示器（NV Surround）
  - 下一代流处理器（SMX）
  - Polymorph-Engine 2.0
  - 简化指令调度器
  - Bindless Textures
  - [CUDA](../Page/CUDA.md "wikilink")版本3.0到3.5
  - GPU Boost（在GK110上升级到了2.0）
  - TXAA支持
  - [台灣積體電路製造](https://zh.wikipedia.org/wiki/台灣積體電路製造 "wikilink")28 nm制程
  - 新的shuffle指令
  - 动态并行
  - Hyper-Q（Hyper-Q的MPI功能只有Tesla支持）
  - Grid管理单元
  - NVIDIA GPUDirect（GPU Direct的RDMA功能只有Tesla支持）

### 下一代流处理器（SMX）

The Kepler architecture employs a new Streaming Multiprocessor Architecture called "SMX". Kepler架构使用了新的流处理器架构“SMX”。SMX因为采用了统一的GPU时钟而成为了Kepler架构节能的主要原因。\[8\] 尽管采用了统一时钟的SMX表现出的效果为多个低主频的Kepler的CUDA核比多个高主频的Fermi的CUDA核的功耗低90%，Kepler架构需要更多的处理单元来在每个时钟执行一组wrap（线程束）。将每组CUDA阵列的数量从16个翻倍至32个解决了wrap的执行问题。同时SMX前端也将wrap的调度器和分配器翻倍，而寄存器堆也被翻倍到64K条来满足额外的执行单元的需要。面对芯片面积暴增的风险，SMX的PolyMorph Engine并没有也随其他部分翻倍，而是升级到了2.0版本使得它能够在更少的周期内地绘制多边形。\[9\] 专用的[双精度CUDA核心被用来弥补Kepler](https://zh.wikipedia.org/wiki/双精度浮点数 "wikilink") CUDA核心为了节省芯片面积而放弃的双精度计算能力。英伟达在SMX上做的改进带来了GPU在性能和效率上的提升。GK110上的48KB材质缓存可被用于计算负载。在计算负载中，材质缓存变为了一个只读数据缓存，专供非对齐的内存访问负载使用。同时，错误纠正功能也使得需要ECC的负载能更加安全地运行。在GK110中每个线程的寄存器数也翻倍到了255个。

### 简化指令调度器

额外的芯片面积是通过将复杂的硬件调度器简化为软件调度器带来的。通过软件调度，wraps的调度被放在了编译阶段。同时因为简化后GPU的计算流水线的延迟固定，英伟达在线程级并行之外也实现了[指令级并行](https://zh.wikipedia.org/wiki/指令级并行 "wikilink")。由于指令是被静态调度的，通过采用固定延迟的指令可以实现一致性，且静态调度的编译器降低了一层复杂度。\[10\]\[11\]\[12\]\[13\]

### GPU Boost

GPU Boost是一个基本类似于CPU睿频的新技术。GPU总是能以一个最低的频率运行，称之为“基础频率”。这个频率是通过测试在最高负载下也能保持在[TDP以内的方法得出的](../Page/热设计功耗.md "wikilink")。\[14\] 然而当负载较低时，将存在一定空间来提升频率而不超过TDP。这种情况下，GPU Boost将会一级级逐渐提高GPU频率，直到GPU达到了一个预设的功耗（默认为170W）。\[15\] 通过这种方法，GPU将会动态提高或降低自己的频率，从而使得它能够在TDP规范哪提供最大的速度。

预设功耗和每一级提升的频率均可通过第三方工具调整，并且提供了给基于Kepler架构的GPU超频的方法。\[16\]

### Microsoft Direct3D支持

基于Fermi和Kepler架构GPU的GeForce 600系列支持Direct3D 11.0规范。英伟达原本声称Kepler架构完整支持[DirectX](../Page/DirectX.md "wikilink") 11.1，包括Direct3D 11.1。 \[17\] 然而以下“Modern UI” Direct3D 11.1功能并不被支持：\[18\]\[19\]</ref>

  - 目标独立光栅化（仅限2D渲染）
  - 16xMSAA光栅化（仅限2D渲染）
  - 正交线渲染模式
  - 非像素着色阶段的UAV（Unordered Access View）

根据微软的定义，[Direct3D](../Page/Direct3D.md "wikilink") feature level 11_1必须完备，否则无法执行Direct3D 11.1\[20\] Kepler架构内置的Direct3D功能和采用Fermi架构的GeForce 400系列显卡一致\[21\]

### 下一代Microsoft Direct3D支持

基于Kepler架构的GeForce 600/700系列显卡支持Direct3D 12 feature level 11_0。\[22\]

### TXAA支持

TXAA是英伟达设计的新的抗锯齿技术，需要游戏引擎直接实现在其中，且仅限于Kepler系列GPU。TXAA基于[多重采样抗锯齿和定制的滤镜](https://zh.wikipedia.org/wiki/反锯齿 "wikilink")。TXAA被用来解决一个游戏中的关键问题：闪烁或temporal aliasing。TXAA通过柔化动态场景来确保游戏内的场景不包含任何的锯齿和闪烁。\[23\]

### Shuffle指令

在底层，GK110拥有额外的指令和操作来进一步提升性能。新的shuffle指令允许在一个wrap内的线程在不访问内存的情况下共享数据，使得整个过程比原来的load/share/store方式更加迅速。原子操作也被重新设计使得原子操作的速度得以提升。同时还添加了一些原本只针对单精度浮点的操作的双精度支持。\[24\]

### Hyper-Q

Hyper-Q将GK110的硬件工作队列从原本的唯一一个提升到32个。在Fermi架构中，有时唯一的工作队列被占据时工作量其实并不够让每个流处理器都有工作。而拥有32个工作队列，GK110在很多情形下可以使得原本空闲的SMX工作起来从而达到更高的利用率。Hyper-Q的这种特质还因为它能够被更轻易地映射到MPI——一个常见的在高性能计算中使用的通讯接口——而被进一步增强。传统的为多个处理器系统设计的基于MPI的算法所面临的错误依赖问题通过Hyper-Q得到了解决。通过增加MPI工作的数量，程序员将可以在不修改代码的情况下应用Hyper-Q来提升算法性能。\[25\]

### 动态并行

动态并行（Dynamic Parallelism）能够使kernel（核函数）有能力分发其他kernel。在Fermi架构中，只有CPU可以分发kernel，因此增加了与CPU通信的开销。而通过给kernel分配子kernel的能力，GK110可以既可以减少与CPU的通讯开销，还可以让CPU空下来去执行其他任务。\[26\]

### Grid管理单元

为了能够使用动态并行，GPU需要一个新的grid管理系统和分发控制系统。新的Grid管理单元（Grid Management Unit，GMU）管理grid的执行并决定它们执行的优先级。GMU可以暂停新的grid的分发、将grid放入队列和终止grid直到它们准备好被执行。这样，GMU将能够提供支持运行如动态并行这样强大的运行时的灵活性。 在Kepler架构中，CUDA Work Distributor（CWD）记忆着将要被分发的grid。新的CWD有能力分发32个活动的grid，较Fermi架构的CWD翻了一倍。Kepler架构的CWD与GMU通过一个双向连接进行交互，使得GMU能够暂停分发新的grid、待机和甚至终止grid直到CWD需要。GMU同时也有一个与SMX单元的单向连接使得用动态并行来添加新工作的grid能够将新工作传回给GMU进行排优先级和分发。如果添加新工作的kernel暂停了，GMU将会保持其休眠直到它依赖的工作完成。\[27\]

### NVIDIA GPUDirect

NVIDIA GPUDirect是一项允许在同一台电脑或在网络中的多台服务器的GPU可以在不需访问CPU和系统内存的情况下交换数据的技术。GPUDirect的RDMA功能能够使第三方设备如SSD、NIC和IB适配器等直接访问同一台机器上多个GPU的内存，从而显著降低经由MPI读写GPU内存的延迟。\[28\] 这项技术同时减轻了对系统内存带宽的需求，并且使得GPU的DMA能够空闲出来来执行其他CUDA任务。基于Kepler架构的GK110还支持包括P2P和GPUDirect for Video等GPUDirect功能。

### 视频解码/编码

#### NVDEC

#### NVENC

NVENC时英伟达的高效率固定编码引擎，能够解码、预处理和编码H.264内容。NVENC的输入编码仅限于H.264。然而弥补这块短板的是NVENC可以编码4096x4096的内容。\[29\]

如同Intel的Quick Sync技术，NVENC的使用需要用到专有的API。然而英伟达并没有计划提供在CUDA内调用NVENC的方法。\[30\]

## 性能

Kepler架构的GPU的理论单精度浮点运算能力以[每秒浮點運算次數](../Page/每秒浮點運算次數.md "wikilink")为单位大约为2 (操作每FMA指令每CUDA核心每指令周期) × CUDA核心数 × 核心速度（以GHz为单位）。值得注意的是和上代的[Fermi架构一样](https://zh.wikipedia.org/wiki/Fermi_\(微架构\) "wikilink")，Kepler架构不能像[Tesla架构一样通过双发射MAD和MUL指令来提升处理性能](https://zh.wikipedia.org/wiki/Tesla_\(微架构\) "wikilink")。

基于Kepler架构的GK110/210 GPU的理论双精度浮点性能大约为其单精度浮点性能的1/3。然而这个性能指标仅在专业级的[NVIDIA Quadro](../Page/NVIDIA_Quadro.md "wikilink")、[NVIDIA Tesla显卡和高端的](../Page/NVIDIA_Tesla.md "wikilink")[GeForce](../Page/GeForce.md "wikilink") TITAN显卡上提供。面向普通消费者的GeForce显卡驱动限制了双精度浮点性能到单精度浮点性能的1/24。\[31\] GK10x的双精度浮点性能也被类似地限制到了单精度浮点性能的1/24。\[32\]

## 基于Kepler架构的芯片

  - GK104
  - GK106
  - GK107
  - GK110
  - GK208
  - GK210
  - GK20A ([图睿](../Page/图睿.md "wikilink"))

## 注释

## 参见

  - [NVIDIA显示核心列表](https://zh.wikipedia.org/wiki/NVIDIA显示核心列表 "wikilink")

## 参考文献

[Category:英伟达微架构](https://zh.wikipedia.org/wiki/Category:英伟达微架构 "wikilink") [Category:圖形微架构](https://zh.wikipedia.org/wiki/Category:圖形微架构 "wikilink") [Category:2012年面世](https://zh.wikipedia.org/wiki/Category:2012年面世 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
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
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.