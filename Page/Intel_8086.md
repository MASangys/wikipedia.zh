> 本文内容由[Intel 8086](https://zh.wikipedia.org/wiki/Intel_8086)转换而来。


Intel **8086**\[1\]（亦稱之為**iAPX 86**）\[2\]是由[英特爾公司於](https://zh.wikipedia.org/wiki/英特爾公司 "wikilink")1976年初開始設計，1978年年中發表的Intel第一款[16位元](https://zh.wikipedia.org/wiki/16位元 "wikilink")[微處理器](https://zh.wikipedia.org/wiki/微處理器 "wikilink")。随後於1979年，又推出了[Intel 8088](../Page/Intel_8088.md "wikilink")，它在晶片的外部連接椎使用8位資料[匯流排](https://zh.wikipedia.org/wiki/匯流排 "wikilink")（允許使用更廉價和更少[積體電路](https://zh.wikipedia.org/wiki/積體電路 "wikilink")\[3\]）的支援，成為8086的一个低成本的簡化产品，并用在[IBM PC的原始設計中的處理器](../Page/IBM_PC.md "wikilink")（包括廣為人所知的）中而被人知曉。

8086是Intel最成功的处理器系列[x86架构的开端](https://zh.wikipedia.org/wiki/x86架构 "wikilink")。

## 历史

### 背景

1972年，Intel发布了[8008微处理器](https://zh.wikipedia.org/wiki/Intel_8008 "wikilink")——世界上第一款8位微处理器。\[4\] 8008微处理器有18个引脚，其中地址总线使用了14个引脚，并且与8位数据总线复用引脚。指令集源自是Datapoint公司为计算机的CRT-键盘终端设计的但相当通用的指令集。当时英特尔还是一家生产[DRAM为主业的公司](https://zh.wikipedia.org/wiki/DRAM "wikilink")，缺乏这方面的技术储备。

1974年，Intel发布了[8080微处理器](https://zh.wikipedia.org/wiki/Intel_8080 "wikilink")，\[5\] 被公认是第一款真正可用的微处理器。8080的芯片封装采用40个引脚，其中8个数据总线引脚、16个地址总线引脚都是专用的，因此数据总线与地址总线可以并行工作。8080的扩展后的指令集在源代码级别上向前兼容8008指令集。

1975年，Intel发布了第三款8位微处理器——[8085](https://zh.wikipedia.org/wiki/Intel_8085 "wikilink")。采用了新的制造工艺，简化了输入电压引脚的数量。同一时期还有[Motorola 6800](https://zh.wikipedia.org/wiki/Motorola_6800 "wikilink")（1974）、Microchip PIC16X（1975）、MOS Technology 6502（1975）、[Zilog Z80](../Page/Zilog_Z80.md "wikilink")（1976）及Motorola 6809（1978）等8位微处理器。在8位微处理器市场竞争中Z80最为成功。

### 第一种x86设计

[Intel_8086_CPU_Die.JPG](https://zh.wikipedia.org/wiki/File:Intel_8086_CPU_Die.JPG "fig:Intel_8086_CPU_Die.JPG") 8086项目起始于1976年5月，是英特尔公司当时更为看重的16位的微处理器的备份项目。8086一方面要与Motorola, Zilog, National Semiconductor等公司的16位、32位微处理器竞争市场份额，另一方面也是对Zilog Z80在8位微处理器市场上的成功的回击。由于采用了与8085微处理器近似的微体系结构与物理实现工艺，8086项目进展相当快。

8086微处理器被设计为在汇编源程序上向前兼容8008, 8080, 8085等微处理器。指令集与编程模式是基于8080微处理器，但指令集做了扩展以完全支持16位计算。

新增加的指令包括：完全支持有符号整数、段基址+偏移量寻址、类似于Z80的\[6\]自重复操作、直接支持嵌套的[ALGOL](../Page/ALGOL.md "wikilink")类语言如Pascal或PL/M、微码实现的乘法除法指令、以及更好支持与协处理器（8087或8089）和多处理器系统的总线结构.

第一版的指令集与高层的体系结构的设计仅用了3个月。\[7\] 在没有CAD工具的时代，4名工程师与12名布线绘图员平行工作，\[8\] 用了2年多的时间才把8086的高层设计实现为可运行测试的产品。这在当时算是很快的研发速度。

8086是随机逻辑\[9\]与[微码的混合实现](https://zh.wikipedia.org/wiki/微程序 "wikilink")\[10\]，使用了大约20,000个晶体管（算上所有的[ROM与](https://zh.wikipedia.org/wiki/ROM "wikilink")[可编程逻辑阵列为](https://zh.wikipedia.org/wiki/可编程逻辑阵列 "wikilink")29,000个晶体管）。芯片面积为33 mm²，制造工艺为3.2 μm.

8086体系结构由Stephen P. Morse设计，并在最后定案时得到Bruce Ravenel（8087体系结构设计者）的帮助。逻辑设计者是以Jim McKevitt与John Bayliss为首的硬件开发工程师团队\[11\]。项目经理William Pohlman。迄今8086的指令集仍然是PC机与服务器的基本指令集。

## 细节

[Wyprowadzenie_mikroprocesora_8086.JPG](https://zh.wikipedia.org/wiki/File:Wyprowadzenie_mikroprocesora_8086.JPG "fig:Wyprowadzenie_mikroprocesora_8086.JPG")

<table>
<tbody>
<tr class="odd">
<td style="text-align: center;"><p><em>Intel 8086寄存器</em></p></td>
</tr>
<tr class="even">
<td style="text-align: center;"><table>
<tbody>
<tr class="odd">
<td><p><sup>1</sup><sub>9</sub></p></td>
<td><p><sup>1</sup><sub>8</sub></p></td>
<td><p><sup>1</sup><sub>7</sub></p></td>
<td><p><sup>1</sup><sub>6</sub></p></td>
<td><p><sup>1</sup><sub>5</sub></p></td>
<td><p><sup>1</sup><sub>4</sub></p></td>
<td><p><sup>1</sup><sub>3</sub></p></td>
<td><p><sup>1</sup><sub>2</sub></p></td>
<td><p><sup>1</sup><sub>1</sub></p></td>
<td><p><sup>1</sup><sub>0</sub></p></td>
<td><p><sup>0</sup><sub>9</sub></p></td>
<td><p><sup>0</sup><sub>8</sub></p></td>
<td><p><sup>0</sup><sub>7</sub></p></td>
<td><p><sup>0</sup><sub>6</sub></p></td>
<td><p><sup>0</sup><sub>5</sub></p></td>
<td><p><sup>0</sup><sub>4</sub></p></td>
<td><p><sup>0</sup><sub>3</sub></p></td>
<td><p><sup>0</sup><sub>2</sub></p></td>
<td><p><sup>0</sup><sub>1</sub></p></td>
<td><p><sup>0</sup><sub>0</sub></p></td>
<td><p><em>（比特位置）</em></p></td>
</tr>
<tr class="even">
<td><p><strong>主寄存器</strong><br />
</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p> </p></td>
<td><p>AH</p></td>
<td><p>AL</p></td>
<td><p><strong>AX</strong>（累加器）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p> </p></td>
<td><p>BH</p></td>
<td><p>BL</p></td>
<td><p><strong>BX</strong>（基址寄存器）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p> </p></td>
<td><p>CH</p></td>
<td><p>CL</p></td>
<td><p><strong>CX</strong>（计数寄存器）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p> </p></td>
<td><p>DH</p></td>
<td><p>DL</p></td>
<td><p><strong>DX</strong>（数据寄存器）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>变址寄存器</strong><br />
</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>0 0 0 0</p></td>
<td><p>SI</p></td>
<td><p>源变址寄存器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>0 0 0 0</p></td>
<td><p>DI</p></td>
<td><p>目的变址寄存器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>0 0 0 0</p></td>
<td><p>BP</p></td>
<td><p>基址指针寄存器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>0 0 0 0</p></td>
<td><p>SP</p></td>
<td><p>堆栈指针寄存器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>程序计数器</strong><br />
</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>0 0 0 0</p></td>
<td><p>IP</p></td>
<td><p>指令指针</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>段寄存器</strong><br />
</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CS</p></td>
<td><p>0 0 0 0</p></td>
<td><p>代码段寄存器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>DS</p></td>
<td><p>0 0 0 0</p></td>
<td><p>数据段寄存器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>ES</p></td>
<td><p>0 0 0 0</p></td>
<td><p>附加段寄存器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>SS</p></td>
<td><p>0 0 0 0</p></td>
<td><p>堆栈段寄存器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>状态寄存器</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p> </p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Overflow_flag" title="wikilink">O</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Direction_flag" title="wikilink">D</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/IF_(x86_flag)" title="wikilink">I</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Trap_flag" title="wikilink">T</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Sign_flag" title="wikilink">S</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Zero_flag" title="wikilink">Z</a></p></td>
<td><p>-</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Adjust_flag" title="wikilink">A</a></p></td>
<td><p>-</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Parity_flag" title="wikilink">P</a></p></td>
<td><p>-</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Carry_flag" title="wikilink">C</a></p></td>
<td><p>标志寄存器</p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

### 总线与操作

所有的内部寄存器、内部及外部数据总线都是16位宽，因此是完全的16位微处理器。20位外部地址总线，因此**物理定址空间**为1MiB (即2<sup>20</sup> = 1,048,576).由于内部寄存器都是16位，对1M地址空间寻址时采取了段寻址方式。8086的封装采用40引脚的双列直插（dual in-line），数据总线与地址总线复用了前16个引脚。16位的I/O地址，因此独立的I/O寻址空间为64KiB的**虛擬定址空間** (即2<sup>16</sup> = 65,536).由于8086内部的地址寄存器是16 位宽，因而最大线性寻址空间为64 KiB.使用超过64 KiB内存空间的程序设计时，需要调整段寄存器（segment registers）。直到32位的[80386出现之前](https://zh.wikipedia.org/wiki/80386 "wikilink")，8086的这种段寻址相当不便.

8086芯片封装的8个控制引脚在*min*或*max*下有不同功能。"min"模式是使用单处理器的小型计算机系统，"max"模式是使用多处理器的中到大型计算机系统。

### 寄存器与指令

8086有8个16比特的寄存器，包括栈寄存器SP与BP，但不包括指令寄存器IP、控制寄存器FLAGS以及四个段寄存器。AX, BX, CX, DX,这四个寄存器可以按照字节访问；但BP, SI, DI, SP,这四个地址寄存器只能按照16位宽访问。

8086以[8080和](https://zh.wikipedia.org/wiki/Intel_8080 "wikilink")[8085](https://zh.wikipedia.org/wiki/Intel_8085 "wikilink")（它與8080有[汇编語言上的原始碼相容性](https://zh.wikipedia.org/wiki/汇编語言 "wikilink")）的設計為基礎，擁有類似的暫存器集合，但是擴充為16位元。总线接口單元（Bus Interface Unit）透過6位元組預存（prefetch）的貯列（queue）将指令送给執行單元（Execution Unit），所以取指令和執行是同步的－一種[流水线的原始形式](../Page/流水线_\(计算机\).md "wikilink")（8086指令長度變化從1到6位元組）。

8086有四個完全一样的16位元[暫存器](https://zh.wikipedia.org/wiki/暫存器 "wikilink")，但也能够當作八個8位元暫存器來存取；以及四個16位元索引暫存器（包含堆栈索引）。数据暫存器通常由指令隱含地使用，針對暫存值需要複雜的暫存器配置。它提供64K 8位元的輸出輸入（或32K 16位元）埠，以及固定的向量中斷。大部分的指令只能夠存取一個記憶體位址，所以其中一個運算子必須是一個暫存器。運算結果會儲存在運算子中的一個。

8086有4個[記憶體區段](https://zh.wikipedia.org/wiki/記憶體區段 "wikilink")（segment）暫存器，可以通过索引暫存器來設定。區段暫存器可以讓[CPU一种当时是全新的方式存取多达](https://zh.wikipedia.org/wiki/CPU "wikilink")1[MB之記憶體](https://zh.wikipedia.org/wiki/MB "wikilink")。在現今有區段的處理器中，8086把區段暫存器左移4位元然後把它加上去寻址。这通常被認為是一個不太好的設計，因為这么做會讓各區段有重疊。儘管這樣對于[汇编語言而言会显得有用](https://zh.wikipedia.org/wiki/汇编語言 "wikilink")——因为可以充分控制區段，但同时却使高级語言中的指针（像是C程式語言）使用變得困難。它降低了指针的高效率，且有可能產生兩個指向同一個地方的指標擁有不同的位址。更壞的是，這種方式產生要讓記憶體擴充到大於1[MB的困難](https://zh.wikipedia.org/wiki/MB "wikilink")。而[80286的寻址方式改變讓記憶體擴充較有效率](https://zh.wikipedia.org/wiki/80286 "wikilink")。

由于8位机（如[Intel 8008](https://zh.wikipedia.org/wiki/Intel_8008 "wikilink")）时代沿袭下来的紧凑编码，大多数指令虽然有两个源操作数（operands）及一个输出结果，但单条指令至多使用两个地址，因此运算结果被存入一个源操作数中。且最多只能有一个内存操作数，另外的操作数是寄存器或立即数。内存操作数也可以用于存储指令的输出结果。8位微处理器的指令集不能把输出结果直接保存在内存操作数中，因此8086指令集的如此设计大大提高了代码密度（code density）。

相比与8080或8085，8086有更强的寄存器通用性，但比起典型的[小型计算机](../Page/小型计算机.md "wikilink")来说仍有很大不如。8086的某些指令隐式使用某些寄存器。比起更为规则的16- 或32-位处理器如[PDP-11](../Page/PDP-11.md "wikilink"), [VAX](https://zh.wikipedia.org/wiki/DEC_VAX "wikilink"), [68000](https://zh.wikipedia.org/wiki/68000 "wikilink"),等等，8086的寄存器分配特性使得编译器的工作更为复杂;另一方面，比起半现代化的但广为使用的8位微处理器如[6502](../Page/MOS_6502.md "wikilink"), [6809](https://zh.wikipedia.org/wiki/Motorola_6809 "wikilink"),或[8085](https://zh.wikipedia.org/wiki/Intel_8085 "wikilink"),编译器生成代码就容易太多了.

8086有64 KiB的字宽为8位的（或32K个宽度为16位的）[I/O寻址空间](https://zh.wikipedia.org/wiki/I/O "wikilink").

栈的长度最大为64 KB（一个段） ，8086硬件支持栈顶由高地址向低地址生长。入栈、弹栈的数据单元长度为2字节。栈顶位置由寄存器的组合SS:SP给出.

共有256 个[中断](https://zh.wikipedia.org/wiki/中断 "wikilink"),包括硬件中断与软中断。中断可以嵌套，使用栈来保存中断返回地址。

8086增加了一些8080与8085所没有的新指令，用于更好地支持[Pascal与](https://zh.wikipedia.org/wiki/Pascal "wikilink")[PL/M的高级程序设计特性](https://zh.wikipedia.org/wiki/PL/M "wikilink");如**push** *mem-op*, **ret** *size*, (其它一些指令如**push** *immed* and **enter**,在随后的80186, 80286, and 80386中陆续增加.)

### 标志寄存器

8086有一个16位宽的[标志寄存器FLAGS](https://zh.wikipedia.org/wiki/标志寄存器 "wikilink").其中9个比特是被使用的，另外7个比特保留未用。具体是：进位标志CF、奇偶标志PF、辅助标志AF、为零标志ZF、符号标志SF、追踪标志TF、中断允许标志IF、方向标志DF、溢出标志OF。

### 内存分段

在Intel的8位、16位处理器中，由于寄存器的宽度为8或16比特，而地址总线的宽度一般是要大于寄存器的宽度，所以为了能访问整个地址空间，需要采取特殊的寻址计算——分段寻址。从80386开始的32位微处理器，地址总线宽度也是32比特，可以视作扁平（flat）地址空间，不再需要分段寻址。

8086的分段寻址，是指一个物理地址由**段地址**（segment selector）与**偏移量**（offset）两部分组成，长度各是16比特。其中段地址左移4位（即乘以16）与偏移量相加即为物理地址。例如，06EFh:1234h，表示段地址为06EFh,偏移量为1234h,物理地址为06EF0h + 1234h = 08124h。在计算物理地址时如果发生上溢出，8086处理器舍弃进位。例如，FFFFh：0010h所对应的物理地址为00000h.

一个20位的物理地址对应着4096个不同的"段地址：偏移量"的组合。这是因为，偏移量的最低4位对应于物理地址的最低四位，而偏移量的高12位共有4096个取值。

段地址所对应的物理地址的粒度是16字节（=2<sup>4</sup>），称之为paragraph。

段地址确定后，偏移量的取值最多为64KiB（=65536），这就是分段寻址的最大的线性地址空间。实际上在8086处理器上，操作系统分配的线性地址空间可以是不大于64KiB的任意数量。程序可以自由访问整个物理内存空间，操作系统没有任何权限限制或监管（supervision）。

8086处理器有20根地址总线引脚（pins），因此物理内存空间最大为2<sup>20</sup>=1MiB=1,048,576字节。这还包括了IO内存。因此使用8086处理器的计算机的主存的容量少于1MiB，最常见的主存容量是640KiB。

由于X86指令集的向后兼容原则，计算物理地址时，段地址左移4位被所有后继支持[实模式的X](https://zh.wikipedia.org/wiki/实模式 "wikilink")86处理器所继承。80286是使用24位宽地址总线的16位微处理器，如果要在整个2<sup>24</sup>=16MiB物理存储空间寻址，就必须采用其它方式，即[保护模式寻址](https://zh.wikipedia.org/wiki/保护模式 "wikilink")，这时16位的段地址是指向**段描述符**表（segment descriptors table）的一个包含24位基地址的条目，基地址加上16位偏移量即为24位的物理地址。

在8086上运行的[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")，一般支持两种C语言的指针：近指针（near）与远指针（far）。近指针是16位的地址偏移值，隐式与程序的代码段地址或数据段地址结合使用以确定物理地址。远指针是32位的“段地址：偏置量”成对出现，用以确定20位的物理地址。某些编译器支持“巨指针”（huge），类似于远指针。但巨指针的地址运算是线性20位；而远指针的地址运算在16位偏移值溢出时不影响段地址部分，因此远指针的线性部分是16位。

为了避免对大量的指针、数据结构、函数指出是“近”还是“远”，编译器提供了内存模式（memory model）给出了缺省的内存访问方式：

  - 微模式*tiny*数据段代码段共用不超过64K内存空间，编译为.com可执行文件；
  - 小模式*small*数据段、代码段各用最多64K内存共空间；
  - 紧凑模式*compact*数据段\> 64K；
  - 中模式*medium*代码段\> 64K；
  - 大模式*large*代码段数据段都\> 64K；
  - 巨模式*huge*单个数组\> 64K。

预编译库对不同的内存模式要分别编译为相应版本。

#### 移植老的程序

8位机上的程序可以不考虑段地址直接以.com可执行文件以“微模式”在8086上运行。这是当时8086与MS-DOS作为新平台取得市场成功的关键原因——大量已存的CP/M应用程序能很快得到利用。

### 实例代码

以下8086/8088[汇编源代码是将给定大小的数据块从一个位置拷贝到另一个位置的叫做](../Page/汇编语言.md "wikilink")`_memcpy`的子程序。每次拷贝一个字节，数据移动和循环逻辑采用16位操作。

<table>
<tbody>
<tr class="odd">
<td><pre><code>










0000:1000

0000:1000
0000:1000 55
0000:1001 89 E5
0000:1003 06
0000:1004 8B 4E 06
0000:1007 E3 11
0000:1009 8B 76 04
0000:100C 8B 7E 02
0000:100F 1E
0000:1010 07

0000:1011 8A 04
0000:1013 88 05
0000:1015 46
0000:1016 47
0000:1017 49
0000:1018 75 F7

0000:101A 07
0000:101B 5D
0000:101C 29 C0
0000:101E C3
0000:101F            </code></pre></td>
<td><div class="sourceCode" id="cb2"><pre class="sourceCode nasm"><code class="sourceCode nasm"><span id="cb2-1"><a href="#cb2-1"></a><span class="co">; _memcpy(dst, src, len)</span></span>
<span id="cb2-2"><a href="#cb2-2"></a><span class="co">; Copy a block of memory from one location to another.</span></span>
<span id="cb2-3"><a href="#cb2-3"></a><span class="co">;</span></span>
<span id="cb2-4"><a href="#cb2-4"></a><span class="co">; Entry stack parameters</span></span>
<span id="cb2-5"><a href="#cb2-5"></a><span class="co">;      [BP+6] = len, Number of bytes to copy</span></span>
<span id="cb2-6"><a href="#cb2-6"></a><span class="co">;      [BP+4] = src, Address of source data block</span></span>
<span id="cb2-7"><a href="#cb2-7"></a><span class="co">;      [BP+2] = dst, Address of target data block</span></span>
<span id="cb2-8"><a href="#cb2-8"></a><span class="co">;</span></span>
<span id="cb2-9"><a href="#cb2-9"></a><span class="co">; Return registers</span></span>
<span id="cb2-10"><a href="#cb2-10"></a><span class="co">;      AX = Zero</span></span>
<span id="cb2-11"><a href="#cb2-11"></a></span>
<span id="cb2-12"><a href="#cb2-12"></a>            <span class="kw">org</span><span class="bn">     1000h       </span><span class="co">; Start at 0000:1000h</span></span>
<span id="cb2-13"><a href="#cb2-13"></a></span>
<span id="cb2-14"><a href="#cb2-14"></a>_memcpy     proc</span>
<span id="cb2-15"><a href="#cb2-15"></a>            <span class="kw">push</span>    <span class="kw">bp</span>          <span class="co">; Set up the call frame</span></span>
<span id="cb2-16"><a href="#cb2-16"></a>            <span class="kw">mov</span>     <span class="kw">bp</span>,<span class="kw">sp</span></span>
<span id="cb2-17"><a href="#cb2-17"></a>            <span class="kw">push</span>    <span class="kw">es</span>          <span class="co">; Save ES</span></span>
<span id="cb2-18"><a href="#cb2-18"></a>            <span class="kw">mov</span>     <span class="kw">cx</span>,[<span class="kw">bp</span>+<span class="dv">6</span>]   <span class="co">; Set CX = len</span></span>
<span id="cb2-19"><a href="#cb2-19"></a>            <span class="kw">jcxz</span>    done        <span class="co">; If len=0, return</span></span>
<span id="cb2-20"><a href="#cb2-20"></a>            <span class="kw">mov</span>     <span class="kw">si</span>,[<span class="kw">bp</span>+<span class="dv">4</span>]   <span class="co">; Set SI = src</span></span>
<span id="cb2-21"><a href="#cb2-21"></a>            <span class="kw">mov</span>     <span class="kw">di</span>,[<span class="kw">bp</span>+<span class="dv">2</span>]   <span class="co">; Set DI = dst</span></span>
<span id="cb2-22"><a href="#cb2-22"></a>            <span class="kw">push</span>    <span class="kw">ds</span>          <span class="co">; Set ES = DS</span></span>
<span id="cb2-23"><a href="#cb2-23"></a>            <span class="kw">pop</span>     <span class="kw">es</span></span>
<span id="cb2-24"><a href="#cb2-24"></a></span>
<span id="cb2-25"><a href="#cb2-25"></a><span class="kw">loop</span>        <span class="kw">mov</span>     <span class="kw">al</span>,[<span class="kw">si</span>]     <span class="co">; Load AL from [src]</span></span>
<span id="cb2-26"><a href="#cb2-26"></a>            <span class="kw">mov</span>     [<span class="kw">di</span>],<span class="kw">al</span>     <span class="co">; Store AL to [dst]</span></span>
<span id="cb2-27"><a href="#cb2-27"></a>            <span class="kw">inc</span>     <span class="kw">si</span>          <span class="co">; Increment src</span></span>
<span id="cb2-28"><a href="#cb2-28"></a>            <span class="kw">inc</span>     <span class="kw">di</span>          <span class="co">; Increment dst</span></span>
<span id="cb2-29"><a href="#cb2-29"></a>            <span class="kw">dec</span>     <span class="kw">cx</span>          <span class="co">; Decrement len</span></span>
<span id="cb2-30"><a href="#cb2-30"></a>            <span class="kw">jnz</span>     <span class="kw">loop</span>        <span class="co">; Repeat the loop</span></span>
<span id="cb2-31"><a href="#cb2-31"></a></span>
<span id="cb2-32"><a href="#cb2-32"></a>done        <span class="kw">pop</span>     <span class="kw">es</span>          <span class="co">; Restore ES</span></span>
<span id="cb2-33"><a href="#cb2-33"></a>            <span class="kw">pop</span>     <span class="kw">bp</span>          <span class="co">; Restore previous call frame</span></span>
<span id="cb2-34"><a href="#cb2-34"></a>            <span class="kw">sub</span>     <span class="kw">ax</span>,<span class="kw">ax</span>       <span class="co">; Set AX = 0</span></span>
<span id="cb2-35"><a href="#cb2-35"></a>            <span class="kw">ret</span>                 <span class="co">; Return</span></span>
<span id="cb2-36"><a href="#cb2-36"></a>            end proc</span></code></pre></div></td>
</tr>
</tbody>
</table>

上面的代码使用BP（基指针）寄存器建立一个[调用帧](https://zh.wikipedia.org/wiki/调用栈 "wikilink")（包含子程序执行过程中的所有参数和局部变量的栈的区域）。这种[调用约定支持](https://zh.wikipedia.org/wiki/调用约定 "wikilink")[可重入和](https://zh.wikipedia.org/wiki/reentrancy_\(computing\) "wikilink")[递归代码](../Page/递归_\(计算机科学\).md "wikilink")，大多数类ALGOL语言上世纪50年代后期就已采用这种约定。ES段寄存器保存在堆栈上，并用DS段寄存器中的值替换，于是指令 会在相同的源数据段和目的数据段之间操作。在返回前，子程序恢复了ES寄存器以前的值。

上面的子程序是一种比较麻烦的拷贝成块数据的方法。若源数据区域和目的数据区域都是处于单个65,536字节的段中（上述程序的要求），使用8086的块`MOV`指令更有优势。上面的循环部分可以替换为：

<table>
<tbody>
<tr class="odd">
<td><pre><code>0000:1011 F2
0000:1012 A5         </code></pre></td>
<td><div class="sourceCode" id="cb2"><pre class="sourceCode nasm"><code class="sourceCode nasm"><span id="cb2-1"><a href="#cb2-1"></a><span class="kw">loop</span>        rep                  <span class="co">; Repeat until CX=0</span></span>
<span id="cb2-2"><a href="#cb2-2"></a>            <span class="kw">movsw</span>                <span class="co">; Move the data block</span></span></code></pre></div></td>
</tr>
</tbody>
</table>

这种方法每次可以拷贝一个字。`REP`指令使下面的`MOVSW`重复直至CX=0，重复之时自动递增SI和DI。另外，`MOVSB`或`MOVSD`指令可以用来一次拷贝单个字节或双字。大多数汇编器在`REP`指令用在`MOVSW`之前为`REP MOVSW`的情况下都会正确汇编。

如果被中断，这个程序也能正确运行，因为程序计数器会继续指向`REP`指令，知道块拷贝已经结束。拷贝会在中断服务程序将控制恢复的时候继续。

### 性能

[Intel_8086_block_scheme.svg](https://zh.wikipedia.org/wiki/File:Intel_8086_block_scheme.svg "fig:Intel_8086_block_scheme.svg")''\]\] 外部总线作为数据与地址的复用，降低了CPU的性能。取16比特或8比特数据需要4个时钟周期。指令的长度为1-6个字节，取指令与执行是并发完成的。CPU内的总线界面单元把取到的指令保存在6字节的预取队列中。

<center>

| 指令      | register-register                                             | register immediate | register-memory | memory-register | memory-immediate |
| :------ | :------------------------------------------------------------ | :----------------- | :-------------- | :-------------- | :--------------- |
| mov     | 2                                                             | 4                  | 8+EA            | 9+EA            | 10+EA            |
| ALU     | 3                                                             | 4                  | 9+EA,           | 16+EA,          | 17+EA            |
| jump    | *register* =\> 11 ; *label* =\> 15 ; *condition,label* =\> 16 |                    |                 |                 |                  |
| 整数乘法    | 70\~160（取决于操作数*data*以及大小）加上EA                                 |                    |                 |                 |                  |
| 有符号整数除法 | 80\~190（取决于操作数*data*以及大小）加上EA                                 |                    |                 |                 |                  |

典型指令的执行时间
（时钟周期）\[12\]

</center>

  - EA = 计算有效地址的时间，5到12周期.
  - 用时为最好的情形,依赖于预取状态,指令对齐,及其它因素.

8086涉及内存访问的指令，包括跳转（jump）指令需要比[8080与](https://zh.wikipedia.org/wiki/Intel_8080 "wikilink")[8085更多的时间](https://zh.wikipedia.org/wiki/Intel_8085 "wikilink")，原因在于：

  - 取指令与执行指令是松散耦合，对于跳转与随机数据访问没有特殊措施，效率较低.
  - 没有专门的地址计算部件，只能用主ALU，虽然有专用的*段地址* + *偏移地址*的加法器
  - 外部地址总线与数据总线是多工复用，与8位处理器相比要多用33\~50%的总线周期

8086的后继处理器的内存访问性能大大增强了。[80186与](https://zh.wikipedia.org/wiki/Intel_80186 "wikilink")[80286有专门的地址计算硬件](../Page/Intel_80286.md "wikilink")，节约了很多时间周期。80286的外部地址总线与数据总线是分开各自专用的。

### 浮点

8086/8088可以连接上专用的数学协处理器以增加浮点计算性能。标准的数学协处理是[Intel 8087](../Page/Intel_8087.md "wikilink")，执行80位浮点数运算。

## 使用8086的微電腦

第一個以8086為基礎的商業微電腦是[Mycron](https://zh.wikipedia.org/wiki/Mycron "wikilink")2000。

IBM Displaywriter文字處理機也使用8086。在大部分顯要的所有微處理器中，[IBM PC使用了更窄的記憶體總線版本的](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")8086，也就是[Intel 8088](../Page/Intel_8088.md "wikilink")。 8086CPU結構上的一個重要特點是分為二大部分，即總線接口單元BIU和執行單元EU，其中BIU負責外部信息交換，EU負責指令執行，二者合理分工、並行工作，工作效率比此前的CPU明顯提高，常稱之為流水線結構。

## 硬件模式

8086和8088支持两种硬件模式：最大模式和最小模式。最大模式是用在大型应用中的多重处理，并且也是支持8087处理器的必需。该模式通常硬件化在电路中，不能由软件改变。具体来说，\#33引脚（MN/）是连载高电压还是接地决定了模式。改变引脚\#33的状态就改变了其他特定引脚的功能，这些引脚中大多数是CPU处理（局部）总线的。IBM PC和PC/XT使用工作在最大模式的Intel 8088，让CPU与PC或PC/XT主办上安装在数学协同处理器插口的可选8087协同处理器。（PC和PC/XT可能因为其他原因而要求用最大模式，比如要支持DMA控制器。）

## 外设

  - [Intel 8237](https://zh.wikipedia.org/wiki/Intel_8237 "wikilink")：直接存储器存取（DMA）控制器
  - [Intel 8251](https://zh.wikipedia.org/wiki/Intel_8251 "wikilink")：USART
  - [Intel 8253](https://zh.wikipedia.org/wiki/Intel_8253 "wikilink")：可编程间隔定时器
  - [Intel 8255](https://zh.wikipedia.org/wiki/Intel_8255 "wikilink")：可编程序外围接口
  - [Intel 8259](../Page/Intel_8259.md "wikilink")：可编程中断控制器
  - [Intel 8279](https://zh.wikipedia.org/wiki/Intel_8279 "wikilink")：键盘/显示控制器
  - [Intel 8282](https://zh.wikipedia.org/wiki/Intel_8282 "wikilink")/[8283](https://zh.wikipedia.org/wiki/Intel_8283 "wikilink")：8位锁存器
  - [Intel 8284](https://zh.wikipedia.org/wiki/Intel_8284 "wikilink")：时钟发生器
  - [Intel 8286](https://zh.wikipedia.org/wiki/Intel_8286 "wikilink")/[8287](https://zh.wikipedia.org/wiki/Intel_8287 "wikilink")：双向8位驱动
  - [Intel 8288](https://zh.wikipedia.org/wiki/Intel_8288 "wikilink")：总线控制器
  - [Intel 8289](https://zh.wikipedia.org/wiki/Intel_8289 "wikilink")：总线仲裁器

## 紀念

2018年6月8日，英特尔在官网上开启了限量抽奖活动，奖品为i7-8086k，限量生产8086个。

## 注释

## 参考文献

<references/>

## 外部連結

  - [Intel 8086/8088 images and descriptions at cpu-collection.de](http://www.cpu-collection.de/?tn=1&l0=cl&l1=8086/88)

<!-- end list -->

  - [8086 visual microprocessor emulator](http://www.emu8086.com)

*Article based on [Intel 8086](https://web.archive.org/web/20030521180431/http://foldoc.doc.ic.ac.uk/foldoc/foldoc.cgi?query=Intel+8086) at [FOLDOC](http://www.foldoc.org)，used with [permission](https://zh.wikipedia.org/wiki/Public_Domain_Resources/Foldoc_license "wikilink").*

[Category:Intel_x86处理器](https://zh.wikipedia.org/wiki/Category:Intel_x86处理器 "wikilink")

1.
2.  [Official Intel iAPX 286 programmers' manual](http://bitsavers.trailing-edge.com/pdf/intel/80286/210498-001_1983_iAPX_286_Programmers_Reference_1983.pdf)  (page 1-1)
3.  Fewer TTL buffers, latches, multiplexers (although the amount of TTL <u>logic</u> was not drastically reduced). It also permitted the use of cheap 8080-family ICs, where the 8254 CTC, [8255](https://zh.wikipedia.org/wiki/Intel_8255 "wikilink") PIO, and 8259 PIC were used in the IBM PC design. In addition, it made PCB layout simpler and boards cheaper, as well as demanding fewer (1- or 4-bit wide) DRAM chips.
4.  using enhancement load [PMOS logic](https://zh.wikipedia.org/wiki/PMOS_logic "wikilink") (requiring 14 [V](https://zh.wikipedia.org/wiki/Volt "wikilink"), achieving TTL compatibility by having V<sub>CC</sub> at +5 V and V<sub>DD</sub> at –9 V)
5.  using non-saturated enhancement load [NMOS logic](https://zh.wikipedia.org/wiki/NMOS_logic "wikilink") (demanding a higher gate voltage for the load transistor gates)
6.  [Birth of a Standard: The Intel 8086 Microprocessor. Thirty years ago, Intel released the 8086 processor, introducing the x86 architecture that underlies every PC — Windows, Mac, or Linux — produced today](http://www.pcworld.com/article/146957/birth_of_a_standard_the_intel_8086_microprocessor.html), PC World, June 17, 2008
7.  Rev.0 of the instruction set and architecture was ready in about three months, according to Morse.
8.  Using [rubylith](https://zh.wikipedia.org/wiki/rubylith "wikilink"), light boards, rulers, electric erasers, and a [digitizer](https://zh.wikipedia.org/wiki/digitizer "wikilink") (according to Jenny Hernandez, member of the 8086 design team, in a statement made on Intel's webpage for its 25th birthday).
9.  Randall L. Geiger, Phillip E. Allen, Noel R. Strader *VLSI design techniques for analog and digital circuits*, McGraw-Hill Book Co., 1990, ISBN 978-0-07-023253-2, page 779 "Random Logic vs. Structured Logic Forms", illustration of use of "random" describing CPU control logic
10. 8086 used less microcode than many competitors' designs, such as the MC68000 and others
11. Other members of the design team were Peter A.Stoll and Jenny Hernandez.
12. （Similarly for iAPX 286, 80386, 80387.）