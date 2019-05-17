**`RDRAND`**（之前被称为**Bull
Mountain**\[1\]）是一个计算机指令，用于从[芯片上的](https://zh.wikipedia.org/wiki/芯片 "wikilink")[硬件随机数生成器中获取](https://zh.wikipedia.org/wiki/硬件随机数生成器 "wikilink")[随机数](../Page/随机数.md "wikilink")。所用到的随机数生成器由芯片上的[熵池初始化](../Page/熵.md "wikilink")。\[2\]
`RDRAND`指令在架构处理器上可用，该指令也是[X86-64和](../Page/X86-64.md "wikilink")[IA-32](https://zh.wikipedia.org/wiki/IA-32 "wikilink")[指令集的一部分](https://zh.wikipedia.org/wiki/指令集 "wikilink")。AMD在2015年6月添加了对`RdRand`指令的支持。\[3\]

该随机数生成器要遵守安全标准和加密标准，比如，\[4\] 和 [ANSI
X9.82](https://zh.wikipedia.org/wiki/ANSI_X9.82 "wikilink")。\[5\]
Intel也在1999年和2012年请密码学研究 Cryptography Research
公司来审查这个随机数发生器，并产生了两篇论文：1999年的
*The Intel Random Number Generator*\[6\] 和2012年的 *Analysis of Intel's
Ivy Bridge Digital Random Number Generator*\[7\]。

**`RDSEED`**和`RDRAND`类似，也提供了访问硬件熵池的高级方法。 [Intel Broadwell
系列的CPU](../Page/Broadwell微架構.md "wikilink")\[8\] 和 [AMD Zen
系列的CPU](../Page/AMD_Zen.md "wikilink")\[9\]都支持`RDSEED`生成器和`rdseed`指令。

## 概览

在[AMD和](https://zh.wikipedia.org/wiki/AMD "wikilink")[Intel的CPU上](https://zh.wikipedia.org/wiki/Intel "wikilink")，[`CPUID`](../Page/CPUID.md "wikilink")指令都可以检测[中央处理器](../Page/中央处理器.md "wikilink")（CPU）是否支持`RDRAND`
指令。如果支持，调用CPUID的标准函数`01H`之后，ECX寄存器的第30位会被设置成1\[10\]。AMD处理器也可以使用同样的方式检测是否支持\[11\]。在Intel
CPU上，也可以使用类似的方法检测`RDSEED`是否支持。如果支持`RDSEED`，在调用完CPUID的标准函数`07H`后，EBX寄存器的第18位会被设置为1\[12\]。

`RDRAND`的操作码是`0x0F 0xC7`，后面跟一个ModRM字节，来指示目标寄存器。在64位模式下，还可以于REX前缀结合（这是可选的）\[13\]。

*Intel安全密钥*是[Intel为](https://zh.wikipedia.org/wiki/Intel "wikilink")`RDRAND`指令和底层的[随机数生成器](https://zh.wikipedia.org/wiki/随机数生成器 "wikilink")（RNG）的硬件实现的统称，它在开发期间的代号是"Bull
Mountain"\[14\]。Intel称自己的RNG"数字随机数生成器"或DRNG。生成器采用有硬件产生的256位原始熵样本对，并将其应用到一个[高级加密标准](../Page/高级加密标准.md "wikilink")（AES）（在[CBC-MAC模式下](https://zh.wikipedia.org/wiki/CBC-MAC "wikilink")）调节器，将其减少到256位条件熵样本。

[NIST SP
800-90A中定义了一个名叫CTR](https://zh.wikipedia.org/wiki/NIST_SP_800-90A "wikilink")_DRBG的确定性随机数生成器。它由调节器的输出来初始化，为使用`RDRAND`指令的应用程序提供了密码学安全的随机数。\[15\]\[16\]
在重新初始化之前，硬件将发出最多511个128位的样本。使用`RDSEED`可以访问来自AES-CBC-MAC的、条件化后的256位样本。

为了初始化另一个为随机数生成器，`RDSEED`指令被添加到了Intel安全密钥\[17\]，在[Broadwell微架構的CPU上开始支持](../Page/Broadwell微架構.md "wikilink")。`RDSEED`指令的熵来源自时序线路，并且使用硅片上的[热噪声来以](https://zh.wikipedia.org/wiki/热噪声 "wikilink")3GHz的速度输出随机比特流\[18\]。这比从`RDRAND`获得的6.4Gbit/s速率要慢（这两个速率都是所有[核心](https://zh.wikipedia.org/wiki/多核心处理器 "wikilink")、所有[线程共享](../Page/线程.md "wikilink")）\[19\]。`RDSEED`用来初始化任意宽度的软件
PRNG，而`RDRAND`指令适用于需要高质量随机数的应用程序。如果不要求密码学安全，软件随机数生成器比如[Xorshift一般会比较快](https://zh.wikipedia.org/wiki/Xorshift "wikilink")。\[20\]

### 性能

在Intel 酷睿 i7-7700K，4500MHz（45 x 100MHz）的处理器（[Kaby
Lake-S架构](https://zh.wikipedia.org/wiki/Kaby_Lake微架构 "wikilink")）上，单个`RDRAND`或`RDSEED`指令花费110纳秒或463个时钟周期，不论操作数大小（16位、32位、64位）。这个时钟周期数适用于所有[Skylake和](https://zh.wikipedia.org/wiki/Skylake微架构 "wikilink")[Kaby
Lake架构的处理器](https://zh.wikipedia.org/wiki/Kaby_Lake微架构 "wikilink")。在[Silvermont架构的处理器上](https://zh.wikipedia.org/wiki/Silvermont "wikilink")，每个指令花费1472时钟周期，不论操作数大小；在[Ivy
Bridge架构的处理器上](https://zh.wikipedia.org/wiki/Ivy_Bridge微架构 "wikilink")，花费117时钟周期\[21\]。

在AMD Ryzen 处理器上，对于16位或32位操作数，每个指令约花费1200个时钟周期；对于64位操作数，约花费2500个时钟周期。

### 编译器支持

[GCC](../Page/GCC.md "wikilink")
4.6+和[Clang](../Page/Clang.md "wikilink")
3.2+提供了RdRand的——当在[编译参数中指定了](https://zh.wikipedia.org/wiki/CFLAGS "wikilink")`-mrdrnd`命令行参数、并且在时设置`__RDRND__`宏的情况下\[22\]。更新的版本额外提供了`immintrin.h`将这些内置函数封装成与英特尔C编译器版本12.1+兼容的功能中。这些函数将随机数据写入参数指定的位置，并在成功时返回1
\[23\]。

### 用来检测RDRAND指令的x86汇编语言例子

``` asm

; 使用 NASM 语法

section .data
    msg db "0x00000000",10

section .text
global _start
_start:
    mov eax,1
    cpuid
    bt ecx,30
    mov rdi,1 ; exit code: failure
    jnc .exit

    ; 如果没有随机数可用，rdrand 设置 CF=0
        ; Intel 的文档建议循环重试10次
    mov ecx,11
.loop1:
    dec ecx
    jecxz .exit ; exit code 已经设置了
    rdrand eax
    jnc .loop1

    ; 将数字转换成 ASCII 字符
    mov rdi,msg+9
    mov ecx,8
.loop2:
    mov edx,eax
    and edx,0Fh
    ; add 7 to nibbles of 0xA and above
    ; to align with ASCII code for 'A'
    ; ('A' - '0') - 10 = 7
    mov r8d,7
    xor r9d,r9d
    cmp dl,9
    cmova r9,r8
    add edx,r9d
    add [rdi],dl
    shr eax,4
    dec rdi
    loop .loop2

    mov rax,1 ; SYS_WRITE
    mov rdi,1 ; stdout
    mov rsi,msg
    mov rdx,11
    syscall

    mov rdi,0 ; exit code: success
.exit:
    mov rax,60 ; SYS_EXIT
    syscall
```

## Reception

在2013年9月，[曹子德（Theodore
Ts'o）为回应](../Page/曹子德.md "wikilink")*[纽约时报](../Page/纽约时报.md "wikilink")*的文章，公开发文表达对[Linux内核的](../Page/Linux内核.md "wikilink")[`RdRand//dev/random`](https://zh.wikipedia.org/wiki/RdRand/dev/random "wikilink")中使用`RdRand`的担忧\[24\]：

[林纳斯·托瓦兹驳斥了在Linux内核中使用](../Page/林纳斯·托瓦兹.md "wikilink")`RdRand`的担忧，并指出`RdRand`不是`/dev/random`的唯一熵来源；从`RdRand`接受数据并和其他随机数来源结合来改善熵。\[25\]\[26\]
然而，Defuse Security的Taylor
Hornby表明，如果将后门引入到专门针对使用代码的RdRand指令中，Linux随机数生成器可能会变得不安全。
泰勒的概念验证实现在版本3.13之前的未修改的Linux内核上工作。\[27\]\[28\]\[29\]

开发者注释掉了[FreeBSD内核中直接使用](../Page/FreeBSD.md "wikilink")`RdRand`和[威盛電子的代码](../Page/威盛電子.md "wikilink")，并添加说明"对于
[FreeBSD](../Page/FreeBSD.md "wikilink")
10，我们将回溯并删除RDRAND和Padlock后端，并将它们提供给Yarrow，而不是将其输出直接传递到
/dev/random
。如果需要，还可以通过内联汇编或使用OpenSSL直接访问硬件随机数生成器，即RDRAND，Padlock等，但是我们不能再信任他们。"\[30\]\[31\]

## 参见

  - [AES指令集](../Page/AES指令集.md "wikilink")

  -
  - [OpenSSL](../Page/OpenSSL.md "wikilink")

  - [wolfSSL](https://zh.wikipedia.org/wiki/wolfSSL "wikilink")

## 注脚

## 参考资料

[Category:机器码](https://zh.wikipedia.org/wiki/Category:机器码 "wikilink")
[Category:X86微处理器](https://zh.wikipedia.org/wiki/Category:X86微处理器 "wikilink")
[Category:X86指令](https://zh.wikipedia.org/wiki/Category:X86指令 "wikilink")
[Category:随机数生成](https://zh.wikipedia.org/wiki/Category:随机数生成 "wikilink")

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

19. <https://software.intel.com/en-us/articles/intel-digital-random-number-generator-drng-software-implementation-guide>
    说是 800 megabyte，即 6.4 gigabit每秒

20. 最简单的64位[Xorshift实现具有三次](https://zh.wikipedia.org/wiki/Xorshift "wikilink")[异或和三次](../Page/逻辑异或.md "wikilink")[逻辑移位](https://zh.wikipedia.org/wiki/逻辑移位 "wikilink")；如果这在4核2GHz
    CPU上运行，吞吐量是80 Gb/s。在实践中，由于存储、加载等开销，吞吐量会减少，但仍然会超过`RDRAND`的6.4
    Gb/s。另一方面，`RDRAND`产生的随机数质量会比软件随机数生成器高，比如Xorshift。

21. <http://www.agner.org/optimize/instruction_tables.pdf>

22. <https://gcc.gnu.org/onlinedocs/gcc-4.8.5/gcc/X86-Built-in-Functions.html>

23. <https://software.intel.com/en-us/node/523864>

24.

25.
26.

27.

28.

29.

30.

31.