**BogoMips** ("[bogus](https://zh.wikipedia.org/wiki/bogus "wikilink")"
和[MIPS](https://zh.wikipedia.org/wiki/MIPS "wikilink"), 伪MIPS)
是一种衡量CPU速度的不科学的方法。当计算机内核启动时，将执行一个计数循环。

对于特定的CPU，BogoMips可用来查看它是否是个合适的值.它的时钟频率和它潜在的CPU缓存。但是它不可在不同的CPU间进行比较演示。\[1\]

## 合适的BogoMips比率

作为一个参考向导，BogoMips可以用下列的表格进行预计算。给出的比率是以应用到LINUX版本的CPU作为例子。指数是指其它CPU同Intel
386DX CPU的BogoMips/clock speed比率.

| CPU                                                                                                                                                                                          | 比率                    | 指数             |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------- | -------------- |
| [Intel 8088](../Page/Intel_8088.md "wikilink")                                                                                                                                               | clock \* 0.004        | 0.02           |
| [Intel/AMD 386SX](../Page/Intel_80386.md "wikilink")                                                                                                                                         | clock \* 0.14         | 0.8            |
| [Intel/AMD 386DX](../Page/Intel_80386.md "wikilink")                                                                                                                                         | clock \* 0.18         | 1 (definition) |
| [Motorola 68030](https://zh.wikipedia.org/wiki/Motorola_68030 "wikilink")                                                                                                                    | clock \* 0.25         | 1.4            |
| [Cyrix](../Page/Cyrix.md "wikilink")/[IBM](../Page/IBM.md "wikilink") 486                                                                                                                    | clock \* 0.34         | 1.8            |
| Intel [Pentium](https://zh.wikipedia.org/wiki/Intel_P5 "wikilink")                                                                                                                           | clock \* 0.40         | 2.2            |
| [Intel 486](../Page/Intel_80486.md "wikilink")                                                                                                                                               | clock \* 0.50         | 2.8            |
| [AMD 5x86](https://zh.wikipedia.org/wiki/AMD_5x86 "wikilink")                                                                                                                                | clock \* 0.50         | 2.8            |
| [MIPS](https://zh.wikipedia.org/wiki/MIPS_Technologies "wikilink") R4000/R4400                                                                                                               | clock \* 0.50         | 2.8            |
| [ARM9](https://zh.wikipedia.org/wiki/ARM9 "wikilink")                                                                                                                                        | clock \* 0.50         | 2.8            |
| [Motorola 8081](https://zh.wikipedia.org/wiki/Motorola_8081 "wikilink")                                                                                                                      | clock \* 0.65         | 3.6            |
| [Motorola 68040](https://zh.wikipedia.org/wiki/Motorola_68040 "wikilink")                                                                                                                    | clock \* 0.67         | 3.7            |
| [PowerPC](../Page/PowerPC.md "wikilink") 603                                                                                                                                                 | clock \* 0.67         | 3.7            |
| Intel [StrongARM](../Page/StrongARM.md "wikilink")                                                                                                                                           | clock \* 0.66         | 3.7            |
| [NexGen](../Page/NexGen.md "wikilink") Nx586                                                                                                                                                 | clock \* 0.75         | 4.2            |
| [PowerPC](../Page/PowerPC.md "wikilink") 601                                                                                                                                                 | clock \* 0.84         | 4.7            |
| [Alpha 21064](https://zh.wikipedia.org/wiki/Alpha_21064 "wikilink")/21064A                                                                                                                   | clock \* 0.99         | 5.5            |
| [Alpha 21066](https://zh.wikipedia.org/wiki/Alpha_21064 "wikilink")/21066A                                                                                                                   | clock \* 0.99         | 5.5            |
| [Alpha 21164](https://zh.wikipedia.org/wiki/Alpha_21164 "wikilink")/21164A                                                                                                                   | clock \* 0.99         | 5.5            |
| Intel [Pentium Pro](https://zh.wikipedia.org/wiki/Pentium_Pro "wikilink")                                                                                                                    | clock \* 0.99         | 5.5            |
| [Cyrix 5x86](https://zh.wikipedia.org/wiki/Cyrix_Cx5x86 "wikilink")/[6x86](../Page/Cyrix_6x86.md "wikilink")                                                                                 | clock \* 1.00         | 5.6            |
| Intel [Pentium II](https://zh.wikipedia.org/wiki/Pentium_II "wikilink")/[III](https://zh.wikipedia.org/wiki/Pentium_III "wikilink")                                                          | clock \* 1.00         | 5.6            |
| [AMD K7/Athlon](https://zh.wikipedia.org/wiki/Athlon "wikilink")                                                                                                                             | clock \* 1.00         | 5.6            |
| Intel [Celeron](https://zh.wikipedia.org/wiki/Celeron "wikilink")                                                                                                                            | clock \* 1.00         | 5.6            |
| Intel [Itanium](https://zh.wikipedia.org/wiki/Itanium "wikilink")                                                                                                                            | clock \* 1.00         | 5.6            |
| [R4600](https://zh.wikipedia.org/wiki/R4600 "wikilink")                                                                                                                                      | clock \* 1.00         | 5.6            |
| [Hitachi](https://zh.wikipedia.org/wiki/Hitachi,_Ltd. "wikilink") SH-4                                                                                                                       | clock \* 1.00         | 5.6            |
| Intel [Itanium 2](https://zh.wikipedia.org/wiki/Itanium_2 "wikilink")                                                                                                                        | clock \* 1.49         | 8.3            |
| [Alpha 21264](https://zh.wikipedia.org/wiki/Alpha_21264 "wikilink")                                                                                                                          | clock \* 1.99         | 11.1           |
| [VIA Centaur](https://zh.wikipedia.org/wiki/VIA_Technologies "wikilink")                                                                                                                     | clock \* 1.99         | 11.1           |
| [AMD K5/K6/K6-2/K6-III](https://zh.wikipedia.org/wiki/AMD_K6 "wikilink")                                                                                                                     | clock \* 2.00         | 11.1           |
| AMD [Duron](https://zh.wikipedia.org/wiki/Duron "wikilink")/[Athlon](https://zh.wikipedia.org/wiki/Athlon "wikilink") XP                                                                     | clock \* 2.00         | 11.1           |
| AMD [Sempron](https://zh.wikipedia.org/wiki/Sempron "wikilink")                                                                                                                              | clock \* 2.00         | 11.1           |
| [UltraSparc](../Page/SPARC.md "wikilink") II                                                                                                                                                 | clock \* 2.00         | 11.1           |
| Intel [Pentium MMX](https://zh.wikipedia.org/wiki/Pentium_MMX "wikilink")                                                                                                                    | clock \* 2.00         | 11.1           |
| Intel [Pentium 4](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink")                                                                                                                        | clock \* 2.00         | 11.1           |
| Intel [Pentium M](https://zh.wikipedia.org/wiki/Pentium_M "wikilink")                                                                                                                        | clock \* 2.00         | 11.1           |
| Intel [Core Duo](https://zh.wikipedia.org/wiki/Core_Duo "wikilink")                                                                                                                          | clock \* 2.00         | 11.1           |
| Intel [Core 2 Duo](https://zh.wikipedia.org/wiki/Core_2_Duo "wikilink")                                                                                                                      | clock \* 2.00         | 11.1           |
| Intel [Atom](https://zh.wikipedia.org/wiki/Intel_Atom "wikilink") N455                                                                                                                       | clock \* 2.00         | 11.1           |
| Centaur C6-2                                                                                                                                                                                 | clock \* 2.00         | 11.1           |
| [PowerPC](../Page/PowerPC.md "wikilink") 604/604e/750                                                                                                                                        | clock \* 2.00         | 11.1           |
| Intel [Pentium III Coppermine](https://zh.wikipedia.org/wiki/Pentium_III#Coppermine "wikilink")                                                                                              | clock \* 2.00         | 11.1           |
| Intel [Pentium III Xeon](https://zh.wikipedia.org/wiki/Xeon#Pentium_III_Xeon "wikilink")                                                                                                     | clock \* 2.00         | 11.1           |
| [Motorola 68060](https://zh.wikipedia.org/wiki/Motorola_68060 "wikilink")                                                                                                                    | clock \* 2.01         | 11.2           |
| Intel [Xeon MP (32-bit)](https://zh.wikipedia.org/wiki/Xeon#Xeon_.28DP.29_.26_Xeon_MP_.2832-bit.29 "wikilink") ([hyper-threading](https://zh.wikipedia.org/wiki/hyper-threading "wikilink")) | clock \* 3.97         | 22.1           |
| [IBM S390](https://zh.wikipedia.org/wiki/IBM_eServer_zSeries "wikilink")                                                                                                                     | not enough data (yet) |                |
| [ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")                                                                                                                             | not enough data (yet) |                |

## BogoMIPS 怎么计算的?

在当前内核(2.6.x),BogoMIPS实现在内核源文件`/usr/src/linux/init/calibrate.c`。它计算了Linux内核定时参数`loops_per_jiffy`
(see [Jiffy
(time)](https://zh.wikipedia.org/wiki/Jiffy_\(time\) "wikilink") )
值。源码解释如下：

    <nowiki>
     /*
       * A simple loop like
       *  while ( jiffies < start_jiffies+1)
       *    start = read_current_timer();
       * will not do. As we don't really know whether jiffy switch
       * happened first or timer_value was read first. And some asynchronous
       * event can happen between these two events introducing errors in lpj.
       *
       * So, we do
       * 1. pre_start <- When we are sure that jiffy switch hasn't happened
       * 2. check jiffy switch
       * 3. start <- timer value before or after jiffy switch
       * 4. post_start <- When we are sure that jiffy switch has happened
       *
       * Note, we don't know anything about order of 2 and 3.
       * Now, by looking at post_start and pre_start difference, we can
       * check whether any asynchronous event happened or not
       */
    </nowiki>

`loops_per_jiffy` is used to implement `udelay` (delay in microseconds)
and `ndelay` (delay in nanoseconds) functions. These functions are
needed by some drivers to wait for hardware. Note that a [busy
waiting](https://zh.wikipedia.org/wiki/busy_waiting "wikilink")
technique is used, so the kernel is effectively blocked when executing
`ndelay/udelay` functions. For i386 architecture `delay_loop` is
implemented in `/usr/src/linux/arch/i386/lib/delay.c` as:

``` c
/* simple loop based delay: */
static void delay_loop(unsigned long loops)
{
  int d0;

  __asm__ __volatile__(
    "\tjmp 1f\n"
    ".align 16\n"
    "1:\tjmp 2f\n"
    ".align 16\n"
    "2:\tdecl %0\n\tjns 2b"
    :"=&a" (d0)
    :"0" (loops));
}
```

用C语言重写的代码如下：

``` c
static void delay_loop(long loops)
{
  long d0 = loops;
  do {
    --d0;
  } while (d0 >= 0);
}
```

关于BogoMips更丰富更全的信息和数百篇相关文章可参见 BogoMips mini-Howto.\[2\]

## 参考

## 外部链接

  - [BogoMips Mini-Howto, V38](http://www.clifton.nl/bogomips.html)

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")
[Category:计算机科学](https://zh.wikipedia.org/wiki/Category:计算机科学 "wikilink")

1.

2.