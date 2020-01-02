> 本文内容由[Brainfuck](https://zh.wikipedia.org/wiki/Brainfuck)转换而来。


**Brainfuck**，是一种极小化的[程序语言](https://zh.wikipedia.org/wiki/程序语言 "wikilink")，它是由[Urban Müller在](https://zh.wikipedia.org/wiki/Urban_Müller "wikilink")1993年创造的。由於[fuck在](https://zh.wikipedia.org/wiki/fuck "wikilink")[英語中是](https://zh.wikipedia.org/wiki/英語 "wikilink")[髒話](../Page/髒話.md "wikilink")，这种语言有时被称为**Brainf\*ck**或**Brainf\*\*\***，或被简称为**BF**。

## 概述

Müller的目标是建立一种简单的、可以用最小的[编译器来实现的](https://zh.wikipedia.org/wiki/编译器 "wikilink")、符合[图灵完全思想的编程语言](https://zh.wikipedia.org/wiki/图灵完全 "wikilink")。这种语言由八种[运算符构成](https://zh.wikipedia.org/wiki/运算符 "wikilink")，为[Amiga](../Page/Amiga.md "wikilink")机器编写的编译器（第二版）只有240个[字节](../Page/字节.md "wikilink")大小。\[1\]

就像它的名字所暗示的，Brainfuck[程序很难读懂](../Page/计算机程序.md "wikilink")。尽管如此，Brainfuck[图灵机](../Page/图灵机.md "wikilink")一样可以完成任何计算任务。虽然Brainfuck的计算方式如此与众不同，但它确实能够正确运行。

这种语言基于一个简单的机器模型，除了指令，这个机器还包括：一个以字节为单位、被初始化为零的[数组](../Page/数组.md "wikilink")、一个指向该数组的[指针](https://zh.wikipedia.org/wiki/指针 "wikilink")（初始时指向数组的第一个字节）、以及用于输入输出的两个[字节流](https://zh.wikipedia.org/wiki/字节流 "wikilink")。

下面是这八种状态的描述，其中每个状态由一个[字符](../Page/字符.md "wikilink")标识：

| 字符  | 含义                                                                     |
| --- | ---------------------------------------------------------------------- |
| `>` | 指针加一                                                                   |
| `<` | 指针减一                                                                   |
| `+` | 指针指向的字节的值加一                                                            |
| `-` | 指针指向的字节的值减一                                                            |
| `.` | 输出指针指向的单元内容（[ASCII码](https://zh.wikipedia.org/wiki/ASCII码 "wikilink")） |
| `,` | 输入内容到指针指向的单元（ASCII码）                                                   |
| `[` | 如果指针指向的单元值为零，向后跳转到对应的`]`指令的次一指令处                                       |
| `]` | 如果指针指向的单元值不为零，向前跳转到对应的`[`指令的次一指令处                                      |

按照更节省时间的简单说法，`]`也可以说成“向前跳转到对应的`[`状态”。这两解释是一样的。

第三种同价的说法，`[`意思是“向後跳转到对应的`]`”，`]`意思是“向前跳转到对应的`[`指令的次一指令处，如果指针指向的字节非零。”

Brainfuck程序可以用下面的替换方法翻译成[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")（假设`ptr`是`char *`[类型](../Page/資料類型.md "wikilink")）：

| Brainfuck | C                   |
| --------- | ------------------- |
| `>`       | `++ptr;`            |
| `<`       | `--ptr;`            |
| `+`       | `++*ptr;`           |
| `-`       | `--*ptr;`           |
| `.`       | `putchar(*ptr);`    |
| `,`       | `*ptr = getchar();` |
| `[`       | `while (*ptr) {`    |
| `]`       | `}`                 |

## 例子

### Hello World\!

一个在屏幕上打印[Hello World\!的程序](https://zh.wikipedia.org/wiki/Hello_World! "wikilink")：

``` bf
++++++++++[>+++++++>++++++++++>+++>+<<<<-]
>++.>+.+++++++..+++.>++.<<+++++++++++++++.
>.+++.------.--------.>+.>.
```

### 目前位置归零

``` bf
[-]
```

### 字符[I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")

``` bf
,.
```

从键盘读取一个字符并输出到屏幕上。

### 简单的循环

``` bf
,[.,]
```

这是一个连续从键盘读取字符并回显到屏幕上的[循环](https://zh.wikipedia.org/wiki/程式迴圈 "wikilink")。注意，这里假定0表示输入结束，事实上有些系统并非如此。以-1和“未改变”作为判断依据的程序代码分别是

``` bf
,+[-.,+]
```

和

``` bf
,[->+>-<<]>[-<+>]>[[-]<<.[->>+<<],[->+>-<<]>[-<+>]>]
```

。

### 指针维护

``` bf
>,[.>,]
```

通过移动指针保存所有的输入，供后面的程序使用。

### 加法

``` bf
[->+<]
```

把当前位置的值加到后面的单元中（破坏性的加，它导致左边的单元被归零）。

### 条件指令

``` bf
,----------[----------------------.,----------]
```

这个程序会把从键盘读来的小写字符转换成大写。按回车键退出程序。

首先，我们通过`,`读入第一个字符并把它减10（10 在大多数情况下为换行符 LF 的值）。如果用户按的是回车键，循环命令（`[`）就会直接跳转到程序的结尾：因为这时第一个字节已经被减到了零。如果输入的字符不是换行符（假设它是一个小写字符），程序进入循环。在这里我们再减去剩下的22，这样总共减掉32：这是ASCII码中小写字符和大写字符的差值。

下面我们把它输出到屏幕。然后接收下一个输入字符，并减去10。如果它是换行符，退出循环；否则，再回到循环的开始，减去22并输出……当循环退出时，因为后面已经没有其他的指令，程序也随之终止。

### 加法器 add(summand, addend, \*sum)

``` brainfuck
>>[-]>[-]<<<        // clear cell #2 and #3
[->>+>+<<<]         // transfer cell #0 to #2 and #3
>
    >>[-<<<+>>>]<<  // transfer cell #3 to #0
    [->+>+<<]       // transfer cell #1 to #2 and #3
    >>[-<<+>>]<<    // transfer cell #3 to #1
<
```

该代码以 cell \#3 作为临时变量，将保存在 cell \#0 和 cell \#1 中的两个整数相加， 结果保存在 cell \#2；同时维持原来的两个存储单元数值不变，方便以后使用。

代码运行前，设定指针指向 cell \#0，

第一步，先将 cell \#2 和 cell \#3 清空，确保不会有脏数据影响运算结果；

第二步，将 cell \#0 的数值转移到 cell \#2 和 cell \#3，随后利用 cell \#3 这个来恢复 cell \#0 的值；

第三步，将 cell \#1 的数值转移到 cell \#2 和 cell \#3，随后利用 cell \#3 这个来恢复 cell \#1 的值；

最后，指针归位（回到初始位置，即指向 cell \#0），方便后续运算。

### 乘法器 multiply(multiplicand, multiplier, \*product)

``` brainfuck
>>[-]>[-]>[-]<<<<       // clear cell #2 and #3 and #4
[->
    [->+>+<<]           // add cell #1 to #2 and #3
    >>
        [-<<+>>]        // move cell #3 back to #1
        >+<             // copy cell #0 to #4
    <<
<]
>>>>[-<<<<+>>>>]<<<<    // move cell #4 back to #0
```

跟上面的“加法器”类似，这个“乘法器”将保存在 cell \#0 和 cell \#1 的两个整数相乘，结果保存在 cell \#2；同时维持原来的两个存储单元数值不变，方便以后使用。

更多代码解析请参见 <https://github.com/moky/BrainFuck>

## 注释

  - 注意，这里[数组](../Page/数组.md "wikilink")的每个单元都是一个字节大小；`-`命令允许[溢出](../Page/算術溢出.md "wikilink")，它可以用255个`+`命令来代替。同样，如果数组单元是有限、[循环的](../Page/環形緩衝區.md "wikilink")，`<`可以用29999个`>`命令代替。每个修改动作都可以被分解为最多7条指令。可是，两个连在一起的修改动作将会破坏“图灵完全”，因为这会把可能的内存状态限制到有限个数。（更确切的说，从这个角度看，现代的计算机依然不是完全意义上的“[图灵完全](https://zh.wikipedia.org/wiki/图灵完全 "wikilink")”）

## 参考资料

## 外部链接

  - [Brian Raiter, Muppetlabs. **Brainfuck：八条指令的图灵完全编程语言**](http://www.muppetlabs.com/~breadbox/bf/)。这个网站包括一个Brainfuck程序[quine](../Page/自產生程式.md "wikilink")。
  - [Panu Kalliokoski. **Brainfuck档案**](https://web.archive.org/web/20031206060451/http://esoteric.sange.fi/brainfuck/)有许多Brainfuck实现、程序和quine。
  - [Cat's Eye Technologies. **Brainfuck**](https://web.archive.org/web/20030207172452/http://www.catseye.mb.ca/esoteric/bf/)
  - [Frans Faase. **BF is Turing Complete**](http://home.planet.nl/~faase009/Ha_bf_Turing.html)
  - [**Brainfucked** - Brainfuck Compiler](https://web.archive.org/web/20050303201936/http://home.arcor.de/partusch/html_en/bfd.html)
  - [BrainFuck Codes - moky](https://github.com/moky/BrainFuck)
  - [Brainfuck - Esolang](https://esolangs.org/wiki/Brainfuck)

{{-}}

[Category:深奥的编程语言](https://zh.wikipedia.org/wiki/Category:深奥的编程语言 "wikilink")

1.