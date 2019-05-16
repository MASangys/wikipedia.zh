**x32
ABI**（）是一种[ABI及](../Page/应用二进制接口.md "wikilink")[Linux内核接口之一](https://zh.wikipedia.org/wiki/Linux内核接口 "wikilink")。它允许程序得到[x86-64的优点](https://zh.wikipedia.org/wiki/x86-64 "wikilink")（较大的[CPU寄存器号码](../Page/寄存器.md "wikilink")，更佳的浮点性能，更快的[地址无关代码](../Page/地址无关代码.md "wikilink")[共享库](https://zh.wikipedia.org/wiki/函式庫#共享库 "wikilink")，通过寄存器传递函数参数，更快的[系统调用指令](https://zh.wikipedia.org/wiki/系统调用 "wikilink")），而使用32位[指针](../Page/指標_\(電腦科學\).md "wikilink")，从而避免了对64位指针的开销。\[1\]\[2\]\[3\]

## 细节

尽管x32 ABI限制了程序的[虚拟地址为](https://zh.wikipedia.org/wiki/虚拟地址 "wikilink")4
GB，它也减小了程序的内存占用量，且在某些情况下，能使它运行得更快\[4\]\[5\]\[6\]。在181.mcf
[SPEC](https://zh.wikipedia.org/wiki/SPEC "wikilink") CPU 2000基准测试中，x32
ABI版本比x86-64版本最多能快40%\[7\]\[8\]。一般而言，x32在SPEC CPU整数基准比x86-64快5-8%。在SPEC
CPU浮点基准上，x86-64则毫无速度优势\[9\]。

<table>
<caption>ABI比较</caption>
<thead>
<tr class="header">
<th><p>特性</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/IA-32" title="wikilink">i386</a></p></th>
<th><p>x32</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/x86-64" title="wikilink">x86-64</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/虚拟地址" title="wikilink">进程最大内存</a></p></td>
<td><p>colspan="2" </p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/寄存器.md" title="wikilink">整数寄存器</a></p></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/寄存器.md" title="wikilink">浮点寄存器</a></p></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/指標_(電腦科學).md" title="wikilink">指针</a></p></td>
<td><p>colspan="2" </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/64位元.md" title="wikilink">64位元运算</a></p></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/浮点数.md" title="wikilink">浮点数</a></p></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/调用约定" title="wikilink">调用约定</a></p></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/地址无关代码.md" title="wikilink">PIC序言</a></p></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
</tbody>
</table>

## 历史

大多数情况下执行以[ILP32模式编译的程序](https://zh.wikipedia.org/wiki/ILP32 "wikilink")，但又能使用主要的64位CPU指令，这样的用户空间并非少见，特别是在“经典RISC”芯片领域中。例如，[Solaris操作系统在](https://zh.wikipedia.org/wiki/Solaris_\(操作系统\) "wikilink")[SPARC和x](../Page/SPARC.md "wikilink")86-64上就是这么做的。而对于[Linux](../Page/Linux.md "wikilink")，SPARC和PowerPC上的Linux发行版，如[Aurora
SPARC
Linux和](https://zh.wikipedia.org/wiki/Aurora_SPARC_Linux "wikilink")[Debian](../Page/Debian.md "wikilink")，也有ILP32用户空间。根本原因是[LP64代码](https://zh.wikipedia.org/wiki/LP64 "wikilink")“更贵”\[10\]，正如上文x86-64所述。就这方面而言，x32是“64位ILP32”概念在x86-64平台的延伸。

自从2003年[Athlon
64发布以来](../Page/AMD_Athlon_64.md "wikilink")，一些人就在讨论32位指针x86-64
ABI的好处，特别是2008年[高德纳的研究](../Page/高德纳.md "wikilink")\[11\]。然而，在实现这种模式上，外界并没有看到有显著进展，直至2011年8月27日，汉斯·彼得·昂万在[Linux内核邮件列表上宣布](https://zh.wikipedia.org/wiki/Linux内核邮件列表 "wikilink")，他和H·J·鲁一直在x32-ABI上努力\[12\]。

就在同一天，[林纳斯·托瓦兹回应道](../Page/林纳斯·托瓦兹.md "wikilink")，在x32
ABI中使用32位时间值，将来可能会导致问题\[13\]\[14\]。这是因为，使用32位时间值，将导致[时间值在](../Page/UNIX时间.md "wikilink")[2038年溢出](../Page/2038年问题.md "wikilink")\[15\]\[16\]。根据这一要求，x32
ABI的开发者将时间值变为了64位\[17\]。

2011年9月7日一个[Linux Plumbers
Conference上的演讲提及了x](https://zh.wikipedia.org/wiki/Linux会议 "wikilink")32
ABI\[18\]。

x32 ABI于Linux 3.4起合并入内核，[GNU C
函式庫](https://zh.wikipedia.org/wiki/GNU_C_函式庫 "wikilink")
2.16中添加了相应支持。

## 参考

## 外部链接

  - [X32 ABI开发网站](http://sites.google.com/site/x32abi/)
  - [Linux Plumbers Conference上的X32
    ABI演示幻灯片](http://www.linuxplumbersconf.org/2011/ocw/sessions/531)

[Category:Linux内核接口](https://zh.wikipedia.org/wiki/Category:Linux内核接口 "wikilink")
[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")

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