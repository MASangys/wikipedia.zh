**SECD
机**是非常有影响的意图作为[函数式编程语言编译器目标的](../Page/函数式编程语言.md "wikilink")[虚拟机](../Page/虚拟机.md "wikilink")。SECD
分别是这个机器的内部寄存器的名字的首字母：**S**tack, **E**nvironment, **C**ode,
**D**ump。这些寄存器指向在内存中[链表](../Page/链表.md "wikilink")。

这种机器最初明确设计用来计算 [lambda 演算表达式](../Page/lambda_演算.md "wikilink")。最初 [Peter
J. Landin](../Page/Peter_J._Landin.md "wikilink") 在1963年把它作为他的
[ISWIM编程语言定义的一部分描述](../Page/ISWIM.md "wikilink")。Landin
出版的描述非常抽象，（象一种[操作语义那样](../Page/操作语义.md "wikilink")）留下很多实现选择开放着。所以
SECD 机经常以更具体的形式出现，比如 [Peter
Henderson](../Page/Peter_Henderson.md "wikilink") 的 [Lispkit
Lisp](../Page/Lispkit_Lisp.md "wikilink")
编译器，它自1980年开始发行。此后它已经被用做多个其他实验编译器的目标。

在1989年在[卡尔加里大学的研究者制作了这种机器的一个硬件实现](../Page/卡尔加里大学.md "wikilink")。

## 寄存器和内存

SECD
机是基于[栈的](../Page/堆栈.md "wikilink")，函数从栈中取得它们的形式参数（parameter）。与之相对，指令的实际参数（argument）跟在指令之后。

栈同所有内部数据结构一样是个列表，**S**
寄存器指向这个列表的头部或开始端。由于列表结构，栈不需要连续成块的内存，所以只要有一个单一空闲内存单元栈空间就是可获得的。即使在所有单元都已经使用了时候，[垃圾收集仍可以产生额外的空闲内存](../Page/垃圾回收_\(計算機科學\).md "wikilink")。

**C** 寄存器指向要计算的代码或指令列表的头部。一旦指令已经被执行，**C**
就指向在列表中的下一个指令—它类似于常规机器中的“指令指针”（或[程序计数器](../Page/程式計數器.md "wikilink")），除了后续指令不需要在后续内存位置上之外。

**E**
寄存器管理当前变量环境，它指向一个列表的列表。每个单独列表都代表一个环境级别：当前函数的形式参数位于列表的头部，在当前函数中自由但受外围函数约束（bound）的变量在
**E** 的其他元素中。

**D** 寄存器指向转储（dump）的头部，它被用做其他寄存器的值的临时存储，例如在函数调用期间。它联系于其他机器的返回栈。

SECD
机的内存组织类似于大多数函数式编程语言[解释器所用的模型](../Page/直译器.md "wikilink")：一些内存单元，每个都持有要么一个“原子”（一个简单值例如“13”），或表示一个空或非空列表。在后者情况，单元持有到其他单元的两个指针，一个表示第一个元素，另一个表示除去第一个元素之外的列表。这两个指针传统上分别叫做
*car* 和 *cdr* —
现在更常使用现代术语“头”和“尾”。单元持有值的不同类型由一个“标志”来区分。原子的不同类型（整数、字符串等等）经常是同样可区分的。

所以持有数“1”，“2”和“3”的一个列表，经常写为“（1 2 3）”，可以表示为如下：

`地址    标志       内容(对整数是值，对列表是 car 与 cdr)`
`      9 [ integer |     2 ]`
`      8 [ integer |     3 ]`
`      7 [ list    | 8 | 0 ]`
`      6 [ list    | 9 | 7 ]`
`      ...`
`      2 [ list    | 1 | 6 ]`
`      1 [ integer |     1 ]`
`      0 [ nil             ]`

内存单元 3 到 5 不属于这个列表，它的单元可以在内存中随机分布。单元 2 是这个列表的头部，它指向持有第一个元素的值的单元
1，和只包含“2”和“3”的（开始于单元 6）列表。单元 6 指向持有“2”的单元，和表示只包含“3”的列表的单元
7。它接着指向持有值“3”的单元 8，和指向空列表（*nil*）作为 cdr。在 SECD 机中，单元 0
总是暗含表示空列表，所以不需要特殊的标志值来指示空列表（只需要简单的指向单元
0）。

在列表的单元中 cdr 必须指向另一个列表的原则只是个约定。如果 car 和 cdr 二者都指向原子，则生成一个点对，通常写为如“（1 .
2）”这样。

## 指令

  - **nil** 把一个 nil（空）指针压入栈顶
  - **ldc** 把一个常量实际参数压入栈顶
  - **ld** 把一个变量的值压入栈顶。这个变量是由实际参数指示的一个点对。这个点对的 car 指定级别，cdr 指定位置。所以“（1 .
    3）”给出当前函数（级别 1）的第三个形式参数。
  - **sel** 期望两个列表实际参数，并从栈顶弹出一个值。如果弹出的值非 nil
    在执行第一个列表，否则执行第二个列表。在这些列表指针之一被作为新的
    **C** 寄存器之前，保存到随后 **sel** 的指令的指针到转储上。
  - **join** 从转储中弹出一个列表引用并把它作为 **C** 寄存器的新值。这个指令出现在 **sel** 的两个选择二者的结束处。
  - **ldf** 接受表示函数的一个列表实际参数。它构造一个闭包（包含函数和当前环境的一个点对）并把它压入栈顶。
  - **ap** 从栈顶弹出一个闭包和形式参数值的一个列表。通过安装这个闭包的环境为当前环境，把形式参数列表压在它的上面，清空栈，并设置
    **C** 寄存器为这个闭包的函数指针，这样就把闭包应用于形式参数之上。**S**, **E** 寄存器以前的值和 **C**
    寄存器的下一个值被保存到转储上。
  - **ret** 从栈顶弹出返回一个值，从转储中恢复 **S**, **E** 和 **C** 寄存器，并把这个返回值压入现在当前的栈顶。
  - **dum** 把一个“哑元”也就是空列表压入环境列表的顶部。
  - **rap** 如 **ap** 那样工作，唯一不同的是它把哑环境的出现替代为当前环境，因此使递归成为可能。

存在一些基本函数的补充指令如 car, cdr，列表构造，整数加法，I/O，等等。它们都必须从栈上取得形式参数。

## 进一步阅读

  - Peter M. Kogge: *The Architecture of Symbolic Computers*. ISBN
    0-07-035596-7
  - Peter Henderson, *Functional Programming: Application and
    Implementation*. Prentice Hall, 1980. ISBN 0-13-331579-7
  - Anthony J. Field and Peter G. Harrison: *Functional Programming*.
    Addison-Wesley, 1988. ISBN 0-201-19249-7
  - [Olivier Danvy](../Page/Olivier_Danvy.md "wikilink")：*A Rational
    Deconstruction of Landin's SECD Machine*. BRICS research report
    RS-04-30, 2004. ISSN 0909-0878

## 外部链接

  - [SECD collection](http://skelet.ludost.net/sec/)
  - [Original SECD
    paper](http://www3.oup.co.uk/computer_journal/hdb/Volume_06/Issue_04/060308.sgm.abs.html)，"The
    Mechanical evaluation of Expressions" P.J. Landin The Computer
    Journal Vol. 6 pp308-320 1964

[Category:计算模型](https://zh.wikipedia.org/wiki/Category:计算模型 "wikilink")