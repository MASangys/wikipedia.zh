[MIPS_Architecture_(Pipelined).svg](https://zh.wikipedia.org/wiki/File:MIPS_Architecture_\(Pipelined\).svg "fig:MIPS_Architecture_(Pipelined).svg") **MIPS架構**（，為的縮寫，亦為的頭字語），是一種採取[精簡指令集](https://zh.wikipedia.org/wiki/精簡指令集 "wikilink")（RISC）的[處理器架構](https://zh.wikipedia.org/wiki/處理器 "wikilink")，1981年出現，由[MIPS科技公司開發並授權](https://zh.wikipedia.org/wiki/MIPS科技公司 "wikilink")，廣泛被使用在許多電子產品、網路設備、個人娛樂裝置與商業裝置上。最早的MIPS架構是32位元，最新的版本已經變成64位元。

## 發展歷史

在1981年，[斯坦福大学教授](https://zh.wikipedia.org/wiki/斯坦福大学 "wikilink")[約翰·軒尼詩](../Page/約翰·軒尼詩.md "wikilink")領導他的團隊，實作出第一個MIPS架構的[處理器](https://zh.wikipedia.org/wiki/處理器 "wikilink")。他們原始的概令是透過[指令管線化](../Page/指令管線化.md "wikilink")來增加CPU運算的速度。

1984年，[約翰·軒尼詩](../Page/約翰·軒尼詩.md "wikilink")教授離開斯坦福大学，創立[MIPS科技公司](https://zh.wikipedia.org/wiki/MIPS科技公司 "wikilink")。於1985年，設計出R2000晶片，1988年，將其改進為R3000晶片。

## MIPS操作数

MIPS包括32个寄存器和2^30个存储器字，详见下表\[1\]：

| 名字       | 举例                                                                    | 注释                                                                        |
| -------- | --------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| 32个寄存器   | $s0 \~ $s7，$t0 \~ $t9，$zero，$a0 \~ $a3，$v0 \~ $v1，$gp，$fp，$sp，$ra，$at | 寄存器用于数据的快速存取。在MIPS中，只能对存放在寄存器中的数执行算术操作，寄存器$zero恒为0，寄存器$at被汇编器保留，用于处理大的常数。 |
| 2^30个存储字 | Memory\[0\]，Memory\[4\]，...，Memory\[4294967292\]                      | 存储器只能通过数据传输指令访问。MIPS使用字节编址，所以连续的字地址相差4。存储器用于保存数据结构、数组和溢出的寄存器              |

MIPS操作数

## MIPS指令格式

在MIPS架构中，指令被分为三种类型：R型、I型和J型。三种类型的指令的最高6位均为6位的opcode码。从25位往下，

  - R型指令用连续三个5位二进制码来表示三个寄存器的地址，然后用一个5位二进制码来表示[移位的位数](../Page/移位寄存器.md "wikilink")（如果未使用移位操作，则全为0），最后为6位的function码（它与opcode码共同决定R型指令的具体操作方式）；
  - I型指令则用连续两个5位二进制码来表示两个寄存器的地址，然后是一个16位二进制码来表示的一个立即数二进制码；
  - J型指令用26位二进制码来表示跳转目标的指令地址（实际的指令地址应为32位，其中最低两位为00，高四位由PC当前地址决定）。\[2\]\[3\]

三种类型的指令图示如下：

| 类型    | \-31-                                 格式（位）                                 -0- |
| ----- | ------------------------------------------------------------------------------- |
| **R** | opcode (6)                                                                      |
| **I** | opcode (6)                                                                      |
| **J** | opcode (6)                                                                      |

## 相關條目

  - [龍芯](https://zh.wikipedia.org/wiki/龍芯 "wikilink")

## 参考文献

## 外部連結

  - [MIPS 架構](http://www.mips.com/products/architectures/)
  - [計算機組織：MIPS 指令集 (一) 暫存器說明](https://isite.tw/2015/03/17/13075)

[Category:電腦架構](https://zh.wikipedia.org/wiki/Category:電腦架構 "wikilink")

[Category:指令集架構](https://zh.wikipedia.org/wiki/Category:指令集架構 "wikilink")

1.
2.  [MIPS R3000 Instruction Set Summary](http://www.mrc.uidaho.edu/mrc/people/jff/digital/MIPSir.html)
3.  [MIPS Instruction Reference](http://www.xs4all.nl/~vhouten/mipsel/r3000-isa.html)