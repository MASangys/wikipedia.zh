[计算机科学中](../Page/计算机科学.md "wikilink")，**NOP**或**NOOP**（**No
Operation**或**No Operation
Performed**的缩写，意为**无操作**）是[汇编语言的一个](../Page/汇编语言.md "wikilink")[指令](../Page/指令.md "wikilink")，一系列编程语句，或[网络传输协议中的表示不做任何有效操作的命令](../Page/网络传输协议.md "wikilink")。

## NOP机器指令

有的计算机[指令集包含一条指令](../Page/指令集.md "wikilink")，其主要目的是不改变任何程序可访问的[寄存器](../Page/寄存器.md "wikilink")，[处理器状态标志或](../Page/处理器状态标志.md "wikilink")[主存](../Page/主存.md "wikilink")，而且可能需要特定的时钟周期来执行。在其它指令集中，NOP是用执行一条具有操作数，具有相同效果的指令来模拟的（例如[SPARC处理器推荐使用](../Page/SPARC.md "wikilink")`sethi 0,
%g0`模拟NOP）。

NOP指令通常用于控制时序的目的，强制[内存对齐](../Page/内存对齐.md "wikilink")，防止[流水线灾难](../Page/流水线灾难.md "wikilink")，占据[分支指令延迟](../Page/分支指令延迟.md "wikilink")），或是作为占位符以供程序的改善（或替代被移除的指令）。在某些情况中，NOP指令会产生副作用；例如在[摩托罗拉
68000处理器中](../Page/摩托罗拉_68000.md "wikilink")，NOP操作码会产生[流水线同步](../Page/流水线.md "wikilink")\[1\]。

下表显示了部分CPU架构上NOP指令的特征：

| CPU架构                                                                                                              | [助憶碼](../Page/助憶碼.md "wikilink") | [字长](../Page/字节.md "wikilink") | [操作码](../Page/操作码.md "wikilink")                    | 备注                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------ | -------------------------------- | ------------------------------ | --------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| [Intel](../Page/Intel.md "wikilink")[x86系列](../Page/x86.md "wikilink")[CPU](../Page/CPU.md "wikilink")             | `NOP`                            | 1; i686中为1–9                   | [0x](../Page/十六进制.md "wikilink")90; 0x0f 0x1f \[2\] | x86 CPU上的NOP指令实质上是*XCHG EAX, EAX*（操作码同为0x90）--无任何作用的指令。                                                  |
| [Intel](../Page/Intel.md "wikilink") [8051](../Page/8051.md "wikilink") / [MCS-51系列](../Page/MCS-51.md "wikilink") | `NOP`                            | 1                              | 0x00                                                |                                                                                                          |
| [MIPS](../Page/MIPS.md "wikilink")                                                                                 | `NOP`                            | 4                              | 0x00000000                                          |                                                                                                          |
| [MOS科技 65xx](../Page/MOS科技_65xx.md "wikilink")                                                                     | `NOP`                            | 1                              | 0xea                                                | [65C02处理器发布时](../Page/65C02.md "wikilink")，之前多数的[无效指令都被定义成了具有不同字长和需时的NOP指令](../Page/无效指令.md "wikilink")。 |
| [PowerPC](../Page/PowerPC.md "wikilink")                                                                           | `NOP`                            | 4                              | 0x60000000 (`ori r0,r0,0`的扩展操作码)                    |                                                                                                          |

## NOP代码

NOP有时可以描述函数或一系列编程语句的作用，若部分没有作用（也可以称为[冗余代码](../Page/冗余代码.md "wikilink")）。常见的[编译器优化的作用就包括检测和去除这样的代码](../Page/编译器优化.md "wikilink")。

下面是一个起NOP作用的C语言语句的例子（评判标准在于语句是否影响程序输出，而非[编译器是否为语句产生代码](../Page/编译器.md "wikilink")）：

``` C
     i+1;
```

（该语句执行了一个加法，但结果被丢弃。）

C语言中最简单的NOP块被称为*空语句*；其只包括一个分号。（标准没有要求编译器在这个例子中生成NOP指令；通常这个语句会直接为编译器所忽略。）

``` C
   ;
```

虽然空语句自身没有用处，但在某些情况下可以启动占位符的作用，例如在循环中：

``` C
   while (ReadChar() != '\n')
      ;
```

以上代码一直调用`ReadChar`函数，直到函数返回一个\\n（NL，新行）字符。

[Python中的](../Page/Python.md "wikilink")`pass`语句不会产生作用，可以作为NOP使用。它的主要目的是保证语法正确，由于Python的[缩进敏感语法](../Page/Python#縮進.md "wikilink")。

## NOP协议命令

许多[协议](../Page/网络传输协议.md "wikilink")，比如[telnet](../Page/telnet.md "wikilink")，包含NOP指令，该指令允许客户端可以在不会引起其它操作的情况下向服务器请求回应。NOP指令可以用于检测连接是否断开，或服务器是否可以响应操作。下列协议中包含NOOP指令（*不完全列表*）：

  - [telnet](../Page/telnet.md "wikilink")
  - [FTP](../Page/FTP.md "wikilink")
  - [SMTP](../Page/SMTP.md "wikilink")
  - [X11](../Page/X_Window核心协议.md "wikilink")
  - [POP3](../Page/POP3.md "wikilink")
  - [NNTP](../Page/NNTP.md "wikilink")
  - [finger](../Page/finger.md "wikilink")
  - [IMAP4](../Page/IMAP4.md "wikilink")
  - [BitTorrent](../Page/BitTorrent.md "wikilink")

注意：与其它协议不同，IMAP4的NOP命令允许客户端响应服务器发送由其它客户端反应的操作信息。

虽然大多数telnet和FTP服务器用*OK*或*+OK*回应NOOP指令，有的程序员在对客户端的回应中加入了特别的内容。例如[MINIX的](../Page/MINIX.md "wikilink")`ftpd`[守护进程会以以下消息回应NOOP](../Page/守护进程.md "wikilink")：\[3\]

[`200`](../Page/FTP.md "wikilink")` NOOP to you too!`

## 破解

NOP通常在[破解软件时有特殊用途](../Page/软件破解.md "wikilink")，例如检查序列号，特定硬件或软件需求，[加密狗等的软件](../Page/加密狗.md "wikilink")。这是通过更改函数和/或[子程序以跳过安全检查](../Page/子程序.md "wikilink")，直接返回期望的检测值实现的。由于大多数安全检查子程序中的指令会被废弃，它们会被NOP所代替。

## 安全问题

NOP操作码可以被用于组成一个[NOP
slide](../Page/NOP_slide.md "wikilink")，允许在指令指针值未定义时执行代码，例如[缓存溢出导致栈上的函数返回地址被更改](../Page/缓存溢出.md "wikilink")。

## 参见

  - [计算机系统结构](../Page/计算机系统结构.md "wikilink")
  - [HLT](../Page/HLT.md "wikilink")
  - [指令集](../Page/指令集.md "wikilink")
  - [x86](../Page/x86.md "wikilink")
  - [恒等函数](../Page/恒等函数.md "wikilink")，[函数式编程语言中NOOP的等效函数](../Page/函数式编程语言.md "wikilink")
  - [xyzzy](../Page/xyzzy.md "wikilink")，一个有时用来代替NOOP的命令

## 参考文献

[Category:机器码](https://zh.wikipedia.org/wiki/Category:机器码 "wikilink")
[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")
[Category:无](https://zh.wikipedia.org/wiki/Category:无 "wikilink")

1.
2.
3.